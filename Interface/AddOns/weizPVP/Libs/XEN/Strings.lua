-------------------------------------------------------------------------------
--|> XEN: Strings
-------------------------------------------------------------------------------
--|> Upvalue Globals
-------------------------------------------------------------------------------
local XEN = XEN
local gsub = gsub
if XEN.Strings then
    return
end
XEN.Strings = {}
-------------------------------------------------------------------------------
--|> FUNCTIONS
-------------------------------------------------------------------------------
--> UNESCAPE
-----------------------------------------------------------
local escapes = {
    ["|c%x%x%x%x%x%x%x%x"] = "", -- color start
    ["|r"] = "", -- color end
    ["|H.-|h(.-)|h"] = "%1", -- links
    ["|T.-|t"] = "", -- textures
    ["{.-}"] = "" -- raid target icons
}

function XEN.Unescape(str)
    for k, v in pairs(escapes) do
        str = gsub(str, k, v)
    end
    return str
end
--> UNESCAPE
-----------------------------------------------------------
--: "a.bbc.d" returns {"a", "bbc", "d"}
function XEN.SplitByDot(str)
    str = str or ""
    local t, count = {}, 0
    str:gsub(
        "([^%.]+)",
        function(c)
            count = count + 1
            t[count] = c
        end
    )
    return t
end
