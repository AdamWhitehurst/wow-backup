-------------------------------------------------------------------------------
--|> Modules: UI
-------------------------------------------------------------------------------
local _, NS = ...
local GetScreenWidth = GetScreenWidth
local GetScreenHeight = GetScreenHeight
local abs = abs

--> SCALE COORDS
--: IN: X,Y coords of where to place something
--: OUT: X, Y coords based effective scale of the game window.fi
function NS.ScaleCoords(xPixel, yPixel)
    local xFactor = NS.Display.xFactor
    local yFactor = NS.Display.yFactor
    local x, y = xPixel / xFactor, yPixel / yFactor
    x, y = x - x % 1, y - y % 1
    return x * xFactor, y * yFactor
end

--> GET FRAME POSITION
function NS.GetFramePosition(frame)
    if not frame then
        return
    elseif frame:IsProtected() then
        return
    elseif not frame:GetLeft() then
        return
    end
    if frame then
        local parent = frame:GetParent() or nil
        local s = frame:GetScale()
        local left, top = frame:GetLeft() * s, frame:GetTop() * s
        local right, bottom = frame:GetRight() * s, frame:GetBottom() * s
        local w, h = frame:GetWidth() * s, frame:GetHeight() * s
        local pWidth, pHeight
        if not parent then
            pWidth = GetScreenWidth() * UIParent:GetScale()
            pHeight = GetScreenHeight() * UIParent:GetScale()
        else
            pWidth, pHeight = parent:GetWidth(), parent:GetHeight()
        end
        local x, y
        local point
        if left < (pWidth - right) and left < abs((left + right) / 2 - pWidth / 2) then
            x = left
            point = "LEFT"
        elseif (pWidth - right) < abs((left + right) / 2 - pWidth / 2) then
            x = right - pWidth
            point = "RIGHT"
        else
            x = (left + right) / 2 - pWidth / 2
        end
        if bottom < (pHeight - top) and bottom < abs((bottom + top) / 2 - pHeight / 2) then
            y = bottom
            if point then
                point = "BOTTOM" .. point
            else
                point = "BOTTOM"
            end
        elseif (pHeight - top) < abs((bottom + top) / 2 - pHeight / 2) then
            y = top - pHeight
            if point then
                point = "TOP" .. point
            else
                point = "TOP"
            end
        else
            y = (bottom + top) / 2 - pHeight / 2
        end
        point = point or "CENTER"
        frame:ClearAllPoints()
        frame:SetPoint(point, UIParent, point, x / s, y / s)
        return x, y, w, h, s, point
    end
    return nil
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
    local x2, y2, w2, _, s2, point2 = NS.GetFramePosition(NS.HeaderFrame)
    NS.Options.Frames.Header.X = x2
    NS.Options.Frames.Header.Y = y2
    NS.Options.Frames.Header.Width = w2
    NS.Options.Frames.Header.Point = point2
    NS.Options.Frames.Header.Scale = s2
    NS.HeaderFrame:ClearAllPoints()
    NS.HeaderFrame:SetPoint("BOTTOM", NS.CoreFrame, "TOP")
    NS.HeaderFrame:SetPoint("LEFT", NS.CoreFrame, "LEFT")
    NS.HeaderFrame:SetPoint("RIGHT", NS.CoreFrame, "RIGHT")
    NS.ChangeTargetIcon() -- swap target icon if needed
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
    settings.pointH = NS.Options.Frames.Header.Point or "CENTER"
    settings.sH = NS.Options.Frames.Header.Scale
    NS.HeaderFrame:ClearAllPoints()
    NS.HeaderFrame:SetHeight(NS._DefaultOptions.profile.Options.Frames.Header.Height)
    NS.HeaderFrame:SetPoint("BOTTOM", NS.CoreFrame, "TOP")
    NS.HeaderFrame:SetPoint("LEFT", NS.CoreFrame, "LEFT")
    NS.HeaderFrame:SetPoint("RIGHT", NS.CoreFrame, "RIGHT")
    -- XEN.RescaleFrameAndChildren(NS.CoreFrame)
end

--> Format Player Name for Display
-- Returns "playerName-realmName" for all players, no matter the realm
local gsub = gsub
local string_find = string.find
local WrapTextInColorCode = WrapTextInColorCode
local GetClassColor = GetClassColor
local select = select
function NS.FormatPlayerNameForDisplay(playerName)
    local charName = WrapTextInColorCode(gsub(playerName, "-(.*)", ""), select(4, GetClassColor(NS.PlayerDB[playerName].Class)))
    if not string_find(playerName, NS.PlayerRealm) then
        charName = charName .. "|cFFFF00CC*|r"
    end
    return charName
end

--> Format Relative Level for Display
-- @tparam number level Incoming level to format and color based on difference in levels vs the current player
function NS.FormatRelativeLevelForDisplay(level)
    if level then
        local playerLevel = NS.Player.Level
        if level == 0 then --> 0
            return "|cFFFF00CC??|r"
        elseif level < playerLevel - 20 then --> 20+ below
            return "|cFF7cffd1" .. level .. "|r"
        elseif level < playerLevel - 10 then --> 10-20 below
            return "|cFF7cd1ff" .. level .. "|r"
        elseif level < playerLevel then --> 1-9 below
            return "|cFF7cff7f" .. level .. "|r"
        elseif level > playerLevel then --> Higher level
            return "|cFFf7694a" .. level .. "|r"
        else
            return "|cFFffc863" .. level .. "|r"
        end
    end
end
