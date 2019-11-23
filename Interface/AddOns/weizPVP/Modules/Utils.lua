-------------------------------------------------------------------------------
--|> Utils
-- Utilities for common functions.
-------------------------------------------------------------------------------
--|> UPVALUE GLOBALS
-------------------------------------------------------------------------------
local weizPVP = weizPVP
local math_floor = math.floor
local math_abs = math.abs
local math_min = math.min
local math_max = math.max
local unpack = unpack
local SELECTED_CHAT_FRAME = SELECTED_CHAT_FRAME
local DEFAULT_CHAT_FRAME = DEFAULT_CHAT_FRAME
local GetScreenWidth = GetScreenWidth
local GetScreenHeight = GetScreenHeight
local abs = abs

-------------------------------------------------------------------------------
--|> FRAME FUNCTIONS
-------------------------------------------------------------------------------
--> SCALE COORDS
-------------------------------------------------------
--: IN: X,Y coords of where to place something
--: OUT: X, Y coords based effective scale of the game window.fi
-------------------------------------------------------
function weizPVP.ScaleCoords(xPixel, yPixel)
    local xFactor = weizPVP.Display.xFactor
    local yFactor = weizPVP.Display.yFactor
    local x, y = xPixel / xFactor, yPixel / yFactor
    x, y = x - x % 1, y - y % 1
    return x * xFactor, y * yFactor
end

function weizPVP:GetFramePosition(frame)
    if frame then
        local parent = frame:GetParent() or nil
        local s = frame:GetScale()
        local left, top = frame:GetLeft() * s, frame:GetTop() * s
        local right, bottom = frame:GetRight() * s, frame:GetBottom() * s
        local w, h = frame:GetWidth() * s, frame:GetHeight() * s
        local pwidth, pheight
        if not parent then
            pwidth = GetScreenWidth() * UIParent:GetScale()
            pheight = GetScreenHeight() * UIParent:GetScale()
        else
            pwidth, pheight = parent:GetWidth(), parent:GetHeight()
        end

        local x, y
        local point
        if left < (pwidth - right) and left < abs((left + right) / 2 - pwidth / 2) then
            x = left
            point = "LEFT"
        elseif (pwidth - right) < abs((left + right) / 2 - pwidth / 2) then
            x = right - pwidth
            point = "RIGHT"
        else
            x = (left + right) / 2 - pwidth / 2
        end

        if bottom < (pheight - top) and bottom < abs((bottom + top) / 2 - pheight / 2) then
            y = bottom
            if point then
                point = "BOTTOM" .. point
            else
                point = "BOTTOM"
            end
        elseif (pheight - top) < abs((bottom + top) / 2 - pheight / 2) then
            y = top - pheight
            if point then
                point = "TOP" .. point
            else
                point = "TOP"
            end
        else
            y = (bottom + top) / 2 - pheight / 2
        end
        point = point or "CENTER"

        frame:ClearAllPoints()
        frame:SetPoint(point, UIParent, point, x / s, y / s)
        return x, y, w, h, s, point
    end
    return nil
end

function weizPVP:SetFramePosition(frame, settings)
    if not frame and not settings then
        return
    end
    if settings.s then
        frame:SetScale(settings.s)
    else
        settings.s = frame:GetScale()
    end
    settings.x = settings.x / settings.s
    settings.y = settings.y / settings.s

    if not settings.point then
        frame:SetPoint("TOPLEFT", frame:GetParent(), "BOTTOMLEFT", settings.x, settings.y)
    else
        frame:SetPoint(settings.point, frame:GetParent(), settings.point, settings.x, settings.y)
    end
end

-------------------------------------------------------------------------------
--|> COLOR FUNCTIONS
-------------------------------------------------------------------------------
--> Adjust RGB Tint
-----------------------------------------------------------
function weizPVP.AdjustRGBTint(r, g, b, value)
    -- local r, g, b = unpack(rgb)
    local valueAbs = math_abs(value)
    local h, s, v = weizPVP.RGBToHSV(r, g, b)
    local cv = v
    cv = Clamp(value, math_min((cv + value), 1 - valueAbs), math_max((cv + value), 0.8))
    return weizPVP.HSVToRGB(h, s, cv)
end

--> RGB TO HSV
-----------------------------------------------------------
function weizPVP.RGBToHSV(r, g, b)
    local mincolor, maxcolor = math_min(r, g, b), math_max(r, g, b)
    local ch, cs, cv = 0, 0, maxcolor
    if maxcolor > 0 then
        local delta = maxcolor - mincolor
        cs = delta / maxcolor
        if delta > 0 then
            if r == maxcolor then
                ch = (g - b) / delta
            elseif g == maxcolor then
                ch = 2 + ((b - r) / delta)
            else
                ch = 4 + ((r - g) / delta)
            end
        end
        if ch < 0 then
            ch = ch + 6
        end
        ch = ch / 6
    end
    return ch, cs, cv
end

--> HSV TO RGB
-----------------------------------------------------------
function weizPVP.HSVToRGB(ch, cs, cv)
    if not ch or not cs or not cv then
        return 1, 0, 0
    end
    if ch == 1 then
        ch = 0
    end
    local r, g, b = cv, cv, cv
    if cs > 0 then
        local h = ch * 6
        local sextant = math_floor(h)
        local fract = h - sextant
        local p, q, t = cv * (1 - cs), cv * (1 - (cs * fract)), cv * (1 - (cs * (1 - fract)))
        if sextant == 0 then
            r, g, b = cv, t, p
        elseif sextant == 1 then
            r, g, b = q, cv, p
        elseif sextant == 2 then
            r, g, b = p, cv, t
        elseif sextant == 3 then
            r, g, b = p, q, cv
        elseif sextant == 4 then
            r, g, b = t, p, cv
        else
            r, g, b = cv, p, q
        end
    end
    return r, g, b
end

-------------------------------------------------------------------------------
--|> CHAT FUNCTIONS
-------------------------------------------------------------------------------
--> PRINT ADDON MESSAGE
-----------------------------------------------------------
function weizPVP:PrintAddonMessage(msg)
    --> Print message with default addon prefix
    (SELECTED_CHAT_FRAME or DEFAULT_CHAT_FRAME):AddMessage(
        "|TInterface\\Addons\\weizPVP\\Media\\Icons\\weizpvp_chat.tga:0|t" .. msg
    )
end
