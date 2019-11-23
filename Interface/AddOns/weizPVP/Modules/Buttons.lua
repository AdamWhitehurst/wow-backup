-------------------------------------------------------------------------------
--|> Buttons
--: Manages the butons on the frame that will perform certain functions
-------------------------------------------------------------------------------
--|> UPVALUE GLOBALS
-------------------------------------------------------------------------------
local weizPVP = weizPVP
local UIFrameFadeIn = UIFrameFadeIn
local UIFrameFadeOut = UIFrameFadeOut
local floor = floor
local C_Timer = C_Timer
local C_Timer_After = C_Timer.After
local UIParent = UIParent
local GetTime = GetTime
local InCombatLockdown = InCombatLockdown

-------------------------------------------------------------------------------
local DragBottomRight
local MinMaxButtonTexture
local MinMaxButton
local ClearButtonTexture
local ClearButton

-------------------------------------------------------------------------------
--|> LOCAL FUNCTIONS
-------------------------------------------------------------------------------

--=> Minimize Frame
-----------------------------------------------------------------------
function weizPVP.MinFrame()
    weizPVP.Options.Frames.Height = weizPVP.CoreFrame:GetHeight()
    weizPVP.CoreFrame:Hide()
    weizPVP.CoreFrame:SetClampedToScreen(false)
    weizPVP.StatusBar:Hide()
    weizPVP.StatusBar:SetClampedToScreen(false)
    DragBottomRight:Hide()
    weizPVP.Options.Window.Collapsed = true
end

--=> Mazimize/Restore Frame
-----------------------------------------------------------------------
function weizPVP.MaxFrame()
    weizPVP.CoreFrame:SetClampedToScreen(true)
    weizPVP.CoreFrame:SetHeight(weizPVP.Options.Frames.Height)
    weizPVP.CoreFrame:Show()
    weizPVP.StatusBar:SetClampedToScreen(true)
    weizPVP.StatusBar:Show()
    DragBottomRight:Show()
    weizPVP.Options.Window.Collapsed = false
end

--=> Snap to Bars
-----------------------------------------------------------------------
local frameHeight
local rowHeight
local rawCalc
local barsInDisplay
local function SnapHeightToBars()
    if not InCombatLockdown() then
        frameHeight = weizPVP.CoreFrame:GetHeight()
        rowHeight = weizPVP.Options.Bars.RowHeight + weizPVP.Options.Bars.VerticalSpacing
        rawCalc = frameHeight / rowHeight
        barsInDisplay = floor(frameHeight / rowHeight)
        if rawCalc - barsInDisplay >= .5 then
            barsInDisplay = barsInDisplay + 1
        end
        if barsInDisplay < 1 then
            barsInDisplay = 1
        end
        weizPVP.CoreFrame:SetHeight(barsInDisplay * rowHeight)
        weizPVP:AlignFrameToPixels(weizPVP.CoreFrame)
        weizPVP:SaveCoreFramePosition()
    end
end

--=> Drag Bottom Right
-------------------------------------------------------------------------------
local lastTime = GetTime()
local footerToSide
local footerToBottom
local lastTry = 0
local timeBetweenChatMessage = 10
function weizPVP:CreateResizeGrip()
    DragBottomRight = DragBottomRight or CreateFrame("Button", "weizPVPResizeGripBottomRight", weizPVP.StatusBar)
    DragBottomRight:SetFrameLevel(420)
    DragBottomRight:SetFrameStrata("MEDIUM")
    DragBottomRight:SetNormalTexture("Interface\\Addons\\weizPVP\\Media\\Icons\\resizeGrip.tga")
    DragBottomRight:SetHighlightTexture("Interface\\Addons\\weizPVP\\Media\\Icons\\resizeGrip.tga")
    DragBottomRight:GetHighlightTexture():SetVertexColor(1, 0.8, 0, 1)
    DragBottomRight:SetWidth(16)
    DragBottomRight:SetHeight(16)
    DragBottomRight:SetScale(1)
    DragBottomRight:SetPoint("BOTTOMRIGHT", weizPVP.StatusBar, "BOTTOMRIGHT", -1, 1)
    DragBottomRight:Show()

    --> DRAG RESIZE: OnMouseDown
    -----------------------------------
    DragBottomRight:SetScript(
        "OnMouseDown",
        function(self, button)
            if weizPVP.Options.Window.Locked == false and button == "LeftButton" then
                weizPVP.CoreFrame.isResizing = true
                weizPVP.CoreFrame:StopMovingOrSizing("TOP")
                weizPVP.CoreFrame:StopMovingOrSizing("LEFT")
                weizPVP.CoreFrame:StartSizing("BOTTOMRIGHT")
                footerToSide = weizPVP.CoreFrame:GetWidth() + (UIParent:GetRight() - weizPVP.StatusBar:GetRight())
                footerToBottom = weizPVP.CoreFrame:GetHeight() + (UIParent:GetBottom() + weizPVP.StatusBar:GetBottom())
                if footerToSide > 500 then
                    footerToSide = 500
                end
                if footerToBottom > weizPVP.Options.Frames.List.Height then
                    footerToBottom = weizPVP.Options.Frames.List.Height
                end
                weizPVP.CoreFrame:SetMaxResize(footerToSide, footerToBottom)
            elseif weizPVP.Options.Window.Locked == true then
                weizPVP:SetStatusBarMessage("Window is |cffff3838LOCKED|r", true, 3)
                if lastTry + timeBetweenChatMessage < GetTime() then
                    weizPVP:PrintAddonMessage(
                        "Window is |cffff3838LOCKED|r. Use Ctrl + Right click on the title bar to unlock it."
                    )
                    lastTry = GetTime()
                end
            end
        end
    )

    --> DRAG RESIZE: OnMouseUp
    -----------------------------------
    DragBottomRight:SetScript(
        "OnMouseUp",
        function(self, button)
            if weizPVP.Options.Window.Locked == false and button == "LeftButton" then
                SnapHeightToBars()
                weizPVP.CoreFrame:StopMovingOrSizing()
                weizPVP.CoreFrame.isResizing = false
                weizPVP.HeaderFrame:SetMovable(true)
                if weizPVP.CoreFrame.isResizing == true and (button == "LeftButton") then
                    weizPVP.CoreFrame:StopMovingOrSizing()
                    weizPVP.CoreFrame.isResizing = false
                end
                weizPVP:RefreshCurrentList()
            end
        end
    )
    --> DRAG RESIZE: OnUpdate
    -----------------------------------
    DragBottomRight:SetScript(
        "OnUpdate",
        function(self)
            if weizPVP.CoreFrame.isResizing and GetTime() + 0.3 > lastTime then
                weizPVP:RefreshCurrentList()
                lastTime = GetTime()
            end
        end
    )
end

--=> Show Arrow
-------------------------------------------------------------------------------
local function ShowArrow()
    if weizPVP.Options.Window.Collapsed == true then
        MinMaxButtonTexture:GetNormalTexture():SetRotation(3.14159)
    else
        MinMaxButtonTexture:GetNormalTexture():SetRotation(0)
    end
    UIFrameFadeIn(MinMaxButtonTexture, 0.2, 0, 1)
    MinMaxButtonTexture:Show()
end

--=> Create Header Icons
-------------------------------------------------------------------------------
local ag
local anim
function weizPVP:CreateHeaderButtons()
    --> MinMaxButtonTexture
    -------------------------------------------------------------------------------
    MinMaxButtonTexture =
        MinMaxButtonTexture or CreateFrame("Button", "weizPVP.HeaderFrame.MinMaxButtonTexture", weizPVP.HeaderFrame)
    MinMaxButtonTexture:SetPoint("RIGHT", weizPVP.HeaderFrame, "RIGHT", 0, 0)
    MinMaxButtonTexture:SetSize(32, 32)
    MinMaxButtonTexture:SetNormalTexture("Interface\\Addons\\weizPVP\\Media\\Icons\\arrow.tga")
    MinMaxButtonTexture:GetNormalTexture():SetVertexColor(0.8, 0.8, 0.8, 1)

    MinMaxButton = CreateFrame("Button", "weizPVP.HeaderFrame.MinMaxButton", MinMaxButtonTexture)
    MinMaxButton:SetPoint("CENTER", MinMaxButtonTexture, "CENTER")
    MinMaxButton:SetSize(24, 24)

    --> MIN/MAX BUTTON: OnMouseDown
    -----------------------------------
    MinMaxButton:SetScript(
        "OnMouseDown",
        function(self, event)
            if not InCombatLockdown() then
                if event == "LeftButton" then
                    --> MINIZING
                    if weizPVP.Options.Window.Collapsed == false then
                        UIFrameFadeOut(weizPVP.CoreFrame, 0.2, 0, 1)
                        UIFrameFadeOut(MinMaxButtonTexture, 0.2, 1, 0.5)
                        UIFrameFadeOut(weizPVP.StatusBar, 0.2, 0, 1)
                        C_Timer_After(0.09, ShowArrow)
                        C_Timer_After(0.1, weizPVP.MinFrame)
                        weizPVP.CoreFrame:GetHeight(weizPVP.Options.Frames.Height)
                        weizPVP.CoreFrame:Hide()
                        weizPVP.StatusBar:Hide()
                        weizPVP.OuterIconsFrame:Hide()
                        weizPVP.Options.Window.Collapsed = true
                    else
                        --> RESTORING
                        UIFrameFadeIn(weizPVP.CoreFrame, 0.2, 0, 1)
                        UIFrameFadeOut(MinMaxButtonTexture, 0.2, 1, 0.5)
                        UIFrameFadeIn(weizPVP.StatusBar, 0.2, 0, 1)
                        C_Timer_After(0.09, ShowArrow)
                        C_Timer_After(0.1, weizPVP.MaxFrame)
                        weizPVP.CoreFrame:SetHeight(weizPVP.Options.Frames.Height)
                        weizPVP.CoreFrame:Show()
                        weizPVP.StatusBar:Show()
                        weizPVP.CoreFrame:SetHeight(weizPVP.Options.Frames.Height)
                        weizPVP.StatusBar:SetHeight(weizPVP.Options.Frames.Footer.Height)
                        DragBottomRight:Show()
                        weizPVP.OuterIconsFrame:Show()
                        weizPVP.Options.Window.Collapsed = false
                    end
                end
            end
        end
    )
    --> MIN/MAX BUTTON: OnEnter
    -----------------------------------
    MinMaxButton:SetScript(
        "OnEnter",
        function(self, event)
            MinMaxButtonTexture:SetNormalTexture([[Interface\Addons\weizPVP\Media\Icons\arrow.tga]])
            MinMaxButtonTexture:GetNormalTexture():SetVertexColor(1, 1, 1, 1)
            GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
            if weizPVP.Options.Window.Collapsed == true then
                GameTooltip:SetText("Restore Window")
            else
                GameTooltip:SetText("Minimize Window")
            end
            GameTooltip:Show()
        end
    )
    --> MIN/MAX BUTTON: OnLeave
    -----------------------------------
    MinMaxButton:SetScript(
        "OnLeave",
        function(self, event)
            MinMaxButtonTexture:SetNormalTexture([[Interface\Addons\weizPVP\Media\Icons\arrow.tga]])
            MinMaxButtonTexture:GetNormalTexture():SetVertexColor(0.8, 0.8, 0.8, 1)
            GameTooltip:Hide()
        end
    )

    --> Clear List Button
    -------------------------------------------------------------------------------
    ClearButtonTexture = ClearButtonTexture or CreateFrame("Button", "weizPVP.ClearButtonTexture", weizPVP.HeaderFrame)
    ClearButtonTexture:SetPoint("RIGHT", MinMaxButton, "LEFT", 2, 0)
    ClearButtonTexture:SetSize(32, 32)
    ClearButtonTexture:SetAlpha(1)
    ClearButtonTexture:SetNormalTexture("Interface\\Addons\\weizPVP\\Media\\Icons\\button_refresh.tga")
    ClearButtonTexture:GetNormalTexture():SetVertexColor(0.9, 0.6, 0)

    ClearButton = CreateFrame("Button", "weizPVP.HeaderFrame.ClearButton", ClearButtonTexture)
    ClearButton:SetPoint("CENTER", ClearButtonTexture, "CENTER")
    ClearButton:SetSize(24, 24)

    --> Rotation Animation
    ag = ClearButtonTexture:CreateAnimationGroup()
    anim = ag:CreateAnimation("Rotation")
    anim:SetDegrees(-360)
    anim:SetDuration(0.4)

    --> CLEAR: OnMouseDown
    -----------------------------------
    ClearButton:SetScript(
        "OnMouseDown",
        function(self, event)
            if event == "LeftButton" then
                weizPVP:ClearListData()
                ag:Play()
            end
        end
    )
    --> CLEAR: OnEnter
    -----------------------------------
    ClearButton:SetScript(
        "OnEnter",
        function(self, event)
            ClearButtonTexture:GetNormalTexture():SetVertexColor(1, 0.7, 0)
            GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
            GameTooltip:SetText("Clear List")
            GameTooltip:Show()
        end
    )
    --> CLEAR: OnLeave
    -----------------------------------
    ClearButton:SetScript(
        "OnLeave",
        function(self, event)
            ClearButtonTexture:GetNormalTexture():SetVertexColor(0.9, 0.6, 0)
            GameTooltip:Hide()
        end
    )

    weizPVP.HeaderFrame.MinMaxButton = MinMaxButton
end
