-------------------------------------------------------------------------------
--|> Bars
--:: Manages the display of the bars and their elements representing detected players
-------------------------------------------------------------------------------
--|> UPVALUE GLOBALS
-------------------------------------------------------------------------------
local weizPVP = weizPVP
local InCombatLockdown = InCombatLockdown
local GetUnitName = GetUnitName
local GameFontNormal = GameFontNormal
local GetTime = GetTime
local UnitGUID = UnitGUID
local UIFrameFadeIn = UIFrameFadeIn
local UIFrameFadeOut = UIFrameFadeOut

-------------------------------------------------------------------------------
--|> LIBS
-------------------------------------------------------------------------------
local SM = LibStub:GetLibrary("LibSharedMedia-3.0")

-------------------------------------------------------------------------------
--|> GLOBALS
-------------------------------------------------------------------------------
weizPVP.Bars = {}
weizPVP.Buttons = {}
weizPVP.Icons = {}
weizPVP.TargetedIcon = nil

-------------------------------------------------------------------------------
--|> LOCALS
-------------------------------------------------------------------------------
local lastRow = 1

-------------------------------------------------------------------------------
--|> CREATE BARS
-------------------------------------------------------------------------------
function weizPVP:CreateBars()
    for k = 1, weizPVP.Options.Bars.MaxNumBars do
        --> CREATE BAR
        -----------------------------------------------------------------------
        local barName = "weizPVP.StatusBar" .. tostring(k)
        weizPVP.Bars[k] = CreateFrame("StatusBar", barName, weizPVP.ListFrame)
        weizPVP.Bars[k].Highlight = weizPVP.Bars[k]:CreateTexture(nil, "ARTWORK", nil, 1)
        weizPVP.Bars[k].NameText = weizPVP.Bars[k]:CreateFontString(nil, "ARTWORK", nil, 2)
        weizPVP.Bars[k].LevelText = weizPVP.Bars[k]:CreateFontString(nil, "ARTWORK", GameFontNormal, 2)
        weizPVP.Bars[k].GuildText = weizPVP.Bars[k]:CreateFontString(nil, "ARTWORK", GameFontNormal, 2)
        weizPVP.Bars[k].id = k
        weizPVP.Bars[k].name = ""
        weizPVP.Bars[k].GUID = ""
        weizPVP.Bars[k].Target = ""

        --> BAR ICONS
        weizPVP.Bars[k].RoleIcon = weizPVP.Bars[k]:CreateTexture(nil, "ARTWORK", nil, 2)
        weizPVP.Bars[k].DEADIcon = weizPVP.Bars[k]:CreateTexture(nil, "ARTWORK", nil, 2)
        weizPVP.Bars[k]:SetHeight(weizPVP.Options.Bars.RowHeight)

        -->If  its's the first bar, just anchor it to the top
        if k == 1 then
            weizPVP.Bars[k]:SetPoint("TOP", weizPVP.ListFrame, "TOP")
            weizPVP.Bars[k]:SetHeight(weizPVP.Options.Bars.RowHeight)
        else --> Bars after 1 using an offset to space themselves out
            weizPVP.Bars[k]:SetPoint("TOP", weizPVP.Bars[(k - 1)], "BOTTOM", 0, -weizPVP.Options.Bars.VerticalSpacing)
        end

        --> Set properties
        weizPVP.Bars[k]:SetPoint("RIGHT", weizPVP.ScrollFrame, "RIGHT")
        weizPVP.Bars[k]:SetPoint("LEFT", weizPVP.ScrollFrame, "LEFT")
        weizPVP.Bars[k]:SetStatusBarTexture(SM:Fetch("statusbar", weizPVP.Options.Bars.Texture))
        weizPVP.Bars[k]:SetStatusBarColor(0, 0, 0, 0)
        weizPVP.Bars[k]:SetMinMaxValues(0, 100)
        weizPVP.Bars[k]:EnableMouse(true)
        weizPVP.Bars[k]:SetValue(100)

        --> Set Background
        weizPVP.Bars[k].bg = weizPVP.Bars[k]:CreateTexture(nil, "BACKGROUND")
        weizPVP.Bars[k].bg:SetTexture(SM:Fetch("background", weizPVP.Options.Bars.BarTexture))
        weizPVP.Bars[k].bg:SetAllPoints(true)
        weizPVP.Bars[k].bg:SetVertexColor(0, 0, 0, 0)

        --> Highlight
        weizPVP.Bars[k].Highlight:SetAllPoints()
        weizPVP.Bars[k].Highlight:SetColorTexture(1, 1, 1)
        weizPVP.Bars[k].Highlight:SetBlendMode("ADD")
        weizPVP.Bars[k].Highlight:SetAlpha(0)

        --> Role Icon
        -----------------------------------------------------------------------
        weizPVP.Bars[k].RoleIcon:SetPoint("LEFT", weizPVP.Bars[k], "LEFT", 2, 0)
        weizPVP.Bars[k].RoleIcon:SetSize(16, 16)
        weizPVP.Bars[k].RoleIcon:SetTexture("Interface\\Addons\\weizPVP\\Media\\Icons\\unknown.tga", false)

        --> Name Text
        -----------------------------------------------------------------------
        weizPVP.Bars[k].NameText:SetFont(SM:Fetch("font", weizPVP.Options.Bars.NameFont), weizPVP.Options.Bars.NameFontSize, "OUTLINE")
        weizPVP.Bars[k].NameText:SetHeight(weizPVP.Options.Bars.NameFontSize)
        weizPVP.Bars[k].NameText:SetPoint("LEFT", weizPVP.Bars[k].RoleIcon, "RIGHT", 2, 0)
        weizPVP.Bars[k].NameText:SetDrawLayer("OVERLAY", 7)
        weizPVP.Bars[k].NameText:SetJustifyH("LEFT")
        weizPVP.Bars[k].NameText:SetJustifyV("MIDDLE")
        weizPVP.Bars[k].NameText:SetTextColor(1, 1, 1, 1)
        weizPVP.Bars[k].NameText:SetShadowColor(0.2, 0.2, 0.2, 0.4)
        weizPVP.Bars[k].NameText:SetShadowOffset(1, -1)

        --> Level Text
        -----------------------------------------------------------------------
        weizPVP.Bars[k].LevelText:SetFont(SM:Fetch("font", weizPVP.Options.Bars.LevelFont), weizPVP.Options.Bars.LevelFontSize, "OUTLINE")
        weizPVP.Bars[k].LevelText:SetHeight(weizPVP.Options.Bars.LevelFontSize)
        weizPVP.Bars[k].LevelText:SetPoint("LEFT", weizPVP.Bars[k].NameText, "RIGHT", 2, 0)
        weizPVP.Bars[k].LevelText:SetJustifyH("LEFT")
        weizPVP.Bars[k].LevelText:SetTextColor(1, 1, 1, 1)
        weizPVP.Bars[k].LevelText:SetShadowColor(0, 0, 0, 0)

        --> Guild Text
        -----------------------------------------------------------------------
        weizPVP.Bars[k].GuildText:SetFont(SM:Fetch("font", weizPVP.Options.Bars.GuildFont), weizPVP.Options.Bars.GuildFontSize, "OUTLINE")
        weizPVP.Bars[k].GuildText:SetHeight(weizPVP.Options.Bars.GuildFontSize)
        weizPVP.Bars[k].GuildText:SetMaxLines(1)
        weizPVP.Bars[k].GuildText:SetPoint("RIGHT", weizPVP.Bars[k], "RIGHT", -4, -1)
        weizPVP.Bars[k].GuildText:SetJustifyH("RIGHT")
        weizPVP.Bars[k].GuildText:SetJustifyV("MIDDLE")
        weizPVP.Bars[k].GuildText:SetTextColor(1, 1, 1, 1)
        weizPVP.Bars[k].GuildText:SetShadowColor(0, 0, 0, 0)

        --> DEAD Icon
        -----------------------------------------------------------------------
        weizPVP.Bars[k].DEADIcon:SetPoint("LEFT", weizPVP.Bars[k].LevelText, "RIGHT", 4, 0)
        weizPVP.Bars[k].DEADIcon:SetSize(weizPVP.Options.Bars.RowHeight, weizPVP.Options.Bars.RowHeight)
        weizPVP.Bars[k].DEADIcon:SetTexture("Interface\\Addons\\weizPVP\\Media\\Icons\\dead.tga", false)
        weizPVP.Bars[k].DEADIcon:Hide()

        --> SECURE BUTTON
        -------------------------------------------------------------------------------
        weizPVP.Buttons[k] = CreateFrame("Button", "weizPVP.SecureButton" .. k, weizPVP.Bars[k], "InsecureActionButtonTemplate")
        weizPVP.Buttons[k]:SetPoint("TOPLEFT", weizPVP.Bars[k], "TOPLEFT")
        weizPVP.Buttons[k]:SetPoint("TOPRIGHT", weizPVP.Bars[k], "TOPRIGHT")
        weizPVP.Buttons[k]:SetPoint("BOTTOM", weizPVP.Bars[k], "BOTTOM", 0, -weizPVP.Options.Bars.VerticalSpacing)
        weizPVP.Buttons[k]:SetAlpha(0)
        weizPVP.Buttons[k].id = k

        --> SECURE BUTTON: OnLoad
        -----------------------------------
        weizPVP.Buttons[k]:SetScript(
            "OnLoad",
            function()
                self.Target = "nil"
                self:RegisterForClicks("LeftButtonDown", "RightButtonDown")
                self:SetAttribute("type1", "macro")
                self:SetAttribute("macrotext1", "/targetexact " .. self.Target)
            end
        )

        --> SECURE BUTTON: PreClick
        -----------------------------------
        weizPVP.Buttons[k]:SetScript(
            "PreClick",
            function(_, button)
                weizPVP:ButtonPreClick(k, button)
                UIFrameFadeIn(weizPVP.Bars[k].Highlight, 0.05, 0.15, 0.3)
            end
        )

        --> SECURE BUTTON: PostClick
        -----------------------------------
        weizPVP.Buttons[k]:SetScript(
            "PostClick",
            function(_, button)
                weizPVP:ButtonPostClick(k, button)
                -- UIFrameFadeOut(weizPVP.Bars[k].Highlight, 0.05, 0.3, 0.15)
            end
        )

        --> SECURE BUTTON: OnEnter
        -----------------------------------
        weizPVP.Buttons[k]:SetScript(
            "OnEnter",
            function()
                UIFrameFadeIn(weizPVP.Bars[k].Highlight, 0.05, 0, 0.2)
            end
        )

        --> SECURE BUTTON: OnLeave
        -----------------------------------
        weizPVP.Buttons[k]:SetScript(
            "OnLeave",
            function()
                UIFrameFadeOut(weizPVP.Bars[k].Highlight, 0.2, 0.2, 0)
            end
        )
    end

    --> Target Icon
    -----------------------------------------------------------------------
    weizPVP.TargetedIcon = weizPVP.OuterIconsFrame:CreateTexture("ARTWORK")
    weizPVP.TargetedIcon:SetTexture("Interface\\Addons\\weizPVP\\Media\\Icons\\target.tga")
    weizPVP.TargetedIcon:SetPoint("RIGHT", weizPVP.Bars[1], "LEFT", -5, 0)
    weizPVP.TargetedIcon:SetBlendMode("BLEND")
    weizPVP.TargetedIcon:SetWidth(16)
    weizPVP.TargetedIcon:SetHeight(16)
    weizPVP.TargetedIcon:Hide()

    --> Refresh List
    weizPVP:RefreshCurrentList()
end

-------------------------------------------------------------------------------
--=> Change Target Icon
-------------------------------------------------------------------------------
function weizPVP:ChangeTargetIcon()
    local GUID = UnitGUID("target")
    if weizPVP.PlayersOnBars[GUID] then
        weizPVP.TargetedIcon:SetPoint("RIGHT", weizPVP.Bars[weizPVP.PlayersOnBars[GUID]], "LEFT", 0, 0)
        weizPVP.TargetedIcon:Show()
        weizPVP.Bars[lastRow]:SetStatusBarTexture(SM:Fetch("statusbar", weizPVP.Options.Bars.Texture))
        weizPVP.Bars[weizPVP.PlayersOnBars[GUID]]:SetStatusBarTexture(SM:Fetch("statusbar", weizPVP.Options.Bars.BarSolid))
        lastRow = weizPVP.PlayersOnBars[GUID]
    else
        weizPVP.TargetedIcon:Hide()
        if lastRow then
            weizPVP.Bars[lastRow]:SetStatusBarTexture(SM:Fetch("statusbar", weizPVP.Options.Bars.Texture))
        end
    end
end

-------------------------------------------------------------------------------
--|> SECURE BUTTON ACTIONS
-------------------------------------------------------------------------------
--> PLAYER BAR: PRE-CLICK
-----------------------------------
function weizPVP:ButtonPreClick(barID, MouseButton)
    local bar = weizPVP.Bars[barID]
    local playerName = bar.name

    if playerName then
        if MouseButton == "LeftButton" then
            if not InCombatLockdown() then
                weizPVP.Buttons[barID]:RegisterForClicks("LeftButtonDown", "RightButtonDown")
                weizPVP.Buttons[barID]:SetAttribute("type1", "macro")
                weizPVP.Buttons[barID]:SetAttribute("macrotext", "/targetexact " .. playerName)
                weizPVP.Buttons[barID].Target = playerName
            end
        end
    end
end

--> PLAYER BAR: POST-CLICK
-----------------------------------
function weizPVP:ButtonPostClick(barID, MouseButton)
    local bar = weizPVP.Bars[barID]
    local playerName = bar.name
    local targetSetName = bar.Target
    local playerGUID = bar.GUID
    local targetName = GetUnitName("target", true) or "nil"

    if playerName and weizPVP.PlayerActiveCache[playerGUID] then
        if MouseButton == "LeftButton" then
            if targetName ~= playerName then
                if not weizPVP.PlayerActiveCache[playerGUID].Stealth or weizPVP.PlayerActiveCache[playerGUID].Stealth == false then
                    if targetSetName == playerName then
                        if weizPVP.ActiveList[playerGUID] then
                            weizPVP.InactiveList[playerGUID] = weizPVP.ActiveList[playerGUID]
                            weizPVP.InactiveList[playerGUID].TimeUpdated = GetTime() + weizPVP.Options.Sorting.NearbyActiveTimeout + 0.1
                            weizPVP.ActiveList[playerGUID] = nil
                        elseif weizPVP.ActiveDeadList[playerGUID] then
                            weizPVP.InactiveDeadList[playerGUID] = weizPVP.ActiveDeadList[playerGUID]
                            weizPVP.InactiveDeadList[playerGUID].TimeUpdated = GetTime() + weizPVP.Options.Sorting.NearbyActiveTimeout + 0.1
                            weizPVP.ActiveDeadList[playerGUID] = nil
                        end
                        weizPVP:SortNearbyList()
                        weizPVP:RefreshCurrentList()
                    end
                end
            end
        end
    end
end
