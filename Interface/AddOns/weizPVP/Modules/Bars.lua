-------------------------------------------------------------------------------
--|> Bars
--: Manages the display of the bars and their elements representing detected players
-------------------------------------------------------------------------------
--> Namespace
local _, NS = ...
--> Upvalues
local UIFrameFadeIn = UIFrameFadeIn
local UIFrameFadeOut = UIFrameFadeOut
local InCombatLockdown = InCombatLockdown
local GetTime = GetTime

--|> LIBS
-------------------------------------------------------------------------------
local SM = LibStub:GetLibrary("LibSharedMedia-3.0")

--|> GLOBALS
-------------------------------------------------------------------------------
NS.Bars = {}
NS.Buttons = {}
NS.Icons = {}
NS.TargetedIcon = nil

--> CREATE BARS
function NS.CreateBars()
    for k = 1, NS.Options.Bars.MaxNumBars do
        -- CREATE BAR
        local barName = "weizPVP-StatusBar" .. tostring(k)
        NS.Bars[k] = CreateFrame("StatusBar", barName, NS.ListFrame)
        NS.Bars[k].Highlight = NS.Bars[k]:CreateTexture(nil, "ARTWORK", nil, 1)
        NS.Bars[k].NameText = NS.Bars[k]:CreateFontString(nil, "ARTWORK", nil, 2)
        NS.Bars[k].LevelText = NS.Bars[k]:CreateFontString(nil, "ARTWORK", GameFontNormal, 2)
        NS.Bars[k].GuildText = NS.Bars[k]:CreateFontString(nil, "ARTWORK", GameFontNormal, 2)
        NS.Bars[k].id = k
        NS.Bars[k].name = nil
        NS.Bars[k].GUID = nil
        NS.Bars[k].Target = nil
        -- BAR ICONS
        NS.Bars[k].RoleIcon = NS.Bars[k]:CreateTexture(nil, "ARTWORK", nil, 2)
        NS.Bars[k].DEADIcon = NS.Bars[k]:CreateTexture(nil, "ARTWORK", nil, 2)
        NS.Bars[k]:SetHeight(NS.Options.Bars.RowHeight)
        -- If  its's the first bar, just anchor it to the top
        if k == 1 then
            NS.Bars[k]:SetPoint("TOP", NS.ListFrame, "TOP")
            NS.Bars[k]:SetHeight(NS.Options.Bars.RowHeight)
        else -- Bars after 1 using an offset to space themselves out
            NS.Bars[k]:SetPoint("TOP", NS.Bars[(k - 1)], "BOTTOM", 0, -1)
        end
        NS.Bars[k]:SetPoint("RIGHT", NS.ScrollFrame, "RIGHT")
        NS.Bars[k]:SetPoint("LEFT", NS.ScrollFrame, "LEFT")
        NS.Bars[k]:SetStatusBarTexture(SM:Fetch("statusbar", NS.Options.Bars.Texture))
        NS.Bars[k]:SetStatusBarColor(0, 0, 0, 0)
        NS.Bars[k]:SetMinMaxValues(0, 100)
        NS.Bars[k]:EnableMouse(true)
        NS.Bars[k]:SetValue(100)
        NS.Bars[k].bg = NS.Bars[k]:CreateTexture(nil, "BACKGROUND")
        NS.Bars[k].bg:SetTexture(SM:Fetch("background", NS.Options.Bars.BarTexture))
        NS.Bars[k].bg:SetAllPoints(true)
        NS.Bars[k].bg:SetVertexColor(0, 0, 0, 0)
        NS.Bars[k].Highlight:SetAllPoints()
        NS.Bars[k].Highlight:SetColorTexture(1, 1, 1)
        NS.Bars[k].Highlight:SetBlendMode("ADD")
        NS.Bars[k].Highlight:SetAlpha(0)
        NS.Bars[k].KOSRibbon = NS.Bars[k]:CreateTexture(nil, "ARTWORK", nil, 1)
        NS.Bars[k].KOSRibbon:SetTexture("Interface\\Addons\\weizPVP\\Addons\\KOS\\Media\\kos_ribbon.tga")
        NS.Bars[k].KOSRibbon:SetPoint("LEFT", NS.Bars[k], "LEFT")
        NS.Bars[k].KOSRibbon:SetPoint("TOP", NS.Bars[k], "TOP")
        NS.Bars[k].KOSRibbon:SetPoint("BOTTOM", NS.Bars[k], "BOTTOM")
        NS.Bars[k].KOSRibbon:SetWidth(NS.Options.Bars.RowHeight)
        NS.Bars[k].KOSRibbon:SetAlpha(1)
        NS.Bars[k].RoleIcon:SetPoint("LEFT", NS.Bars[k], "LEFT", 2, 0)
        NS.Bars[k].RoleIcon:SetSize(16, 16)
        NS.Bars[k].RoleIcon:SetTexture("Interface\\Addons\\weizPVP\\Media\\Icons\\unknown.tga", false)
        NS.Bars[k].NameText:SetFont(SM:Fetch("font", NS.Options.Bars.NameFont), NS.Options.Bars.NameFontSize, "OUTLINE")
        NS.Bars[k].NameText:SetHeight(NS.Options.Bars.NameFontSize)
        NS.Bars[k].NameText:SetPoint("LEFT", NS.Bars[k].RoleIcon, "RIGHT", 2, 0)
        NS.Bars[k].NameText:SetDrawLayer("OVERLAY", 7)
        NS.Bars[k].NameText:SetJustifyH("LEFT")
        NS.Bars[k].NameText:SetJustifyV("MIDDLE")
        NS.Bars[k].NameText:SetTextColor(1, 1, 1, 1)
        NS.Bars[k].NameText:SetShadowColor(0.2, 0.2, 0.2, 0.4)
        NS.Bars[k].NameText:SetShadowOffset(1, -1)
        NS.Bars[k].LevelText:SetFont(SM:Fetch("font", NS.Options.Bars.LevelFont), NS.Options.Bars.LevelFontSize, "OUTLINE")
        NS.Bars[k].LevelText:SetHeight(NS.Options.Bars.LevelFontSize)
        NS.Bars[k].LevelText:SetPoint("LEFT", NS.Bars[k].NameText, "RIGHT", 2, 0)
        NS.Bars[k].LevelText:SetJustifyH("LEFT")
        NS.Bars[k].LevelText:SetTextColor(1, 1, 1, 1)
        NS.Bars[k].LevelText:SetShadowColor(0, 0, 0, 0)
        NS.Bars[k].GuildText:SetFont(SM:Fetch("font", NS.Options.Bars.GuildFont), NS.Options.Bars.GuildFontSize, "OUTLINE")
        NS.Bars[k].GuildText:SetHeight(NS.Options.Bars.GuildFontSize)
        NS.Bars[k].GuildText:SetMaxLines(1)
        NS.Bars[k].GuildText:SetPoint("RIGHT", NS.Bars[k], "RIGHT", -4, 0)
        NS.Bars[k].GuildText:SetJustifyH("RIGHT")
        NS.Bars[k].GuildText:SetJustifyV("MIDDLE")
        NS.Bars[k].GuildText:SetTextColor(1, 1, 1, 1)
        NS.Bars[k].GuildText:SetShadowColor(0, 0, 0, 0)
        NS.Bars[k].DEADIcon:SetPoint("LEFT", NS.Bars[k].LevelText, "RIGHT", 4, 0)
        NS.Bars[k].DEADIcon:SetSize(NS.Options.Bars.RowHeight, NS.Options.Bars.RowHeight)
        NS.Bars[k].DEADIcon:SetTexture("Interface\\Addons\\weizPVP\\Media\\Icons\\dead.tga", false)
        NS.Bars[k].DEADIcon:Hide()
        NS.Buttons[k] = CreateFrame("Button", "weizPVP-SecureButton" .. k, NS.Bars[k], "InsecureActionButtonTemplate")
        NS.Buttons[k]:SetPoint("TOPLEFT", NS.Bars[k], "TOPLEFT")
        NS.Buttons[k]:SetPoint("TOPRIGHT", NS.Bars[k], "TOPRIGHT")
        NS.Buttons[k]:SetPoint("BOTTOM", NS.Bars[k], "BOTTOM", 0, -NS.Options.Bars.VerticalSpacing)
        NS.Buttons[k]:SetAlpha(0)
        NS.Buttons[k].id = k
        NS.Buttons[k]:SetScript(
            "OnLoad",
            function(self)
                if not InCombatLockdown() then
                    NS.Buttons[k]:SetAttribute("type1", "macro")
                    NS.Buttons[k]:SetAttribute("macrotext1", "/targetexact " .. self.Target)
                end
            end
        )
        NS.Buttons[k]:SetScript(
            "PostClick",
            function(_, button)
                NS.ButtonPostClick(k, button)
            end
        )
        NS.Buttons[k]:SetScript(
            "OnMouseDown",
            function(_, button)
                NS.ButtonPreClick(k, button)
            end
        )
        NS.Buttons[k]:SetScript(
            "OnEnter",
            function()
                UIFrameFadeIn(NS.Bars[k].Highlight, 0.05, 0, 0.2)
            end
        )
        NS.Buttons[k]:SetScript(
            "OnLeave",
            function()
                UIFrameFadeOut(NS.Bars[k].Highlight, 0.2, 0.2, 0)
            end
        )
    end
    NS.TargetedIcon = NS.OuterIconsFrame:CreateTexture(nil, "ARTWORK")
    NS.TargetedIcon:SetTexture("Interface\\Addons\\weizPVP\\Media\\Icons\\target.tga")
    NS.TargetedIcon:SetPoint("RIGHT", NS.Bars[1], "LEFT", 2, 0)
    NS.TargetedIcon:SetBlendMode("BLEND")
    NS.TargetedIcon:SetWidth(16)
    NS.TargetedIcon:SetHeight(16)
    NS.TargetedIcon:SetAlpha(1)
    NS.TargetedIcon:Hide()
    NS.RefreshCurrentList()
end

--> Change Target Icon
local lastRowSelected = 1
function NS.ChangeTargetIcon()
    local GUID = UnitGUID("target")
    if NS.PlayersOnBars[GUID] then
        NS.TargetedIcon:SetPoint("RIGHT", NS.Bars[NS.PlayersOnBars[GUID]], "LEFT", 1, 0)
        NS.TargetedIcon:Show()
        NS.Bars[lastRowSelected]:SetStatusBarTexture(SM:Fetch("statusbar", NS.Options.Bars.Texture))
        NS.Bars[NS.PlayersOnBars[GUID]]:SetStatusBarTexture(SM:Fetch("statusbar", NS.Options.Bars.BarSolid))
        lastRowSelected = NS.PlayersOnBars[GUID]
    else
        NS.TargetedIcon:Hide()
        if lastRowSelected then
            NS.Bars[lastRowSelected]:SetStatusBarTexture(SM:Fetch("statusbar", NS.Options.Bars.Texture))
        end
    end
end

--|> SECURE BUTTON ACTIONS
-------------------------------------------------------------------------------
--> PLAYER BAR: PRE-CLICK
function NS.ButtonPreClick(barID, MouseButton)
    if not NS.Bars[barID].name then
        return
    end
    local displayName = NS.Bars[barID].displayName
    local playerName = NS.Bars[barID].name
    UIFrameFadeIn(NS.Bars[barID].Highlight, 0.05, 0.15, 0.3)
    if playerName then
        if MouseButton == "LeftButton" then
            if not InCombatLockdown() then
                NS.Buttons[barID]:SetAttribute("type1", "macro")
                NS.Buttons[barID]:SetAttribute("macrotext", "/targetexact " .. displayName)
                NS.Buttons[barID].Target = displayName
            end
        elseif MouseButton == "RightButton" then
            NS.KOS.PlayerBarMenu_OnClick(NS.Bars[barID])
        end
    end
end

--> PLAYER BAR: POST-CLICK
function NS.ButtonPostClick(barID, MouseButton)
    local bar = NS.Bars[barID]
    local playerName = bar.displayName
    local targetSetName = NS.Buttons[barID].Target
    local playerGUID = bar.GUID
    local targetName = GetUnitName("target", true)
    if playerName and NS.PlayerActiveCache[playerGUID] then
        if MouseButton == "LeftButton" and targetName ~= playerName then
            if not NS.PlayerActiveCache[playerGUID].Stealth then
                if targetSetName == playerName then
                    if NS.ActiveList[playerGUID] then
                        NS.InactiveList[playerGUID] = NS.ActiveList[playerGUID]
                        NS.InactiveList[playerGUID].TimeUpdated = GetTime() + NS.Options.Sorting.NearbyActiveTimeout + 0.1
                        NS.ActiveList[playerGUID] = nil
                    elseif NS.ActiveDeadList[playerGUID] then
                        NS.InactiveDeadList[playerGUID] = NS.ActiveDeadList[playerGUID]
                        NS.InactiveDeadList[playerGUID].TimeUpdated = GetTime() + NS.Options.Sorting.NearbyActiveTimeout + 0.1
                        NS.ActiveDeadList[playerGUID] = nil
                    end
                    NS.SortNearbyList()
                    NS.RefreshCurrentList()
                end
            end
        end
    end
end
