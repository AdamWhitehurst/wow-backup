local _, NS = ...
local menuPlayerGUID
local infoName = {}
local infoKosToggle = {}
function weizPVP_PlayerBarMenu_OnLoad()
    local cache = NS.PlayerActiveCache[menuPlayerGUID]
    if not cache then
        return
    end
    --> NAME
    infoName = {}
    infoName.text = NS.FormatPlayerNameForDisplay(NS.KOS.menuPlayerName)
    infoName.notCheckable = 1
    infoName.notClickable = 1
    infoName.padding = 0
    infoName.leftPadding = 0
    UIDropDownMenu_AddButton(infoName)
    --> KOS TOGGLE
    infoKosToggle = {}
    infoKosToggle.text = NS.KOS.SetMenuText(NS.KOS.menuPlayerName)
    infoKosToggle.notCheckable = 1
    infoKosToggle.padding = 0
    infoKosToggle.leftPadding = 0
    infoKosToggle.func = function()
        NS.KOS.ChangeKosStatus(NS.KOS.menuPlayerName)
    end
    UIDropDownMenu_AddButton(infoKosToggle)
end

function NS.PlayerBarMenu_OnClick(bar)
    if not bar then
        return
    end
    NS.KOS.menuPlayerName = bar.name
    menuPlayerGUID = bar.GUID
    ToggleDropDownMenu(1, nil, weizPVP_PlayerBarMenu, "cursor", 0, 0)
end
