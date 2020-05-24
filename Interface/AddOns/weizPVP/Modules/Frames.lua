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
local floor = floor
local pairs = pairs
local XEN = XEN

--|> LIBS
-------------------------------------------------------------------------------
local SM = LibStub:GetLibrary("LibSharedMedia-3.0")

--> Adjust Scroll Offset
-- TODO : have players on bars, bars displayed, etc in NS for easy access in multiple functions
function NS.AdustScrollOffset(value)
    if not InCombatLockdown() then
        local vertScroll = NS.ScrollFrame:GetVerticalScroll()
        local rowHeight = XEN.ScalePixelsToUi(NS.Options.Bars.RowHeight + NS.Options.Bars.VerticalSpacing)
        local offsetMax = NS.ListFrame:GetHeight() - NS.ScrollFrame:GetHeight()
        local numPlayersOnBars = 0
        for _ in pairs(NS.PlayersOnBars) do
            numPlayersOnBars = numPlayersOnBars + 1
        end
        local barsInDisplay = floor(NS.CoreFrame:GetHeight() / rowHeight)
        local rawCalc = NS.CoreFrame:GetHeight() / rowHeight
        if rawCalc - barsInDisplay >= .5 then
            barsInDisplay = barsInDisplay + 1
        end
        if barsInDisplay < 1 then
            barsInDisplay = 1
        end
        local minVerticalScroll = (numPlayersOnBars - barsInDisplay) * rowHeight
        if minVerticalScroll < 0 then
            minVerticalScroll = 0
        end
        local offset
        if value > 0 then
            offset = vertScroll - (rowHeight)
        else
            offset = vertScroll + (rowHeight)
        end
        if offset < 0 then
            NS.ScrollFrame:SetVerticalScroll(0)
        elseif offset > offsetMax then
            NS.ScrollFrame:SetVerticalScroll(offsetMax)
        elseif minVerticalScroll < offset then
            NS.ScrollFrame:SetVerticalScroll(minVerticalScroll)
        else
            NS.ScrollFrame:SetVerticalScroll(offset)
        end
    end
end

--> CREATE CORE FRAME
function NS.CreateCoreFrames()
    -- CoreFrame
    NS.CoreFrame = nil
    NS.CoreFrame = CreateFrame("Frame", "weizPVP.CoreFrame", UIParent)
    NS.CoreFrame:SetClampedToScreen(true)
    NS.CoreFrame:SetFrameLevel(100)
    NS.CoreFrame:SetFrameStrata("MEDIUM")
    NS.CoreFrame:SetPoint("CENTER", UIParent)
    NS.CoreFrame:SetSize(XEN.ScalePixelsToUi(256), XEN.ScalePixelsToUi(256))
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
    NS.CoreFrame:SetMinResize(180, XEN.ScalePixelsToUi(NS.Options.Bars.RowHeight))
    NS.CoreFrame:SetMaxResize(500, XEN.ScalePixelsToUi(NS.Options.Frames.List.Height))
    NS.CoreFrame:Show()
    -- NS.ScrollFrame
    --: The frame that is a child of NS.CoreFrame that will be scrolling with content
    NS.ScrollFrame = nil
    NS.ScrollFrame = CreateFrame("ScrollFrame", "weizPVP.ScrollFrame", NS.CoreFrame)
    NS.ScrollFrame:SetParent(NS.CoreFrame)
    NS.ScrollFrame:EnableMouseWheel(true)
    NS.ScrollFrame:SetClipsChildren(true)
    NS.ScrollFrame:SetPoint("TOPLEFT", NS.CoreFrame, "TOPLEFT", XEN.ScalePixelsToUi(NS.Options.Frames.BorderSize), 0)
    NS.ScrollFrame:SetPoint("BOTTOMRIGHT", NS.CoreFrame, "BOTTOMRIGHT", XEN.ScalePixelsToUi(-1 * NS.Options.Frames.BorderSize), 0)
    -- ScrollFrame: MOUSEWHEEL
    NS.ScrollFrame:SetScript(
        "OnMouseWheel",
        function(_, value)
            NS.AdustScrollOffset(value)
        end
    )
    -- ListFrame
    --: The frame that is a child of NS.CoreFrame that will be scrolling with content
    NS.ListFrame = nil
    NS.ListFrame = CreateFrame("Frame", "weizPVP.ListFrame", NS.ScrollFrame)
    NS.ListFrame:SetParent(NS.ScrollFrame)
    NS.ListFrame:SetPoint("CENTER", NS.ScrollFrame, "CENTER", 0, XEN.ScalePixelsToUi(1))
    NS.ListFrame:SetPoint("TOP", NS.CoreFrame, "BOTTOM", 0, XEN.ScalePixelsToUi(1))
    NS.ListFrame:SetHeight(XEN.ScalePixelsToUi(NS.Options.Frames.List.Height))
    NS.ListFrame:SetWidth(NS.ScrollFrame:GetWidth() - XEN.ScalePixelsToUi(NS.Options.Frames.BorderSize))
    NS.ScrollFrame:SetScrollChild(NS.ListFrame)
    -- HeaderFrame
    NS.HeaderFrame = nil
    NS.HeaderFrame = CreateFrame("Frame", "weizPVP.HeaderFrame", UIParent)
    NS.HeaderFrame:SetClampedToScreen(true)
    NS.HeaderFrame:SetFrameStrata("MEDIUM")
    NS.HeaderFrame:SetHeight(XEN.ScalePixelsToUi(NS.Options.Frames.Header.Height))
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
            edgeSize = XEN.ScalePixelsToUi(1),
            insets = {left = 0, right = 0, top = 0, bottom = 0}
        }
    )
    NS.HeaderFrame:SetBackdropColor(unpack(NS.Options.Frames.Header.BackgroundColor))
    NS.HeaderFrame:SetBackdropBorderColor(0, 0, 0, 1)
    -- HeaderFrame.Highlight
    NS.HeaderFrame.Highlight = NS.HeaderFrame.Highlight or CreateFrame("Frame", "weizPVP:HeaderFrame.Highlight", NS.HeaderFrame)
    -- HeaderFrame.Title
    NS.HeaderFrame.Title1 = NS.HeaderFrame.Title1 or NS.HeaderFrame:CreateFontString(nil, "ARTWORK", nil)
    NS.HeaderFrame.Title1:SetPoint("BOTTOMLEFT", NS.HeaderFrame, "BOTTOMLEFT", XEN.ScalePixelsToUi(8), XEN.ScalePixelsToUi(1))
    NS.HeaderFrame.Title1:SetFont(
        SM:Fetch("font", NS.Options.Frames.Header.Font),
        NS.Options.Frames.Header.FontSize,
        NS.Options.Frames.Header.FontOutline
    )
    NS.HeaderFrame.Title1:SetJustifyH("LEFT")
    NS.HeaderFrame.Title1:SetDrawLayer("OVERLAY")
    NS.HeaderFrame.Title1:SetText("|cffffffffNEARBY|r|cff888888:|r ")
    -- HeaderFrame.TitleVar
    NS.HeaderFrame.TitleVar = NS.HeaderFrame.TitleVar or NS.HeaderFrame:CreateFontString(nil, "ARTWORK", nil)
    NS.HeaderFrame.TitleVar:SetPoint("LEFT", NS.HeaderFrame.Title1, "RIGHT")
    NS.HeaderFrame.TitleVar:SetFont(
        SM:Fetch("font", NS.Options.Frames.Header.Font),
        NS.Options.Frames.Header.FontSize,
        NS.Options.Frames.Header.FontOutline
    )
    NS.HeaderFrame.TitleVar:SetJustifyH("LEFT")
    NS.HeaderFrame.TitleVar:SetDrawLayer("OVERLAY")
    NS.HeaderFrame.TitleVar:SetText("|cFF26FF540|r")
    -- HeaderFrame: ON MOUSE DOWN
    NS.HeaderFrame:SetScript(
        "OnMouseDown",
        function(_, button)
            GameTooltip:Hide()
            if button == "LeftButton" then
                if NS.Options.Window.Locked == true then --> LOCKED WARNING
                    NS.SetStatusBarMessage("Window is |cffff3838LOCKED|r", true, 3)
                    UIFrameFlash(NS.HeaderFrame.Highlight, 0.1, 0.6, 0.7)
                elseif NS.Options.Window.Pinned == true then --> PINNED WARNING
                    NS.SetStatusBarMessage("Window is|cFFF4564D PINNED|r", true, 3)
                    UIFrameFlash(NS.HeaderFrame.Highlight, 0.1, 0.6, 0.7)
                else
                    NS.CoreFrame:StartMoving()
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
    -- HeaderFrame: ON MOUSE UP
    NS.HeaderFrame:SetScript(
        "OnMouseUp",
        function(_, button)
            if button == "LeftButton" then
                NS.CoreFrame:StopMovingOrSizing()
                NS.CoreFrame.isMoving = false
                NS.SaveCoreFramePosition()
                GameTooltip:ClearLines()
                GameTooltip:SetOwner(NS.HeaderFrame, "ANCHOR_TOPLEFT")
                GameTooltip:AddLine("|TInterface\\Addons\\weizPVP\\Media\\weizpvp_chat.tga:0|t " .. NS.addonString)
                if NS.Options.Window.Locked == true then -- locked
                    GameTooltip:AddLine("|cff42dcf4Ctrl + Right-Click|r to unlock")
                elseif NS.Options.Window.Pinned == true then -- pinned
                    GameTooltip:AddLine("|cff42dcf4Right-Click|r to unpin")
                else -- not locked or pinned
                    GameTooltip:AddLine("|cff42dcf4Right-Click|r to pin.")
                    GameTooltip:AddLine("|cff42dcf4Ctrl + Right-Click|r to Lock.")
                end
                GameTooltip:Show()
            end
        end
    )
    -- HeaderFrame: ON MOUSE UP
    NS.HeaderFrame:SetScript(
        "OnEnter",
        function()
            GameTooltip:ClearLines()
            GameTooltip:SetOwner(NS.HeaderFrame, "ANCHOR_TOPLEFT")
            GameTooltip:AddLine("|TInterface\\Addons\\weizPVP\\Media\\weizpvp_chat.tga:0|t " .. NS.addonString)
            if NS.Options.Window.Locked == true then
                GameTooltip:AddLine("|cff42dcf4Ctrl + Right-Click|r to unlock")
            elseif NS.Options.Window.Pinned == true then
                GameTooltip:AddLine("|cff42dcf4Right-Click|r to unpin")
            else
                GameTooltip:AddLine("|cff42dcf4Right-Click|r to pin.")
                GameTooltip:AddLine("|cff42dcf4Ctrl + Right-Click|r to Lock.")
            end
            GameTooltip:Show()
        end
    )
    -- HeaderFrame: ON MOUSE UP
    NS.HeaderFrame:SetScript(
        "OnLeave",
        function()
            GameTooltip:Hide()
        end
    )
    -- OuterIconsFrame
    NS.OuterIconsFrame = nil
    NS.OuterIconsFrame = CreateFrame("Frame", "weizPVP.OuterIconsFrame", NS.HeaderFrame)
    NS.OuterIconsFrame:SetPoint("TOPLEFT", NS.ScrollFrame, "TOPLEFT", XEN.ScalePixelsToUi(-24), 0)
    NS.OuterIconsFrame:SetPoint("BOTTOMRIGHT", NS.ScrollFrame, "BOTTOMRIGHT", XEN.ScalePixelsToUi(24), 0)
    NS.OuterIconsFrame:SetClipsChildren(true)
    -- Create Header Buttons
    NS.CreateHeaderButtons()
    -- StatusBar: SETTINGS
    NS.StatusBar = nil
    NS.StatusBar = CreateFrame("Frame", "weizPVP.StatusBar", NS.HeaderFrame)
    NS.StatusBar:SetClampedToScreen(true)
    NS.StatusBar:SetFrameStrata("MEDIUM")
    NS.StatusBar:SetFrameLevel(100)
    NS.StatusBar:SetPoint("TOPLEFT", NS.CoreFrame, "BOTTOMLEFT")
    NS.StatusBar:SetPoint("TOPRIGHT", NS.CoreFrame, "BOTTOMRIGHT")
    NS.StatusBar:EnableMouse(false)
    NS.StatusBar:SetHeight(XEN.ScalePixelsToUi(NS.Options.Frames.Footer.Height))
    NS.StatusBar:SetBackdrop(
        {
            bgFile = SM:Fetch("background", "weizPVP: #FFFFFF"),
            tile = false,
            edgeFile = SM:Fetch("border", "weizPVP: Border"),
            edgeSize = XEN.ScalePixelsToUi(1),
            insets = {left = 0, right = 0, top = 0, bottom = 0}
        }
    )
    NS.StatusBar:SetBackdropColor(unpack(NS.Options.Frames.Header.BackgroundColor))
    NS.StatusBar:SetBackdropBorderColor(0, 0, 0, 1)
    NS.StatusBar:SetScale(1)
    -- StatusBar.Clip
    NS.StatusBar.Clip = NS.StatusBar.Clip or CreateFrame("Frame", "weizPVP.StatusBar.Clip", NS.StatusBar)
    NS.StatusBar.Clip:SetPoint("TOPRIGHT", NS.StatusBar, "TOPRIGHT")
    NS.StatusBar.Clip:SetPoint("TOPLEFT", NS.StatusBar, "TOPLEFT")
    NS.StatusBar.Clip:SetHeight(XEN.ScalePixelsToUi(NS.Options.Frames.Footer.Height))
    NS.StatusBar.Clip:SetClampedToScreen(true)
    NS.StatusBar.Clip:SetClipsChildren(true)
    -- StatusBar.Text
    NS.StatusBar.Title1 = NS.StatusBar:CreateFontString("weizPVP.StatusBar.Text", "ARTWORK", nil)
    NS.StatusBar.Title1:SetPoint("TOPLEFT", NS.StatusBar, "BOTTOMLEFT")
    NS.StatusBar.Title1:SetPoint("TOPRIGHT", NS.StatusBar, "BOTTOMRIGHT")
    NS.StatusBar.Title1:SetFont(
        SM:Fetch("font", NS.Options.Frames.Footer.Font),
        NS.Options.Frames.Footer.FontSize,
        NS.Options.Frames.Footer.FontOutline
    )
    NS.StatusBar.Title1:SetJustifyH("LEFT")
    NS.StatusBar.Title1:SetShadowOffset(1, -1)
    NS.StatusBar.Title1:SetShadowColor(0,0,0,0)
    NS.StatusBar.Title1:SetParent(NS.StatusBar.Clip)
    -- HeaderFrame Highlight
    NS.HeaderFrame.Highlight = NS.HeaderFrame.Highlight or CreateFrame("Frame", "weizPVP:HeaderFrame.Highlight", NS.HeaderFrame)
    NS.HeaderFrame.Highlight:SetPoint("TOPRIGHT", NS.HeaderFrame, "TOPRIGHT", XEN.ScalePixelsToUi(-1), XEN.ScalePixelsToUi(-1))
    NS.HeaderFrame.Highlight:SetPoint("BOTTOMLEFT", NS.HeaderFrame, "BOTTOMLEFT", XEN.ScalePixelsToUi(1), XEN.ScalePixelsToUi(1))
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
    NS.CoreFrame:SetClampRectInsets(
        0,
        0,
        XEN.ScalePixelsToUi(NS.Options.Frames.Header.Height + 1),
        XEN.ScalePixelsToUi(-1 * (NS.Options.Frames.Footer.Height))
    )
    -- Create Resize Grip button
    NS.CreateResizeGrip()
    if NS.Options.Frames.Scale then
        NS.CoreFrame:SetScale(NS.Options.Frames.Scale)
        NS.HeaderFrame:SetScale(NS.Options.Frames.Scale)
    end
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
        NS.SetStatusBarMessage("Window is now|cFFF4564D PINNED|r", true, 3)
    elseif value == false then
        NS.SetStatusBarMessage("Window is now|cff42dcf4 UNPINNED|r", true, 3)
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

--> Window: Set Window Settings
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
