-------------------------------------------------------------------------------------------
--|> EVENTS
-------------------------------------------------------------------------------------------
--|> Upvalue Globals
-------------------------------------------------------------------------------------------
local _, NS = ...
local GetClassColor = GetClassColor
local WrapTextInColorCode = WrapTextInColorCode
local UnitIsDeadOrGhost = UnitIsDeadOrGhost
local GetTime = GetTime
local IsInInstance = IsInInstance
local bit = bit
local select = select
local bit_band = bit.band
local C_Timer_After = C_Timer.After
local InCombatLockdown = InCombatLockdown
local CombatLogGetCurrentEventInfo = CombatLogGetCurrentEventInfo
local strsub = strsub
local wipe = wipe
local GetPlayerInfoByGUID = GetPlayerInfoByGUID
local GetSpecializationInfoByID = GetSpecializationInfoByID
local GetZoneText = GetZoneText
local GetFramerate = GetFramerate
local GarrisonLandingPageMinimapButton = GarrisonLandingPageMinimapButton

--|> INIT GLOBALS
-------------------------------------------------------------------------------------------
NS.PlayerActiveCache = {}

--|> EVENT MONITORING: ENABLE / DISABLE
-------------------------------------------------------------------------------------------
--> ENABLE EVENTS
function NS.EnableEvents()
    --> ADDON
    weizPVP:RegisterEvent("ADDON_LOADED", NS.AddonLoadedEvent)

    --> DATA COLLECTION
    weizPVP:RegisterEvent("NAME_PLATE_UNIT_ADDED", NS.NameplateAdded)
    weizPVP:RegisterEvent("NAME_PLATE_UNIT_REMOVED", NS.NameplateRemoved)
    weizPVP:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED", NS.CombatLogEvent)
    weizPVP:RegisterEvent("PLAYER_TARGET_CHANGED", NS.PlayerTargetEvent)
    weizPVP:RegisterEvent("UPDATE_MOUSEOVER_UNIT", NS.PlayerMouseoverEvent)
    weizPVP:RegisterEvent("UNIT_HEALTH_FREQUENT", NS.UnitHealthEvent)
    weizPVP:RegisterEvent("UNIT_TARGET", NS.UnitTargetEvent)

    --> ZONE CHANGED
    weizPVP:RegisterEvent("PLAYER_ENTERING_BATTLEGROUND", NS.PlayerEnteringBattlegroundEvent)
    weizPVP:RegisterEvent("PLAYER_ENTERING_WORLD", NS.PlayerEnteringWorldEvent)
    weizPVP:RegisterEvent("ZONE_CHANGED_NEW_AREA", NS.ZoneChangedNewAreaEvent)

    --> COMBAT/PVP
    weizPVP:RegisterEvent("PLAYER_REGEN_DISABLED", NS.EnteringCombat)
    weizPVP:RegisterEvent("PLAYER_REGEN_ENABLED", NS.LeavingCombat)

    --> PLAYER UPDATES
    weizPVP:RegisterEvent("PLAYER_LEVEL_UP", NS.PlayerLevelUp)

    --> DISPLAY CHANGES
    weizPVP:RegisterEvent("DISPLAY_SIZE_CHANGED", NS.UpdateDisplayData)
    weizPVP:RegisterEvent("PLAYER_LOGIN", NS.UpdateDisplayData)
    --> Crosshairs
    NS.Crosshair.Enable()
end

--> DISABLE EVENTS
-----------------------------------------------------------------------
function NS.DisableEvents()
    --> ADDON
    weizPVP:UnregisterEvent("ADDON_LOADED", NS.AddonLoadedEvent)

    --> DATA COLLECTION
    weizPVP:UnregisterEvent("NAME_PLATE_UNIT_ADDED", NS.NameplateAdded)
    weizPVP:UnregisterEvent("NAME_PLATE_UNIT_REMOVED", NS.NameplateRemoved)
    weizPVP:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED", NS.CombatLogEvent)
    weizPVP:UnregisterEvent("PLAYER_TARGET_CHANGED", NS.PlayerTargetEvent)
    weizPVP:UnregisterEvent("UPDATE_MOUSEOVER_UNIT", NS.PlayerMouseoverEvent)
    weizPVP:UnregisterEvent("UNIT_HEALTH_FREQUENT", NS.UnitHealthEvent)
    weizPVP:UnregisterEvent("UNIT_TARGET", NS.UnitTargetEvent)

    --> COMBAT/PVP
    weizPVP:UnregisterEvent("PLAYER_REGEN_DISABLED", NS.EnteringCombat)
    weizPVP:UnregisterEvent("PLAYER_REGEN_ENABLED", NS.LeavingCombat)

    --> PLAYER UPDATES
    weizPVP:UnregisterEvent("PLAYER_LEVEL_UP", NS.PlayerLevelUp)

    --> DISPLAY CHANGES
    weizPVP:UnregisterEvent("DISPLAY_SIZE_CHANGED", NS.UpdateDisplayData)
    weizPVP:UnregisterEvent("PLAYER_LOGIN", NS.UpdateDisplayData)

    -->Crosshairs
    NS.Crosshair.Disable()
end

--|> ZONE INFO
-------------------------------------------------------------------------------------------
NS.instanceInfo = ""
local ZoneTimerStartTime = GetTime()
local ValidBG
local ValidWorldZone

--> Check for Valid (PVP) Instance
local function CheckValidInstance()
    --> Checking for Valid BG
    NS.instanceInfo = select(2, IsInInstance()) --> Get instance info
    if NS.instanceInfo == "pvp" and NS.Options.Addon.EnabledInBattlegrounds == true then
        return true
    end
    if NS.instanceInfo == "arena" and NS.Options.Addon.EnabledInArena == true then
        return true
    end
    return false
end

--> Check for Valid World Zone
local function CheckValidWorldZone()
    --> Checking for Valid WPVP Zone
    NS.instanceInfo = select(2, IsInInstance())
    if NS.instanceInfo == "none" then
        return true
    else
        return false
    end
end

--> Get PVP Zone
function NS.GetPVPZone()
    if ZoneTimerStartTime + 1 <= GetTime() then
        ZoneTimerStartTime = GetTime()
        if GetZoneText() == "" then
            C_Timer_After(0.5, NS.GetPVPZone)
            return
        end
        ValidWorldZone = CheckValidWorldZone()
        ValidBG = CheckValidInstance()
        if not InCombatLockdown() then
            if ValidWorldZone or ValidBG then
                weizPVP:OnEnable()
                NS.HeaderFrame:Show()
                if NS.Options.Window.Collapsed == false then
                    NS.CoreFrame:Show()
                end
            else
                weizPVP:OnDisable()
            end
        end
    else
        return
    end
end

--> EVENT: Entering Battleground Instance
function NS.PlayerEnteringBattlegroundEvent()
    C_Timer_After(1, NS.GetPVPZone)
    wipe(NS.CurrentNameplates)
end

--> EVENT: ZoneChangedNewAreaEvent
function NS.ZoneChangedNewAreaEvent()
    C_Timer_After(1, NS.GetPVPZone)
end

--> EVENT: Player Entering World
function NS.PlayerEnteringWorldEvent()
    wipe(NS.CurrentNameplates)
    NS.Crosshair.NewTarget()
    C_Timer_After(1, NS.GetPVPZone)
    -- database update check for pre-1.9.0
    if NS.databaseReset then
        C_Timer.After(
            1,
            function()
                NS.databaseReset = nil
                StaticPopup_Show("WEIZPVP_UPGRADE_DB_RESET")
                NS.PrintAddonMessage("|cffFFA200weizPVP's saved options and data have been reset!|r")
                NS.PrintAddonMessage(
                    "This database reset was required to resolve potential issues with the new KOS features and player tracking, especially for players that play on mutliple realms."
                )
                NS.PrintAddonMessage("Database updates in the future will migrate all your data and settings; No more resets will be needed.")
            end
        )
    end
end

--|> COMBAT LOG FUNCTIONS
-------------------------------------------------------------------------------------------
--> Static Role Assignment
local function RoleAssign(class)
    if class == "ROGUE" or class == "MAGE" or class == "WARLOCK" or class == "HUNTER" then
        return "DAMAGER"
    end
    return nil
end

--> Get Role from Spec
local function GetSpecRole(specid)
    if specid then
        return select(5, GetSpecializationInfoByID(specid))
    end
    return nil
end

--> Role Check
local function ClRoleCheck(spellID, class)
    local role = RoleAssign(class)
    if role ~= nil then
        return role
    end

    --> Check Spell ID against DB of specs/roles
    local specIdCheck = NS.GetSpecIdFromSpellId(spellID)
    if not specIdCheck then
        return nil
    end

    --> Role
    role = GetSpecRole(specIdCheck)
    return role
end

--> CL: VALID PLAYER CHECK
local CL_HOSTILE = COMBATLOG_OBJECT_REACTION_HOSTILE
local CL_PLAYER = COMBATLOG_OBJECT_TYPE_PLAYER
local function ValidLogPlayer(flags, guid)
    if (not flags) or (not guid) then --input check
        return false
    end
    if not string.find(guid, "Player") then --player GUID check
        return false
    end
    if (bit_band(flags, CL_HOSTILE) == CL_HOSTILE or NS.Options.DEBUG) and bit_band(flags, CL_PLAYER) == CL_PLAYER then
        return true
    end
    return false
end

--> CL: CREATE NEW PLAYER ENTRY IN DB
local function CLogNewPlayerFound(event, srcName, srcGUID, arg12)
    if NS.PlayerDB[srcName] then
        return
    end
    if srcName and srcGUID then
        NS.PlayerDB[srcName] = {}
        NS.PlayerDB[srcName].Name = srcName
        NS.PlayerDB[srcName].Timestamp = GetTime()
        NS.PlayerDB[srcName].Estimated = true
        local levelNewPlayer
        local abilityType = strsub(event, 1, 5)
        if abilityType == "SWING" or abilityType == "SPELL" or abilityType == "RANGE" then
            levelNewPlayer = NS.GetLevelFromSpellId(arg12) or 0
        else
            levelNewPlayer = 0
        end
        NS.PlayerDB[srcName].Level = levelNewPlayer
        local class
        _, class = GetPlayerInfoByGUID(srcGUID)
        NS.PlayerDB[srcName].Class = class
        local newRole = ClRoleCheck(arg12, class)
        NS.PlayerDB[srcName].Role = newRole or nil
    end
end

--> CL: DEATH CHECK
local function CLDeath(fEvent, fGUID, fName)
    if NS.PlayerActiveCache[fGUID] and fEvent == "UNIT_DIED" then
        NS.PlayerActiveCache[fGUID].Dead = true
        NS.UpdatePlayerActiveCache(fName, nil, nil, true, nil, fGUID)
        return true
    end
    return false --> return false on no death seen
end

--> CL: AuraCheck
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
local function AuraCheck(spellId, spellName, srcGUID, srcName)
    --> Check for STEALTH match
    local stealthFound = false
    if stealthNames[spellName] then
        stealthFound = true
    elseif stealthIDs[spellName] then
        stealthFound = true
    end
    --> STEALTH FOUND?
    if stealthFound == true then
        if NS.Options.StealthAlert.Enabled == true then
            local _, _, icon = GetSpellInfo(spellId)
            --> Set Class Color
            local classColoredName = WrapTextInColorCode(srcName, select(4, GetClassColor(NS.PlayerDB[srcName].Class)))
            NS.ShowStealthAlert(spellName, classColoredName, icon)
        end
        NS.UpdatePlayerActiveCache(srcName, nil, true, false, nil, srcGUID)
        return true
    end
    --> Redemption Check
    if hpriest[spellId] then
        NS.UpdatePlayerActiveCache(srcName, nil, nil, true, "HEALER", srcGUID)
        return true --> Return after updating player cache
    end
    return false
end

local string_find = string.find
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

--> EVENT: COMBAT LOG
function NS.CombatLogEvent()
    local _, event, _, srcGUID, srcName, srcFlags, _, dstGUID, dstName, dstFlags, _, spellId, spellName, _, _, _ = CombatLogGetCurrentEventInfo()
    --> IS VALID SOURCE?
    if ValidLogPlayer(srcFlags, srcGUID) then
        if string.find(srcName, "Unknown") then
            return false
        end
        srcName = FormatCLogName(srcName)
        if not srcName then
            return
        end
        --> Check if unit is not in DB yet
        if not NS.PlayerDB[srcName] then
            CLogNewPlayerFound(event, srcName, srcGUID, spellId)
        end
        --> Check role
        if NS.PlayersOnBars[srcGUID] and NS.PlayerActiveCache[srcGUID] then
            local role = ClRoleCheck(spellId, NS.PlayerDB[srcName].Class)
            if role ~= nil then
                if NS.PlayerDB[srcName].Role ~= role or not NS.PlayerActiveCache[srcGUID].RoleFound then
                    NS.PlayerDB[srcName].Role = role
                    NS.PlayerActiveCache[srcGUID].RoleFound = true
                end
            end
        end
        --> AuraCheck
        if event == "SPELL_AURA_APPLIED" and srcGUID == dstGUID then
            local matchFound = AuraCheck(spellId, spellName, srcGUID, srcName)
            if matchFound then
                return --> Return after updating player cache
            end
        end
        NS.UpdatePlayerActiveCache(srcName, nil, nil, nil, nil, srcGUID)
    end
    --> VALID DST; CHECK DEAD
    if ValidLogPlayer(dstFlags, dstGUID) then
        if string.find(dstName, "Unknown") then
            return false
        end
        dstName = FormatCLogName(dstName)
        CLDeath(event, dstGUID, dstName)
    end
end

--|> UNIT EVENTS
-------------------------------------------------------------------------------------------
--> EVENT: MOUSEOVER
function NS.PlayerMouseoverEvent()
    NS.GetUnitData("mouseover")
end

--> EVENT: TARGET CHANGED
function NS.PlayerTargetEvent()
    NS.GetUnitData("target")
    NS.Crosshair.NewTarget() -- Crosshair-New Target
    NS.ChangeTargetIcon() -- Refresh target icon from player bars
    NS.UnitHealthEvent(_, "target") --extra health check --todo : optimize GetUnitData() for better health check
end

--> EVENT: NAMEPLATE ADDED
function NS.NameplateAdded(_, unit)
    -- API bug workaround
    if not unit then
        return
    end
    if string.find(NS.GetUnitName(unit), "Unknown") then
        return false
    end
    NS.Crosshair.NameplateAdded(unit)
    NS.GetUnitData(unit)
    NS.CurrentNameplates[UnitGUID(unit)] = true
end

--> EVENT: NAMEPLATE REMOVED
function NS.NameplateRemoved(_, unit)
    -- API bug workaround
    if not unit then
        return
    end
    if string.find(NS.GetUnitName(unit), "Unknown") then
        return false
    end
    NS.Crosshair.NameplateRemoved(unit)
    NS.GetUnitData(unit)
    if NS.IsUnitValidForTracking(unit) then
        NS.CurrentNameplates[UnitGUID(unit)] = nil
    end
end

--> EVENT: HEALTH
function NS.UnitHealthEvent(_, unit)
    if NS.IsUnitValidForTracking(unit) then
        local GUID = UnitGUID(unit) or nil
        -- Check if player is already on bars
        if GUID and NS.PlayersOnBars[GUID] and NS.PlayerActiveCache[GUID] then
            local newhealth = (UnitHealth(unit) / UnitHealthMax(unit) * 100) or nil
            local dead = UnitIsDeadOrGhost(unit)
            -- If valid dead value that is different that previously stored; update.
            if dead ~= nil and dead ~= NS.PlayerActiveCache[GUID].Dead then
                NS.PlayerActiveCache[GUID].Dead = dead
            end
            if newhealth ~= nil and newhealth ~= NS.PlayerActiveCache[GUID].Health then
                NS.PlayerActiveCache[GUID].Health = newhealth
            end
        end
    end
end

--> EVENT: UNIT TARGET
function NS.UnitTargetEvent(_, unit)
    NS.GetUnitData(unit)
end

--|> ADDON EVENTS
-------------------------------------------------------------------------------------------
--> EVENT: ADDON_LOADED
function NS.AddonLoadedEvent()
    NS.Crosshair.OnLoad()
    weizPVP:UnregisterEvent("ADDON_LOADED", "AddonLoadedEvent") --disabled after initial load
end

--|> COMBAT EVENTS
-------------------------------------------------------------------------------------------
--> EVENT: ENTERING COMBAT
function NS.EnteringCombat()
    NS.SetStatusBarMessage("|cFFF4564D+++ IN COMBAT +++|r", false)
end

--> EVENT: LEAVING COMBAT
function NS.LeavingCombat()
    NS.SetStatusBarMessage("|cFF53F493--- OUT OF COMBAT ---|r", true, 3)
    NS.ManageListTimeouts()
end

--|> PLAYER UPDATES
--> EVENT: PLAYER LEVELED UP
function NS.PlayerLevelUp()
    NS.Player.Level = UnitLevel("player") --> Update player level
end

--|> WOW CLIENT UPDATES
--> UPDATE DISPLAY DATA
--: Runs on PLAYER_LOGIN event
function NS.UpdateDisplayData()
    XEN.DisplayUpdated()
    NS.Display.Width = XEN._display.ScreenWidth
    NS.Display.Height = XEN._display.ScreenHeight
    NS.Display.UIScale = XEN._display.UIScale
    NS.Display.UiMultiplier = XEN._display.UiMultiplier
    NS.Display.EffectiveScale = XEN._display.EffectiveScale
    NS.Display.DPIScale = XEN._display.DPIScale
    NS.Display.xFactor = XEN._display.xFactor
    NS.Display.yFactor = XEN._display.yFactor
end

--|> PULSE (1 second)
-------------------------------------------------------------------------------------------
local pulseTimeoutCount = 1
local function PulseTimeoutUpdate()
    if pulseTimeoutCount == 2 then
        NS.ManageListTimeouts()
        pulseTimeoutCount = 1
    else
        pulseTimeoutCount = pulseTimeoutCount + 1
    end
end

local pulseFpsCount = 1
local function PulseFpsUpdate()
    if pulseFpsCount == 5 then
        NS.Display.CurrentFPS = GetFramerate()
        pulseFpsCount = 1
    else
        pulseFpsCount = pulseFpsCount + 1
    end
end

--> Update pulsed functions
function NS.PulseEvent()
    PulseFpsUpdate()
    PulseTimeoutUpdate()
end

--|> Phase Detection
-------------------------------------------------------------------------------------------
local time = time
local connectedRealms = GetAutoCompleteRealms() or nil
local RealmFound = false

local function CheckRealm()
    RealmFound = false
    connectedRealms = GetAutoCompleteRealms()
    if connectedRealms then
        tDeleteItem(connectedRealms, NS.PlayerRealm)
        if #connectedRealms > 0 then
            RealmFound = true
        end
    end
    if RealmFound == false then
        NS.PrintAddonMessage("|cffe32dff~PHASING~|r")
        NS.SetStatusBarMessage("|cffe32dff~PHASING~|r", true, 4)
    end
end

local total = 0
local shifted = false
local ShiftTime = time()
local NextShiftTime = ShiftTime + 1
local function phaseTimer(_, elapsed)
    total = total + elapsed
    if total >= 0.1 then
        if NS.Options.Alerts.PhasingChat then
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
f:SetScript("OnUpdate", phaseTimer)
