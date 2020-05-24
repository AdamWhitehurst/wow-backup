-------------------------------------------------------------------------------------------
--|> COMBAT LOG
-------------------------------------------------------------------------------------------
local _, NS = ...
local bit_band = bit.band
local string_find = string.find
local select = select
local strsub = strsub
local CombatLogGetCurrentEventInfo = CombatLogGetCurrentEventInfo
local GetTime = GetTime
local GetPlayerInfoByGUID = GetPlayerInfoByGUID
local GetSpecializationInfoByID = GetSpecializationInfoByID
local CL_HOSTILE = COMBATLOG_OBJECT_REACTION_HOSTILE
local CL_PLAYER = COMBATLOG_OBJECT_TYPE_PLAYER

--|> Constants
-------------------------------------------------------------------------------------------
local holyPriest = {
    [27827] = GetSpellInfo(27827),
    [20711] = GetSpellInfo(20711),
    [126094] = GetSpellInfo(126094)
}
local stealthIDs = {
    [1784] = true,
    [115834] = true,
    [114018] = true,
    [11327] = true,
    [5215] = true,
    [66] = true,
    [156136] = true,
    [113862] = true
}

--> Static Role Assignment
local function RoleAssign(class)
    if class == "ROGUE" or class == "MAGE" or class == "WARLOCK" or class == "HUNTER" then
        return "DAMAGER"
    end
    return nil
end

--> Get Role from Spec
local function GetSpecRole(specId)
    if specId then
        return select(5, GetSpecializationInfoByID(specId))
    end
    return nil
end

--> Role Check
local function ClRoleCheck(spellId, class)
    local role = RoleAssign(class)
    if role ~= nil then
        return role
    end
    local specIdCheck = NS.GetSpecIdFromSpellId(spellId)
    if not specIdCheck then
        return nil
    end
    role = GetSpecRole(specIdCheck)
    return role
end

--> Is Valid Player?
local function IsValidPlayer(flags, guid)
    if (not flags) or (not guid) then
        return false
    end
    if not string_find(guid, "Player") then
        return false
    end
    if ((bit_band(flags, CL_HOSTILE) == CL_HOSTILE) or NS.Options.DEBUG) and bit_band(flags, CL_PLAYER) == CL_PLAYER then
        return true
    end
    return false
end

--> CL: CREATE NEW PLAYER ENTRY IN DB
local function AddNewPlayerToDatabase(event, srcName, srcGUID, spellId)
    if srcName and srcGUID then
        NS.PlayerDB[srcName] = {}
        NS.PlayerDB[srcName].Name = srcName
        NS.PlayerDB[srcName].Timestamp = GetTime()
        NS.PlayerDB[srcName].Estimated = true
        local levelNewPlayer
        local abilityType = strsub(event, 1, 5)
        if abilityType == "SWING" or abilityType == "SPELL" or abilityType == "RANGE" then
            levelNewPlayer = NS.GetLevelFromSpellId(spellId) or 0
        else
            levelNewPlayer = 0
        end
        NS.PlayerDB[srcName].Level = levelNewPlayer
        local _, class = GetPlayerInfoByGUID(srcGUID)
        NS.PlayerDB[srcName].Class = class
        NS.PlayerDB[srcName].Role = ClRoleCheck(spellId, class) or nil
    end
end

--> CL: DEATH CHECK
local function CLDeath(fEvent, fGUID, fName)
    if NS.PlayerActiveCache[fGUID] and fEvent == "UNIT_DIED" then
        NS.PlayerActiveCache[fGUID].Dead = true
        NS.UpdatePlayerActiveCache(fName, nil, true, nil, fGUID) --(name, stealth, dead, role, GUID)
        return true
    end
    return false -- return false on no death seen
end

local stealthNames = {
    ["Stealth"] = true,
    ["Prowl"] = true
}
--> Aura Check
local function AuraCheck(spellId, spellName, srcGUID, srcName)
    -- Stealth check
    local stealthFound = false
    if stealthNames[spellName] then
        stealthFound = true
    elseif stealthIDs[spellName] then
        stealthFound = true
    end
    if stealthFound == true then
        if NS.Options.StealthAlert.Enabled == true then
            local _, _, icon = GetSpellInfo(spellId)
            local classColoredName = NS.FormatPlayerNameForDisplay(srcName)
            NS.ShowStealthAlert(spellName, classColoredName, icon)
        end
        NS.UpdatePlayerActiveCache(srcName, true, false, nil, srcGUID) --(name, stealth, dead, role, GUID)
        return true
    end
    -- Redemption check
    if holyPriest[spellId] then
        NS.UpdatePlayerActiveCache(srcName, nil, true, "HEALER", srcGUID) -- (name, stealth, dead, role, GUID)
        return true -- Return after updating player cache
    end
    return false
end

local function FormatCLogSrcName(srcName)
    if not string_find(srcName, "-") then
        srcName = srcName .. "-" .. NS.PlayerRealm
    end
    return srcName
end

local function FormatCLogName(srcName)
    if not srcName then
        return nil
    end
    srcName = FormatCLogSrcName(srcName)
    return srcName
end

--> Process Source
local function ProcessSource()
    local eventData = {CombatLogGetCurrentEventInfo()}
    local event = eventData[2]
    local srcGUID = eventData[4]
    local srcName = eventData[5]
    local srcFlags = eventData[6]
    local dstGUID = eventData[8]
    local spellId = eventData[12]
    local spellName = eventData[13]
    if IsValidPlayer(srcFlags, srcGUID) then
        if string_find(srcName, "Unknown") then
            return
        end
        srcName = FormatCLogName(srcName)
        if not srcName then
            return
        end
        -- Check if unit is not in DB yet
        if not NS.PlayerDB[srcName] then
            AddNewPlayerToDatabase(event, srcName, srcGUID, spellId)
            NS.UpdatePlayerActiveCache(srcName, nil, nil, nil, srcGUID) --(name, stealth, dead, role, GUID)
        end
        -- Level Check
        if NS.PlayerDB[srcName].Estimated == true then
            local abilityType = strsub(event, 1, 5)
            if abilityType == "SWING" or abilityType == "SPELL" or abilityType == "RANGE" then
                local newLevel = NS.GetLevelFromSpellId(spellId) or 0
                NS.PlayerDB[srcName].Level = (newLevel > NS.PlayerDB[srcName].Level) and newLevel or NS.PlayerDB[srcName].Level
            end
        end
        -- Check role
        if NS.PlayersOnBars[srcGUID] and NS.PlayerActiveCache[srcGUID] and not NS.PlayerActiveCache[srcGUID].RoleFound then
            local role = ClRoleCheck(spellId, NS.PlayerDB[srcName].Class)
            if role ~= nil then
                if NS.PlayerDB[srcName].Role ~= role then
                    NS.PlayerDB[srcName].Role = role
                    NS.PlayerActiveCache[srcGUID].RoleFound = true
                end
            end
        end
        -- AuraCheck
        if event == "SPELL_AURA_APPLIED" and srcGUID == dstGUID then
            if AuraCheck(spellId, spellName, srcGUID, srcName) then
                return --Updates cache, no need to continue
            end
        end
        NS.UpdatePlayerActiveCache(srcName, nil, false, nil, srcGUID)
    end
end

--> Process Destination
local function ProcessDestination()
    local eventData = {CombatLogGetCurrentEventInfo()}
    local event = eventData[2]
    local dstGUID = eventData[8]
    local dstName = eventData[9]
    local dstFlags = eventData[10]
    if IsValidPlayer(dstFlags, dstGUID) then
        if string_find(dstName, "Unknown") then
            return
        end
        dstName = FormatCLogName(dstName)
        CLDeath(event, dstGUID, dstName)
    end
end

--> EVENT: COMBAT LOG
function NS.CombatLogEvent()
    ProcessSource()
    ProcessDestination()
end
