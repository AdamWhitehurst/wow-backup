-------------------------------------------------------------------------------
--|> DATA PROCESSING
--: Functions that help acquire and manage data involving the PlayerDB
-------------------------------------------------------------------------------
--|> UPVALUE GLOBALS
-------------------------------------------------------------------------------
local weizPVP = weizPVP
local UnitIsEnemy = UnitIsEnemy
local UnitIsPlayer = UnitIsPlayer
local GetUnitName = GetUnitName
local GetGuildInfo = GetGuildInfo
local UnitClass = UnitClass
local UnitRace = UnitRace
local UnitLevel = UnitLevel
local UnitIsDeadOrGhost = UnitIsDeadOrGhost
local GetTime = GetTime
local UnitHealth = UnitHealth
local UnitHealthMax = UnitHealthMax
local UnitGUID = UnitGUID
local UnitOnTaxi = UnitOnTaxi
local wipe = wipe
local _

-------------------------------------------------------------------------------
--|> GLOBAL FUNCTIONS
-------------------------------------------------------------------------------
--=> UpdatePlayerActiveCache
-->  Updates data in the PlayerActiveCache and then calls
--> Sends data off the Lists to be processed

-----------------------------------------------------------------------
function weizPVP:UpdatePlayerActiveCache(name, health, stealth, dead, role, GUID)
    --> Verify GUIDexists
    if not GUID then
        return
    end

    local newPlayerOnList

    --> Check for player already in cache
    if weizPVP.PlayerActiveCache[GUID] then
        newPlayerOnList = false
    else
        weizPVP.PlayerActiveCache[GUID] = {}
        newPlayerOnList = true
    end

    --> Update PlayerCache info
    -----------------------------------------
    if newPlayerOnList then
        weizPVP.PlayerActiveCache[GUID].GUID = GUID
        --> NAME
        if name then
            weizPVP.PlayerActiveCache[GUID].Name = name
        elseif weizPVP.PlayerDB[name].Name then
            weizPVP.PlayerActiveCache[GUID].Name = weizPVP.PlayerDB[name].Name
        end

        --> LEVEL
        weizPVP.PlayerActiveCache[GUID].Estimated = weizPVP.PlayerDB[name].Estimated
        if weizPVP.PlayerDB[name].Level then
            weizPVP.PlayerActiveCache[GUID].Level = weizPVP.PlayerDB[name].Level
        elseif weizPVP.PlayerDB[name].Level then
            weizPVP.PlayerActiveCache[GUID].Level = 0
            weizPVP.PlayerDB[name].Level = 0
        end

        --> CLASS
        if weizPVP.PlayerDB[name].Class then
            weizPVP.PlayerActiveCache[GUID].Class = weizPVP.PlayerDB[name].Class
        end

        --> GUILD
        if weizPVP.PlayerDB[name].Guild then
            weizPVP.PlayerActiveCache[GUID].Guild = weizPVP.PlayerDB[name].Guild
        end

        --> HEALTH
        if health ~= nil then
            weizPVP.PlayerActiveCache[GUID].Health = health
        elseif weizPVP.PlayerActiveCache[GUID].Health == nil then
            weizPVP.PlayerActiveCache[GUID].Health = 100
        end

        --> STEALTH
        if stealth ~= nil then
            weizPVP.PlayerActiveCache[GUID].Stealth = stealth
        end

        --> DEAD
        if dead ~= nil then
            weizPVP.PlayerActiveCache[GUID].Dead = dead
            if dead == true then
                weizPVP.PlayerActiveCache[GUID].Health = 0
            end
        end

        --> ROLE
        if role ~= nil then
            weizPVP.PlayerActiveCache[GUID].Role = role
            weizPVP.PlayerDB[name].Role = role
        end
    end

    --> Add player Data to lists
    weizPVP:AddPlayerDataToNearby(GUID, newPlayerOnList)
end

--> Static Role Assignment
---------------------------------------------------------------------
local function RoleAssign(class)
    if class == "ROGUE" or class == "MAGE" or class == "WARLOCK" or class == "HUNTER" then
        return "DAMAGER"
    end
    return nil
end

--=> GET UNIT DATA
-----------------------------------------------------------------------
--> Gets data for events with a UNITID, such as 'target' or 'nameplate'

local UnitDataThrottle = 2
function weizPVP:GetUnitData(unit)
    --> Confirm Unit is a player that is an enemy or attackable
    if (UnitIsEnemy("player", unit) or weizPVP.Options.DEBUG) and UnitIsPlayer(unit) then
        local timestamp = GetTime()
        local name = GetUnitName(unit, true)
        local GUID = UnitGUID(unit) or nil

        --> Unit has valid name and GUID
        if name and GUID and name ~= "Unknown" then
            local guild = GetGuildInfo(unit)
            local class
            _, class = UnitClass(unit)
            local role = RoleAssign(UnitClass(unit))
            local level = UnitLevel(unit)
            local race = UnitRace(unit)
            local Dead = UnitIsDeadOrGhost(unit) or nil
            local Health = (UnitHealth(unit) / UnitHealthMax(unit) * 100) or nil
            local OnTaxi = UnitOnTaxi(unit)

            --> New DB Player?
            if not weizPVP.PlayerDB[name] then
                weizPVP.PlayerDB[name] = {}
                weizPVP.PlayerDB[name].Estimated = false
                weizPVP.PlayerDB[name].Name = name
                weizPVP.PlayerDB[name].Guild = guild
                weizPVP.PlayerDB[name].Class = class
                if role ~= nil then
                    weizPVP.PlayerDB[name].Role = role
                end
                weizPVP.PlayerDB[name].Level = level
                weizPVP.PlayerDB[name].Race = race
                weizPVP.PlayerDB[name].Timestamp = timestamp
            end

            --> New Cache Player
            if weizPVP.PlayerDB[name].Estimated == true or (weizPVP.PlayerDB[name].Timestamp + UnitDataThrottle < timestamp) then
                if not weizPVP.NearbyList[name] then --> Check if player is new to cache/list
                    --> Player new to cache; get data
                    weizPVP.PlayerDB[name].Estimated = false
                    weizPVP.PlayerDB[name].Guild = guild
                    weizPVP.PlayerDB[name].Race = race
                    weizPVP.PlayerDB[name].Level = level
                    if role ~= nil then
                        weizPVP.PlayerDB[name].Role = role
                    end
                    weizPVP.PlayerDB[name].Timestamp = timestamp
                    --> fp check
                    if weizPVP.PlayersOnBars[GUID] and weizPVP.PlayerActiveCache[GUID] then
                        if OnTaxi and not weizPVP.PlayerActiveCache[GUID].OnTaxi then
                            weizPVP.PlayerActiveCache[GUID].OnTaxi = true
                        elseif not OnTaxi and weizPVP.PlayerActiveCache[GUID].OnTaxi == true then
                            weizPVP.PlayerActiveCache[GUID].OnTaxi = false
                        end
                    end
                    --> Update player data on bars
                    weizPVP:UpdatePlayerActiveCache(name, Health, nil, Dead, role, GUID)
                    return
                end
            end

            weizPVP.PlayerDB[name].Estimated = false
            weizPVP.PlayerDB[name].Timestamp = timestamp
            if weizPVP.PlayersOnBars[GUID] and weizPVP.PlayerActiveCache[GUID] then
                if OnTaxi and not weizPVP.PlayerActiveCache[GUID].OnTaxi == true then
                    weizPVP.PlayerActiveCache[GUID].OnTaxi = true
                elseif not OnTaxi and weizPVP.PlayerActiveCache[GUID].OnTaxi == true then
                    weizPVP.PlayerActiveCache[GUID].OnTaxi = false
                end
            end

            weizPVP:UpdatePlayerActiveCache(name, Health, nil, Dead, role, GUID)
            return
        end
    end
end

--> Clear List Data
-------------------------------------------------------------------------------
function weizPVP:ClearListData()
    wipe(weizPVP.CurrentList)
    wipe(weizPVP.CurrentNameplates)
    wipe(weizPVP.NearbyList)
    wipe(weizPVP.ActiveList)
    wipe(weizPVP.InactiveList)
    wipe(weizPVP.ActiveDeadList)
    wipe(weizPVP.InactiveDeadList)
    wipe(weizPVP.PlayersOnBars)
    wipe(weizPVP.PlayerActiveCache)
    weizPVP.NearbyListSize = 0
    weizPVP:SortNearbyList()
    weizPVP:RefreshCurrentList()
    weizPVP.ManageBarsDisplayed()
    weizPVP:UpdateNearbyCount()
    weizPVP.TargetedIcon:Hide()
    --> Refresh Target
    weizPVP:PlayerTargetEvent()
end
