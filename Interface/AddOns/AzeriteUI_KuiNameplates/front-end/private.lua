local ADDON, Private = ...

-- Lua API
local _G = _G
local bit_band = bit.band
local math_floor = math.floor
local pairs = pairs
local rawget = rawget
local select = select
local setmetatable = setmetatable
local tonumber = tonumber
local unpack = unpack

-- WoW API
local GetTime = _G.GetTime
local InCombatLockdown = _G.InCombatLockdown
local UnitCanAttack = _G.UnitCanAttack
local UnitIsUnit = _G.UnitIsUnit
local UnitHasVehicleUI = _G.UnitHasVehicleUI
local UnitPlayerControlled = _G.UnitPlayerControlled

-- Addon API
local GetPlayerRole = CogWheel("LibPlayerData").GetPlayerRole
local HasAuraInfoFlags = CogWheel("LibAura").HasAuraInfoFlags

-- Databases
local infoFilter = CogWheel("LibAura"):GetAllAuraInfoBitFilters() -- Aura flags by keywords
local auraInfoFlags = CogWheel("LibAura"):GetAllAuraInfoFlags() -- Aura info flags
local auraUserFlags = {} -- Aura filter flags 
local auraFilters = {} -- Aura filter functions
local colorDB = {} -- Addon color schemes
local fontsDB = { normal = {}, outline = {} } -- Addon fonts

-- List of units we all count as the player
local unitIsPlayer = { player = true, 	pet = true, vehicle = true }

-- Utility Functions
-----------------------------------------------------------------
-- Convert a Blizzard Color or RGB value set 
-- into our own custom color table format. 
local createColor = function(...)
	local tbl
	if (select("#", ...) == 1) then
		local old = ...
		if (old.r) then 
			tbl = {}
			tbl[1] = old.r or 1
			tbl[2] = old.g or 1
			tbl[3] = old.b or 1
		else
			tbl = { unpack(old) }
		end
	else
		tbl = { ... }
	end
	if (#tbl == 3) then
		tbl.colorCode = ("|cff%02x%02x%02x"):format(math_floor(tbl[1]*255), math_floor(tbl[2]*255), math_floor(tbl[3]*255))
	end
	return tbl
end

-- Convert a whole Blizzard color table
local createColorGroup = function(group)
	local tbl = {}
	for i,v in pairs(group) do 
		tbl[i] = createColor(v)
	end 
	return tbl
end 

-- Populate Font Tables
-----------------------------------------------------------------
do 
	local fontPrefix = "KNP_Azerite"
	for i = 10,100 do 
		local fontNormal = _G[fontPrefix .. "Font" .. i]
		if fontNormal then 
			fontsDB.normal[i] = fontNormal
		end 
		local fontOutline = _G[fontPrefix .. "Font" .. i .. "_Outline"]
		if fontOutline then 
			fontsDB.outline[i] = fontOutline
		end 
	end 
end 

-- Populate Color Tables
-----------------------------------------------------------------
--colorDB.health = createColor(191/255, 0/255, 38/255)
colorDB.health = createColor(245/255, 0/255, 45/255)
colorDB.cast = createColor(229/255, 204/255, 127/255)
colorDB.disconnected = createColor(120/255, 120/255, 120/255)
colorDB.tapped = createColor(121/255, 101/255, 96/255)
colorDB.dead = createColor(121/255, 101/255, 96/255)

-- Global UI vertex coloring
colorDB.ui = {
	stone = createColor(192/255, 192/255, 192/255),
	wood = createColor(192/255, 192/255, 192/255)
}

-- quest difficulty coloring 
colorDB.quest = {}
colorDB.quest.red = createColor(204/255, 26/255, 26/255)
colorDB.quest.orange = createColor(255/255, 128/255, 64/255)
colorDB.quest.yellow = createColor(229/255, 178/255, 38/255)
colorDB.quest.green = createColor(89/255, 201/255, 89/255)
colorDB.quest.gray = createColor(120/255, 120/255, 120/255)

-- some basic ui colors used by all text
colorDB.normal = createColor(229/255, 178/255, 38/255)
colorDB.highlight = createColor(250/255, 250/255, 250/255)
colorDB.title = createColor(255/255, 234/255, 137/255)
colorDB.offwhite = createColor(196/255, 196/255, 196/255)

colorDB.xp = createColor(116/255, 23/255, 229/255) -- xp bar 
colorDB.xpValue = createColor(145/255, 77/255, 229/255) -- xp bar text
colorDB.rested = createColor(163/255, 23/255, 229/255) -- xp bar while being rested
colorDB.restedValue = createColor(203/255, 77/255, 229/255) -- xp bar text while being rested
colorDB.restedBonus = createColor(69/255, 17/255, 134/255) -- rested bonus bar
colorDB.artifact = createColor(229/255, 204/255, 127/255) -- artifact or azerite power bar

-- Unit Class Coloring
-- Original colors at https://wow.gamepedia.com/Class#Class_colors
colorDB.class = {}
colorDB.class.DEATHKNIGHT = createColor(176/255, 31/255, 79/255)
colorDB.class.DEMONHUNTER = createColor(163/255, 48/255, 201/255)
colorDB.class.DRUID = createColor(255/255, 125/255, 10/255)
colorDB.class.HUNTER = createColor(191/255, 232/255, 115/255) 
colorDB.class.MAGE = createColor(105/255, 204/255, 240/255)
colorDB.class.MONK = createColor(0/255, 255/255, 150/255)
colorDB.class.PALADIN = createColor(225/255, 160/255, 226/255)
colorDB.class.PRIEST = createColor(176/255, 200/255, 225/255)
colorDB.class.ROGUE = createColor(255/255, 225/255, 95/255) 
colorDB.class.SHAMAN = createColor(32/255, 122/255, 222/255) 
colorDB.class.WARLOCK = createColor(148/255, 130/255, 201/255) 
colorDB.class.WARRIOR = createColor(229/255, 156/255, 110/255) 
colorDB.class.UNKNOWN = createColor(195/255, 202/255, 217/255)

-- debuffs
colorDB.debuff = {}
colorDB.debuff.none = createColor(204/255, 0/255, 0/255)
colorDB.debuff.Magic = createColor(51/255, 153/255, 255/255)
colorDB.debuff.Curse = createColor(204/255, 0/255, 255/255)
colorDB.debuff.Disease = createColor(153/255, 102/255, 0/255)
colorDB.debuff.Poison = createColor(0/255, 153/255, 0/255)
colorDB.debuff[""] = createColor(0/255, 0/255, 0/255)

-- faction 
colorDB.faction = {}
colorDB.faction.Alliance = createColor(74/255, 84/255, 232/255)
colorDB.faction.Horde = createColor(229/255, 13/255, 18/255)
colorDB.faction.Neutral = createColor(249/255, 158/255, 35/255) 

-- power
colorDB.power = {}

local Fast = createColor(0/255, 208/255, 176/255) 
local Slow = createColor(116/255, 156/255, 255/255)
local Angry = createColor(156/255, 116/255, 255/255)

-- Crystal Power Colors
colorDB.power.ENERGY_CRYSTAL = Fast -- Rogues, Druids, Monks
colorDB.power.FURY_CRYSTAL = Angry -- Havoc Demon Hunter 
colorDB.power.FOCUS_CRYSTAL = Fast -- Hunters and Hunter Pets
colorDB.power.INSANITY_CRYSTAL = Angry -- Shadow Priests
colorDB.power.LUNAR_POWER_CRYSTAL = Slow -- Balance Druid Astral Power 
colorDB.power.MAELSTROM_CRYSTAL = Slow -- Elemental Shamans
colorDB.power.PAIN_CRYSTAL = Angry -- Vengeance Demon Hunter 
colorDB.power.RAGE_CRYSTAL = Angry -- Druids, Warriors
colorDB.power.RUNIC_POWER_CRYSTAL = Slow -- Death Knights

-- Orb Power Colors
colorDB.power.MANA_ORB = createColor(135/255, 125/255, 255/255) -- Druid, Mage, Monk, Paladin, Priest, Shaman, Warlock

-- Standard Power Colors
colorDB.power.ENERGY = createColor(254/255, 245/255, 145/255) -- Rogues, Druids, Monks
colorDB.power.FURY = createColor(255/255, 0/255, 111/255) -- Vengeance Demon Hunter
colorDB.power.FOCUS = createColor(125/255, 168/255, 195/255) -- Hunters and Hunter Pets
colorDB.power.INSANITY = createColor(102/255, 64/255, 204/255) -- Shadow Priests 
colorDB.power.LUNAR_POWER = createColor(121/255, 152/255, 192/255) -- Balance Druid Astral Power 
colorDB.power.MAELSTROM = createColor(0/255, 188/255, 255/255) -- Elemental Shamans
colorDB.power.MANA = createColor(80/255, 116/255, 255/255) -- Druid, Mage, Monk, Paladin, Priest, Shaman, Warlock
colorDB.power.PAIN = createColor(190 *.75/255, 255 *.75/255, 0/255) 
colorDB.power.RAGE = createColor(215/255, 7/255, 7/255) -- Druids, Warriors
colorDB.power.RUNIC_POWER = createColor(0/255, 236/255, 255/255) -- Death Knights

-- Secondary Resource Colors
colorDB.power.ARCANE_CHARGES = createColor(121/255, 152/255, 192/255) -- Arcane Mage
colorDB.power.CHI = createColor(126/255, 255/255, 163/255) -- Monk 
colorDB.power.COMBO_POINTS = createColor(255/255, 0/255, 30/255) -- Rogues, Druids, Vehicles
colorDB.power.HOLY_POWER = createColor(245/255, 254/255, 145/255) -- Retribution Paladins 
colorDB.power.RUNES = createColor(100/255, 155/255, 225/255) -- Death Knight 
colorDB.power.SOUL_SHARDS = createColor(148/255, 130/255, 201/255) -- Warlock 

-- Alternate Power
colorDB.power.ALTERNATE = createColor(70/255, 255/255, 131/255)

-- Vehicle Powers
colorDB.power.AMMOSLOT = createColor(204/255, 153/255, 0/255)
colorDB.power.FUEL = createColor(0/255, 140/255, 127/255)
colorDB.power.STAGGER = {}
colorDB.power.STAGGER[1] = createColor(132/255, 255/255, 132/255) 
colorDB.power.STAGGER[2] = createColor(255/255, 250/255, 183/255) 
colorDB.power.STAGGER[3] = createColor(255/255, 107/255, 107/255) 

-- Fallback for the rare cases where an unknown type is requested.
colorDB.power.UNUSED = createColor(195/255, 202/255, 217/255) 

-- Allow us to use power type index to get the color
-- FrameXML/UnitFrame.lua
colorDB.power[0] = colorDB.power.MANA
colorDB.power[1] = colorDB.power.RAGE
colorDB.power[2] = colorDB.power.FOCUS
colorDB.power[3] = colorDB.power.ENERGY
colorDB.power[4] = colorDB.power.CHI
colorDB.power[5] = colorDB.power.RUNES
colorDB.power[6] = colorDB.power.RUNIC_POWER
colorDB.power[7] = colorDB.power.SOUL_SHARDS
colorDB.power[8] = colorDB.power.LUNAR_POWER
colorDB.power[9] = colorDB.power.HOLY_POWER
colorDB.power[11] = colorDB.power.MAELSTROM
colorDB.power[13] = colorDB.power.INSANITY
colorDB.power[17] = colorDB.power.FURY
colorDB.power[18] = colorDB.power.PAIN

-- reactions
colorDB.reaction = {}
colorDB.reaction[1] = createColor(205/255, 46/255, 36/255) -- hated
colorDB.reaction[2] = createColor(205/255, 46/255, 36/255) -- hostile
colorDB.reaction[3] = createColor(192/255, 68/255, 0/255) -- unfriendly
colorDB.reaction[4] = createColor(249/255, 188/255, 65/255) -- neutral 
--colorDB.reaction[4] = createColor(249/255, 158/255, 35/255) -- neutral 
colorDB.reaction[5] = createColor(64/255, 131/255, 38/255) -- friendly
colorDB.reaction[6] = createColor(64/255, 131/255, 69/255) -- honored
colorDB.reaction[7] = createColor(64/255, 131/255, 104/255) -- revered
colorDB.reaction[8] = createColor(64/255, 131/255, 131/255) -- exalted
colorDB.reaction.civilian = createColor(64/255, 131/255, 38/255) -- used for friendly player nameplates

-- friendship
-- just using this as pointers to the reaction colors, 
-- so there won't be a need to ever edit these.
colorDB.friendship = {}
colorDB.friendship[1] = colorDB.reaction[3] -- Stranger
colorDB.friendship[2] = colorDB.reaction[4] -- Acquaintance 
colorDB.friendship[3] = colorDB.reaction[5] -- Buddy
colorDB.friendship[4] = colorDB.reaction[6] -- Friend (honored color)
colorDB.friendship[5] = colorDB.reaction[7] -- Good Friend (revered color)
colorDB.friendship[6] = colorDB.reaction[8] -- Best Friend (exalted color)
colorDB.friendship[7] = colorDB.reaction[8] -- Best Friend (exalted color) - brawler's stuff
colorDB.friendship[8] = colorDB.reaction[8] -- Best Friend (exalted color) - brawler's stuff

-- player specializations
colorDB.specialization = {}
colorDB.specialization[1] = createColor(0/255, 215/255, 59/255)
colorDB.specialization[2] = createColor(217/255, 33/255, 0/255)
colorDB.specialization[3] = createColor(218/255, 30/255, 255/255)
colorDB.specialization[4] = createColor(48/255, 156/255, 255/255)

-- timers (breath, fatigue, etc)
colorDB.timer = {}
colorDB.timer.UNKNOWN = createColor(179/255, 77/255, 0/255) -- fallback for timers and unknowns
colorDB.timer.EXHAUSTION = createColor(179/255, 77/255, 0/255)
colorDB.timer.BREATH = createColor(0/255, 128/255, 255/255)
colorDB.timer.DEATH = createColor(217/255, 90/255, 0/255) 
colorDB.timer.FEIGNDEATH = createColor(217/255, 90/255, 0/255) 

-- threat
colorDB.threat = {}
colorDB.threat[0] = colorDB.reaction[4] -- not really on the threat table
colorDB.threat[1] = createColor(249/255, 158/255, 35/255) -- tanks having lost threat, dps overnuking 
colorDB.threat[2] = createColor(255/255, 96/255, 12/255) -- tanks about to lose threat, dps getting aggro
colorDB.threat[3] = createColor(255/255, 0/255, 0/255) -- securely tanking, or totally fucked :) 

-- zone names
colorDB.zone = {}
colorDB.zone.arena = createColor(175/255, 76/255, 56/255)
colorDB.zone.combat = createColor(175/255, 76/255, 56/255) 
colorDB.zone.contested = createColor(229/255, 159/255, 28/255)
colorDB.zone.friendly = createColor(64/255, 175/255, 38/255) 
colorDB.zone.hostile = createColor(175/255, 76/255, 56/255) 
colorDB.zone.sanctuary = createColor(104/255, 204/255, 239/255)
colorDB.zone.unknown = createColor(255/255, 234/255, 137/255) -- instances, bgs, contested zones on pve realms 

-- Item rarity coloring
colorDB.quality = createColorGroup(ITEM_QUALITY_COLORS)

-- world quest quality coloring
-- using item rarities for these colors
colorDB.worldquestquality = {}
colorDB.worldquestquality[LE_WORLD_QUEST_QUALITY_COMMON] = colorDB.quality[ITEM_QUALITY_COMMON]
colorDB.worldquestquality[LE_WORLD_QUEST_QUALITY_RARE] = colorDB.quality[ITEM_QUALITY_RARE]
colorDB.worldquestquality[LE_WORLD_QUEST_QUALITY_EPIC] = colorDB.quality[ITEM_QUALITY_EPIC]

-- Aura Filter Bitflags
-----------------------------------------------------------------
-- These are front-end filters and describe display preference, 
-- they are unrelated to the factual, purely descriptive back-end filters. 
local ByPlayer 			= tonumber("000000000000000000000000000000001", 2) -- Show when cast by player

-- Unit visibility
local OnPlayer 			= tonumber("000000000000000000000000000000010", 2) -- Show on player frame
local OnTarget 			= tonumber("000000000000000000000000000000100", 2) -- Show on target frame 
local OnPet 			= tonumber("000000000000000000000000000001000", 2) -- Show on pet frame
local OnToT 			= tonumber("000000000000000000000000000010000", 2) -- Shown on tot frame
local OnFocus 			= tonumber("000000000000000000000000000100000", 2) -- Show on focus frame 
local OnParty 			= tonumber("000000000000000000000000001000000", 2) -- Show on party members
local OnBoss 			= tonumber("000000000000000000000000010000000", 2) -- Show on boss frames
local OnArena			= tonumber("000000000000000000000000100000000", 2) -- Show on arena enemy frames
local OnFriend 			= tonumber("000000000000000000000001000000000", 2) -- Show on friendly units, regardless of frame
local OnEnemy 			= tonumber("000000000000000000000010000000000", 2) -- Show on enemy units, regardless of frame

-- Player role visibility
local PlayerIsDPS 		= tonumber("000000000000000000000100000000000", 2) -- Show when player is a damager
local PlayerIsHealer 	= tonumber("000000000000000000001000000000000", 2) -- Show when player is a healer
local PlayerIsTank 		= tonumber("000000000000000000010000000000000", 2) -- Show when player is a tank 

-- Aura visibility priority
local Never 			= tonumber("000000100000000000000000000000000", 2) -- Never show (Blacklist)
local PrioLow 			= tonumber("000001000000000000000000000000000", 2) -- Low priority, will only be displayed if room
local PrioMedium 		= tonumber("000010000000000000000000000000000", 2) -- Normal priority, same as not setting any
local PrioHigh 			= tonumber("000100000000000000000000000000000", 2) -- High priority, shown first after boss
local PrioBoss 			= tonumber("001000000000000000000000000000000", 2) -- Same priority as boss debuffs
local Always 			= tonumber("010000000000000000000000000000000", 2) -- Always show (Whitelist)

local NeverOnPlate 		= tonumber("100000000000000000000000000000000", 2) -- Never show on plates (Blacklist)

-- Aura Filter Functions
-----------------------------------------------------------------
auraFilters.default = function(element, isBuff, unit, isOwnedByPlayer, name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellID, canApplyAura, isBossDebuff, isCastByPlayer, nameplateShowAll, timeMod, value1, value2, value3)

	local timeLeft 
	if (expirationTime and expirationTime > 0) then 
		timeLeft = expirationTime - GetTime()
	end

	if (isBossDebuff or (unitCaster == "vehicle")) then
		return true
	elseif (count and (count > 1)) then 
		return true
	elseif InCombatLockdown() then 
		if (duration and (duration > 0) and (duration < 180)) or (timeLeft and (timeLeft < 180)) then
			return true
		end 
	else 
		if isBuff then 
			if (not duration) or (duration <= 0) or (duration > 180) or (timeLeft and (timeLeft > 180)) then 
				return true
			end 
		else
			if (duration and (duration > 0) and (duration < 180)) or (timeLeft and (timeLeft < 180)) then
				return true
			end
		end 
	end 
end

auraFilters.player = function(element, isBuff, unit, isOwnedByPlayer, name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellID, canApplyAura, isBossDebuff, isCastByPlayer, nameplateShowAll, timeMod, value1, value2, value3)

	-- Retrieve filter flags
	local infoFlags = auraInfoFlags[spellID]
	local userFlags = auraUserFlags[spellID]

	local timeLeft 
	if (expirationTime and expirationTime > 0) then 
		timeLeft = expirationTime - GetTime()
	end

	if (isBossDebuff or isBossDebuff or (userFlags and (bit_band(userFlags, PrioBoss) ~= 0)) or (unitCaster == "vehicle")) then
		return true

	-- Attempting to show vehicle or possessed unit's buffs 
	-- *This fixes style multipliers now showing in the BFA horse riding
	elseif UnitHasVehicleUI("player") and (isCastByPlayer or unitCaster == "pet" or unitCaster == "vehicle") then 
		return true 

	elseif InCombatLockdown() then 

		if userFlags then 
			if unitIsPlayer[unit] and (bit_band(userFlags, OnPlayer) ~= 0) then 
				return true  
			end

		elseif infoFlags then 
			if (unitCaster and isOwnedByPlayer) and (bit_band(infoFlags, infoFilter.IsPlayerSpell) ~= 0) then 
				return true  
			end
		end

		-- Auras from hostile npc's
		if (not unitCaster) or (UnitCanAttack("player", unitCaster) and (not UnitPlayerControlled(unitCaster))) then 
			return ((not isBuff) and (duration and duration < 180))
		end

	else 
		if userFlags then 
			if unitIsPlayer[unit] and (bit_band(userFlags, OnPlayer) ~= 0) then 
				return true  
			end
		elseif isBuff then 
			if (not duration) or (duration <= 0) or (duration > 180) or (timeLeft and (timeLeft > 180)) then 
				return true
			end 
		else
			return true
		end 
	end 
end 

auraFilters.target = function(element, isBuff, unit, isOwnedByPlayer, name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellID, canApplyAura, isBossDebuff, isCastByPlayer, nameplateShowAll, timeMod, value1, value2, value3)

	-- Retrieve filter flags
	local infoFlags = auraInfoFlags[spellID]
	local userFlags = auraUserFlags[spellID]
	
	-- Figure out time currently left
	local timeLeft 
	if (expirationTime and expirationTime > 0) then 
		timeLeft = expirationTime - GetTime()
	end

	-- Stealable and boss auras
	if (isStealable or isBossDebuff or (userFlags and (bit_band(userFlags, PrioBoss) ~= 0))) then 
		return true 

	-- Auras on enemies
	elseif UnitCanAttack("player", unit) then 
		if InCombatLockdown() then 

			-- Show filtered auras on hostiles
			if infoFlags then 
				if (bit_band(infoFlags, infoFilter.IsPlayerSpell) ~= 0) then 
					return isOwnedByPlayer 
				elseif (bit_band(infoFlags, PlayerIsTank) ~= 0) then 
					return (GetPlayerRole() == "TANK")
				else
					return (bit_band(infoFlags, OnEnemy) ~= 0)
				end 
			end 

			-- Show short self-buffs on enemies 
			if isBuff then 
				if unitCaster and UnitIsUnit(unit, unitCaster) and UnitCanAttack("player", unit) then 
					return ((duration and (duration > 0) and (duration < 180)) or (timeLeft and (timeLeft < 180)))
				end
			end 
		else 

			-- Show long/no duration auras out of combat
			if (not duration) or (duration <= 0) or (duration > 180) or (timeLeft and (timeLeft > 180)) then 
				return true
			end 
		end 

	-- Auras on friends
	else 
		if InCombatLockdown() then 

			-- Show filtered auras
			if infoFlags then 
				if (userFlags and (bit_band(userFlags, OnFriend) ~= 0)) then 
					return true
				elseif (bit_band(infoFlags, infoFilter.IsPlayerSpell) ~= 0) then 
					return isOwnedByPlayer 
				end
			end 

		else 

			-- Show long/no duration auras out of combat
			if (not duration) or (duration <= 0) or (duration > 180) or (timeLeft and (timeLeft > 180)) then 
				return true
			end 
		end 
	end 
end

auraFilters.nameplate = function(element, isBuff, unit, isOwnedByPlayer, name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellID, canApplyAura, isBossDebuff, isCastByPlayer, nameplateShowAll, timeMod, value1, value2, value3)

	local timeLeft 
	if (expirationTime and expirationTime > 0) then 
		timeLeft = expirationTime - GetTime()
	end

	local infoFlags = auraInfoFlags[spellID]
	local userFlags = auraUserFlags[spellID]

	if infoFlags then 
		if (unitCaster and isOwnedByPlayer) and (bit_band(infoFlags, infoFilter.IsPlayerSpell) ~= 0) then 
			if (userFlags and (bit_band(userFlags, NeverOnPlate) ~= 0)) then 
				return
			else
				return ((duration and (duration > 0) and (duration < 180)) or (timeLeft and (timeLeft < 180)))
			end
		end 
	end 
end 

auraFilters.focus = function(element, isBuff, unit, isOwnedByPlayer, name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellID, canApplyAura, isBossDebuff, isCastByPlayer, nameplateShowAll, timeMod, value1, value2, value3)
	return auraFilters.target(element, button, unit, isOwnedByPlayer, name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellID, canApplyAura, isBossDebuff, isCastByPlayer, nameplateShowAll, timeMod, value1, value2, value3)
end

auraFilters.targettarget = function(element, isBuff, unit, isOwnedByPlayer, name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellID, canApplyAura, isBossDebuff, isCastByPlayer, nameplateShowAll, timeMod, value1, value2, value3)
	return auraFilters.target(element, button, unit, isOwnedByPlayer, name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellID, canApplyAura, isBossDebuff, isCastByPlayer, nameplateShowAll, timeMod, value1, value2, value3)
end

auraFilters.party = function(element, isBuff, unit, isOwnedByPlayer, name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellID, canApplyAura, isBossDebuff, isCastByPlayer, nameplateShowAll, timeMod, value1, value2, value3)

	local userFlags = auraUserFlags[spellID]

	if userFlags then
		return (bit_band(userFlags, OnFriend) ~= 0)
	else
		return isBossDebuff or (userFlags and (bit_band(userFlags, PrioBoss) ~= 0))
	end
end

auraFilters.boss = function(element, isBuff, unit, isOwnedByPlayer, name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellID, canApplyAura, isBossDebuff, isCastByPlayer, nameplateShowAll, timeMod, value1, value2, value3)

	local infoFlags = auraInfoFlags[spellID]
	local userFlags = auraUserFlags[spellID]

	if infoFlags then
		if (bit_band(infoFlags, infoFilter.IsPlayerSpell) ~= 0) then 
			return isOwnedByPlayer 
		else 
			return userFlags and (bit_band(userFlags, OnEnemy) ~= 0)
		end 
	else
		return isBossDebuff or (userFlags and (bit_band(userFlags, PrioBoss) ~= 0))
	end
end

auraFilters.arena = function(element, isBuff, unit, isOwnedByPlayer, name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, nameplateShowPersonal, spellID, canApplyAura, isBossDebuff, isCastByPlayer, nameplateShowAll, timeMod, value1, value2, value3)

	local infoFlags = auraInfoFlags[spellID]
	local userFlags = auraUserFlags[spellID]

	if infoFlags then
		if (bit_band(infoFlags, infoFilter.IsPlayerSpell) ~= 0) then 
			return isOwnedByPlayer 
		else 
			return userFlags and (bit_band(userFlags, OnEnemy) ~= 0)
		end 
	end
end

-- Add a fallback system
-- *needed in case non-existing unit filters are requested 
local filterFuncs = setmetatable(auraFilters, { __index = function(t,k) return rawget(t,k) or rawget(t, "default") end})

-- Private API
-----------------------------------------------------------------
Private.Colors = colorDB
Private.GetAuraFilterFunc = function(unit) return filterFuncs[unit or "default"] end
Private.GetFont = function(size, outline) return fontsDB[outline and "outline" or "normal"][size] end
Private.GetMedia = function(name, type) return ([[Interface\AddOns\%s\media\%s.%s]]):format(ADDON, name, type or "tga") end

-- Media cache for less function calls
---------------------------------------------------------------------	
Private.Media = {
	-- Sizes
	Size = 					{ 80,32 },
	BackdropSize = 			{ 21504/228, 896/36 },
	BarCoords = 			{ 14/256, 242/256, 14/64, 50/64 },

	-- Textures
	BarTexture = 			Private.GetMedia("nameplate_bar"),
	BackdropTexture = 		Private.GetMedia("nameplate_backdrop"),
	CastBarTexture = 		Private.GetMedia("cast_bar"), 
	GlowTexture = 			Private.GetMedia("nameplate_glow"),
	RaidTargetTexture = 	Private.GetMedia("raid_target_icons"), -- raid_target_icons_small 
	ShieldTexture = 		Private.GetMedia("cast_back_spiked"),

	-- Fonts
	CastFont = 				Private.GetFont(12, true),
	HealthFont = 			Private.GetFont(10, true),
	NameFont = 				Private.GetFont(12, true),

	-- Auras
	AuraBackdrop = { 
		edgeFile = Private.GetMedia("aura_border"), 
		edgeSize = 12 
	},
	
	-- Coordinate map to make our statusbar sparks
	-- follow the shape of our statusbars. 
	-- This requires our own back-end statusbar library.
	BarMap = {
		top = {
			{ keyPercent =   0/256, offset = -16/32 }, 
			{ keyPercent =   4/256, offset = -16/32 }, 
			{ keyPercent =  19/256, offset =   0/32 }, 
			{ keyPercent = 236/256, offset =   0/32 }, 
			{ keyPercent = 256/256, offset = -16/32 }
		},
		bottom = {
			{ keyPercent =   0/256, offset = -16/32 }, 
			{ keyPercent =   4/256, offset = -16/32 }, 
			{ keyPercent =  19/256, offset =   0/32 }, 
			{ keyPercent = 236/256, offset =   0/32 }, 
			{ keyPercent = 256/256, offset = -16/32 }
		}
	}
}
