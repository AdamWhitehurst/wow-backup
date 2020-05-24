-------------------------------------------------------------------------------
--|> ALERTS
--: Alerts and Notifications of all kind
-------------------------------------------------------------------------------
local _, NS = ...
local C_Timer_After = C_Timer.After
--> LIBS
local SM = LibStub:GetLibrary("LibSharedMedia-3.0")

--> BUILD FRAME
local stealthAlertFrame
function NS.CreateStealthAlertFrame()
    -- Get a position 1/3rd from top of screen
    local topOffset = UIParent:GetTop() / 3
    -- Create Alert Frame
    stealthAlertFrame = CreateFrame("Frame", "weizPVP-StealthAlertFrame", UIParent)
    stealthAlertFrame:SetFrameStrata("HIGH")
    stealthAlertFrame:SetPoint("TOP", UIParent, "CENTER", 0, topOffset)
    stealthAlertFrame:SetHeight(90)
    stealthAlertFrame:SetWidth(160)
    stealthAlertFrame:SetBackdrop(
        {
            bgFile = SM:Fetch("background", "weizPVP: #FFFFFF"),
            tile = false,
            edgeSize = 0
        }
    )
    stealthAlertFrame:SetBackdropColor(0, 0, 0, 0.6)
    stealthAlertFrame:SetFrameLevel(2)
    stealthAlertFrame:Hide()
    -- Center Ring
    stealthAlertFrame.RightFade = stealthAlertFrame:CreateTexture(nil, "ARTWORK")
    stealthAlertFrame.RightFade:SetWidth(60)
    stealthAlertFrame.RightFade:SetPoint("TOPLEFT", stealthAlertFrame, "TOPRIGHT")
    stealthAlertFrame.RightFade:SetPoint("BOTTOMLEFT", stealthAlertFrame, "BOTTOMRIGHT")
    stealthAlertFrame.RightFade:SetColorTexture(0, 0, 0, 1)
    stealthAlertFrame.RightFade:SetGradientAlpha("HORIZONTAL", 0, 0, 0, 0.6, 0, 0, 0, 0)
    stealthAlertFrame.LeftFade = stealthAlertFrame:CreateTexture(nil, "ARTWORK")
    stealthAlertFrame.LeftFade:SetWidth(60)
    stealthAlertFrame.LeftFade:SetPoint("TOPRIGHT", stealthAlertFrame, "TOPLEFT")
    stealthAlertFrame.LeftFade:SetPoint("BOTTOMRIGHT", stealthAlertFrame, "BOTTOMLEFT")
    stealthAlertFrame.LeftFade:SetColorTexture(0, 0, 0, 1)
    stealthAlertFrame.LeftFade:SetGradientAlpha("HORIZONTAL", 0, 0, 0, 0, 0, 0, 0, 0.6)
    -- StealthAlertFrame.eventText
    stealthAlertFrame.divText = stealthAlertFrame:CreateFontString(nil, "OVERLAY")
    stealthAlertFrame.divText:SetPoint("CENTER", stealthAlertFrame, "CENTER")
    stealthAlertFrame.divText:SetFont(SM:Fetch("font", "Roboto Condensed Bold"), 20, "OUTLINE")
    stealthAlertFrame.divText:SetJustifyH("CENTER")
    stealthAlertFrame.divText:SetTextColor(1, 1, 1, 1)
    stealthAlertFrame.divText:SetText(" : ")
    -- StealthAlertFrame.eventText
    stealthAlertFrame.eventText = stealthAlertFrame:CreateFontString(nil, "OVERLAY")
    stealthAlertFrame.eventText:SetPoint("LEFT", stealthAlertFrame, "LEFT", 12, 0)
    stealthAlertFrame.eventText:SetFont(SM:Fetch("font", "Roboto Condensed BoldItalic"), 20, "OUTLINE")
    stealthAlertFrame.eventText:SetJustifyH("LEFT")
    stealthAlertFrame.eventText:SetTextColor(1, 0.3, 0.9, 1)
    stealthAlertFrame.eventText:SetText("STEALTH DETECTED")
    -- StealthAlertFrame.playerNameText
    stealthAlertFrame.playerText = stealthAlertFrame:CreateFontString(nil, "OVERLAY")
    stealthAlertFrame.playerText:SetPoint("LEFT", stealthAlertFrame.divText, "RIGHT")
    stealthAlertFrame.playerText:SetFont(SM:Fetch("font", "Roboto Condensed Bold"), 20, "OUTLINE")
    stealthAlertFrame.playerText:SetJustifyH("LEFT")
    stealthAlertFrame.playerText:SetTextColor(1, 1, 1, 1)
    stealthAlertFrame.playerText:SetText("PLAYERNAME")
    stealthAlertFrame.divText:ClearAllPoints()
    stealthAlertFrame.divText:SetPoint("LEFT", stealthAlertFrame.eventText, "RIGHT")
    stealthAlertFrame.playerText:SetPoint("LEFT", stealthAlertFrame.divText, "RIGHT")
    -- ICON
    stealthAlertFrame.Icon = stealthAlertFrame:CreateTexture(nil, "OVERLAY")
    stealthAlertFrame.Icon:SetSize(20, 20)
    stealthAlertFrame.Icon:SetPoint("TOPRIGHT", stealthAlertFrame.eventText, "TOPLEFT", -8, 0)
    stealthAlertFrame.Icon:SetPoint("BOTTOMRIGHT", stealthAlertFrame.eventText, "BOTTOMLEFT", -8, 0)
    -- Set Background to resize based on text boundaries
    -- Animation
    stealthAlertFrame.anim = stealthAlertFrame:CreateAnimationGroup()
    stealthAlertFrame.anim:SetScript(
        "OnFinished",
        function()
            stealthAlertFrame:Hide()
        end
    )
    -- StealthAlertFrame: Animation Groups
    local ag0a = stealthAlertFrame.anim:CreateAnimation("Alpha")
    ag0a:SetDuration(0)
    ag0a:SetFromAlpha(0)
    ag0a:SetToAlpha(0)
    ag0a:SetOrder(1)
    local ag0t = stealthAlertFrame.anim:CreateAnimation("Translation")
    ag0t:SetOffset(0, -100)
    ag0t:SetDuration(0)
    ag0t:SetOrder(1)
    local ag1 = stealthAlertFrame.anim:CreateAnimation("Alpha")
    ag1:SetDuration(0.2)
    ag1:SetFromAlpha(0)
    ag1:SetToAlpha(1)
    ag1:SetEndDelay(2.5)
    ag1:SetOrder(2)
    local ag2t = stealthAlertFrame.anim:CreateAnimation("Translation")
    ag2t:SetOffset(0, 100)
    ag2t:SetDuration(0.2)
    ag2t:SetOrder(2)
    ag2t:SetEndDelay(2.5)
    local ag3a = stealthAlertFrame.anim:CreateAnimation("Alpha")
    ag3a:SetDuration(0.6)
    ag3a:SetFromAlpha(1)
    ag3a:SetToAlpha(0)
    ag3a:SetOrder(3)
    ag3a:SetSmoothing("OUT")
    local ag3 = stealthAlertFrame.anim:CreateAnimation("Translation")
    ag3:SetOffset(0, 200)
    ag3:SetDuration(0.6)
    ag3:SetOrder(3)
    ag3:SetSmoothing("OUT")
end

--> Stealth Alert
--: TEST: /run weizPVP.NS.ShowStealthAlert("stealthEvent", "playerNameText", 132320)
local playerStealthSoundAlert = true
function NS.ShowStealthAlert(eventText, playerNameText, Icon)
    if (not eventText) or (not playerNameText) or (not Icon) then
        return
    end
    if NS.Options.StealthAlert.Enabled == true then
        if stealthAlertFrame.anim:IsPlaying() then
            stealthAlertFrame.anim:Stop()
        end
        stealthAlertFrame.Icon:SetTexture(Icon)
        stealthAlertFrame.eventText:SetText(eventText .. " Detected")
        stealthAlertFrame.playerText:SetText(playerNameText)
        -- Set Dimensions and position
        stealthAlertFrame:SetHeight(stealthAlertFrame.eventText:GetTop() - stealthAlertFrame.playerText:GetBottom() + 14)
        stealthAlertFrame:SetWidth(
            stealthAlertFrame.playerText:GetRight() - stealthAlertFrame.eventText:GetLeft() + stealthAlertFrame.divText:GetWidth()
        )
        stealthAlertFrame:SetPoint("TOP", UIParent, "CENTER", 0, UIParent:GetTop() / 3)
        -- Show Elements
        stealthAlertFrame.eventText:Show()
        stealthAlertFrame.playerText:Show()
        stealthAlertFrame:SetAlpha(0)
        stealthAlertFrame:Show()
        stealthAlertFrame.anim:Play()
        -- status bar
        NS.SetStatusBarMessage(eventText .. " : " .. playerNameText, true, 4)
        -- play stealth alert sound
        if playerStealthSoundAlert and NS.Options.StealthAlert.EnableSound == true then
            PlaySoundFile(SM:Fetch("sound", NS.Options.StealthAlert.SoundFile))
            playerStealthSoundAlert = false
            C_Timer_After(
                1,
                function()
                    playerStealthSoundAlert = true
                end
            )
        end
    end
end

--> Play Sound Alert
local playAlertSound = true
function NS.PlaySoundAlert(url, now)
    if playAlertSound == true or now then
        PlaySoundFile(url)
        playAlertSound = false
        C_Timer_After(
            0.6,
            function()
                playAlertSound = true
            end
        )
    end
end
