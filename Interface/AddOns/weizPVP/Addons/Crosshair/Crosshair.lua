-------------------------------------------------------------------------------
--|> CROSSHAIR
--: Places a crosshair on a nameplate.
--: Filtered for player targets that are hostile player with support for icons, text etc attachments
-------------------------------------------------------------------------------
--|> INIT
local _, NS = ...
local RC = LibStub("LibRangeCheck-2.0")
NS.Crosshair = {}
local Crosshair = NS.Crosshair

--|> Upvalue Globals
-------------------------------------------------------------------------------
local RAID_CLASS_COLORS = RAID_CLASS_COLORS
local UIFrameFadeIn = UIFrameFadeIn
local Clamp = Clamp
local IsItemInRange = IsItemInRange
local UnitIsUnit = UnitIsUnit
local C_NamePlate = C_NamePlate
local UnitClass = UnitClass
local UnitIsConnected = UnitIsConnected
local IsFlying = IsFlying
local IsUsableItem = IsUsableItem
local select = select
local strlen = strlen
local XEN = XEN

--> Targeted Player Info
local targetNamePlateFrame
local targetPlayerName
local targetClass
local targetClassColor

--> Hide Crosshair
local function HideCrosshair()
    weizPVP_CrosshairFrame:Hide()
end
--> Show Crosshair
local function ShowCrosshair()
    if NS.Options.Crosshair.Enabled == true then
        UIFrameFadeIn(weizPVP_CrosshairFrame, 0.1, 0, NS.Options.Crosshair.Alpha)
        weizPVP_CrosshairFrame:Show()
    else
        NS.Crosshair.Disable()
    end
end

--> Active Target Timer
local timer_ActiveTarget
timer_ActiveTarget =
    C_Timer.NewTicker(
    1,
    function()
        timer_ActiveTarget:Cancel()
    end
)
timer_ActiveTarget:Cancel()

--> CONFIGURE RANGE
local function ConfigureRange()
    if NS.Options.Crosshair.ShowRange then
        weizPVP_CrosshairFrame.RangeText:Show()
    else
        weizPVP_CrosshairFrame.RangeText:Hide()
    end
end

-->  SET CLASS COLORS
local function SetCrosshairColors(r, g, b)
    if not (r and g and b) then --> Get colors for class of targeted player if none provied
        r, g, b = targetClassColor:GetRGB()
    end
    --> CORE
    weizPVP_CrosshairFrame.Core:SetVertexColor(XEN.AdjustRGBTint(r, g, b, 0.2))
    weizPVP_CrosshairFrame.Core_ADD:SetVertexColor(XEN.AdjustRGBTint(r, g, b, 0.5))
    --> LINES
    weizPVP_CrosshairFrame.TopLine:SetVertexColor(XEN.AdjustRGBTint(r, g, b, 0.2))
    weizPVP_CrosshairFrame.BottomLine:SetVertexColor(XEN.AdjustRGBTint(r, g, b, 0.2))
    weizPVP_CrosshairFrame.LeftLine:SetVertexColor(XEN.AdjustRGBTint(r, g, b, 0.2))
    weizPVP_CrosshairFrame.RightLine:SetVertexColor(XEN.AdjustRGBTint(r, g, b, 0.2))
    --> FX
    weizPVP_CrosshairFrame.TargetFX:SetVertexColor(r, g, b, 0.8)
    --> ALPHA
    NS.Crosshair.SetAlpha()
    --> NAME TEXT
    if NS.Options.Crosshair.NameEnabled then
        weizPVP_CrosshairFrame.NameText:SetTextColor(r, g, b)
    end
end

-->  RANGE CHECK
local minRange, _
local outputString, outputAlpha
local function rangeCheck()
    minRange, _ = RC:GetRange("target")
    outputString, outputAlpha = "", 0
    if minRange then
        outputString = minRange
        --> Get min yards #
        if outputString >= 40 then -- solid @ 40+ yards
            outputAlpha = 1
        elseif minRange < 20 then
            outputAlpha = 0
        elseif minRange < 30 then
            outputAlpha = 0.5
        elseif minRange < 40 then
            outputAlpha = 0.8
        end
    end
    if outputString == 200 then
        outputString = "200+"
    end
    return outputString, outputAlpha
end

--> NET
local function ShowNet5000()
    weizPVP_CrosshairFrame.NetOMatic.BG.Pulse:Play()
    weizPVP_CrosshairFrame.NetOMatic:SetAlpha(1)
end

local function HideNet5000()
    weizPVP_CrosshairFrame.NetOMatic.BG.Pulse:Stop()
    weizPVP_CrosshairFrame.NetOMatic:SetAlpha(0)
end

local function IsNetUsable()
    return (IsFlying("target") and IsItemInRange("Net-o-Matic 5000", "target") and IsUsableItem("Net-o-Matic 5000"))
end

--> Target Changed
local function TargetRangeCheck()
    if targetNamePlateFrame then
        --> Net-o-Matic 5000 Check
        if IsNetUsable() or NS.Options.DEBUG then
            ShowNet5000()
        else
            HideNet5000()
        end
        --> Range Check
        local rtext, ralpha = rangeCheck()
        if weizPVP_CrosshairFrame.RangeText:GetText() ~= rtext then
            weizPVP_CrosshairFrame.RangeText:SetText(rtext)
        end
        if weizPVP_CrosshairFrame.RangeText:GetAlpha() ~= ralpha then
            weizPVP_CrosshairFrame.RangeText:SetAlpha(ralpha)
        end
        if UnitIsConnected("target") == true then
            SetCrosshairColors()
        else
            SetCrosshairColors(0.3, 0.3, 0.3)
        end
    else
        if timer_ActiveTarget then
            timer_ActiveTarget:Cancel()
            timer_ActiveTarget = nil
        end
    end
end

--> Check KOS
local function CheckKOS()
    if NS.KosList[NS.GetUnitName("target")] then
        weizPVP_CrosshairFrame.FourArrowsKOS.FadeIn:Play()
        weizPVP_CrosshairFrame.FourArrowsKOS.Rotate:Play()
        weizPVP_CrosshairFrame.FourArrows:Hide()
        weizPVP_CrosshairFrame.FourArrowsKOS:Show()
        return true
    else
        weizPVP_CrosshairFrame.FourArrows.FadeIn:Play()
        weizPVP_CrosshairFrame.FourArrows.Rotate:Play()
        weizPVP_CrosshairFrame.FourArrows:Show()
        weizPVP_CrosshairFrame.FourArrowsKOS:Hide()
        return false
    end
end

--> Setup Crosshair On Nameplate
local function SetupCrosshairOnNameplate(nameplate)
    if not nameplate then
        return
    end
    --> Set on same level as nameplate
    weizPVP_CrosshairFrame.Core:SetSize(nameplate:GetWidth() + 14, nameplate:GetWidth() + 14)
    weizPVP_CrosshairFrame:ClearAllPoints()
    weizPVP_CrosshairFrame:SetParent(nameplate)
    weizPVP_CrosshairFrame:SetPoint("CENTER")
    --> Alpha
    if not weizPVP_CrosshairFrame:IsShown() then
        ShowCrosshair()
        NS.Crosshair.SetAlpha()
        ShowCrosshair()
    end
    --> Animations
    weizPVP_CrosshairFrame:StopAnimating()
    weizPVP_CrosshairFrame.TargetFX:Show()
    weizPVP_CrosshairFrame.TargetFX.Splash:Play()
    --> KOS Check
    CheckKOS()
    --> APPLY COLORS
    if UnitIsConnected("target") == true then
        SetCrosshairColors()
    else
        SetCrosshairColors(DISABLED_FONT_COLOR:GetRGB())
    end
end

--> Refresh Name Text
local function RefreshNameText()
    if NS.Options.Crosshair.NameEnabled then
        if strlen(targetPlayerName) > strlen(gsub(targetPlayerName, "-(.*)", "")) then
            --> From another server
            weizPVP_CrosshairFrame.NameText:SetText(targetClassColor:WrapTextInColorCode(gsub(targetPlayerName, "-(.*)", "")) .. "|cFFFF00CC*|r")
        else
            --> From same server
            weizPVP_CrosshairFrame.NameText:SetText(targetClassColor:WrapTextInColorCode(gsub(targetPlayerName, "-(.*)", "")))
        end
        weizPVP_CrosshairFrame.NameText:Show()
    else
        weizPVP_CrosshairFrame.NameText:Hide()
    end
end

--> Refresh Guild Text
local function RefreshGuildText()
    if NS.Options.Crosshair.GuildEnabled then
        if select(1, GetGuildInfo("target")) then
            weizPVP_CrosshairFrame.GuildText:SetText("|cffcccccc" .. (select(1, GetGuildInfo("target")) or "") .. "|r")
            weizPVP_CrosshairFrame.GuildGradient:Show()
            weizPVP_CrosshairFrame.GuildTextBG:Show()
            weizPVP_CrosshairFrame.GuildText:Show()
        else
            weizPVP_CrosshairFrame.GuildGradient:Hide()
            weizPVP_CrosshairFrame.GuildTextBG:Hide()
            weizPVP_CrosshairFrame.GuildText:Hide()
        end
    else
        weizPVP_CrosshairFrame.GuildGradient:Hide()
        weizPVP_CrosshairFrame.GuildText:Hide()
        weizPVP_CrosshairFrame.GuildTextBG:Hide()
    end
end

--> VALID UNIT TARGETED
local function ValidUnitTargeted()
    if not NS.IsUnitValidForTracking("target") then
        targetNamePlateFrame = nil
        HideCrosshair()
        return
    end
    --> Check for nameplate
    if C_NamePlate.GetNamePlateForUnit("target") then
        targetNamePlateFrame = C_NamePlate.GetNamePlateForUnit("target"):GetDebugName() or nil
    else
        targetNamePlateFrame = nil
        HideCrosshair()
        return
    end
    if targetNamePlateFrame then
        RefreshNameText()
        RefreshGuildText()
        targetPlayerName = NS.GetUnitName("target")
        targetClass = select(2, UnitClass("target"))
        targetClassColor = RAID_CLASS_COLORS[targetClass]
        ShowCrosshair()
        SetupCrosshairOnNameplate(C_NamePlate.GetNamePlateForUnit("target"))
    else
        targetNamePlateFrame = nil
        HideCrosshair()
        return
    end
end

--> INVALID UNIT TARGETED
local function InvalidUnitTargeted()
    NS.Crosshair.Reset()
end

--|> EVENTS
-------------------------------------------------------------------------------
-->  NAMEPLATE ADDED
function Crosshair.NameplateAdded(unit)
    if UnitIsUnit("target", unit) then -- unit == "target" ?
        if not NS.IsUnitValidForTracking("target") then
            targetNamePlateFrame = nil
            HideCrosshair()
            return
        end
        --> Get player info
        targetPlayerName = NS.GetUnitName("target")
        targetClass = select(2, UnitClass("target"))
        targetClassColor = RAID_CLASS_COLORS[targetClass]
        --> Refresh text widgets
        RefreshNameText()
        RefreshGuildText()
        ShowCrosshair()
        SetupCrosshairOnNameplate(C_NamePlate.GetNamePlateForUnit("target"))
        Crosshair.NewTarget()
    end
end

--> NAMEPLATE REMOVED
function Crosshair.NameplateRemoved(unit)
    if UnitIsUnit("target", unit) then --> Confirm the target nameplate was removed
        Crosshair.NewTarget()
    end
end

--> NEW TARGET
function Crosshair.NewTarget()
    if NS.IsUnitValidForTracking("target") then
        ValidUnitTargeted()
    else
        InvalidUnitTargeted()
    end
end

--|> FUNCTIONS: SETTINGS + CONFIG
--> SET ALPHA
function NS.Crosshair.SetAlpha()
    weizPVP_CrosshairFrame:SetAlpha(NS.Options.Crosshair.Alpha)
    weizPVP_CrosshairFrame.TopLine:SetAlpha(Clamp(NS.Options.Crosshair.Alpha, 0, 0.6))
    weizPVP_CrosshairFrame.BottomLine:SetAlpha(Clamp(NS.Options.Crosshair.Alpha, 0, 0.6))
    weizPVP_CrosshairFrame.LeftLine:SetAlpha(Clamp(NS.Options.Crosshair.Alpha, 0, 0.6))
    weizPVP_CrosshairFrame.RightLine:SetAlpha(Clamp(NS.Options.Crosshair.Alpha, 0, 0.6))
end

--> SET LINE THICKNESS
function NS.Crosshair.SetLineThickness()
    if not XEN._display.UiMultiplier then
        return
    end
    weizPVP_CrosshairFrame.TopLine:SetIgnoreParentScale(true)
    weizPVP_CrosshairFrame.BottomLine:SetIgnoreParentScale(true)
    weizPVP_CrosshairFrame.LeftLine:SetIgnoreParentScale(true)
    weizPVP_CrosshairFrame.RightLine:SetIgnoreParentScale(true)
    weizPVP_CrosshairFrame.TopLine:SetWidth(NS.Options.Crosshair.LineThickness * XEN._display.UiMultiplier)
    weizPVP_CrosshairFrame.BottomLine:SetWidth(NS.Options.Crosshair.LineThickness * XEN._display.UiMultiplier)
    weizPVP_CrosshairFrame.LeftLine:SetHeight(NS.Options.Crosshair.LineThickness * XEN._display.UiMultiplier)
    weizPVP_CrosshairFrame.RightLine:SetHeight(NS.Options.Crosshair.LineThickness * XEN._display.UiMultiplier)
end

--> SET SCALE
function NS.Crosshair.SetScale()
    weizPVP_CrosshairFrame:SetScale(NS.Options.Crosshair.Scale)
end

--> RESET
function NS.Crosshair.Reset()
    HideCrosshair()
    targetNamePlateFrame = nil
    targetPlayerName = nil
    targetClassColor = nil
    targetClass = nil
end
--> ENABLE
function NS.Crosshair.Enable()
    if not NS.Options.Crosshair.Enabled then
        return
    end
    NS.Crosshair.Reset()
    --> Setup Core
    NS.Crosshair.SetLineThickness()
    NS.Crosshair.SetScale()
    NS.Crosshair.SetAlpha()
    ConfigureRange()
    --> Net-o-Matic
    weizPVP_CrosshairFrame.NetOMatic:Show()
    --> Refresh crosshairs
    Crosshair.NewTarget()
    XEN.RescaleFrameAndChildren(weizPVP_CrosshairFrame)
end
--> DISABLE
function NS.Crosshair.Disable()
    --> Clear nameplate and fade out
    targetNamePlateFrame = nil
    HideCrosshair()
end
--> TOGGLE
function NS.ToggleCrosshairs()
    if NS.Options.Crosshair.Enabled == false then
        NS.Options.Crosshair.Enabled = true
        NS.Crosshair.Enable()
        NS.PrintAddonMessage("Crosshairs are |cff37ff37ENABLED|r.")
    else
        NS.Options.Crosshair.Enabled = false
        NS.Crosshair.Disable()
        NS.PrintAddonMessage("Crosshairs are |cffff3838DISABLED|r.")
    end
end

--> OnLoad
function NS.Crosshair.OnLoad()
    HideCrosshair()
end

--> OnShow
function weizPVP_CrosshairFrame.OnShow()
    timer_ActiveTarget = C_Timer.NewTicker(0.3, TargetRangeCheck)
end

--> OnHide
function weizPVP_CrosshairFrame.OnHide()
    if timer_ActiveTarget then
        timer_ActiveTarget:Cancel()
    end
end
