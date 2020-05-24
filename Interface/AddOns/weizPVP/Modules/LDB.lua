-------------------------------------------------------------------------------
--|> LDB
-------------------------------------------------------------------------------
local ADDON_NAME, NS = ...
local InterfaceOptionsFrame = InterfaceOptionsFrame
local addonName, _ = ...
local ldb = LibStub:GetLibrary("LibDataBroker-1.1", true)
if not ldb then
    return
end

local plugin =
    ldb:NewDataObject(
    addonName,
    {
        type = "data source",
        text = "0",
        icon = "Interface\\AddOns\\weizPVP\\Media\\weizpvp_minimap.tga"
    }
)

function plugin.OnClick(_, button)
    if button == "RightButton" then
        -- RIGHT-CLICK = Toggle Interface Options
        if InterfaceOptionsFrame:IsShown() then
            InterfaceOptionsFrame:Hide()
        else
            InterfaceOptionsFrame_OpenToCategory(ADDON_NAME)
            local _, max = InterfaceOptionsFrameAddOnsListScrollBar:GetMinMaxValues()
            InterfaceOptionsFrameAddOnsListScrollBar:SetValue(max)
            InterfaceOptionsFrame_OpenToCategory(ADDON_NAME)
        end
    elseif button == "LeftButton" then
        -- LEFT-CLICK = Toggle window
        NS.Options.Window.Visible = not NS.Options.Window.Visible
        NS.SetWindowSettings()
    end
end

hooksecurefunc(
    NS,
    "UpdateNearbyCount",
    function()
        plugin.text = NS.HeaderFrame.TitleVar:GetText()
        plugin.icon = "Interface\\AddOns\\weizPVP\\Media\\weizpvp_minimap.tga"
    end
)

function plugin.OnTooltipShow(tip)
    tip:AddDoubleLine(NS.addonString, NS.HeaderFrame.TitleVar:GetText(), nil, nil, nil, 0.2, 1, 0.2)
    tip:AddLine(" ")
    tip:AddDoubleLine("Right-Click", "|cff00ff05Toggle Options|r", nil, nil, nil, 0.2, 1, 0.2)
    tip:AddDoubleLine("Left-Click", "|cff00ff05Toggle Main Window|r", nil, nil, nil, 0.2, 1, 0.2)
end

local f = CreateFrame("Frame")
f:SetScript(
    "OnEvent",
    function()
        local icon = LibStub("LibDBIcon-1.0", true)
        if not icon then
            return
        end
        icon:Register(addonName, plugin, NS.Options.LDB)

        if NS.Options.LDB.minimap == true then
            LibStub("LibDBIcon-1.0"):Show(ADDON_NAME)
        else
            LibStub("LibDBIcon-1.0"):Hide(ADDON_NAME)
        end
    end
)
f:RegisterEvent("PLAYER_LOGIN")
