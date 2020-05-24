-------------------------------------------------------------------------------
--|> DATA PROCESSING
--: Functions that help acquire and manage data involving the PlayerDB
-------------------------------------------------------------------------------
local _, NS = ...
local UnitName = UnitName
local GetGuildInfo = GetGuildInfo
local GetTime = GetTime
local string_find = string.find
local UnitCanAttack = UnitCanAttack
local UnitExists = UnitExists
local UnitClass = UnitClass
local UnitRace = UnitRace
local UnitIsDeadOrGhost = UnitIsDeadOrGhost
local UnitOnTaxi = UnitOnTaxi
local UnitIsPlayer = UnitIsPlayer
local GetUnitName = GetUnitName
local gsub = gsub

--> UpdatePlayerActiveCache
--: Updates data in the PlayerActiveCache and then calls
--: Sends data off the Lists to be processed
function NS.UpdatePlayerActiveCache(name, stealth, dead, role, GUID)
    --> Verify GUID exists
    if not GUID then
        return
    end
    local newPlayerOnList
    --: Check for player already in cache
    if NS.PlayerActiveCache[GUID] then
        newPlayerOnList = false
    else
        NS.PlayerActiveCache[GUID] = {}
        newPlayerOnList = true
    end
    --: Update PlayerCache info
    if newPlayerOnList then
        NS.PlayerActiveCache[GUID].GUID = GUID
        --: NAME
        if name then
            NS.PlayerActiveCache[GUID].Name = name
        elseif NS.PlayerDB[name].Name then
            NS.PlayerActiveCache[GUID].Name = NS.PlayerDB[name].Name
        end
        --: LEVEL
        if NS.PlayerDB[name].Level then
            NS.PlayerActiveCache[GUID].Level = NS.PlayerDB[name].Level
            NS.PlayerActiveCache[GUID].Estimated = NS.PlayerDB[name].Estimated
        else -- no level found
            NS.PlayerActiveCache[GUID].Level = 0
            NS.PlayerActiveCache[GUID].Estimated = true
            NS.PlayerDB[name].Level = 0
            NS.PlayerDB[name].Estimated = true
        end
        --: CLASS
        if NS.PlayerDB[name].Class then
            NS.PlayerActiveCache[GUID].Class = NS.PlayerDB[name].Class
        end
        --: GUILD
        if NS.PlayerDB[name].Guild then
            NS.PlayerActiveCache[GUID].Guild = NS.PlayerDB[name].Guild
        end
        --: STEALTH
        if stealth ~= nil then
            NS.PlayerActiveCache[GUID].Stealth = stealth
        end
        --: DEAD
        if dead ~= nil then
            NS.PlayerActiveCache[GUID].Dead = dead
            if dead == true then
                NS.PlayerActiveCache[GUID].Health = 0
            elseif dead == false and NS.PlayerActiveCache[GUID].Health == 0 then
              NS.PlayerActiveCache[GUID].Health = 1
            end
        end
        --: ROLE
        if role ~= nil then
            NS.PlayerActiveCache[GUID].Role = role
            NS.PlayerDB[name].Role = role
        end
    end
    -- Add player Data to lists
    NS.AddPlayerDataToNearby(GUID, newPlayerOnList)
end

--> Static Role Assignment
local function RoleAssign(class)
    if class == "ROGUE" or class == "MAGE" or class == "WARLOCK" or class == "HUNTER" then
        return "DAMAGER"
    end
    return nil
end

--> GET UNIT DATA
-- Gets data for events with a UNIT ID; such as 'target' or 'nameplate'
function NS.GetUnitData(unit)
    if (not unit) or (not UnitExists(unit)) or (not NS.IsUnitValidForTracking(unit)) then
        return -- no valid unit to process
    end
    -- valid unit exists: get info!
    local name = NS.GetUnitName(unit)
    local GUID = UnitGUID(unit) or nil
    if name and GUID then
        local timestamp = GetTime()
        local guild = GetGuildInfo(unit)
        local class
        _, class = UnitClass(unit)
        local role = RoleAssign(UnitClass(unit))
        local level = UnitLevel(unit)
        local race = UnitRace(unit)
        local OnTaxi = UnitOnTaxi(unit)
        -- Add player to DB if not found
        if not NS.PlayerDB[name] or NS.PlayerDB[name].Estimated == true then
            NS.PlayerDB[name] = {}
            NS.PlayerDB[name].Name = name
            NS.PlayerDB[name].Guild = guild
            NS.PlayerDB[name].Class = class
            if role ~= nil then
                NS.PlayerDB[name].Role = role
            end
            NS.PlayerDB[name].Level = level
            NS.PlayerDB[name].Race = race
        end
        -- get more info if player is on bars
        if NS.PlayersOnBars[GUID] and NS.PlayerActiveCache[GUID] then
            if OnTaxi then
                NS.PlayerActiveCache[GUID].OnTaxi = true
            elseif not OnTaxi and NS.PlayerActiveCache[GUID].OnTaxi == true then
                NS.PlayerActiveCache[GUID].OnTaxi = false
            end
            NS.UnitHealthCheck(unit)
        end
        NS.PlayerDB[name].Estimated = false
        NS.PlayerDB[name].Timestamp = timestamp
        NS.UpdatePlayerActiveCache(name, nil, nil, role, GUID) -- (name, stealth, dead, role, GUID)
        return
    end
end

--> Is Unit Valid For Tracking
function NS.IsUnitValidForTracking(unit)
    if (not unit) or (not UnitIsPlayer(unit)) then -- input check
        return false
    end
    if string_find(GetUnitName(unit), "Unknown") then
        return false
    end
    if (UnitCanAttack("player", unit) or UnitIsEnemy("player", unit) or NS.Options.DEBUG) then -- attackable player check
        if not string_find(UnitGUID(unit), "Player") then -- player GUID check
            return false
        end
        return true -- VALID
    end
    return false
end

--> weizPVP: GetUnitName()
--: @returns "playerName-realmName" for all players, no matter the realm

function NS.GetUnitName(unit)
    if not unit then -- check for unit
        return
    end
    local name, realm = UnitName(unit, true) -- check for unit name
    if not name then
        return
    end
    if not realm then -- same realm
        return name .. "-" .. NS.PlayerRealm
    else -- different realm
        realm = gsub(realm, "[%s%-]", "")
        return name .. "-" .. realm
    end
end

--> UnitHealthCheck

function NS.UnitHealthCheck(unit)
    if (not unit) or (not UnitExists(unit)) or (not NS.IsUnitValidForTracking(unit)) then
        return -- no valid unit to process
    end
    local GUID = UnitGUID(unit) or nil
    if GUID and NS.PlayersOnBars[GUID] and NS.PlayerActiveCache[GUID] then -- only update if the player is shown on a bar
        local dead = UnitIsDeadOrGhost(unit)
        if dead ~= nil then
            NS.PlayerActiveCache[GUID].Dead = dead
        end
        local currentHealth = (UnitHealth(unit) / UnitHealthMax(unit) * 100) or nil
        if currentHealth ~= nil then
            NS.PlayerActiveCache[GUID].Health = currentHealth
        end
        if dead or currentHealth then
            NS.RefreshBarByGUID(GUID)
        end
    end
end
