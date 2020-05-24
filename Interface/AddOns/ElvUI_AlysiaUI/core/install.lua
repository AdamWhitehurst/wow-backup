local E, L, V, P, G = unpack(ElvUI)
local IsAddOnLoaded = IsAddOnLoaded
local format = string.format
local MyPluginName = "AlysiaUI"
local ALUI = E:GetModule("AlysiaUI");

-- Setup Chat
function ALUI:SetupChat()
	if not E.db.movers then
		E.db.movers = {}
	end

	for i = 1, NUM_CHAT_WINDOWS do
		local frame = _G[format("ChatFrame%s", i)]
		local chatFrameId = frame:GetID()
		local chatName = FCF_GetChatWindowInfo(chatFrameId)

		FCF_SetChatWindowFontSize(nil, frame, 11)

		-- move ElvUI default loot frame to the left chat, so that Recount/Skada can go to the right chat.
		if i == 3 and chatName == LOOT.." / "..TRADE then
			FCF_UnDockFrame(frame)
			frame:ClearAllPoints()
			frame:Point("BOTTOMLEFT", LeftChatToggleButton, "TOPLEFT", 1, 3)
			FCF_SetWindowName(frame, LOOT)
			FCF_DockFrame(frame)
			if not frame.isLocked then
				FCF_SetLocked(frame, 1)
			end
			frame:Show()
		end
		FCF_SavePositionAndDimensions(frame)
		FCF_StopDragging(frame)
	end
	ChatFrame_RemoveChannel(ChatFrame3, L["Trade"])
	ChatFrame_AddChannel(ChatFrame1, L["Trade"])
	ChatFrame_AddMessageGroup(ChatFrame1, "TARGETICONS")
	ChatFrame_AddMessageGroup(ChatFrame3, "COMBAT_FACTION_CHANGE")
	ChatFrame_AddMessageGroup(ChatFrame3, "COMBAT_GUILD_XP_GAIN")
	ChatFrame_AddMessageGroup(ChatFrame3, "COMBAT_HONOR_GAIN")
	ChatFrame_AddMessageGroup(ChatFrame3, "COMBAT_XP_GAIN")
	ChatFrame_AddMessageGroup(ChatFrame3, "CURRENCY")
	ChatFrame_AddMessageGroup(ChatFrame3, "LOOT")
	ChatFrame_AddMessageGroup(ChatFrame3, "MONEY")
	ChatFrame_AddMessageGroup(ChatFrame3, "SKILL")

	-- Enable classcolor automatically on login and on each character without doing /configure each time
	ToggleChatColorNamesByClassGroup(true, "ACHIEVEMENT")
	ToggleChatColorNamesByClassGroup(true, "BATTLEGROUND_LEADER")
	ToggleChatColorNamesByClassGroup(true, "BATTLEGROUND")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL1")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL10")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL11")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL2")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL3")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL4")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL5")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL6")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL7")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL8")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL9")
	ToggleChatColorNamesByClassGroup(true, "EMOTE")
	ToggleChatColorNamesByClassGroup(true, "GUILD_ACHIEVEMENT")
	ToggleChatColorNamesByClassGroup(true, "GUILD")
	ToggleChatColorNamesByClassGroup(true, "INSTANCE_CHAT_LEADER")
	ToggleChatColorNamesByClassGroup(true, "INSTANCE_CHAT")
	ToggleChatColorNamesByClassGroup(true, "OFFICER")
	ToggleChatColorNamesByClassGroup(true, "PARTY_LEADER")
	ToggleChatColorNamesByClassGroup(true, "PARTY")
	ToggleChatColorNamesByClassGroup(true, "RAID_LEADER")
	ToggleChatColorNamesByClassGroup(true, "RAID_WARNING")
	ToggleChatColorNamesByClassGroup(true, "RAID")
	ToggleChatColorNamesByClassGroup(true, "SAY")
	ToggleChatColorNamesByClassGroup(true, "WHISPER")
	ToggleChatColorNamesByClassGroup(true, "YELL")

---> Chat
	E.db["chat"]["fontSize"] = 12
	E.db["chat"]["emotionIcons"] = false
	E.db["chat"]["keywordSound"] = "Whisper Alert"
	E.db["chat"]["tabFontSize"] = 11
	E.db["chat"]["editBoxPosition"] = "ABOVE_CHAT"
	E.db["chat"]["panelTabTransparency"] = true
	E.db["chat"]["socialQueueMessages"] = true
	E.db["chat"]["customTimeColor"]["r"] = 0
	E.db["chat"]["customTimeColor"]["g"] = 0.75
	E.db["chat"]["customTimeColor"]["b"] = 0.98
	E.db["chat"]["panelColor"]["a"] = 0.45
	E.db["chat"]["copyChatLines"] = true
	E.db["chat"]["font"] = "Expressway"
	E.db["chat"]["tabFont"] = "Expressway"
	E.db["chat"]["tabFontOutline"] = "OUTLINE"
	E.db["chat"]["chatHistory"] = false
	E.db["chat"]["keywords"] = "%MYNAME%, ElvUI, AlysiaUI"
	E.db["chat"]["panelWidth"] = 412
	E.db["chat"]["panelHeight"] = 183
	E.db["chat"]["panelHeightRight"] = 183
	E.db["chat"]["panelWidthRight"] = 412
	E.db["chat"]["panelBackdrop"] = "SHOWBOTH"
	E.db["chat"]["panelColor"]["a"] = 0.65000000596046
	E.db["chat"]["panelColor"]["r"] = 0.10980392156863
	E.db["chat"]["panelColor"]["g"] = 0.10980392156863
	E.db["chat"]["panelColor"]["b"] = 0.10980392156863
	E.db["chat"]["separateSizes"] = true
	E.db["chat"]["timeStampFormat"] = "%H:%M "	
	E.db["chat"]["useCustomTimeColor"] = true
	E.db["chat"]["panelBackdropNameRight"] = ""

	E:StaggeredUpdateAll(nil, true)

	E:Print(L["Chat has been set"])
	PluginInstallStepComplete.message = "Chat has been set"
	PluginInstallStepComplete:Show()
end


-- Class Color Theme
local colorTable = class == 'PRIEST' and E.PriestColors or (_G.CUSTOM_CLASS_COLORS and _G.CUSTOM_CLASS_COLORS[class] or _G.RAID_CLASS_COLORS[class])
local classColor = RAID_CLASS_COLORS[E.myclass]


-- Layout Settings
function ALUI:SetupLayout(layout)

	if not E.db.movers then
		E.db.movers = {}
	end
	
	-- UI scales
	if E.screenheight == 1080 then E.db["general"]["UIScale"] = 0.711 end
	if E.screenheight == 1440 then E.db["general"]["UIScale"] = 0.533 end
	
-- General
E.db["currentTutorial"] = 1
E.db["general"]["loginmessage"] = false
E.db["general"]["bordercolor"]["b"] = 0
E.db["general"]["bordercolor"]["g"] = 0
E.db["general"]["bordercolor"]["r"] = 0
E.db["general"]["itemLevel"]["itemLevelFont"] = "Expressway"
E.db["general"]["itemLevel"]["itemLevelFontOutline"] = "NONE"
E.db["general"]["interruptAnnounce"] = "RAID"
E.db["general"]["talkingHeadFrameScale"] = 0.8
E.db["general"]["autoRoll"] = true
E.db["general"]["autoRepair"] = "PLAYER"
E.db["general"]["minimap"]["size"] = 175
E.db["general"]["minimap"]["locationFont"] = "Expressway"
E.db["general"]["minimap"]["icons"]["difficulty"]["scale"] = 0.9
E.db["general"]["minimap"]["icons"]["challengeMode"]["scale"] = 0.9
E.db["general"]["resurrectSound"] = true
E.db["general"]["font"] = "Expressway"
E.db["general"]["bottomPanel"] = false
E.db["general"]["backdropfadecolor"]["a"] = 0.65200251340866
E.db["general"]["backdropfadecolor"]["b"] = 0.10588235294118
E.db["general"]["backdropfadecolor"]["g"] = 0.10588235294118
E.db["general"]["backdropfadecolor"]["r"] = 0.10588235294118
E.db["general"]["valuecolor"]["b"] = 1
E.db["general"]["valuecolor"]["g"] = 0.7843137254902
E.db["general"]["valuecolor"]["r"] = 0
E.db["general"]["altPowerBar"]["statusBar"] = "MaUI 1"
E.db["general"]["altPowerBar"]["font"] = "Expressway"
E.db["general"]["altPowerBar"]["statusBarColorGradient"] = true
E.db["general"]["altPowerBar"]["statusBarColor"]["b"] = 1
E.db["general"]["altPowerBar"]["statusBarColor"]["g"] = 0.7843137254902
E.db["general"]["altPowerBar"]["statusBarColor"]["r"] = 0
E.db["general"]["altPowerBar"]["smoothbars"] = true
E.db["general"]["backdropcolor"]["b"] = 0.15686274509804
E.db["general"]["backdropcolor"]["g"] = 0.15686274509804
E.db["general"]["backdropcolor"]["r"] = 0.15686274509804
E.db["general"]["totems"]["growthDirection"] = "HORIZONTAL"

-- Private
E.private["skins"]["cleanBossButton"] = true
E.private["general"]["chatBubbleFontSize"] = 10
E.private["general"]["normTex"] = "MaUI 1"
E.private["general"]["namefont"] = "Expressway"
E.private["general"]["glossTex"] = "MaUI 1"
E.private["general"]["chatBubbleFont"] = "Expressway"
E.private["general"]["dmgfont"] = "Expressway"
E.private["general"]["minimap"]["hideClassHallReport"] = false
E.private["install_complete"] = 11.372

-- Global
E.global["uiScaleInformed"] = true
E.global["general"]["commandBarSetting"] = "DISABLED"

---> Databars
E.db["databars"]["reputation"]["font"] = "Expressway"
E.db["databars"]["reputation"]["orientation"] = "HORIZONTAL"
E.db["databars"]["reputation"]["enable"] = true
E.db["databars"]["reputation"]["height"] = 10
E.db["databars"]["reputation"]["mouseover"] = true
E.db["databars"]["reputation"]["width"] = 176
E.db["databars"]["honor"]["hideOutsidePvP"] = true
E.db["databars"]["honor"]["height"] = 10
E.db["databars"]["honor"]["orientation"] = "HORIZONTAL"
E.db["databars"]["honor"]["font"] = "Expressway"
E.db["databars"]["honor"]["mouseover"] = true
E.db["databars"]["honor"]["width"] = 176
E.db["databars"]["experience"]["font"] = "Expressway"
E.db["databars"]["experience"]["height"] = 10
E.db["databars"]["experience"]["orientation"] = "HORIZONTAL"
E.db["databars"]["experience"]["mouseover"] = true
E.db["databars"]["experience"]["width"] = 176
E.db["databars"]["azerite"]["font"] = "Expressway"
E.db["databars"]["azerite"]["height"] = 10
E.db["databars"]["azerite"]["orientation"] = "HORIZONTAL"
E.db["databars"]["azerite"]["mouseover"] = true
E.db["databars"]["azerite"]["width"] = 176

---> Bags
E.db["bags"]["countFontSize"] = 12
E.db["bags"]["itemLevelFont"] = "Expressway"
E.db["bags"]["bagSize"] = 30
E.db["bags"]["itemLevelFontSize"] = 12
E.db["bags"]["itemLevelCustomColorEnable"] = true
E.db["bags"]["cooldown"]["fonts"]["enable"] = true
E.db["bags"]["cooldown"]["fonts"]["font"] = "Expressway"
E.db["bags"]["cooldown"]["fonts"]["fontSize"] = 20
E.db["bags"]["scrapIcon"] = true
E.db["bags"]["countFont"] = "Expressway"
E.db["bags"]["bagWidth"] = 600
E.db["bags"]["vendorGrays"]["enable"] = true
E.db["bags"]["clearSearchOnClose"] = true
E.db["bags"]["bagBar"]["showBackdrop"] = true
E.db["bags"]["bagBar"]["spacing"] = 3
E.db["bags"]["bagBar"]["size"] = 32
E.db["bags"]["bagBar"]["mouseover"] = true
E.db["bags"]["bagBar"]["backdropSpacing"] = 3
E.db["bags"]["bagBar"]["growthDirection"] = "HORIZONTAL"
E.db["bags"]["countFontColor"]["b"] = 0.86666666666667
E.db["bags"]["countFontColor"]["g"] = 0.86666666666667
E.db["bags"]["countFontColor"]["r"] = 0.86666666666667
E.db["bags"]["countFontOutline"] = "OUTLINE"
E.db["bags"]["bankSize"] = 30
E.db["bags"]["bankWidth"] = 500
E.db["bags"]["moneyFormat"] = "BLIZZARD"
E.db["bags"]["junkDesaturate"] = true
E.db["bags"]["showBindType"] = true
E.db["bags"]["itemLevelCustomColor"]["b"] = 0.86666666666667
E.db["bags"]["itemLevelCustomColor"]["g"] = 0.86666666666667
E.db["bags"]["itemLevelCustomColor"]["r"] = 0.86666666666667
E.db["bags"]["junkIcon"] = true

---> Tooltip
E.db["tooltip"]["itemCount"] = "BOTH"
E.db["tooltip"]["healthBar"]["height"] = 8
E.db["tooltip"]["healthBar"]["fontSize"] = 12
E.db["tooltip"]["healthBar"]["font"] = "Expressway"
E.db["tooltip"]["font"] = "Expressway"
E.db["tooltip"]["alwaysShowRealm"] = true
E.db["tooltip"]["showElvUIUsers"] = true

---> Auras
E.db["hideTutorial"] = true
E.db["auras"]["debuffs"]["countFontSize"] = 12
E.db["auras"]["debuffs"]["durationFontSize"] = 12
E.db["auras"]["debuffs"]["wrapAfter"] = 15
E.db["auras"]["barTexture"] = "MaUI 1"
E.db["auras"]["timeYOffset"] = -2
E.db["auras"]["font"] = "Expressway"
E.db["auras"]["fontOutline"] = "OUTLINE"
E.db["auras"]["barHeight"] = 4
E.db["auras"]["buffs"]["countFontSize"] = 12
E.db["auras"]["buffs"]["durationFontSize"] = 12
E.db["auras"]["buffs"]["wrapAfter"] = 15
E.db["auras"]["countYOffset"] = 15

---> Colors & Stuff
E.db["unitframe"]["colors"]["aurabar_backdrop"]["b"] = 0.2
E.db["unitframe"]["colors"]["aurabar_backdrop"]["g"] = 0.2
E.db["unitframe"]["colors"]["aurabar_backdrop"]["r"] = 0.2
E.db["unitframe"]["colors"]["classResources"]["DEATHKNIGHT"]["g"] = 0.7843137254902
E.db["unitframe"]["colors"]["classResources"]["WARLOCK"]["b"] = 0.58823400735855
E.db["unitframe"]["colors"]["classResources"]["WARLOCK"]["g"] = 0.99999779462814
E.db["unitframe"]["colors"]["classResources"]["WARLOCK"]["r"] = 0
E.db["unitframe"]["colors"]["classResources"]["PALADIN"]["b"] = 0.58823400735855
E.db["unitframe"]["colors"]["classResources"]["PALADIN"]["g"] = 0.99999779462814
E.db["unitframe"]["colors"]["classResources"]["PALADIN"]["r"] = 0
E.db["unitframe"]["colors"]["classResources"]["MAGE"]["g"] = 0.99999779462814
E.db["unitframe"]["colors"]["classResources"]["MAGE"]["b"] = 0.58823400735855
E.db["unitframe"]["colors"]["classResources"]["comboPoints"][1]["b"] = 0.33725490196078
E.db["unitframe"]["colors"]["classResources"]["comboPoints"][1]["g"] = 0.33725490196078
E.db["unitframe"]["colors"]["classResources"]["comboPoints"][1]["r"] = 0.75686274509804
E.db["unitframe"]["colors"]["classResources"]["comboPoints"][2]["b"] = 0.34117647058824
E.db["unitframe"]["colors"]["classResources"]["comboPoints"][2]["g"] = 0.63137254901961
E.db["unitframe"]["colors"]["classResources"]["comboPoints"][2]["r"] = 0.65098039215686
E.db["unitframe"]["colors"]["classResources"]["comboPoints"][3]["b"] = 0.41176470588235
E.db["unitframe"]["colors"]["classResources"]["comboPoints"][3]["g"] = 0.73725490196078
E.db["unitframe"]["colors"]["classResources"]["comboPoints"][3]["r"] = 0.41176470588235
E.db["unitframe"]["colors"]["classResources"]["MONK"][1]["b"] = 0.58823400735855
E.db["unitframe"]["colors"]["classResources"]["MONK"][1]["g"] = 0.99999779462814
E.db["unitframe"]["colors"]["classResources"]["MONK"][1]["r"] = 0
E.db["unitframe"]["colors"]["classResources"]["MONK"][2]["b"] = 0.58823400735855
E.db["unitframe"]["colors"]["classResources"]["MONK"][2]["g"] = 0.99999779462814
E.db["unitframe"]["colors"]["classResources"]["MONK"][2]["r"] = 0
E.db["unitframe"]["colors"]["classResources"]["MONK"][3]["b"] = 0.58823400735855
E.db["unitframe"]["colors"]["classResources"]["MONK"][3]["g"] = 0.99999779462814
E.db["unitframe"]["colors"]["classResources"]["MONK"][3]["r"] = 0
E.db["unitframe"]["colors"]["classResources"]["MONK"][4]["b"] = 0.58823400735855
E.db["unitframe"]["colors"]["classResources"]["MONK"][4]["g"] = 0.99999779462814
E.db["unitframe"]["colors"]["classResources"]["MONK"][4]["r"] = 0
E.db["unitframe"]["colors"]["classResources"]["MONK"][5]["b"] = 0.58823400735855
E.db["unitframe"]["colors"]["classResources"]["MONK"][5]["g"] = 0.99999779462814
E.db["unitframe"]["colors"]["classResources"]["MONK"][5]["r"] = 0
E.db["unitframe"]["colors"]["classResources"]["MONK"][6]["b"] = 0.58823400735855
E.db["unitframe"]["colors"]["classResources"]["MONK"][6]["g"] = 0.99999779462814
E.db["unitframe"]["colors"]["classResources"]["MONK"][6]["r"] = 0
E.db["unitframe"]["colors"]["customcastbarbackdrop"] = true
E.db["unitframe"]["colors"]["power_backdrop"]["b"] = 0.2
E.db["unitframe"]["colors"]["power_backdrop"]["g"] = 0.2
E.db["unitframe"]["colors"]["power_backdrop"]["r"] = 0.2
E.db["unitframe"]["colors"]["auraBarDebuff"]["b"] = 0.30980392156863
E.db["unitframe"]["colors"]["auraBarDebuff"]["g"] = 0.30980392156863
E.db["unitframe"]["colors"]["auraBarDebuff"]["r"] = 0.30980392156863
E.db["unitframe"]["colors"]["customaurabarbackdrop"] = true
E.db["unitframe"]["colors"]["customclasspowerbackdrop"] = true
E.db["unitframe"]["colors"]["colorhealthbyvalue"] = false
E.db["unitframe"]["colors"]["castbar_backdrop"]["b"] = 0.2
E.db["unitframe"]["colors"]["castbar_backdrop"]["g"] = 0.2
E.db["unitframe"]["colors"]["castbar_backdrop"]["r"] = 0.2
E.db["unitframe"]["colors"]["useDeadBackdrop"] = true
E.db["unitframe"]["colors"]["health_backdrop_dead"]["b"] = 0.007843137254902
E.db["unitframe"]["colors"]["health_backdrop_dead"]["g"] = 0.007843137254902
E.db["unitframe"]["colors"]["health_backdrop_dead"]["r"] = 0.6078431372549
E.db["unitframe"]["colors"]["health"]["b"] = 0.2
E.db["unitframe"]["colors"]["health"]["g"] = 0.2
E.db["unitframe"]["colors"]["health"]["r"] = 0.2
E.db["unitframe"]["colors"]["power"]["MAELSTROM"]["g"] = 0.50196078431373
E.db["unitframe"]["colors"]["power"]["FOCUS"]["b"] = 0.27058823529412
E.db["unitframe"]["colors"]["power"]["FOCUS"]["g"] = 0.43137254901961
E.db["unitframe"]["colors"]["power"]["FOCUS"]["r"] = 0.70980392156863
E.db["unitframe"]["colors"]["power"]["LUNAR_POWER"]["b"] = 0.12156862745098
E.db["unitframe"]["colors"]["power"]["LUNAR_POWER"]["g"] = 0.85882352941176
E.db["unitframe"]["colors"]["power"]["LUNAR_POWER"]["r"] = 0.90196078431373
E.db["unitframe"]["colors"]["power"]["ENERGY"]["b"] = 0.34901960784314
E.db["unitframe"]["colors"]["power"]["ENERGY"]["g"] = 0.63137254901961
E.db["unitframe"]["colors"]["power"]["ENERGY"]["r"] = 0.65098039215686
E.db["unitframe"]["colors"]["power"]["RUNIC_POWER"]["g"] = 0.81960784313725
E.db["unitframe"]["colors"]["power"]["MANA"]["b"] = 0.63137254901961
E.db["unitframe"]["colors"]["power"]["MANA"]["g"] = 0.45098039215686
E.db["unitframe"]["colors"]["power"]["MANA"]["r"] = 0.30980392156863
E.db["unitframe"]["colors"]["power"]["INSANITY"]["b"] = 0.69019607843137
E.db["unitframe"]["colors"]["power"]["INSANITY"]["g"] = 0.14117647058824
E.db["unitframe"]["colors"]["power"]["INSANITY"]["r"] = 0.54901960784314
E.db["unitframe"]["colors"]["power"]["RAGE"]["b"] = 0.25098039215686
E.db["unitframe"]["colors"]["power"]["RAGE"]["g"] = 0.25098039215686
E.db["unitframe"]["colors"]["power"]["RAGE"]["r"] = 0.78039215686275
E.db["unitframe"]["colors"]["frameGlow"]["targetGlow"]["enable"] = false
E.db["unitframe"]["colors"]["frameGlow"]["targetGlow"]["class"] = false
E.db["unitframe"]["colors"]["frameGlow"]["mainGlow"]["enable"] = true
E.db["unitframe"]["colors"]["frameGlow"]["mainGlow"]["class"] = true
E.db["unitframe"]["colors"]["frameGlow"]["mouseoverGlow"]["color"]["a"] = 0.756581351161
E.db["unitframe"]["colors"]["frameGlow"]["mouseoverGlow"]["class"] = true
E.db["unitframe"]["colors"]["frameGlow"]["mouseoverGlow"]["texture"] = "MaUI 1"
E.db["unitframe"]["colors"]["classpower_backdrop"]["b"] = 0.2
E.db["unitframe"]["colors"]["classpower_backdrop"]["g"] = 0.2
E.db["unitframe"]["colors"]["classpower_backdrop"]["r"] = 0.2
E.db["unitframe"]["colors"]["health_backdrop"]["b"] = 0.007843137254902
E.db["unitframe"]["colors"]["health_backdrop"]["g"] = 0.007843137254902
E.db["unitframe"]["colors"]["health_backdrop"]["r"] = 0.6078431372549
E.db["unitframe"]["colors"]["healthMultiplier"] = 1

---> Cooldown
E.db["cooldown"]["fonts"]["enable"] = true
E.db["cooldown"]["fonts"]["font"] = "Expressway"
E.db["cooldown"]["fonts"]["fontSize"] = 14

if layout == "dps" then
	
---> Movers
E.db["movers"]["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-511,386"
E.db["movers"]["RaidMarkerBarAnchor"] = "BOTTOM,ElvUIParent,BOTTOM,-310,336"
E.db["movers"]["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-187,-4"
E.db["movers"]["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,311,201"
E.db["movers"]["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,400"
E.db["movers"]["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,340,-215"
E.db["movers"]["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,0,457"
E.db["movers"]["SocialMenuMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,205"
E.db["movers"]["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736"
E.db["movers"]["DurabilityFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-187,-205"
E.db["movers"]["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-370,170"
E.db["movers"]["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-131"
E.db["movers"]["ElvUIBankMover"] = "BOTTOMLEFT,LeftChatPanel,BOTTOMLEFT,0,25"
E.db["movers"]["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-558"
E.db["movers"]["MirrorTimer1Mover"] = "TOP,UIParent,TOP,0,-96"
E.db["movers"]["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,0,131"
E.db["movers"]["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-201"
E.db["movers"]["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-211"
E.db["movers"]["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-70,-336"
E.db["movers"]["MirrorTimer2Mover"] = "TOP,MirrorTimer1,BOTTOM,0,0"
E.db["movers"]["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,971,52"
E.db["movers"]["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-380,-330"
E.db["movers"]["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,243"
E.db["movers"]["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4"
E.db["movers"]["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-425"
E.db["movers"]["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-30"
E.db["movers"]["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,286"
E.db["movers"]["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195"
E.db["movers"]["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4"
E.db["movers"]["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4"
E.db["movers"]["MirrorTimer3Mover"] = "TOP,MirrorTimer2,BOTTOM,0,0"
E.db["movers"]["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-511,407"
E.db["movers"]["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,275"
E.db["movers"]["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,504,-4"
E.db["movers"]["ExperienceBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-221"
E.db["movers"]["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,296,243"
E.db["movers"]["ElvUIBagMover"] = "BOTTOMRIGHT,RightChatPanel,BOTTOMRIGHT,0,25"
E.db["movers"]["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,194"
E.db["movers"]["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-295,243"
E.db["movers"]["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-664,190"
E.db["movers"]["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,205"
E.db["movers"]["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,168"
E.db["movers"]["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-250"
E.db["movers"]["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-99"
E.db["movers"]["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,52"
E.db["movers"]["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,485,4"
E.db["movers"]["BagsMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-485,4"
E.db["movers"]["ElvAB_3"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-416,4"
E.db["movers"]["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,416,4"
E.db["movers"]["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,95"
E.db["movers"]["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-35"
E.db["movers"]["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,296,225"
E.db["movers"]["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-174"
E.db["movers"]["BNETMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,235,-4"
E.db["movers"]["ElvNP_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,355"
E.db["movers"]["SquareMinimapButtonBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,195"
E.db["movers"]["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-231"
E.db["movers"]["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,4"
E.db["movers"]["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,160"
E.db["movers"]["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-339"
E.db["movers"]["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-380,-330"
E.db["movers"]["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-370,190"
E.db["movers"]["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-220"
E.db["movers"]["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,490,406"
E.db["movers"]["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-284"
E.db["movers"]["DebuffsMover"] = "BOTTOMRIGHT,MMHolder,BOTTOMLEFT,-7,1"
E.db["movers"]["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4"
E.db["movers"]["LocationMover"] = "TOP,ElvUIParent,TOP,0,-4"

-- Unitframes

E.db["unitframe"]["font"] = "Expressway"
E.db["unitframe"]["fontSize"] = 12
E.db["unitframe"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["statusbar"] = "MaUI 1"
E.db["unitframe"]["smoothbars"] = false

---> Custom Texts
E.db["unitframe"]["units"]["player"]["customTexts"] = E.db["unitframe"]["units"]["player"]["customTexts"] or {}
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"] = {}
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"] = {}
E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"] = {}

E.db["unitframe"]["units"]["target"]["customTexts"] = E.db["unitframe"]["units"]["target"]["customTexts"] or {}
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"] = {}
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"] = {}
E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"] = {}
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"] = {}
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"] = {}	

E.db["unitframe"]["units"]["boss"]["customTexts"] = E.db["unitframe"]["units"]["boss"]["customTexts"] or {}
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"] = {}
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"] = {}

E.db["unitframe"]["units"]["arena"]["customTexts"] = E.db["unitframe"]["units"]["arena"]["customTexts"] or {}
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"] = {}
E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"] = {}

E.db["unitframe"]["units"]["party"]["customTexts"] = E.db["unitframe"]["units"]["party"]["customTexts"] or {}
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"] = {}
E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"] = {}

E.db["unitframe"]["units"]["raid"]["customTexts"] = E.db["unitframe"]["units"]["raid"]["customTexts"] or {}
E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"] = {}

E.db["unitframe"]["units"]["raid40"]["customTexts"] = E.db["unitframe"]["units"]["raid40"]["customTexts"] or {}
E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"] = {}


-- Unitframes

E.db["unitframe"]["fontSize"] = 12
E.db["unitframe"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["font"] = "Expressway"
E.db["unitframe"]["statusbar"] = "MaUI 1"

E.db["unitframe"]["cooldown"]["fonts"]["enable"] = true
E.db["unitframe"]["cooldown"]["fonts"]["font"] = "Expressway"

E.db["unitframe"]["units"]["pet"]["castbar"]["enable"] = false
E.db["unitframe"]["units"]["pet"]["castbar"]["width"] = 100
E.db["unitframe"]["units"]["pet"]["name"]["text_format"] = "[name:short]"
E.db["unitframe"]["units"]["pet"]["width"] = 100
E.db["unitframe"]["units"]["pet"]["height"] = 28
E.db["unitframe"]["units"]["pet"]["power"]["enable"] = false

E.db["unitframe"]["units"]["tank"]["rdebuffs"]["font"] = "Expressway"
E.db["unitframe"]["units"]["tank"]["rdebuffs"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["tank"]["rdebuffs"]["size"] = 22
E.db["unitframe"]["units"]["tank"]["width"] = 100
E.db["unitframe"]["units"]["tank"]["targetsGroup"]["height"] = 25
E.db["unitframe"]["units"]["tank"]["targetsGroup"]["width"] = 100
E.db["unitframe"]["units"]["tank"]["height"] = 25
E.db["unitframe"]["units"]["tank"]["buffIndicator"]["enable"] = false

E.db["unitframe"]["units"]["boss"]["debuffs"]["anchorPoint"] = "RIGHT"
E.db["unitframe"]["units"]["boss"]["debuffs"]["sizeOverride"] = 35
E.db["unitframe"]["units"]["boss"]["debuffs"]["countFont"] = "Expressway"
E.db["unitframe"]["units"]["boss"]["debuffs"]["spacing"] = 2
E.db["unitframe"]["units"]["boss"]["debuffs"]["xOffset"] = 4
E.db["unitframe"]["units"]["boss"]["debuffs"]["priority"] = "Blacklist,Boss,RaidDebuffs,CastByUnit,Personal,Whitelist"
E.db["unitframe"]["units"]["boss"]["debuffs"]["countFontSize"] = 11
E.db["unitframe"]["units"]["boss"]["debuffs"]["yOffset"] = 0
E.db["unitframe"]["units"]["boss"]["power"]["xOffset"] = -4
E.db["unitframe"]["units"]["boss"]["power"]["text_format"] = ""
E.db["unitframe"]["units"]["boss"]["power"]["height"] = 6
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"]["xOffset"] = -4
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"]["text_format"] = "[health:current]"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"]["yOffset"] = 16
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"]["font"] = "Expressway"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"]["justifyH"] = "RIGHT"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"]["enable"] = true
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"]["size"] = 11
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"]["xOffset"] = 0
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"]["text_format"] = "[name:abbrev]"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"]["yOffset"] = 0
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"]["font"] = "Expressway"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"]["justifyH"] = "CENTER"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"]["enable"] = true
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"]["size"] = 11
E.db["unitframe"]["units"]["boss"]["health"]["xOffset"] = 4
E.db["unitframe"]["units"]["boss"]["health"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["boss"]["health"]["text_format"] = "[health:percent]"
E.db["unitframe"]["units"]["boss"]["health"]["yOffset"] = 16
E.db["unitframe"]["units"]["boss"]["growthDirection"] = "UP"
E.db["unitframe"]["units"]["boss"]["name"]["text_format"] = ""
E.db["unitframe"]["units"]["boss"]["castbar"]["iconAttachedTo"] = "Castbar"
E.db["unitframe"]["units"]["boss"]["castbar"]["iconYOffset"] = -2
E.db["unitframe"]["units"]["boss"]["castbar"]["iconXOffset"] = -2
E.db["unitframe"]["units"]["boss"]["castbar"]["iconSize"] = 20
E.db["unitframe"]["units"]["boss"]["castbar"]["width"] = 180
E.db["unitframe"]["units"]["boss"]["castbar"]["height"] = 16
E.db["unitframe"]["units"]["boss"]["height"] = 35
E.db["unitframe"]["units"]["boss"]["buffs"]["countFontSize"] = 11
E.db["unitframe"]["units"]["boss"]["buffs"]["sizeOverride"] = 35
E.db["unitframe"]["units"]["boss"]["buffs"]["xOffset"] = -2
E.db["unitframe"]["units"]["boss"]["buffs"]["perrow"] = 1
E.db["unitframe"]["units"]["boss"]["buffs"]["countFont"] = "Expressway"
E.db["unitframe"]["units"]["boss"]["buffs"]["yOffset"] = 0
E.db["unitframe"]["units"]["boss"]["width"] = 180
E.db["unitframe"]["units"]["boss"]["raidicon"]["yOffset"] = -4

E.db["unitframe"]["units"]["raid"]["debuffs"]["clickThrough"] = true
E.db["unitframe"]["units"]["raid"]["rdebuffs"]["font"] = "Expressway"
E.db["unitframe"]["units"]["raid"]["rdebuffs"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["raid"]["rdebuffs"]["size"] = 22
E.db["unitframe"]["units"]["raid"]["rdebuffs"]["yOffset"] = 6
E.db["unitframe"]["units"]["raid"]["phaseIndicator"]["enable"] = false
E.db["unitframe"]["units"]["raid"]["classbar"]["height"] = 6
E.db["unitframe"]["units"]["raid"]["power"]["height"] = 6

E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"]["xOffset"] = 0
E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"]["text_format"] = "[group][mouseover]"
E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"]["yOffset"] = 16
E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"]["font"] = "Expressway"
E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"]["justifyH"] = "LEFT"
E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"]["enable"] = true
E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"]["size"] = 14

E.db["unitframe"]["units"]["raid"]["roleIcon"]["position"] = "LEFT"
E.db["unitframe"]["units"]["raid"]["roleIcon"]["xOffset"] = 1
E.db["unitframe"]["units"]["raid"]["roleIcon"]["size"] = 10
E.db["unitframe"]["units"]["raid"]["roleIcon"]["yOffset"] = 6
E.db["unitframe"]["units"]["raid"]["roleIcon"]["damager"] = false
E.db["unitframe"]["units"]["raid"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["raid"]["name"]["text_format"] = "[name:short]"
E.db["unitframe"]["units"]["raid"]["numGroups"] = 6
E.db["unitframe"]["units"]["raid"]["height"] = 38
E.db["unitframe"]["units"]["raid"]["buffs"]["clickThrough"] = true
E.db["unitframe"]["units"]["raid"]["raidicon"]["yOffset"] = -4

E.db["unitframe"]["units"]["targettarget"]["debuffs"]["perrow"] = 4
E.db["unitframe"]["units"]["targettarget"]["power"]["enable"] = false
E.db["unitframe"]["units"]["targettarget"]["width"] = 100
E.db["unitframe"]["units"]["targettarget"]["name"]["text_format"] = "[name:short]"
E.db["unitframe"]["units"]["targettarget"]["height"] = 28
E.db["unitframe"]["units"]["targettarget"]["buffs"]["perrow"] = 1
E.db["unitframe"]["units"]["targettarget"]["buffs"]["sizeOverride"] = 22
E.db["unitframe"]["units"]["targettarget"]["raidicon"]["yOffset"] = -3

E.db["unitframe"]["units"]["assist"]["rdebuffs"]["font"] = "Expressway"
E.db["unitframe"]["units"]["assist"]["rdebuffs"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["assist"]["rdebuffs"]["size"] = 22
E.db["unitframe"]["units"]["assist"]["width"] = 100
E.db["unitframe"]["units"]["assist"]["targetsGroup"]["height"] = 25
E.db["unitframe"]["units"]["assist"]["targetsGroup"]["width"] = 100
E.db["unitframe"]["units"]["assist"]["height"] = 25
E.db["unitframe"]["units"]["assist"]["buffIndicator"]["enable"] = false

E.db["unitframe"]["units"]["party"]["debuffs"]["sizeOverride"] = 35
E.db["unitframe"]["units"]["party"]["debuffs"]["clickThrough"] = true
E.db["unitframe"]["units"]["party"]["debuffs"]["xOffset"] = 2
E.db["unitframe"]["units"]["party"]["debuffs"]["priority"] = "Blacklist,CCDebuffs,Boss,RaidDebuffs,Dispellable,Whitelist,blockNoDuration"
E.db["unitframe"]["units"]["party"]["debuffs"]["perrow"] = 1
E.db["unitframe"]["units"]["party"]["rdebuffs"]["font"] = "Expressway"
E.db["unitframe"]["units"]["party"]["rdebuffs"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["party"]["rdebuffs"]["enable"] = false
E.db["unitframe"]["units"]["party"]["rdebuffs"]["yOffset"] = 6
E.db["unitframe"]["units"]["party"]["raidRoleIcons"]["position"] = "TOPRIGHT"
E.db["unitframe"]["units"]["party"]["phaseIndicator"]["enable"] = false
E.db["unitframe"]["units"]["party"]["buffs"]["sizeOverride"] = 35
E.db["unitframe"]["units"]["party"]["buffs"]["clickThrough"] = true
E.db["unitframe"]["units"]["party"]["buffs"]["enable"] = true
E.db["unitframe"]["units"]["party"]["buffs"]["xOffset"] = -2
E.db["unitframe"]["units"]["party"]["buffs"]["perrow"] = 1
E.db["unitframe"]["units"]["party"]["classbar"]["height"] = 6
E.db["unitframe"]["units"]["party"]["classbar"]["altPowerColor"]["b"] = 1
E.db["unitframe"]["units"]["party"]["classbar"]["altPowerColor"]["g"] = 0.3921568627451
E.db["unitframe"]["units"]["party"]["classbar"]["altPowerColor"]["r"] = 0
E.db["unitframe"]["units"]["party"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["party"]["roleIcon"]["position"] = "LEFT"
E.db["unitframe"]["units"]["party"]["roleIcon"]["xOffset"] = 2
E.db["unitframe"]["units"]["party"]["roleIcon"]["size"] = 12
E.db["unitframe"]["units"]["party"]["roleIcon"]["yOffset"] = 8
E.db["unitframe"]["units"]["party"]["roleIcon"]["damager"] = false
E.db["unitframe"]["units"]["party"]["power"]["height"] = 6
E.db["unitframe"]["units"]["party"]["power"]["text_format"] = ""

E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"]["xOffset"] = 21
E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"]["text_format"] = "[health:current]"
E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"]["yOffset"] = 8
E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"]["font"] = "Expressway"
E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"]["justifyH"] = "LEFT"
E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"]["enable"] = true
E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"]["size"] = 12
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"]["xOffset"] = -2
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"]["text_format"] = "[name:medium]"
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"]["yOffset"] = -2
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"]["font"] = "Expressway"
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"]["justifyH"] = "RIGHT"
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"]["enable"] = true
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"]["size"] = 14

E.db["unitframe"]["units"]["party"]["width"] = 145
E.db["unitframe"]["units"]["party"]["name"]["text_format"] = ""
E.db["unitframe"]["units"]["party"]["castbar"]["width"] = 160
E.db["unitframe"]["units"]["party"]["height"] = 35
E.db["unitframe"]["units"]["party"]["verticalSpacing"] = 6
E.db["unitframe"]["units"]["party"]["raidicon"]["yOffset"] = -4

E.db["unitframe"]["units"]["raid40"]["debuffs"]["priority"] = "Blacklist,Boss,RaidDebuffs,CCDebuffs,Dispellable"
E.db["unitframe"]["units"]["raid40"]["debuffs"]["clickThrough"] = true
E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["font"] = "Expressway"
E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["enable"] = true
E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["size"] = 16
E.db["unitframe"]["units"]["raid40"]["phaseIndicator"]["enable"] = false
E.db["unitframe"]["units"]["raid40"]["classbar"]["height"] = 6
E.db["unitframe"]["units"]["raid40"]["roleIcon"]["size"] = 10
E.db["unitframe"]["units"]["raid40"]["roleIcon"]["position"] = "LEFT"
E.db["unitframe"]["units"]["raid40"]["roleIcon"]["enable"] = true
E.db["unitframe"]["units"]["raid40"]["roleIcon"]["damager"] = false
E.db["unitframe"]["units"]["raid40"]["roleIcon"]["xOffset"] = 1
E.db["unitframe"]["units"]["raid40"]["roleIcon"]["yOffset"] = 5
E.db["unitframe"]["units"]["raid40"]["power"]["height"] = 6
E.db["unitframe"]["units"]["raid40"]["power"]["enable"] = true

E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"]["xOffset"] = 0
E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"]["text_format"] = "[group][mouseover]"
E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"]["yOffset"] = 18
E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"]["font"] = "Expressway"
E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"]["justifyH"] = "LEFT"
E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"]["enable"] = true
E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"]["size"] = 14

E.db["unitframe"]["units"]["raid40"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["raid40"]["name"]["text_format"] = "[name:veryshort]"
E.db["unitframe"]["units"]["raid40"]["height"] = 32
E.db["unitframe"]["units"]["raid40"]["buffs"]["clickThrough"] = true
E.db["unitframe"]["units"]["raid40"]["raidicon"]["yOffset"] = -4

E.db["unitframe"]["units"]["focus"]["debuffs"]["anchorPoint"] = "LEFT"
E.db["unitframe"]["units"]["focus"]["debuffs"]["sizeOverride"] = 32
E.db["unitframe"]["units"]["focus"]["debuffs"]["xOffset"] = 55
E.db["unitframe"]["units"]["focus"]["debuffs"]["priority"] = "Blacklist,CCDebuffs,Boss,RaidDebuffs,Dispellable,Whitelist"
E.db["unitframe"]["units"]["focus"]["debuffs"]["perrow"] = 1
E.db["unitframe"]["units"]["focus"]["power"]["enable"] = false
E.db["unitframe"]["units"]["focus"]["width"] = 120
E.db["unitframe"]["units"]["focus"]["buffs"]["anchorPoint"] = "LEFT"
E.db["unitframe"]["units"]["focus"]["buffs"]["sizeOverride"] = 32
E.db["unitframe"]["units"]["focus"]["buffs"]["enable"] = true
E.db["unitframe"]["units"]["focus"]["buffs"]["priority"] = "Blacklist,TurtleBuffs,PlayerBuffs,Dispellable,RaidBuffsElvUI"
E.db["unitframe"]["units"]["focus"]["buffs"]["xOffset"] = -2
E.db["unitframe"]["units"]["focus"]["buffs"]["perrow"] = 1
E.db["unitframe"]["units"]["focus"]["name"]["text_format"] = "[name:short]"
E.db["unitframe"]["units"]["focus"]["height"] = 30
E.db["unitframe"]["units"]["focus"]["castbar"]["iconAttached"] = false
E.db["unitframe"]["units"]["focus"]["castbar"]["iconXOffset"] = 2
E.db["unitframe"]["units"]["focus"]["castbar"]["width"] = 120
E.db["unitframe"]["units"]["focus"]["castbar"]["iconSize"] = 24
E.db["unitframe"]["units"]["focus"]["castbar"]["iconPosition"] = "RIGHT"
E.db["unitframe"]["units"]["focus"]["castbar"]["iconAttachedTo"] = "Castbar"

E.db["unitframe"]["units"]["target"]["debuffs"]["sizeOverride"] = 38
E.db["unitframe"]["units"]["target"]["debuffs"]["perrow"] = 6
E.db["unitframe"]["units"]["target"]["debuffs"]["priority"] = "Blacklist,CCDebuffs,Boss,RaidDebuffs,Friendly:Dispellable,Whitelist,blockNoDuration"
E.db["unitframe"]["units"]["target"]["debuffs"]["countFont"] = "Expressway"
E.db["unitframe"]["units"]["target"]["debuffs"]["yOffset"] = 4
E.db["unitframe"]["units"]["target"]["phaseIndicator"]["enable"] = false
E.db["unitframe"]["units"]["target"]["aurabar"]["enable"] = false
E.db["unitframe"]["units"]["target"]["aurabar"]["priority"] = "Blacklist,blockNoDuration,Personal,PlayerBuffs,Boss,RaidDebuffs"
E.db["unitframe"]["units"]["target"]["aurabar"]["maxBars"] = 5
E.db["unitframe"]["units"]["target"]["aurabar"]["attachTo"] = "BUFFS"
E.db["unitframe"]["units"]["target"]["castbar"]["iconPosition"] = "RIGHT"
E.db["unitframe"]["units"]["target"]["castbar"]["iconAttachedTo"] = "Castbar"
E.db["unitframe"]["units"]["target"]["castbar"]["iconSize"] = 28
E.db["unitframe"]["units"]["target"]["castbar"]["width"] = 250
E.db["unitframe"]["units"]["target"]["castbar"]["iconXOffset"] = 2

E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"]["enable"] = false
E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"]["text_format"] = "[power:current]"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"]["yOffset"] = -12
E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"]["font"] = "Expressway"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"]["justifyH"] = "RIGHT"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"]["xOffset"] = -2
E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"]["size"] = 12
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"]["attachTextTo"] = "Health"
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"]["enable"] = true
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"]["text_format"] = "[faction:icon][namecolor][smartclass] [difficultycolor][level][shortclassification]"
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"]["yOffset"] = -30
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"]["font"] = "Expressway"
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"]["justifyH"] = "LEFT"
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"]["xOffset"] = 4
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"]["size"] = 11
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"]["enable"] = true
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"]["text_format"] = "[health:percent] || [health:current]"
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"]["yOffset"] = 0
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"]["font"] = "Expressway"
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"]["justifyH"] = "RIGHT"
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"]["xOffset"] = -4
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"]["size"] = 16
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"]["enable"] = true
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"]["text_format"] = "[name:abbrev:long]"
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"]["yOffset"] = 28
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"]["font"] = "Expressway"
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"]["justifyH"] = "RIGHT"
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"]["xOffset"] = 0
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"]["size"] = 18
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"]["enable"] = false
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"]["text_format"] = "[health:percent]"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"]["yOffset"] = -24
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"]["font"] = "Expressway"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"]["justifyH"] = "LEFT"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"]["xOffset"] = 3
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"]["size"] = 12

E.db["unitframe"]["units"]["target"]["width"] = 250
E.db["unitframe"]["units"]["target"]["pvpIcon"]["anchorPoint"] = "TOPLEFT"
E.db["unitframe"]["units"]["target"]["pvpIcon"]["enable"] = true
E.db["unitframe"]["units"]["target"]["pvpIcon"]["scale"] = 0.5
E.db["unitframe"]["units"]["target"]["pvpIcon"]["xOffset"] = 7
E.db["unitframe"]["units"]["target"]["pvpIcon"]["yOffset"] = 7
E.db["unitframe"]["units"]["target"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["target"]["name"]["text_format"] = ""
E.db["unitframe"]["units"]["target"]["height"] = 32
E.db["unitframe"]["units"]["target"]["buffs"]["countFontSize"] = 11
E.db["unitframe"]["units"]["target"]["buffs"]["priority"] = "Blacklist,Personal,PlayerBuffs,Whitelist,nonPersonal"
E.db["unitframe"]["units"]["target"]["buffs"]["countFont"] = "Expressway"
E.db["unitframe"]["units"]["target"]["buffs"]["yOffset"] = 28
E.db["unitframe"]["units"]["target"]["power"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["target"]["power"]["height"] = 6
E.db["unitframe"]["units"]["target"]["power"]["text_format"] = ""
E.db["unitframe"]["units"]["target"]["power"]["detachedWidth"] = 200
E.db["unitframe"]["units"]["target"]["raidicon"]["yOffset"] = -6

E.db["unitframe"]["units"]["arena"]["debuffs"]["countFontSize"] = 11
E.db["unitframe"]["units"]["arena"]["debuffs"]["sizeOverride"] = 35
E.db["unitframe"]["units"]["arena"]["debuffs"]["perrow"] = 1
E.db["unitframe"]["units"]["arena"]["debuffs"]["xOffset"] = 110
E.db["unitframe"]["units"]["arena"]["debuffs"]["priority"] = "Blacklist,blockNoDuration,CCDebuffs,Whitelist"
E.db["unitframe"]["units"]["arena"]["debuffs"]["countFont"] = "Expressway"
E.db["unitframe"]["units"]["arena"]["debuffs"]["yOffset"] = 0
E.db["unitframe"]["units"]["arena"]["growthDirection"] = "UP"
E.db["unitframe"]["units"]["arena"]["castbar"]["iconAttachedTo"] = "Castbar"
E.db["unitframe"]["units"]["arena"]["castbar"]["iconYOffset"] = -2
E.db["unitframe"]["units"]["arena"]["castbar"]["iconXOffset"] = -2
E.db["unitframe"]["units"]["arena"]["castbar"]["iconSize"] = 20
E.db["unitframe"]["units"]["arena"]["castbar"]["width"] = 180
E.db["unitframe"]["units"]["arena"]["castbar"]["height"] = 16

E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"]["enable"] = true
E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"]["text_format"] = "[health:current]"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"]["yOffset"] = 18
E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"]["font"] = "Expressway"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"]["justifyH"] = "LEFT"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"]["xOffset"] = 4
E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"]["size"] = 12
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"]["enable"] = true
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"]["text_format"] = "[name:short]"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"]["yOffset"] = -4
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"]["font"] = "Expressway"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"]["justifyH"] = "RIGHT"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"]["xOffset"] = 0
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"]["size"] = 14

E.db["unitframe"]["units"]["arena"]["health"]["xOffset"] = 4
E.db["unitframe"]["units"]["arena"]["health"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["arena"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["arena"]["health"]["yOffset"] = 6
E.db["unitframe"]["units"]["arena"]["width"] = 180
E.db["unitframe"]["units"]["arena"]["pvpTrinket"]["xOffset"] = 2
E.db["unitframe"]["units"]["arena"]["pvpTrinket"]["size"] = 35
E.db["unitframe"]["units"]["arena"]["power"]["height"] = 6
E.db["unitframe"]["units"]["arena"]["power"]["xOffset"] = -4
E.db["unitframe"]["units"]["arena"]["power"]["text_format"] = ""
E.db["unitframe"]["units"]["arena"]["power"]["width"] = "spaced"
E.db["unitframe"]["units"]["arena"]["height"] = 35
E.db["unitframe"]["units"]["arena"]["buffs"]["countFontSize"] = 11
E.db["unitframe"]["units"]["arena"]["buffs"]["sizeOverride"] = 35
E.db["unitframe"]["units"]["arena"]["buffs"]["xOffset"] = -2
E.db["unitframe"]["units"]["arena"]["buffs"]["perrow"] = 1
E.db["unitframe"]["units"]["arena"]["buffs"]["countFont"] = "Expressway"
E.db["unitframe"]["units"]["arena"]["buffs"]["yOffset"] = 0
E.db["unitframe"]["units"]["arena"]["name"]["text_format"] = ""

E.db["unitframe"]["units"]["player"]["debuffs"]["countFontSize"] = 11
E.db["unitframe"]["units"]["player"]["debuffs"]["countFont"] = "Expressway"
E.db["unitframe"]["units"]["player"]["debuffs"]["enable"] = false
E.db["unitframe"]["units"]["player"]["debuffs"]["yOffset"] = 28
E.db["unitframe"]["units"]["player"]["CombatIcon"]["enable"] = false
E.db["unitframe"]["units"]["player"]["aurabar"]["attachTo"] = "FRAME"
E.db["unitframe"]["units"]["player"]["aurabar"]["enable"] = false
E.db["unitframe"]["units"]["player"]["aurabar"]["yOffset"] = 8
E.db["unitframe"]["units"]["player"]["pvpIcon"]["anchorPoint"] = "TOPRIGHT"
E.db["unitframe"]["units"]["player"]["pvpIcon"]["scale"] = 0.5
E.db["unitframe"]["units"]["player"]["pvpIcon"]["xOffset"] = -7
E.db["unitframe"]["units"]["player"]["pvpIcon"]["enable"] = true
E.db["unitframe"]["units"]["player"]["pvpIcon"]["yOffset"] = 7
E.db["unitframe"]["units"]["player"]["castbar"]["iconXOffset"] = -2
E.db["unitframe"]["units"]["player"]["castbar"]["height"] = 20
E.db["unitframe"]["units"]["player"]["castbar"]["iconSize"] = 28
E.db["unitframe"]["units"]["player"]["castbar"]["width"] = 340
E.db["unitframe"]["units"]["player"]["castbar"]["iconAttachedTo"] = "Castbar"

E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"]["attachTextTo"] = "Power"
E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"]["enable"] = true
E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"]["text_format"] = "[power:current]"
E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"]["yOffset"] = 0
E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"]["font"] = "Expressway"
E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"]["justifyH"] = "CENTER"
E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"]["xOffset"] = 0
E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"]["size"] = 16
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"]["enable"] = true
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"]["text_format"] = "[health:current] || [health:percent]"
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"]["yOffset"] = 0
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"]["font"] = "Expressway"
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"]["justifyH"] = "LEFT"
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"]["xOffset"] = 4
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"]["size"] = 16
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"]["enable"] = true
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"]["text_format"] = "[name:long]"
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"]["yOffset"] = 28
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"]["font"] = "Expressway"
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"]["justifyH"] = "LEFT"
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"]["xOffset"] = 4
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"]["size"] = 18

E.db["unitframe"]["units"]["player"]["power"]["detachFromFrame"] = true
E.db["unitframe"]["units"]["player"]["power"]["xOffset"] = 0
E.db["unitframe"]["units"]["player"]["power"]["text_format"] = ""
E.db["unitframe"]["units"]["player"]["power"]["width"] = "spaced"
E.db["unitframe"]["units"]["player"]["power"]["position"] = "CENTER"
E.db["unitframe"]["units"]["player"]["power"]["detachedWidth"] = 340
E.db["unitframe"]["units"]["player"]["power"]["attachTextTo"] = "Power"
E.db["unitframe"]["units"]["player"]["power"]["height"] = 32
E.db["unitframe"]["units"]["player"]["width"] = 250
E.db["unitframe"]["units"]["player"]["RestIcon"]["yOffset"] = 0
E.db["unitframe"]["units"]["player"]["RestIcon"]["xOffset"] = 0
E.db["unitframe"]["units"]["player"]["RestIcon"]["texture"] = "RESTING1"
E.db["unitframe"]["units"]["player"]["health"]["xOffset"] = 0
E.db["unitframe"]["units"]["player"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["player"]["classbar"]["detachFromFrame"] = true
E.db["unitframe"]["units"]["player"]["classbar"]["strataAndLevel"]["useCustomStrata"] = true
E.db["unitframe"]["units"]["player"]["classbar"]["strataAndLevel"]["frameStrata"] = "MEDIUM"
E.db["unitframe"]["units"]["player"]["classbar"]["strataAndLevel"]["frameLevel"] = 2
E.db["unitframe"]["units"]["player"]["classbar"]["autoHide"] = true
E.db["unitframe"]["units"]["player"]["classbar"]["detachedWidth"] = 340
E.db["unitframe"]["units"]["player"]["classbar"]["spacing"] = 1
E.db["unitframe"]["units"]["player"]["height"] = 32
E.db["unitframe"]["units"]["player"]["buffs"]["countFontSize"] = 11
E.db["unitframe"]["units"]["player"]["buffs"]["countFont"] = "Expressway"
E.db["unitframe"]["units"]["player"]["buffs"]["perrow"] = 6
E.db["unitframe"]["units"]["player"]["buffs"]["sizeOverride"] = 36
E.db["unitframe"]["units"]["player"]["buffs"]["yOffset"] = 4
E.db["unitframe"]["units"]["player"]["pvp"]["text_format"] = ""
E.db["unitframe"]["units"]["player"]["raidicon"]["yOffset"] = -6
E.db["unitframe"]["units"]["player"]["raidicon"]["size"] = 22

---> Datatext
E.db["datatexts"]["font"] = "Expressway"
E.db["datatexts"]["panelTransparency"] = true
E.db["datatexts"]["fontOutline"] = "OUTLINE"
E.db["datatexts"]["localtime"] = false
E.db["datatexts"]["panels"]["LeftChatDataPanel"]["middle"] = "Bags"
E.db["datatexts"]["panels"]["LeftChatDataPanel"]["right"] = "Durability"
E.db["datatexts"]["battleground"] = false

---> Actionbar
E.db["actionbar"]["bar3"]["inheritGlobalFade"] = true
E.db["actionbar"]["bar3"]["buttons"] = 12
E.db["actionbar"]["bar3"]["buttonsPerRow"] = 2
E.db["actionbar"]["bar3"]["backdrop"] = true
E.db["actionbar"]["bar3"]["buttonsize"] = 28
E.db["actionbar"]["fontSize"] = 12
E.db["actionbar"]["extraActionButton"]["scale"] = 0.85
E.db["actionbar"]["extraActionButton"]["alpha"] = 0.8
E.db["actionbar"]["useRangeColorText"] = true
E.db["actionbar"]["cooldown"]["fonts"]["enable"] = true
E.db["actionbar"]["cooldown"]["fonts"]["font"] = "Expressway"
E.db["actionbar"]["cooldown"]["fonts"]["fontSize"] = 24
E.db["actionbar"]["fontOutline"] = "OUTLINE"
E.db["actionbar"]["microbar"]["enabled"] = true
E.db["actionbar"]["microbar"]["mouseover"] = true
E.db["actionbar"]["microbar"]["buttonSize"] = 22
E.db["actionbar"]["globalFadeAlpha"] = 0.6
E.db["actionbar"]["bar1"]["inheritGlobalFade"] = true
E.db["actionbar"]["bar1"]["backdrop"] = true
E.db["actionbar"]["bar1"]["buttons"] = 10
E.db["actionbar"]["fontColor"]["b"] = 0.82352941176471
E.db["actionbar"]["fontColor"]["g"] = 0.82352941176471
E.db["actionbar"]["fontColor"]["r"] = 0.82352941176471
E.db["actionbar"]["rightClickSelfCast"] = true
E.db["actionbar"]["bar5"]["inheritGlobalFade"] = true
E.db["actionbar"]["bar5"]["buttons"] = 12
E.db["actionbar"]["bar5"]["buttonsPerRow"] = 2
E.db["actionbar"]["bar5"]["backdrop"] = true
E.db["actionbar"]["bar5"]["buttonsize"] = 28
E.db["actionbar"]["bar2"]["enabled"] = true
E.db["actionbar"]["bar2"]["inheritGlobalFade"] = true
E.db["actionbar"]["bar2"]["buttons"] = 10
E.db["actionbar"]["bar2"]["backdrop"] = true
E.db["actionbar"]["bar6"]["enabled"] = true
E.db["actionbar"]["bar6"]["inheritGlobalFade"] = true
E.db["actionbar"]["bar6"]["backdrop"] = true
E.db["actionbar"]["bar6"]["buttonsize"] = 30
E.db["actionbar"]["font"] = "Expressway"
E.db["actionbar"]["transparent"] = true
E.db["actionbar"]["macrotext"] = true
E.db["actionbar"]["stanceBar"]["mouseover"] = true
E.db["actionbar"]["stanceBar"]["buttonsize"] = 28
E.db["actionbar"]["stanceBar"]["buttons"] = 7
E.db["actionbar"]["barPet"]["buttonsize"] = 24
E.db["actionbar"]["barPet"]["buttonsPerRow"] = 10
E.db["actionbar"]["barPet"]["backdropSpacing"] = 0
E.db["actionbar"]["barPet"]["point"] = "TOPLEFT"
E.db["actionbar"]["bar4"]["inheritGlobalFade"] = true
E.db["actionbar"]["bar4"]["buttonsPerRow"] = 12
E.db["actionbar"]["bar4"]["buttons"] = 10

---> Nameplates
E.db["v11NamePlateReset"] = true

E.db["nameplates"]["fadeIn"] = false
E.db["nameplates"]["font"] = "Expressway"
E.db["nameplates"]["plateSize"]["personalWidth"] = 180
E.db["nameplates"]["plateSize"]["friendlyWidth"] = 180
E.db["nameplates"]["plateSize"]["enemyWidth"] = 200

E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["size"] = 28
E.db["nameplates"]["units"]["PLAYER"]["castbar"]["iconSize"] = 28
E.db["nameplates"]["units"]["PLAYER"]["castbar"]["fontSize"] = 10
E.db["nameplates"]["units"]["PLAYER"]["castbar"]["font"] = "Expressway"
E.db["nameplates"]["units"]["PLAYER"]["buffs"]["size"] = 28

E.db["nameplates"]["units"]["TARGET"]["glowStyle"] = "style8"

E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["font"] = "Expressway"
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["countFont"] = "Expressway"
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["size"] = 28
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["yOffset"] = 4
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["fontSize"] = 12
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["height"] = 10
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["iconSize"] = 28
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["font"] = "Expressway"
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["width"] = 180
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["yOffset"] = -13
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["font"] = "Expressway"
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["xOffset"] = -2
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["format"] = "[namecolor][name:abbrev]"
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["fontSize"] = 12
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["yOffset"] = -6
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["countFont"] = "Expressway"
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["numAuras"] = 1
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["font"] = "Expressway"
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["size"] = 28
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["yOffset"] = 4
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["height"] = 14
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["fontSize"] = 12
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["format"] = "[health:current]"
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["font"] = "Expressway"
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["xOffset"] = 4
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["fontSize"] = 12
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["font"] = "Expressway"
E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["yOffset"] = -6

E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["countFont"] = "Expressway"
E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["font"] = "Expressway"
E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["priority"] = "Blacklist,blockNoDuration,CCDebuffs,Personal"
E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["size"] = 28
E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["yOffset"] = 4
E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["xOffset"] = 4
E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["fontSize"] = 11
E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["font"] = "Expressway"
E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["size"] = 26
E.db["nameplates"]["units"]["ENEMY_NPC"]["eliteIcon"]["xOffset"] = -80
E.db["nameplates"]["units"]["ENEMY_NPC"]["eliteIcon"]["enable"] = true
E.db["nameplates"]["units"]["ENEMY_NPC"]["eliteIcon"]["size"] = 28
E.db["nameplates"]["units"]["ENEMY_NPC"]["eliteIcon"]["position"] = "CENTER"
E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["countFont"] = "Expressway"
E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["numAuras"] = 1
E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["font"] = "Expressway"
E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["priority"] = "Blacklist,Dispellable,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit"
E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["size"] = 28
E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["yOffset"] = 4
E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["iconPosition"] = "LEFT"
E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["fontSize"] = 12
E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["height"] = 10
E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["font"] = "Expressway"
E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["width"] = 180
E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["yOffset"] = -13
E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["xOffset"] = 2
E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["font"] = "Expressway"
E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["format"] = "[namecolor][name:abbrev]"
E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["yOffset"] = -4
E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["height"] = 15
E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["fontSize"] = 12
E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["format"] = "[health:current]"
E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["font"] = "Expressway"
E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["font"] = "Expressway"
E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["yOffset"] = -4

E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["countFont"] = "Expressway"
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["font"] = "Expressway"
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["priority"] = "Blacklist,blockNoDuration,CCDebuffs,Personal,Boss,RaidDebuffs"
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["size"] = 28
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["yOffset"] = 4
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["fontSize"] = 12
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["height"] = 10
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["iconSize"] = 28
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["font"] = "Expressway"
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["width"] = 180
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["yOffset"] = -13
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["countFont"] = "Expressway"
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["numAuras"] = 1
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["font"] = "Expressway"
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["priority"] = "Blacklist,TurtleBuffs,Dispellable,PlayerBuffs"
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["size"] = 28
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["yOffset"] = 4
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["font"] = "Expressway"
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["xOffset"] = -2
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["format"] = "[namecolor][name]"
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["fontSize"] = 12
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["yOffset"] = -6
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["height"] = 14
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["fontSize"] = 12
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["format"] = "[health:current]"
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["font"] = "Expressway"
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["xOffset"] = 4
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["fontSize"] = 12
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["font"] = "Expressway"
E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["yOffset"] = -6

E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["countFont"] = "Expressway"
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["numAuras"] = 1
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["font"] = "Expressway"
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["size"] = 28
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["yOffset"] = 4
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["fontSize"] = 12
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["height"] = 10
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["iconSize"] = 28
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["font"] = "Expressway"
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["width"] = 180
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["yOffset"] = -13
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["font"] = "Expressway"
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["countFont"] = "Expressway"
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["size"] = 28
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["yOffset"] = 4
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["xOffset"] = -2
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["fontSize"] = 12
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["font"] = "Expressway"
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["yOffset"] = -6
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["height"] = 14
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["format"] = "[health:current]"
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["font"] = "Expressway"
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["useClassColor"] = false
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["level"]["xOffset"] = 4
E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["level"]["font"] = "Expressway"

E.db["nameplates"]["colors"]["castColor"]["r"] = 0.30980392156863
E.db["nameplates"]["colors"]["castColor"]["g"] = 0.30980392156863
E.db["nameplates"]["colors"]["castColor"]["b"] = 0.30980392156863
E.db["nameplates"]["colors"]["castbarDesaturate"] = false
E.db["nameplates"]["colors"]["classResources"]["DEATHKNIGHT"]["r"] = 0.66666519641876
E.db["nameplates"]["colors"]["classResources"]["DEATHKNIGHT"]["g"] = 0.82744914293289
E.db["nameplates"]["colors"]["classResources"]["DEATHKNIGHT"]["b"] = 0.44705784320831
E.db["nameplates"]["colors"]["classResources"]["WARLOCK"]["r"] = 0.66666519641876
E.db["nameplates"]["colors"]["classResources"]["WARLOCK"]["g"] = 0.82744914293289
E.db["nameplates"]["colors"]["classResources"]["WARLOCK"]["b"] = 0.44705784320831
E.db["nameplates"]["colors"]["classResources"]["PALADIN"]["r"] = 0.66666519641876
E.db["nameplates"]["colors"]["classResources"]["PALADIN"]["g"] = 0.82744914293289
E.db["nameplates"]["colors"]["classResources"]["PALADIN"]["b"] = 0.44705784320831
E.db["nameplates"]["colors"]["classResources"]["MAGE"]["r"] = 0.66666519641876
E.db["nameplates"]["colors"]["classResources"]["MAGE"]["g"] = 0.82744914293289
E.db["nameplates"]["colors"]["classResources"]["MAGE"]["b"] = 0.44705784320831
E.db["nameplates"]["colors"]["classResources"]["comboPoints"][1]["r"] = 0.66666519641876
E.db["nameplates"]["colors"]["classResources"]["comboPoints"][1]["g"] = 0.82744914293289
E.db["nameplates"]["colors"]["classResources"]["comboPoints"][1]["b"] = 0.44705784320831
E.db["nameplates"]["colors"]["classResources"]["comboPoints"][2]["r"] = 0.66666519641876
E.db["nameplates"]["colors"]["classResources"]["comboPoints"][2]["g"] = 0.82744914293289
E.db["nameplates"]["colors"]["classResources"]["comboPoints"][2]["b"] = 0.44705784320831
E.db["nameplates"]["colors"]["classResources"]["comboPoints"][3]["r"] = 0.66666519641876
E.db["nameplates"]["colors"]["classResources"]["comboPoints"][3]["g"] = 0.82744914293289
E.db["nameplates"]["colors"]["classResources"]["comboPoints"][3]["b"] = 0.44705784320831
E.db["nameplates"]["colors"]["classResources"]["comboPoints"][4]["r"] = 0.66666519641876
E.db["nameplates"]["colors"]["classResources"]["comboPoints"][4]["g"] = 0.82744914293289
E.db["nameplates"]["colors"]["classResources"]["comboPoints"][4]["b"] = 0.44705784320831
E.db["nameplates"]["colors"]["classResources"]["comboPoints"][5]["r"] = 0.66666519641876
E.db["nameplates"]["colors"]["classResources"]["comboPoints"][5]["g"] = 0.82744914293289
E.db["nameplates"]["colors"]["classResources"]["comboPoints"][5]["b"] = 0.44705784320831
E.db["nameplates"]["colors"]["classResources"]["comboPoints"][6]["r"] = 0.66666519641876
E.db["nameplates"]["colors"]["classResources"]["comboPoints"][6]["g"] = 0.82744914293289
E.db["nameplates"]["colors"]["classResources"]["comboPoints"][6]["b"] = 0.44705784320831
E.db["nameplates"]["colors"]["classResources"]["MONK"][1]["r"] = 0.66666519641876
E.db["nameplates"]["colors"]["classResources"]["MONK"][1]["g"] = 0.82744914293289
E.db["nameplates"]["colors"]["classResources"]["MONK"][1]["b"] = 0.44705784320831
E.db["nameplates"]["colors"]["classResources"]["MONK"][2]["r"] = 0.66666519641876
E.db["nameplates"]["colors"]["classResources"]["MONK"][2]["g"] = 0.82744914293289
E.db["nameplates"]["colors"]["classResources"]["MONK"][2]["b"] = 0.44705784320831
E.db["nameplates"]["colors"]["classResources"]["MONK"][3]["r"] = 0.66666519641876
E.db["nameplates"]["colors"]["classResources"]["MONK"][3]["g"] = 0.82744914293289
E.db["nameplates"]["colors"]["classResources"]["MONK"][3]["b"] = 0.44705784320831
E.db["nameplates"]["colors"]["classResources"]["MONK"][4]["r"] = 0.66666519641876
E.db["nameplates"]["colors"]["classResources"]["MONK"][4]["g"] = 0.82744914293289
E.db["nameplates"]["colors"]["classResources"]["MONK"][4]["b"] = 0.44705784320831
E.db["nameplates"]["colors"]["classResources"]["MONK"][5]["r"] = 0.66666519641876
E.db["nameplates"]["colors"]["classResources"]["MONK"][5]["g"] = 0.82744914293289
E.db["nameplates"]["colors"]["classResources"]["MONK"][5]["b"] = 0.44705784320831
E.db["nameplates"]["colors"]["classResources"]["MONK"][6]["r"] = 0.66666519641876
E.db["nameplates"]["colors"]["classResources"]["MONK"][6]["g"] = 0.82744914293289
E.db["nameplates"]["colors"]["classResources"]["MONK"][6]["b"] = 0.44705784320831

E.db["nameplates"]["smoothbars"] = true
E.db["nameplates"]["motionType"] = "OVERLAP"
E.db["nameplates"]["statusbar"] = "MaUI 1"
E.db["nameplates"]["cooldown"]["fonts"]["enable"] = true
E.db["nameplates"]["cooldown"]["fonts"]["font"] = "Expressway"
E.db["nameplates"]["visibility"]["enemy"]["totems"] = true

---> NP Filters
E.global["nameplate"]["filters"]["ElvUI_NonTarget"]["actions"]["alpha"] = 70

elseif layout == "heal" then

	if not E.db.movers then
		E.db.movers = {}
	end

E.db["movers"]["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-410,400"
E.db["movers"]["RaidMarkerBarAnchor"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-10,187"
E.db["movers"]["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-187,-4"
E.db["movers"]["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,311,201"
E.db["movers"]["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-334,410"
E.db["movers"]["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,335,-230"
E.db["movers"]["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,335,410"
E.db["movers"]["SocialMenuMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,205"
E.db["movers"]["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736"
E.db["movers"]["DurabilityFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-187,-205"
E.db["movers"]["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-131"
E.db["movers"]["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-545,215"
E.db["movers"]["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-558"
E.db["movers"]["MirrorTimer1Mover"] = "TOP,UIParent,TOP,0,-96"
E.db["movers"]["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,0,39"
E.db["movers"]["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-174"
E.db["movers"]["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-211"
E.db["movers"]["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-70,-336"
E.db["movers"]["MirrorTimer2Mover"] = "TOP,MirrorTimer1,BOTTOM,0,0"
E.db["movers"]["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,1070,93"
E.db["movers"]["ElvUF_TargetCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-569,221"
E.db["movers"]["PlayerPowerBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,437,361"
E.db["movers"]["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4"
E.db["movers"]["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-439"
E.db["movers"]["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-30"
E.db["movers"]["ElvUF_PlayerCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,482,197"
E.db["movers"]["ElvUF_RaidMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,250"
E.db["movers"]["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4"
E.db["movers"]["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4"
E.db["movers"]["MirrorTimer3Mover"] = "TOP,MirrorTimer2,BOTTOM,0,0"
E.db["movers"]["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-411,420"
E.db["movers"]["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,219"
E.db["movers"]["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,504,-4"
E.db["movers"]["ExperienceBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-221"
E.db["movers"]["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-545,251"
E.db["movers"]["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-220"
E.db["movers"]["BNETMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,235,-4"
E.db["movers"]["PetAB"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-530,4"
E.db["movers"]["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,181"
E.db["movers"]["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,145"
E.db["movers"]["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-250"
E.db["movers"]["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-29"
E.db["movers"]["ElvUIBagMover"] = "BOTTOMRIGHT,RightChatPanel,BOTTOMRIGHT,0,25"
E.db["movers"]["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,545,215"
E.db["movers"]["SquareMinimapBar"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-10,-196"
E.db["movers"]["ElvAB_3"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-416,4"
E.db["movers"]["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,416,4"
E.db["movers"]["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,225,5"
E.db["movers"]["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,545,250"
E.db["movers"]["ElvUIBankMover"] = "BOTTOMLEFT,LeftChatPanel,BOTTOMLEFT,0,25"
E.db["movers"]["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-338,-332"
E.db["movers"]["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-201"
E.db["movers"]["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-99"
E.db["movers"]["ElvNP_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,530"
E.db["movers"]["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-231"
E.db["movers"]["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,4"
E.db["movers"]["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,160"
E.db["movers"]["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-362"
E.db["movers"]["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-338,-332"
E.db["movers"]["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,490,4"
E.db["movers"]["ElvUF_Raid40Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,250"
E.db["movers"]["ElvUF_PartyMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,250"
E.db["movers"]["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-284"
E.db["movers"]["DebuffsMover"] = "BOTTOMRIGHT,MMHolder,BOTTOMLEFT,-7,1"
E.db["movers"]["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4"
E.db["movers"]["LocationMover"] = "TOP,ElvUIParent,TOP,0,-4"

E.db["unitframe"]["font"] = "Expressway"
E.db["unitframe"]["fontSize"] = 12
E.db["unitframe"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["statusbar"] = "MaUI 1"
E.db["unitframe"]["smoothbars"] = false

-- Unitframes
---> Custom Texts
E.db["unitframe"]["units"]["player"]["customTexts"] = E.db["unitframe"]["units"]["player"]["customTexts"] or {}
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"] = {}
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"] = {}
E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"] = {}

E.db["unitframe"]["units"]["target"]["customTexts"] = E.db["unitframe"]["units"]["target"]["customTexts"] or {}
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"] = {}
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"] = {}
E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"] = {}
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"] = {}
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"] = {}	

E.db["unitframe"]["units"]["boss"]["customTexts"] = E.db["unitframe"]["units"]["boss"]["customTexts"] or {}
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"] = {}
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"] = {}

E.db["unitframe"]["units"]["arena"]["customTexts"] = E.db["unitframe"]["units"]["arena"]["customTexts"] or {}
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"] = {}
E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"] = {}

E.db["unitframe"]["units"]["party"]["customTexts"] = E.db["unitframe"]["units"]["party"]["customTexts"] or {}
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"] = {}
E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"] = {}

E.db["unitframe"]["units"]["raid"]["customTexts"] = E.db["unitframe"]["units"]["raid"]["customTexts"] or {}
E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"] = {}

E.db["unitframe"]["units"]["raid40"]["customTexts"] = E.db["unitframe"]["units"]["raid40"]["customTexts"] or {}
E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"] = {}

---> Colors & Stuff

E.db["unitframe"]["cooldown"]["fonts"]["enable"] = true
E.db["unitframe"]["cooldown"]["fonts"]["font"] = "Expressway"


E.db["unitframe"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["statusbar"] = "MaUI 1"
E.db["unitframe"]["font"] = "Expressway"

E.db["unitframe"]["cooldown"]["fonts"]["enable"] = true
E.db["unitframe"]["cooldown"]["fonts"]["font"] = "Expressway"

E.db["unitframe"]["units"]["tank"]["rdebuffs"]["font"] = "Expressway"
E.db["unitframe"]["units"]["tank"]["rdebuffs"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["tank"]["rdebuffs"]["size"] = 22
E.db["unitframe"]["units"]["tank"]["width"] = 100
E.db["unitframe"]["units"]["tank"]["targetsGroup"]["height"] = 25
E.db["unitframe"]["units"]["tank"]["targetsGroup"]["width"] = 100
E.db["unitframe"]["units"]["tank"]["height"] = 25
E.db["unitframe"]["units"]["tank"]["buffIndicator"]["enable"] = false

E.db["unitframe"]["units"]["pet"]["castbar"]["enable"] = false
E.db["unitframe"]["units"]["pet"]["castbar"]["width"] = 100
E.db["unitframe"]["units"]["pet"]["name"]["text_format"] = "[name:short]"
E.db["unitframe"]["units"]["pet"]["width"] = 100
E.db["unitframe"]["units"]["pet"]["height"] = 28
E.db["unitframe"]["units"]["pet"]["power"]["enable"] = false

E.db["unitframe"]["units"]["arena"]["debuffs"]["sizeOverride"] = 35
E.db["unitframe"]["units"]["arena"]["debuffs"]["xOffset"] = 110
E.db["unitframe"]["units"]["arena"]["debuffs"]["priority"] = "Blacklist,blockNoDuration,CCDebuffs,Whitelist"
E.db["unitframe"]["units"]["arena"]["debuffs"]["perrow"] = 1
E.db["unitframe"]["units"]["arena"]["debuffs"]["yOffset"] = 0
E.db["unitframe"]["units"]["arena"]["growthDirection"] = "UP"
E.db["unitframe"]["units"]["arena"]["power"]["height"] = 6
E.db["unitframe"]["units"]["arena"]["power"]["text_format"] = ""
E.db["unitframe"]["units"]["arena"]["power"]["width"] = "spaced"

E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"]["xOffset"] = 2
E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"]["text_format"] = "[health:current]"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"]["yOffset"] = 18
E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"]["font"] = "Expressway"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"]["justifyH"] = "LEFT"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"]["enable"] = true
E.db["unitframe"]["units"]["arena"]["customTexts"]["aHealth"]["size"] = 18
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"]["xOffset"] = 0
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"]["text_format"] = "[name:short]"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"]["yOffset"] = -4
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"]["font"] = "Expressway"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"]["justifyH"] = "RIGHT"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"]["enable"] = true
E.db["unitframe"]["units"]["arena"]["customTexts"]["aName"]["size"] = 18

E.db["unitframe"]["units"]["arena"]["health"]["xOffset"] = 4
E.db["unitframe"]["units"]["arena"]["health"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["arena"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["arena"]["health"]["yOffset"] = 6
E.db["unitframe"]["units"]["arena"]["width"] = 180
E.db["unitframe"]["units"]["arena"]["pvpTrinket"]["xOffset"] = 2
E.db["unitframe"]["units"]["arena"]["pvpTrinket"]["size"] = 35
E.db["unitframe"]["units"]["arena"]["castbar"]["iconAttached"] = false
E.db["unitframe"]["units"]["arena"]["castbar"]["iconYOffset"] = -2
E.db["unitframe"]["units"]["arena"]["castbar"]["iconXOffset"] = -2
E.db["unitframe"]["units"]["arena"]["castbar"]["iconAttachedTo"] = "Castbar"
E.db["unitframe"]["units"]["arena"]["castbar"]["iconSize"] = 20
E.db["unitframe"]["units"]["arena"]["castbar"]["height"] = 16
E.db["unitframe"]["units"]["arena"]["castbar"]["width"] = 180
E.db["unitframe"]["units"]["arena"]["height"] = 35
E.db["unitframe"]["units"]["arena"]["buffs"]["xOffset"] = -2
E.db["unitframe"]["units"]["arena"]["buffs"]["sizeOverride"] = 35
E.db["unitframe"]["units"]["arena"]["buffs"]["perrow"] = 1
E.db["unitframe"]["units"]["arena"]["buffs"]["yOffset"] = 0
E.db["unitframe"]["units"]["arena"]["name"]["text_format"] = ""

E.db["unitframe"]["units"]["targettarget"]["debuffs"]["perrow"] = 4
E.db["unitframe"]["units"]["targettarget"]["power"]["enable"] = false
E.db["unitframe"]["units"]["targettarget"]["width"] = 100
E.db["unitframe"]["units"]["targettarget"]["name"]["text_format"] = "[name:short]"
E.db["unitframe"]["units"]["targettarget"]["height"] = 28
E.db["unitframe"]["units"]["targettarget"]["buffs"]["perrow"] = 1
E.db["unitframe"]["units"]["targettarget"]["buffs"]["sizeOverride"] = 22
E.db["unitframe"]["units"]["targettarget"]["raidicon"]["yOffset"] = -3

E.db["unitframe"]["units"]["assist"]["rdebuffs"]["font"] = "Expressway"
E.db["unitframe"]["units"]["assist"]["rdebuffs"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["assist"]["rdebuffs"]["size"] = 22
E.db["unitframe"]["units"]["assist"]["width"] = 100
E.db["unitframe"]["units"]["assist"]["targetsGroup"]["height"] = 25
E.db["unitframe"]["units"]["assist"]["targetsGroup"]["width"] = 100
E.db["unitframe"]["units"]["assist"]["height"] = 25
E.db["unitframe"]["units"]["assist"]["buffIndicator"]["enable"] = false

E.db["unitframe"]["units"]["boss"]["debuffs"]["anchorPoint"] = "TOPRIGHT"
E.db["unitframe"]["units"]["boss"]["debuffs"]["perrow"] = 6
E.db["unitframe"]["units"]["boss"]["debuffs"]["yOffset"] = 1
E.db["unitframe"]["units"]["boss"]["growthDirection"] = "UP"
E.db["unitframe"]["units"]["boss"]["spacing"] = 24
E.db["unitframe"]["units"]["boss"]["threatStyle"] = "HEALTHBORDER"
E.db["unitframe"]["units"]["boss"]["power"]["attachTextTo"] = "Power"
E.db["unitframe"]["units"]["boss"]["power"]["position"] = "CENTER"
E.db["unitframe"]["units"]["boss"]["power"]["xOffset"] = 0
E.db["unitframe"]["units"]["boss"]["power"]["text_format"] = "[powercolor][power:percent]"
E.db["unitframe"]["units"]["boss"]["power"]["height"] = 9

E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"]["enable"] = true
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"]["text_format"] = "[health:current]"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"]["yOffset"] = 18
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"]["font"] = "Expressway"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"]["justifyH"] = "LEFT"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"]["xOffset"] = 2
E.db["unitframe"]["units"]["boss"]["customTexts"]["aHealth"]["size"] = 18
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"]["enable"] = true
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"]["text_format"] = "[name:abbrev]"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"]["yOffset"] = -4
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"]["font"] = "Expressway"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"]["justifyH"] = "RIGHT"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"]["xOffset"] = 0
E.db["unitframe"]["units"]["boss"]["customTexts"]["aName"]["size"] = 18

E.db["unitframe"]["units"]["boss"]["width"] = 156
E.db["unitframe"]["units"]["boss"]["infoPanel"]["enable"] = true
E.db["unitframe"]["units"]["boss"]["infoPanel"]["height"] = 15
E.db["unitframe"]["units"]["boss"]["infoPanel"]["transparent"] = true
E.db["unitframe"]["units"]["boss"]["health"]["xOffset"] = 0
E.db["unitframe"]["units"]["boss"]["health"]["yOffset"] = 13
E.db["unitframe"]["units"]["boss"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["boss"]["health"]["position"] = "RIGHT"
E.db["unitframe"]["units"]["boss"]["name"]["attachTextTo"] = "InfoPanel"
E.db["unitframe"]["units"]["boss"]["name"]["position"] = "RIGHT"
E.db["unitframe"]["units"]["boss"]["name"]["xOffset"] = 6
E.db["unitframe"]["units"]["boss"]["name"]["text_format"] = ""
E.db["unitframe"]["units"]["boss"]["name"]["yOffset"] = 16
E.db["unitframe"]["units"]["boss"]["height"] = 35
E.db["unitframe"]["units"]["boss"]["buffs"]["xOffset"] = -2
E.db["unitframe"]["units"]["boss"]["buffs"]["sizeOverride"] = 32
E.db["unitframe"]["units"]["boss"]["buffs"]["yOffset"] = 10

E.db["unitframe"]["units"]["raid40"]["debuffs"]["priority"] = "Blacklist,Boss,RaidDebuffs,CCDebuffs,Dispellable"
E.db["unitframe"]["units"]["raid40"]["debuffs"]["clickThrough"] = true
E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["font"] = "Expressway"
E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["enable"] = true
E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["size"] = 18
E.db["unitframe"]["units"]["raid40"]["phaseIndicator"]["enable"] = false
E.db["unitframe"]["units"]["raid40"]["classbar"]["enable"] = false
E.db["unitframe"]["units"]["raid40"]["roleIcon"]["size"] = 13
E.db["unitframe"]["units"]["raid40"]["roleIcon"]["position"] = "TOPLEFT"
E.db["unitframe"]["units"]["raid40"]["roleIcon"]["enable"] = true
E.db["unitframe"]["units"]["raid40"]["roleIcon"]["damager"] = false
E.db["unitframe"]["units"]["raid40"]["roleIcon"]["xOffset"] = 1
E.db["unitframe"]["units"]["raid40"]["roleIcon"]["yOffset"] = 0

E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"]["attachTextTo"] = "Health"
E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"]["font"] = "Expressway"
E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"]["justifyH"] = "LEFT"
E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"]["enable"] = true
E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"]["xOffset"] = 4
E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"]["text_format"] = "[group][mouseover]"
E.db["unitframe"]["units"]["raid40"]["customTexts"]["aGroup"]["size"] = 12

E.db["unitframe"]["units"]["raid40"]["width"] = 110
E.db["unitframe"]["units"]["raid40"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["raid40"]["name"]["text_format"] = "[name:veryshort]"
E.db["unitframe"]["units"]["raid40"]["height"] = 32
E.db["unitframe"]["units"]["raid40"]["buffs"]["clickThrough"] = true
E.db["unitframe"]["units"]["raid40"]["raidicon"]["yOffset"] = -4

E.db["unitframe"]["units"]["focus"]["debuffs"]["anchorPoint"] = "LEFT"
E.db["unitframe"]["units"]["focus"]["debuffs"]["sizeOverride"] = 32
E.db["unitframe"]["units"]["focus"]["debuffs"]["xOffset"] = 55
E.db["unitframe"]["units"]["focus"]["debuffs"]["priority"] = "Blacklist,CCDebuffs,Boss,RaidDebuffs,Dispellable,Whitelist"
E.db["unitframe"]["units"]["focus"]["debuffs"]["perrow"] = 1
E.db["unitframe"]["units"]["focus"]["castbar"]["iconAttached"] = false
E.db["unitframe"]["units"]["focus"]["castbar"]["iconPosition"] = "RIGHT"
E.db["unitframe"]["units"]["focus"]["castbar"]["width"] = 120
E.db["unitframe"]["units"]["focus"]["castbar"]["iconSize"] = 24
E.db["unitframe"]["units"]["focus"]["castbar"]["iconXOffset"] = 2
E.db["unitframe"]["units"]["focus"]["castbar"]["iconAttachedTo"] = "Castbar"
E.db["unitframe"]["units"]["focus"]["width"] = 120
E.db["unitframe"]["units"]["focus"]["buffs"]["anchorPoint"] = "LEFT"
E.db["unitframe"]["units"]["focus"]["buffs"]["sizeOverride"] = 32
E.db["unitframe"]["units"]["focus"]["buffs"]["enable"] = true
E.db["unitframe"]["units"]["focus"]["buffs"]["priority"] = "Blacklist,TurtleBuffs,PlayerBuffs,Dispellable,RaidBuffsElvUI"
E.db["unitframe"]["units"]["focus"]["buffs"]["xOffset"] = -2
E.db["unitframe"]["units"]["focus"]["buffs"]["perrow"] = 1
E.db["unitframe"]["units"]["focus"]["name"]["text_format"] = "[name:short]"
E.db["unitframe"]["units"]["focus"]["height"] = 30
E.db["unitframe"]["units"]["focus"]["power"]["enable"] = false

E.db["unitframe"]["units"]["target"]["debuffs"]["sizeOverride"] = 28
E.db["unitframe"]["units"]["target"]["debuffs"]["perrow"] = 4
E.db["unitframe"]["units"]["target"]["aurabar"]["enable"] = false
E.db["unitframe"]["units"]["target"]["aurabar"]["attachTo"] = "BUFFS"
E.db["unitframe"]["units"]["target"]["threatStyle"] = "INFOPANELBORDER"
E.db["unitframe"]["units"]["target"]["pvpIcon"]["anchorPoint"] = "TOPLEFT"
E.db["unitframe"]["units"]["target"]["pvpIcon"]["scale"] = 0.5
E.db["unitframe"]["units"]["target"]["pvpIcon"]["xOffset"] = -7
E.db["unitframe"]["units"]["target"]["pvpIcon"]["enable"] = true
E.db["unitframe"]["units"]["target"]["pvpIcon"]["yOffset"] = 7

E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"]["xOffset"] = 10
E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"]["text_format"] = "[power:current]"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"]["yOffset"] = -12
E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"]["font"] = "Expressway"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"]["justifyH"] = "LEFT"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"]["enable"] = true
E.db["unitframe"]["units"]["target"]["customTexts"]["aPower"]["size"] = 12
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"]["attachTextTo"] = "Health"
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"]["xOffset"] = 0
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"]["text_format"] = "[classification] Level [level] [namecolor][smartclass]"
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"]["yOffset"] = -28
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"]["font"] = "Expressway"
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"]["justifyH"] = "LEFT"
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"]["enable"] = false
E.db["unitframe"]["units"]["target"]["customTexts"]["aInfo"]["size"] = 11
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"]["xOffset"] = 4
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"]["text_format"] = "[health:current] || [health:percent]"
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"]["yOffset"] = 0
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"]["font"] = "Expressway"
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"]["justifyH"] = "LEFT"
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"]["enable"] = true
E.db["unitframe"]["units"]["target"]["customTexts"]["aHealth"]["size"] = 16
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"]["xOffset"] = 0
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"]["text_format"] = "[name:abbrev]"
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"]["yOffset"] = 28
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"]["font"] = "Expressway"
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"]["justifyH"] = "RIGHT"
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"]["enable"] = true
E.db["unitframe"]["units"]["target"]["customTexts"]["aName"]["size"] = 18
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"]["xOffset"] = 3
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"]["text_format"] = "[health:percent]"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"]["yOffset"] = -24
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"]["font"] = "Expressway"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"]["justifyH"] = "LEFT"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"]["enable"] = false
E.db["unitframe"]["units"]["target"]["customTexts"]["aPercent"]["size"] = 12

E.db["unitframe"]["units"]["target"]["castbar"]["overlayOnFrame"] = "InfoPanel"
E.db["unitframe"]["units"]["target"]["width"] = 200
E.db["unitframe"]["units"]["target"]["infoPanel"]["enable"] = true
E.db["unitframe"]["units"]["target"]["infoPanel"]["height"] = 24
E.db["unitframe"]["units"]["target"]["infoPanel"]["transparent"] = true
E.db["unitframe"]["units"]["target"]["height"] = 40
E.db["unitframe"]["units"]["target"]["health"]["xOffset"] = 0
E.db["unitframe"]["units"]["target"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["target"]["health"]["attachTextTo"] = "InfoPanel"
E.db["unitframe"]["units"]["target"]["power"]["height"] = 6
E.db["unitframe"]["units"]["target"]["power"]["text_format"] = ""
E.db["unitframe"]["units"]["target"]["orientation"] = "LEFT"
E.db["unitframe"]["units"]["target"]["buffs"]["attachTo"] = "Health"
E.db["unitframe"]["units"]["target"]["buffs"]["sizeOverride"] = 22
E.db["unitframe"]["units"]["target"]["buffs"]["priority"] = "Personal,Boss,Whitelist,Blacklist,PlayerBuffs,nonPersonal"
E.db["unitframe"]["units"]["target"]["buffs"]["yOffset"] = 1
E.db["unitframe"]["units"]["target"]["name"]["xOffset"] = 8
E.db["unitframe"]["units"]["target"]["name"]["yOffset"] = -32
E.db["unitframe"]["units"]["target"]["name"]["text_format"] = ""
E.db["unitframe"]["units"]["target"]["name"]["position"] = "RIGHT"
E.db["unitframe"]["units"]["target"]["raidicon"]["yOffset"] = 15

E.db["unitframe"]["units"]["raid"]["debuffs"]["clickThrough"] = true
E.db["unitframe"]["units"]["raid"]["rdebuffs"]["font"] = "Expressway"
E.db["unitframe"]["units"]["raid"]["rdebuffs"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["raid"]["rdebuffs"]["size"] = 22
E.db["unitframe"]["units"]["raid"]["rdebuffs"]["yOffset"] = 6
E.db["unitframe"]["units"]["raid"]["phaseIndicator"]["enable"] = false
E.db["unitframe"]["units"]["raid"]["classbar"]["enable"] = false
E.db["unitframe"]["units"]["raid"]["roleIcon"]["position"] = "TOPLEFT"
E.db["unitframe"]["units"]["raid"]["roleIcon"]["xOffset"] = 0
E.db["unitframe"]["units"]["raid"]["roleIcon"]["size"] = 13
E.db["unitframe"]["units"]["raid"]["roleIcon"]["yOffset"] = 0
E.db["unitframe"]["units"]["raid"]["roleIcon"]["damager"] = false
E.db["unitframe"]["units"]["raid"]["power"]["enable"] = false

E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"]["attachTextTo"] = "Health"
E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"]["font"] = "Expressway"
E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"]["justifyH"] = "LEFT"
E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"]["enable"] = true
E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"]["xOffset"] = 4
E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"]["text_format"] = "[group][mouseover]"
E.db["unitframe"]["units"]["raid"]["customTexts"]["aGroup"]["size"] = 12

E.db["unitframe"]["units"]["raid"]["width"] = 110
E.db["unitframe"]["units"]["raid"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["raid"]["name"]["text_format"] = "[name:short]"
E.db["unitframe"]["units"]["raid"]["numGroups"] = 6
E.db["unitframe"]["units"]["raid"]["height"] = 38
E.db["unitframe"]["units"]["raid"]["buffs"]["clickThrough"] = true
E.db["unitframe"]["units"]["raid"]["raidicon"]["yOffset"] = -4

E.db["unitframe"]["units"]["party"]["horizontalSpacing"] = 10
E.db["unitframe"]["units"]["party"]["debuffs"]["sizeOverride"] = 35
E.db["unitframe"]["units"]["party"]["debuffs"]["clickThrough"] = true
E.db["unitframe"]["units"]["party"]["debuffs"]["xOffset"] = 2
E.db["unitframe"]["units"]["party"]["debuffs"]["priority"] = "Blacklist,CCDebuffs,Boss,RaidDebuffs,Dispellable,Whitelist,blockNoDuration"
E.db["unitframe"]["units"]["party"]["debuffs"]["perrow"] = 1
E.db["unitframe"]["units"]["party"]["rdebuffs"]["font"] = "Expressway"
E.db["unitframe"]["units"]["party"]["rdebuffs"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["party"]["rdebuffs"]["enable"] = false
E.db["unitframe"]["units"]["party"]["rdebuffs"]["yOffset"] = 6
E.db["unitframe"]["units"]["party"]["raidRoleIcons"]["position"] = "TOPRIGHT"
E.db["unitframe"]["units"]["party"]["growthDirection"] = "RIGHT_UP"
E.db["unitframe"]["units"]["party"]["buffs"]["countFont"] = "Expressway"
E.db["unitframe"]["units"]["party"]["buffs"]["clickThrough"] = true
E.db["unitframe"]["units"]["party"]["buffs"]["enable"] = true
E.db["unitframe"]["units"]["party"]["buffs"]["xOffset"] = -2
E.db["unitframe"]["units"]["party"]["buffs"]["sizeOverride"] = 35
E.db["unitframe"]["units"]["party"]["buffs"]["perrow"] = 1
E.db["unitframe"]["units"]["party"]["phaseIndicator"]["enable"] = false
E.db["unitframe"]["units"]["party"]["classbar"]["enable"] = false
E.db["unitframe"]["units"]["party"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["party"]["roleIcon"]["size"] = 12
E.db["unitframe"]["units"]["party"]["roleIcon"]["position"] = "BOTTOMLEFT"
E.db["unitframe"]["units"]["party"]["roleIcon"]["damager"] = false
E.db["unitframe"]["units"]["party"]["power"]["height"] = 5
E.db["unitframe"]["units"]["party"]["power"]["text_format"] = ""
E.db["unitframe"]["units"]["party"]["power"]["width"] = "spaced"

E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"]["xOffset"] = 0
E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"]["text_format"] = "[health:current]"
E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"]["yOffset"] = 18
E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"]["font"] = "Expressway"
E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"]["justifyH"] = "LEFT"
E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"]["enable"] = true
E.db["unitframe"]["units"]["party"]["customTexts"]["aHealth"]["size"] = 14
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"]["xOffset"] = 0
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"]["text_format"] = "[name:medium]"
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"]["yOffset"] = -4
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"]["font"] = "Expressway"
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"]["justifyH"] = "RIGHT"
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"]["enable"] = true
E.db["unitframe"]["units"]["party"]["customTexts"]["aName"]["size"] = 16

E.db["unitframe"]["units"]["party"]["width"] = 110
E.db["unitframe"]["units"]["party"]["groupsPerRowCol"] = 5
E.db["unitframe"]["units"]["party"]["name"]["text_format"] = ""
E.db["unitframe"]["units"]["party"]["castbar"]["width"] = 160
E.db["unitframe"]["units"]["party"]["height"] = 38
E.db["unitframe"]["units"]["party"]["verticalSpacing"] = 0
E.db["unitframe"]["units"]["party"]["raidicon"]["yOffset"] = -4

E.db["unitframe"]["units"]["player"]["debuffs"]["sizeOverride"] = 30
E.db["unitframe"]["units"]["player"]["debuffs"]["perrow"] = 3
E.db["unitframe"]["units"]["player"]["debuffs"]["yOffset"] = 1
E.db["unitframe"]["units"]["player"]["orientation"] = "RIGHT"
E.db["unitframe"]["units"]["player"]["CombatIcon"]["texture"] = "COMBAT"
E.db["unitframe"]["units"]["player"]["classbar"]["autoHide"] = true
E.db["unitframe"]["units"]["player"]["classbar"]["height"] = 5
E.db["unitframe"]["units"]["player"]["classbar"]["fill"] = "filled"
E.db["unitframe"]["units"]["player"]["classbar"]["additionalPowerText"] = false
E.db["unitframe"]["units"]["player"]["aurabar"]["enable"] = false
E.db["unitframe"]["units"]["player"]["threatStyle"] = "INFOPANELBORDER"
E.db["unitframe"]["units"]["player"]["castbar"]["overlayOnFrame"] = "InfoPanel"

E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"]["xOffset"] = -10
E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"]["text_format"] = "[power:current]"
E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"]["yOffset"] = -20
E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"]["font"] = "Expressway"
E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"]["justifyH"] = "RIGHT"
E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"]["enable"] = false
E.db["unitframe"]["units"]["player"]["customTexts"]["aPower"]["size"] = 14
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"]["xOffset"] = -4
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"]["text_format"] = "[health:current] || [health:percent]"
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"]["yOffset"] = 0
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"]["font"] = "Expressway"
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"]["justifyH"] = "RIGHT"
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"]["enable"] = true
E.db["unitframe"]["units"]["player"]["customTexts"]["aHealth"]["size"] = 16
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"]["xOffset"] = 4
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"]["text_format"] = "[name:long]"
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"]["yOffset"] = 28
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"]["font"] = "Expressway"
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"]["justifyH"] = "LEFT"
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"]["enable"] = true
E.db["unitframe"]["units"]["player"]["customTexts"]["aName"]["size"] = 18

E.db["unitframe"]["units"]["player"]["pvpIcon"]["anchorPoint"] = "TOPRIGHT"
E.db["unitframe"]["units"]["player"]["pvpIcon"]["scale"] = 0.5
E.db["unitframe"]["units"]["player"]["pvpIcon"]["xOffset"] = 7
E.db["unitframe"]["units"]["player"]["pvpIcon"]["enable"] = true
E.db["unitframe"]["units"]["player"]["pvpIcon"]["yOffset"] = 7
E.db["unitframe"]["units"]["player"]["width"] = 200
E.db["unitframe"]["units"]["player"]["infoPanel"]["enable"] = true
E.db["unitframe"]["units"]["player"]["infoPanel"]["height"] = 24
E.db["unitframe"]["units"]["player"]["infoPanel"]["transparent"] = true
E.db["unitframe"]["units"]["player"]["RestIcon"]["enable"] = false
E.db["unitframe"]["units"]["player"]["health"]["xOffset"] = 0
E.db["unitframe"]["units"]["player"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["player"]["health"]["attachTextTo"] = "InfoPanel"
E.db["unitframe"]["units"]["player"]["power"]["attachTextTo"] = "InfoPanel"
E.db["unitframe"]["units"]["player"]["power"]["position"] = "LEFT"
E.db["unitframe"]["units"]["player"]["power"]["height"] = 6
E.db["unitframe"]["units"]["player"]["power"]["hideonnpc"] = true
E.db["unitframe"]["units"]["player"]["power"]["text_format"] = "[perpp]"
E.db["unitframe"]["units"]["player"]["power"]["xOffset"] = 0
E.db["unitframe"]["units"]["player"]["height"] = 40
E.db["unitframe"]["units"]["player"]["raidicon"]["yOffset"] = 15

E.db["actionbar"]["bar3"]["inheritGlobalFade"] = true
E.db["actionbar"]["bar3"]["buttons"] = 12
E.db["actionbar"]["bar3"]["buttonsPerRow"] = 2
E.db["actionbar"]["bar3"]["backdrop"] = true
E.db["actionbar"]["bar3"]["buttonsize"] = 28
E.db["actionbar"]["bar6"]["enabled"] = true
E.db["actionbar"]["bar6"]["inheritGlobalFade"] = true
E.db["actionbar"]["bar6"]["backdrop"] = true
E.db["actionbar"]["bar6"]["buttonsize"] = 30
E.db["actionbar"]["fontColor"]["b"] = 0.82352941176471
E.db["actionbar"]["fontColor"]["g"] = 0.82352941176471
E.db["actionbar"]["fontColor"]["r"] = 0.82352941176471
E.db["actionbar"]["useRangeColorText"] = true
E.db["actionbar"]["cooldown"]["fonts"]["enable"] = true
E.db["actionbar"]["cooldown"]["fonts"]["font"] = "Expressway"
E.db["actionbar"]["cooldown"]["fonts"]["fontSize"] = 24
E.db["actionbar"]["fontOutline"] = "OUTLINE"
E.db["actionbar"]["microbar"]["enabled"] = true
E.db["actionbar"]["microbar"]["mouseover"] = true
E.db["actionbar"]["microbar"]["buttonSize"] = 22
E.db["actionbar"]["globalFadeAlpha"] = 0.6
E.db["actionbar"]["bar1"]["inheritGlobalFade"] = true
E.db["actionbar"]["bar1"]["backdrop"] = true
E.db["actionbar"]["bar1"]["buttons"] = 10
E.db["actionbar"]["extraActionButton"]["scale"] = 0.85
E.db["actionbar"]["extraActionButton"]["alpha"] = 0.8
E.db["actionbar"]["rightClickSelfCast"] = true
E.db["actionbar"]["bar5"]["inheritGlobalFade"] = true
E.db["actionbar"]["bar5"]["buttons"] = 12
E.db["actionbar"]["bar5"]["buttonsPerRow"] = 2
E.db["actionbar"]["bar5"]["backdrop"] = true
E.db["actionbar"]["bar5"]["buttonsize"] = 28
E.db["actionbar"]["bar2"]["enabled"] = true
E.db["actionbar"]["bar2"]["inheritGlobalFade"] = true
E.db["actionbar"]["bar2"]["buttons"] = 10
E.db["actionbar"]["bar2"]["backdrop"] = true
E.db["actionbar"]["fontSize"] = 12
E.db["actionbar"]["font"] = "Expressway"
E.db["actionbar"]["transparent"] = true
E.db["actionbar"]["macrotext"] = true
E.db["actionbar"]["stanceBar"]["mouseover"] = true
E.db["actionbar"]["stanceBar"]["buttonsize"] = 28
E.db["actionbar"]["stanceBar"]["buttons"] = 7
E.db["actionbar"]["barPet"]["backdropSpacing"] = 0
E.db["actionbar"]["barPet"]["buttonsPerRow"] = 10
E.db["actionbar"]["barPet"]["buttonsize"] = 24
E.db["actionbar"]["barPet"]["point"] = "TOPLEFT"
E.db["actionbar"]["bar4"]["inheritGlobalFade"] = true
E.db["actionbar"]["bar4"]["buttonsize"] = 30
E.db["actionbar"]["bar4"]["buttonsPerRow"] = 12

end
	
--Update ElvUI
	E:StaggeredUpdateAll(nil, true)
	--Show message about Layout being set
	E:Print(L["|cff00c0faAlysiaUI |cfffffffflayout has been set"])
	PluginInstallStepComplete.message = "AlysiaUI Layout has been set"
	PluginInstallStepComplete:Show()
end

-- Setup Theme
function ALUI:SetupTheme(theme)
	if theme == "transparent" then

	E.db["unitframe"]["colors"]["customhealthbackdrop"] = true	
	E.db["unitframe"]["colors"]["healthclass"] = false
	E.db["unitframe"]["colors"]["powerclass"] = true
	E.db["unitframe"]["colors"]["transparentHealth"] = true
	E.db["unitframe"]["colors"]["transparentPower"] = false
	E.db["unitframe"]["colors"]["transparentAurabars"] = true
	E.db["unitframe"]["colors"]["transparentCastbar"] = true
	E.db["unitframe"]["colors"]["invertPower"] = false

	elseif theme == "class" then
	
	E.db["unitframe"]["colors"]["customhealthbackdrop"] = true	
	E.db["unitframe"]["colors"]["healthclass"] = true
	E.db["unitframe"]["colors"]["powerclass"] = true
	E.db["unitframe"]["colors"]["transparentHealth"] = false
	E.db["unitframe"]["colors"]["transparentPower"] = false
	E.db["unitframe"]["colors"]["transparentAurabars"] = false
	E.db["unitframe"]["colors"]["transparentCastbar"] = false
	E.db["unitframe"]["colors"]["invertPower"] = false

	end
	
--Update ElvUI
	E:StaggeredUpdateAll(nil, true)
	--Show message about Themes being set
	E:Print(L["|cff00c0faAlysiaUI |cfffffffflayout has been set"])
	PluginInstallStepComplete.message = "AlysiaUI Theme has been set"
	PluginInstallStepComplete:Show()
	
end
	
-- Addons Profiles
function ALUI:SetupAddons(addon)
	
	-- AddOnSkins
	if IsAddOnLoaded('AddOnSkins') then
		ALUI:LoadASProfile()
		E:Print(L["'AddOnSkins' profile has been set."])
	end
	
	-- BigWigs
	if IsAddOnLoaded('BigWigs') then
		ALUI:LoadBWProfile()
		E:Print(L["'BigWigs'"])
	end
	
	-- Deadly Boss Mods
	if IsAddOnLoaded('DBM-Core') then
		ALUI:LoadDBMProfile()
		E:Print(L["'DBM' profile has been set."])
	end
	
	-- Details
	if IsAddOnLoaded('Details') then
		ALUI:LoadDetailsProfile()
		E:Print(L["'Details' profile has been set."])
	end
	
	-- Mik's Scrolling Battle Text
	if IsAddOnLoaded('MikScrollingBattleText') then
		ALUI:LoadMSBTProfile()
		E:Print(L["'MSBT' profile has been set."])
	end
	
	-- OmniCD
	if IsAddOnLoaded('OmniCD') then
		ALUI:LoadOmniCDProfile()
		E:Print(L["'OmniCD' profile has been set."])
	end
	
	-- Skada
	if IsAddOnLoaded('Skada') then
		ALUI:LoadSkadaProfile()
		E:Print(L["'Skada' profile has been set."])
	end

	-- ls_Toasts
	if IsAddOnLoaded('ls_Toasts') then
		ALUI:LoadLSProfile()
		E:Print(L["'ls_Toasts' profile has been set."])
	end		
	
	-- ProjectAzilroka
	if IsAddOnLoaded('ProjectAzilroka') then
		ALUI:LoadPAProfile()
		E:Print(L["'ProjectAzilroka' profile has been set."])
	end	
	
		-- Shadow & Light
	if IsAddOnLoaded('ElvUI_SLE') then
		ALUI:LoadSLEProfile()
		E:Print(L["'Shadow & Light' profile has been set."])
	end	
	
		-- XIV_Databar
	if IsAddOnLoaded('XIV_Databar') then
		ALUI:LoadXIVProfile()
		E:Print(L["'XIV_Databar' profile has been set."])
	end	

		-- LocationPlus
	if IsAddOnLoaded('ElvUI_LocPlus') then
		ALUI:LoadLPProfile()
		E:Print(L["'LocationPlus' profile has been set."])
	end	
	
		-- -- !Kaliel`s Tracker
	-- if IsAddOnLoaded('KalielsTracker') then
		-- ALUI:LoadKTProfile()
		-- E:Print(L["'Kaliels Tracker' profile has been set."])
	-- end		
	
--Update ElvUI
	E:StaggeredUpdateAll(nil, true)
	--Show message about Addons being set
	E:Print(L["|cff00c0faAlysiaUI |cffffffffAddon Profiles has been set"])
	PluginInstallStepComplete.message = "AlysiaUI Addon Profles has been set"
	PluginInstallStepComplete:Show()
end