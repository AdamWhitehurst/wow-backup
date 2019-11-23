-------------------------------------------------------------------------------
--|> ALERTS
--: Alerts and Notifications of all kind
-------------------------------------------------------------------------------
--|> UPVALUE GLOBALS
-------------------------------------------------------------------------------
local weizPVP = weizPVP
local PlaySoundFile = PlaySoundFile
local C_Timer_After = C_Timer.After
local UIParent = UIParent
------------------------------------------------------------------------------
--|> LIBS
-------------------------------------------------------------------------------
local SM = LibStub:GetLibrary("LibSharedMedia-3.0")

-------------------------------------------------------------------------------
--|> BUILD FRAME
-------------------------------------------------------------------------------
function weizPVP:CreateStealthAlertFrame()
    --> Get a position 1/3rd from top of screen
    local topOffset = UIParent:GetTop() / 3

    --> Create Alert Frame
    self.StealthAlertFrame = CreateFrame("Frame", "weizPVP.StealthAlertFrame", UIParent)
    local f = self.StealthAlertFrame
    f:SetFrameStrata("HIGH")
    f:SetPoint("TOP", UIParent, "CENTER", 0, topOffset)
    f:SetHeight(90)
    f:SetWidth(160)
    f:SetBackdrop(
        {
            bgFile = SM:Fetch("background", "weizPVP: #FFFFFF"),
            tile = false,
            edgeSize = 0
        }
    )
    f:SetBackdropColor(0, 0, 0, 0.6)
    f:SetFrameLevel(2)
    f:Hide()

    --> Center Ring
    -------------------------------------------------------
    f.RightFade = f:CreateTexture(nil, "ARTWORK")
    f.RightFade:SetWidth(60)
    f.RightFade:SetPoint("TOPLEFT", f, "TOPRIGHT")
    f.RightFade:SetPoint("BOTTOMLEFT", f, "BOTTOMRIGHT")
    f.RightFade:SetColorTexture(0, 0, 0, 1)
    f.RightFade:SetGradientAlpha("HORIZONTAL", 0, 0, 0, 0.6, 0, 0, 0, 0)
    f.LeftFade = f:CreateTexture(nil, "ARTWORK")
    f.LeftFade:SetWidth(60)
    f.LeftFade:SetPoint("TOPRIGHT", f, "TOPLEFT")
    f.LeftFade:SetPoint("BOTTOMRIGHT", f, "BOTTOMLEFT")
    f.LeftFade:SetColorTexture(0, 0, 0, 1)
    f.LeftFade:SetGradientAlpha("HORIZONTAL", 0, 0, 0, 0, 0, 0, 0, 0.6)

    --> StealthAlertFrame.EventText
    -----------------------------------------------------------
    f.DivText = f:CreateFontString(nil, "HIGH", "GameFontNormal")
    f.DivText:SetPoint("CENTER", f, "CENTER")
    f.DivText:SetFont(SM:Fetch("font", "Roboto Condensed Bold"), 20, "OUTLINE")
    f.DivText:SetJustifyH("CENTER")
    f.DivText:SetTextColor(1, 1, 1, 1)
    f.DivText:SetText(" : ")

    --> StealthAlertFrame.EventText
    -----------------------------------------------------------
    f.EventText = f:CreateFontString(nil, "HIGH", "GameFontNormal")
    f.EventText:SetPoint("LEFT", f, "LEFT", 12, 0)
    f.EventText:SetFont(SM:Fetch("font", "Roboto Condensed BoldItalic"), 20, "OUTLINE")
    f.EventText:SetJustifyH("LEFT")
    f.EventText:SetTextColor(1, 0.3, 0.9, 1)
    f.EventText:SetText("STEALTH DETECTED")

    --> StealthAlertFrame.PlayerNameText
    -----------------------------------------------------------
    f.PlayerText = f:CreateFontString(nil, "HIGH", "GameFontNormal")
    f.PlayerText:SetPoint("LEFT", f.DivText, "RIGHT")
    f.PlayerText:SetFont(SM:Fetch("font", "Roboto Condensed Bold"), 20, "OUTLINE")
    f.PlayerText:SetJustifyH("LEFT")
    f.PlayerText:SetTextColor(1, 1, 1, 1)
    f.PlayerText:SetText("PLAYERNAME")

    f.DivText:ClearAllPoints()
    f.DivText:SetPoint("LEFT", f.EventText, "RIGHT")
    f.PlayerText:SetPoint("LEFT", f.DivText, "RIGHT")

    --> Set Background to resize based on text boundries
    local frameHeight = f.EventText:GetTop() - f.PlayerText:GetBottom() + 14
    weizPVP.StealthAlertFrame:SetHeight(frameHeight)

    --> Animation
    f.anim = weizPVP.StealthAlertFrame:CreateAnimationGroup()
    f.anim:SetScript(
        "OnFinished",
        function()
            f:Hide()
        end
    )
    --> StealthAlertFrame: Animation Groups
    -----------------------------------------------------------
    --> Move down below playing animation; left in becase we may use it later
    local ag0a = weizPVP.StealthAlertFrame.anim:CreateAnimation("Alpha")
    ag0a:SetDuration(0)
    ag0a:SetFromAlpha(0)
    ag0a:SetToAlpha(0)
    ag0a:SetOrder(1)

    local ag0t = weizPVP.StealthAlertFrame.anim:CreateAnimation("Translation")
    ag0t:SetOffset(0, -100)
    ag0t:SetDuration(0)
    ag0t:SetOrder(1)

    local ag1 = weizPVP.StealthAlertFrame.anim:CreateAnimation("Alpha")
    ag1:SetDuration(0.2)
    ag1:SetFromAlpha(0)
    ag1:SetToAlpha(1)
    ag1:SetEndDelay(2.5)
    ag1:SetOrder(2)

    local ag2t = weizPVP.StealthAlertFrame.anim:CreateAnimation("Translation")
    ag2t:SetOffset(0, 100)
    ag2t:SetDuration(0.2)
    ag2t:SetOrder(2)
    ag2t:SetEndDelay(2.5)

    local ag3a = weizPVP.StealthAlertFrame.anim:CreateAnimation("Alpha")
    ag3a:SetDuration(0.6)
    ag3a:SetFromAlpha(1)
    ag3a:SetToAlpha(0)
    ag3a:SetOrder(3)
    ag3a:SetSmoothing("OUT")

    local ag3 = weizPVP.StealthAlertFrame.anim:CreateAnimation("Translation")
    ag3:SetOffset(0, 200)
    ag3:SetDuration(0.6)
    ag3:SetOrder(3)
    ag3:SetSmoothing("OUT")
end

--> Stealth Alert
-----------------------------------------------------------
local playSound = true
local function EnableSound()
    playSound = true
end

--> Show Alert
function weizPVP:ShowStealthAlert(EventText, PlayerNameText, Icon)
    if weizPVP.Options.StealthAlert.Enabled == true then
        if weizPVP.StealthAlertFrame.anim:IsPlaying() then
            weizPVP.StealthAlertFrame.anim:Stop()
        end

        weizPVP.StealthAlertFrame.EventText:SetText("|T" .. Icon .. ":0|t " .. EventText .. " Detected")
        weizPVP.StealthAlertFrame.PlayerText:SetText(PlayerNameText)

        --> Set frame width based on current length of text
        local textWidth = weizPVP.StealthAlertFrame.PlayerText:GetRight() - weizPVP.StealthAlertFrame.EventText:GetLeft() + weizPVP.StealthAlertFrame.DivText:GetWidth()

        weizPVP.StealthAlertFrame:SetWidth(textWidth)
        local topOffset = UIParent:GetTop() / 3
        weizPVP.StealthAlertFrame:SetPoint("TOP", UIParent, "CENTER", 0, topOffset)

        --> Show Elements
        weizPVP.StealthAlertFrame.EventText:Show()
        weizPVP.StealthAlertFrame.PlayerText:Show()
        weizPVP.StealthAlertFrame:SetAlpha(0)
        weizPVP.StealthAlertFrame:Show()
        weizPVP.StealthAlertFrame.anim:Play()
        if Icon then
            weizPVP:SetStatusBarMessage(EventText .. " : " .. PlayerNameText, true, 4)
        else
            weizPVP:SetStatusBarMessage(EventText .. " : " .. PlayerNameText, true, 4)
        end
        --> play stealth alert sound
        if playSound and weizPVP.Options.StealthAlert.EnableSound == true then
            PlaySoundFile(SM:Fetch("sound", weizPVP.Options.StealthAlert.SoundFile))
            playSound = false
            C_Timer_After(3, EnableSound)
        end
    end
end
