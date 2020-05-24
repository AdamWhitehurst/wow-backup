-------------------------------------------------------------------------------
--|> STATUS BAR
--- Manages the messages in the StatusBar frame
-------------------------------------------------------------------------------
--> Namespace
local _, NS = ...
--> Upvalue Globals
local InCombatLockdown = InCombatLockdown
local XEN = XEN

--> CREATE STATUS BAR
local textFadeIn
local textSlideIn
local textFadeOut
local textSlideOut
local inDuration = 0.2
local outDuration = 0.3
local combatMessage = ""
function NS.CreateStatusBar()
    NS.StatusBar.Title1:ClearAllPoints()
    NS.StatusBar.Title1:SetPoint("TOPLEFT", NS.StatusBar, "BOTTOMLEFT")
    NS.StatusBar.Title1:SetPoint("TOPRIGHT", NS.StatusBar, "BOTTOMRIGHT")
    -- Slide In
    NS.StatusBar.Title1.animIn = NS.StatusBar.Title1:CreateAnimationGroup()
    textFadeIn = NS.StatusBar.Title1.animIn:CreateAnimation("Alpha")
    textFadeIn:SetDuration(inDuration)
    textFadeIn:SetFromAlpha(0)
    textFadeIn:SetToAlpha(1)
    textFadeIn:SetEndDelay(2.5) -- Set the number of seconds the animation delays after finishing.
    textFadeIn:SetOrder(1)
    textSlideIn = NS.StatusBar.Title1.animIn:CreateAnimation("Translation")
    textSlideIn:SetDuration(inDuration)
    textSlideIn:SetOffset(0, XEN.ScalePixelsToUi(17))
    textSlideIn:SetEndDelay(2.5) -- Set the number of seconds the animation delays after finishing.
    textSlideIn:SetOrder(1)
    NS.StatusBar.Title1.animIn:SetScript(
        "OnFinished",
        function()
            NS.StatusBar.Title1:SetAlpha(1)
            if InCombatLockdown() then
                NS.StatusBar.Title1.animIn:Stop()
                textSlideIn:SetEndDelay(1200)
                textFadeIn:SetEndDelay(1200)
                NS.StatusBar.Title1:SetText(combatMessage)
                NS.StatusBar.Title1:SetAlpha(1)
                NS.StatusBar.Title1.animIn:Play()
            end
        end
    )

    --> Slide Out
    textFadeOut = NS.StatusBar.Title1.animIn:CreateAnimation("Alpha")
    textFadeOut:SetDuration(outDuration)
    textFadeOut:SetFromAlpha(1)
    textFadeOut:SetToAlpha(0)
    textFadeOut:SetOrder(2)
    textSlideOut = NS.StatusBar.Title1.animIn:CreateAnimation("Translation")
    textSlideOut:SetDuration(outDuration)
    textSlideOut:SetOffset(0, XEN.ScalePixelsToUi(-17))
    textSlideOut:SetOrder(2)
end

--> Set Status Bar Message
function NS.SetStatusBarMessage(StatusBarText, QuickMessage, Duration)
    if QuickMessage == true then -- Message will be temporary
        NS.StatusBar.Title1.animIn:Stop()
        NS.StatusBar.Title1:SetText("  " .. StatusBarText)
        NS.StatusBar.Title1:SetAlpha(1)
        textSlideIn:SetEndDelay(Duration)
        textFadeIn:SetEndDelay(Duration)
        NS.StatusBar.Title1.animIn:Play()
    else -- Static Message
        NS.StatusBar.Title1.animIn:Stop()
        combatMessage = "  " .. StatusBarText
        NS.StatusBar.Title1:SetText(combatMessage)
        NS.StatusBar.Title1:SetAlpha(1)
        textSlideIn:SetEndDelay(1200)
        textFadeIn:SetEndDelay(1200)
        NS.StatusBar.Title1.animIn:Play()
    end
end
