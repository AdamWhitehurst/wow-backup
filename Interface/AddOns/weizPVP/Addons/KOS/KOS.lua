-------------------------------------------------------------------------------
--|> KOS
--: Kill On Sight player tracking, notifications and visual indicators
-------------------------------------------------------------------------------
--|> INIT
local _, NS = ...
NS.KOS = {}
local XEN = XEN

local function IsPlayerTarget()
    if NS.GetUnitName("target") == NS.KOS.menuPlayerName then
        NS.Crosshair.Reset()
        NS.Crosshair.NewTarget()
    end
end

local select = select
local gsub = gsub
local GetClassColor = GetClassColor
local WrapTextInColorCode = WrapTextInColorCode
function NS.KOS.ChangeKosStatus(playerName)
    if not playerName then
        return
    end
    NS.KOS.menuPlayerName = XEN.Unescape(playerName)
    local unescapedName = XEN.Unescape(playerName)
    local printedName = WrapTextInColorCode(gsub(unescapedName, "-(.*)", ""), select(4, GetClassColor(NS.PlayerDB[unescapedName].Class)))
    local printedRealm = gsub(unescapedName, "^(.*-)", "")
    if NS.KosList[NS.KOS.menuPlayerName] then
        NS.KOS.RemovePlayer(NS.KOS.menuPlayerName)
        NS.PrintAddonMessage(
            "|TInterface\\Addons\\weizPVP\\Media\\Icons\\kos.tga:0|t |cff8fdaffRemoved|r |cff666666:|r " ..
                printedName .. " |cffbbbbbb-|r " .. printedRealm
        )
    elseif NS.KOS.menuPlayerName then
        NS.KOS.AddPlayer(NS.KOS.menuPlayerName)
        NS.PrintAddonMessage(
            "|TInterface\\Addons\\weizPVP\\Media\\Icons\\kos.tga:0|t |cff8fdaffAdded|r |cff666666:|r " ..
                printedName .. " |cffbbbbbb-|r " .. printedRealm
        )
    end
    IsPlayerTarget()
    NS.RefreshCurrentList()
end

function NS.KOS.SetMenuText(playerName)
    return NS.KosList[playerName] and
        "|TInterface\\Addons\\weizPVP\\Addons\\KOS\\Media\\kos_icon_remove.tga:0|t |cff8fdaffRemove from|r |cffff0037KOS|r" or
        "|TInterface\\Addons\\weizPVP\\Addons\\KOS\\Media\\kos_icon_add.tga:0|t |cff8fdaffAdd to|r |cffff0037KOS|r"
end

function NS.KOS.ClearStoredList()
    wipe(NS.KosList)
end

--> KOS EVENT FRAME
NS.KOS.Events = CreateFrame("Frame", "weizPVP.KOS.Frame", UIParent)
NS.KOS.Events:SetPoint("CENTER")
NS.KOS.Events:SetSize(32, 32)
NS.KOS.Events:Hide()

--> OnEvent
NS.KOS.Events:SetScript(
    "OnEvent",
    function(self, event, ...)
        return self[event] and self[event](self, ...)
    end
)

--> Enable
function NS.KOS.Enable()
    NS.KOS.Events:RegisterEvent("PLAYER_TARGET_CHANGED")
end

--> Disable
function NS.KOS.Disable()
    NS.KOS.Events:UnregisterEvent("PLAYER_TARGET_CHANGED")
end

--> AddPlayer
function NS.KOS.AddPlayer(playerName)
    if not playerName then
        return
    end
    -- Add player to KOS list and refresh the core player list
    NS.KosList[playerName] = true
    NS.SortNearbyList()
    NS.RefreshCurrentList()
    -- Refresh Crosshair is targeting the added player
    if (NS.GetUnitName("target") == playerName) and NS.Options.Crosshair.Enabled then
        NS.Crosshair.Reset()
        NS.Crosshair.NewTarget()
    end
end

--> RemovePlayer
function NS.KOS.RemovePlayer(playerName)
    -- Remove from KOS list and refresh list
    NS.KosList[playerName] = nil
    NS.SortNearbyList()
    NS.RefreshCurrentList()
    -- Refresh Crosshair is targeting the added player
    if (NS.GetUnitName("target") == playerName) and NS.Options.Crosshair.Enabled then
        NS.Crosshair.Reset()
        NS.Crosshair.NewTarget()
    end
end
