-------------------------------------------------------------------------------
--|> XEN: Core
-------------------------------------------------------------------------------
local ADDON_NAME, NS = ...

--|> Upvalue Globals
-------------------------------------------------------------------------------
if XEN then
    return
end
_G.XEN = {}
NS.XEN = _G.XEN
local XEN = NS.XEN

function XEN.Init()
    XEN.UpdateDisplayInfo()
    XEN.Ticker =
        XEN.Ticker or
        C_Timer.NewTicker(
            1,
            function()
                XEN.TickerFunc()
            end
        )
end

XEN._display = {}

function XEN.UpdateDisplayInfo()
    XEN._display.ScreenWidth = GetScreenWidth()
    XEN._display.ScreenHeight = GetScreenHeight()
    XEN._display.xFactor = (768 / XEN._display.ScreenWidth) * (XEN._display.ScreenWidth / XEN._display.ScreenHeight)
    XEN._display.yFactor = 768 / XEN._display.ScreenHeight
    XEN._display.UIScale = UIParent:GetScale()
    XEN._display.UiMultiplier = 1 / (select(2, GetCurrentScaledResolution()) / GetScreenHeight())
    XEN._display.DPIScale = GetScreenDPIScale
    XEN._display.EffectiveScale = UIParent:GetEffectiveScale()
end

function XEN.DisplayUpdated()
    XEN.UpdateDisplayInfo()
end
local Round, GetFramerate = Round, GetFramerate
function XEN.TickerFunc()
    XEN._display.FPS = Round(GetFramerate())
end
