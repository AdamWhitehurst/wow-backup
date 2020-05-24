-------------------------------------------------------------------------------
--|> UNIT MENU
--: Creates a new entry in the unit right click popup menu for adding/removing a player on the KOS list
-------------------------------------------------------------------------------
local _, NS = ...

hooksecurefunc(
    "UnitPopup_ShowMenu",
    function()
      local menuLevel = UIDROPDOWNMENU_MENU_LEVEL
        if (menuLevel > 1) then
            return
        end
        local menuFrame = UnitPopup_HasVisibleMenu() and UIDropDownMenu_GetCurrentDropDown() or nil
        if (not menuFrame) or (not menuFrame.unit) then
            return
        end
        local unit = menuFrame.unit
        if not NS.IsUnitValidForTracking(unit) then -- valid unit check
            return
        end
        local playerName = NS.GetUnitName(unit)
        if not NS.PlayerDB[playerName] or not NS.PlayerDB[playerName].Class then -- confirm player exists in db
            return
        end
        local classColoredPlayerName = WrapTextInColorCode(playerName, select(4, GetClassColor(NS.PlayerDB[playerName].Class)))
        local info = UIDropDownMenu_CreateInfo()
        info.text = NS.KOS.SetMenuText(playerName)
        info.notCheckable = 1
        info.padding = 0
        info.leftPadding = 0
        info.func = function()
            NS.KOS.ChangeKosStatus(classColoredPlayerName)
        end
        UIDropDownMenu_AddButton(info)
    end
)
