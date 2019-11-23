-------------------------------------------------------------------------------
--|> STATUS BAR
--: Manages the messages in the StatusBar frame
-------------------------------------------------------------------------------
--|> UPVALUE GLOBALS
-------------------------------------------------------------------------------
local weizPVP = weizPVP
local PixelUtil = PixelUtil
local InCombatLockdown = InCombatLockdown
-------------------------------------------------------------------------------

--|> FUNCTIONS
-------------------------------------------------------------------------------
local textFadeIn
local textSlideIn
local textFadeOut
local textSlideOut
local inDuration = 0.2
local outDuration = 0.3
local combatMessage = ""
function weizPVP:CreateStatusBar()
    --> StatusFlash
    weizPVP.StatusBar.Title1:ClearAllPoints()
    PixelUtil.SetPoint(weizPVP.StatusBar.Title1, "TOPLEFT", weizPVP.StatusBar, "BOTTOMLEFT", 0, 0)
    PixelUtil.SetPoint(weizPVP.StatusBar.Title1, "TOPRIGHT", weizPVP.StatusBar, "BOTTOMRIGHT", 0, 0)
    -----------------------------------------------------------------------
    --=> AnimationGroup: Fade Text
    -----------------------------------------------------------------------
    --> Slide In
    weizPVP.StatusBar.Title1.animIn = weizPVP.StatusBar.Title1:CreateAnimationGroup()
    textFadeIn = weizPVP.StatusBar.Title1.animIn:CreateAnimation("Alpha")
    textFadeIn:SetDuration(inDuration)
    textFadeIn:SetFromAlpha(0)
    textFadeIn:SetToAlpha(1)
    textFadeIn:SetEndDelay(2.5) --> Set the number of seconds the animation delays after finishing.
    textFadeIn:SetOrder(1)
    textSlideIn = weizPVP.StatusBar.Title1.animIn:CreateAnimation("Translation")
    textSlideIn:SetDuration(inDuration)
    textSlideIn:SetOffset(0, 16)
    textSlideIn:SetEndDelay(2.5) --> Set the number of seconds the animation delays after finishing.
    textSlideIn:SetOrder(1)
    weizPVP.StatusBar.Title1.animIn:SetScript(
        "OnFinished",
        function()
            weizPVP.StatusBar.Title1:SetAlpha(1)
            if InCombatLockdown() then
                weizPVP.StatusBar.Title1.animIn:Stop()
                textSlideIn:SetEndDelay(1200)
                textFadeIn:SetEndDelay(1200)
                weizPVP.StatusBar.Title1:SetText(combatMessage)
                weizPVP.StatusBar.Title1:SetAlpha(1)
                weizPVP.StatusBar.Title1.animIn:Play()
            end
        end
    )

    --> Slide Out
    textFadeOut = weizPVP.StatusBar.Title1.animIn:CreateAnimation("Alpha")
    textFadeOut:SetDuration(outDuration)
    textFadeOut:SetFromAlpha(1)
    textFadeOut:SetToAlpha(0)
    textFadeOut:SetOrder(2)
    textSlideOut = weizPVP.StatusBar.Title1.animIn:CreateAnimation("Translation")
    textSlideOut:SetDuration(outDuration)
    textSlideOut:SetOffset(0, -15)
    textSlideOut:SetOrder(2)
end

--=> Set Status Bar Message
function weizPVP:SetStatusBarMessage(StatusBarText, QuickMessage, Duration)
    if QuickMessage == true then --> Message will be temporary
        weizPVP.StatusBar.Title1.animIn:Stop()
        weizPVP.StatusBar.Title1:SetText("  " .. StatusBarText)
        weizPVP.StatusBar.Title1:SetAlpha(1)
        textSlideIn:SetEndDelay(Duration)
        textFadeIn:SetEndDelay(Duration)
        weizPVP.StatusBar.Title1.animIn:Play()
    else --> Static Message
        weizPVP.StatusBar.Title1.animIn:Stop()
        combatMessage = "  " .. StatusBarText
        weizPVP.StatusBar.Title1:SetText(combatMessage)
        weizPVP.StatusBar.Title1:SetAlpha(1)
        textSlideIn:SetEndDelay(1200)
        textFadeIn:SetEndDelay(1200)
        weizPVP.StatusBar.Title1.animIn:Play()
    end
end
