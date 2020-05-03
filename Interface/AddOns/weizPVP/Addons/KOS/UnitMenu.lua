-------------------------------------------------------------------------------
--|> UNIT MENU
--: Creates a new entry in the unit right click popup menu for adding/removing a player on the KOS list
-------------------------------------------------------------------------------
local _, NS = ...

--> INSERT BUTTON  ENTRY INTO THE"PLAYER" POPUP MENU
local info
local classColoredPlayerName
local playerName
local menuFrame
local unit
function NS.KOS.Events.GLOBAL_MOUSE_UP(_, button)
    --> Confirm click was from the unit popup menu
    if button ~= "RightButton" then
        return
    elseif (not UnitPopup_HasVisibleMenu()) then
        return
    end
    menuFrame = UnitPopup_HasVisibleMenu() and UIDropDownMenu_GetCurrentDropDown() or nil
    unit = menuFrame.unit
    --> Verify valid unit
    if not NS.IsUnitValidForTracking(unit) then
        return
    end
    --> Get Popup menu frame
    if not (menuFrame) or (not unit) then
        return
    end
    --> Get player name and create class-colored name string
    playerName = NS.GetUnitName(unit)
    classColoredPlayerName = WrapTextInColorCode(playerName, select(4, GetClassColor(NS.PlayerDB[playerName].Class)))
    --> Build unit popup menu button
    info = {}
    info.text = NS.KOS.SetMenuText(playerName)
    info.notCheckable = 1
    info.padding = 0
    info.leftPadding = 0
    info.func = function()
        NS.KOS.ChangeKosStatus(classColoredPlayerName)
    end
    --> Add button to popup menu
    UIDropDownMenu_AddButton(info)
end
