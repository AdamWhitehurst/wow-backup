-------------------------------------------------------------------------------
--|> Buttons
--: Manages the buttons on the frame that will perform certain functions
-------------------------------------------------------------------------------
--|> Upvalue Globals
-------------------------------------------------------------------------------
local _, NS = ...
local UIFrameFadeIn = UIFrameFadeIn
local UIFrameFadeOut = UIFrameFadeOut
local floor = floor
local C_Timer_After = C_Timer.After
local GetTime = GetTime
local InCombatLockdown = InCombatLockdown
local pairs = pairs
local XEN = XEN

local DragBottomRight
local MinMaxButtonTexture
local MinMaxButton
local ClearButtonTexture
local ClearButton

--> Minimize Frame
function NS.MinFrame()
    NS.Options.Frames.Height = NS.CoreFrame:GetHeight()
    NS.CoreFrame:SetClampedToScreen(false)
    NS.StatusBar:SetClampedToScreen(false)
    NS.CoreFrame:Hide()
    NS.StatusBar:Hide()
    DragBottomRight:Hide()
    NS.Options.Window.Collapsed = true
end

--> Maximize/Restore Frame
function NS.MaxFrame()
    NS.CoreFrame:SetHeight(NS.Options.Frames.Height)
    NS.CoreFrame:SetClampedToScreen(true)
    NS.StatusBar:SetClampedToScreen(true)
    NS.StatusBar:Show()
    DragBottomRight:Show()
    NS.CoreFrame:Show()
    NS.Options.Window.Collapsed = false
end

--> Auto Vertical Scroll - for snapping height to bars
local function AutoVerticalScroll()
    if not InCombatLockdown() then
        local frameHeight = NS.CoreFrame:GetHeight()
        local rowHeight = XEN.ScalePixelsToUi(NS.Options.Bars.RowHeight + NS.Options.Bars.VerticalSpacing)
        local rawCalc = frameHeight / rowHeight
        local barsInDisplay = floor(frameHeight / rowHeight)
        if rawCalc - barsInDisplay >= .5 then
            barsInDisplay = barsInDisplay + 1
        end
        if barsInDisplay < 1 then
            barsInDisplay = 1
        end
        local numPlayersOnBars = 0
        for _ in pairs(NS.PlayersOnBars) do
            numPlayersOnBars = numPlayersOnBars + 1
        end
        local minVerticalScroll = (numPlayersOnBars - barsInDisplay) * rowHeight
        if barsInDisplay > numPlayersOnBars then
            NS.ScrollFrame:SetVerticalScroll(0)
        elseif minVerticalScroll < NS.ScrollFrame:GetVerticalScroll() then
            NS.ScrollFrame:SetVerticalScroll(minVerticalScroll)
        end
    end
end

--> Snap to Bars
local function SnapHeightToBars()
    if not InCombatLockdown() then
        local frameHeight = NS.CoreFrame:GetHeight()
        local rowHeight = XEN.ScalePixelsToUi(NS.Options.Bars.RowHeight + NS.Options.Bars.VerticalSpacing)
        local rawCalc = frameHeight / rowHeight
        local barsInDisplay = floor(frameHeight / rowHeight)
        if rawCalc - barsInDisplay >= .5 then
            barsInDisplay = barsInDisplay + 1
        end
        if barsInDisplay < 1 then
            barsInDisplay = 1
        end
        NS.CoreFrame:SetHeight(barsInDisplay * rowHeight)
        AutoVerticalScroll()
        NS.SaveCoreFramePosition()
    end
end

--> Drag Bottom Right
local lastTime = GetTime()
local footerToBottom
local lastTry = 0
local timeBetweenChatMessage = 10
function NS.CreateResizeGrip()
    DragBottomRight = DragBottomRight or CreateFrame("Button", "weizPVPResizeGripBottomRight", NS.StatusBar)
    DragBottomRight:SetFrameLevel(420)
    DragBottomRight:SetFrameStrata("MEDIUM")
    DragBottomRight:SetNormalTexture("Interface\\Addons\\weizPVP\\Media\\Textures\\resizeGrip.tga")
    DragBottomRight:SetHighlightTexture("Interface\\Addons\\weizPVP\\Media\\Textures\\resizeGrip.tga")
    DragBottomRight:GetHighlightTexture():SetVertexColor(1, 0.8, 0, 1)
    DragBottomRight:SetWidth(XEN.ScalePixelsToUi(16))
    DragBottomRight:SetHeight(XEN.ScalePixelsToUi(16))
    DragBottomRight:SetScale(1)
    DragBottomRight:SetPoint("BOTTOMRIGHT", NS.StatusBar, "BOTTOMRIGHT", XEN.ScalePixelsToUi(-1), XEN.ScalePixelsToUi(1))
    DragBottomRight:Show()
    -- DRAG RESIZE: OnMouseDown
    DragBottomRight:SetScript(
        "OnMouseDown",
        function(_, button)
            if NS.Options.Window.Locked == false and button == "LeftButton" then
                NS.CoreFrame.isResizing = true
                NS.CoreFrame:StopMovingOrSizing("TOP")
                NS.CoreFrame:StopMovingOrSizing("LEFT")
                NS.CoreFrame:StartSizing("BOTTOMRIGHT")
                local footerToSide = NS.CoreFrame:GetWidth() + (UIParent:GetRight() - NS.StatusBar:GetRight())
                footerToBottom = NS.CoreFrame:GetHeight() + (UIParent:GetBottom() + NS.StatusBar:GetBottom())
                if footerToSide > 500 then
                    footerToSide = 500
                end
                if footerToBottom > XEN.ScalePixelsToUi(NS.Options.Frames.List.Height) then
                    footerToBottom = XEN.ScalePixelsToUi(NS.Options.Frames.List.Height)
                end
                NS.CoreFrame:SetMaxResize(footerToSide, footerToBottom)
            elseif NS.Options.Window.Locked == true then
                NS.SetStatusBarMessage("Window is |cffff3838LOCKED|r", true, 3)
                if lastTry + timeBetweenChatMessage < GetTime() then
                    NS.PrintAddonMessage("Window is |cffff3838LOCKED|r. Use Ctrl + Right click on the title bar to unlock it.")
                    lastTry = GetTime()
                end
            end
        end
    )

    -- DRAG RESIZE: OnMouseUp
    DragBottomRight:SetScript(
        "OnMouseUp",
        function(_, button)
            if (button == "LeftButton") then
                if NS.Options.Window.Locked == false then
                    SnapHeightToBars()
                    NS.CoreFrame:StopMovingOrSizing()
                    NS.CoreFrame.isResizing = false
                    NS.HeaderFrame:SetMovable(true)
                    if NS.CoreFrame.isResizing == true then
                        NS.CoreFrame:StopMovingOrSizing()
                        NS.CoreFrame.isResizing = false
                    end
                    NS.RefreshCurrentList()
                end
            end
        end
    )
    -- DRAG RESIZE: OnUpdate
    -- refresh the list to keep everything lined up
    DragBottomRight:SetScript(
        "OnUpdate",
        function(_)
            if NS.CoreFrame.isResizing and GetTime() + 0.3 > lastTime then
                NS.RefreshCurrentList()
                lastTime = GetTime()
            end
        end
    )
end

--> Show Arrow
local function ShowArrow()
    if NS.Options.Window.Collapsed == true then
        MinMaxButtonTexture:GetNormalTexture():SetRotation(3.14159)
    else
        MinMaxButtonTexture:GetNormalTexture():SetRotation(0)
    end
    UIFrameFadeIn(MinMaxButtonTexture, 0.2, 0, 1)
    MinMaxButtonTexture:Show()
end

--> Create Header Icons
local ag
local anim
function NS.CreateHeaderButtons()
    -- MinMaxButtonTexture
    MinMaxButtonTexture = MinMaxButtonTexture or CreateFrame("Button", "weizPVP-HeaderFrame.MinMaxButtonTexture", NS.HeaderFrame)
    MinMaxButtonTexture:SetPoint("RIGHT", NS.HeaderFrame, "RIGHT")
    MinMaxButtonTexture:SetSize(XEN.ScalePixelsToUi(32), XEN.ScalePixelsToUi(32))
    MinMaxButtonTexture:SetNormalTexture("Interface\\Addons\\weizPVP\\Media\\Textures\\arrow.tga")
    MinMaxButtonTexture:GetNormalTexture():SetVertexColor(0.8, 0.8, 0.8, 1)
    MinMaxButton = CreateFrame("Button", "weizPVP-HeaderFrame.MinMaxButton", MinMaxButtonTexture)
    MinMaxButton:SetPoint("CENTER", MinMaxButtonTexture, "CENTER")
    MinMaxButton:SetSize(XEN.ScalePixelsToUi(24), XEN.ScalePixelsToUi(24))
    -- MIN/MAX BUTTON: OnMouseDown
    MinMaxButton:SetScript(
        "OnMouseDown",
        function(_, event)
            if not InCombatLockdown() then
                if event == "LeftButton" then
                    -- MINIMIZING
                    if NS.Options.Window.Collapsed == false then
                        UIFrameFadeOut(NS.CoreFrame, 0.2, 0, 1)
                        UIFrameFadeOut(MinMaxButtonTexture, 0.2, 1, 0.5)
                        UIFrameFadeOut(NS.StatusBar, 0.2, 0, 1)
                        C_Timer_After(0.09, ShowArrow)
                        C_Timer_After(0.1, NS.MinFrame)
                        NS.CoreFrame:GetHeight(NS.Options.Frames.Height)
                        NS.CoreFrame:Hide()
                        NS.StatusBar:Hide()
                        NS.OuterIconsFrame:Hide()
                        NS.Options.Window.Collapsed = true
                    else
                        -- RESTORING
                        UIFrameFadeIn(NS.CoreFrame, 0.2, 0, 1)
                        UIFrameFadeOut(MinMaxButtonTexture, 0.2, 1, 0.5)
                        UIFrameFadeIn(NS.StatusBar, 0.2, 0, 1)
                        C_Timer_After(0.09, ShowArrow)
                        C_Timer_After(0.1, NS.MaxFrame)
                        NS.CoreFrame:SetHeight(XEN.ScalePixelsToUi(NS.Options.Frames.Height))
                        NS.CoreFrame:Show()
                        NS.StatusBar:Show()
                        NS.CoreFrame:SetHeight(XEN.ScalePixelsToUi(NS.Options.Frames.Height))
                        NS.StatusBar:SetHeight(XEN.ScalePixelsToUi(NS.Options.Frames.Footer.Height))
                        DragBottomRight:Show()
                        NS.OuterIconsFrame:Show()
                        NS.Options.Window.Collapsed = false
                    end
                end
            end
        end
    )
    -- MIN/MAX BUTTON: OnEnter
    MinMaxButton:SetScript(
        "OnEnter",
        function(self, _)
            MinMaxButtonTexture:SetNormalTexture([[Interface\Addons\weizPVP\Media\Textures\arrow.tga]])
            MinMaxButtonTexture:GetNormalTexture():SetVertexColor(1, 1, 1, 1)
            GameTooltip:ClearLines()
            GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
            if NS.Options.Window.Collapsed == true then
                GameTooltip:SetText("Restore Window")
            else
                GameTooltip:SetText("Minimize Window")
            end
            GameTooltip:Show()
        end
    )
    -- MIN/MAX BUTTON: OnLeave
    MinMaxButton:SetScript(
        "OnLeave",
        function(_)
            MinMaxButtonTexture:SetNormalTexture([[Interface\Addons\weizPVP\Media\Textures\arrow.tga]])
            MinMaxButtonTexture:GetNormalTexture():SetVertexColor(0.8, 0.8, 0.8, 1)
            GameTooltip:Hide()
        end
    )
    -- Clear List Button
    ClearButtonTexture = ClearButtonTexture or CreateFrame("Button", "weizPVP-ClearButtonTexture", NS.HeaderFrame)
    ClearButtonTexture:SetPoint("RIGHT", MinMaxButton, "LEFT", XEN.ScalePixelsToUi(2), 0)
    ClearButtonTexture:SetSize(XEN.ScalePixelsToUi(32), XEN.ScalePixelsToUi(32))
    ClearButtonTexture:SetAlpha(1)
    ClearButtonTexture:SetNormalTexture("Interface\\Addons\\weizPVP\\Media\\Textures\\button_refresh.tga")
    ClearButtonTexture:GetNormalTexture():SetVertexColor(0.9, 0.6, 0)
    ClearButton = CreateFrame("Button", "weizPVP-HeaderFrame.ClearButton", ClearButtonTexture)
    ClearButton:SetPoint("CENTER", ClearButtonTexture, "CENTER")
    ClearButton:SetSize(XEN.ScalePixelsToUi(24), XEN.ScalePixelsToUi(24))
    -- Rotation Animation
    ag = ClearButtonTexture:CreateAnimationGroup()
    anim = ag:CreateAnimation("Rotation")
    anim:SetDegrees(-360)
    anim:SetDuration(0.4)
    -- CLEAR: OnMouseDown
    ClearButton:SetScript(
        "OnMouseDown",
        function(_, event)
            if event == "LeftButton" then
                NS.ClearListData()
                ag:Play()
            end
        end
    )
    -- CLEAR: OnEnter
    ClearButton:SetScript(
        "OnEnter",
        function(self, _)
            ClearButtonTexture:GetNormalTexture():SetVertexColor(1, 0.7, 0)
            GameTooltip:ClearLines()
            GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
            GameTooltip:SetText("Clear List")
            GameTooltip:Show()
        end
    )
    -- CLEAR: OnLeave
    ClearButton:SetScript(
        "OnLeave",
        function(_)
            ClearButtonTexture:GetNormalTexture():SetVertexColor(0.9, 0.6, 0)
            GameTooltip:Hide()
        end
    )
    NS.HeaderFrame.MinMaxButton = MinMaxButton
end
