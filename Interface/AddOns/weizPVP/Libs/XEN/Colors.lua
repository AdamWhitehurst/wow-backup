-------------------------------------------------------------------------------
--|> XEN: Colors
-------------------------------------------------------------------------------
--|> Upvalue Globals
-------------------------------------------------------------------------------
local XEN = XEN
if XEN.Colors then
    return
end
XEN.Colors = {}
local math_floor = math.floor
local math_abs = math.abs
local math_min = math.min
local math_max = math.max
local Clamp = Clamp

-------------------------------------------------------------------------------
--|> COLOR FUNCTIONS
-------------------------------------------------------------------------------
--> Adjust RGB Tint
-----------------------------------------------------------
function XEN.AdjustRGBTint(r, g, b, value)
    if not value then
        return r, g, b
    end
    local h, s, v = XEN.RGBToHSV(r, g, b)
    local cv = v
    cv = Clamp(value, math_min((cv + value), 1 - math_abs(value)), math_max((cv + value), 0.8))
    return XEN.HSVToRGB(h, s, cv)
end

--> RGB TO HSV
-----------------------------------------------------------
function XEN.RGB2Hex(r, g, b)
    r = r <= 255 and r >= 0 and r or 0
    g = g <= 255 and g >= 0 and g or 0
    b = b <= 255 and b >= 0 and b or 0
    return string.format("%02x%02x%02x", r, g, b)
end

--> RGB TO HSV
-----------------------------------------------------------
function XEN.RGBToHSV(r, g, b)
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
function XEN.HSVToRGB(ch, cs, cv)
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

--> GET COLOR VALUE FROM GRADIENT
-----------------------------------------------------------
--: value = 0-1 value
--: ... = color values
local rGrad, gGrad, bGrad
local numGrad
local segment, relperc
local r1, g1, b1, r2, g2, b2 = 1, 0, 0, 1, 0, 0
function XEN.GetColorValueFromGradient(value, ...)
    if value >= 1 then
        rGrad, gGrad, bGrad = select(select("#", ...) - 2, ...)
        XEN.RGB2Hex(abs(rGrad * 255), abs(gGrad * 255), abs(bGrad * 255))
    elseif value <= 0 then
        rGrad, gGrad, bGrad = ...
        XEN.RGB2Hex(abs(rGrad * 255), abs(gGrad * 255), abs(bGrad * 255))
    end
    numGrad = select("#", ...) / 3
    segment, relperc = math.modf(value * (numGrad - 1))
    r1, g1, b1, r2, g2, b2 = select((segment * 3) + 1, ...)
    rGrad = r1 + (r2 - r1) * relperc
    gGrad = g1 + (g2 - g1) * relperc
    bGrad = b1 + (b2 - b1) * relperc
    return XEN.RGB2Hex(abs(rGrad * 255), abs(gGrad * 255), abs(bGrad * 255))
end
