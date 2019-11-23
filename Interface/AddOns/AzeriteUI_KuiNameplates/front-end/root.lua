local ADDON,Private = ...

local Core = _G.KuiNameplates
if (not Core) then 
	return 
end

local Layout = Core:Layout()
if (not Layout) then
	return -- Another layout is already loaded
end

_G.KuiNameplatesCore = {}
Core.Layout = function() return _G.KuiNameplatesCore end 

local LibStatusBar = CogWheel("LibStatusBar")
assert(LibStatusBar, "KuiNameplates: AzeriteUI requires LibStatusBar to be loaded.")

local LibPlayerData = CogWheel("LibPlayerData")
assert(LibPlayerData, "KuiNameplates: AzeriteUI requires LibPlayerData to be loaded.")

-- Lua API
local _G = _G
local math_floor = math.floor
local math_modf = math.modf
local pairs = pairs
local select = select
local string_byte = string.byte
local string_find = string.find
local string_format = string.format
local string_gsub = string.gsub
local string_len = string.len
local string_sub = string.sub
local tonumber = tonumber
local tostring = tostring
local unpack = unpack

-- WoW API
local GetCVarDefault = _G.GetCVarDefault
local IsInGroup = _G.IsInGroup
local IsInInstance = _G.IsInInstance
local UnitCanAttack = _G.UnitCanAttack
local SetCVar = _G.SetCVar
local UnitClass = _G.UnitClass
local UnitClassification = _G.UnitClassification
local UnitExists = _G.UnitExists
local UnitGetIncomingHeals = _G.UnitGetIncomingHeals
local UnitGetTotalAbsorbs = _G.UnitGetTotalAbsorbs
local UnitGetTotalHealAbsorbs = _G.UnitGetTotalHealAbsorbs
local UnitGUID = _G.UnitGUID
local UnitHealth = _G.UnitHealth
local UnitHealthMax = _G.UnitHealthMax
local UnitIsConnected = _G.UnitIsConnected
local UnitIsDeadOrGhost = _G.UnitIsDeadOrGhost
local UnitIsEnemy = _G.UnitIsEnemy
local UnitIsFriend = _G.UnitIsFriend
local UnitIsPlayer = _G.UnitIsPlayer
local UnitIsUnit = _G.UnitIsUnit
local UnitIsTapDenied = _G.UnitIsTapDenied 
local UnitLevel = _G.UnitLevel
local UnitPlayerControlled = _G.UnitPlayerControlled
local UnitPower = _G.UnitPower
local UnitPowerMax = _G.UnitPowerMax
local UnitPowerType = _G.UnitPowerType
local UnitReaction = _G.UnitReaction
local UnitThreatSituation = _G.UnitThreatSituation

-- Private Addon API
local GetAuraFilterFunc = Private.GetAuraFilterFunc
local Colors = Private.Colors
local Media = Private.Media

-- Define all our functions so the order doesn't matter
local Auras_PostCreateAuraButton, Auras_PostDisplayAuraButton, Auras_PostUpdateAuraFrame
local CastBar_Hide, CastBar_Show
local CastBar_Clear, CastBar_SetFadeTimer, CastBar_ClearFadeTimer, CastBar_ClearName, CastBar_ClearShield
local CastBar_Update, CastBar_UpdateName, CastBar_UpdateShield
local Classification_Update
local HealthBar_UpdateColor
local HealthText_Update, HealthText_UpdateVisibility
local Highlight_UpdateVisibility
local NameText_UpdateVisibility
local PowerBar_UpdateColor, PowerBar_UpdateVisibility
local Plate_UpdateOrientation
local ThreatGlow_Update

-- Localization
local L = {
	["Away"] = AFK,
	["Interrupted"] = INTERRUPTED,
	["Offline"] = PLAYER_OFFLINE,
	["Success"] = SUCCESS
}

-- Player Class. Never changes. 
local playerClass = select(2,UnitClass("player"))

-- Combat tracking flag
local COMBAT

-- Private CastBar Timer
---------------------------------------------------------------------	
local CastCache = {}
local CastTimer = CreateFrame("Frame", nil, WorldFrame)
CastTimer:Hide()
CastTimer:SetScript("OnUpdate", function(_, elapsed) 
	local numTimer = 0
	for plate,timeLeft in pairs(CastCache) do 
		timeLeft = timeLeft - elapsed
		if (timeLeft > 0) then 
			CastCache[plate] = timeLeft 
			numTimer = numTimer + 1
		else 
			plate.Cast:Hide()
			CastBar_ClearFadeTimer(plate)
		end
	end
	if (numTimer == 0) then 
		CastTimer:Hide()
	end
end)

-- Utility Functions
---------------------------------------------------------------------	
-- Calculate a RGB gradient from a minimum of 2 sets of RGB values
local colorsAndPercent = function(currentValue, maxValue, ...)
	if (currentValue <= 0 or maxValue == 0) then
		return nil, ...
	elseif (currentValue >= maxValue) then
		return nil, select(-3, ...)
	end
	local num = select("#", ...) / 3
	local segment, relperc = math_modf((currentValue / maxValue) * (num - 1))
	return relperc, select((segment * 3) + 1, ...)
end

-- RGB color gradient calculation from a minimum of 2 sets of RGB values
-- local r, g, b = gradient(currentValue, maxValue, r1, g1, b1, r2, g2, b2[, r3, g3, b3, ...])
local gradient = function(currentValue, maxValue, ...)
	local relperc, r1, g1, b1, r2, g2, b2 = colorsAndPercent(currentValue, maxValue, ...)
	if (relperc) then
		return r1 + (r2 - r1) * relperc, g1 + (g2 - g1) * relperc, b1 + (b2 - b1) * relperc
	else
		return r1, g1, b1
	end
end

-- Large numbers
local large = function(value)
	if (value >= 1e8) then 		return string_format("%.0fm", value/1e6) -- 100m, 1000m, 2300m, etc
	elseif (value >= 1e6) then 	return string_format("%.1fm", value/1e6) -- 1.0m - 99.9m 
	elseif (value >= 1e5) then 	return string_format("%.0fk", value/1e3) -- 100k - 999k
	elseif (value >= 1e3) then 	return string_format("%.1fk", value/1e3) -- 1.0k - 99.9k
	elseif (value > 0) then 	return value 										 -- 1 - 999
	else 						return ""
	end 
end 

-- Short abbreviated numbers
local short = (GetLocale() == "zhCN") and 
function(value)
	value = tonumber(value)
	if (not value) then return "" end
	if (value >= 1e8) then
		return string_gsub(string_format("%.1f亿", value/1e8), "%.?0+([km])$", "%1")
	elseif ((value >= 1e4) or (value <= -1e3)) then
		return string_gsub(string_format("%.1f万", value/1e4), "%.?0+([km])$", "%1")
	else
		return tostring(math_floor(value))
	end 
end 
or 
function(value)
	value = tonumber(value)
	if (not value) then return "" end
	if (value >= 1e9) then
		return string_gsub(string_format("%.1fb", value/1e9), "%.?0+([kmb])$", "%1")
	elseif (value >= 1e6) then
		return string_gsub(string_format("%.1fm", value/1e6), "%.?0+([kmb])$", "%1")
	elseif ((value >= 1e3) or (value <= -1e3)) then
		return string_gsub(string_format("%.1fk", value/1e3), "%.?0+([kmb])$", "%1")
	else
		return tostring(math_floor(value))
	end	
end

-- String truncating
local utf8sub = function(str, i, dots)
	if (not str) then 
		return 
	end
	local bytes = string_len(str)
	if (bytes <= i) then
		return str
	else
		local len, pos = 0, 1
		while (pos <= bytes) do
			len = len + 1
			local c = string_byte(str,pos)
			if ((c > 0) and (c <= 127)) then
				pos = pos + 1
			elseif ((c >= 192) and (c <= 223)) then
				pos = pos + 2
			elseif ((c >= 224) and (c <= 239)) then
				pos = pos + 3
			elseif ((c >= 240) and (c <= 247)) then
				pos = pos + 4
			end
			if (len == i) then 
				break 
			end
		end
		if ((len == i) and (pos <= bytes)) then
			return string_sub(str, 1, pos-1)..(dots and "..." or "")
		else
			return str
		end
	end
end

-- NamePlate Callbacks
---------------------------------------------------------------------	
Auras_PostCreateAuraButton = function(auraFrame,button)
	local layer, level = button.icon:GetDrawLayer()
	button.icon:ClearAllPoints()
	button.icon:SetPoint("CENTER",0,0)
	button.icon:SetSize(24,24)
	button.icon:SetTexCoord(5/64, 59/64, 5/64, 59/64)

	button.darken = button:CreateTexture()
	button.darken:SetDrawLayer(layer, level + 1)
	button.darken:SetSize(button.icon:GetSize())
	button.darken:SetPoint("CENTER", 0, 0)
	button.darken:SetColorTexture(0, 0, 0, .25)

	button.overlay = CreateFrame("Frame", nil, button)
	button.overlay:SetFrameLevel(button:GetFrameLevel() + 10)
	button.overlay:ClearAllPoints()
	button.overlay:SetPoint("CENTER", 0, 0)
	button.overlay:SetSize(button.icon:GetSize())

	button.count:SetParent(button.overlay)
	button.count:SetJustifyH("CENTER")
	button.count:SetJustifyV("MIDDLE")
	button.count:ClearAllPoints()
	button.count:SetPoint("BOTTOMRIGHT",9,-6)

	button.cd:SetParent(button.overlay)
	button.cd:ClearAllPoints()
	button.cd:SetPoint("TOPLEFT",-6,6)

	button.border = CreateFrame("Frame", nil, button.overlay)
	button.border:SetFrameLevel(button.overlay:GetFrameLevel() - 5)
	button.border:ClearAllPoints()
	button.border:SetPoint("CENTER",0,0)
	button.border:SetSize(30+10,30+10)
	button.border:SetBackdrop(Media.AuraBackdrop)
	button.border:SetBackdropColor(0,0,0,0)
	button.border:SetBackdropBorderColor(Colors.ui.stone[1]*.3, Colors.ui.stone[2]*.3, Colors.ui.stone[3]*.3)
end

Auras_PostDisplayAuraButton = function(auraFrame,button)
	local plate = auraFrame.plate
	local colors = plate.colors
	local unit = plate.unit
	if (plate.state.unitIsFriend) then 
		if button.can_purge then 
			local color = colors.power.ARCANE_CHARGES 
			button.border:SetBackdropBorderColor(color[1], color[2], color[3])
		else 
			button.border:SetBackdropBorderColor(colors.ui.stone[1]*.3, colors.ui.stone[2]*.3, colors.ui.stone[3]*.3)
		end 
	else 
		local color
		if button.can_purge then 
			color = colors.power.ARCANE_CHARGES 
		else
			color = colors.debuff.none 
		end
		button.border:SetBackdropBorderColor(color[1], color[2], color[3])
	end 
end

Auras_PostUpdateAuraFrame = function(auraframe)
end

-- Clear the castbar instantly with no smoothing. 
CastBar_Clear = function(plate)
	plate.Cast:SetValue(0,true) -- avoid it popping down from full when shown
end

-- Clear away the castbar's spell name. 
CastBar_ClearName = function(plate)
	plate.Cast.Name:SetText(nil)
end 

-- Remove the castbar shield and reset it's layout.
CastBar_ClearShield = function(plate)
	local cast = plate.Cast
	if (cast.hasShieldVisible) then 
		cast.Shield:Hide()
		cast:SetSize(84,14)
		cast:ClearAllPoints()
		cast:SetPoint("TOP",0,-20)
		cast:SetStatusBarTexture(Media.BarTexture)
		cast:SetTexCoord(14/256,242/256,14/64,50/64)
		cast.Bg:SetSize(84*256/228,14*64/36)
		cast.Bg:SetTexture(Media.BackdropTexture)
		cast.Bg:SetVertexColor(1,1,1,1)
		cast.Name:ClearAllPoints()
		cast.Name:SetPoint("TOP",0,-18)
	cast.hasShieldVisible = nil 
	end 
	cast:SetStatusBarColor(plate.colors.cast[1], plate.colors.cast[2], plate.colors.cast[3]) 
end

-- Update the castbar's spell name.
CastBar_UpdateName = function(plate)
	plate.Cast.Name:SetText(plate.cast_state.name)
end 

-- Clear the current cast fade timer, if any.
CastBar_ClearFadeTimer = function(plate)
	local cast = plate.Cast
	local state = plate.state
	state.holding = nil
	CastCache[plate] = nil
	cast:Hide()
	CastBar_Clear(plate)
	CastBar_ClearName(plate)
	CastBar_ClearShield(plate)
	NameText_UpdateVisibility(plate)
end

-- Set a fade timer before the castbar disappears. 
CastBar_SetFadeTimer = function(plate, timeToHold, message)
	local state = plate.state
	state.holding = true

	local cast = plate.Cast
	cast.Name:SetText(message)
	CastCache[plate] = timeToHold
	CastTimer:Show()
	HealthText_UpdateVisibility(plate)
end

-- Decide when and how to hide the castbar. 
CastBar_Hide = function(plate, hideCause, force)
	local cast = plate.Cast
	local state = plate.state
	if force then 
		CastBar_ClearFadeTimer(plate)
	else 
		-- stopped
		if (hideCause == 2) then 
			CastBar_ClearFadeTimer(plate)
		else
			-- interrupted
			if (hideCause == 1) then
				CastBar_Clear(plate)
				CastBar_ClearShield(plate)
				CastBar_SetFadeTimer(plate, .5, L["Interrupted"])
			-- success
			else
				CastBar_ClearShield(plate)
				CastBar_SetFadeTimer(plate, .5, L["Success"])
			end
		end
	end 
end

-- Show the castbar. 
CastBar_Show = function(plate)
	local cast = plate.Cast
	CastCache[plate] = nil
	plate.state.holding = nil
	cast:Show()
end 

-- Update the cast element. 
CastBar_Update = function(plate)
end 

-- Update the castbar's shield and textures 
-- to reflect whether or not it's a protected cast. 
CastBar_UpdateShield = function(plate)
	local cast = plate.Cast
	if (plate.cast_state.interruptible) then 
		if (cast.hasShieldVisible) then 
			cast.Shield:Hide()
			cast:SetSize(84,14)
			cast:ClearAllPoints()
			cast:SetPoint("TOP",0,-20)
			cast:SetStatusBarTexture(Media.BarTexture)
			cast:SetTexCoord(14/256,242/256,14/64,50/64)
			cast.Bg:SetSize(84*256/228,14*64/36)
			cast.Bg:SetTexture(Media.BackdropTexture)
			cast.Bg:SetVertexColor(1,1,1,1)
			cast.Name:ClearAllPoints()
			cast.Name:SetPoint("TOP",0,-18)
			cast.hasShieldVisible = nil 
		end 
		cast:SetStatusBarColor(plate.colors.cast[1], plate.colors.cast[2], plate.colors.cast[3]) 
	else 
		if (not cast.hasShieldVisible) then 
			cast:SetSize(68,9)
			cast:ClearAllPoints()
			cast:SetPoint("TOP",0,-26)
			cast:SetStatusBarTexture(Media.CastBarTexture)
			cast:SetTexCoord(0,1,0,1)
			cast.Bg:SetSize(68,9)
			cast.Bg:SetTexture(Media.CastBarTexture)
			cast.Bg:SetVertexColor(.15,.15,.15,1)
			cast.Name:ClearAllPoints()
			cast.Name:SetPoint("TOP",0,-20)
			cast.Shield:Show()
			cast.hasShieldVisible = true
		end 
		if plate.state.unitIsPlayer then 
			if plate.state.unitIsEnemy then 
				cast:SetStatusBarColor(plate.colors.quest.red[1], plate.colors.quest.red[2], plate.colors.quest.red[3]) 
			else 
				cast:SetStatusBarColor(plate.colors.quest.green[1], plate.colors.quest.green[2], plate.colors.quest.green[3]) 
			end  
		elseif plate.state.unitCanAttack then 
			cast:SetStatusBarColor(plate.colors.quest.red[1], plate.colors.quest.red[2], plate.colors.quest.red[3]) 
		else 
			cast:SetStatusBarColor(plate.colors.quest.green[1], plate.colors.quest.green[2], plate.colors.quest.green[3]) 
		end 
	end 
end

-- Update the unit's classification (boss, elite, rare, etc)
Classification_Update = function(plate)
	local state = plate.state
	if (state.classification == "worldboss") then
		plate.Classification:SetTexture(Private.GetMedia("icon_badges_boss"))
		plate.Classification:Show()
	elseif (state.unitCanAttack) then 
		if ((state.classification == "rare") or (state.classification == "rareelite")) then
			plate.Classification:SetTexture(Private.GetMedia("icon_classification_generic"))
			plate.Classification:Show()
		elseif (state.classification == "elite") then 
			plate.Classification:SetTexture(Private.GetMedia("icon_classification_elite"))
			plate.Classification:Show()
		else
			plate.Classification:Hide()
		end
	else
		plate.Classification:Hide()
	end 
end

-- Update the health color. 
HealthBar_UpdateColor = function(plate)
	local health = plate.Health
	local unit = plate.unit
	local state = plate.state
	local min, max = state.health_cur, state.health_max
	local color, r, g, b

	if (health.colorYou and state.personal) then 
		color = plate.colors.class[playerClass]
	elseif (health.colorTapped and state.unitTapped) then
		color = plate.colors.tapped
	elseif (health.colorDisconnected and state.unitDisconnected) then
		color = plate.colors.disconnected
	elseif (health.colorDead and state.unitDead) then
		color = plate.colors.dead
	elseif (health.colorCivilian and state.unitIsPlayer and state.unitIsFriend) then 
		color = plate.colors.reaction.civilian
	elseif (health.colorClass and state.unitIsPlayer) then
		color = state.unitClass and plate.colors.class[state.unitClass]
	elseif (health.colorPetAsPlayer and state.unitIsPet) then 
		color = state.unitClass and plate.colors.class[state.unitClass]
	else 
		-- BUG: Non-existent '*target' or '*pet' units cause UnitThreatSituation() errors (thank you oUF!)
		local threat
		local feedbackUnit = health.threatFeedbackUnit
		if (feedbackUnit and (feedbackUnit ~= unit) and UnitExists(feedbackUnit)) then
			threat = UnitThreatSituation(feedbackUnit, unit)
		else
			threat = UnitThreatSituation(unit)
		end
		if (health.colorThreat and threat) then 
			color = plate.colors.threat[threat]
		end
		if (not color) then 
			if (health.colorReaction and state.unitReaction) then
				color = plate.colors.reaction[state.unitReaction]
			elseif (health.colorHealth) then 
				color = plate.colors.health
			end
		end
	end

	if color then 
		if (health.colorSmooth) then 
			r, g, b = gradient(min, max, 1,0,0, color[1], color[2], color[3], color[1], color[2], color[3])
		else 
			r, g, b = color[1], color[2], color[3]
		end 
		health:SetStatusBarColor(r, g, b)
		--health.Preview:SetStatusBarColor(r, g, b)
	end 
end

-- Update the health value.
HealthText_Update = function(plate)
	local state = plate.state
	if (state.unitDisconnected) then
		plate.Health.Value:SetText(L["Offline"])
	else 
		plate.Health.Value:SetFormattedText("%s / %s", large(state.health_cur), large(state.health_max))
	end
end

-- Update the unit's health value visibility. 
HealthText_UpdateVisibility = function(plate)
	local value = plate.Health.Value
	local state = plate.state
	if (value.hidePlayer and state.personal) or (value.hideCasting and (state.casting or state.holding)) then 
		value:Hide()
	elseif (value.showMouseover and state.highlight and state.unitCanAttack) 
	    or (value.showTarget and state.isTarget and state.unitCanAttack) 
	    or (value.showCombat and state.inLockdown and state.combat and state.unitCanAttack) then 
		value:Show()
	else 
		value:Hide()
	end 
end

-- Update the overlay highlight texture
Highlight_UpdateVisibility = function(plate)
	local state = plate.state
	if (state.highlight and (not state.isTarget)) then 
		plate.Health.Highlight:Show()
		plate.Power.Highlight:Show()
		plate.Cast.Highlight:Show()
	else
		plate.Health.Highlight:Hide()
		plate.Power.Highlight:Hide()
		plate.Cast.Highlight:Hide()
	end
end

-- Update the unit's name visibility.
-- This is also where we adjust the position 
-- of the elements relying on the position on the name.
NameText_UpdateVisibility = function(plate)
	local auras = plate.Auras.frames.core_dynamic
	local name = plate.Name
	local raidTarget = plate.RaidTarget
	local state = plate.state
	local show
	if (name.hidePlayer and state.personal) then 
		show = false
	elseif (name.showMouseover and state.highlight) 
	    or (name.showTarget and state.isTarget) 
		or (name.showCombat and state.inLockdown and state.combat and state.unitCanAttack) then 
		show = true 
	else 
		show = false
	end 
	if show then 
		name:Show()
		auras:ClearAllPoints()
		auras:SetPoint("BOTTOM", plate.Health, "TOP", 0, 14+12)
		raidTarget:SetPoint("TOP",0,54)
		raidTarget:SetSize(38,38)
	else 
		name:Hide()
		auras:ClearAllPoints()
		auras:SetPoint("BOTTOM", plate.Health, "TOP", 0, 14)
		raidTarget:SetPoint("TOP",0,44)
		raidTarget:SetSize(44,44)
	end 

end

-- Update the power of the player's power bar.
PowerBar_UpdateColor = function(plate)
	local state = plate.state
	local color	= state.power_type and plate.colors.power[state.power_type] or plate.colors.power.UNUSED
	if color then 
		plate.Power:SetStatusBarColor(color[1], color[2], color[3])
	end 
end

-- Update the visibility of the player's power bar.
PowerBar_UpdateVisibility = function(plate)
	local state = plate.state
	if state.personal and state.power_type and (UnitPowerMax(plate.unit, state.power_type) > 0) then 
		plate.handler:EnableElement("PowerBar")
	else 
		plate.handler:DisableElement("PowerBar")
	end 
end

-- Update the orientation fo the bars.
Plate_UpdateOrientation = function(plate)
	if plate.state.personal then 
		if (not plate.Health.isYou) then 
			plate.Health:SetOrientation("RIGHT")
			plate.Health.isYou = true
		end 
		if (not plate.Cast.isYou) then 
			plate.Cast:SetOrientation("RIGHT")
			plate.Cast.isYou = true
		end 
		if (not plate.Absorb.isYou) then 
			plate.Absorb:SetOrientation("LEFT")
			plate.Absorb.isYou = true
		end 
	else 
		if (plate.Health.isYou) then 
			plate.Health:SetOrientation("LEFT")
			plate.Health.isYou = nil
		end 
		if (plate.Cast.isYou) then 
			plate.Cast:SetOrientation("LEFT")
			plate.Cast.isYou = nil
		end 
		if (plate.Absorb.isYou) then 
			plate.Absorb:SetOrientation("RIGHT")
			plate.Absorb.isYou = nil
		end 
	end 
end

-- Update the threat glow's color and visibility.
ThreatGlow_Update = function(plate)
	if plate.state.glowing then
		local color = plate.state.glow_colour
		plate.ThreatGlow:SetVertexColor(color[1], color[2], color[3])
		plate.ThreatGlow.More:SetVertexColor(color[1], color[2], color[3])
		plate.ThreatGlow:Show()
		plate.ThreatGlow.More:Show()
	else
		plate.ThreatGlow:Hide()
		plate.ThreatGlow.More:Hide()
	end
end

-- NamePlate Template
---------------------------------------------------------------------	
-- Fires when a new nameplate is created.
-- This is where we create all the elements.
-- Most here is hardcored, though we have upvalued 
-- some of the texture paths and tables for efficiency. 
Layout.Create = function(self, plate)

	plate.colors = Colors
	plate:SetSize(unpack(Media.Size))

	local health = LibStatusBar:CreateStatusBar(plate)
	health:SetPoint("TOP",0,-2)
	health:SetSize(84,14)
	health:SetStatusBarTexture(Media.BarTexture)
	health:SetTexCoord(unpack(Media.BarCoords))
	health:SetSmoothingFrequency(.1)
	health:SetOrientation("LEFT")
	health:SetSparkMap(Media.BarMap)
	health.colorYou = true
	health.colorTapped = true
	health.colorDisconnected = true
	health.colorClass = true
	health.colorCivilian = true
	health.colorReaction = true
	health.colorThreat = true
	health.colorHealth = true
	health.frequent = true
	health.threatFeedbackUnit = "player"
	plate.Health = health

	local healthBg = health:CreateTexture()
	healthBg:SetPoint("CENTER",0,0)
	healthBg:SetSize(unpack(Media.BackdropSize))
	healthBg:SetDrawLayer("BACKGROUND",-2)
	healthBg:SetTexture(Media.BackdropTexture)
	plate.Health.Bg = healthBg

	local healthHighlight = health:CreateTexture()
	healthHighlight:Hide()
	healthHighlight:SetAllPoints()
	healthHighlight:SetSize(84,14)
	healthHighlight:SetTexture(Media.BarTexture)
	healthHighlight:SetTexCoord(unpack(Media.BarCoords))
	healthHighlight:SetVertexColor(1,1,1,.25)
	plate.Health.Highlight = healthHighlight

	local healthValue = health:CreateFontString()
	healthValue:Hide()
	healthValue:SetPoint("TOP",0,-18)
	healthValue:SetDrawLayer("OVERLAY",1)
	healthValue:SetFontObject(Media.HealthFont)
	healthValue:SetTextColor(plate.colors.highlight[1], plate.colors.highlight[2], plate.colors.highlight[3],.75)
	healthValue:SetJustifyH("CENTER")
	healthValue:SetJustifyV("MIDDLE")
	healthValue.hidePlayer = true
	healthValue.hideCasting = true
	healthValue.showCombat = false
	healthValue.showMouseover = false
	healthValue.showTarget = true
	plate.Health.Value = healthValue

	local threat = health:CreateTexture()
	threat:Hide()
	threat:SetPoint("CENTER",0,0)
	threat:SetSize(unpack(Media.BackdropSize))
	threat:SetTexture(Media.GlowTexture)
	threat:SetDrawLayer("BACKGROUND",-5)
	plate.ThreatGlow = threat

	local glow = health:CreateTexture()
	glow:Hide()
	glow:SetPoint("CENTER",0,0)
	glow:SetSize(unpack(Media.BackdropSize))
	glow:SetTexture(Media.GlowTexture)
	glow:SetDrawLayer("BACKGROUND",-4)
	plate.ThreatGlow.More = glow

	local power = LibStatusBar:CreateStatusBar(plate)
	power:SetPoint("TOP",0,-20)
	power:SetSize(84,14)
	power:SetStatusBarTexture(Media.BarTexture)
	power:SetTexCoord(unpack(Media.BarCoords))
	power:SetSmoothingFrequency(.1)
	power:SetOrientation("RIGHT")
	power:SetSparkMap(Media.BarMap)
	plate.Power = power

	local powerBg = power:CreateTexture()
	powerBg:SetPoint("CENTER",0,0)
	powerBg:SetSize(unpack(Media.BackdropSize))
	powerBg:SetDrawLayer("BACKGROUND",-2)
	powerBg:SetTexture(Media.BackdropTexture)
	plate.Power.Bg = powerBg

	local powerHighlight = power:CreateTexture()
	powerHighlight:Hide()
	powerHighlight:SetAllPoints()
	powerHighlight:SetSize(84,14)
	powerHighlight:SetTexture(Media.BarTexture)
	powerHighlight:SetTexCoord(unpack(Media.BarCoords))
	powerHighlight:SetVertexColor(1,1,1,.25)
	plate.Power.Highlight = powerHighlight

	local absorb = health:CreateStatusBar()
	absorb:SetSize(84,14)
	absorb:SetAllPoints(health)
	absorb:SetFrameLevel(health:GetFrameLevel() + 3)
	absorb:SetSparkTexture(health:GetSparkTexture())
	absorb:SetStatusBarColor(1,1,1)
	absorb:SetAlpha(.25)
	absorb:SetStatusBarTexture(Media.BarTexture)
	absorb:SetTexCoord(unpack(Media.BarCoords))
	absorb:SetSmoothingFrequency(.1)
	absorb:SetOrientation("RIGHT")
	absorb:SetSparkMap(Media.BarMap)
	plate.Absorb = absorb

	local cast = LibStatusBar:CreateStatusBar(plate)
	cast:Hide()
	cast:SetSize(84,14)
	cast:SetPoint("TOP",0,-20)
	cast:SetStatusBarTexture(Media.BarTexture)
	cast:SetOrientation("LEFT")
	cast:DisableSmoothing(true)
	cast:SetSparkMap(Media.BarMap)
	cast:SetTexCoord(unpack(Media.BarCoords))
	plate.Cast = cast

	local castBg = cast:CreateTexture()
	castBg:SetPoint("CENTER",0,0)
	castBg:SetSize(unpack(Media.BackdropSize))
	castBg:SetDrawLayer("BACKGROUND",0)
	castBg:SetTexture(Media.BackdropTexture)
	castBg:SetVertexColor(1,1,1,1)
	plate.Cast.Bg = castBg

	local castHighlight = cast:CreateTexture()
	castHighlight:Hide()
	castHighlight:SetAllPoints()
	castHighlight:SetSize(84,14)
	castHighlight:SetTexture(Media.BarTexture)
	castHighlight:SetTexCoord(unpack(Media.BarCoords))
	castHighlight:SetVertexColor(1,1,1,.25)
	plate.Cast.Highlight = castHighlight

	local castName = cast:CreateFontString()
	castName:SetPoint("TOP",0,-18)
	castName:SetDrawLayer("ARTWORK",1)
	castName:SetFontObject(Media.CastFont)
	castName:SetTextColor(plate.colors.highlight[1], plate.colors.highlight[2], plate.colors.highlight[3], .5)
	castName:SetJustifyH("CENTER")
	castName:SetJustifyV("MIDDLE")
	plate.Cast.Name = castName

	local castShield = cast:CreateTexture()
	castShield:Hide()
	castShield:SetPoint("CENTER",0,-1)
	castShield:SetSize(124,69)
	castShield:SetTexture(Media.ShieldTexture)
	castShield:SetDrawLayer("BACKGROUND",-5)
	castShield:SetVertexColor(plate.colors.ui.stone[1], plate.colors.ui.stone[2], plate.colors.ui.stone[3])
	plate.Cast.Shield = castShield

	local name = health:CreateFontString()
	name:Hide()
	name:SetPoint("TOP",0,16)
	name:SetDrawLayer("ARTWORK",1)
	name:SetFontObject(Media.NameFont)
	name:SetTextColor(plate.colors.highlight[1], plate.colors.highlight[2], plate.colors.highlight[3],.75)
	name:SetJustifyH("CENTER")
	name:SetJustifyV("MIDDLE")
	name.hidePlayer = true
	name.showCombat = true
	name.showMouseover = true
	name.showTarget = true
	plate.Name = name

	local classification = health:CreateTexture()
	classification:Hide()
	classification:SetSize(40,40)
	classification:SetTexCoord(0,1,0,1)
	--classification:SetPoint("RIGHT",32-20,-1)
	classification:SetPoint("RIGHT",32-10,-1)
	classification:SetDrawLayer("ARTWORK",1)
	classification:SetIgnoreParentAlpha(true)
	plate.Classification = classification

	local raidTarget = health:CreateTexture()
	raidTarget:SetPoint("TOP",0,48)
	raidTarget:SetSize(48,48)
	raidTarget:SetDrawLayer("OVERLAY",0)
	raidTarget:SetTexture(Media.RaidTargetTexture)
	raidTarget:SetIgnoreParentAlpha(false)
	plate.RaidTarget = raidTarget

	-- Set up auras
	local auras = plate.handler:CreateAuraFrame({
		id = "core_dynamic", -- key for this frame in the [nameplate].Auras.frames table,
		size = 30, -- icon size,
		squareness = 1, -- icon width/height ratio,
		point = {
			[1] = "BOTTOMLEFT", -- point to place first aura icon in auras frame
			[2] = "LEFT", -- point of icon to attach to previous icon in a row
			[3] = "RIGHT", -- point of previous icon on to which the next will be attached
		},
		x_spacing = 4, -- horizontal spacing between icons,
		y_spacing = 4, -- vertical spacing between icons,
		max = 6, -- maximum number of auras to display,
		rows = 2, -- maximum number of rows,
		row_growth = "UP", -- direction in which rows will grow ('UP' or 'DOWN'),
		--sort = function() end, -- aura sorting function, or index in sort_lookup,
		--filter = nil, 	-- filter used in UnitAura calls;
						-- if left nil, frame will be dynamic, meaning it will look for
						-- buffs on friends and debuffs on enemies,
		--purge = false, 	-- ignore whitelist and only show auras which can be purged;
						-- also sets filter to 'HELPFUL' if it was left nil,
		num_per_row = 3, -- number of icons per row; if left nil, calculates as max / rows,
		--whitelist = {}, --a table of spellids to to show in the aura frame,
		pulsate = true, -- whether or not to pulsate icons with low time remaining,
		timer_threshold = 60, -- threshold below which to show timer text,
		centred = false, -- centre visible auras in the frame,
		--external = nil -- create an external aura frame (see below),
	})
	auras:SetFrameLevel(0)
	auras:SetSize(30*3+4*2, 30*2+4)
	auras.plate = plate
	
	-- Assign override methods
	plate.UpdateFrameGlow = ThreatGlow_Update
	plate.UpdatePowerBar = PowerBar_UpdateVisibility

	-- Register elements
	plate.handler:RegisterElement("HealthBar", health)
	plate.handler:RegisterElement("AbsorbBar", absorb)
	plate.handler:RegisterElement("CastBar", cast)
	plate.handler:RegisterElement("NameText", name)
	plate.handler:RegisterElement("PowerBar", power)
	plate.handler:RegisterElement("RaidIcon", raidTarget)
	plate.handler:RegisterElement("ThreatGlow", glow)
end 

-- Fires when the nameplate is shown.
-- Here we gather info for all the elements to use,
-- as well as doing initial updates of some of them. 
Layout.Show = function(self, plate)
	local unit = plate.unit
	local _,unitClass = UnitClass(unit)

	-- Set custom values
	plate.state.unitClass = unitClass
	plate.state.unitCanAttack = UnitCanAttack("player", unit)
	plate.state.unitIsEnemy = UnitIsEnemy(unit, "player")
	plate.state.unitIsFriend = UnitIsFriend("player", unit)
	plate.state.unitIsPet = UnitIsUnit(unit, "pet")
	plate.state.unitIsPlayer = UnitIsPlayer(unit)
	plate.state.unitReaction = UnitReaction(unit, "player")
	plate.state.unitDisconnected = not UnitIsConnected(unit)
	plate.state.unitDead = UnitIsDeadOrGhost(unit)
	plate.state.unitTapped = (not UnitPlayerControlled(unit)) and UnitIsTapDenied(unit)
	plate.state.inLockdown = COMBAT

	Classification_Update(plate)
	HealthBar_UpdateColor(plate)
	HealthText_Update(plate)
	HealthText_UpdateVisibility(plate)
	Highlight_UpdateVisibility(plate)
	NameText_UpdateVisibility(plate)
	Plate_UpdateOrientation(plate)
	PowerBar_UpdateVisibility(plate)
	PowerBar_UpdateColor(plate)
	ThreatGlow_Update(plate)
end 

-- Fires when the nameplate is hidden.
-- Here we clear out the gathered data, 
-- and make sure certain elements are reset.
Layout.Hide = function(self, plate)
	-- Reset custom values
	plate.state.unitClass = nil
	plate.state.unitCanAttack = nil
	plate.state.unitIsEnemy = nil
	plate.state.unitIsFriend = nil
	plate.state.unitIsPet = nil
	plate.state.unitIsPlayer = nil
	plate.state.unitReaction = nil
	plate.state.isTarget = nil
	plate.state.unitDisconnected = nil
	plate.state.unitDead = nil
	plate.state.unitTapped = nil
	plate.state.inLockdown = nil
	plate.state.holding = nil

	-- Reset bar orientations, 
	-- since chances are the bar is NOT us next time. 
	Plate_UpdateOrientation(plate)
	PowerBar_UpdateVisibility(plate)
	PowerBar_UpdateColor(plate)
	HealthText_UpdateVisibility(plate)
	Highlight_UpdateVisibility(plate)
	NameText_UpdateVisibility(plate)
end

-- Fires when the unit's health changes.
Layout.HealthUpdate = function(self, plate)
	HealthBar_UpdateColor(plate)
	HealthText_Update(plate)
	HealthText_UpdateVisibility(plate)
end

-- Fires when the unit's health color changes.
Layout.HealthColourChange = function(self, plate)
	HealthBar_UpdateColor(plate)
end

-- Fires when the unit's power type changes.
Layout.PowerTypeUpdate = function(self, plate)
	PowerBar_UpdateVisibility(plate)
	PowerBar_UpdateColor(plate)
end

-- Fires when the castbar is shown.
Layout.CastBarShow = function(self, plate)
	CastBar_UpdateName(plate)
	CastBar_UpdateShield(plate)
	if (not plate.state.personal) then 
		CastBar_Show(plate)
	end 
	HealthText_UpdateVisibility(plate)
end

-- Fires when the castbar is hidden.
Layout.CastBarHide = function(self, plate, ...)
	CastBar_Hide(plate, ...)
	HealthText_UpdateVisibility(plate)
end

-- Fires when the threat glow changes.
Layout.GlowColourChange = function(self, plate)
	HealthBar_UpdateColor(plate)
	ThreatGlow_Update(plate)
	NameText_UpdateVisibility(plate)
end 

-- Fires when the unit's classification changes.
Layout.ClassificationChanged = function(self, plate)
	Classification_Update(plate)
end

-- Fires on raid target icon updates.
Layout.RaidIconUpdate = function(self, plate)
end

-- Fires when the nameplate unit enters or leaves combat.
-- *This is NOT when the player enters or leaves combat!
Layout.Combat = function(self, plate)
	NameText_UpdateVisibility(plate)
end

-- Fires when the nameplate becomes the target.
Layout.GainedTarget = function(self, plate)
	plate.state.isTarget = true
	NameText_UpdateVisibility(plate)
	HealthText_Update(plate)
	HealthText_UpdateVisibility(plate)
end

-- Fires when the nameplate lost its target status.
Layout.LostTarget = function(self, plate)
	plate.state.isTarget = nil
	NameText_UpdateVisibility(plate)
	HealthText_Update(plate)
	HealthText_UpdateVisibility(plate)
end

-- Fires when you hover the cursor above the nameplate.
Layout.OnEnter = function(self, plate)
	HealthBar_UpdateColor(plate)
	ThreatGlow_Update(plate)
	NameText_UpdateVisibility(plate)
	HealthText_UpdateVisibility(plate)
	Highlight_UpdateVisibility(plate)
end

-- Fires when the cursor leaves the nameplate.
Layout.OnLeave = function(self, plate)
	HealthBar_UpdateColor(plate)
	ThreatGlow_Update(plate)
	NameText_UpdateVisibility(plate)
	HealthText_UpdateVisibility(plate)
	Highlight_UpdateVisibility(plate)
end

-- Fires when the player enters combat.
Layout.CombatLockdownStart = function(self)
	COMBAT = true
	for _,plate in Core:Frames() do
		if (plate:IsShown()) then
			plate.state.inLockdown = COMBAT
			HealthText_UpdateVisibility(plate)
			NameText_UpdateVisibility(plate)
		end
	end
end

-- Fires when the player leaves combat.
Layout.CombatLockdownEnd = function(self)
	COMBAT = nil
	for _,plate in Core:Frames() do
		if (plate:IsShown()) then
			plate.state.inLockdown = COMBAT
			HealthText_UpdateVisibility(plate)
			NameText_UpdateVisibility(plate)
		end
	end
end

-- Update the nameplate related console variables to our liking. 
Layout.UpdateCustomSettings = function(self)
	-- A value of 'false' reverts it to its default setting.
	for name,value in pairs({
		nameplateLargeTopInset = .15, -- default .1
		nameplateOtherTopInset = .15, -- default .08
		nameplateLargeBottomInset = .02, -- default .15
		nameplateOtherBottomInset = .02, -- default .1
		nameplateClassResourceTopInset = 0,
	
		-- Nameplate scale
		nameplateMinScale = .75, -- .8
		nameplateMaxScale = 1, 
		nameplateLargerScale = 1, -- Scale modifier for large plates, used for important monsters. (in addition to target modifier)
		nameplateGlobalScale = 1,
		NamePlateHorizontalScale = 1,
		NamePlateVerticalScale = 1,
	
		-- Alpha defaults (these are enforced to other values by the back-end now)
		nameplateMaxAlpha = false, 
		nameplateMinAlphaDistance = false, 
		nameplateMinAlpha = false,
		nameplateMaxAlphaDistance = false,
		nameplateOccludedAlphaMult = false, 
		nameplateSelectedAlpha = false, 
	
		-- The minimum distance from the camera plates will reach their minimum scale and alpha
		nameplateMinScaleDistance = false, 
		
		-- The maximum distance from the camera where plates will still have max scale and alpha
		nameplateMaxScaleDistance = 20, -- 10
	
		-- Show nameplates above heads or at the base (0 or 2,
		nameplateOtherAtBase = 0,
	
		-- Scale and Alpha of the selected nameplate (current target,
		nameplateSelectedScale = 1.2, -- default 1.2
	
		-- The max distance to show nameplates.
		nameplateMaxDistance = false, -- 20 is classic upper limit, 60 is BfA default
	
		-- The max distance to show the target nameplate when the target is behind the camera.
		nameplateTargetBehindMaxDistance = 15 -- default 15
	}) do
		SetCVar(name, value or GetCVarDefault(name)) 
	end

	C_NamePlate.SetNamePlateFriendlySize(unpack(Media.Size))
	C_NamePlate.SetNamePlateEnemySize(unpack(Media.Size))
	C_NamePlate.SetNamePlateSelfSize(unpack(Media.Size))
	--NamePlateDriverFrame.UpdateNamePlateOptions = function() end
end

-- I doubt this ever happens, but just in case it will, it's there.
Layout.ListenForNameplates = function(self)
	if (C_NamePlate) then 
		self:UnregisterEvent("ADDON_LOADED", "ListenForNameplates")
		self:UpdateCustomSettings()
	end 
end

-- Fires once when the layout is initialized.
Layout.Initialise = function(self, plate)

	if (C_NamePlate) then 
		self:UpdateCustomSettings()
	else 
		self:RegisterEvent("ADDON_LOADED", "ListenForNameplates")
	end 

	self.Auras = {
        font = Private.GetFont(12,true):GetFont(), -- path to font to use for aura countdown and stack count
        font_size_cd = 11, -- size of font used for aura countdown
        font_size_count = 12, -- size of font used for aura stack count
        font_flags = "OUTLINE", -- additional font flags (OUTLINE, et al)
        colour_short = { 1,0,0 }, -- colour of short timer text (like {1,1,1})
        colour_medium = { 1,.5,0 }, -- colour of medium timer text
        colour_long = Colors.offwhite, -- colour of long timer text
        decimal_threshold = 1 -- time under which decimals will be shown
    }

	-- Ordered by the alphabet. Because fuck semantics. 
	self:RegisterMessage("CastBarHide")
	self:RegisterMessage("CastBarShow")
	self:RegisterMessage("ClassificationChanged")
	self:RegisterMessage("Combat")
	self:RegisterMessage("Create")
	self:RegisterMessage("Show")
	self:RegisterMessage("GainedTarget")
	self:RegisterMessage("GlowColourChange")
	self:RegisterMessage("HealthColourChange")
	self:RegisterMessage("HealthUpdate")
	self:RegisterMessage("LostTarget")
	self:RegisterMessage("OnEnter")
	self:RegisterMessage("OnLeave")
	self:RegisterMessage("PowerTypeUpdate")

	self:RegisterEvent("PLAYER_REGEN_DISABLED", "CombatLockdownStart")
	self:RegisterEvent("PLAYER_REGEN_ENABLED", "CombatLockdownEnd")

	self:AddCallback("Auras", "PostCreateAuraButton", Auras_PostCreateAuraButton)
	self:AddCallback("Auras", "PostDisplayAuraButton", Auras_PostDisplayAuraButton)
	self:AddCallback("Auras", "PostUpdateAuraFrame", Auras_PostUpdateAuraFrame)

	-- Tell KuiNameplates to ignore ui scaling
	Core.IGNORE_UISCALE = true -- We want clean pixel alignment
	Core:UI_SCALE_CHANGED() -- Update the scale

end
