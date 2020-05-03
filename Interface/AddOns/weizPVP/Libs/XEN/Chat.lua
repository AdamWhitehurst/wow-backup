-------------------------------------------------------------------------------
--|> XEN: Chat
-------------------------------------------------------------------------------
--|> Upvalue Globals
-------------------------------------------------------------------------------
if XEN.Chat then
    return
end
local XEN = XEN
XEN.Chat = {}
local SELECTED_CHAT_FRAME = SELECTED_CHAT_FRAME
local DEFAULT_CHAT_FRAME = DEFAULT_CHAT_FRAME

-------------------------------------------------------------------------------
--|> CHAT FUNCTIONS
-------------------------------------------------------------------------------
--> PRINT ADDON MESSAGE
-----------------------------------------------------------
function XEN.PrintAddonMessage(msg)
    --> Print message with default addon prefix
    (SELECTED_CHAT_FRAME or DEFAULT_CHAT_FRAME):AddMessage("XEN: " .. msg)
end
