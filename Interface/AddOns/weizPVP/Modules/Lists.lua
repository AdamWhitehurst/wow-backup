-------------------------------------------------------------------------------
--|> LISTS
--: Manages the lists of players shown
-------------------------------------------------------------------------------
--|> Upvalue Globals
-------------------------------------------------------------------------------
local _, NS = ...
local RAID_CLASS_COLORS = RAID_CLASS_COLORS
local CopyTable = CopyTable
local InCombatLockdown, GetTime = InCombatLockdown, GetTime
local pairs, strlen, gsub, tinsert, sort, wipe = pairs, strlen, gsub, tinsert, sort, wipe
local select = select
local string_gsub = string.gsub
local PixelUtil_SetStatusBarValue = PixelUtil.SetStatusBarValue
local XEN = XEN

local SM = LibStub("LibSharedMedia-3.0")

--|> GLOBALS
-------------------------------------------------------------------------------
NS.NearbyListSize = 0
NS.CurrentList = {}
NS.CurrentNameplates = {}
NS.NearbyList = {}
NS.ActiveList = {}
NS.InactiveList = {}
NS.ActiveDeadList = {}
NS.InactiveDeadList = {}
NS.PlayersOnBars = {}

--> Update Nearby Count
local NearbyCountTopColorLimit = 100
function NS.UpdateNearbyCount()
    -- Update Global
    NS.NearbyCount = NS.NearbyListSize
    if NS.NearbyCount < 100 then
        NS.HeaderFrame.TitleVar:SetText(
            "|cff" ..
                XEN.GetColorValueFromGradient((NS.NearbyCount / NearbyCountTopColorLimit), 0.4, 1, 0, 1, 0.74, 0, 1, 0.35, 0, 1, 0, 0.34, 1, 0, 0) ..
                    NS.NearbyCount .. "|r"
        )
    else
        NS.HeaderFrame.TitleVar:SetText("|cffff0000" .. NS.NearbyCount .. "|r")
    end
end

--> Manage Bars Displayed
local listSize = 0
function NS.ManageBarsDisplayed()
    listSize = NS.NearbyListSize
    for i = 1, NS.Options.Bars.MaxNumBars do
        if i > listSize then
            NS.Bars[i]:SetAlpha(0)
            NS.Bars[i]:SetValue(100)
            NS.Bars[i].DEADIcon:Hide()
            NS.Bars[i].RoleIcon:SetTexture("Interface\\Addons\\weizPVP\\Media\\Icons\\unknown.tga", false)
            NS.Bars[i].NameText:SetText("")
            NS.Buttons[i].Target = ""
            NS.Bars[i].name = ""
            NS.Bars[i].displayName = ""
            if not InCombatLockdown() then
                NS.Buttons[i]:SetAttribute("macrotext1", "")
            end
        end
    end
end

--> Manage List Timeouts
local ActiveListCount = 0
function NS.ManageListTimeouts()
    local expired = false
    local removed = false
    local expiredCount = 0
    local i = 0
    local timestamp = GetTime()
    -- ACTIVE
    for player in pairs(NS.ActiveList) do
        if (timestamp - NS.ActiveList[player].TimeUpdated) > NS.Options.Sorting.NearbyActiveTimeout and NS.CurrentNameplates[player] == nil then
            NS.InactiveList[player] = NS.ActiveList[player]
            NS.InactiveList[player].TimeAdded = timestamp + (i * 0.001)
            NS.ActiveList[player] = nil
            i = i + 1
            expired = true
        end
    end
    ActiveListCount = i
    i = 0
    -- ACTIVE DEAD
    timestamp = GetTime()
    for player in pairs(NS.ActiveDeadList) do
        if (timestamp - NS.ActiveDeadList[player].TimeUpdated) > NS.Options.Sorting.NearbyActiveTimeout then
            NS.InactiveDeadList[player] = NS.ActiveDeadList[player]
            NS.InactiveDeadList[player].TimeAdded = timestamp + (i * 0.001)
            NS.ActiveDeadList[player] = nil
            expired = true
            i = i + 1
        end
    end
    -- INACTIVE
    timestamp = GetTime()
    for player in pairs(NS.InactiveList) do
        if (timestamp - NS.InactiveList[player].TimeUpdated) > NS.Options.Sorting.NearbyInactiveTimeout then
            NS.InactiveList[player] = nil
            NS.NearbyList[player] = nil
            NS.PlayerActiveCache[player] = nil
            NS.CurrentList[player] = nil
            expiredCount = expiredCount + 1
            expired = true
            removed = true
        end
    end
    -- INACTIVE DEAD
    timestamp = GetTime()
    for player in pairs(NS.InactiveDeadList) do
        if (timestamp - NS.InactiveDeadList[player].TimeUpdated) > NS.Options.Sorting.NearbyInactiveTimeout then
            NS.InactiveDeadList[player] = nil
            NS.NearbyList[player] = nil
            NS.PlayerActiveCache[player] = nil
            NS.CurrentList[player] = nil
            expiredCount = expiredCount + 1
            expired = true
            removed = true
        end
    end
    if expired or removed then
        NS.NearbyListSize = NS.NearbyListSize - expiredCount
        NS.SortNearbyList()
        NS.UpdateNearbyCount()
        NS.RefreshCurrentList()
    end
    if removed then
        NS.ManageBarsDisplayed()
    end
end

--> Format Level String
local function FormatLevelString(estimated, level)
    if not level then
        return
    end
    local levelText = NS.Player.Level
    if level then
        levelText = NS.FormatRelativeLevelForDisplay(level)
    end
    if estimated == true and level ~= 0 then
        levelText = levelText .. "|cFFFF00CC+|r"
    end
    return levelText
end

--> Update Bar
local darkenValue = -0.05
local guildTxtLength
local roleIcons = {
    ["TANK"] = "Interface\\Addons\\weizPVP\\Media\\Roles\\tank.tga",
    ["DAMAGER"] = "Interface\\Addons\\weizPVP\\Media\\Roles\\damager.tga",
    ["HEALER"] = "Interface\\Addons\\weizPVP\\Media\\Roles\\healer.tga",
    ["UNKNOWN"] = "Interface\\Addons\\weizPVP\\Media\\Roles\\unknown.tga"
}

local function UpdateBar(num, player, Alpha, Health, Class, Guild, Level, Estimated, _, Dead, Role, GUID, Name)
    local Bar = NS.Bars[num]
    local Button = NS.Buttons[num]
    if Button and Bar and GUID then
        -- update infos
        Bar.displayName = string_gsub(Name, "-" .. NS.PlayerRealm, "")
        Bar.name = Name
        Bar.GUID = GUID
        NS.PlayersOnBars[GUID] = num
        -- Set target macro when not in combat
        if not InCombatLockdown() and player and Name then
            Button:SetAttribute("type1", "macro")
            Button:SetAttribute("macrotext1", "/targetexact " .. Bar.displayName)
            Button.Target = Name
        end
        Button:SetAlpha(0.2)
        if Alpha and Alpha ~= 0 then
            Bar:SetAlpha(Alpha)
        else
            Bar:SetAlpha(NS.Options.Bars.AlphaDefault)
        end
        -- NAME TEXT
        local charName = gsub(Bar.displayName, "-(.*)", "")
        if strlen(Bar.displayName) > strlen(charName) then
            Bar.NameText:SetText(charName .. "|cFFFF00CC*|r")
        else
            Bar.NameText:SetText(charName)
        end
        -- KOS CHECK
        if NS.KosList[Name] then
            Bar.KOSRibbon:Show()
        else
            Bar.KOSRibbon:Hide()
        end
        -- TAXI CHECK
        if NS.PlayerActiveCache[GUID].OnTaxi then
            Bar.NameText:SetText("|TInterface\\MINIMAP\\TRACKING\\FlightMaster:0|t " .. Bar.NameText:GetText(Name))
        end
        -- Stealth
        -- TODO : NEEDS TO BE IMPROVED
        -- if Stealth and Stealth == true then
        --     if strlen(Name) > strlen(charName) then
        --         Bar.NameText:SetText("|cFFffc863" .. charName .. "|r |cFFFF00CC*|r")
        --     else
        --         Bar.NameText:SetText("|cFFffc863" .. Name .. "|r")
        --     end
        -- end
        -- TODO : ADD ATTACK CHECK FOR UNFLAGGED PLAYERS
        -- LEVEL
        Bar.LevelText:SetText(FormatLevelString(Estimated, Level))
        -- CLASS + COLOR (BAR COLOR)
        if Class and RAID_CLASS_COLORS[Class] then
            local classColor = RAID_CLASS_COLORS[Class]
            Bar:SetStatusBarColor(classColor.r - darkenValue, classColor.g - darkenValue, classColor.b - darkenValue, Alpha)
        end
        Bar.bg:SetVertexColor(0, 0, 0, 0.5)
        -- HEALTH (BAR VALUE)
        if Health ~= nil then
            PixelUtil_SetStatusBarValue(Bar, Health)
        else
            PixelUtil_SetStatusBarValue(Bar, 100)
        end
        -- ROLE
        local adjustedRole
        if Role then
            adjustedRole = Role
        elseif NS.PlayerDB[Name].Role then
            adjustedRole = NS.PlayerDB[Name].Role
        else
            adjustedRole = "UNKNOWN"
        end
        Bar.RoleIcon:SetTexture(roleIcons[adjustedRole])
        -- DEAD ICON
        if Dead ~= nil then
            if Dead == true then
                Bar.DEADIcon:Show()
                Bar:SetValue(0)
            elseif Dead == false then
                Bar.DEADIcon:Hide()
            end
        end
        -- GUILD TEXT
        guildTxtLength = Bar.LevelText:GetWidth() + Bar.NameText:GetWidth() + 28
        if Bar.DEADIcon:IsShown() then
            guildTxtLength = guildTxtLength + 22
        end
        guildTxtLength = Bar:GetWidth() - guildTxtLength
        Bar.GuildText:SetText(Guild)
        Bar.GuildText:SetWidth(guildTxtLength)
    else
        Bar:SetAlpha(NS.Options.Bars.AlphaDefault)
    end
end

--> Update Player List
local function UpdatePlayerLists(GUID, timeUpdate, dead, newPlayerOnList)
    if not NS.Options.Bars then
        return
    end
    local reSortList = false
    if NS.NearbyListSize <= NS.Options.Bars.MaxNumBars then
        if dead == true or newPlayerOnList == true then
            reSortList = true
        end
    else
        if NS.PlayersOnBars[GUID] ~= nil then
            if dead == true then
                reSortList = true
            end
        end
    end
    local playerOnBar = true
    -- NEW PLAYER
    if NS.NearbyList[GUID] == nil or newPlayerOnList then -- ADDING NEW PLAYER
        playerOnBar = false
        reSortList = true
        -- New Player added; play sound if on KOS list?
        if NS.KosList[NS.PlayerActiveCache[GUID].Name] then
            -- Audio Alert
            if NS.Options.KOS.AudioAlert == true then
                NS.PlaySoundAlert(SM:Fetch("sound", NS.Options.KOS.AudioAlertFile), true)
            elseif NS.Options.AudioAlerts.DetectedPlayerSound == true then -- New Player added; play sound?
                if not (NS.Options.AudioAlerts.DetectedPlayerSoundBGDisabled == true and NS.instanceInfo == "pvp") then
                    NS.PlaySoundAlert(SM:Fetch("sound", NS.Options.AudioAlerts.DetectedPlayerSoundFile))
                end
            end
            -- Flash OS program icon (taskbar)
            if NS.Options.KOS.TaskbarAlert == true then
                FlashClientIcon()
            end
            -- Chat Alert
            if NS.Options.KOS.ChatAlert == true then
                local classColoredName =
                    WrapTextInColorCode(NS.PlayerActiveCache[GUID].Name, select(4, GetClassColor(NS.PlayerActiveCache[GUID].Class)))
                NS.PrintAddonMessage("|TInterface\\Addons\\weizPVP\\Media\\Icons\\kos.tga::0|t " .. classColoredName .. " |cff8fdaffdetected!|r ")
            end
        elseif NS.Options.AudioAlerts.DetectedPlayerSound == true then -- NON-KOS PLAYER
            if not (NS.Options.AudioAlerts.DetectedPlayerSoundBGDisabled == true and NS.instanceInfo == "pvp") then
                NS.PlaySoundAlert(SM:Fetch("sound", NS.Options.AudioAlerts.DetectedPlayerSoundFile))
            end
        end
        NS.NearbyList[GUID] = {}
        NS.NearbyList[GUID].TimeUpdated = timeUpdate
        NS.NearbyList[GUID].TimeAdded = timeUpdate
        if dead == true then
            NS.ActiveDeadList[GUID] = NS.ActiveDeadList[GUID] or {}
            NS.ActiveDeadList[GUID].TimeUpdated = timeUpdate
            NS.ActiveDeadList[GUID].TimeAdded = timeUpdate
        else
            NS.ActiveList[GUID] = NS.ActiveList[GUID] or {}
            NS.ActiveList[GUID].TimeAdded = timeUpdate
            NS.ActiveList[GUID].TimeUpdated = timeUpdate
        end
    elseif not NS.ActiveList[GUID] and not NS.ActiveDeadList[GUID] then -- EXISTING PLAYER; WAS INACTIVE
        reSortList = true
        if dead then
            NS.ActiveDeadList[GUID] = NS.InactiveDeadList[GUID] or {}
            NS.ActiveDeadList[GUID].TimeUpdated = timeUpdate
            NS.ActiveDeadList[GUID].TimeAdded = timeUpdate
            NS.NearbyList[GUID].TimeUpdated = timeUpdate
            NS.NearbyList[GUID].TimeAdded = timeUpdate
            NS.ActiveList[GUID] = nil
        else
            NS.ActiveList[GUID] = NS.InactiveList[GUID] or {}
            NS.ActiveList[GUID].TimeUpdated = timeUpdate
            NS.ActiveList[GUID].TimeAdded = timeUpdate
            NS.NearbyList[GUID].TimeUpdated = timeUpdate
            NS.NearbyList[GUID].TimeAdded = timeUpdate
            NS.ActiveDeadList[GUID] = nil
        end
        NS.InactiveList[GUID] = nil
        NS.InactiveDeadList[GUID] = nil
    else -- EXISTING PLAYER; ACTIVE
        if dead then
            NS.ActiveDeadList[GUID] = NS.ActiveDeadList[GUID] or {}
            NS.ActiveDeadList[GUID].TimeUpdated = timeUpdate
            NS.NearbyList[GUID].TimeUpdated = timeUpdate
            NS.ActiveList[GUID] = nil
        else
            NS.ActiveList[GUID] = NS.ActiveList[GUID] or {}
            NS.ActiveList[GUID].TimeUpdated = timeUpdate
            NS.NearbyList[GUID].TimeUpdated = timeUpdate
            NS.ActiveDeadList[GUID] = nil
        end
    end
    --> Check to see if we need to add a kos player to the bars
    if playerOnBar == false and ActiveListCount > NS.Options.Bars.MaxNumBars then
        if not NS.KosList[NS.PlayerActiveCache[GUID].Name] then
            return
        else
            reSortList = true
            newPlayerOnList = true
        end
    end
    -- Sort only if we moved the player from one sub-list to another
    if reSortList == true then
        NS.SortNearbyList()
        if NS.PlayersOnBars[GUID] or newPlayerOnList then
            NS.RefreshCurrentList()
        end
    else
        if NS.PlayersOnBars[GUID] then
            NS.RefreshBarByGUID(GUID)
        end
    end
end

--> Add Player Data
local lastTimestamp = GetTime()
function NS.AddPlayerDataToNearby(GUID, newPlayerOnList)
    -- valid check
    if not GUID then
        return
    end
    local dead
    if NS.PlayerActiveCache[GUID] and NS.PlayerActiveCache[GUID].Dead ~= nil then
        dead = NS.PlayerActiveCache[GUID].Dead
    else
        NS.PlayerActiveCache[GUID].Dead = false
        dead = false
    end
    local currentTime = GetTime()
    local timestamp
    if lastTimestamp >= currentTime then
        timestamp = lastTimestamp + 0.001
        lastTimestamp = timestamp
    else
        lastTimestamp = currentTime
        timestamp = lastTimestamp
    end
    if newPlayerOnList then
        NS.NearbyListSize = NS.NearbyListSize + 1
        NS.UpdateNearbyCount()
    end
    UpdatePlayerLists(GUID, timestamp, dead, newPlayerOnList)
end

-- Refresh Current List
function NS.RefreshCurrentList()
    local playersOnBars = {}
    -- Refreshing all bars due to required sorting
    for k, data in pairs(NS.CurrentList) do
        if k <= NS.Options.Bars.MaxNumBars then
            -- Update Alpha if needed
            local alpha = NS.Options.Bars.AlphaDefault or 1
            if NS.InactiveList[data.player] or NS.InactiveDeadList[data.player] then
                alpha = NS.Options.Bars.AlphaInactive
            elseif NS.ActiveDeadList[data.player] then
                alpha = NS.Options.Bars.AlphaDead
            end
            if NS.PlayerActiveCache[data.player] then
                playersOnBars[NS.PlayerActiveCache[data.player].GUID] = k
                local barName = NS.PlayerActiveCache[data.player].Name or nil
                -- Update Bar
                if NS.PlayerDB[barName] then
                    UpdateBar(
                        k,
                        data.player,
                        alpha,
                        NS.PlayerActiveCache[data.player].Health,
                        NS.PlayerDB[barName].Class,
                        NS.PlayerDB[barName].Guild,
                        NS.PlayerDB[barName].Level,
                        NS.PlayerDB[barName].Estimated,
                        NS.PlayerActiveCache[data.player].Stealth,
                        NS.PlayerActiveCache[data.player].Dead,
                        NS.PlayerDB[barName].Role,
                        data.player,
                        barName
                    )
                end
            end
        else
            if playersOnBars then
                wipe(NS.PlayersOnBars)
                NS.PlayersOnBars = CopyTable(playersOnBars)
            end
            break
        end
    end
    NS.ChangeTargetIcon()
end

--> Sort Nearby List
function NS.SortNearbyList()
    -- ActiveList
    local active = {}
    local position
    for player in pairs(NS.ActiveList) do
        if NS.NearbyList[player] then
            position = NS.NearbyList[player].TimeAdded or nil
            if position ~= nil then
                tinsert(active, {player = player, time = position})
            end
        end
    end
    -- ActiveDeadList
    local activeDead = {}
    for player in pairs(NS.ActiveDeadList) do
        if NS.NearbyList[player] then
            position = NS.NearbyList[player].TimeAdded or nil
            if position ~= nil then
                tinsert(activeDead, {player = player, time = position})
            end
        end
    end
    -- InactiveDeadList
    local inactiveDead = {}
    for player in pairs(NS.InactiveDeadList) do
        if NS.NearbyList[player] then
            position = NS.NearbyList[player].TimeAdded or nil
            if position ~= nil then
                tinsert(inactiveDead, {player = player, time = position})
            end
        end
    end
    -- InactiveList
    local inactive = {}
    for player in pairs(NS.InactiveList) do
        if NS.NearbyList[player] then
            position = NS.NearbyList[player].TimeAdded
            if position ~= nil then
                tinsert(inactive, {player = player, time = position})
            end
        end
    end
    -- sorts
    sort(
        active,
        function(a, b)
            return a.time < b.time
        end
    )
    sort(
        activeDead,
        function(a, b)
            return a.time < b.time
        end
    )
    sort(
        inactive,
        function(a, b)
            return a.time < b.time
        end
    )
    sort(
        inactiveDead,
        function(a, b)
            return a.time < b.time
        end
    )
    -- create player list
    local list = {}
    for player in pairs(active) do
        if NS.PlayerActiveCache[active[player].player] then
            if NS.KosList[NS.PlayerActiveCache[active[player].player].Name] then
                tinsert(list, active[player])
                active[player] = nil
            end
        end
    end
    for player in pairs(active) do
        tinsert(list, active[player])
    end
    for player in pairs(activeDead) do
        tinsert(list, activeDead[player])
    end
    for player in pairs(inactive) do
        tinsert(list, inactive[player])
    end
    for player in pairs(inactiveDead) do
        tinsert(list, inactiveDead[player])
    end
    NS.CurrentList = list
end

--> Clear List Data
function NS.ClearListData()
    wipe(NS.CurrentList)
    wipe(NS.CurrentNameplates)
    wipe(NS.NearbyList)
    wipe(NS.ActiveList)
    wipe(NS.InactiveList)
    wipe(NS.ActiveDeadList)
    wipe(NS.InactiveDeadList)
    wipe(NS.PlayersOnBars)
    wipe(NS.PlayerActiveCache)
    NS.NearbyListSize = 0
    NS.SortNearbyList()
    NS.RefreshCurrentList()
    NS.ManageBarsDisplayed()
    NS.UpdateNearbyCount()
    NS.TargetedIcon:Hide()
    NS:PlayerTargetEvent()
    NS.ScrollFrame:SetVerticalScroll(0)
end

--> Refresh One Bar
function NS.RefreshBarByGUID(GUID)
    if not GUID then
        return
    end
    -- Get Row
    local row = NS.PlayersOnBars[GUID]
    if not row then
        return
    end
    -- Alpha
    local Alpha = NS.Options.Bars.AlphaDefault or 1
    if NS.InactiveList[GUID] or NS.InactiveDeadList[GUID] then
        Alpha = NS.Options.Bars.AlphaInactive or 0.6
    end
    if NS.ActiveDeadList[GUID] then
        Alpha = NS.Options.Bars.AlphaDead or 0.8
    end
    -- Update Bar
    local name = NS.PlayerActiveCache[GUID].Name
    UpdateBar(
        row,
        GUID,
        Alpha,
        NS.PlayerActiveCache[GUID].Health,
        NS.PlayerDB[name].Class,
        NS.PlayerDB[name].Guild,
        NS.PlayerDB[name].Level,
        NS.PlayerDB[name].Estimated,
        NS.PlayerActiveCache[GUID].Stealth,
        NS.PlayerActiveCache[GUID].Dead,
        NS.PlayerDB[name].Role,
        GUID,
        name
    )
end
