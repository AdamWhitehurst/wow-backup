-------------------------------------------------------------------------------
--|> CROSSHAIR
--: Places a crosshair on a nameplate.
--: Filtered for player targets that are hostile player with support for icons, text etc attachments
-------------------------------------------------------------------------------
--|> INIT
-------------------------------------------------------------------------------
local weizPVP = weizPVP
local Crosshair = weizPVP:NewModule("Crosshair", "AceTimer-3.0", "AceEvent-3.0")
weizPVP.Crosshair = Crosshair

-------------------------------------------------------------------------------
--|> UPVALUE GLOBALS
-------------------------------------------------------------------------------
local IsItemInRange = IsItemInRange
local C_NamePlate = C_NamePlate
local UnitIsPlayer = UnitIsPlayer
local UnitIsEnemy = UnitIsEnemy
local UnitSelectionColor = UnitSelectionColor
local UnitClass = UnitClass
local RAID_CLASS_COLORS = RAID_CLASS_COLORS
local IsFlying = IsFlying
local IsUsableItem = IsUsableItem
local UnitIsUnit = UnitIsUnit
local CreateFrame = CreateFrame
local AuraUtil = AuraUtil
local UIParent = UIParent
local UIFrameFadeOut = UIFrameFadeOut
local UIFrameFadeIn = UIFrameFadeIn
local GetScreenWidth = GetScreenWidth
local GetScreenHeight = GetScreenHeight
local GetUnitName = GetUnitName
local select = select
local gsub = gsub
local GetGuildInfo = GetGuildInfo
local strlen = strlen
local Clamp = Clamp

-------------------------------------------------------------------------------
--|> CONFIG
-------------------------------------------------------------------------------
local lineOffset = 16

-------------------------------------------------------------------------------
--|> LOCALS
-------------------------------------------------------------------------------
local TargetNameplate = {}
weizPVP.Display.EffectiveScale = UIParent:GetEffectiveScale()
local EffectiveScale = weizPVP.Display.EffectiveScale
Crosshair.FrameEffectiveScale = UIParent:GetEffectiveScale()

-------------------------------------------------------------------------------
--|> CREATE CORE FRAME
-------------------------------------------------------------------------------
--> CROSSHAIR FRAME
-------------------------------------------------------
Crosshair.Frame = CreateFrame("Frame", "weizPVP.Crosshair.Frame", UIParent)
Crosshair.Frame:SetFrameStrata("BACKGROUND")
Crosshair.Frame:SetPoint("CENTER")
Crosshair.Frame:SetFrameLevel(0)
Crosshair.Frame:SetSize(64, 64)
Crosshair.Frame:Hide()
Crosshair.Rings = {}
Crosshair.Lines = {}

--> Core Texture
Crosshair.Rings.Core = Crosshair.Frame:CreateTexture(nil, "ARTWORK")
local RingCore = Crosshair.Rings.Core
Crosshair.Rings.Add = Crosshair.Frame:CreateTexture(nil, "OVERLAY")
local RingCoreAdd = Crosshair.Rings.Add
Crosshair.Rings.Shadow = Crosshair.Frame:CreateTexture(nil, "BACKGROUND")
local RingInnerShadow = Crosshair.Rings.Shadow

local FourArrows
local FourArrowsAniGTarget1
local ArrowScaleIN
local FourArrowsAniGTarget2
local ArrowAlphaIN
local iconNetOMatic
local lineLength = GetScreenWidth()
local lineHeight = GetScreenHeight()
local topLine
local bottomLine
local leftLine
local rightLine
local NameText
local GuildText
local FourArrowsAniGRotation
local FourArrowsAniGRotationGroup
local timerRetryNameplate
local timerCheckTargetRange

--> Bounty FX
local ThinCircle1 = weizPVP.Crosshair.Frame:CreateTexture(nil, "BACKGROUND")
local ThinCircle2 = weizPVP.Crosshair.Frame:CreateTexture(nil, "BACKGROUND")
local BountyFx1 = weizPVP.Crosshair.Frame:CreateTexture(nil, "BACKGROUND")
local BountyFx2 = weizPVP.Crosshair.Frame:CreateTexture(nil, "BACKGROUND")
local ThinCircle1AniGroup
local ThinCircle2AniGroup
local BountyFx1AniGroup
local BountyFx2AniGroup
local function ShowBountyFX()
    BountyFx1:Show()
    BountyFx2:Show()
    BountyFx1AniGroup:Play()
    BountyFx2AniGroup:Play()
end
local function HideBountyFX()
    BountyFx1:Hide()
    BountyFx2:Hide()
    BountyFx1AniGroup:Stop()
    BountyFx2AniGroup:Stop()
end

--> TARGET RANGE CHECK
-------------------------------------------------------
function Crosshair.TargetRangeCheck()
    if TargetNameplate then
        --> Check if Net-o-Matic can be used on target
        if IsFlying("target") and IsItemInRange("Net-o-Matic 5000", "target") and IsUsableItem("Net-o-Matic 5000") then
            iconNetOMatic:SetAlpha(1)
        else
            iconNetOMatic:SetAlpha(0)
        end
    else
        Crosshair:CancelTimer(timerCheckTargetRange)
    end
end

--> ENABLE CROSSHAIR
-------------------------------------------------------
function weizPVP.EnableCrosshair()
    if weizPVP.Options.Crosshair.Enabled == false then
        return
    end
    --> Register Events
    Crosshair.Frame:RegisterEvent("PLAYER_TARGET_CHANGED")
    Crosshair.Frame:RegisterEvent("NAME_PLATE_UNIT_REMOVED")
    Crosshair.Frame:RegisterEvent("NAME_PLATE_UNIT_ADDED")
    Crosshair.Frame:RegisterEvent("PLAYER_ENTERING_WORLD")
    Crosshair.Frame:SetAlpha(0)
    Crosshair.Frame:Show()
    --> Check current target
    Crosshair.Frame:PLAYER_TARGET_CHANGED()
    weizPVP.Display.EffectiveScale = UIParent:GetEffectiveScale()
    Crosshair.FrameEffectiveScale = weizPVP.Display.EffectiveScale
    EffectiveScale = weizPVP.Display.EffectiveScale
    lineLength = GetScreenWidth()
    lineHeight = GetScreenHeight()
end

-------------------------------------------------------------------------------
--|> UI FUNCTIONS
-------------------------------------------------------------------------------
--> Set Color of lines and circle
-------------------------------------------------------
local function SetColor(r, g, b)
    --> TEXTURES
    NameText:SetTextColor(weizPVP.AdjustRGBTint(r, g, b, 1))
    NameText.BG:SetTextColor(weizPVP.AdjustRGBTint(r, g, b, -0.6))
    --> RINGS
    RingCore:SetVertexColor(weizPVP.AdjustRGBTint(r, g, b, -0.2))
    RingCoreAdd:SetVertexColor(weizPVP.AdjustRGBTint(r, g, b, 0.1))
    --> Lines
    topLine:SetVertexColor(weizPVP.AdjustRGBTint(r, g, b, -0.2))
    bottomLine:SetVertexColor(weizPVP.AdjustRGBTint(r, g, b, -0.2))
    leftLine:SetVertexColor(weizPVP.AdjustRGBTint(r, g, b, -0.2))
    rightLine:SetVertexColor(weizPVP.AdjustRGBTint(r, g, b, -0.2))
    weizPVP.CrosshairsSetAlpha(weizPVP.Options.Crosshair.Alpha)
    ThinCircle1:SetVertexColor(r, g, b)
    ThinCircle2:SetVertexColor(r, g, b)
end

--> DISABLE CROSSHAIR
-------------------------------------------------------
function weizPVP.DisableCrosshair()
    --> Clear plate and fade out
    TargetNameplate = nil
    UIFrameFadeOut(Crosshair.Frame, 0.1, Crosshair.Frame:GetAlpha(), 0)
    Crosshair.Frame:Hide()
    --> Unregister Events
    Crosshair.Frame:UnregisterEvent("PLAYER_TARGET_CHANGED")
    Crosshair.Frame:UnregisterEvent("NAME_PLATE_UNIT_REMOVED")
    Crosshair.Frame:UnregisterEvent("NAME_PLATE_UNIT_ADDED")
    Crosshair.Frame:UnregisterEvent("PLAYER_ENTERING_WORLD")
end

--> Check for Bounty
-------------------------------------------------------
local function CheckForBounty()
    --> Check for Bounty
    local bounty = AuraUtil.FindAuraByName("Bounty Hunted", "target", "HARMFUL")
    if bounty == "Bounty Hunted" or weizPVP.Options.DEBUG == true then
        ShowBountyFX()
    else
        HideBountyFX()
    end
end

--> Get Nameplate
-------------------------------------------------------
local class
local classColor
local r, g, b

local function GetNameplate(plate)
    --> Set on same level as nameplate
    Crosshair.Frame:SetParent(plate)
    Crosshair.Frame:ClearAllPoints()
    Crosshair.Frame:SetPoint("CENTER", 0, 0)
    if Crosshair.Frame:GetAlpha() == 0 then
        UIFrameFadeIn(Crosshair.Frame, 0.3, 0, weizPVP.Options.Crosshair.Alpha)
    else
        Crosshair.Frame:SetAlpha(weizPVP.Options.Crosshair.Alpha)
    end
    if FourArrowsAniGTarget1:IsPlaying() then
        FourArrowsAniGTarget1:Stop()
    end
    if FourArrowsAniGTarget2:IsPlaying() then
        FourArrowsAniGTarget2:Stop()
    end
    if ThinCircle1AniGroup:IsPlaying() then
        ThinCircle1AniGroup:Stop()
        ThinCircle1:Hide()
    end
    if ThinCircle2AniGroup:IsPlaying() then
        ThinCircle2AniGroup:Stop()
        ThinCircle2:Hide()
    end
    FourArrowsAniGTarget1:Play()
    FourArrowsAniGTarget2:Play()
    if weizPVP.Options.Crosshair.FX.NewTarget1 then
        ThinCircle1:Show()
        ThinCircle2:Show()
        ThinCircle1AniGroup:Play()
        ThinCircle2AniGroup:Play()
    end

    --> Bounty Check
    if weizPVP.Options.Crosshair.ShowBountyOverlay == true then
        CheckForBounty()
    else
        HideBountyFX()
    end

    --> Set Class Colors
    r, g, b = UnitSelectionColor("target")
    if UnitIsPlayer("target") then
        class = select(2, UnitClass("target"))
        classColor = RAID_CLASS_COLORS[class]
        if classColor then
            r, g, b = classColor.r, classColor.g, classColor.b
        end
    end
    --> APPLY COLORS
    SetColor(r, g, b)
end

local nameplate
-------------------------------------------------------------------------------
--|> EVENTS
-------------------------------------------------------------------------------
--> FUNCTION: Nameplate Retry
--: Re-checks to see if the target has a nameplate we can attach to...
--: Sometimes there seems to be a delay between getting a target, and registering the nameplate
local NameplateGetAttempts = 0
local NameplateActive = false
local lockPos = false
local retrying = false

function Crosshair.NameplateRetry()
    if NameplateActive == true then
        Crosshair:CancelTimer(timerRetryNameplate)
        return
    end
    nameplate = C_NamePlate.GetNamePlateForUnit("target")
    if nameplate then
        Crosshair.Frame:PLAYER_TARGET_CHANGED()
        lockPos = false
        NameplateActive = true
        Crosshair:CancelTimer(timerRetryNameplate)
    else
        NameplateActive = false
        --> Check for valid nameplate existing
        if NameplateGetAttempts < 10 then
            NameplateGetAttempts = NameplateGetAttempts + 1
        else
            TargetNameplate = nil
            Crosshair:CancelTimer(timerRetryNameplate)
        end
    end
end

-------------------------------------------------------
--=> PLAYER_TARGET_CHANGED
-------------------------------------------------------
function Crosshair.Frame:PLAYER_TARGET_CHANGED()
    local targetValid = true
    --> Check for a player
    if not UnitIsPlayer("target") then
        targetValid = false
    end
    --> Check for enemy
    if not (UnitIsEnemy("player", "target") or weizPVP.Options.DEBUG == true) then
        targetValid = false
    end
    TargetNameplate = nil
    --> Activate
    if targetValid then
        nameplate = C_NamePlate.GetNamePlateForUnit("target")
        if not nameplate then
            NameplateActive = false
            if lockPos == false then
                NameplateGetAttempts = 0
                if not retrying then
                    Crosshair:CancelTimer(timerRetryNameplate)
                    timerRetryNameplate = Crosshair:ScheduleRepeatingTimer("NameplateRetry", 0.1)
                    HideBountyFX()
                end
                lockPos = true
                retrying = true
                UIFrameFadeOut(Crosshair.Frame, 0.1, Crosshair.Frame:GetAlpha(), 0)
                TargetNameplate = nil
            end
            return
        end
        --> New nameplate (target may  not be new)
        Crosshair:CancelTimer(timerCheckTargetRange)
        timerCheckTargetRange = Crosshair:ScheduleRepeatingTimer("TargetRangeCheck", 1)

        -- if Crosshair.Frame:GetAlpha() < weizPVP.Options.Crosshair.Alpha then
            UIFrameFadeIn(Crosshair.Frame, 0.2, 0, weizPVP.Options.Crosshair.Alpha)
        -- end
        lockPos = false
        TargetNameplate = nameplate
        GetNameplate(nameplate)

        --> Adds Nameplate elements if enabled
        if weizPVP.Options.Crosshair.NameEnabled then
            NameText:Show()
            NameText:SetAlpha(1)
            NameText.BG:SetAlpha(1)
            --> NAME TEXT
            local name = GetUnitName("target", true)
            local charname = gsub(name, "-(.*)", "")
            if strlen(name) > strlen(charname) then
                NameText:SetText(charname .. "|cFFFF00CC*|r")
            else
                NameText:SetText(name)
            end
            NameText.BG:SetText(NameText:GetText())
        else
            NameText:SetAlpha(0)
            NameText.BG:SetAlpha(0)
        end

        if weizPVP.Options.Crosshair.GuildEnabled then
            GuildText:SetAlpha(1)
            GuildText:Show()
            GuildText.BG:SetAlpha(1)
            GuildText:SetText(GetGuildInfo("target") or "")
            GuildText.BG:SetText(GuildText:GetText())
        else
            GuildText:SetAlpha(0)
            GuildText.BG:SetAlpha(0)
        end
        Crosshair.FrameEffectiveScale = EffectiveScale
    else --> Fade out if not an enemy or no target
        if Crosshair.Frame:GetAlpha() ~= 0 then
            UIFrameFadeOut(Crosshair.Frame, 0.1, weizPVP.Options.Crosshair.Alpha, 0)
        end
        TargetNameplate = nil
    end
end

-------------------------------------------------------
--=> EVENT: PLAYER_ENTERING_WORLD
-------------------------------------------------------
function Crosshair.Frame.PLAYER_ENTERING_WORLD()
    Crosshair.Frame:PLAYER_TARGET_CHANGED()
end

--> NAME_PLATE_UNIT_ADDED
-------------------------------------------------------
local nameplate_added
function Crosshair.Frame:NAME_PLATE_UNIT_ADDED(unit)
    if UnitIsUnit("target", unit) then
        nameplate_added = C_NamePlate.GetNamePlateForUnit("target")
        if nameplate_added and UnitIsPlayer("target") and (UnitIsEnemy("player", "target") or weizPVP.Options.DEBUG) then
            Crosshair.Frame:Show()
            UIFrameFadeIn(Crosshair.Frame, 0.1, 0, weizPVP.Options.Crosshair.Alpha)
            Crosshair.Frame:PLAYER_TARGET_CHANGED()
            Crosshair.Frame:SetFrameLevel(0)
        end
    end
end

--> NAME_PLATE_UNIT_REMOVED
-------------------------------------------------------
function Crosshair.Frame:NAME_PLATE_UNIT_REMOVED(unit)
    if UnitIsUnit("target", unit) then
        TargetNameplate = nil
        if Crosshair.Frame:GetAlpha() > weizPVP.Options.Crosshair.Alpha then
            UIFrameFadeOut(Crosshair.Frame, 0.1, weizPVP.Options.Crosshair.Alpha, 0)
            Crosshair.Frame:Hide()
        end
    end
end

--> OnEvent
-------------------------------------------------------
Crosshair.Frame:SetScript(
    "OnEvent",
    function(self, event, ...)
        return self[event] and self[event](self, ...)
    end
)

--> CROSSHAIR ALPHA
-------------------------------------------------------
function weizPVP.CrosshairsSetAlpha()
    FourArrows:SetAlpha(weizPVP.Options.Crosshair.Alpha)
    Crosshair.Frame:SetAlpha(weizPVP.Options.Crosshair.Alpha)
    RingCore:SetAlpha(Clamp(weizPVP.Options.Crosshair.Alpha, 0, 0.3))
    RingCoreAdd:SetAlpha(Clamp(weizPVP.Options.Crosshair.Alpha, 0, 0.8))
    RingInnerShadow:SetAlpha(Clamp(weizPVP.Options.Crosshair.Alpha, 0, 0.5))
    topLine:SetAlpha(Clamp(weizPVP.Options.Crosshair.Alpha, 0, 0.6))
    bottomLine:SetAlpha(Clamp(weizPVP.Options.Crosshair.Alpha, 0, 0.6))
    leftLine:SetAlpha(Clamp(weizPVP.Options.Crosshair.Alpha, 0, 0.6))
    rightLine:SetAlpha(Clamp(weizPVP.Options.Crosshair.Alpha, 0, 0.6))
end

--> TOGGLE CROSSHAIRS
-------------------------------------------------------
function weizPVP.ToggleCrosshairs()
    if weizPVP.Options.Crosshair.Enabled == false then
        weizPVP.Options.Crosshair.Enabled = true
        weizPVP.EnableCrosshair()
        weizPVP.PrintAddonMessage("Crosshairs are |cff37ff37ENABLED|r.")
    else
        weizPVP.Options.Crosshair.Enabled = false
        weizPVP.DisableCrosshair()
        weizPVP.PrintAddonMessage("Crosshairs are |cffff3838DISABLED|r.")
    end
end

--> CHANGE LINE THICKNESS
-------------------------------------------------------
function weizPVP.ChangeLineThickness()
    topLine:SetThickness(weizPVP.Options.Crosshair.LineThickness)
    bottomLine:SetThickness(weizPVP.Options.Crosshair.LineThickness)
    leftLine:SetThickness(weizPVP.Options.Crosshair.LineThickness)
    rightLine:SetThickness(weizPVP.Options.Crosshair.LineThickness)
end

function weizPVP.CreateCrosshair()
    -------------------------------------------------------------------------------
    --|> CREATE TEXTURES
    -------------------------------------------------------------------------------
    --> Center Ring
    -------------------------------------------------------
    --> Core
    RingCore:SetTexture([[interface/addons/weizPVP/Plugins/Crosshair/Media/core1.tga]])
    RingCore:SetPoint("CENTER", Crosshair.Frame, "CENTER")
    RingCore:SetWidth(256)
    RingCore:SetHeight(256)
    RingCore:SetScale(EffectiveScale / 2)
    RingCore:SetAlpha(0.5)
    RingCoreAdd:SetTexture([[interface/addons/weizPVP/Plugins/Crosshair/Media/core1.tga]])
    RingCoreAdd:SetPoint("CENTER", RingCore, "CENTER")
    RingCoreAdd:SetSize(RingCore:GetSize())
    RingCoreAdd:SetDrawLayer("ARTWORK", 6)
    RingCoreAdd:SetScale(RingCore:GetScale())
    RingCoreAdd:SetBlendMode("ADD")
    RingCoreAdd:SetAlpha(0.6)

    --> Background
    -------------------------------------------------------
    RingInnerShadow:SetTexture([[interface/addons/weizPVP/Plugins/Crosshair/Media/core1_shadow.tga]])
    RingInnerShadow:SetPoint("CENTER", Crosshair.Frame, "CENTER")
    RingInnerShadow:SetWidth(256)
    RingInnerShadow:SetHeight(256)
    RingInnerShadow:SetVertexColor(0, 0, 0, 1)
    RingInnerShadow:SetBlendMode("BLEND")
    RingInnerShadow:SetScale(EffectiveScale / 2)
    RingInnerShadow:SetDrawLayer("ARTWORK", -1)

    ---------------------------------------------------------------------
    --|>|>  Four Arrows  <|<|--
    -------------------------------------------------------------------------------
    --> Four Arrows Texture
    -------------------------------------------------------
    FourArrows = FourArrows or Crosshair.Frame:CreateTexture("weizPVP.Crosshair.Frame.FourArrows", "LOW")
    FourArrows:SetTexture([[interface/addons/weizPVP/Plugins/Crosshair/Media/4Arrows.tga]])
    FourArrows:SetPoint("CENTER", Crosshair.Frame, "CENTER")
    FourArrows:SetWidth(96)
    FourArrows:SetHeight(96)
    FourArrows:SetDrawLayer("ARTWORK", 1)
    FourArrows:SetVertexColor(1, 0, 0, 1)
    FourArrows:SetScale(1)
    FourArrows:SetAlpha(weizPVP.Options.Crosshair.Alpha)
    FourArrows:SetBlendMode("ADD")

    --> FourArrows: Transition to Target Animation
    -------------------------------------------------------
    -->> Scale In
    FourArrowsAniGTarget1 = FourArrowsAniGTarget1 or FourArrows:CreateAnimationGroup()
    ArrowScaleIN = ArrowScaleIN or FourArrowsAniGTarget1:CreateAnimation("Scale")
    ArrowScaleIN:SetDuration(0.4)
    ArrowScaleIN:SetFromScale(3, 3)
    ArrowScaleIN:SetToScale(1, 1)
    ArrowScaleIN:SetSmoothing("OUT")
    -->> Fade In
    FourArrowsAniGTarget2 = FourArrowsAniGTarget2 or FourArrows:CreateAnimationGroup()
    ArrowAlphaIN = ArrowAlphaIN or FourArrowsAniGTarget2:CreateAnimation("Alpha")
    ArrowAlphaIN:SetDuration(0.4)
    ArrowAlphaIN:SetFromAlpha(0)
    ArrowAlphaIN:SetToAlpha(weizPVP.Options.Crosshair.Alpha)

    FourArrowsAniGRotationGroup = FourArrowsAniGRotationGroup or FourArrows:CreateAnimationGroup()
    FourArrowsAniGRotation = FourArrowsAniGRotation or FourArrowsAniGRotationGroup:CreateAnimation("Rotation")
    FourArrowsAniGRotation:SetDegrees(-360)
    FourArrowsAniGRotation:SetDuration(9)
    FourArrowsAniGRotationGroup:SetLooping("REPEAT")
    if weizPVP.Options.Crosshair.RotatingArrows == true then
        FourArrowsAniGRotationGroup:Play()
    end
    weizPVP.Crosshair.FourArrows = FourArrows
    weizPVP.Crosshair.FourArrows.ag = FourArrowsAniGRotationGroup
    weizPVP.Crosshair.FourArrows.ag.r = FourArrowsAniGRotation

    -------------------------------------------------------------------------------
    --|> CREATE LINES
    -------------------------------------------------------------------------------
    --> LINE GENERATOR
    local function CreateLineTemplate(CorePointAnchor, StartLinePoint, OffsetEndX, OffsetEndY)
        local f = Crosshair.Frame:CreateLine("weizPVP.Crosshairs.leftLine", "LOW")
        f:SetTexture([[interface/addons/weizPVP/Media/Textures/white16x16.tga]])
        f:SetThickness(weizPVP.Options.Crosshair.LineThickness)
        f:SetStartPoint(CorePointAnchor, Crosshair.Frame, StartLinePoint, lineOffset, 0)
        f:SetEndPoint(CorePointAnchor, OffsetEndX, OffsetEndY)
        f:SetVertexColor(1, 1, 1)
        f:SetAlpha(0.5)
        f:SetBlendMode("ADD")
        return f
    end
    --> LINE CONFIGS
    -------------------------------------------------------
    leftLine = CreateLineTemplate("LEFT", "RIGHT", -1 * lineLength, 0)
    rightLine = CreateLineTemplate("RIGHT", "LEFT", lineLength, 0)
    topLine = CreateLineTemplate("TOP", "BOTTOM", 0, lineHeight)
    bottomLine = CreateLineTemplate("BOTTOM", "TOP", 0, -1 * lineHeight)
    weizPVP.ChangeLineThickness()

    -------------------------------------------------------------------------------
    --|> CREATE ADDITIONAL INDICATORS
    -------------------------------------------------------------------------------
    --> Net-O-Matic Icon
    ---------------------------------------------------------------------
    iconNetOMatic = Crosshair.Frame:CreateTexture(nil, "MEDIUM")
    iconNetOMatic:SetTexture([[interface/addons/weizPVP/Plugins/Crosshair/Media/netomatic.tga]])
    iconNetOMatic:SetSize(24, 24)
    iconNetOMatic:SetPoint("BOTTOMLEFT", rightLine, "TOPLEFT", 0, 12)
    iconNetOMatic:SetAlpha(0)

    ---------------------------------------------------------------------
    --> Name and Guild Text
    ---------------------------------------------------------------------
    do
        --> Target NameText
        ---------------------------------------------------------------------
        NameText = Crosshair.Frame:CreateFontString(nil, "DIALOG", nil, 1)
        NameText:SetFont([[interface/addons/weizPVP/Media/Fonts/RobotoCondensed-BoldItalic.ttf]], 16, "OUTLINE")
        NameText:SetHeight(16)
        NameText:SetPoint("BOTTOMLEFT", rightLine, "TOPLEFT", 16, 4)
        NameText:SetJustifyH("LEFT")
        NameText:SetText("")
        NameText:SetTextColor(1, 1, 1)
        NameText:SetShadowColor(0, 0, 0, 1)
        NameText:SetShadowOffset(1, -1)
        NameText:Hide()

        --> Target Name Text Background Text
        -------------------------------------------------------
        NameText.BG = Crosshair.Frame:CreateFontString(nil, "BACKGROUND", nil, 1)
        NameText.BG:SetFont([[interface/addons/weizPVP/Media/Fonts/RobotoCondensed-BoldItalic.ttf]], 16, "OUTLINE")
        NameText.BG:SetPoint("CENTER", NameText, "CENTER", 4, -2)
        NameText.BG:SetDrawLayer("BACKGROUND", 1)
        NameText.BG:SetHeight(NameText:GetHeight())
        NameText.BG:SetText(NameText:GetText())
        NameText.BG:SetJustifyH(NameText:GetJustifyH())
        NameText.BG:SetTextColor(0, 0, 0)
        NameText.BG:SetShadowColor(0, 0, 0, 1)
        NameText.BG:SetShadowOffset(1, -1)
        NameText.BG:Hide()

        --> Target: Guild Text
        ---------------------------------------------------------------------
        GuildText = Crosshair.Frame:CreateFontString(nil, "ARTWORK", nil, 1)
        GuildText:SetFont([[interface/addons/weizPVP/Media/Fonts/Accidental-Presidency-Italic.ttf]], 12, "OUTLINE")
        GuildText:SetHeight(12)
        GuildText:SetPoint("TOPLEFT", NameText, "BOTTOMLEFT", 0, -5)
        GuildText:SetJustifyH("LEFT")
        GuildText:SetTextColor(.9, .9, .9)
        GuildText:SetShadowColor(0, 0, 0, 1)
        GuildText:SetShadowOffset(1, -1)
        GuildText:Hide()

        --> Guild Text: BG
        -------------------------------------------------------
        GuildText.BG = Crosshair.Frame:CreateFontString(nil, "BACKGROUND", nil, 1)
        GuildText.BG:SetFont(
            [[interface/addons/weizPVP/Media/Fonts/Accidental-Presidency-Italic.ttf]],
            GuildText:GetHeight(),
            "NONE"
        )
        GuildText.BG:SetPoint("CENTER", GuildText, "CENTER", 1, -1)
        GuildText.BG:SetDrawLayer("BACKGROUND", 6)
        GuildText.BG:SetHeight(GuildText:GetHeight())
        GuildText.BG:SetJustifyH(GuildText:GetJustifyH())
        GuildText.BG:SetTextColor(0.1, 0.1, 0.1)
        GuildText.BG:SetShadowColor(0, 0, 0, 1)
        GuildText.BG:SetShadowOffset(1, -1)
        GuildText.BG:Hide()
    end

    Crosshair.Lines.Top = topLine
    Crosshair.Lines.Bottom = bottomLine
    Crosshair.Lines.Left = leftLine
    Crosshair.Lines.Right = rightLine

    --> CREATE FX
    -----------------------------------------------------
    ThinCircle1:SetTexture([[interface/addons/weizPVP/Plugins/Crosshair/Media/circle_outerGlow.tga]])
    ThinCircle1:SetPoint("CENTER", weizPVP.Crosshair.Frame, "CENTER")
    ThinCircle1:SetVertexColor(0.8, 0, 0)
    ThinCircle1:SetWidth(256)
    ThinCircle1:SetHeight(256)
    ThinCircle1:SetScale(EffectiveScale / 2)
    ThinCircle1:SetAlpha(1)
    ThinCircle1:SetDrawLayer("BACKGROUND", -1)
    ThinCircle1:SetBlendMode("ADD")
    ThinCircle1:Hide()
    ThinCircle1AniGroup = ThinCircle1:CreateAnimationGroup()
    ThinCircle1.a1 = ThinCircle1AniGroup:CreateAnimation("Alpha")
    ThinCircle1.a1:SetFromAlpha(0.4)
    ThinCircle1.a1:SetToAlpha(0)
    ThinCircle1.a1:SetDuration(1.4)
    -- ThinCircle1.a1:SetOrder(1)
    ThinCircle1.a1:SetSmoothing("OUT")
    ThinCircle1.s1 = ThinCircle1AniGroup:CreateAnimation("Scale")
    ThinCircle1.s1:SetFromScale(1, 1)
    ThinCircle1.s1:SetToScale(2, 2)
    ThinCircle1.s1:SetDuration(1.4)
    ThinCircle1.s1:SetSmoothing("OUT")
    -- ThinCircle1.s1:SetOrder(1)
    ThinCircle1AniGroup:SetScript(
        "OnFinished",
        function()
            ThinCircle1:Hide()
        end
    )

    --> Splash 2
    -------------------------------------------------------
    ThinCircle2:SetTexture([[interface/addons/weizPVP/Plugins/Crosshair/Media/circle_innerGlow.tga]])
    ThinCircle2:SetPoint("CENTER", weizPVP.Crosshair.Frame, "CENTER")
    ThinCircle2:SetVertexColor(1, 0, 0)
    ThinCircle2:SetWidth(256)
    ThinCircle2:SetHeight(256)
    ThinCircle2:SetScale(EffectiveScale / 2)
    ThinCircle2:SetAlpha(1)
    ThinCircle2:SetBlendMode("ADD")
    ThinCircle2:SetDrawLayer("BACKGROUND", -1)
    ThinCircle2:Hide()
    ThinCircle2AniGroup = ThinCircle2:CreateAnimationGroup()
    local RingFireBa2 = ThinCircle2AniGroup:CreateAnimation("Alpha")
    RingFireBa2:SetFromAlpha(0)
    RingFireBa2:SetToAlpha(0)
    RingFireBa2:SetDuration(0)
    RingFireBa2:SetOrder(0)
    local RingFireBa1 = ThinCircle2AniGroup:CreateAnimation("Alpha")
    RingFireBa1:SetFromAlpha(0.8)
    RingFireBa1:SetToAlpha(0)
    RingFireBa1:SetDuration(1)
    RingFireBa1:SetOrder(2)
    RingFireBa1:SetSmoothing("IN")
    local RingFireBs1 = ThinCircle2AniGroup:CreateAnimation("Scale")
    RingFireBs1:SetFromScale(1, 1)
    RingFireBs1:SetToScale(2, 2)
    RingFireBs1:SetDuration(1)
    RingFireBs1:SetOrder(2)
    RingFireBs1:SetSmoothing("IN")
    ThinCircle2AniGroup:SetScript(
        "OnFinished",
        function()
            ThinCircle2:Hide()
        end
    )

    --> BOUNTY RING FX
    -------------------------------------------------------
    BountyFx1:SetTexture([[interface/addons/weizPVP/Plugins/Crosshair/Media/ring_of_fire.tga]])
    BountyFx1:SetPoint("CENTER", weizPVP.Crosshair.Frame, "CENTER")
    BountyFx1:SetVertexColor(1, 0.7, 0.2)
    BountyFx1:SetWidth(256)
    BountyFx1:SetHeight(256)
    BountyFx1:SetScale(EffectiveScale / 2)
    BountyFx1:SetAlpha(0.8)
    BountyFx1:SetDrawLayer("BACKGROUND", -5)
    BountyFx1:SetBlendMode("ADD")
    BountyFx1:Hide()

    --> Circle Shine Animation: Rotate
    -------------------------------------------------------
    BountyFx1AniGroup = BountyFx1:CreateAnimationGroup()
    local RingFireRotation2 = BountyFx1AniGroup:CreateAnimation("Rotation")
    RingFireRotation2:SetDegrees(360)
    RingFireRotation2:SetDuration(5)
    BountyFx1AniGroup:SetLooping("REPEAT")
    BountyFx1AniGroup:Play()

    BountyFx2:SetTexture([[interface/addons/weizPVP/Plugins/Crosshair/Media/ring_of_fire.tga]])
    BountyFx2:SetPoint("CENTER", weizPVP.Crosshair.Frame, "CENTER")
    BountyFx2:SetVertexColor(1, 0.4, 0.2)
    BountyFx2:SetWidth(256)
    BountyFx2:SetHeight(256)
    BountyFx2:SetScale(EffectiveScale / 2)
    BountyFx2:SetAlpha(0.8)
    BountyFx2:SetDrawLayer("BACKGROUND", 1)
    BountyFx2:SetBlendMode("ADD")
    BountyFx2:Hide()

    --> Circle Shine Animation: Rotate
    -------------------------------------------------------
    BountyFx2AniGroup = BountyFx2:CreateAnimationGroup()
    local RingFireRotation3 = BountyFx2AniGroup:CreateAnimation("Rotation")
    RingFireRotation3:SetDegrees(-360)
    RingFireRotation3:SetDuration(7)
    BountyFx2AniGroup:SetLooping("REPEAT")
    BountyFx2AniGroup:Play()
end
