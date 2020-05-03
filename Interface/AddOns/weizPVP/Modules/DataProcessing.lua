-------------------------------------------------------------------------------
--|> DATA PROCESSING
--: Functions that help acquire and manage data involving the PlayerDB
-------------------------------------------------------------------------------
--|> Upvalue Globals
-------------------------------------------------------------------------------
local _, NS = ...
local UnitName = UnitName
local GetGuildInfo = GetGuildInfo
local GetTime = GetTime

--> UpdatePlayerActiveCache
--:  Updates data in the PlayerActiveCache and then calls
--: Sends data off the Lists to be processed
-----------------------------------------------------------------------
function NS.UpdatePlayerActiveCache(name, health, stealth, dead, role, GUID)
    --> Verify GUIDexists
    if not GUID then
        return
    end
    local newPlayerOnList
    --: Check for player already in cache
    if NS.PlayerActiveCache[GUID] then
        newPlayerOnList = false
    else
        NS.PlayerActiveCache[GUID] = {}
        newPlayerOnList = true
    end
    --: Update PlayerCache info
    if newPlayerOnList then
        NS.PlayerActiveCache[GUID].GUID = GUID
        --> NAME
        if name then
            NS.PlayerActiveCache[GUID].Name = name
        elseif NS.PlayerDB[name].Name then
            NS.PlayerActiveCache[GUID].Name = NS.PlayerDB[name].Name
        end
        --> LEVEL
        if NS.PlayerDB[name].Level then
            NS.PlayerActiveCache[GUID].Level = NS.PlayerDB[name].Level
            NS.PlayerActiveCache[GUID].Estimated = NS.PlayerDB[name].Estimated
        else -- no level found
            NS.PlayerActiveCache[GUID].Level = 0
            NS.PlayerActiveCache[GUID].Estimated = true
            NS.PlayerDB[name].Level = 0
            NS.PlayerDB[name].Estimated = true
        end
        --> CLASS
        if NS.PlayerDB[name].Class then
            NS.PlayerActiveCache[GUID].Class = NS.PlayerDB[name].Class
        end
        --> GUILD
        if NS.PlayerDB[name].Guild then
            NS.PlayerActiveCache[GUID].Guild = NS.PlayerDB[name].Guild
        end
        --> HEALTH
        if health ~= nil then
            NS.PlayerActiveCache[GUID].Health = health
        elseif NS.PlayerActiveCache[GUID].Health == nil then
            NS.PlayerActiveCache[GUID].Health = 100
        end
        --> STEALTH
        if stealth ~= nil then
            NS.PlayerActiveCache[GUID].Stealth = stealth
        end
        --> DEAD
        if dead ~= nil then
            NS.PlayerActiveCache[GUID].Dead = dead
            if dead == true then
                NS.PlayerActiveCache[GUID].Health = 0
            end
        end
        --> ROLE
        if role ~= nil then
            NS.PlayerActiveCache[GUID].Role = role
            NS.PlayerDB[name].Role = role
        end
    end
    --> Add player Data to lists
    NS.AddPlayerDataToNearby(GUID, newPlayerOnList)
end

--> Static Role Assignment
local function RoleAssign(class)
    if class == "ROGUE" or class == "MAGE" or class == "WARLOCK" or class == "HUNTER" then
        return "DAMAGER"
    end
    return nil
end

--> GET UNIT DATA
-- Gets data for events with a UNITID, such as 'target' or 'nameplate'
local UnitDataThrottle = 2
function NS.GetUnitData(unit)
    if (not unit) or (not UnitExists(unit)) then -- unit check
        return
    end
    if NS.IsUnitValidForTracking(unit) then -- Valid player?
        local timestamp = GetTime()
        local name = NS.GetUnitName(unit)
        local GUID = UnitGUID(unit) or nil
        -- Unit has valid name and GUID
        if name and GUID then
            local guild = GetGuildInfo(unit)
            local class
            _, class = UnitClass(unit)
            local role = RoleAssign(UnitClass(unit))
            local level = UnitLevel(unit)
            local race = UnitRace(unit)
            local Dead = UnitIsDeadOrGhost(unit) or nil
            local Health = (UnitHealth(unit) / UnitHealthMax(unit) * 100) or nil
            local OnTaxi = UnitOnTaxi(unit)
            -- New DB Player?
            if not NS.PlayerDB[name] then
                NS.PlayerDB[name] = {}
                NS.PlayerDB[name].Estimated = false
                NS.PlayerDB[name].Name = name
                NS.PlayerDB[name].Guild = guild
                NS.PlayerDB[name].Class = class
                if role ~= nil then
                    NS.PlayerDB[name].Role = role
                end
                NS.PlayerDB[name].Level = level
                NS.PlayerDB[name].Race = race
                NS.PlayerDB[name].Timestamp = timestamp
            end
            -- New Cache Player
            if NS.PlayerDB[name].Estimated == true or (NS.PlayerDB[name].Timestamp + UnitDataThrottle < timestamp) then
                if not NS.NearbyList[name] then -- Check if player is new to cache/list
                    -- Player new to cache; get data
                    NS.PlayerDB[name].Estimated = false
                    NS.PlayerDB[name].Guild = guild
                    NS.PlayerDB[name].Race = race
                    NS.PlayerDB[name].Level = level
                    if role ~= nil then
                        NS.PlayerDB[name].Role = role
                    end
                    NS.PlayerDB[name].Timestamp = timestamp
                    -- Active visible player
                    if NS.PlayersOnBars[GUID] and NS.PlayerActiveCache[GUID] then
                        if OnTaxi and not NS.PlayerActiveCache[GUID].OnTaxi then
                            NS.PlayerActiveCache[GUID].OnTaxi = true
                        elseif not OnTaxi and NS.PlayerActiveCache[GUID].OnTaxi == true then
                            NS.PlayerActiveCache[GUID].OnTaxi = false
                        end
                        if UnitCanAttack("player", unit) then
                            NS.PlayerActiveCache[GUID].Unattackable = nil
                        else
                            NS.PlayerActiveCache[GUID].Unattackable = true
                        end
                    end
                    -- Update player data on bars
                    NS.UpdatePlayerActiveCache(name, Health, false, Dead, role, GUID)
                    return
                end
            end
            NS.PlayerDB[name].Estimated = false
            NS.PlayerDB[name].Timestamp = timestamp
            if NS.PlayersOnBars[GUID] and NS.PlayerActiveCache[GUID] then
                if OnTaxi and not NS.PlayerActiveCache[GUID].OnTaxi == true then
                    NS.PlayerActiveCache[GUID].OnTaxi = true
                elseif not OnTaxi and NS.PlayerActiveCache[GUID].OnTaxi == true then
                    NS.PlayerActiveCache[GUID].OnTaxi = false
                end
            end
            NS.UpdatePlayerActiveCache(name, Health, nil, Dead, role, GUID)
            return
        end
    end
end

--> Is Unit Valid For Tracking
function NS.IsUnitValidForTracking(unit)
    if (not unit) or (not UnitIsPlayer(unit)) then -- input check
        return false
    end
    if string.find(GetUnitName(unit), "Unknown") then
        return false
    end
    if (UnitCanAttack("player", unit) or UnitIsEnemy("player", unit) or NS.Options.DEBUG) then -- attackable player check
        if not string.find(UnitGUID(unit), "Player") then -- player GUID check
            return false
        end
        return true -- VALID
    end
    return false
end

--> weizPVP's GetUnitName()
--: Returns "playerName-realmName" for all players
local gsub = gsub
function NS.GetUnitName(unit)
    if not unit then -- check for unit
        return
    end
    local name, realm = UnitName(unit, true) -- check for unit name
    if not name then
        return nil
    end
    if not realm then -- same realm
        return name .. "-" .. NS.PlayerRealm -- name + player's realm
    else -- different server
        realm = gsub(realm, "[%s%-]", "") --strip
        return name .. "-" .. realm
    end
end
