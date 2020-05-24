-------------------------------------------------------------------------------
--|> XEN: UI
-- Functions involving the display of visual elements
-------------------------------------------------------------------------------
--|> Upvalue Globals
-------------------------------------------------------------------------------
local XEN = XEN
if XEN.UI then
    return
end
XEN.UI = {}
local GetScreenHeight = GetScreenHeight
local select = select
local Round = Round

-------------------------------------------------------------------------------
--|> INFO FUNCTIONS
-------------------------------------------------------------------------------
--> GET UI MULTIPLIER
---------------------------------------
function XEN.GetUiMultiplier()
    XEN._display.UiMultiplier = 1 / (select(2, GetPhysicalScreenSize()) / GetScreenHeight())
    return XEN._display.UiMultiplier
end

-------------------------------------------------------------------------------
--|> SCALING FUNCTIONS
-------------------------------------------------------------------------------
--> SCALE COORDS
--: IN: X,Y coords of where to place something
--: OUT: X, Y coords based effective scale of the game window.fi
-------------------------------------------------------
function XEN.ScaleCoords(xPixel, yPixel)
    if (not xPixel) or (not yPixel) then
        return
    end
    local x, y = xPixel / XEN._display.xFactor, yPixel / XEN._display.yFactor
    x, y = x - x % 1, y - y % 1
    return x * XEN._display.xFactor, y * XEN._display.yFactor
end

--> SCALE PIXELS TO UI
---------------------------------------
function XEN.ScalePixelsToUi(pixels)
    if not pixels then
        return nil
    end
    if not XEN._display.UiMultiplier then
        XEN.GetUiMultiplier()
    end
    return (XEN._display.UiMultiplier * pixels)
end

-------------------------------------------------------------------------------
--|> POSITIONING FUNCTIONS
-------------------------------------------------------------------------------
--> SNAP FRAME TO PIXEL BOUNDARY
-------------------------------------------------------------------------------
function XEN.SnapFrameToPixelBoundary(frame)
    if not frame then
        return
    elseif frame:IsProtected() then
        return
    elseif not frame:GetLeft() then
        return
    end
    local x = Round(frame:GetLeft())
    local frameHeight = frame:GetHeight() * frame:GetScale()
    local UIParentHeight = select(4, UIParent:GetRect())
    local y = Round(frame:GetBottom() + frameHeight - UIParentHeight)
    frame:ClearAllPoints()
    frame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", x, y)
end

-------------------------------------------------------------------------------
--|> RESCALING
-------------------------------------------------------------------------------
local function ScaleAnchorPoints(region)
    if not region then
        return nil
    end
    local numP = region:GetNumPoints()
    for p = 1, numP do
        local point, relativeTo, relativePoint, xOfs, yOfs = region:GetPoint(p)
        xOfs = XEN.ScalePixelsToUi(xOfs) or 0
        yOfs = XEN.ScalePixelsToUi(yOfs) or 0
        region:SetPoint(point, relativeTo, relativePoint, xOfs, yOfs)
    end
    return true
end

local function ScaleFontSize(font)
    if not font then
        return
    end
    --> Set Scaled Region Height... if one was set
    if font:GetHeight() and not font.rescaled then
        font:SetHeight(XEN.ScalePixelsToUi(font:GetHeight()))
        font.rescaled = true
    end
end

local function RescaleRegionSize(region)
    if not region then
        return
    end
    if not region.rescaled then
        region:SetWidth(XEN.ScalePixelsToUi(region:GetWidth()))
        region:SetHeight(XEN.ScalePixelsToUi(region:GetHeight()))
        region.rescaled = true
    end
end

local function RescaleRegionsInFrame(frame)
    local numR = frame:GetNumRegions()
    local regions = {}
    --> Run for each region
    for i = 1, numR do
        regions[i] = select(i, frame:GetRegions())
        -- Rescale
        if not regions[i].rescaled then
            -- Rescale multiple widget types
            if regions[i]:GetObjectType() == "FontString" then --> Get if font
                ScaleFontSize(regions[i])
            else
                RescaleRegionSize(regions[i])
            end
            ScaleAnchorPoints(regions[i])
        end
    end
end

--> RESCALE FRAME AND CHILDREN
function XEN.RescaleFrameAndChildren(frame)
    -- input check
    if (not frame) or frame:IsProtected() then
        return
    end
    if not frame.rescaled then -- rescale check
        -- Rescale frame
        RescaleRegionSize(frame)
        frame.rescaled = true
    end
    -- Rescale Frame's Children
    local numC = frame:GetNumChildren()
    local children = {}
    for i = 1, numC do
        children[i] = select(i, frame:GetChildren())
        -- Rescale
        if not children[i].rescaled then
            -- Set rescaled height and width
            RescaleRegionSize(children[i])
            -- Scale anchor points
            ScaleAnchorPoints(children[i])
            children[i].rescaled = true
            -- Check regions on child frames
            RescaleRegionsInFrame(children[i])
        end
    end
    -- Rescale Frame's Regions
    RescaleRegionsInFrame(frame)
    XEN.SnapFrameToPixelBoundary(frame)
    return true
end

--> RESCALE FRAME
function XEN.ResizeFrameToUiScale(frame)
    -- input check
    if (not frame) or (not frame.rescaled) then
        return
    end
    RescaleRegionSize(frame)
    return
end
