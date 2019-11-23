-------------------------------------------------------------------------------
--|> LDB
-------------------------------------------------------------------------------
local weizPVP = weizPVP
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
        icon = "Interface\\AddOns\\weizPVP\\Media\\Icons\\weizpvp_minimap.tga"
    }
)

function plugin.OnClick(self, button)
    if button == "RightButton" then
        if IsShiftKeyDown() then --> Shift-Left-Click: Toggle Options
            if weizPVP.Options.Window.Visible == true then
                weizPVP.Options.Window.Visible = false
                weizPVP.SetWindowSettings()
            else
                weizPVP.Options.Window.Visible = true
                weizPVP.SetWindowSettings()
            end
        else
            if InterfaceOptionsFrame:IsShown() then
                InterfaceOptionsFrame:Hide()
            else
                InterfaceOptionsFrame_OpenToCategory("weiz|cffffa012PVP|r")
                local _, Smax = InterfaceOptionsFrameAddOnsListScrollBar:GetMinMaxValues()
                InterfaceOptionsFrameAddOnsListScrollBar:SetValue(Smax)
                --> Running for 2nd time(blizz bug work around)
                InterfaceOptionsFrame_OpenToCategory("weiz|cffffa012PVP|r")
            end
        end
    end
end

hooksecurefunc(
    weizPVP,
    "UpdateNearbyCount",
    function()
        plugin.text = weizPVP.HeaderFrame.TitleVar:GetText()
        plugin.icon = "Interface\\AddOns\\weizPVP\\Media\\Icons\\weizpvp_minimap.tga"
    end
)

do
    function plugin.OnTooltipShow(tip)
        tip:AddDoubleLine("|cffffffffweiz|r|cffffa012PVP|r", weizPVP.HeaderFrame.TitleVar:GetText(), nil, nil, nil, 0.2, 1, 0.2)
        if weizPVP.Options.LagMode.Enabled == true then
            if weizPVP.Addon.LagModeActive == true then
                tip:AddLine("|cffffffffLagMode:|r  |cFFF4564DACTIVE|r")
            else
                tip:AddLine("|cffffffffLagMode:|r  IDLE")
            end
        end
        tip:AddLine(" ")
        tip:AddDoubleLine("Right-Click", "|cff00ff05Toggle Options|r", nil, nil, nil, 0.2, 1, 0.2)
        tip:AddDoubleLine("Shift-Right-Click", "|cff00ff05Toggle Window|r", nil, nil, nil, 0.2, 1, 0.2)
    end
end

local f = CreateFrame("Frame")
f:SetScript(
    "OnEvent",
    function()
        local icon = LibStub("LibDBIcon-1.0", true)
        if not icon then
            return
        end
        icon:Register(addonName, plugin, weizPVP.Options.LDB)

        if weizPVP.Options.LDB.minimap == true then
            LibStub("LibDBIcon-1.0"):Show("weizPVP")
        else
            LibStub("LibDBIcon-1.0"):Hide("weizPVP")
        end
    end
)
f:RegisterEvent("PLAYER_LOGIN")
