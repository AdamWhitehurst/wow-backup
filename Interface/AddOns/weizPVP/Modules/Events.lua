-------------------------------------------------------------------------------------------
--|> EVENTS
-------------------------------------------------------------------------------------------
local _, NS = ...
local string_find = string.find
local select = select
local wipe = wipe
local time = time
local tDeleteItem = tDeleteItem
local C_Timer_After = C_Timer.After
local UnitIsDeadOrGhost = UnitIsDeadOrGhost
local InCombatLockdown = InCombatLockdown
local IsInInstance = IsInInstance
local GetTime = GetTime
local GetZoneText = GetZoneText
local GetFramerate = GetFramerate
local GarrisonLandingPageMinimapButton = GarrisonLandingPageMinimapButton
local XEN = XEN

NS.PlayerActiveCache = {}

--|> EVENT MONITORING
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
    --> Crosshair
    NS.Crosshair.Enable()
end

--> DISABLE EVENTS
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
    -->Crosshair
    NS.Crosshair.Disable()
end

--|> ZONES AND INSTANCES
-------------------------------------------------------------------------------------------
NS.instanceInfo = ""
local ZoneTimerStartTime = GetTime()
local ValidBG
local ValidWorldZone

--> Check for Valid (PVP) Instance
local function CheckValidInstance()
    -- Checking for Valid BG
    NS.instanceInfo = select(2, IsInInstance()) -- Get instance info
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
    if NS.firstRun then -- check if this is the first 'entering world' run since init was ran
        NS.PrintAddonMessage(NS.addonString .. " |cffcccccc" .. GetAddOnMetadata("weizPVP", "Version") .. "|r : |cff37ff37Initialized!|r")
        NS.firstRun = nil
    end
    wipe(NS.CurrentNameplates) -- 'nameplate removed' event wont always fire, manually wipe
    NS.Crosshair.NewTarget() -- check for target
    C_Timer_After(1, NS.GetPVPZone)
    if NS.databaseReset then -- database update check for pre-1.9.0
        C_Timer_After(
            1,
            function()
                NS.databaseReset = nil
                StaticPopup_Show("WEIZPVP_UPGRADE_DB_RESET")
                NS.PrintAddonMessage("|cffFFA200Saved options and data have been reset!|r")
                NS.PrintAddonMessage(
                    "The database reset was required to resolve potential issues with the new KOS features and player tracking, especially for players that play on multiple realms."
                )
                NS.PrintAddonMessage("Database updates in the future will migrate all your data and settings; No more resets will be needed.")
            end
        )
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
    NS.UnitHealthEvent(_, "target") --extra health check
end

--> EVENT: NAMEPLATE ADDED
function NS.NameplateAdded(_, unit)
    -- API bug workaround
    if not unit then
        return
    end
    if string_find(NS.GetUnitName(unit), "Unknown") then
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
    if string_find(NS.GetUnitName(unit), "Unknown") then
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
            local currentHealth = (UnitHealth(unit) / UnitHealthMax(unit) * 100) or nil
            local dead = UnitIsDeadOrGhost(unit)
            -- If valid dead value that is different that previously stored; update.
            if dead ~= nil and dead ~= NS.PlayerActiveCache[GUID].Dead then
                NS.PlayerActiveCache[GUID].Dead = dead
            end
            if currentHealth ~= nil and currentHealth ~= NS.PlayerActiveCache[GUID].Health then
                NS.PlayerActiveCache[GUID].Health = currentHealth
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
local pulseTargetCount = 1
local function PulseTimeoutUpdate()
    if pulseTimeoutCount == 2 then
        NS.ManageListTimeouts()
        pulseTimeoutCount = 1
    else
        pulseTimeoutCount = pulseTimeoutCount + 1
    end
    if pulseTargetCount == 5 then
        pulseTargetCount = 1
        NS.GetUnitData("target")
    else
        pulseTargetCount = pulseTargetCount + 1
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
    if RealmFound == false and not NS.firstRun then
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
