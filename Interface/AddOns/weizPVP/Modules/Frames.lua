-------------------------------------------------------------------------------
--|> FRAMES
--: Creates and updates the addon frames and widgets
-------------------------------------------------------------------------------
--|> UPVALUE GLOBALS
-------------------------------------------------------------------------------
local weizPVP = weizPVP
local InCombatLockdown = InCombatLockdown
local IsControlKeyDown = IsControlKeyDown
local CreateFrame = CreateFrame
local UIFrameFlash = UIFrameFlash
local unpack = unpack

-------------------------------------------------------------------------------
--|> LIBS
-------------------------------------------------------------------------------
local SM = LibStub:GetLibrary("LibSharedMedia-3.0")

-------------------------------------------------------------------------------
--|> GLOBAL FUNCTIONS
-------------------------------------------------------------------------------
--> Adjust Scroll Offset
-------------------------------------------------------------------------------
local offset = 0
function weizPVP.AdustScrollOffset(self, value)
    if not InCombatLockdown() then
        local vertScroll = weizPVP.ScrollFrame:GetVerticalScroll()
        local RowHeight = weizPVP.Options.Bars.RowHeight + weizPVP.Options.Bars.VerticalSpacing
        local offsetMax = weizPVP.ListFrame:GetHeight() - weizPVP.ScrollFrame:GetHeight()
        if value > 0 then
            offset = vertScroll - (RowHeight)
        else
            offset = vertScroll + (RowHeight)
        end
        if offset < 0 then
            weizPVP.ScrollFrame:SetVerticalScroll(0)
        elseif offset > offsetMax then
            weizPVP.ScrollFrame:SetVerticalScroll(offsetMax)
        else
            weizPVP.ScrollFrame:SetVerticalScroll(offset)
        end
    end
end

--> AlignFrameToPixels
-----------------------------------------------------------------------
function weizPVP:AlignFrameToPixels(frame)
    if not InCombatLockdown() then
        local effectiveScale = frame:GetEffectiveScale()
        local x, y = frame:GetCenter()
        if x and y then
            x, y = x * effectiveScale, y * effectiveScale
            local fScale = frame:GetScale() or 1
            x, y = x / fScale, y / fScale
            frame:SetPoint("CENTER", nil, "BOTTOMLEFT", weizPVP.ScaleCoords(x, y))
        end
    end
end

-------------------------------------------------------------------------------
--|> CREATE CORE FRAME
-------------------------------------------------------------------------------
function weizPVP:CreateCoreFrames()
    --> CoreFrame
    -----------------------------------------------------------------------
    weizPVP.CoreFrame = weizPVP.CoreFrame or CreateFrame("Frame", "weizPVP.CoreFrame", UIParent)
    weizPVP.CoreFrame:SetClampedToScreen(true)
    weizPVP.CoreFrame:SetFrameLevel(100)
    weizPVP.CoreFrame:SetFrameStrata("MEDIUM")
    weizPVP.CoreFrame:SetPoint("CENTER", UIParent)
    weizPVP.CoreFrame:SetSize(251, 247)
    weizPVP.CoreFrame:SetMovable(true)
    weizPVP.CoreFrame:EnableMouse(true)
    weizPVP.CoreFrame:SetDontSavePosition(true)
    weizPVP.CoreFrame:SetBackdrop(
        {
            bgFile = SM:Fetch("background", weizPVP.Options.Frames.BackgroundTexture),
            tile = false
        }
    )
    weizPVP.CoreFrame:SetBackdropColor(unpack(weizPVP.Options.Frames.BackgroundColor))
    weizPVP.CoreFrame:SetResizable(true)
    weizPVP.CoreFrame:SetMinResize(180, weizPVP.Options.Bars.RowHeight)
    weizPVP.CoreFrame:SetMaxResize(500, weizPVP.Options.Frames.List.Height)
    weizPVP.CoreFrame:Show()

    --> weizPVP.ScrollFrame
    --: The frame that is a child of weizPVP.CoreFrame that will be scolling with content
    -----------------------------------------------------------------------
    weizPVP.ScrollFrame = weizPVP.ScrollFrame or CreateFrame("ScrollFrame", "weizPVP.ScrollFrame", weizPVP.CoreFrame)
    weizPVP.ScrollFrame:EnableMouseWheel(true)
    weizPVP.ScrollFrame:SetClipsChildren(true)
    weizPVP.ScrollFrame:SetPoint("TOPLEFT", weizPVP.CoreFrame, "TOPLEFT", weizPVP.Options.Frames.BorderSize, 0)
    weizPVP.ScrollFrame:SetPoint("BOTTOMRIGHT", weizPVP.CoreFrame, "BOTTOMRIGHT", (-1 * weizPVP.Options.Frames.BorderSize), 0)

    --> ScrollFrame: MOUSEWHEEL
    weizPVP.ScrollFrame:SetScript(
        "OnMouseWheel",
        function(_, value)
            weizPVP.AdustScrollOffset(self, value)
        end
    )

    --> ListFrame
    --: The frame that is a child of weizPVP.CoreFrame that will be scolling with content
    -----------------------------------------------------------------------
    weizPVP.ListFrame = weizPVP.ListFrame or CreateFrame("Frame", "weizPVP.ListFrame", weizPVP.ScrollFrame)
    weizPVP.ListFrame:SetPoint("CENTER", weizPVP.ScrollFrame, "CENTER", 0, 1)
    weizPVP.ListFrame:SetPoint("TOP", weizPVP.CoreFrame, "BOTTOM", 0, 1)
    weizPVP.ListFrame:SetHeight(weizPVP.Options.Frames.List.Height)
    weizPVP.ListFrame:SetWidth(weizPVP.ScrollFrame:GetWidth() - weizPVP.Options.Frames.BorderSize)
    weizPVP.ScrollFrame:SetScrollChild(weizPVP.ListFrame)

    --> HeaderFrame
    -----------------------------------------------------------------------
    weizPVP.HeaderFrame = weizPVP.HeaderFrame or CreateFrame("Frame", "weizPVP.HeaderFrame", UIParent)
    weizPVP.HeaderFrame:SetClampedToScreen(true)
    weizPVP.HeaderFrame:SetFrameStrata("MEDIUM")
    weizPVP.HeaderFrame:SetHeight(weizPVP.Options.Frames.Header.Height)
    weizPVP.HeaderFrame:SetPoint("BOTTOMLEFT", weizPVP.CoreFrame, "TOPLEFT")
    weizPVP.HeaderFrame:SetPoint("BOTTOMRIGHT", weizPVP.CoreFrame, "TOPRIGHT")
    weizPVP.HeaderFrame:SetDontSavePosition(true)
    weizPVP.HeaderFrame:SetFrameLevel(400)
    weizPVP.HeaderFrame:RegisterForDrag("LeftButton")
    weizPVP.HeaderFrame:EnableMouse(true)
    weizPVP.HeaderFrame:SetBackdrop(
        {
            bgFile = SM:Fetch("background", "weizPVP: #FFFFFF"),
            tile = false,
            edgeFile = SM:Fetch("border", "weizPVP: Border"),
            edgeSize = 1,
            insets = {left = 0, right = 0, top = 0, bottom = 0}
        }
    )
    weizPVP.HeaderFrame:SetBackdropColor(unpack(weizPVP.Options.Frames.Header.BackgroundColor))
    weizPVP.HeaderFrame:SetBackdropBorderColor(0, 0, 0, 1)
    --> HeaderFrame.Highlight
    -----------------------------------------------------------------------
    weizPVP.HeaderFrame.Highlight = weizPVP.HeaderFrame.Highlight or CreateFrame("Frame", "weizPVP:HeaderFrame.Highlight", weizPVP.HeaderFrame)

    --> HeaderFrame.Text
    -----------------------------------------------------------------------
    weizPVP.HeaderFrame.Title1 = weizPVP.HeaderFrame.Title1 or weizPVP.HeaderFrame:CreateFontString(nil, "MEDIUM", nil)
    weizPVP.HeaderFrame.Title1:SetPoint("LEFT", weizPVP.HeaderFrame, "LEFT", 8, 0)
    weizPVP.HeaderFrame.Title1:SetFont(SM:Fetch("font", weizPVP.Options.Frames.Header.Font), weizPVP.Options.Frames.Header.FontSize, weizPVP.Options.Frames.Header.FontOutline)
    weizPVP.HeaderFrame.Title1:SetJustifyH("LEFT")
    weizPVP.HeaderFrame.Title1:SetDrawLayer("OVERLAY")
    weizPVP.HeaderFrame.Title1:SetText("|cffffffffNEARBY|r|cff888888:|r ")
    --> HeaderFrame.Text
    -----------------------------------------------------------------------
    weizPVP.HeaderFrame.TitleVar = weizPVP.HeaderFrame.TitleVar or weizPVP.HeaderFrame:CreateFontString(nil, "MEDIUM", nil)
    weizPVP.HeaderFrame.TitleVar:SetPoint("LEFT", weizPVP.HeaderFrame.Title1, "RIGHT", 0, 0)
    weizPVP.HeaderFrame.TitleVar:SetFont(SM:Fetch("font", weizPVP.Options.Frames.Header.Font), weizPVP.Options.Frames.Header.FontSize, weizPVP.Options.Frames.Header.FontOutline)
    weizPVP.HeaderFrame.TitleVar:SetJustifyH("LEFT")
    weizPVP.HeaderFrame.TitleVar:SetDrawLayer("OVERLAY")
    weizPVP.HeaderFrame.TitleVar:SetText("|cFF26FF540|r")

    --> HeaderFrame: ON MOUSE DOWN
    -----------------------------------------------------------------------
    weizPVP.HeaderFrame:SetScript(
        "OnMouseDown",
        function(_, button)
            GameTooltip:Hide()
            GameTooltip:ClearLines()
            if button == "LeftButton" then
                if weizPVP.Options.Window.Locked == true then --> WINDOW LOCKED; It will not move.
                    weizPVP:SetStatusBarMessage("Window is |cffff3838LOCKED|r", true, 3)
                    UIFrameFlash(weizPVP.HeaderFrame.Highlight, 0.1, 0.6, 0.7)
                elseif weizPVP.Options.Window.Pinned == true then --> WINDOW PINNED; Clicking doesnt help.
                    weizPVP:SetStatusBarMessage("Window is |cFFF4564DPINNED|r", true, 3)
                    UIFrameFlash(weizPVP.HeaderFrame.Highlight, 0.1, 0.6, 0.7)
                else
                    weizPVP.CoreFrame:StartMoving()
                    weizPVP.CoreFrame:SetClampRectInsets(0, 0, weizPVP.Options.Frames.Header.Height + 1, -1 * (weizPVP.Options.Frames.Footer.Height))
                    weizPVP.CoreFrame.isMoving = true
                end
            elseif button == "RightButton" then
                if IsControlKeyDown() then
                    weizPVP:SetWindowLocked(not weizPVP.Options.Window.Locked)
                elseif weizPVP.Options.Window.Locked == true then
                    weizPVP:SetStatusBarMessage("Window is |cffff3838LOCKED|r", true, 3)
                else
                    weizPVP:SetWindowPin(not weizPVP.Options.Window.Pinned)
                end
            end
        end
    )

    --> HeaderFrame: ON MOUSE UP
    -----------------------------------------------------------------------
    weizPVP.HeaderFrame:SetScript(
        "OnMouseUp",
        function(_, button)
            if button == "LeftButton" then
                weizPVP.CoreFrame:StopMovingOrSizing()
                weizPVP.CoreFrame.isMoving = false
                weizPVP:SaveCoreFramePosition()

                if weizPVP.Options.Window.Locked == true then
                    GameTooltip:SetOwner(weizPVP.HeaderFrame, "ANCHOR_TOPLEFT")
                    GameTooltip:SetText("Ctrl + Right Click to unlock")
                    GameTooltip:Show()
                elseif weizPVP.Options.Window.Pinned == true then
                    GameTooltip:SetOwner(weizPVP.HeaderFrame, "ANCHOR_TOPLEFT")
                    GameTooltip:SetText("Right Click to unpin")
                    GameTooltip:Show()
                else
                    GameTooltip:SetOwner(weizPVP.HeaderFrame, "ANCHOR_TOPLEFT")
                    GameTooltip:AddLine("Right Click to pin.")
                    GameTooltip:AddLine("Ctrl + Right Click to Lock.")
                    GameTooltip:Show()
                end
            end
        end
    )
    --> HeaderFrame: ON MOUSE UP
    -----------------------------------------------------------------------
    weizPVP.HeaderFrame:SetScript(
        "OnEnter",
        function()
            if weizPVP.Options.Window.Locked == true then
                GameTooltip:SetOwner(weizPVP.HeaderFrame, "ANCHOR_TOPLEFT")
                GameTooltip:SetText("Ctrl + Right Click to unlock")
                GameTooltip:Show()
            elseif weizPVP.Options.Window.Pinned == true then
                GameTooltip:SetOwner(weizPVP.HeaderFrame, "ANCHOR_TOPLEFT")
                GameTooltip:SetText("Right Click to unpin")
                GameTooltip:Show()
            else
                GameTooltip:SetOwner(weizPVP.HeaderFrame, "ANCHOR_TOPLEFT")
                GameTooltip:AddLine("Right Click to pin.")
                GameTooltip:AddLine("Ctrl + Right Click to Lock.")
                GameTooltip:Show()
            end
        end
    )
    --> HeaderFrame: ON MOUSE UP
    -----------------------------------------------------------------------
    weizPVP.HeaderFrame:SetScript(
        "OnLeave",
        function()
            GameTooltip:Hide()
            GameTooltip:ClearLines()
        end
    )

    --> OuterIconsFrame
    -----------------------------------------------------------------------
    weizPVP.OuterIconsFrame = weizPVP.OuterIconsFrame or CreateFrame("Frame", "weizPVP.OuterIconsFrame", weizPVP.HeaderFrame)
    weizPVP.OuterIconsFrame:SetPoint("TOPLEFT", weizPVP.ScrollFrame, "TOPLEFT", -24, 0)
    weizPVP.OuterIconsFrame:SetPoint("BOTTOMRIGHT", weizPVP.ScrollFrame, "BOTTOMRIGHT", 0, 0)
    weizPVP.OuterIconsFrame:SetClipsChildren(true)

    --> Create Header Buttons
    -----------------------------------------------------------------------
    weizPVP:CreateHeaderButtons()

    --> StatusBar: SETTINGS
    -----------------------------------------------------------------------
    weizPVP.StatusBar = weizPVP.StatusBar or CreateFrame("Frame", "weizPVP.StatusBar", weizPVP.HeaderFrame)
    weizPVP.StatusBar:SetClampedToScreen(true)
    weizPVP.StatusBar:SetFrameStrata("MEDIUM")
    weizPVP.StatusBar:SetFrameLevel(100)
    weizPVP.StatusBar:SetPoint("TOPLEFT", weizPVP.CoreFrame, "BOTTOMLEFT", 0, 0)
    weizPVP.StatusBar:SetPoint("TOPRIGHT", weizPVP.CoreFrame, "BOTTOMRIGHT", 0, 0)
    weizPVP.StatusBar:EnableMouse(false)
    weizPVP.StatusBar:SetHeight(weizPVP.Options.Frames.Footer.Height)
    weizPVP.StatusBar:SetBackdrop(
        {
            bgFile = SM:Fetch("background", "weizPVP: #FFFFFF"),
            tile = false,
            edgeFile = SM:Fetch("border", "weizPVP: Border"),
            edgeSize = 1,
            insets = {left = 0, right = 0, top = 0, bottom = 0}
        }
    )

    weizPVP.StatusBar:SetBackdropColor(unpack(weizPVP.Options.Frames.Header.BackgroundColor))
    weizPVP.StatusBar:SetBackdropBorderColor(0, 0, 0, 1)
    weizPVP.StatusBar:SetScale(1)

    --> StatusBar.Clip
    -----------------------------------------------------------------------
    weizPVP.StatusBar.Clip = weizPVP.StatusBar.Clip or CreateFrame("Frame", "weizPVP.StatusBar.Clip", weizPVP.StatusBar)
    weizPVP.StatusBar.Clip:SetPoint("RIGHT", weizPVP.StatusBar, "RIGHT")
    weizPVP.StatusBar.Clip:SetPoint("LEFT", weizPVP.StatusBar, "LEFT")
    weizPVP.StatusBar.Clip:SetPoint("TOP", weizPVP.StatusBar, "TOP", 0, 0)
    weizPVP.StatusBar.Clip:SetHeight(16)
    weizPVP.StatusBar.Clip:SetClampedToScreen(true)
    weizPVP.StatusBar.Clip:SetClipsChildren(true)
    --> StatusBar.Text
    -----------------------------------------------------------------------
    weizPVP.StatusBar.Title1 = weizPVP.StatusBar:CreateFontString("weizPVP.StatusBar.Text", "ARTWORK", nil)
    -- weizPVP.StatusBar.Title1 = weizPVP.StatusBar.Clip:CreateFontString("weizPVP.StatusBar.Text", "ARTWORK", nil)
    weizPVP.StatusBar.Title1:SetPoint("TOPLEFT", weizPVP.StatusBar.Clip, "TOPLEFT", 0, 4)
    weizPVP.StatusBar.Title1:SetPoint("BOTTOMRIGHT", weizPVP.StatusBar.Clip, "BOTTOMRIGHT", 0, 0)
    weizPVP.StatusBar.Title1:SetFont(SM:Fetch("font", weizPVP.Options.Frames.Footer.Font), weizPVP.Options.Frames.Footer.FontSize, weizPVP.Options.Frames.Footer.FontOutline)
    weizPVP.StatusBar.Title1:SetJustifyH("LEFT")
    weizPVP.StatusBar.Title1:SetShadowOffset(1, -1)
    weizPVP.StatusBar.Title1:SetParent(weizPVP.StatusBar.Clip)

    --> HeaderFrame Highlight
    -----------------------------------------------------------------------
    weizPVP.HeaderFrame.Highlight = weizPVP.HeaderFrame.Highlight or CreateFrame("Frame", "weizPVP:HeaderFrame.Highlight", weizPVP.HeaderFrame)
    weizPVP.HeaderFrame.Highlight:SetPoint("TOPRIGHT", weizPVP.HeaderFrame, "TOPRIGHT", -1, -1)
    weizPVP.HeaderFrame.Highlight:SetPoint("BOTTOMLEFT", weizPVP.HeaderFrame, "BOTTOMLEFT", 1, 1)
    weizPVP.HeaderFrame.Highlight:SetFrameStrata("MEDIUM")
    weizPVP.HeaderFrame.Highlight:SetFrameLevel(401)
    weizPVP.HeaderFrame.Highlight:SetBackdrop(
        {
            bgFile = SM:Fetch("background", "weizPVP: Bar-BG"),
            tile = false
        }
    )
    weizPVP.HeaderFrame.Highlight:SetBackdropColor(1, 0.2, 0.2, 0.6)
    weizPVP.HeaderFrame.Highlight:EnableMouse(false)
    -- weizPVP.HeaderFrame.Highlight:Show()
    weizPVP.HeaderFrame.Highlight:SetAlpha(0)

    --> Create Resize Grip button
    -----------------------------------------------------------------------
    weizPVP:CreateResizeGrip()

    --> Set Scale
    -----------------------------------------------------------------------
    if weizPVP.Options.Frames.Scale then
        weizPVP.CoreFrame:SetScale(weizPVP.Options.Frames.Scale)
        weizPVP.HeaderFrame:SetScale(weizPVP.Options.Frames.Scale)
    end
end

-----------------------------------------------------------------------
--> Save Core Position
-----------------------------------------------------------------------
function weizPVP:SaveCoreFramePosition()
    local x, y, w, h, s, point = weizPVP:GetFramePosition(weizPVP.CoreFrame)
    weizPVP.Options.Frames.X = x
    weizPVP.Options.Frames.Y = y
    weizPVP.Options.Frames.Width = w
    weizPVP.Options.Frames.Height = h
    weizPVP.Options.Frames.Point = point
    weizPVP.Options.Frames.Scale = s
    local x2, y2, w2, h2, s2, point2 = weizPVP:GetFramePosition(weizPVP.HeaderFrame)
    weizPVP.Options.Frames.Header.X = x2
    weizPVP.Options.Frames.Header.Y = y2
    weizPVP.Options.Frames.Header.Width = w2
    weizPVP.Options.Frames.Header.Height = h2
    weizPVP.Options.Frames.Header.Point = point2
    weizPVP.Options.Frames.Header.Scale = s2
    weizPVP.HeaderFrame:ClearAllPoints()
    weizPVP.HeaderFrame:SetPoint("BOTTOM", weizPVP.CoreFrame, "TOP")
    weizPVP.HeaderFrame:SetPoint("LEFT", weizPVP.CoreFrame, "LEFT")
    weizPVP.HeaderFrame:SetPoint("RIGHT", weizPVP.CoreFrame, "RIGHT")
end

-----------------------------------------------------------------------
--> Set Core Position
-----------------------------------------------------------------------
function weizPVP:SetCoreFramePosition()
    local settings = {}
    settings.xC = weizPVP.Options.Frames.X
    settings.yC = weizPVP.Options.Frames.Y
    settings.wC = weizPVP.Options.Frames.Width
    settings.hC = weizPVP.Options.Frames.Height
    settings.pointC = weizPVP.Options.Frames.Point or "CENTER"
    settings.sC = weizPVP.Options.Frames.Scale
    weizPVP.CoreFrame:ClearAllPoints()
    weizPVP.CoreFrame:SetPoint(settings.pointC, UIParent, settings.pointC, settings.xC, settings.yC)
    weizPVP.CoreFrame:SetHeight(settings.hC)
    weizPVP.CoreFrame:SetWidth(settings.wC)
    settings.xH = weizPVP.Options.Frames.Header.X
    settings.yH = weizPVP.Options.Frames.Header.Y
    settings.wH = weizPVP.Options.Frames.Header.Width
    settings.hH = weizPVP.Options.Frames.Header.Height
    settings.pointH = weizPVP.Options.Frames.Header.Point or "CENTER"
    settings.sH = weizPVP.Options.Frames.Header.Scale
    weizPVP.HeaderFrame:ClearAllPoints()
    weizPVP.HeaderFrame:SetHeight(settings.hH)
    weizPVP.HeaderFrame:SetPoint("BOTTOM", weizPVP.CoreFrame, "TOP")
    weizPVP.HeaderFrame:SetPoint("LEFT", weizPVP.CoreFrame, "LEFT")
    weizPVP.HeaderFrame:SetPoint("RIGHT", weizPVP.CoreFrame, "RIGHT")
end

-----------------------------------------------------------------------
--> Window: Set Locked
-----------------------------------------------------------------------
function weizPVP:SetWindowLocked(value)
    if value == nil then
        return
    end
    if not InCombatLockdown() then
        weizPVP.Options.Window.Locked = value

        if value == true then
            weizPVP.CoreFrame:SetMovable(false)
            weizPVP.HeaderFrame:SetMovable(false)
            weizPVP.Options.Window.Locked = true
            weizPVP:SetStatusBarMessage("Window is now |cffff3838LOCKED|r", true, 3)
        else
            weizPVP.CoreFrame:SetMovable(true)
            weizPVP.HeaderFrame:SetMovable(true)
            weizPVP.Options.Window.Locked = false
            weizPVP.Options.Window.Pinned = false
            weizPVP:SetStatusBarMessage("Window is now |cff37ff37UNLOCKED|r", true, 3)
        end
    end
end

--> Window: Set Pin
-----------------------------------------------------------------------
function weizPVP:SetWindowPin(value)
    if value == nil then
        return
    end
    weizPVP.Options.Window.Pinned = value
    weizPVP.HeaderFrame:SetMovable(not value)
    if value == true then
        weizPVP:SetStatusBarMessage("Window is now |cFFF4564DPINNED|r", true, 3)
    elseif value == false then
        weizPVP:SetStatusBarMessage("Window is now |cff42dcf4UNPINNED|r", true, 3)
    end
    return
end

--> Window: Set Visible
-----------------------------------------------------------------------
function weizPVP:SetWindowVisible(value)
    local newValue = value
    if value == nil then
        if weizPVP.Options.Window.Visible == true then
            newValue = false
        else
            newValue = true
        end
    end
    if not InCombatLockdown() then
        weizPVP.Options.Window.Visible = newValue
        if newValue == true then
            weizPVP.HeaderFrame:Show()
            if weizPVP.Options.Window.Collapsed == false then
                weizPVP.CoreFrame:Show()
                weizPVP.StatusBar:Show()
            else
                weizPVP.CoreFrame:Hide()
                weizPVP.StatusBar:Hide()
            end
        else
            weizPVP.HeaderFrame:Hide()
            weizPVP.CoreFrame:Hide()
            weizPVP.StatusBar:Hide()
        end
    end
end
--> Window: ApplyVisible
-----------------------------------------------------------------------
function weizPVP.SetWindowSettings()
    if not InCombatLockdown() then
        if weizPVP.Options.Window.Visible == true then
            weizPVP.HeaderFrame:Show()
            if weizPVP.Options.Window.Collapsed == false then
                weizPVP.MaxFrame()
            else
                weizPVP.MinFrame()
            end
        else
            weizPVP.HeaderFrame:Hide()
            weizPVP.CoreFrame:Hide()
            weizPVP.StatusBar:Hide()
        end
    end
end
