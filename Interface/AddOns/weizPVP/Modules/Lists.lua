-------------------------------------------------------------------------------
--|> LISTS
--: Manages the lists of players shown
-------------------------------------------------------------------------------
--|> UPVALUE GLOBALS
-------------------------------------------------------------------------------
local weizPVP = weizPVP
local InCombatLockdown, GetTime, RAID_CLASS_COLORS = InCombatLockdown, GetTime, RAID_CLASS_COLORS
local pairs, strlen, gsub, tinsert, sort = pairs, strlen, gsub, tinsert, sort
local C_Timer_After = C_Timer.After
local CopyTable = CopyTable
local PlaySoundFile = PlaySoundFile
local wipe = wipe

-------------------------------------------------------------------------------
--|> GLOBALS
-------------------------------------------------------------------------------
weizPVP.NearbyListSize = 0
weizPVP.CurrentList = {}
weizPVP.CurrentNameplates = {}
weizPVP.NearbyList = {}
weizPVP.ActiveList = {}
weizPVP.InactiveList = {}
weizPVP.ActiveDeadList = {}
weizPVP.InactiveDeadList = {}
weizPVP.PlayersOnBars = {}

-------------------------------------------------------------------------------
--|> LIBS
-------------------------------------------------------------------------------
local SM = LibStub("LibSharedMedia-3.0")

-------------------------------------------------------------------------------
--|> FUNCTIONS
-------------------------------------------------------------------------------
--> Update Neaby Count
-------------------------------------------------------------------------------
function weizPVP:UpdateNearbyCount()
    --> Upate Global
    weizPVP.NearbyCount = weizPVP.NearbyListSize

    if weizPVP.NearbyCount > 0 then --> List Size is > 0
        if weizPVP.NearbyCount > 50 then
            weizPVP.HeaderFrame.TitleVar:SetText("|cFFff0000" .. weizPVP.NearbyCount .. "|r") --> 50+ (RED)
        elseif weizPVP.NearbyCount > 40 then
            weizPVP.HeaderFrame.TitleVar:SetText("|cFFff0056" .. weizPVP.NearbyCount .. "|r") --> 40+ (BRIGHT PINK)
        elseif weizPVP.NearbyCount > 20 then
            weizPVP.HeaderFrame.TitleVar:SetText("|cFFff5900" .. weizPVP.NearbyCount .. "|r") --> 20+ (ORANGE)
        elseif weizPVP.NearbyCount > 10 then
            weizPVP.HeaderFrame.TitleVar:SetText("|cFFFFBC00" .. weizPVP.NearbyCount .. "|r") --> 10+ (GOLD)
        else
            weizPVP.HeaderFrame.TitleVar:SetText("|cFFd1ff00" .. weizPVP.NearbyCount .. "|r") --> 1+ (LIME GREEM)
        end
    else --> List Size is 0
        weizPVP.HeaderFrame.TitleVar:SetText("|cFF26FF540|r") --> 0 (GREEN)
    end
end

-------------------------------------------------------------------------------
--> Manage Bars Displayed
-------------------------------------------------------------------------------
local listSize = 0
function weizPVP.ManageBarsDisplayed()
    listSize = weizPVP.NearbyListSize
    for i = 1, weizPVP.Options.Bars.MaxNumBars do
        if i > listSize then
            weizPVP.Bars[i]:SetAlpha(0)
            weizPVP.Bars[i]:SetValue(100)
            weizPVP.Bars[i].DEADIcon:Hide()
            weizPVP.Bars[i].RoleIcon:SetTexture("Interface\\Addons\\weizPVP\\Media\\Icons\\unknown.tga", false)
            weizPVP.Bars[i].NameText:SetText("|cFFFFFFFF--|r")
        end
    end
end

-------------------------------------------------------------------------------
--> Manage List Timeouts
--: Checks Active and Inactive lists for inactivity and move them accordingly
--: Refreshed the list if we found expirations and Updates the NearbyCount
-------------------------------------------------------------------------------

function weizPVP:ManageListTimeouts()
    local expired = false
    local removed = false
    local expiredCount = 0
    local i = 0
    local timestamp = GetTime()

    for player in pairs(weizPVP.ActiveList) do
        if (timestamp - weizPVP.ActiveList[player].TimeUpdated) > weizPVP.Options.Sorting.NearbyActiveTimeout and weizPVP.CurrentNameplates[player] == nil then
            weizPVP.InactiveList[player] = weizPVP.ActiveList[player]
            weizPVP.InactiveList[player].TimeAdded = timestamp + (i * 0.001)
            weizPVP.ActiveList[player] = nil
            expired = true
            i = i + 1
        end
    end
    i = 0
    timestamp = GetTime()
    for player in pairs(weizPVP.ActiveDeadList) do
        if (timestamp - weizPVP.ActiveDeadList[player].TimeUpdated) > weizPVP.Options.Sorting.NearbyActiveTimeout then
            weizPVP.InactiveDeadList[player] = weizPVP.ActiveDeadList[player]
            weizPVP.InactiveDeadList[player].TimeAdded = timestamp + (i * 0.001)
            weizPVP.ActiveDeadList[player] = nil
            expired = true
            i = i + 1
        end
    end
    timestamp = GetTime()
    for player in pairs(weizPVP.InactiveList) do
        if (timestamp - weizPVP.InactiveList[player].TimeUpdated) > weizPVP.Options.Sorting.NearbyInactiveTimeout then
            weizPVP.InactiveList[player] = nil
            weizPVP.NearbyList[player] = nil
            weizPVP.PlayerActiveCache[player] = nil
            weizPVP.CurrentList[player] = nil
            expiredCount = expiredCount + 1
            expired = true
            removed = true
        end
    end

    for player in pairs(weizPVP.InactiveDeadList) do
        if (timestamp - weizPVP.InactiveDeadList[player].TimeUpdated) > weizPVP.Options.Sorting.NearbyInactiveTimeout then
            weizPVP.InactiveDeadList[player] = nil
            weizPVP.NearbyList[player] = nil
            weizPVP.PlayerActiveCache[player] = nil
            weizPVP.CurrentList[player] = nil
            expiredCount = expiredCount + 1
            expired = true
            removed = true
        end
    end

    if expired or removed then
        weizPVP.NearbyListSize = weizPVP.NearbyListSize - expiredCount
        weizPVP:SortNearbyList()
        weizPVP:UpdateNearbyCount()
        weizPVP:RefreshCurrentList()
    end

    if removed then
        weizPVP.ManageBarsDisplayed()
    end
end

-------------------------------------------------------------------------------
--> Format Level String
-------------------------------------------------------------------------------
local function FormatLevelString(Estimated, Level)
    local LevelText = ""
    local playerLevel = weizPVP.Player.Level
    if Level then
        --> Known Level: Get colors based on difference
        if Level == 0 then --> 0
            LevelText = "|cFFFF00CC??|r"
        elseif Level < playerLevel - 20 then --> 20+ below
            LevelText = "|cFF7cffd1" .. Level .. "|r"
        elseif Level < playerLevel - 10 then --> 10-20 below
            LevelText = "|cFF7cd1ff" .. Level .. "|r"
        elseif Level < playerLevel then --> 1-9 below
            LevelText = "|cFF7cff7f" .. Level .. "|r"
        elseif Level > playerLevel then --> Higher level
            LevelText = "|cFFf7694a" .. Level .. "|r"
        else
            LevelText = "|cFFffc863" .. Level .. "|r"
        end
    end

    if Estimated == true and Level ~= 0 then
        LevelText = LevelText .. "|cFFFF00CC+|r"
    end

    return LevelText
end

-------------------------------------------------------------------------------
--> Update Bar
-------------------------------------------------------------------------------
local darkenValue = -0.05
local guildTxtLength
local roleIcons = {
    ["TANK"] = "Interface\\Addons\\weizPVP\\Media\\Icons\\tank.tga",
    ["DAMAGER"] = "Interface\\Addons\\weizPVP\\Media\\Icons\\damager.tga",
    ["HEALER"] = "Interface\\Addons\\weizPVP\\Media\\Icons\\healer.tga",
    ["UNKNOWN"] = "Interface\\Addons\\weizPVP\\Media\\Icons\\unknown.tga"
}

-------------------------------------------------------------------------------
--> Updates the player bar for the bar# specified
local function UpdateBar(num, player, Alpha, Health, Class, Guild, Level, Estimated, Stealth, Dead, Role, GUID, Name)
    local Bar = weizPVP.Bars[num]
    local Button = weizPVP.Buttons[num]
    if Button ~= nil and Bar ~= nil and GUID ~= nil then
        --> Set target macro when not in combat
        if not InCombatLockdown() and player and Name then
            Bar:SetAttribute("macrotext1", "/targetexact " .. Name)
            Bar.Target = Name
        end
        Button:SetAlpha(0.2)
        if Alpha and Alpha ~= 0 then
            Bar:SetAlpha(Alpha)
        else
            Bar:SetAlpha(weizPVP.Options.Bars.AlphaDefault)
        end

        --> NAME TEXT
        local charname = gsub(Name, "-(.*)", "")
        if strlen(Name) > strlen(charname) then
            Bar.NameText:SetText(charname .. "|cFFFF00CC*|r")
        else
            Bar.NameText:SetText(Name)
        end

        if weizPVP.PlayerActiveCache[GUID].OnTaxi then
            Bar.NameText:SetText("|TInterface\\MINIMAP\\TRACKING\\FlightMaster:0|t " .. Bar.NameText:GetText(Name))
        end

        Bar.name = Name
        Bar.GUID = GUID
        weizPVP.PlayersOnBars[GUID] = num

        -- --> Stealth
        --!! NEEDS TO BE FIXED
        -- if Stealth ~= nil and Stealth == true then
        --     if strlen(Name) > strlen(charname) then
        --         Bar.NameText:SetText("|cFFffc863" .. charname .. "|r |cFFFF00CC*|r")
        --     else
        --         Bar.NameText:SetText("|cFFffc863" .. Name .. "|r")
        --     end
        -- end

        --> LEVEL
        Bar.LevelText:SetText(FormatLevelString(Estimated, Level))

        --> CLASS + COLOR (BAR COLOR)
        if Class and RAID_CLASS_COLORS[Class] then
            local classColor = RAID_CLASS_COLORS[Class]
            Bar:SetStatusBarColor(classColor.r - darkenValue, classColor.g - darkenValue, classColor.b - darkenValue, Alpha)
        end
        Bar.bg:SetVertexColor(0, 0, 0, 1)

        --> HEALTH (BAR VALUE)
        if Health ~= nil then
            Bar:SetValue(Health)
            PixelUtil.SetStatusBarValue(Bar, Health)
        end

        --> ROLE
        local adjustedRole
        if Role then
            adjustedRole = Role
        elseif weizPVP.PlayerDB[Name].Role then
            adjustedRole = weizPVP.PlayerDB[Name].Role
        else
            adjustedRole = "UNKNOWN"
        end
        Bar.RoleIcon:SetTexture(roleIcons[adjustedRole])

        --> DEAD ICON
        if Dead ~= nil then
            if Dead == true then
                Bar.DEADIcon:Show()
                Bar:SetValue(0)
            elseif Dead == false then
                Bar.DEADIcon:Hide()
            end
        end

        --> GUILD TEXT
        -----------------------------------------------------------------
        guildTxtLength = Bar.LevelText:GetWidth() + Bar.NameText:GetWidth() + 28
        if Bar.DEADIcon:IsShown() then
            guildTxtLength = guildTxtLength + 22
        end

        guildTxtLength = Bar:GetWidth() - guildTxtLength
        Bar.GuildText:SetText(Guild)
        Bar.GuildText:SetWidth(guildTxtLength)
    else
        Bar:SetAlpha(weizPVP.Options.Bars.AlphaDefault)
    end
end

--> Refresh One Bar
-------------------------------------------------------------------------------
local row
local Alpha
local function RefreshOneBar(GUID, name)
    --> Get Row
    row = weizPVP.PlayersOnBars[GUID]

    --> Alpha
    Alpha = weizPVP.Options.Bars.AlphaDefault or 0.8
    if weizPVP.InactiveList[GUID] or weizPVP.InactiveDeadList[GUID] then
        Alpha = weizPVP.Options.Bars.AlphaInactive
    end
    if weizPVP.ActiveDeadList[GUID] then
        Alpha = weizPVP.Options.Bars.AlphaDead
    end

    --> Update Bar
    if row then
        UpdateBar(
            row,
            GUID,
            Alpha,
            weizPVP.PlayerActiveCache[GUID].Health,
            weizPVP.PlayerDB[name].Class,
            weizPVP.PlayerDB[name].Guild,
            weizPVP.PlayerDB[name].Level,
            weizPVP.PlayerDB[name].Estimated,
            weizPVP.PlayerActiveCache[GUID].Stealth,
            weizPVP.PlayerActiveCache[GUID].Dead,
            weizPVP.PlayerDB[name].Role,
            GUID,
            name
        )
    end
end

--> Update Player List
-------------------------------------------------------------------------------
local reSortList
local playerOnBar
local function UpdatePlayerLists(GUID, timeUpdate, dead, newPlayerOnList)
    if not weizPVP.Options.Bars then
        return
    end
    reSortList = false
    if weizPVP.NearbyListSize <= weizPVP.Options.Bars.MaxNumBars then
        if dead == true or newPlayerOnList == true then
            reSortList = true
        end
    else
        if weizPVP.PlayersOnBars[GUID] ~= nil then
            if dead == true then
                reSortList = true
            end
        end
    end

    playerOnBar = true

    if weizPVP.NearbyList[GUID] == nil then --> ADDING NEW PLAYER
        playerOnBar = false
        --> New Player added; play sound?
        if weizPVP.Options.AudioAlerts.DetectedPlayerSound == true then
            weizPVP.PlaySoundAlert(SM:Fetch("sound", weizPVP.Options.AudioAlerts.DetectedPlayerSoundFile))
        end

        weizPVP.NearbyList[GUID] = {}
        weizPVP.NearbyList[GUID].TimeUpdated = timeUpdate
        weizPVP.NearbyList[GUID].TimeAdded = timeUpdate

        if dead == true then
            weizPVP.ActiveDeadList[GUID] = weizPVP.ActiveDeadList[GUID] or {}
            weizPVP.ActiveDeadList[GUID].TimeUpdated = timeUpdate
            weizPVP.ActiveDeadList[GUID].TimeAdded = timeUpdate
        else
            weizPVP.ActiveList[GUID] = weizPVP.ActiveList[GUID] or {}
            weizPVP.ActiveList[GUID].TimeAdded = timeUpdate
            weizPVP.ActiveList[GUID].TimeUpdated = timeUpdate
        end
    elseif not weizPVP.ActiveList[GUID] and not weizPVP.ActiveDeadList[GUID] then --> EXISTING PLAYER; WAS INACTIVE
        reSortList = true
        if dead then
            weizPVP.ActiveDeadList[GUID] = weizPVP.InactiveDeadList[GUID] or {}
            weizPVP.ActiveDeadList[GUID].TimeUpdated = timeUpdate
            weizPVP.ActiveDeadList[GUID].TimeAdded = timeUpdate
            weizPVP.NearbyList[GUID].TimeUpdated = timeUpdate
            weizPVP.NearbyList[GUID].TimeAdded = timeUpdate
            weizPVP.ActiveList[GUID] = nil
        else
            weizPVP.ActiveList[GUID] = weizPVP.InactiveList[GUID] or {}
            weizPVP.ActiveList[GUID].TimeUpdated = timeUpdate
            weizPVP.ActiveList[GUID].TimeAdded = timeUpdate
            weizPVP.NearbyList[GUID].TimeUpdated = timeUpdate
            weizPVP.NearbyList[GUID].TimeAdded = timeUpdate
            weizPVP.ActiveDeadList[GUID] = nil
        end

        weizPVP.InactiveList[GUID] = nil
        weizPVP.InactiveDeadList[GUID] = nil
    else --> EXISTING PLAYER; ACTIVE
        if dead then
            weizPVP.ActiveDeadList[GUID] = weizPVP.ActiveDeadList[GUID] or {}
            weizPVP.ActiveDeadList[GUID].TimeUpdated = timeUpdate
            weizPVP.NearbyList[GUID].TimeUpdated = timeUpdate
            weizPVP.ActiveList[GUID] = nil
        else
            weizPVP.ActiveList[GUID] = weizPVP.ActiveList[GUID] or {}
            weizPVP.ActiveList[GUID].TimeUpdated = timeUpdate
            weizPVP.NearbyList[GUID].TimeUpdated = timeUpdate
            weizPVP.ActiveDeadList[GUID] = nil
        end
    end

    if playerOnBar == false and weizPVP.NearbyListSize > weizPVP.Options.Bars.MaxNumBars then
        return
    end

    --> Sort only if we moved the player from one sublist to another
    if reSortList == true then
        weizPVP:SortNearbyList()
        if weizPVP.PlayersOnBars[GUID] or newPlayerOnList then
            weizPVP:RefreshCurrentList()
        end
    else
        if weizPVP.PlayersOnBars[GUID] then
            RefreshOneBar(GUID, weizPVP.PlayerActiveCache[GUID].Name)
        end
    end
end

--> Add Player Data
--> Incoming player data from event
-------------------------------------------------------------------------------
local lastTimestamp = GetTime()
function weizPVP:AddPlayerDataToNearby(GUID, newPlayerOnList)
    --> valid check
    if not GUID then
        return
    end

    local dead
    if weizPVP.PlayerActiveCache[GUID] and weizPVP.PlayerActiveCache[GUID].Dead ~= nil then
        dead = weizPVP.PlayerActiveCache[GUID].Dead
    else
        weizPVP.PlayerActiveCache[GUID].Dead = false
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
        weizPVP.NearbyListSize = weizPVP.NearbyListSize + 1
        weizPVP:UpdateNearbyCount()
    end
    UpdatePlayerLists(GUID, timestamp, dead, newPlayerOnList)
end

--> Refresh Current List
-------------------------------------------------------------------------------
local playersOnBars
local BarName
function weizPVP:RefreshCurrentList()
    playersOnBars = {}
    --> Refreshing all bars due to required sorting
    for k, data in pairs(weizPVP.CurrentList) do
        if k <= weizPVP.Options.Bars.MaxNumBars then
            --> Update Alpha if needed
            Alpha = weizPVP.Options.Bars.AlphaDefault
            if weizPVP.InactiveList[data.player] or weizPVP.InactiveDeadList[data.player] then
                Alpha = weizPVP.Options.Bars.AlphaInactive
            end
            if weizPVP.ActiveDeadList[data.player] then
                Alpha = weizPVP.Options.Bars.AlphaDead
            end
            if weizPVP.PlayerActiveCache[data.player] and weizPVP.PlayerActiveCache[data.player] then
                playersOnBars[weizPVP.PlayerActiveCache[data.player].GUID] = k
                BarName = weizPVP.PlayerActiveCache[data.player].Name or nil
                --> Update Bar
                if weizPVP.PlayerDB[BarName] then
                    UpdateBar(
                        k,
                        data.player,
                        Alpha,
                        weizPVP.PlayerActiveCache[data.player].Health,
                        weizPVP.PlayerDB[BarName].Class,
                        weizPVP.PlayerDB[BarName].Guild,
                        weizPVP.PlayerDB[BarName].Level,
                        weizPVP.PlayerDB[BarName].Estimated,
                        weizPVP.PlayerActiveCache[data.player].Stealth,
                        weizPVP.PlayerActiveCache[data.player].Dead,
                        weizPVP.PlayerDB[BarName].Role,
                        data.player,
                        BarName
                    )
                end
            end
        else
            if playersOnBars then
                wipe(weizPVP.PlayersOnBars)
                weizPVP.PlayersOnBars = CopyTable(playersOnBars)
            end
            break
        end
    end
    weizPVP:ChangeTargetIcon()
end

--> Sort Nearby List
-------------------------------------------------------------------------------
function weizPVP:SortNearbyList()
    --=> Get player's into the right groups
    --> ActiveList
    local active = {}
    local position
    for player in pairs(weizPVP.ActiveList) do
        if weizPVP.NearbyList[player] then
            position = weizPVP.NearbyList[player].TimeAdded or nil
            if position ~= nil then
                tinsert(active, {player = player, time = position})
            end
        end
    end

    --> ActiveDeadList
    local activeDead = {}
    for player in pairs(weizPVP.ActiveDeadList) do
        if weizPVP.NearbyList[player] then
            position = weizPVP.NearbyList[player].TimeAdded or nil
            if position ~= nil then
                tinsert(activeDead, {player = player, time = position})
            end
        end
    end

    --> InactiveDeadList
    local inactiveDead = {}
    for player in pairs(weizPVP.InactiveDeadList) do
        if weizPVP.NearbyList[player] then
            position = weizPVP.NearbyList[player].TimeAdded or nil
            if position ~= nil then
                tinsert(inactiveDead, {player = player, time = position})
            end
        end
    end

    --> InactiveList
    local inactive = {}
    for player in pairs(weizPVP.InactiveList) do
        if weizPVP.NearbyList[player] then
            position = weizPVP.NearbyList[player].TimeAdded
            if position ~= nil then
                tinsert(inactive, {player = player, time = position})
            end
        end
    end

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

    local list = {}

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

    weizPVP.CurrentList = list
end

--> Play Sound Alert
-------------------------------------------------------------------------------
local playSound = true
local function EnableAlertSound()
    playSound = true
end
function weizPVP.PlaySoundAlert(url)
    if playSound == true then
        PlaySoundFile(url)
        playSound = false
        C_Timer_After(1, EnableAlertSound)
    end
end
