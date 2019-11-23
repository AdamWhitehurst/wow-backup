-------------------------------------------------------------------------------------------
--|> EVENTS
--: Manages Events
-------------------------------------------------------------------------------------------
--|> UPVALUE GLOBALS
-------------------------------------------------------------------------------------------
local weizPVP = weizPVP
local UnitIsEnemy = UnitIsEnemy
local UnitIsDeadOrGhost = UnitIsDeadOrGhost
local GetTime = GetTime
local UnitIsPlayer = UnitIsPlayer
local UnitLevel = UnitLevel
local IsInInstance = IsInInstance
local bit = bit
local select = select
local bit_band = bit.band
local C_Timer_After = C_Timer.After
local InCombatLockdown = InCombatLockdown
local CombatLogGetCurrentEventInfo = CombatLogGetCurrentEventInfo
local UnitGUID = UnitGUID
local UnitHealth = UnitHealth
local UnitHealthMax = UnitHealthMax
local strsub = strsub
local wipe = wipe
local UnitExists = UnitExists
local GetPlayerInfoByGUID = GetPlayerInfoByGUID
local GetSpecializationInfoByID = GetSpecializationInfoByID
local GetZoneText = GetZoneText
local GetFramerate = GetFramerate
local GetClassColor = GetClassColor
local WrapTextInColorCode = WrapTextInColorCode
local GetSpellInfo = GetSpellInfo
local GarrisonLandingPageMinimapButton = GarrisonLandingPageMinimapButton
local _

-------------------------------------------------------------------------------------------
--|> INIT GLOBALS
-------------------------------------------------------------------------------------------
weizPVP.PlayerActiveCache = {}

-------------------------------------------------------------------------------------------
--|> EVENT MONITORING: ENABLE / DISABLE
-------------------------------------------------------------------------------------------
--> ENABLE EVENTS
-----------------------------------------------------------------------
function weizPVP:EnableEvents()
    --> DATA COLLECTION
    weizPVP:RegisterEvent("NAME_PLATE_UNIT_ADDED", "NameplateAdded")
    weizPVP:RegisterEvent("NAME_PLATE_UNIT_REMOVED", "NameplateRemoved")
    weizPVP:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED", "CombatLogEvent")
    weizPVP:RegisterEvent("PLAYER_TARGET_CHANGED", "PlayerTargetEvent")
    weizPVP:RegisterEvent("UPDATE_MOUSEOVER_UNIT", "PlayerMouseoverEvent")
    weizPVP:RegisterEvent("UNIT_HEALTH", "UnitHealthEvent")

    --> ZONE CHANGED
    weizPVP:RegisterEvent("PLAYER_ENTERING_BATTLEGROUND", "PlayerEnteringBattlegroundEvent")
    weizPVP:RegisterEvent("PLAYER_ENTERING_WORLD", "PlayerEnteringWorldEvent")
    weizPVP:RegisterEvent("ZONE_CHANGED_NEW_AREA", "ZoneChangedNewAreaEvent")

    --> COMBAT/PVP
    weizPVP:RegisterEvent("PLAYER_REGEN_DISABLED", "EnteringCombat")
    weizPVP:RegisterEvent("PLAYER_REGEN_ENABLED", "LeavingCombat")

    --> PLAYER UPDATES
    weizPVP:RegisterEvent("PLAYER_LEVEL_UP", "PlayerLevelUp")

    --> DISPLAY CHANGES
    weizPVP:RegisterEvent("DISPLAY_SIZE_CHANGED", "UpdateDisplayData")
    weizPVP:RegisterEvent("PLAYER_LOGIN", "UpdateDisplayData")

    --> Crosshairs
    weizPVP:EnableCrosshair()
end

-----------------------------------------------------------------------
--> DISABLE EVENTS
-----------------------------------------------------------------------
function weizPVP:DisableEvents()
    --> DATA COLLECTION
    weizPVP:UnregisterEvent("NAME_PLATE_UNIT_ADDED", "NameplateAdded")
    weizPVP:UnregisterEvent("NAME_PLATE_UNIT_REMOVED", "NameplateRemoved")
    weizPVP:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED", "CombatLogEvent")
    weizPVP:UnregisterEvent("PLAYER_TARGET_CHANGED", "PlayerTargetEvent")
    weizPVP:UnregisterEvent("UPDATE_MOUSEOVER_UNIT", "PlayerMouseoverEvent")
    weizPVP:UnregisterEvent("UNIT_HEALTH_FREQUENT", "UnitHealthEvent")

    --> COMBAT/PVP
    weizPVP:UnregisterEvent("PLAYER_REGEN_DISABLED", "EnteringCombat")
    weizPVP:UnregisterEvent("PLAYER_REGEN_ENABLED", "LeavingCombat")

    --> PLAYER UPDATES
    weizPVP:UnregisterEvent("PLAYER_LEVEL_UP", "PlayerLevelUp")

    --> DISPLAY CHANGES
    weizPVP:UnregisterEvent("DISPLAY_SIZE_CHANGED", "UpdateDisplayData")
    weizPVP:UnregisterEvent("PLAYER_LOGIN", "UpdateDisplayData")

    -->Crosshairs
    weizPVP:DisableCrosshair()
end

-------------------------------------------------------------------------------------------
--|> ZONE INFO
-------------------------------------------------------------------------------------------
local inInstance
local ZoneTimerStartTime = GetTime()
local ValidBG
local ValidWorldZone

-----------------------------------------------------------------------
--> Check for Valid (PVP) Instance
-----------------------------------------------------------------------
local function CheckValidInstance()
    --> Checking for Valid BG
    inInstance = select(2, IsInInstance()) --> Get instance info
    if inInstance == "pvp" and weizPVP.Options.Addon.EnabledInBattlegrounds == true then
        return true
    end

    if inInstance == "arena" and weizPVP.Options.Addon.EnabledInArena == true then
        return true
    end
    return false
end

--> Check for Valid World Zone
-----------------------------------------------------------------------
local function CheckValidWorldZone()
    --> Checking for Valid WPVP Zone
    inInstance = select(2, IsInInstance())
    if inInstance == "none" then
        return true
    else
        return false
    end
end

-----------------------------------------------------------------------
--> Get PVP Zone
-----------------------------------------------------------------------
function weizPVP.GetPVPZone()
    if ZoneTimerStartTime + 1 <= GetTime() then
        ZoneTimerStartTime = GetTime()
        if GetZoneText() == "" then
            C_Timer_After(0.5, weizPVP.GetPVPZone)
            return
        end
        ValidWorldZone = CheckValidWorldZone()
        ValidBG = CheckValidInstance()
        if not InCombatLockdown() then
            if ValidWorldZone or ValidBG then
                weizPVP:OnEnable()
                weizPVP.CoreFrame:Show()
                weizPVP.HeaderFrame:Show()
            else
                weizPVP:OnDisable()
            end
        end
    else
        return
    end
end

-----------------------------------------------------------------------
--=> EVENT: Entering Battleground Instance
-----------------------------------------------------------------------
function weizPVP:PlayerEnteringBattlegroundEvent()
    C_Timer_After(1, weizPVP.GetPVPZone)
    wipe(weizPVP.CurrentNameplates)
end

-----------------------------------------------------------------------
--=> EVENT: ZoneChangedNewAreaEvent
-----------------------------------------------------------------------
function weizPVP:ZoneChangedNewAreaEvent()
    C_Timer_After(1, weizPVP.GetPVPZone)
end

-----------------------------------------------------------------------
--=> EVENT: Player Entering World
-----------------------------------------------------------------------
function weizPVP:PlayerEnteringWorldEvent()
    wipe(weizPVP.CurrentNameplates)
    C_Timer_After(1, weizPVP.GetPVPZone)
end

-------------------------------------------------------------------------------------------
--|> COMBAT LOG FUNCTIONS
-------------------------------------------------------------------------------------------
---------------------------------------------------------------------
--> Static Role Assignment
---------------------------------------------------------------------
local function RoleAssign(class)
    if class == "ROGUE" or class == "MAGE" or class == "WARLOCK" or class == "HUNTER" then
        return "DAMAGER"
    end
    return nil
end

-----------------------------------------------------------------------
--> Get Role from Spec
-----------------------------------------------------------------------
local function GetSpecRole(specid)
    if specid then
        return select(5, GetSpecializationInfoByID(specid))
    end
    return nil
end

---------------------------------------------------------------------
--> Role Check
-----------------------------------------------------------------------
local function ClRoleCheck(spellID, class)
    local role = RoleAssign(class)
    if role ~= nil then
        return role
    end

    --> Check Spell ID against DB of specs/roles
    local specIdCheck = weizPVP:GetSpecIdFromSpellId(spellID)
    if not specIdCheck then
        return nil
    end

    --> Role
    role = GetSpecRole(specIdCheck)
    return role
end

-----------------------------------------------------------------------
--> CL: VALID PLAYER CHECK
-----------------------------------------------------------------------
local function ValidLogPlayer(flags, guid, name)
    if name ~= "Unknown" and guid and name then
        if (bit_band(flags, 0x00000040) ~= 0 or weizPVP.Options.DEBUG) and bit_band(flags, 0x00000400) ~= 0 then
            return true
        end
    end
    return false
end

-----------------------------------------------------------------------
--> CL: CREATE NEW PLAYER ENTRY IN DB
-----------------------------------------------------------------------
local function CLogNewPlayerFound(event, srcName, srcGUID, arg12)
    if weizPVP.PlayerDB[srcName] then
        return
    end
    if srcName and srcGUID then
        weizPVP.PlayerDB[srcName] = {}
        weizPVP.PlayerDB[srcName].Name = srcName
        weizPVP.PlayerDB[srcName].Timestamp = GetTime()
        weizPVP.PlayerDB[srcName].Estimated = true
        local levelNewPlayer
        local abilityType = strsub(event, 1, 5)
        if abilityType == "SWING" or abilityType == "SPELL" or abilityType == "RANGE" then
            levelNewPlayer = weizPVP:GetLevelFromSpellId(arg12) or 0
        else
            levelNewPlayer = 0
        end
        weizPVP.PlayerDB[srcName].Level = levelNewPlayer
        local class
        _, class = GetPlayerInfoByGUID(srcGUID)
        weizPVP.PlayerDB[srcName].Class = class
        local newRole = ClRoleCheck(arg12, class)
        weizPVP.PlayerDB[srcName].Role = newRole or nil
    end
end

-----------------------------------------------------------------------
--> CL: DEATH CHECK
-----------------------------------------------------------------------
local function CLDeath(fEvent, fGUID, fName)
    if weizPVP.PlayerActiveCache[fGUID] and fEvent == "UNIT_DIED" then
        weizPVP.PlayerActiveCache[fGUID].Dead = true
        weizPVP:UpdatePlayerActiveCache(fName, nil, nil, true, nil, fGUID)
        return true
    end
    return false --> return false on no death seen
end

-----------------------------------------------------------------------
--> CL: AuraCheck
-----------------------------------------------------------------------
local hpriest = {
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
local stealthNames = {
    ["Stealth"] = true,
    ["Prowl"] = true
}

-- (event, arg12, arg13, srcGUID, srcName)
local function AuraCheck(event, spellId, spellName, srcGUID, srcName)
    --> Check for STEALTH match
    local stealthFound = false
    if stealthNames[spellName] then
        stealthFound = true
    elseif stealthIDs[spellName] then
        stealthFound = true
    end

    -- > STEALTH FOUND?
    if stealthFound == true then
        if weizPVP.Options.StealthAlert.Enabled == true then
            local _, _, icon = GetSpellInfo(spellId)
            --> Set Class Color
            local classColor = select(4, GetClassColor(weizPVP.PlayerDB[srcName].Class))
            local classColoredName = WrapTextInColorCode(srcName, classColor)
            weizPVP:ShowStealthAlert(spellName, classColoredName, icon)
        end
        weizPVP:UpdatePlayerActiveCache(srcName, nil, true, false, nil, srcGUID)
        return true
    end

    --> Redemption Check
    -----------------------------------------
    if hpriest[spellId] then
        weizPVP:UpdatePlayerActiveCache(srcName, nil, nil, true, "HEALER", srcGUID)
        return true --> Return after updating player cache
    end

    return false
end

-----------------------------------------------------------------------
--=> EVENT: COMBAT LOG
-----------------------------------------------------------------------
function weizPVP:CombatLogEvent()
    local _, event, _, srcGUID, srcName, srcFlags, _, dstGUID, dstName, dstFlags, _, arg12, arg13, _, _, _ = CombatLogGetCurrentEventInfo()

    --> IS VALID SOURCE?
    -------------------------
    local validDst = ValidLogPlayer(dstFlags, dstGUID, dstName)
    local validSrc = ValidLogPlayer(srcFlags, srcGUID, srcName)

    if validSrc then
        --> Check if unit is not in DB yet
        -----------------------------------------
        if not weizPVP.PlayerDB[srcName] then
            CLogNewPlayerFound(event, srcName, srcGUID, arg12)
        end

        --> Check role
        -----------------------------------------
        if weizPVP.PlayersOnBars[srcGUID] and weizPVP.PlayerActiveCache[srcGUID] and not weizPVP.PlayerActiveCache[srcGUID].RoleFound then
            local role = ClRoleCheck(arg12, weizPVP.PlayerDB[srcName].Class)
            if role ~= nil then
                if not weizPVP.PlayerDB[srcName].Role or weizPVP.PlayerDB[srcName].Role ~= role then
                    weizPVP.PlayerDB[srcName].Role = role
                    weizPVP.PlayerActiveCache[srcGUID].RoleFound = true
                end
            end
        end

        --> AuraCheck
        -----------------------------------------
        if event == "SPELL_AURA_APPLIED" then
            local matchFound = AuraCheck(event, arg12, arg13, srcGUID, srcName)
            if matchFound then
                return --> Return after updating player cache
            end
        end
        weizPVP:UpdatePlayerActiveCache(srcName, nil, nil, nil, nil, srcGUID)
    end

    --> VALID DST; CHECK DEAD
    -------------------------
    if validDst then
        CLDeath(event, dstGUID, dstName)
    end
end

-------------------------------------------------------------------------------------------
--|> UNIT EVENTS
-------------------------------------------------------------------------------------------

--=> EVENT: MOUSEOVER
-----------------------------------------------------------------------
function weizPVP:PlayerMouseoverEvent()
    if not weizPVP.Addon.LagModeActive and UnitExists("mouseover") then
        weizPVP:GetUnitData("mouseover")
        weizPVP:UnitHealthEvent(_, "mouseover")
    end
end

-----------------------------------------------------------------------
--=> EVENT: TARGET CHANGED
-- -----------------------------------------------------------------------
function weizPVP:PlayerTargetEvent()
    if UnitExists("target") then
        weizPVP:ChangeTargetIcon()
        if UnitIsPlayer("target") then
            weizPVP:GetUnitData("target")
            weizPVP:UnitHealthEvent(_, "target")
        end
    end
    weizPVP:ChangeTargetIcon()
end

-----------------------------------------------------------------------
--=> EVENT: NAMEPLATE ADDED
-- -----------------------------------------------------------------------
function weizPVP:NameplateAdded(_, unit)
    if (UnitIsEnemy("player", unit) or weizPVP.Options.DEBUG) and UnitIsPlayer(unit) then
        local GUID = UnitGUID(unit)
        --> Update time only
        if weizPVP.PlayerActiveCache[GUID] and weizPVP.PlayerActiveCache[GUID].Estimated == false then
            weizPVP.PlayerActiveCache[GUID].Stealth = false
            weizPVP:AddPlayerDataToNearby(GUID, false)
        else
            weizPVP:GetUnitData(unit)
        end
        weizPVP.CurrentNameplates[GUID] = true
    end
end

-----------------------------------------------------------------------
--=> EVENT: NAMEPLATE REMOVED
-----------------------------------------------------------------------
function weizPVP:NameplateRemoved(_, unit)
    local GUID = UnitGUID(unit)
    if weizPVP.PlayerActiveCache[GUID] then
        weizPVP:AddPlayerDataToNearby(GUID, false)
    end
    weizPVP.CurrentNameplates[GUID] = nil
end

-----------------------------------------------------------------------
--=> EVENT: HEALTH
-----------------------------------------------------------------------
function weizPVP:UnitHealthEvent(_, unit)
    local GUID = UnitGUID(unit) or nil
    --> Check if player is aleady on bars
    -------------------------------------
    if weizPVP.PlayersOnBars[GUID] and weizPVP.PlayerActiveCache[GUID] then
        local newhealth = (UnitHealth(unit) / UnitHealthMax(unit) * 100) or nil
        local dead = UnitIsDeadOrGhost(unit)

        --> If valid dead value that is different that previouosly stored; update.
        if dead ~= nil and dead ~= weizPVP.PlayerActiveCache[GUID].Dead then
            weizPVP.PlayerActiveCache[GUID].Dead = dead
        end
        if newhealth ~= nil and newhealth ~= weizPVP.PlayerActiveCache[GUID].Health then
            weizPVP.PlayerActiveCache[GUID].Health = newhealth
        end
    end
end

-------------------------------------------------------------------------------------------
--|> COMBAT EVENTS
-------------------------------------------------------------------------------------------
--=> EVENT: ENTERING COMBAT
-----------------------------------------------------------------------
function weizPVP:EnteringCombat()
    weizPVP:SetStatusBarMessage("|cFFF4564D+++ IN COMBAT +++|r", false)
end

-----------------------------------------------------------------------
--=> EVENT: LEAVING COMBAT
-----------------------------------------------------------------------
function weizPVP:LeavingCombat()
    weizPVP:SetStatusBarMessage("|cFF53F493--- OUT OF COMBAT ---|r", true, 3)
    weizPVP:ManageListTimeouts()
end

-------------------------------------------------------------------------------------------
--|> PLAYER UPDATES
-------------------------------------------------------------------------------------------
--=> EVENT: PLAYER LEVELED UP
-----------------------------------------------------------------------
function weizPVP:PlayerLevelUp()
    weizPVP.Player.Level = UnitLevel("player") --> Update player level
end

-------------------------------------------------------------------------------------------
--|> WOW CLIENT UPDATES
-------------------------------------------------------------------------------------------
--> UPDATE DISPLAY DATA
--: Runs on PLAYER_LOGIN event
-----------------------------------------------------------------------
function weizPVP:UpdateDisplayData()
    weizPVP.Display.Width = GetScreenWidth()
    weizPVP.Display.Height = GetScreenHeight()
    weizPVP.Display.xFactor = (768 / weizPVP.Display.Width) * (weizPVP.Display.Width / weizPVP.Display.Height)
    weizPVP.Display.yFactor = 768 / weizPVP.Display.Height
    weizPVP.Display.UIScale = UIParent:GetScale()
    weizPVP.Display.EffectiveScale = UIParent:GetEffectiveScale()
end

-------------------------------------------------------------------------------------------
--|> LAGMODE
-------------------------------------------------------------------------------------------
--> LAGMODE: ACTIVATE
-----------------------------------------------------------------------
local function LagModeActivate()
    weizPVP:UnregisterEvent("NAME_PLATE_UNIT_ADDED", "NameplateAdded")
    weizPVP:UnregisterEvent("NAME_PLATE_UNIT_REMOVED", "NameplateRemoved")
    weizPVP:UnregisterEvent("UPDATE_MOUSEOVER_UNIT", "PlayerMouseoverEvent")
    weizPVP.CurrentNameplates = {}
    weizPVP.Addon.LagModeActive = true
end

-----------------------------------------------------------------------
--> LAGMODE: DEACTIVATE
-----------------------------------------------------------------------
local function LagModeDeactivate()
    weizPVP:RegisterEvent("NAME_PLATE_UNIT_ADDED", "NameplateAdded")
    weizPVP:RegisterEvent("NAME_PLATE_UNIT_REMOVED", "NameplateRemoved")
    weizPVP:RegisterEvent("UPDATE_MOUSEOVER_UNIT", "PlayerMouseoverEvent")
    weizPVP.Addon.LagModeActive = false
end

-----------------------------------------------------------------------
--> LAGMODE: CHECK
--: Checks FPS to see if LagMode should be enabed or not
-----------------------------------------------------------------------
local LagModeCounter = 0
local function LagModeCheckFPS()
    if weizPVP.Options.LagMode.Enabled == true then
        if LagModeCounter >= 2 then
            LagModeCounter = 0
            if weizPVP.Display.CurrentFPS < weizPVP.Options.LagMode.FPSThreshold then
                LagModeActivate()
            elseif weizPVP.Display.CurrentFPS > weizPVP.Options.LagMode.FPSThreshold then
                if weizPVP.Addon.LagModeActive == true then
                    LagModeDeactivate()
                end
            end
        else
            LagModeCounter = LagModeCounter + 1
        end
    elseif weizPVP.Addon.LagModeActive == true then
        LagModeDeactivate()
    end
end

-------------------------------------------------------------------------------
--|> HALT
-------------------------------------------------------------------------------
--> HALT: ACTIVATE
-----------------------------------------------------------------------
function weizPVP:HaltActivate()
    weizPVP:UnregisterEvent("NAME_PLATE_UNIT_ADDED", "NameplateAdded")
    weizPVP:UnregisterEvent("NAME_PLATE_UNIT_REMOVED", "NameplateRemoved")
    weizPVP:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED", "CombatLogEvent")
    weizPVP:UnregisterEvent("PLAYER_TARGET_CHANGED", "PlayerTargetEvent")
    weizPVP:UnregisterEvent("UPDATE_MOUSEOVER_UNIT", "PlayerMouseoverEvent")
    weizPVP:UnregisterEvent("UNIT_HEALTH_FREQUENT", "UnitHealthEvent")
    weizPVP:UnregisterEvent("PLAYER_LOGIN", "UpdateDisplayData")
    weizPVP.Addon.Halted = true
end

-----------------------------------------------------------------------
--> HALT: DEACTIVATE
-----------------------------------------------------------------------
function weizPVP:HaltDeactivate()
    if not weizPVP.Addon.LagModeActive then --> Only re-enable these events if Lagmode isn't active
        weizPVP:RegisterEvent("NAME_PLATE_UNIT_ADDED", "NameplateAdded")
        weizPVP:RegisterEvent("NAME_PLATE_UNIT_REMOVED", "NameplateRemoved")
        weizPVP:RegisterEvent("UPDATE_MOUSEOVER_UNIT", "PlayerMouseoverEvent")
    end
    weizPVP:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED", "CombatLogEvent")
    weizPVP:RegisterEvent("PLAYER_TARGET_CHANGED", "PlayerTargetEvent")
    weizPVP:RegisterEvent("UNIT_HEALTH_FREQUENT", "UnitHealthEvent")
    weizPVP:RegisterEvent("PLAYER_LOGIN", "UpdateDisplayData")
    weizPVP.Addon.Halted = false
end

-------------------------------------------------------------------------------------------
--|> PULSE
--: Runs every 2 seconds
-------------------------------------------------------------------------------------------
function weizPVP:PulseEvent()
    --> FPS Update
    weizPVP.Display.CurrentFPS = GetFramerate()
    weizPVP:ManageListTimeouts()
    --> Check for LagMode
    if weizPVP.Options.LagMode.Enabled then
        LagModeCheckFPS()
    else
        weizPVP.Addon.LagModeActive = false
    end
    if weizPVP.Options.LagMode.HaltEnabled == true then
        if weizPVP.Display.CurrentFPS < 11 then
            weizPVP:HaltActivate()
        else
            weizPVP:HaltDeactivate()
        end
    end
end

-------------------------------------------------------------------------------------------
--|> Phase Detection
-------------------------------------------------------------------------------------------
local time = time
local connectedRealms = GetAutoCompleteRealms() or nil
local RealmFound = false

local function CheckRealm()
    RealmFound = false
    connectedRealms = GetAutoCompleteRealms()
    if connectedRealms then
        tDeleteItem(connectedRealms, weizPVP.Player.FromSubRealm)
        if #connectedRealms > 0 then
            RealmFound = true
        end
    end
    if RealmFound == false then
        weizPVP:PrintAddonMessage("|cffe32dff~PHASING~|r")
        weizPVP:SetStatusBarMessage("|cffe32dff~PHASING~|r", true, 4)
    end
end

local total = 0
local shifted = false
local ShiftTime = time()
local NextShiftTime = ShiftTime + 1
local function fOnUpdate(self, elapsed)
    total = total + elapsed
    if total >= 0.1 then
        if weizPVP.Options.Alerts.PhasingChat then
            if not GarrisonLandingPageMinimapButton:IsShown() then
                ShiftTime = time()
                NextShiftTime = ShiftTime + 1
                if shifted == false then
                    CheckRealm()
                    shifted = true
                end
            end
            if shifted == true then
                if time() >= NextShiftTime then
                    shifted = false
                end
            end
            total = 0
        end
    end
end

local f = CreateFrame("frame")
f:SetScript("OnUpdate", fOnUpdate)
