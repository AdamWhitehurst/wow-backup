-------------------------------------------------------------------------------
--|> FRAMES
--: Creates and updates the addon frames and widgets
-------------------------------------------------------------------------------
--|> Upvalue Globals
-------------------------------------------------------------------------------
local _, NS = ...
local UIFrameFlash = UIFrameFlash
local InCombatLockdown = InCombatLockdown
local IsControlKeyDown = IsControlKeyDown
local unpack = unpack

--|> LIBS
-------------------------------------------------------------------------------
local SM = LibStub:GetLibrary("LibSharedMedia-3.0")

--> Adjust Scroll Offset
local offset = 0
local function AdustScrollOffset(value)
    if not InCombatLockdown() then
        local vertScroll = NS.ScrollFrame:GetVerticalScroll()
        local RowHeight = NS.Options.Bars.RowHeight + NS.Options.Bars.VerticalSpacing
        local offsetMax = NS.ListFrame:GetHeight() - NS.ScrollFrame:GetHeight()
        if value > 0 then
            offset = vertScroll - (RowHeight)
        else
            offset = vertScroll + (RowHeight)
        end
        if offset < 0 then
            NS.ScrollFrame:SetVerticalScroll(0)
        elseif offset > offsetMax then
            NS.ScrollFrame:SetVerticalScroll(offsetMax)
        else
            NS.ScrollFrame:SetVerticalScroll(offset)
        end
    end
end

--> CREATE CORE FRAME
function NS.CreateCoreFrames()
    -- CoreFrame
    NS.CoreFrame = NS.CoreFrame or CreateFrame("Frame", "weizPVP.CoreFrame", UIParent)
    NS.CoreFrame:SetClampedToScreen(true)
    NS.CoreFrame:SetFrameLevel(100)
    NS.CoreFrame:SetFrameStrata("MEDIUM")
    NS.CoreFrame:SetPoint("CENTER", UIParent)
    NS.CoreFrame:SetSize(256, 256)
    NS.CoreFrame:SetMovable(true)
    NS.CoreFrame:EnableMouse(true)
    NS.CoreFrame:SetDontSavePosition(true)
    NS.CoreFrame:SetBackdrop(
        {
            bgFile = SM:Fetch("background", NS.Options.Frames.BackgroundTexture),
            tile = false
        }
    )
    NS.CoreFrame:SetBackdropColor(unpack(NS.Options.Frames.BackgroundColor))
    NS.CoreFrame:SetResizable(true)
    NS.CoreFrame:SetMinResize(180, NS.Options.Bars.RowHeight)
    NS.CoreFrame:SetMaxResize(500, NS.Options.Frames.List.Height)
    NS.CoreFrame:Show()

    --> NS.ScrollFrame
    --: The frame that is a child of NS.CoreFrame that will be scolling with content
    NS.ScrollFrame = NS.ScrollFrame or CreateFrame("ScrollFrame", "weizPVP.ScrollFrame", NS.CoreFrame)
    NS.ScrollFrame:EnableMouseWheel(true)
    NS.ScrollFrame:SetClipsChildren(true)
    NS.ScrollFrame:SetPoint("TOPLEFT", NS.CoreFrame, "TOPLEFT", NS.Options.Frames.BorderSize, 0)
    NS.ScrollFrame:SetPoint("BOTTOMRIGHT", NS.CoreFrame, "BOTTOMRIGHT", (-1 * NS.Options.Frames.BorderSize), 0)

    --> ScrollFrame: MOUSEWHEEL
    NS.ScrollFrame:SetScript(
        "OnMouseWheel",
        function(_, value)
            AdustScrollOffset(value)
        end
    )

    --> ListFrame
    --: The frame that is a child of NS.CoreFrame that will be scolling with content
    NS.ListFrame = NS.ListFrame or CreateFrame("Frame", "weizPVP.ListFrame", NS.ScrollFrame)
    NS.ListFrame:SetPoint("CENTER", NS.ScrollFrame, "CENTER", 0, 1)
    NS.ListFrame:SetPoint("TOP", NS.CoreFrame, "BOTTOM", 0, 1)
    NS.ListFrame:SetHeight(NS.Options.Frames.List.Height)
    NS.ListFrame:SetWidth(NS.ScrollFrame:GetWidth() - NS.Options.Frames.BorderSize)
    NS.ScrollFrame:SetScrollChild(NS.ListFrame)

    --> HeaderFrame
    NS.HeaderFrame = NS.HeaderFrame or CreateFrame("Frame", "weizPVP.HeaderFrame", UIParent)
    NS.HeaderFrame:SetClampedToScreen(true)
    NS.HeaderFrame:SetFrameStrata("MEDIUM")
    NS.HeaderFrame:SetHeight(NS.Options.Frames.Header.Height)
    NS.HeaderFrame:SetPoint("BOTTOMLEFT", NS.CoreFrame, "TOPLEFT")
    NS.HeaderFrame:SetPoint("BOTTOMRIGHT", NS.CoreFrame, "TOPRIGHT")
    NS.HeaderFrame:SetDontSavePosition(true)
    NS.HeaderFrame:SetFrameLevel(400)
    NS.HeaderFrame:RegisterForDrag("LeftButton")
    NS.HeaderFrame:EnableMouse(true)
    NS.HeaderFrame:SetBackdrop(
        {
            bgFile = SM:Fetch("background", "weizPVP: #FFFFFF"),
            tile = false,
            edgeFile = SM:Fetch("border", "weizPVP: Border"),
            edgeSize = 1,
            insets = {left = 0, right = 0, top = 0, bottom = 0}
        }
    )
    NS.HeaderFrame:SetBackdropColor(unpack(NS.Options.Frames.Header.BackgroundColor))
    NS.HeaderFrame:SetBackdropBorderColor(0, 0, 0, 1)
    --> HeaderFrame.Highlight
    NS.HeaderFrame.Highlight = NS.HeaderFrame.Highlight or CreateFrame("Frame", "weizPVP:HeaderFrame.Highlight", NS.HeaderFrame)

    --> HeaderFrame.Title
    NS.HeaderFrame.Title1 = NS.HeaderFrame.Title1 or NS.HeaderFrame:CreateFontString(nil, "ARTWORK", nil)
    NS.HeaderFrame.Title1:SetPoint("LEFT", NS.HeaderFrame, "LEFT", 8, 0)
    NS.HeaderFrame.Title1:SetFont(
        SM:Fetch("font", NS.Options.Frames.Header.Font),
        NS.Options.Frames.Header.FontSize,
        NS.Options.Frames.Header.FontOutline
    )
    NS.HeaderFrame.Title1:SetJustifyH("LEFT")
    NS.HeaderFrame.Title1:SetDrawLayer("OVERLAY")
    NS.HeaderFrame.Title1:SetText("|cffffffffNEARBY|r|cff888888:|r ")
    --> HeaderFrame.TitleVar
    NS.HeaderFrame.TitleVar = NS.HeaderFrame.TitleVar or NS.HeaderFrame:CreateFontString(nil, "ARTWORK", nil)
    NS.HeaderFrame.TitleVar:SetPoint("LEFT", NS.HeaderFrame.Title1, "RIGHT", 0, 0)
    NS.HeaderFrame.TitleVar:SetFont(
        SM:Fetch("font", NS.Options.Frames.Header.Font),
        NS.Options.Frames.Header.FontSize,
        NS.Options.Frames.Header.FontOutline
    )
    NS.HeaderFrame.TitleVar:SetJustifyH("LEFT")
    NS.HeaderFrame.TitleVar:SetDrawLayer("OVERLAY")
    NS.HeaderFrame.TitleVar:SetText("|cFF26FF540|r")

    --> HeaderFrame: ON MOUSE DOWN
    NS.HeaderFrame:SetScript(
        "OnMouseDown",
        function(_, button)
            GameTooltip:Hide()
            GameTooltip:ClearLines()
            if button == "LeftButton" then
                if NS.Options.Window.Locked == true then --> LOCKED WARNING
                    NS.SetStatusBarMessage("Window is |cffff3838LOCKED|r", true, 3)
                    UIFrameFlash(NS.HeaderFrame.Highlight, 0.1, 0.6, 0.7)
                elseif NS.Options.Window.Pinned == true then --> PINNED WARNING
                    NS.SetStatusBarMessage("Window is |cFFF4564DPINNED|r", true, 3)
                    UIFrameFlash(NS.HeaderFrame.Highlight, 0.1, 0.6, 0.7)
                else
                    NS.CoreFrame:StartMoving()
                    NS.CoreFrame:SetClampRectInsets(0, 0, NS.Options.Frames.Header.Height + 1, -1 * (NS.Options.Frames.Footer.Height))
                    NS.CoreFrame.isMoving = true
                end
            elseif button == "RightButton" then
                if IsControlKeyDown() then
                    NS.SetWindowLocked(not NS.Options.Window.Locked)
                elseif NS.Options.Window.Locked == true then
                    NS.SetStatusBarMessage("Window is |cffff3838LOCKED|r", true, 3)
                else
                    NS.SetWindowPin(not NS.Options.Window.Pinned)
                end
            end
        end
    )

    --> HeaderFrame: ON MOUSE UP
    NS.HeaderFrame:SetScript(
        "OnMouseUp",
        function(_, button)
            if button == "LeftButton" then
                NS.CoreFrame:StopMovingOrSizing()
                NS.CoreFrame.isMoving = false
                NS.SaveCoreFramePosition()
                if NS.Options.Window.Locked == true then
                    GameTooltip:SetOwner(NS.HeaderFrame, "ANCHOR_TOPLEFT")
                    GameTooltip:SetText("Ctrl + Right Click to unlock")
                    GameTooltip:Show()
                elseif NS.Options.Window.Pinned == true then
                    GameTooltip:SetOwner(NS.HeaderFrame, "ANCHOR_TOPLEFT")
                    GameTooltip:SetText("Right Click to unpin")
                    GameTooltip:Show()
                else
                    GameTooltip:SetOwner(NS.HeaderFrame, "ANCHOR_TOPLEFT")
                    GameTooltip:AddLine("Right Click to pin.")
                    GameTooltip:AddLine("Ctrl + Right Click to Lock.")
                    GameTooltip:Show()
                end
            end
        end
    )
    --> HeaderFrame: ON MOUSE UP
    NS.HeaderFrame:SetScript(
        "OnEnter",
        function()
            if NS.Options.Window.Locked == true then
                GameTooltip:SetOwner(NS.HeaderFrame, "ANCHOR_TOPLEFT")
                GameTooltip:SetText("Ctrl + Right Click to unlock")
                GameTooltip:Show()
            elseif NS.Options.Window.Pinned == true then
                GameTooltip:SetOwner(NS.HeaderFrame, "ANCHOR_TOPLEFT")
                GameTooltip:SetText("Right Click to unpin")
                GameTooltip:Show()
            else
                GameTooltip:SetOwner(NS.HeaderFrame, "ANCHOR_TOPLEFT")
                GameTooltip:AddLine("Right Click to pin.")
                GameTooltip:AddLine("Ctrl + Right Click to Lock.")
                GameTooltip:Show()
            end
        end
    )
    --> HeaderFrame: ON MOUSE UP
    NS.HeaderFrame:SetScript(
        "OnLeave",
        function()
            GameTooltip:Hide()
            GameTooltip:ClearLines()
        end
    )

    --> OuterIconsFrame
    NS.OuterIconsFrame = NS.OuterIconsFrame or CreateFrame("Frame", "weizPVP.OuterIconsFrame", NS.HeaderFrame)
    NS.OuterIconsFrame:SetPoint("TOPLEFT", NS.ScrollFrame, "TOPLEFT", -24, 0)
    NS.OuterIconsFrame:SetPoint("BOTTOMRIGHT", NS.ScrollFrame, "BOTTOMRIGHT", 0, 0)
    NS.OuterIconsFrame:SetClipsChildren(true)

    --> Create Header Buttons
    NS.CreateHeaderButtons()

    --> StatusBar: SETTINGS
    NS.StatusBar = NS.StatusBar or CreateFrame("Frame", "weizPVP.StatusBar", NS.HeaderFrame)
    NS.StatusBar:SetClampedToScreen(true)
    NS.StatusBar:SetFrameStrata("MEDIUM")
    NS.StatusBar:SetFrameLevel(100)
    NS.StatusBar:SetPoint("TOPLEFT", NS.CoreFrame, "BOTTOMLEFT", 0, 0)
    NS.StatusBar:SetPoint("TOPRIGHT", NS.CoreFrame, "BOTTOMRIGHT", 0, 0)
    NS.StatusBar:EnableMouse(false)
    NS.StatusBar:SetHeight(NS.Options.Frames.Footer.Height)
    NS.StatusBar:SetBackdrop(
        {
            bgFile = SM:Fetch("background", "weizPVP: #FFFFFF"),
            tile = false,
            edgeFile = SM:Fetch("border", "weizPVP: Border"),
            edgeSize = 1,
            insets = {left = 0, right = 0, top = 0, bottom = 0}
        }
    )

    NS.StatusBar:SetBackdropColor(unpack(NS.Options.Frames.Header.BackgroundColor))
    NS.StatusBar:SetBackdropBorderColor(0, 0, 0, 1)
    NS.StatusBar:SetScale(1)

    --> StatusBar.Clip
    NS.StatusBar.Clip = NS.StatusBar.Clip or CreateFrame("Frame", "weizPVP.StatusBar.Clip", NS.StatusBar)
    NS.StatusBar.Clip:SetPoint("RIGHT", NS.StatusBar, "RIGHT")
    NS.StatusBar.Clip:SetPoint("LEFT", NS.StatusBar, "LEFT")
    NS.StatusBar.Clip:SetPoint("TOP", NS.StatusBar, "TOP", 0, 0)
    NS.StatusBar.Clip:SetHeight(16)
    NS.StatusBar.Clip:SetClampedToScreen(true)
    NS.StatusBar.Clip:SetClipsChildren(true)
    --> StatusBar.Text
    NS.StatusBar.Title1 = NS.StatusBar:CreateFontString("weizPVP.StatusBar.Text", "ARTWORK", nil)
    NS.StatusBar.Title1:SetPoint("TOPLEFT", NS.StatusBar.Clip, "TOPLEFT", 0, 4)
    NS.StatusBar.Title1:SetPoint("BOTTOMRIGHT", NS.StatusBar.Clip, "BOTTOMRIGHT", 0, 0)
    NS.StatusBar.Title1:SetFont(
        SM:Fetch("font", NS.Options.Frames.Footer.Font),
        NS.Options.Frames.Footer.FontSize,
        NS.Options.Frames.Footer.FontOutline
    )
    NS.StatusBar.Title1:SetJustifyH("LEFT")
    NS.StatusBar.Title1:SetShadowOffset(1, -1)
    NS.StatusBar.Title1:SetParent(NS.StatusBar.Clip)

    --> HeaderFrame Highlight
    NS.HeaderFrame.Highlight = NS.HeaderFrame.Highlight or CreateFrame("Frame", "weizPVP:HeaderFrame.Highlight", NS.HeaderFrame)
    NS.HeaderFrame.Highlight:SetPoint("TOPRIGHT", NS.HeaderFrame, "TOPRIGHT", -1, -1)
    NS.HeaderFrame.Highlight:SetPoint("BOTTOMLEFT", NS.HeaderFrame, "BOTTOMLEFT", 1, 1)
    NS.HeaderFrame.Highlight:SetFrameStrata("MEDIUM")
    NS.HeaderFrame.Highlight:SetFrameLevel(401)
    NS.HeaderFrame.Highlight:SetBackdrop(
        {
            bgFile = SM:Fetch("background", "weizPVP: Bar-BG"),
            tile = false
        }
    )
    NS.HeaderFrame.Highlight:SetBackdropColor(1, 0.2, 0.2, 0.6)
    NS.HeaderFrame.Highlight:EnableMouse(false)
    NS.HeaderFrame.Highlight:SetAlpha(0)

    --> Create Resize Grip button
    NS.CreateResizeGrip()

    --> Set Scale
    if NS.Options.Frames.Scale then
        NS.CoreFrame:SetScale(NS.Options.Frames.Scale)
        NS.HeaderFrame:SetScale(NS.Options.Frames.Scale)
    end
end

--> Save Core Position
function NS.SaveCoreFramePosition()
    local x, y, w, h, s, point = NS.GetFramePosition(NS.CoreFrame)
    NS.Options.Frames.X = x
    NS.Options.Frames.Y = y
    NS.Options.Frames.Width = w
    NS.Options.Frames.Height = h
    NS.Options.Frames.Point = point
    NS.Options.Frames.Scale = s
    local x2, y2, w2, h2, s2, point2 = NS.GetFramePosition(NS.HeaderFrame)
    NS.Options.Frames.Header.X = x2
    NS.Options.Frames.Header.Y = y2
    NS.Options.Frames.Header.Width = w2
    NS.Options.Frames.Header.Height = h2
    NS.Options.Frames.Header.Point = point2
    NS.Options.Frames.Header.Scale = s2
    NS.HeaderFrame:ClearAllPoints()
    NS.HeaderFrame:SetPoint("BOTTOM", NS.CoreFrame, "TOP")
    NS.HeaderFrame:SetPoint("LEFT", NS.CoreFrame, "LEFT")
    NS.HeaderFrame:SetPoint("RIGHT", NS.CoreFrame, "RIGHT")
end

--> Set Core Position
function NS.SetCoreFramePosition()
    local settings = {}
    settings.xC = NS.Options.Frames.X
    settings.yC = NS.Options.Frames.Y
    settings.wC = NS.Options.Frames.Width
    settings.hC = NS.Options.Frames.Height
    settings.pointC = NS.Options.Frames.Point or "CENTER"
    settings.sC = NS.Options.Frames.Scale
    NS.CoreFrame:ClearAllPoints()
    NS.CoreFrame:SetPoint(settings.pointC, UIParent, settings.pointC, settings.xC, settings.yC)
    NS.CoreFrame:SetHeight(settings.hC)
    NS.CoreFrame:SetWidth(settings.wC)
    settings.xH = NS.Options.Frames.Header.X
    settings.yH = NS.Options.Frames.Header.Y
    settings.wH = NS.Options.Frames.Header.Width
    settings.hH = NS.Options.Frames.Header.Height
    settings.pointH = NS.Options.Frames.Header.Point or "CENTER"
    settings.sH = NS.Options.Frames.Header.Scale
    NS.HeaderFrame:ClearAllPoints()
    NS.HeaderFrame:SetHeight(settings.hH)
    NS.HeaderFrame:SetPoint("BOTTOM", NS.CoreFrame, "TOP")
    NS.HeaderFrame:SetPoint("LEFT", NS.CoreFrame, "LEFT")
    NS.HeaderFrame:SetPoint("RIGHT", NS.CoreFrame, "RIGHT")
end

--> Window: Set Locked
function NS.SetWindowLocked(value)
    if value == nil then
        return
    end
    if not InCombatLockdown() then
        NS.Options.Window.Locked = value
        if value == true then
            NS.CoreFrame:SetMovable(false)
            NS.HeaderFrame:SetMovable(false)
            NS.Options.Window.Locked = true
            NS.SetStatusBarMessage("Window is now |cffff3838LOCKED|r", true, 3)
        else
            NS.CoreFrame:SetMovable(true)
            NS.HeaderFrame:SetMovable(true)
            NS.Options.Window.Locked = false
            NS.Options.Window.Pinned = false
            NS.SetStatusBarMessage("Window is now |cff37ff37UNLOCKED|r", true, 3)
        end
    end
end

--> Window: Set Pin
function NS.SetWindowPin(value)
    if value == nil then
        return
    end
    NS.Options.Window.Pinned = value
    NS.HeaderFrame:SetMovable(not value)
    if value == true then
        NS.SetStatusBarMessage("Window is now |cFFF4564DPINNED|r", true, 3)
    elseif value == false then
        NS.SetStatusBarMessage("Window is now |cff42dcf4UNPINNED|r", true, 3)
    end
    return
end

--> Window: Set Visible
function NS.SetWindowVisible(value)
    local newValue = value
    if value == nil then
        if NS.Options.Window.Visible == true then
            newValue = false
        else
            newValue = true
        end
    end
    if not InCombatLockdown() then
        NS.Options.Window.Visible = newValue
        if newValue == true then
            NS.HeaderFrame:Show()
            if NS.Options.Window.Collapsed == false then
                NS.CoreFrame:Show()
                NS.StatusBar:Show()
            else
                NS.CoreFrame:Hide()
                NS.StatusBar:Hide()
            end
        else
            NS.HeaderFrame:Hide()
            NS.CoreFrame:Hide()
            NS.StatusBar:Hide()
        end
    end
end
--> Window: ApplyVisible
function NS.SetWindowSettings()
    if not InCombatLockdown() then
        if NS.Options.Window.Visible == true then
            NS.HeaderFrame:Show()
            if NS.Options.Window.Collapsed == false then
                NS.MaxFrame()
            else
                NS.MinFrame()
            end
        else
            NS.HeaderFrame:Hide()
            NS.CoreFrame:Hide()
            NS.StatusBar:Hide()
        end
    end
end
