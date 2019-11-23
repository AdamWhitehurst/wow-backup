
ElvDB = {
	["profileKeys"] = {
		["Vedrixa - Moon Guard"] = "F",
		["Honabar - Emerald Dream"] = "Honabar - Emerald Dream",
		["Andalsam - Tichondrius"] = "Master-Minimore",
		["Zandroh - Tichondrius"] = "Zandroh - Tichondrius",
		["Zandro - Tichondrius"] = "Master-Minimore",
		["Whitmoore - Emerald Dream"] = "Whitmoore - Emerald Dream",
		["Bramblebrow - Emerald Dream"] = "Master- Mini Bottom",
		["Wharapi - Tichondrius"] = "Master-Minimore",
		["Ayanir - Moon Guard"] = "Ayanir - Moon Guard",
		["Mcpokesalot - Tichondrius"] = "Master",
		["Iscrackl - Tichondrius"] = "Iscrackl - Tichondrius",
		["Andallsa - Tichondrius"] = "Master-Minimore",
		["Stoakt - Tichondrius"] = "Master- Mini Bottom",
		["Andalsa - Tichondrius"] = "Master-Minimore",
		["Lonalber - Emerald Dream"] = "Lonalber - Emerald Dream",
		["Magnr - Tichondrius"] = "Master",
		["Umbrick - Tichondrius"] = "Master- Mini Bottom",
		["Byanir - Emerald Dream"] = "Byanir - Emerald Dream",
		["Tirdailough - Tichondrius"] = "Tirdailough - Tichondrius",
		["Curaney - Tichondrius"] = "Curaney - Tichondrius",
		["Harwapa - Tichondrius"] = "Harwapa - Tichondrius",
		["Mahakah - Tichondrius"] = "Mahakah - Tichondrius",
		["Mininimi - Moon Guard"] = "Mininimi - Moon Guard",
		["Bjorgr - Tichondrius"] = "Bjorgr - Tichondrius",
		["Byanir - Moon Guard"] = "Byanir - Moon Guard",
		["Umbrick - Emerald Dream"] = "Warrior",
		["Grandh - Tichondrius"] = "Grandh - Tichondrius",
		["Madylad - Tichondrius"] = "Master-Minimore",
		["Brungar - Tichondrius"] = "Master- Mini Bottom",
	},
	["gold"] = {
		["Moon Guard"] = {
			["Byanir"] = 613,
			["Ayanir"] = 531,
			["Mininimi"] = 31,
			["Vedrixa"] = 50,
		},
		["Emerald Dream"] = {
			["Bramblebrow"] = 290873,
			["Lonalber"] = 32,
			["Whitmoore"] = 310,
			["Umbrick"] = 418510575,
			["Byanir"] = 0,
			["Honabar"] = 1624572,
		},
		["Tichondrius"] = {
			["Andallsa"] = 110000,
			["Grandh"] = 0,
			["Zandro"] = 42783692,
			["Tirdailough"] = 100000,
			["Stoakt"] = 99843184,
			["Umbrick"] = 25271854,
			["Magnr"] = 10801,
			["Andalsam"] = 78888228,
			["Bjorgr"] = 755,
			["Curaney"] = 0,
			["Brungar"] = 347038,
			["Zandroh"] = 100000,
			["Madylad"] = 10042194,
			["Harwapa"] = 10000,
			["Wharapi"] = 23292252,
			["Mcpokesalot"] = 750,
			["Iscrackl"] = 100000,
			["Andalsa"] = 30032236,
			["Mahakah"] = 1615,
		},
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Wharapi - Tichondrius"] = {
					["enabled"] = false,
				},
			},
		},
	},
	["class"] = {
		["Moon Guard"] = {
			["Byanir"] = "MONK",
			["Ayanir"] = "MONK",
			["Mininimi"] = "MONK",
			["Vedrixa"] = "MONK",
		},
		["Emerald Dream"] = {
			["Bramblebrow"] = "MONK",
			["Lonalber"] = "MONK",
			["Whitmoore"] = "ROGUE",
			["Umbrick"] = "WARRIOR",
			["Byanir"] = "MONK",
			["Honabar"] = "WARRIOR",
		},
		["Tichondrius"] = {
			["Andallsa"] = "ROGUE",
			["Grandh"] = "WARLOCK",
			["Zandro"] = "MONK",
			["Tirdailough"] = "HUNTER",
			["Stoakt"] = "ROGUE",
			["Umbrick"] = "WARRIOR",
			["Magnr"] = "SHAMAN",
			["Andalsam"] = "DRUID",
			["Bjorgr"] = "HUNTER",
			["Curaney"] = "MONK",
			["Brungar"] = "HUNTER",
			["Zandroh"] = "MONK",
			["Madylad"] = "DEMONHUNTER",
			["Harwapa"] = "HUNTER",
			["Wharapi"] = "DRUID",
			["Mcpokesalot"] = "ROGUE",
			["Iscrackl"] = "WARLOCK",
			["Andalsa"] = "ROGUE",
			["Mahakah"] = "DRUID",
		},
	},
	["global"] = {
		["nameplate"] = {
			["filters"] = {
				["ElvUI_Explosives"] = {
					["triggers"] = {
						["priority"] = 1,
					},
				},
				["ElvUI_Boss"] = {
				},
				["ElvUI_NonTarget"] = {
					["actions"] = {
						["alpha"] = 49,
						["texture"] = {
							["texture"] = "Aluminium",
						},
					},
				},
				["Boss"] = {
				},
				["ElvUI_Target"] = {
					["actions"] = {
						["color"] = {
							["healthColor"] = {
								["a"] = 0.1936941146850586,
							},
						},
						["texture"] = {
							["texture"] = "Minimalist",
						},
						["scale"] = 1.25,
						["alpha"] = 100,
						["flash"] = {
							["speed"] = 10,
						},
					},
				},
				["ElvUI_Target_2"] = {
					["actions"] = {
						["scale"] = 1.25,
						["alpha"] = 100,
						["flash"] = {
							["enable"] = true,
							["speed"] = 10,
						},
					},
					["triggers"] = {
						["isTarget"] = true,
						["casting"] = {
							["notInterruptible"] = false,
							["interruptible"] = true,
						},
					},
				},
			},
		},
		["general"] = {
			["showMissingTalentAlert"] = true,
			["AceGUI"] = {
				["height"] = 600,
				["width"] = 700,
			},
			["mapAlphaWhenMoving"] = 1,
			["locale"] = "enUS",
			["UIScale"] = 0.6,
		},
		["uiScale"] = "0.7111",
		["unitframe"] = {
			["aurafilters"] = {
				["Test"] = {
					["spells"] = {
					},
				},
			},
		},
	},
	["profiles"] = {
		["Windwalker"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["honor"] = {
					["enable"] = false,
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 9,
					["width"] = 222,
				},
				["experience"] = {
					["textFormat"] = "CURREM",
					["width"] = 1819,
					["font"] = "Anime Ace",
					["orientation"] = "HORIZONTAL",
					["height"] = 12,
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["azerite"] = {
					["textFormat"] = "CURMAX",
					["orientation"] = "HORIZONTAL",
					["height"] = 20,
					["font"] = "Sriracha",
					["textSize"] = 14,
					["width"] = 1918,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["enable"] = false,
					["spacing"] = 8,
					["growthDirection"] = "HORIZONTAL",
					["size"] = 50,
				},
				["stickyFrames"] = false,
				["talkingHeadFrameBackdrop"] = true,
				["topPanel"] = false,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["locationText"] = "HIDE",
					["benikuiStyle"] = false,
					["icons"] = {
						["mail"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["size"] = 250,
				},
				["decimalLength"] = 2,
				["font"] = "Sriracha",
				["altPowerBar"] = {
					["statusBar"] = "ElvUI Blank",
					["font"] = "Sriracha",
				},
				["backdropfadecolor"] = {
					["a"] = 0.80527076125145,
					["r"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["b"] = 0.0549019607843137,
				},
				["objectiveFrameHeight"] = 400,
				["bottomPanel"] = false,
				["talkingHeadFrameScale"] = 1,
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 12,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Sriracha",
				["panelColor"] = {
					["a"] = 0.447339951992035,
					["r"] = 0.117647058823529,
					["g"] = 0.117647058823529,
					["b"] = 0.117647058823529,
				},
				["timeStampFormat"] = "%I:%M %p ",
				["panelHeightRight"] = 236,
				["font"] = "Sriracha",
				["fontOutline"] = "OUTLINE",
				["panelHeight"] = 236,
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelColorConverted"] = true,
				["tapFontSize"] = 12,
				["panelWidth"] = 250,
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["secondsIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["minutesIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["daysIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["hoursIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["showText"] = true,
				["statusbarTexture"] = "BuiFlat",
				["position"] = "TOP",
				["staticColor"] = {
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["TopCenterContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-383,-63",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-258,309",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,1010",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,2",
				["BuffsMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,253,2",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
				["MirrorTimer3Mover"] = "TOP,ElvUIParent,TOP,-10,-132",
				["BossButton"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-500,500",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,500,500",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,60",
				["ElvUF_TargetAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,267,339",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-271,242",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-228,437",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,137",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,99",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,255",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,63",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,307,308",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-14",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-419",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-513,83",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-251,83",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,251,83",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-248,-14",
				["ElvNP_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,304,433",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,-2,-113",
				["AzeriteBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-8,-60",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,513,83",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,239",
				["ReputationBarMover"] = "TOP,ElvUIParent,TOP,1,-23",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,403",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-308,308",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,-9",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,251,-81",
				["ElvUF_FocusAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-298,521",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,258,309",
				["ElvUF_PlayerAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,-268,339",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,853,783",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,83",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,342",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,484,979",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-254,2",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,3",
			},
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 12,
					["growthDirection"] = "LEFT_UP",
					["wrapAfter"] = 13,
					["durationFontSize"] = 12,
					["maxWraps"] = 2,
					["verticalSpacing"] = 12,
					["horizontalSpacing"] = 2,
					["size"] = 28,
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["countFontSize"] = 12,
					["growthDirection"] = "RIGHT_UP",
					["wrapAfter"] = 13,
					["durationFontSize"] = 12,
					["maxWraps"] = 2,
					["verticalSpacing"] = 12,
					["horizontalSpacing"] = 2,
					["size"] = 28,
				},
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
			},
			["tooltip"] = {
				["cursorAnchorX"] = 25,
				["healthBar"] = {
					["height"] = 12,
					["fontSize"] = 8,
					["font"] = "Sriracha",
				},
				["cursorAnchorY"] = -50,
				["font"] = "Sriracha",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["fontSize"] = 12,
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["hideStyle"] = true,
					["shadows"] = false,
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 414,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
			},
			["nameplates"] = {
				["nonTargetTransparency"] = 0.3,
				["clickableHeight"] = 32,
				["units"] = {
					["ENEMY_NPC"] = {
						["level"] = {
							["xOffset"] = 5,
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
							},
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["textPosition"] = "ONBAR",
						},
						["minor"] = true,
						["minions"] = false,
						["buffs"] = {
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["name"] = {
							["fontSize"] = 8,
							["font"] = "Anime Ace",
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["power"] = {
							["displayAltPower"] = false,
						},
						["enable"] = false,
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Sriracha",
								["format"] = "[namecolor][name:long]",
							},
							["width"] = 120,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["yOffset"] = 10,
							["width"] = 120,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["fontOutline"] = "NONE",
							["spacing"] = 0,
							["enable"] = false,
							["font"] = "Sriracha",
							["countFont"] = "Sriracha",
							["size"] = 20,
						},
						["level"] = {
							["enable"] = false,
						},
						["name"] = {
							["enable"] = false,
							["fontSize"] = 10,
							["font"] = "Sriracha",
							["xOffset"] = 1,
						},
						["title"] = {
							["format"] = "[guild]",
						},
					},
					["FRIENDLY_PLAYER"] = {
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["fontOutline"] = "NONE",
							["spacing"] = 0,
							["enable"] = false,
							["font"] = "Sriracha",
							["countFont"] = "Sriracha",
							["size"] = 20,
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["name"] = {
							["fontSize"] = 10,
							["enable"] = false,
							["format"] = "[name]",
							["font"] = "Sriracha",
							["xOffset"] = 1,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["yOffset"] = 10,
							["width"] = 120,
						},
						["enable"] = false,
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Sriracha",
								["format"] = "[namecolor][name:long]",
							},
							["width"] = 120,
						},
						["title"] = {
							["enable"] = true,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
								["format"] = "",
							},
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["yOffset"] = 0,
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
						},
						["name"] = {
							["fontSize"] = 8,
							["font"] = "Anime Ace",
							["format"] = "[name]",
						},
					},
					["PLAYER"] = {
						["castbar"] = {
							["iconSize"] = 20,
							["yOffset"] = 0,
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["enable"] = true,
								["format"] = "",
								["font"] = "Sriracha",
								["parent"] = "Health",
							},
							["width"] = 120,
						},
						["power"] = {
							["enable"] = false,
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["enable"] = false,
							["font"] = "Sriracha",
							["fontOutline"] = "NONE",
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs",
							},
							["countFont"] = "Sriracha",
							["spacing"] = 0,
							["size"] = 20,
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["name"] = {
							["fontSize"] = 10,
							["enable"] = true,
							["xOffset"] = 1,
							["font"] = "Sriracha",
							["yOffset"] = -10,
						},
					},
				},
				["statusbar"] = "Minimalist",
				["motionType"] = "OVERLAP",
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["loadDistance"] = 46,
				["font"] = "Sriracha",
				["colors"] = {
					["selection"] = {
						nil, -- [1]
						{
							["g"] = 0.901960784313726,
							["b"] = 0.615686274509804,
						}, -- [2]
					},
				},
				["clampToScreen"] = true,
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["font"] = "Sriracha",
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["frameGlow"] = {
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
						},
					},
					["customhealthbackdrop"] = true,
					["useDeadBackdrop"] = true,
					["transparentAurabars"] = true,
					["health"] = {
						["r"] = 0,
						["g"] = 0.513725490196078,
						["b"] = 0.0588235294117647,
					},
					["castReactionColor"] = true,
					["health_backdrop"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.0117647058823529,
						["b"] = 0,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.00392156862745098,
						["b"] = 0,
					},
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "Minimalist",
				["smoothbars"] = true,
				["thinBorders"] = true,
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["enable"] = false,
							["iconSize"] = 32,
							["width"] = 248,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableTargetGlow"] = false,
						["width"] = 270,
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["width"] = 270,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = 2,
							["enable"] = false,
							["yOffset"] = 0,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
							["camDistanceScale"] = 4,
							["width"] = 150,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 280,
						["castbar"] = {
							["iconXOffset"] = -2,
							["iconAttached"] = false,
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconSize"] = 30,
							["iconAttachedTo"] = "Castbar",
							["height"] = 30,
							["width"] = 179,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["height"] = 22,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["orientation"] = "LEFT",
						["height"] = 50,
						["buffs"] = {
							["enable"] = false,
							["sizeOverride"] = 26,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "",
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["width"] = 246,
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
					},
					["focus"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
							["attachTo"] = "BUFFS",
							["perrow"] = 8,
						},
						["disableTargetGlow"] = true,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current]",
							["height"] = 22,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 20,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["castbar"] = {
							["iconSize"] = 42,
							["insideInfoPanel"] = false,
							["height"] = 25,
							["width"] = 200,
						},
						["orientation"] = "LEFT",
						["buffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 26,
							["maxDuration"] = 0,
							["perrow"] = 8,
						},
						["height"] = 82,
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["enable"] = true,
							["height"] = 30,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "BOTTOMRIGHT",
							["xOffset"] = 0,
							["size"] = 12,
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "Sriracha",
							["yOffset"] = 25,
							["size"] = 30,
						},
						["numGroups"] = 8,
						["growthDirection"] = "DOWN_RIGHT",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["width"] = 92,
						["visibility"] = "[@raid6,noexists] hide;show",
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["enable"] = true,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["xOffset"] = 0,
							["position"] = "BOTTOM",
							["detachedWidth"] = 330,
							["attachTextTo"] = "Power",
							["height"] = 15,
							["yOffset"] = -1,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 280,
						["castbar"] = {
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttached"] = false,
							["width"] = 179,
							["iconPosition"] = "RIGHT",
							["iconSize"] = 30,
							["iconAttachedTo"] = "Castbar",
							["iconXOffset"] = 2,
							["height"] = 30,
						},
						["name"] = {
							["text_format"] = "[name] the Noble",
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["bgUseBarTexture"] = false,
							["frequentUpdates"] = true,
							["yOffset"] = -4,
						},
						["height"] = 50,
						["buffs"] = {
							["noDuration"] = false,
							["sizeOverride"] = 26,
							["countFont"] = "Sriracha",
							["attachTo"] = "POWER",
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["spacing"] = 0,
							["detachedWidth"] = 330,
							["height"] = 17,
							["autoHide"] = true,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "blockNoDuration",
							["maxDuration"] = 2000,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["xOffset"] = 18,
							["sizeOverride"] = 30,
							["anchorPoint"] = "TOP",
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
							["duration"] = {
								["position"] = "RIGHT",
							},
							["fontOutline"] = "OUTLINE",
							["xOffset"] = 69,
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["enable"] = true,
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_UP",
						["groupBy"] = "MTMA",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["damager"] = false,
							["attachTo"] = "Power",
							["position"] = "CENTER",
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 170,
						["health"] = {
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = false,
						},
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
						["height"] = 30,
						["verticalSpacing"] = 40,
						["orientation"] = "MIDDLE",
						["buffs"] = {
							["numrows"] = 2,
							["sizeOverride"] = 24,
							["enable"] = true,
							["yOffset"] = -1,
							["anchorPoint"] = "BOTTOM",
							["perrow"] = 7,
							["priority"] = "Blacklist,Personal",
							["attachTo"] = "POWER",
							["xOffset"] = 72,
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["font"] = "Sriracha",
				["minimapBottom"] = true,
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "Clique",
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttons"] = 8,
					["buttonspacing"] = 5,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonsize"] = 52,
				},
				["fontSize"] = 16,
				["movementModifier"] = "ALT",
				["useRangeColorText"] = true,
				["hotkeyTextPosition"] = "TOPLEFT",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "THICKOUTLINE",
				["notUsableColor"] = {
					["r"] = 0.215686274509804,
					["g"] = 0.215686274509804,
					["b"] = 0.215686274509804,
				},
				["chargeCooldown"] = true,
				["noPowerColor"] = {
					["r"] = 0.156862745098039,
					["g"] = 0.156862745098039,
					["b"] = 0.156862745098039,
				},
				["bar2"] = {
					["enabled"] = true,
					["backdropSpacing"] = 0,
					["buttonspacing"] = 5,
					["buttonsPerRow"] = 3,
					["visibility"] = "[petbattle] hide; show",
					["buttonsize"] = 52,
				},
				["bar1"] = {
					["flyoutDirection"] = "UP",
					["point"] = "TOPLEFT",
					["buttonspacing"] = 5,
					["buttonsPerRow"] = 3,
					["buttonsize"] = 52,
					["backdropSpacing"] = 0,
				},
				["backdropSpacingConverted"] = true,
				["bar5"] = {
					["buttonsize"] = 40,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 40,
				},
				["bar7"] = {
					["backdrop"] = false,
				},
				["font"] = "Sriracha",
				["countTextYOffset"] = 0,
				["noRangeColor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0.129411764705882,
				},
				["hotkeyTextYOffset"] = -6,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdrop"] = false,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 23,
					["backdropSpacing"] = 4,
				},
				["bar4"] = {
					["heightMult"] = 3,
					["backdropSpacing"] = 0,
					["buttons"] = 8,
					["buttonspacing"] = 5,
					["buttonsPerRow"] = 2,
					["backdrop"] = false,
					["buttonsize"] = 52,
				},
			},
			["abm"] = {
				["targetSpace"] = 3,
				["player"] = true,
				["playerSpace"] = 3,
				["targetw"] = 200,
				["target"] = true,
				["playerw"] = 200,
				["focus"] = true,
				["focusw"] = 200,
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["cooldown"] = {
				["fonts"] = {
					["enable"] = true,
					["font"] = "Sriracha",
					["fontSize"] = 14,
				},
				["expiringColor"] = {
					["g"] = 0.333333333333333,
					["b"] = 0.431372549019608,
				},
			},
			["bags"] = {
				["junkIcon"] = true,
				["countFont"] = "Sriracha",
				["itemLevelFont"] = "Sriracha",
				["split"] = {
					["bagSpacing"] = 10,
				},
				["bankSize"] = 42,
				["countFontOutline"] = "OUTLINE",
				["bagSize"] = 42,
				["countFontSize"] = 12,
				["bankWidth"] = 474,
				["itemLevelFontOutline"] = "OUTLINE",
				["bagWidth"] = 474,
				["itemLevelCustomColorEnable"] = true,
				["itemLevelFontSize"] = 12,
				["scrapIcon"] = true,
			},
		},
		["Master - Bottom Bars"] = {
			["databars"] = {
				["reputation"] = {
					["textFormat"] = "CURPERC",
					["font"] = "Sriracha",
					["orientation"] = "HORIZONTAL",
					["enable"] = true,
					["height"] = 10,
					["textSize"] = 12,
					["width"] = 930,
				},
				["azerite"] = {
					["textFormat"] = "CURPERC",
					["orientation"] = "HORIZONTAL",
					["textSize"] = 12,
					["height"] = 10,
					["font"] = "Sriracha",
					["mouseover"] = true,
					["width"] = 930,
				},
				["experience"] = {
					["textFormat"] = "CURREM",
					["textYoffset"] = 10,
					["font"] = "Anime Ace",
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["textSize"] = 10,
					["width"] = 930,
				},
				["honor"] = {
					["textFormat"] = "CURPERC",
					["font"] = "Sriracha",
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 12,
					["width"] = 930,
				},
			},
			["currentTutorial"] = 2,
			["general"] = {
				["totems"] = {
					["size"] = 60,
					["growthDirection"] = "HORIZONTAL",
					["spacing"] = 8,
				},
				["interruptAnnounce"] = "SAY",
				["afk"] = false,
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["locationText"] = "MOUSEOVER",
					["resetZoom"] = {
						["enable"] = true,
						["time"] = 5,
					},
					["size"] = 250,
					["icons"] = {
						["mail"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["benikuiStyle"] = false,
				},
				["decimalLength"] = 2,
				["talkingHeadFrameBackdrop"] = true,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80527076125145,
					["b"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["r"] = 0.0549019607843137,
				},
				["valuecolor"] = {
					["a"] = 1,
					["g"] = 0.662745098039216,
					["b"] = 0.517647058823529,
				},
				["threat"] = {
					["textOutline"] = "OUTLINE",
				},
				["stickyFrames"] = false,
				["talkingHeadFrameScale"] = 1,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["font"] = "Sriracha",
				["altPowerBar"] = {
					["statusBar"] = "Minimalist",
					["font"] = "Sriracha",
				},
				["topPanel"] = false,
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["bonusObjectivePosition"] = "RIGHT",
				["objectiveFrameHeight"] = 594,
			},
			["bags"] = {
				["junkIcon"] = true,
				["countFont"] = "Sriracha",
				["itemLevelFont"] = "Sriracha",
				["split"] = {
					["bagSpacing"] = 10,
				},
				["scrapIcon"] = true,
				["countFontOutline"] = "OUTLINE",
				["bagSize"] = 42,
				["bankWidth"] = 474,
				["itemLevelFontSize"] = 12,
				["itemLevelFontOutline"] = "OUTLINE",
				["bagWidth"] = 474,
				["itemLevelCustomColorEnable"] = true,
				["countFontSize"] = 12,
				["bankSize"] = 42,
			},
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 12,
				["tabFontOutline"] = "OUTLINE",
				["panelBackdrop"] = "LEFT",
				["tabFont"] = "Sriracha",
				["panelColor"] = {
					["a"] = 0.5088120698928833,
					["b"] = 0.1176470588235294,
					["g"] = 0.1176470588235294,
					["r"] = 0.1176470588235294,
				},
				["desaturateVoiceIcons"] = false,
				["timeStampFormat"] = "%I:%M ",
				["panelHeightRight"] = 236,
				["font"] = "Sriracha",
				["panelHeight"] = 250,
				["fontOutline"] = "OUTLINE",
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelColorConverted"] = true,
				["tapFontSize"] = 12,
				["panelWidth"] = 250,
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["minutesIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["daysIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["secondsIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["showText"] = true,
				["statusbarTexture"] = "BuiFlat",
				["position"] = "TOP",
				["staticColor"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,228",
				["RaidMarkerBarAnchor"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-36,6",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,132",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,40,1069",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4",
				["BuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-245,132",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,400,369",
				["MirrorTimer3Mover"] = "TOP,ElvUIParent,TOP,0,-132",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-256,389",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,216,351",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,255",
				["ElvUF_PartyMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,209,1069",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,342",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,158",
				["ElvUF_TargetAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,280,252",
				["MinimapButtonAnchor"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-11,221",
				["TopCenterContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-120,-17",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,134",
				["ElvUF_TargetCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-400,369",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,181",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ArenaHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,50,-382",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-400,400",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,48",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,2,-335",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-315",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,251,-81",
				["ElvUF_FocusAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-298,521",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["BelowMinimapContainerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-211,9",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,-311,4",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,12,-154",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,205",
				["AzeriteBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,40,-13",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,90",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,312,4",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,400,400",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,403",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-42,-4",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-66,-18",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-23",
				["ElvNP_PlayerMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-10,34",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,40,1071",
				["HonorBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,40,-4",
				["ElvUF_PlayerAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,-277,252",
				["ElvAB_6"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,294",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,40,832",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-43,-17",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,184",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,247,132",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
			},
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 4,
					["size"] = 28,
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["verticalSpacing"] = 10,
					["maxWraps"] = 5,
					["wrapAfter"] = 7,
					["growthDirection"] = "LEFT_UP",
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["maxWraps"] = 5,
					["growthDirection"] = "RIGHT_UP",
					["sortDir"] = "+",
					["size"] = 28,
					["verticalSpacing"] = 10,
					["horizontalSpacing"] = 4,
					["wrapAfter"] = 7,
				},
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
			},
			["tooltip"] = {
				["fontSize"] = 12,
				["healthBar"] = {
					["height"] = 12,
					["font"] = "Sriracha",
					["fontSize"] = 8,
				},
				["cursorAnchorX"] = 25,
				["headerFontSize"] = 16,
				["cursorAnchorY"] = -50,
				["font"] = "Sriracha",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["textFontSize"] = 14,
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["smallTextFontSize"] = 14,
			},
			["v11NamePlateReset"] = true,
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["shadows"] = false,
					["hideStyle"] = true,
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["width"] = 414,
						["backdrop"] = true,
						["transparent"] = false,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["abm"] = {
				["targetSpace"] = 3,
				["playerSpace"] = 3,
				["focus"] = true,
				["playerw"] = 150,
				["targetw"] = 150,
			},
			["unitframe"] = {
				["statusbar"] = "Minimalist",
				["fontSize"] = 12,
				["colors"] = {
					["health_backdrop_dead"] = {
						["b"] = 0,
						["g"] = 0.00392156862745098,
						["r"] = 0.109803921568627,
					},
					["auraBarBuff"] = {
						["b"] = 0.725490196078431,
						["g"] = 0.419607843137255,
						["r"] = 0,
					},
					["auraBarTurtleColor"] = {
						["b"] = 0.819607843137255,
						["g"] = 0,
						["r"] = 0.447058823529412,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 0.376470588235294,
					},
					["transparentAurabars"] = true,
					["frameGlow"] = {
						["mainGlow"] = {
							["enable"] = true,
							["class"] = true,
						},
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
							["class"] = true,
						},
					},
					["healthclass"] = true,
					["customhealthbackdrop"] = true,
					["useDeadBackdrop"] = true,
					["classbackdrop"] = true,
					["health"] = {
						["b"] = 0.866666666666667,
						["g"] = 0.43921568627451,
						["r"] = 0,
					},
					["castReactionColor"] = true,
					["health_backdrop"] = {
						["b"] = 0,
						["g"] = 0.0117647058823529,
						["r"] = 0.109803921568627,
					},
					["powerclass"] = true,
					["classResources"] = {
						["comboPoints"] = {
							{
								["b"] = 0.756862745098039,
								["g"] = 0.423529411764706,
								["r"] = 0.403921568627451,
							}, -- [1]
							{
								["b"] = 0.749019607843137,
								["g"] = 0.745098039215686,
								["r"] = 0.223529411764706,
							}, -- [2]
							{
								["b"] = 0.184313725490196,
								["g"] = 0.756862745098039,
								["r"] = 0.219607843137255,
							}, -- [3]
						},
						["bgColor"] = {
							["b"] = 0,
							["g"] = 0,
							["r"] = 0,
						},
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["font"] = "Sriracha",
				["thinBorders"] = true,
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["xOffset"] = 18,
							["sizeOverride"] = 30,
							["anchorPoint"] = "TOP",
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["duration"] = {
								["position"] = "RIGHT",
							},
							["xOffset"] = 69,
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "DOWN_LEFT",
						["groupBy"] = "MTMA",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["position"] = "CENTER",
							["attachTo"] = "Power",
							["damager"] = false,
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 170,
						["health"] = {
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = false,
						},
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
						["height"] = 30,
						["verticalSpacing"] = 40,
						["orientation"] = "MIDDLE",
						["buffs"] = {
							["numrows"] = 2,
							["sizeOverride"] = 24,
							["xOffset"] = 72,
							["yOffset"] = -1,
							["anchorPoint"] = "BOTTOM",
							["enable"] = true,
							["attachTo"] = "POWER",
							["priority"] = "Blacklist,Personal",
							["perrow"] = 7,
							["countFont"] = "Sriracha",
						},
					},
					["player"] = {
						["debuffs"] = {
							["numrows"] = 9,
							["sizeOverride"] = 28,
							["perrow"] = 12,
							["xOffset"] = 262,
							["attachTo"] = "POWER",
							["countFont"] = "Sriracha",
							["yOffset"] = -45,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
						},
						["castbar"] = {
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttachedTo"] = "Castbar",
							["iconYOffset"] = 16,
							["width"] = 250,
							["iconPosition"] = "RIGHT",
							["iconSize"] = 56,
							["height"] = 25,
							["iconXOffset"] = 4,
							["iconAttached"] = false,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["disableMouseoverGlow"] = true,
						["width"] = 250,
						["health"] = {
							["attachTextTo"] = "Frame",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["text_format"] = "[namecolor][health:current]",
							["yOffset"] = -6,
						},
						["fader"] = {
							["health"] = false,
							["power"] = false,
							["enable"] = true,
							["vehicle"] = false,
							["smooth"] = 0,
							["minAlpha"] = 0,
						},
						["name"] = {
							["yOffset"] = 8,
							["text_format"] = "[namecolor][name:title]",
							["position"] = "TOP",
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["detachedWidth"] = 258,
							["position"] = "BOTTOM",
							["xOffset"] = 0,
							["height"] = 20,
							["detachFromFrame"] = true,
							["yOffset"] = -1,
						},
						["height"] = 25,
						["buffs"] = {
							["numrows"] = 9,
							["sizeOverride"] = 28,
							["enable"] = true,
							["yOffset"] = -45,
							["anchorPoint"] = "TOP",
							["xOffset"] = -146,
							["attachTo"] = "POWER",
							["perrow"] = 12,
							["priority"] = "Personal,nonPersonal",
							["noDuration"] = false,
							["countFont"] = "Sriracha",
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["detachedWidth"] = 258,
							["fill"] = "spaced",
							["height"] = 20,
							["additionalPowerText"] = false,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 7,
							["spacing"] = 5,
							["enable"] = false,
							["yOffset"] = 12,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["iconSize"] = 32,
							["width"] = 250,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableTargetGlow"] = false,
						["width"] = 270,
					},
					["raid"] = {
						["debuffs"] = {
							["sizeOverride"] = 0,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["boss"] = {
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["castbar"] = {
							["width"] = 170,
						},
						["width"] = 170,
						["infoPanel"] = {
							["height"] = 17,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["spacing"] = 20,
						["height"] = 50,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
					},
					["raid40"] = {
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
					},
					["focus"] = {
						["gps"] = {
							["position"] = "TOPRIGHT",
						},
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["disableTargetGlow"] = true,
						["castbar"] = {
							["iconSize"] = 42,
							["width"] = 200,
							["height"] = 25,
							["insideInfoPanel"] = false,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 200,
						["infoPanel"] = {
							["height"] = 20,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "BOTTOMRIGHT",
							["xOffset"] = 0,
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["name"] = {
							["xOffset"] = 2,
							["yOffset"] = -2,
							["text_format"] = "[namecolor][name]",
							["position"] = "TOPLEFT",
						},
						["height"] = 42,
						["buffs"] = {
							["sizeOverride"] = 26,
						},
						["orientation"] = "LEFT",
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "BOTTOMLEFT",
							["xOffset"] = 3,
							["text_format"] = "[powercolor][power:current]",
							["height"] = 10,
						},
					},
					["target"] = {
						["debuffs"] = {
							["attachTo"] = "HEALTH",
							["sizeOverride"] = 31,
							["yOffset"] = 10,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["width"] = 150,
						},
						["smartAuraDisplay"] = "DISABLED",
						["colorOverride"] = "FORCE_ON",
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 7,
							["spacing"] = 5,
							["enable"] = false,
							["yOffset"] = 12,
						},
						["castbar"] = {
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttachedTo"] = "Castbar",
							["iconYOffset"] = 16,
							["width"] = 250,
							["iconXOffset"] = -4,
							["iconSize"] = 56,
							["iconAttached"] = false,
							["height"] = 25,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 250,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 22,
							["threatStyle"] = "GLOW",
							["enable"] = false,
						},
						["orientation"] = "LEFT",
						["name"] = {
							["yOffset"] = 8,
							["text_format"] = "[namecolor][name]",
							["position"] = "TOP",
						},
						["classicon"] = {
							["enable"] = false,
						},
						["height"] = 25,
						["buffs"] = {
							["anchorPoint"] = "BOTTOM",
							["sizeOverride"] = 22,
							["perrow"] = 11,
							["xOffset"] = 114,
							["countFont"] = "Sriracha",
							["numrows"] = 6,
							["yOffset"] = -8,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["xOffset"] = 0,
							["text_format"] = "[healthcolor][health:current]",
							["yOffset"] = -6,
						},
						["pvpIcon"] = {
							["scale"] = 0.48,
						},
					},
					["arena"] = {
						["debuffs"] = {
							["anchorPoint"] = "RIGHT",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["spacing"] = 20,
						["height"] = 50,
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
						},
						["width"] = 170,
					},
					["targettarget"] = {
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["enable"] = false,
							["xOffset"] = 2,
							["yOffset"] = 0,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["minimapBottom"] = true,
				["panelTransparency"] = true,
				["panels"] = {
					["BottomMiniPanel"] = "Coords",
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
				},
				["font"] = "Sriracha",
				["fontOutline"] = "OUTLINE",
				["leftChatPanel"] = false,
				["actionbar1"] = false,
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["flyoutDirection"] = "UP",
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["alpha"] = 0.9,
					["heightMult"] = 2,
					["inheritGlobalFade"] = true,
					["showGrid"] = false,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 40,
				},
				["bar6"] = {
					["enabled"] = true,
					["flyoutDirection"] = "UP",
					["point"] = "TOPLEFT",
					["buttonsize"] = 39,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 1,
					["mouseover"] = true,
					["showGrid"] = false,
				},
				["movementModifier"] = "ALT",
				["useRangeColorText"] = true,
				["hotkeyTextPosition"] = "TOPLEFT",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "THICKOUTLINE",
				["bar4"] = {
					["point"] = "BOTTOMRIGHT",
					["buttonspacing"] = 4,
					["backdrop"] = false,
					["inheritGlobalFade"] = true,
					["flyoutDirection"] = "UP",
					["buttonsize"] = 28,
					["showGrid"] = false,
					["buttonsPerRow"] = 3,
					["backdropSpacing"] = 0,
					["alpha"] = 0.9,
				},
				["notUsableColor"] = {
					["b"] = 0.215686274509804,
					["g"] = 0.215686274509804,
					["r"] = 0.215686274509804,
				},
				["backdropSpacingConverted"] = true,
				["chargeCooldown"] = true,
				["noRangeColor"] = {
					["b"] = 0.129411764705882,
					["g"] = 0,
					["r"] = 1,
				},
				["noPowerColor"] = {
					["b"] = 0.156862745098039,
					["g"] = 0.156862745098039,
					["r"] = 0.156862745098039,
				},
				["useDrawSwipeOnCharges"] = true,
				["bar2"] = {
					["enabled"] = true,
					["buttonspacing"] = 4,
					["alpha"] = 0.9,
					["heightMult"] = 2,
					["inheritGlobalFade"] = true,
					["showGrid"] = false,
					["widthMult"] = 2,
					["visibility"] = "[petbattle] hide; show",
					["backdropSpacing"] = 4,
					["buttonsize"] = 40,
				},
				["bar1"] = {
					["flyoutDirection"] = "UP",
					["inheritGlobalFade"] = true,
					["point"] = "TOPLEFT",
					["buttonsize"] = 40,
					["buttonspacing"] = 4,
					["alpha"] = 0.9,
					["backdropSpacing"] = 0,
					["showGrid"] = false,
				},
				["hideCooldownBling"] = true,
				["bar5"] = {
					["flyoutDirection"] = "UP",
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["alpha"] = 0.9,
					["inheritGlobalFade"] = true,
					["showGrid"] = false,
					["buttonsPerRow"] = 3,
					["backdropSpacing"] = 0,
					["buttonsize"] = 28,
				},
				["bar7"] = {
					["backdrop"] = false,
				},
				["fontSize"] = 12,
				["font"] = "Sriracha",
				["countTextYOffset"] = 0,
				["globalFadeAlpha"] = 0.9,
				["hotkeyTextYOffset"] = -4,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdropSpacing"] = 4,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 23,
					["backdrop"] = false,
				},
				["countTextXOffset"] = 3,
			},
			["nameplates"] = {
				["cutaway"] = {
					["health"] = {
						["enabled"] = true,
						["fadeOutTime"] = 0.1,
						["lengthBeforeFade"] = 0.1,
					},
					["power"] = {
						["enabled"] = true,
						["fadeOutTime"] = 0.1,
						["lengthBeforeFade"] = 0.1,
					},
				},
				["nonTargetTransparency"] = 0.3,
				["clickableHeight"] = 32,
				["font"] = "Sriracha",
				["units"] = {
					["ENEMY_NPC"] = {
						["health"] = {
							["text"] = {
								["font"] = "Anime Ace",
								["fontSize"] = 8,
							},
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["countFont"] = "Sriracha",
							["size"] = 20,
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["name"] = {
							["font"] = "Sriracha",
							["fontSize"] = 10,
						},
						["castbar"] = {
							["textPosition"] = "ONBAR",
							["font"] = "Sriracha",
						},
						["minor"] = true,
						["level"] = {
							["xOffset"] = 5,
						},
						["title"] = {
							["format"] = "[namecolor][npctitle]",
						},
						["buffs"] = {
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style2",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["fontSize"] = 10,
							["iconOffsetY"] = -1,
							["yOffset"] = -24,
							["iconSize"] = 17,
							["hideTime"] = true,
							["height"] = 15,
							["fontOutline"] = "NONE",
							["iconOffsetX"] = 4,
							["textPosition"] = "ONBAR",
							["font"] = "Sriracha",
							["width"] = 120,
						},
						["showTitle"] = false,
						["raidTargetIndicator"] = {
							["position"] = "TOP",
						},
						["health"] = {
							["enable"] = false,
							["text"] = {
								["enable"] = false,
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
							["width"] = 120,
						},
						["title"] = {
							["fontSize"] = 12,
							["position"] = "CENTER",
							["enable"] = true,
							["format"] = "[namecolor][npctitle][guild]",
							["fontOutline"] = "NONE",
							["font"] = "Sriracha",
						},
						["name"] = {
							["fontSize"] = 14,
							["fontOutline"] = "NONE",
							["position"] = "CENTER",
							["xOffset"] = 1,
							["format"] = "[namecolor][name]",
							["font"] = "Sriracha",
							["yOffset"] = 7,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["spacing"] = 0,
							["fontOutline"] = "NONE",
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["level"] = {
							["enable"] = false,
						},
						["power"] = {
							["displayAltPower"] = false,
						},
						["nazjatarFollowerXP"] = {
							["color"] = {
								["b"] = 0.9215686274509803,
								["g"] = 0.2549019607843137,
								["r"] = 0.2980392156862745,
							},
							["yOffset"] = 60,
						},
					},
					["PLAYER"] = {
						["health"] = {
							["width"] = 120,
						},
						["name"] = {
							["format"] = "[friendlytitle]",
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["power"] = {
							["enable"] = false,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
							["size"] = 20,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["format"] = "",
								["font"] = "Anime Ace",
							},
						},
						["title"] = {
							["fontSize"] = 10,
							["position"] = "BOTTOMRIGHT",
							["enable"] = true,
							["format"] = "[namecolor]<[guild]>",
							["font"] = "Sriracha",
							["yOffset"] = 10,
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["name"] = {
							["fontSize"] = 8,
							["format"] = "[namecolor][name]",
							["font"] = "Anime Ace",
						},
						["buffs"] = {
							["countFont"] = "Sriracha",
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["yOffset"] = 0,
						},
					},
					["FRIENDLY_PLAYER"] = {
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["width"] = 120,
							["yOffset"] = 10,
						},
						["nameOnly"] = true,
						["raidTargetIndicator"] = {
							["position"] = "TOP",
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
						},
						["name"] = {
							["xOffset"] = 1,
							["fontSize"] = 14,
							["font"] = "Sriracha",
							["fontOutline"] = "NONE",
						},
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["title"] = {
							["fontSize"] = 12,
							["position"] = "CENTER",
							["enable"] = true,
							["format"] = "[namecolor][guild]",
							["fontOutline"] = "NONE",
							["font"] = "Sriracha",
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["spacing"] = 0,
							["fontOutline"] = "NONE",
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["size"] = 20,
						},
					},
				},
				["colors"] = {
					["selection"] = {
						nil, -- [1]
						{
							["g"] = 0.901960784313726,
							["b"] = 0.615686274509804,
						}, -- [2]
					},
				},
				["clampToScreen"] = true,
				["motionType"] = "OVERLAP",
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["loadDistance"] = 50,
				["statusbar"] = "Minimalist",
				["visibility"] = {
					["friendly"] = {
						["pets"] = true,
						["guardians"] = true,
						["totems"] = true,
						["minions"] = true,
					},
					["enemy"] = {
						["minus"] = false,
					},
				},
				["smoothbars"] = true,
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["cooldown"] = {
				["expiringColor"] = {
					["g"] = 0.333333333333333,
					["b"] = 0.431372549019608,
				},
				["fonts"] = {
					["enable"] = true,
					["font"] = "Sriracha",
					["fontSize"] = 14,
				},
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
		},
		["Honabar - Emerald Dream"] = {
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["v11NamePlateReset"] = true,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1020",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,428",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
		},
		["Andalsam - Tichondrius"] = {
			["currentTutorial"] = 1,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,433",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1276",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,196",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,428",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["v11NamePlateReset"] = true,
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Mahakah - Tichondrius"] = {
			["databars"] = {
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["enable"] = true,
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["honor"] = {
					["height"] = 10,
					["enable"] = false,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 9,
					["width"] = 222,
				},
				["experience"] = {
					["font"] = "AnimeAce Bold",
					["textYoffset"] = 10,
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["textSize"] = 12,
					["width"] = 348,
				},
				["azerite"] = {
					["orientation"] = "HORIZONTAL",
					["enable"] = false,
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["growthDirection"] = "HORIZONTAL",
					["size"] = 50,
					["spacing"] = 8,
				},
				["fontSize"] = 9,
				["stickyFrames"] = false,
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["altPowerBar"] = {
					["statusBar"] = "ElvUI Blank",
					["fontSize"] = 11,
					["font"] = "Expressway",
				},
				["minimap"] = {
					["benikuiStyle"] = false,
					["locationFont"] = "Anime Ace",
					["locationText"] = "HIDE",
					["size"] = 235,
				},
				["decimalLength"] = 2,
				["font"] = "Anime Ace",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["objectiveFrameHeight"] = 400,
				["talkingHeadFrameScale"] = 1,
				["bonusObjectivePosition"] = "AUTO",
				["talkingHeadFrameBackdrop"] = true,
			},
			["bags"] = {
				["countFontSize"] = 9,
				["countFont"] = "Anime Ace",
				["itemLevelFont"] = "Anime Ace",
				["bagWidth"] = 474,
				["countFontOutline"] = "OUTLINE",
				["bagSize"] = 42,
				["bankWidth"] = 474,
				["itemLevelFontSize"] = 9,
				["itemLevelFontOutline"] = "OUTLINE",
				["scrapIcon"] = true,
				["itemLevelCustomColorEnable"] = true,
				["sortInverted"] = false,
				["bankSize"] = 42,
			},
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 9,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Anime Ace",
				["panelColor"] = {
					["a"] = 0.84548881649971,
					["r"] = 0.117647058823529,
					["g"] = 0.117647058823529,
					["b"] = 0.117647058823529,
				},
				["tabFontSize"] = 8,
				["font"] = "Canted Comic",
				["timeStampFormat"] = "%I:%M %p ",
				["panelHeight"] = 236,
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelColorConverted"] = true,
				["tapFontSize"] = 9,
				["panelWidth"] = 470,
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["secondsIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["minutesIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["daysIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["hoursIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["showText"] = true,
				["statusbarTexture"] = "BuiFlat",
				["position"] = "TOP",
				["staticColor"] = {
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-4,311",
				["PetAB"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,237",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,384",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,2",
				["BuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,108,7",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-5,64",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,418,-186",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-5,63",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,305",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,130",
				["VehicleSeatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,276",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,0",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-200,239",
				["LossControlMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,507",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,247",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,211",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-38",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-92,57",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-1,-36",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,175",
				["ReputationBarMover"] = "TOP,ElvUIParent,TOP,0,-12",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-245",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,472",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,741,34",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,0",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,368,-210",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,200,239",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,108,279",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-108,279",
				["TotemBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-115,-119",
				["ElvNP_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-10,34",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-107,7",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
			},
			["tooltip"] = {
				["cursorAnchorX"] = 25,
				["healthBar"] = {
					["height"] = 12,
					["fontSize"] = 8,
					["font"] = "Anime Ace",
				},
				["fontSize"] = 9,
				["headerFontSize"] = 9,
				["textFontSize"] = 9,
				["font"] = "Anime Ace",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["cursorAnchorY"] = -50,
				["visibility"] = {
					["combat"] = true,
					["combatOverride"] = "ALT",
				},
				["smallTextFontSize"] = 9,
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
			["nameplates"] = {
				["font"] = "Anime Ace",
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["countFont"] = "Anime Ace",
							["font"] = "Anime Ace",
							["filters"] = {
								["priority"] = "Blacklist,blockNoDuration,Personal,Boss,CCDebuffs,RaidDebuffs",
							},
						},
						["name"] = {
							["font"] = "Anime Ace",
							["format"] = "[namecolor][name]",
							["fontSize"] = 10,
						},
						["castbar"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 9,
						},
						["buffs"] = {
							["filters"] = {
								["maxDuration"] = 300,
								["priority"] = "Blacklist,Dispellable,PlayerBuffs,TurtleBuffs",
							},
							["font"] = "Anime Ace",
							["countFont"] = "Anime Ace",
							["yOffset"] = 5,
						},
						["level"] = {
							["enable"] = false,
							["font"] = "Anime Ace",
							["format"] = "[difficultycolor][level]",
						},
						["power"] = {
							["text"] = {
								["font"] = "Anime Ace",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
								["fontOutline"] = "NONE",
							},
						},
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["countFont"] = "Anime Ace",
							["font"] = "Anime Ace",
							["filters"] = {
								["priority"] = "Blacklist,blockNoDuration,Personal,Boss,CCDebuffs,RaidDebuffs",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
								["fontOutline"] = "NONE",
							},
						},
						["castbar"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 9,
						},
						["buffs"] = {
							["filters"] = {
								["maxDuration"] = 300,
								["priority"] = "Blacklist,Dispellable,PlayerBuffs,TurtleBuffs",
							},
							["font"] = "Anime Ace",
							["countFont"] = "Anime Ace",
							["yOffset"] = 5,
						},
						["level"] = {
							["enable"] = false,
							["font"] = "Anime Ace",
							["format"] = "[difficultycolor][level]",
						},
						["power"] = {
							["text"] = {
								["font"] = "Anime Ace",
							},
						},
						["name"] = {
							["font"] = "Anime Ace",
							["format"] = "[namecolor][name]",
							["fontSize"] = 10,
						},
					},
					["FRIENDLY_PLAYER"] = {
						["portrait"] = {
							["classicon"] = false,
						},
						["debuffs"] = {
							["countFont"] = "Anime Ace",
							["font"] = "Anime Ace",
							["filters"] = {
								["priority"] = "Blacklist,blockNoDuration,Personal,Boss,CCDebuffs,RaidDebuffs",
							},
						},
						["name"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 10,
						},
						["power"] = {
							["text"] = {
								["font"] = "Anime Ace",
							},
						},
						["level"] = {
							["enable"] = false,
							["font"] = "Anime Ace",
						},
						["buffs"] = {
							["filters"] = {
								["maxDuration"] = 300,
								["priority"] = "Blacklist,Dispellable,PlayerBuffs,TurtleBuffs",
							},
							["font"] = "Anime Ace",
							["countFont"] = "Anime Ace",
							["yOffset"] = 5,
						},
						["castbar"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 9,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
								["fontOutline"] = "NONE",
							},
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["font"] = "Anime Ace",
							["countFont"] = "Anime Ace",
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
								["fontOutline"] = "NONE",
							},
						},
						["castbar"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 9,
						},
						["power"] = {
							["text"] = {
								["font"] = "Anime Ace",
							},
						},
						["level"] = {
							["enable"] = false,
							["font"] = "Anime Ace",
						},
						["buffs"] = {
							["font"] = "Anime Ace",
							["countFont"] = "Anime Ace",
						},
						["name"] = {
							["font"] = "Anime Ace",
							["format"] = "[namecolor][name]",
							["fontSize"] = 10,
						},
					},
					["PLAYER"] = {
						["name"] = {
							["enable"] = true,
							["fontSize"] = 10,
							["format"] = "[namecolor][name]",
							["font"] = "Anime Ace",
						},
						["debuffs"] = {
							["countFont"] = "Anime Ace",
							["font"] = "Anime Ace",
							["filters"] = {
								["priority"] = "Blacklist,blockNoDuration,Personal,Boss,CCDebuffs,RaidDebuffs",
							},
						},
						["health"] = {
							["text"] = {
								["enable"] = true,
								["fontSize"] = 8,
								["font"] = "Anime Ace",
								["fontOutline"] = "NONE",
							},
						},
						["power"] = {
							["enable"] = false,
							["text"] = {
								["font"] = "Anime Ace",
							},
						},
						["level"] = {
							["font"] = "Anime Ace",
						},
						["buffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Dispellable,PlayerBuffs,TurtleBuffs",
							},
							["font"] = "Anime Ace",
							["countFont"] = "Anime Ace",
							["yOffset"] = 5,
						},
						["visibility"] = {
							["showInCombat"] = false,
						},
						["castbar"] = {
							["iconSize"] = 20,
							["fontSize"] = 9,
							["font"] = "Anime Ace",
							["yOffset"] = -10,
						},
					},
				},
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
			},
			["unitframe"] = {
				["font"] = "Anime Ace",
				["fontSize"] = 8,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["frameGlow"] = {
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
						},
					},
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.0117647058823529,
						["b"] = 0,
					},
					["transparentAurabars"] = true,
					["health"] = {
						["r"] = 0,
						["g"] = 0.513725490196078,
						["b"] = 0.0588235294117647,
					},
					["castReactionColor"] = true,
					["useDeadBackdrop"] = true,
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.00392156862745098,
						["b"] = 0,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["statusbar"] = "Minimalist",
				["thinBorders"] = true,
				["units"] = {
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["enable"] = false,
							["iconSize"] = 32,
							["width"] = 270,
						},
						["enable"] = false,
						["disableTargetGlow"] = false,
						["width"] = 270,
					},
					["targettarget"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = 2,
							["enable"] = false,
							["yOffset"] = 0,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["width"] = 246,
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Anime Ace",
						},
					},
					["focus"] = {
						["castbar"] = {
							["height"] = 25,
							["width"] = 96,
						},
						["width"] = 270,
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["castbar"] = {
							["height"] = 25,
							["width"] = 200,
							["insideInfoPanel"] = false,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
						},
						["orientation"] = "LEFT",
						["height"] = 82,
						["buffs"] = {
							["sizeOverride"] = 26,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["height"] = 22,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["size"] = 12,
							["xOffset"] = 0,
							["position"] = "BOTTOMRIGHT",
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "Anime Ace",
							["size"] = 30,
							["yOffset"] = 25,
						},
						["numGroups"] = 8,
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["visibility"] = "[@raid6,noexists] hide;show",
						["width"] = 92,
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 32,
						},
						["castbar"] = {
							["height"] = 25,
							["width"] = 200,
							["insideInfoPanel"] = false,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["bgUseBarTexture"] = false,
							["text_format"] = "[healthcolor][health:current-max] [health:percent]",
							["position"] = "RIGHT",
						},
						["power"] = {
							["height"] = 22,
							["attachTextTo"] = "InfoPanel",
						},
						["height"] = 82,
						["buffs"] = {
							["enable"] = true,
							["sizeOverride"] = 26,
							["noDuration"] = false,
							["attachTo"] = "FRAME",
						},
						["classbar"] = {
							["height"] = 14,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
						},
						["debuffs"] = {
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Anime Ace",
						},
						["width"] = 231,
						["height"] = 74,
						["buffs"] = {
							["sizeOverride"] = 18,
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 9,
				["font"] = "Anime Ace",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttons"] = 12,
					["backdropSpacing"] = 0,
					["buttonsPerRow"] = 12,
					["buttonsize"] = 34,
					["visibility"] = "[petbattle] hide; show",
				},
				["bar6"] = {
					["buttonsize"] = 18,
					["visibility"] = "[petbattle] hide; show",
				},
				["bar2"] = {
					["enabled"] = true,
					["backdropSpacing"] = 0,
					["visibility"] = "[petbattle] hide; show",
					["buttonsize"] = 34,
				},
				["bar1"] = {
					["backdropSpacing"] = 0,
					["buttonsize"] = 34,
				},
				["bar5"] = {
					["enabled"] = false,
					["buttons"] = 9,
					["buttonspacing"] = 0,
					["buttonsPerRow"] = 1,
					["buttonsize"] = 24,
					["visibility"] = "[petbattle] hide; show",
				},
				["font"] = "Anime Ace",
				["fontOutline"] = "OUTLINE",
				["bar4"] = {
					["buttonspacing"] = 0,
					["backdrop"] = false,
					["visibility"] = "[petbattle] hide; show",
					["buttonsize"] = 24,
				},
				["fontSize"] = 8,
				["barPet"] = {
					["backdrop"] = false,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdropSpacing"] = 4,
					["buttonsize"] = 23,
				},
				["backdropSpacingConverted"] = true,
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["hideStyle"] = true,
					["shadows"] = false,
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 414,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["countFontSize"] = 9,
					["wrapAfter"] = 5,
					["horizontalSpacing"] = 3,
					["durationFontSize"] = 9,
					["seperateOwn"] = 0,
					["maxWraps"] = 3,
					["size"] = 40,
					["growthDirection"] = "RIGHT_DOWN",
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["countFontSize"] = 9,
					["durationFontSize"] = 9,
					["wrapAfter"] = 5,
					["horizontalSpacing"] = 3,
					["seperateOwn"] = 0,
					["size"] = 40,
				},
				["font"] = "Anime Ace",
			},
			["v11NamePlateReset"] = true,
		},
		["Whitmoore - Emerald Dream"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["azerite"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["textYoffset"] = 10,
					["font"] = "AnimeAce Bold",
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 10,
					["width"] = 414,
				},
				["honor"] = {
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["fontSize"] = 10,
				["backdropcolor"] = {
					["b"] = 0.025,
					["g"] = 0.025,
					["r"] = 0.025,
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["minimap"] = {
					["locationFont"] = "Canted Comic",
					["locationText"] = "HIDE",
					["size"] = 150,
				},
				["decimalLength"] = 2,
				["font"] = "Canted Comic",
				["altPowerBar"] = {
					["statusBar"] = "BuiFlat",
					["fontSize"] = 11,
					["font"] = "Expressway",
				},
				["backdropfadecolor"] = {
					["a"] = 1,
					["b"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["r"] = 0.0549019607843137,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["objectiveFrameHeight"] = 750,
				["bottomPanel"] = false,
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-217,140",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,3,180",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-3",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,362",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,85",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,2",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,664",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-56,-397",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,349",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,65",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-56,346",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,245",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,205",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,309",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,268",
				["BelowMinimapContainerMover"] = "TOP,ElvUIParent,TOP,0,-192",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-438,2",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,438,2",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,22",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-210,-176",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-156,-200",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,831,141",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-303",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,217,140",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,116",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-34",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,200",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-181,-128",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
			},
			["chat"] = {
				["fontSize"] = 10,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Canted Comic",
				["panelColor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Canted Comic",
				["panelHeight"] = 150,
				["timeStampFormat"] = "%H:%M ",
				["tapFontSize"] = 10,
				["panelColorConverted"] = true,
			},
			["bags"] = {
				["countFont"] = "Canted Comic",
				["itemLevelFont"] = "Canted Comic",
				["itemLevelFontOutline"] = "OUTLINE",
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["hideTutorial"] = true,
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["countFontSize"] = 10,
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["countFontSize"] = 10,
					["size"] = 30,
				},
				["font"] = "Canted Comic",
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["fontsize"] = 10,
						["font"] = "Canted Comic",
					},
				},
				["general"] = {
					["shadows"] = false,
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["width"] = 414,
						["backdrop"] = true,
						["transparent"] = false,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
			},
			["unitframe"] = {
				["fontSize"] = 11,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["castReactionColor"] = true,
					["transparentAurabars"] = true,
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0.003921568627451,
						["g"] = 0.003921568627451,
						["r"] = 0.14901960784314,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["font"] = "Canted Comic",
				["statusbar"] = "BuiFlat",
				["units"] = {
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["size"] = 12,
							["attachTo"] = "InfoPanel",
							["yOffset"] = 15,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["enable"] = false,
							["position"] = "LEFT",
							["xOffset"] = 2,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Canted Comic",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["health"] = {
							["xOffset"] = 0,
							["yOffset"] = -2,
							["text_format"] = "[health:current-percent]",
							["position"] = "RIGHT",
						},
						["name"] = {
							["xOffset"] = 2,
							["yOffset"] = 16,
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["position"] = "TOPLEFT",
						},
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 18,
							["xOffset"] = 2,
							["yOffset"] = -10,
						},
						["height"] = 40,
						["verticalSpacing"] = 30,
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 18,
							["yOffset"] = -1,
							["xOffset"] = 0,
							["width"] = 60,
						},
						["targetsGroup"] = {
							["anchorPoint"] = "RIGHT",
							["height"] = 16,
							["yOffset"] = -12,
							["xOffset"] = 1,
							["width"] = 70,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconAttached"] = false,
							["iconXOffset"] = 2,
						},
						["height"] = 58,
						["buffs"] = {
							["anchorPoint"] = "CENTER",
							["attachTo"] = "HEALTH",
							["xOffset"] = 16,
							["yOffset"] = 0,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 210,
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Canted Comic",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["size"] = 20,
							["yOffset"] = 4,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["health"] = {
							["yOffset"] = 1,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["position"] = "RIGHT",
							["enable"] = true,
							["size"] = 10,
							["xOffset"] = -2,
							["yOffset"] = 0,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["enable"] = false,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["castbar"] = {
							["height"] = 16,
							["iconSize"] = 26,
							["enable"] = false,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["xOffset"] = 4,
							["detachedWidth"] = 240,
							["height"] = 6,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachFromFrame"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 8,
							["yOffset"] = -25,
							["text_format"] = "",
							["position"] = "RIGHT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["orientation"] = "LEFT",
						["height"] = 34,
						["buffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 10,
							["icon"] = false,
							["width"] = 240,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["rdebuffs"] = {
							["size"] = 20,
							["font"] = "Canted Comic",
							["fontOutline"] = "OUTLINE",
							["yOffset"] = 12,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["health"] = {
							["yOffset"] = 0,
							["position"] = "CENTER",
						},
						["height"] = 40,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 12,
							["yOffset"] = 0,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["xOffset"] = 2,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["height"] = 6,
							["detachedWidth"] = 240,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["attachTextTo"] = "InfoPanel",
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 14,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["fontSize"] = 14,
							["noDuration"] = false,
							["enable"] = true,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["width"] = 110,
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 10,
				["leftChatPanel"] = false,
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["font"] = "Canted Comic",
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["left"] = "Spec Switch (BenikUI)",
						["middle"] = "Bags",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonsize"] = 30,
					["buttons"] = 12,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["backdrop"] = true,
				},
				["bar6"] = {
					["enabled"] = true,
					["mouseover"] = true,
					["backdrop"] = true,
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["heightMult"] = 2,
					["backdrop"] = true,
					["buttons"] = 8,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 4,
					["enabled"] = true,
				},
				["bar1"] = {
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 4,
					["buttons"] = 8,
				},
				["bar5"] = {
					["buttonsize"] = 24,
					["buttonsPerRow"] = 12,
					["backdrop"] = true,
					["buttons"] = 12,
				},
				["font"] = "Canted Comic",
				["fontOutline"] = "OUTLINE",
				["bar4"] = {
					["buttonsize"] = 24,
					["buttonsPerRow"] = 12,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["buttonsize"] = 23,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdropSpacing"] = 4,
					["backdrop"] = false,
				},
				["backdropSpacingConverted"] = true,
			},
			["nameplates"] = {
				["font"] = "Canted Comic",
				["statusbar"] = "BuiFlat",
				["displayStyle"] = "BLIZZARD",
				["stackFont"] = "Canted Comic Bold",
				["healthFont"] = "Canted Comic Bold",
				["fontSize"] = 10,
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["alwaysShow"] = true,
					},
				},
			},
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["hoursIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["minutesIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["daysIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["secondsIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["position"] = "TOP",
				["statusbarTexture"] = "BuiFlat",
				["showText"] = true,
				["staticColor"] = {
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
			},
			["tooltip"] = {
				["textFontSize"] = 10,
				["fontSize"] = 10,
				["healthBar"] = {
					["fontSize"] = 9,
					["font"] = "Canted Comic",
				},
				["smallTextFontSize"] = 10,
				["font"] = "Canted Comic",
				["headerFontSize"] = 10,
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
		},
		["Wharapi - Tichondrius"] = {
			["databars"] = {
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["enable"] = true,
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["honor"] = {
					["height"] = 10,
					["enable"] = false,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 9,
					["width"] = 222,
				},
				["experience"] = {
					["textFormat"] = "CURREM",
					["textYoffset"] = 10,
					["font"] = "Anime Ace",
					["orientation"] = "HORIZONTAL",
					["height"] = 12,
					["textSize"] = 10,
					["width"] = 1819,
				},
				["azerite"] = {
					["orientation"] = "HORIZONTAL",
					["enable"] = false,
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["enable"] = false,
					["growthDirection"] = "HORIZONTAL",
					["size"] = 50,
					["spacing"] = 8,
				},
				["afk"] = false,
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["locationText"] = "HIDE",
					["benikuiStyle"] = false,
					["icons"] = {
						["mail"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["size"] = 234,
				},
				["decimalLength"] = 2,
				["talkingHeadFrameBackdrop"] = true,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80527076125145,
					["b"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["r"] = 0.0549019607843137,
				},
				["objectiveFrameHeight"] = 400,
				["stickyFrames"] = false,
				["talkingHeadFrameScale"] = 1,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["font"] = "Sriracha",
				["altPowerBar"] = {
					["statusBar"] = "ElvUI Blank",
					["font"] = "Sriracha",
				},
				["topPanel"] = false,
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["bonusObjectivePosition"] = "AUTO",
			},
			["bags"] = {
				["countFontSize"] = 12,
				["countFont"] = "Sriracha",
				["itemLevelFont"] = "Sriracha",
				["bagWidth"] = 474,
				["countFontOutline"] = "OUTLINE",
				["bagSize"] = 42,
				["bankWidth"] = 474,
				["itemLevelFontSize"] = 12,
				["itemLevelFontOutline"] = "OUTLINE",
				["scrapIcon"] = true,
				["itemLevelCustomColorEnable"] = true,
				["sortInverted"] = false,
				["bankSize"] = 42,
			},
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 12,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Sriracha",
				["panelColor"] = {
					["a"] = 0.84548881649971,
					["r"] = 0.117647058823529,
					["g"] = 0.117647058823529,
					["b"] = 0.117647058823529,
				},
				["timeStampFormat"] = "%I:%M %p ",
				["font"] = "Sriracha",
				["panelHeight"] = 236,
				["fontOutline"] = "OUTLINE",
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelColorConverted"] = true,
				["tapFontSize"] = 12,
				["panelWidth"] = 470,
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["secondsIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["minutesIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["daysIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["hoursIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["showText"] = true,
				["statusbarTexture"] = "BuiFlat",
				["position"] = "TOP",
				["staticColor"] = {
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,364",
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-390",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,203,346",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,2",
				["BuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-221,6",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-1,293",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-1,293",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
				["ElvUF_TargetAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-273,220",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,342",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-133,303",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,4",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-271,242",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,342",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,0",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,131,303",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-419",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvUF_PlayerAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,273,218",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-216,103",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,215,103",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-248,-14",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,215,68",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,-4,174",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-3,-36",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-245",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-216,68",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-216,33",
				["ElvNP_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,119,292",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,239",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,403",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,-9",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,251,-81",
				["ReputationBarMover"] = "TOP,ElvUIParent,TOP,1,-11",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,215,33",
				["ElvUF_FocusAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,3,425",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,852,301",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,241",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,481,190",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,221,6",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,5",
			},
			["tooltip"] = {
				["cursorAnchorX"] = 25,
				["healthBar"] = {
					["height"] = 12,
					["fontSize"] = 8,
					["font"] = "Sriracha",
				},
				["fontSize"] = 12,
				["headerFontSize"] = 14,
				["textFontSize"] = 10,
				["font"] = "Sriracha",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["cursorAnchorY"] = -50,
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["smallTextFontSize"] = 10,
			},
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["wrapAfter"] = 15,
					["horizontalSpacing"] = 2,
					["size"] = 26,
					["growthDirection"] = "LEFT_UP",
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["countFontSize"] = 12,
					["wrapAfter"] = 15,
					["durationFontSize"] = 12,
					["horizontalSpacing"] = 2,
					["maxWraps"] = 1,
					["size"] = 26,
					["growthDirection"] = "RIGHT_UP",
				},
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["nameplates"] = {
				["nonTargetTransparency"] = 0.3,
				["clickableHeight"] = 32,
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["name"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 8,
						},
						["castbar"] = {
							["textPosition"] = "ONBAR",
							["font"] = "Sriracha",
						},
						["level"] = {
							["xOffset"] = 5,
						},
						["health"] = {
							["text"] = {
								["font"] = "Anime Ace",
								["fontSize"] = 8,
							},
						},
						["buffs"] = {
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["xOffset"] = 1,
							["fontSize"] = 10,
							["enable"] = false,
							["font"] = "Sriracha",
						},
						["power"] = {
							["displayAltPower"] = false,
						},
						["title"] = {
							["format"] = "[guild]",
						},
						["level"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["fontOutline"] = "NONE",
							["spacing"] = 0,
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["width"] = 120,
							["yOffset"] = 10,
						},
					},
					["FRIENDLY_PLAYER"] = {
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["title"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["width"] = 120,
							["yOffset"] = 10,
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
						},
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["name"] = {
							["fontSize"] = 10,
							["enable"] = false,
							["format"] = "[name]",
							["xOffset"] = 1,
							["font"] = "Sriracha",
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["fontOutline"] = "NONE",
							["spacing"] = 0,
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["size"] = 20,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["format"] = "",
								["font"] = "Anime Ace",
							},
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["name"] = {
							["fontSize"] = 8,
							["format"] = "[name]",
							["font"] = "Anime Ace",
						},
						["buffs"] = {
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["yOffset"] = 0,
						},
					},
					["PLAYER"] = {
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["castbar"] = {
							["iconSize"] = 20,
							["yOffset"] = 0,
						},
						["name"] = {
							["xOffset"] = 1,
							["fontSize"] = 10,
							["font"] = "Sriracha",
							["yOffset"] = -10,
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["enable"] = true,
								["fontSize"] = 10,
								["format"] = "[name]",
								["font"] = "Sriracha",
							},
						},
						["power"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["enable"] = false,
							["font"] = "Sriracha",
							["spacing"] = 0,
							["size"] = 20,
							["fontOutline"] = "NONE",
							["countFont"] = "Sriracha",
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs",
							},
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["useStaticPosition"] = true,
					},
				},
				["statusbar"] = "Minimalist",
				["motionType"] = "OVERLAP",
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["loadDistance"] = 43,
				["font"] = "Sriracha",
				["clampToScreen"] = true,
			},
			["unitframe"] = {
				["statusbar"] = "Minimalist",
				["fontSize"] = 12,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["frameGlow"] = {
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
						},
					},
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.0117647058823529,
						["b"] = 0,
					},
					["transparentAurabars"] = true,
					["health"] = {
						["r"] = 0,
						["g"] = 0.513725490196078,
						["b"] = 0.0588235294117647,
					},
					["castReactionColor"] = true,
					["useDeadBackdrop"] = true,
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.00392156862745098,
						["b"] = 0,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["font"] = "Sriracha",
				["thinBorders"] = true,
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["enable"] = false,
							["iconSize"] = 32,
							["width"] = 270,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableTargetGlow"] = false,
						["width"] = 270,
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = 2,
							["enable"] = false,
							["yOffset"] = 0,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["xOffset"] = 18,
							["sizeOverride"] = 30,
							["anchorPoint"] = "TOP",
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["fontOutline"] = "OUTLINE",
							["xOffset"] = 69,
							["duration"] = {
								["position"] = "RIGHT",
							},
							["enable"] = true,
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_UP",
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["position"] = "CENTER",
							["attachTo"] = "Power",
							["damager"] = false,
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 170,
						["health"] = {
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = false,
						},
						["groupBy"] = "MTMA",
						["height"] = 30,
						["verticalSpacing"] = 40,
						["orientation"] = "MIDDLE",
						["buffs"] = {
							["numrows"] = 2,
							["sizeOverride"] = 24,
							["xOffset"] = 72,
							["yOffset"] = -1,
							["anchorPoint"] = "BOTTOM",
							["enable"] = true,
							["priority"] = "Blacklist,Personal",
							["attachTo"] = "POWER",
							["perrow"] = 7,
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
					},
					["focus"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
							["attachTo"] = "BUFFS",
							["perrow"] = 8,
						},
						["disableTargetGlow"] = true,
						["castbar"] = {
							["iconSize"] = 42,
							["width"] = 200,
							["height"] = 25,
							["insideInfoPanel"] = false,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 20,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["orientation"] = "LEFT",
						["height"] = 82,
						["buffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 26,
							["maxDuration"] = 0,
							["perrow"] = 8,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current]",
							["height"] = 22,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["enable"] = true,
							["height"] = 30,
						},
					},
					["target"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["height"] = 22,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["height"] = 82,
						["orientation"] = "LEFT",
						["buffs"] = {
							["enable"] = false,
							["sizeOverride"] = 26,
						},
						["castbar"] = {
							["height"] = 25,
							["width"] = 200,
							["insideInfoPanel"] = false,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "blockNoDuration,Blacklist,Personal,PlayerBuffs,Boss,RaidDebuffs",
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["size"] = 12,
							["xOffset"] = 0,
							["position"] = "BOTTOMRIGHT",
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "Sriracha",
							["size"] = 30,
							["yOffset"] = 25,
						},
						["numGroups"] = 8,
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["visibility"] = "[@raid6,noexists] hide;show",
						["width"] = 92,
					},
					["player"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["power"] = {
							["height"] = 22,
							["attachTextTo"] = "InfoPanel",
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["height"] = 25,
							["width"] = 200,
							["insideInfoPanel"] = false,
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["bgUseBarTexture"] = false,
							["frequentUpdates"] = true,
							["yOffset"] = -4,
						},
						["name"] = {
							["text_format"] = "[name] the Noble",
						},
						["height"] = 82,
						["buffs"] = {
							["noDuration"] = false,
							["sizeOverride"] = 26,
						},
						["classbar"] = {
							["height"] = 14,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "Blacklist,blockNoDuration,Boss,RaidDebuffs,PlayerBuffs,nonPersonal,CastByPlayers",
							["maxDuration"] = 0,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["width"] = 246,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["font"] = "Sriracha",
				["minimapBottom"] = true,
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "Clique",
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttons"] = 12,
					["backdropSpacing"] = 0,
					["buttonsPerRow"] = 12,
					["visibility"] = "[petbattle] hide; show",
					["buttonsize"] = 34,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsize"] = 34,
				},
				["bar4"] = {
					["heightMult"] = 3,
					["buttonsize"] = 34,
					["visibility"] = "[petbattle] hide; show",
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 0,
					["backdrop"] = false,
				},
				["bar2"] = {
					["enabled"] = true,
					["backdropSpacing"] = 0,
					["buttonsize"] = 34,
					["visibility"] = "[petbattle] hide; show",
				},
				["bar1"] = {
					["backdropSpacing"] = 0,
					["buttonsize"] = 34,
				},
				["fontSize"] = 12,
				["bar5"] = {
					["buttonsize"] = 34,
					["buttonsPerRow"] = 12,
					["visibility"] = "[petbattle] hide; show",
					["buttons"] = 12,
				},
				["hotkeyTextPosition"] = "TOPLEFT",
				["useRangeColorText"] = true,
				["font"] = "Sriracha",
				["hotkeyTextXOffset"] = 2,
				["fontOutline"] = "OUTLINE",
				["hotkeyTextYOffset"] = -2,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdrop"] = false,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 23,
					["backdropSpacing"] = 4,
				},
				["backdropSpacingConverted"] = true,
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["hideStyle"] = true,
					["shadows"] = false,
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 414,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
			},
			["abm"] = {
				["targetSpace"] = 2,
				["player"] = true,
				["playerSpace"] = 2,
				["focus"] = true,
				["target"] = true,
				["playerw"] = 200,
				["targetw"] = 200,
				["focusw"] = 200,
			},
			["v11NamePlateReset"] = true,
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
		},
		["Andallsa - Tichondrius"] = {
			["currentTutorial"] = 1,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,433",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1276",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,196",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,428",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["v11NamePlateReset"] = true,
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Lonalber - Emerald Dream"] = {
			["databars"] = {
				["reputation"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["honor"] = {
					["enable"] = false,
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["font"] = "AnimeAce Bold",
					["textYoffset"] = 10,
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 10,
					["width"] = 414,
				},
				["azerite"] = {
					["enable"] = false,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["backdropcolor"] = {
					["r"] = 0.025,
					["g"] = 0.025,
					["b"] = 0.025,
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["minimap"] = {
					["locationFont"] = "Canted Comic",
					["locationText"] = "HIDE",
					["size"] = 215,
				},
				["decimalLength"] = 2,
				["font"] = "Canted Comic",
				["altPowerBar"] = {
					["statusBar"] = "BuiFlat",
					["fontSize"] = 11,
					["font"] = "Expressway",
				},
				["backdropfadecolor"] = {
					["a"] = 1,
					["r"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["b"] = 0.0549019607843137,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
				["objectiveFrameHeight"] = 750,
				["bottomPanel"] = false,
			},
			["bags"] = {
				["countFont"] = "Canted Comic",
				["itemLevelFont"] = "Canted Comic",
				["itemLevelFontOutline"] = "OUTLINE",
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["hideTutorial"] = true,
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["countFontSize"] = 10,
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["countFontSize"] = 10,
					["size"] = 30,
				},
				["font"] = "Canted Comic",
			},
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["secondsIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["minutesIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["daysIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["position"] = "TOP",
				["statusbarTexture"] = "BuiFlat",
				["showText"] = true,
				["staticColor"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-217,140",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,3,180",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,104,370",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,85",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,200",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,2",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,664",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,371",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,21",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,116",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,217,140",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,205",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-303",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,324",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,278",
				["BelowMinimapContainerMover"] = "TOP,ElvUIParent,TOP,0,-192",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-438,2",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,227",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,438,2",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-56,-243",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-226,-4",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,831,141",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-56,346",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,31",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-56,-397",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-34",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,400,-4",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
			},
			["tooltip"] = {
				["textFontSize"] = 10,
				["fontSize"] = 10,
				["healthBar"] = {
					["font"] = "Canted Comic",
					["fontSize"] = 9,
				},
				["smallTextFontSize"] = 10,
				["font"] = "Canted Comic",
				["headerFontSize"] = 10,
			},
			["chat"] = {
				["fontSize"] = 10,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Canted Comic",
				["panelColor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Canted Comic",
				["panelHeight"] = 150,
				["timeStampFormat"] = "%H:%M ",
				["tapFontSize"] = 10,
				["panelColorConverted"] = true,
			},
			["unitframe"] = {
				["fontSize"] = 11,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["transparentAurabars"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["r"] = 0.219607843137255,
						["g"] = 0.874509803921569,
						["b"] = 0.105882352941176,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.14901960784314,
						["g"] = 0.003921568627451,
						["b"] = 0.003921568627451,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["statusbar"] = "BuiFlat",
				["font"] = "Canted Comic",
				["units"] = {
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["width"] = 110,
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["size"] = 12,
							["attachTo"] = "InfoPanel",
							["yOffset"] = 15,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["enable"] = false,
							["position"] = "LEFT",
							["xOffset"] = 2,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Canted Comic",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 2,
							["yOffset"] = 16,
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["position"] = "TOPLEFT",
						},
						["health"] = {
							["xOffset"] = 0,
							["yOffset"] = -2,
							["text_format"] = "[health:current-percent]",
							["position"] = "RIGHT",
						},
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["height"] = 40,
						["verticalSpacing"] = 30,
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 18,
							["width"] = 60,
							["xOffset"] = 0,
							["yOffset"] = -1,
						},
						["targetsGroup"] = {
							["anchorPoint"] = "RIGHT",
							["height"] = 16,
							["width"] = 70,
							["xOffset"] = 1,
							["yOffset"] = -12,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Canted Comic",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["size"] = 20,
							["yOffset"] = 4,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["health"] = {
							["yOffset"] = 1,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 10,
							["enable"] = true,
							["yOffset"] = 0,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["enable"] = false,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 16,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 14,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["height"] = 6,
							["xOffset"] = 4,
							["detachedWidth"] = 240,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachFromFrame"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 8,
							["yOffset"] = -25,
							["text_format"] = "",
							["position"] = "RIGHT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["height"] = 34,
						["orientation"] = "LEFT",
						["buffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["castbar"] = {
							["iconXOffset"] = 10,
							["iconPosition"] = "RIGHT",
							["icon"] = false,
							["width"] = 240,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["rdebuffs"] = {
							["size"] = 20,
							["font"] = "Canted Comic",
							["fontOutline"] = "OUTLINE",
							["yOffset"] = 12,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["health"] = {
							["yOffset"] = 0,
							["position"] = "CENTER",
						},
						["height"] = 40,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 12,
							["yOffset"] = 0,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 14,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["detachedWidth"] = 240,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["xOffset"] = 2,
							["height"] = 6,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["attachTextTo"] = "InfoPanel",
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["sizeOverride"] = 26,
							["enable"] = true,
							["noDuration"] = false,
							["fontSize"] = 14,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 2,
							["iconAttached"] = false,
						},
						["height"] = 58,
						["buffs"] = {
							["xOffset"] = 16,
							["anchorPoint"] = "CENTER",
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 210,
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 10,
				["font"] = "Canted Comic",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttonsize"] = 42,
					["buttons"] = 8,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["backdrop"] = true,
				},
				["bar6"] = {
					["enabled"] = true,
					["backdrop"] = true,
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttons"] = 8,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 4,
					["buttonsize"] = 42,
				},
				["bar1"] = {
					["buttons"] = 8,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 4,
					["buttonsize"] = 42,
				},
				["bar5"] = {
					["buttonsize"] = 24,
					["buttonsPerRow"] = 12,
					["backdrop"] = true,
					["buttons"] = 12,
				},
				["font"] = "Canted Comic",
				["fontOutline"] = "OUTLINE",
				["bar4"] = {
					["buttonsize"] = 24,
					["buttonsPerRow"] = 12,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["buttonsize"] = 23,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["backdropSpacing"] = 4,
				},
				["backdropSpacingConverted"] = true,
			},
			["nameplates"] = {
				["font"] = "Canted Comic",
				["statusbar"] = "BuiFlat",
				["displayStyle"] = "BLIZZARD",
				["stackFont"] = "Canted Comic Bold",
				["healthFont"] = "Canted Comic Bold",
				["fontSize"] = 10,
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["alwaysShow"] = true,
					},
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["shadows"] = false,
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["width"] = 414,
						["backdrop"] = true,
						["transparent"] = false,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
		},
		["Magnr - Tichondrius"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["honor"] = {
					["enable"] = false,
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 9,
					["width"] = 222,
				},
				["experience"] = {
					["textFormat"] = "CURREM",
					["width"] = 1819,
					["font"] = "Anime Ace",
					["orientation"] = "HORIZONTAL",
					["height"] = 12,
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["azerite"] = {
					["textFormat"] = "CURMAX",
					["height"] = 20,
					["orientation"] = "HORIZONTAL",
					["font"] = "Sriracha",
					["textSize"] = 14,
					["width"] = 1918,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["enable"] = false,
					["spacing"] = 8,
					["growthDirection"] = "HORIZONTAL",
					["size"] = 50,
				},
				["afk"] = false,
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["talkingHeadFrameBackdrop"] = true,
				["topPanel"] = false,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["locationText"] = "HIDE",
					["benikuiStyle"] = false,
					["icons"] = {
						["mail"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["size"] = 250,
				},
				["decimalLength"] = 2,
				["font"] = "Sriracha",
				["altPowerBar"] = {
					["statusBar"] = "ElvUI Blank",
					["font"] = "Sriracha",
				},
				["backdropfadecolor"] = {
					["a"] = 0.80527076125145,
					["r"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["b"] = 0.0549019607843137,
				},
				["objectiveFrameHeight"] = 400,
				["bottomPanel"] = false,
				["talkingHeadFrameScale"] = 1,
				["stickyFrames"] = false,
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 2,
					["growthDirection"] = "LEFT_UP",
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["maxWraps"] = 2,
					["verticalSpacing"] = 12,
					["wrapAfter"] = 13,
					["size"] = 28,
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 2,
					["growthDirection"] = "RIGHT_UP",
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["maxWraps"] = 2,
					["verticalSpacing"] = 12,
					["wrapAfter"] = 13,
					["size"] = 28,
				},
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["secondsIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["minutesIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["daysIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["hoursIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["showText"] = true,
				["statusbarTexture"] = "BuiFlat",
				["position"] = "TOP",
				["staticColor"] = {
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["TopCenterContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-383,-63",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-310,300",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,904",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,2",
				["BuffsMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,253,2",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
				["MirrorTimer3Mover"] = "TOP,ElvUIParent,TOP,-10,-132",
				["BossButton"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-500,500",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,500,500",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,60",
				["ElvUF_TargetAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,330",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-228,437",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,342",
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,137",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,99",
				["ElvUF_PlayerAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,-310,330",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,63",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,256",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,290",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-419",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,-2,-113",
				["ElvUF_FocusAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-298,521",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,310,83",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-248,-14",
				["ElvNP_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,304,433",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-256,7",
				["AzeriteBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-8,-60",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,257,7",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,255",
				["ReputationBarMover"] = "TOP,ElvUIParent,TOP,1,-23",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,403",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-310,290",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,-9",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,251,-81",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-310,83",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-14",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,300",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,853,783",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,83",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-271,242",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,484,873",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-254,2",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
			},
			["chat"] = {
				["fontSize"] = 12,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Sriracha",
				["panelColor"] = {
					["a"] = 0.447339951992035,
					["r"] = 0.117647058823529,
					["g"] = 0.117647058823529,
					["b"] = 0.117647058823529,
				},
				["timeStampFormat"] = "%I:%M %p ",
				["panelHeightRight"] = 236,
				["font"] = "Sriracha",
				["fontOutline"] = "OUTLINE",
				["panelHeight"] = 250,
				["panelColorConverted"] = true,
				["editBoxPosition"] = "ABOVE_CHAT",
				["tapFontSize"] = 12,
				["panelWidth"] = 250,
			},
			["tooltip"] = {
				["fontSize"] = 12,
				["healthBar"] = {
					["height"] = 12,
					["font"] = "Sriracha",
					["fontSize"] = 8,
				},
				["cursorAnchorY"] = -50,
				["font"] = "Sriracha",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["cursorAnchorX"] = 25,
			},
			["bags"] = {
				["junkIcon"] = true,
				["countFont"] = "Sriracha",
				["itemLevelFont"] = "Sriracha",
				["split"] = {
					["bagSpacing"] = 10,
				},
				["bankSize"] = 42,
				["countFontOutline"] = "OUTLINE",
				["bagSize"] = 42,
				["countFontSize"] = 12,
				["bankWidth"] = 474,
				["itemLevelFontOutline"] = "OUTLINE",
				["scrapIcon"] = true,
				["itemLevelCustomColorEnable"] = true,
				["itemLevelFontSize"] = 12,
				["bagWidth"] = 474,
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["hideStyle"] = true,
					["shadows"] = false,
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 414,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["statusbar"] = "Minimalist",
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["frameGlow"] = {
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
						},
					},
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.0117647058823529,
						["b"] = 0,
					},
					["transparentAurabars"] = true,
					["useDeadBackdrop"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["r"] = 0,
						["g"] = 0.513725490196078,
						["b"] = 0.0588235294117647,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.00392156862745098,
						["b"] = 0,
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Sriracha",
				["smoothbars"] = true,
				["thinBorders"] = true,
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["iconSize"] = 32,
							["enable"] = false,
							["width"] = 248,
						},
						["enable"] = false,
						["disableTargetGlow"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["width"] = 270,
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["width"] = 270,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["enable"] = false,
							["xOffset"] = 2,
							["yOffset"] = 0,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
							["camDistanceScale"] = 4,
							["width"] = 150,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["enable"] = false,
							["threatStyle"] = "GLOW",
							["height"] = 22,
						},
						["castbar"] = {
							["iconXOffset"] = -2,
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconSize"] = 30,
							["height"] = 30,
							["iconAttached"] = false,
							["width"] = 180,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["xOffset"] = 0,
							["text_format"] = "[healthcolor][health:current]",
							["yOffset"] = -6,
						},
						["height"] = 50,
						["orientation"] = "LEFT",
						["buffs"] = {
							["enable"] = false,
							["sizeOverride"] = 26,
						},
						["name"] = {
							["position"] = "TOP",
							["text_format"] = "[namecolor][name]",
							["yOffset"] = 8,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "",
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["width"] = 246,
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
					},
					["focus"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 32,
							["enable"] = false,
							["perrow"] = 8,
						},
						["disableTargetGlow"] = true,
						["castbar"] = {
							["iconSize"] = 42,
							["insideInfoPanel"] = false,
							["height"] = 25,
							["width"] = 200,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 20,
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current]",
							["height"] = 22,
						},
						["height"] = 82,
						["buffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 26,
							["maxDuration"] = 0,
							["perrow"] = 8,
						},
						["orientation"] = "LEFT",
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["enable"] = true,
							["height"] = 30,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "BOTTOMRIGHT",
							["xOffset"] = 0,
							["size"] = 12,
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "Sriracha",
							["yOffset"] = 25,
							["size"] = 30,
						},
						["numGroups"] = 8,
						["growthDirection"] = "DOWN_RIGHT",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["width"] = 92,
						["visibility"] = "[@raid6,noexists] hide;show",
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["enable"] = true,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconSize"] = 30,
							["spark"] = false,
							["insideInfoPanel"] = false,
							["height"] = 30,
							["iconAttached"] = false,
							["iconXOffset"] = 2,
							["width"] = 180,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["fader"] = {
							["health"] = false,
							["power"] = false,
							["enable"] = true,
							["vehicle"] = false,
							["playertarget"] = false,
							["casting"] = false,
						},
						["name"] = {
							["position"] = "TOP",
							["text_format"] = "[name] the Noble",
							["yOffset"] = 8,
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["text_format"] = "[healthcolor][health:current]",
							["yOffset"] = -6,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["xOffset"] = 0,
							["position"] = "BOTTOM",
							["detachedWidth"] = 330,
							["detachFromFrame"] = true,
							["height"] = 15,
							["yOffset"] = -1,
						},
						["height"] = 50,
						["buffs"] = {
							["noDuration"] = false,
							["sizeOverride"] = 26,
							["countFont"] = "Sriracha",
							["attachTo"] = "POWER",
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["spacing"] = 0,
							["detachedWidth"] = 330,
							["height"] = 17,
							["additionalPowerText"] = false,
						},
						["aurabar"] = {
							["maxDuration"] = 2000,
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "",
							["attachTo"] = "FRAME",
						},
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["anchorPoint"] = "TOP",
							["sizeOverride"] = 30,
							["xOffset"] = 18,
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
							["duration"] = {
								["position"] = "RIGHT",
							},
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["xOffset"] = 69,
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_UP",
						["groupBy"] = "MTMA",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["position"] = "CENTER",
							["attachTo"] = "Power",
							["damager"] = false,
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 170,
						["health"] = {
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = false,
						},
						["buffs"] = {
							["numrows"] = 2,
							["sizeOverride"] = 24,
							["xOffset"] = 72,
							["yOffset"] = -1,
							["anchorPoint"] = "BOTTOM",
							["perrow"] = 7,
							["priority"] = "Blacklist,Personal",
							["attachTo"] = "POWER",
							["enable"] = true,
						},
						["height"] = 30,
						["verticalSpacing"] = 40,
						["orientation"] = "MIDDLE",
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["font"] = "Sriracha",
				["minimapBottom"] = true,
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "Clique",
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttonsize"] = 60,
					["flyoutDirection"] = "DOWN",
					["buttons"] = 10,
					["showGrid"] = false,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonspacing"] = 5,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 40,
					["showGrid"] = false,
				},
				["movementModifier"] = "ALT",
				["useRangeColorText"] = true,
				["hotkeyTextPosition"] = "TOPLEFT",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "THICKOUTLINE",
				["notUsableColor"] = {
					["r"] = 0.215686274509804,
					["g"] = 0.215686274509804,
					["b"] = 0.215686274509804,
				},
				["chargeCooldown"] = true,
				["noPowerColor"] = {
					["r"] = 0.156862745098039,
					["g"] = 0.156862745098039,
					["b"] = 0.156862745098039,
				},
				["bar2"] = {
					["enabled"] = true,
					["backdropSpacing"] = 0,
					["buttonspacing"] = 10,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 60,
					["visibility"] = "[petbattle] hide; show",
				},
				["bar1"] = {
					["flyoutDirection"] = "UP",
					["buttonsize"] = 60,
					["buttonspacing"] = 10,
					["buttonsPerRow"] = 4,
					["backdropSpacing"] = 0,
					["point"] = "TOPLEFT",
				},
				["backdropSpacingConverted"] = true,
				["bar5"] = {
					["showGrid"] = false,
					["buttonsize"] = 40,
					["buttons"] = 12,
				},
				["fontSize"] = 16,
				["countTextYOffset"] = 0,
				["font"] = "Sriracha",
				["bar7"] = {
					["backdrop"] = false,
				},
				["noRangeColor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0.129411764705882,
				},
				["hotkeyTextYOffset"] = -6,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdropSpacing"] = 4,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["buttonsize"] = 23,
				},
				["bar4"] = {
					["flyoutDirection"] = "DOWN",
					["buttons"] = 10,
					["buttonspacing"] = 5,
					["backdrop"] = false,
					["heightMult"] = 3,
					["showGrid"] = false,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonsize"] = 60,
				},
			},
			["nameplates"] = {
				["nonTargetTransparency"] = 0.3,
				["clickableHeight"] = 32,
				["units"] = {
					["ENEMY_NPC"] = {
						["minions"] = false,
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["name"] = {
							["fontSize"] = 8,
							["font"] = "Anime Ace",
						},
						["castbar"] = {
							["textPosition"] = "ONBAR",
							["font"] = "Sriracha",
						},
						["minor"] = true,
						["level"] = {
							["xOffset"] = 5,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
							},
						},
						["buffs"] = {
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["yOffset"] = 10,
							["width"] = 120,
						},
						["enable"] = false,
						["name"] = {
							["enable"] = false,
							["fontSize"] = 10,
							["font"] = "Sriracha",
							["xOffset"] = 1,
						},
						["title"] = {
							["format"] = "[guild]",
						},
						["power"] = {
							["displayAltPower"] = false,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["countFont"] = "Sriracha",
							["spacing"] = 0,
							["enable"] = false,
							["fontOutline"] = "NONE",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["level"] = {
							["enable"] = false,
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Sriracha",
								["format"] = "[namecolor][name:long]",
							},
						},
					},
					["FRIENDLY_PLAYER"] = {
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Sriracha",
								["format"] = "[namecolor][name:long]",
							},
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["name"] = {
							["fontSize"] = 10,
							["enable"] = false,
							["format"] = "[name]",
							["font"] = "Sriracha",
							["xOffset"] = 1,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["yOffset"] = 10,
							["width"] = 120,
						},
						["enable"] = false,
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["countFont"] = "Sriracha",
							["spacing"] = 0,
							["enable"] = false,
							["fontOutline"] = "NONE",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["title"] = {
							["enable"] = true,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
								["format"] = "",
							},
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["name"] = {
							["fontSize"] = 8,
							["font"] = "Anime Ace",
							["format"] = "[name]",
						},
						["buffs"] = {
							["yOffset"] = 0,
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
						},
					},
					["PLAYER"] = {
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["enable"] = true,
								["format"] = "",
								["font"] = "Sriracha",
								["parent"] = "Health",
							},
							["width"] = 120,
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["name"] = {
							["fontSize"] = 10,
							["enable"] = true,
							["xOffset"] = 1,
							["font"] = "Sriracha",
							["yOffset"] = -10,
						},
						["castbar"] = {
							["iconSize"] = 20,
							["yOffset"] = 0,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["enable"] = false,
							["font"] = "Sriracha",
							["spacing"] = 0,
							["size"] = 20,
							["fontOutline"] = "NONE",
							["countFont"] = "Sriracha",
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs",
							},
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["power"] = {
							["enable"] = false,
						},
					},
				},
				["font"] = "Sriracha",
				["motionType"] = "OVERLAP",
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["loadDistance"] = 46,
				["colors"] = {
					["selection"] = {
						nil, -- [1]
						{
							["g"] = 0.901960784313726,
							["b"] = 0.615686274509804,
						}, -- [2]
					},
				},
				["clampToScreen"] = true,
				["statusbar"] = "Minimalist",
			},
			["abm"] = {
				["targetw"] = 200,
				["targetSpace"] = 3,
				["playerSpace"] = 3,
				["focus"] = true,
				["target"] = true,
				["playerw"] = 200,
				["player"] = true,
				["focusw"] = 200,
			},
			["cooldown"] = {
				["expiringColor"] = {
					["g"] = 0.333333333333333,
					["b"] = 0.431372549019608,
				},
				["fonts"] = {
					["enable"] = true,
					["font"] = "Sriracha",
					["fontSize"] = 14,
				},
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
		},
		["Byanir - Emerald Dream"] = {
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1018",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
		},
		["Tirdailough - Tichondrius"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["honor"] = {
					["enable"] = false,
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 9,
					["width"] = 222,
				},
				["experience"] = {
					["textFormat"] = "CURREM",
					["width"] = 1819,
					["font"] = "Anime Ace",
					["orientation"] = "HORIZONTAL",
					["height"] = 12,
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["azerite"] = {
					["enable"] = false,
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["enable"] = false,
					["spacing"] = 8,
					["growthDirection"] = "HORIZONTAL",
					["size"] = 50,
				},
				["stickyFrames"] = false,
				["font"] = "Sriracha",
				["talkingHeadFrameScale"] = 1,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["locationText"] = "HIDE",
					["benikuiStyle"] = false,
					["icons"] = {
						["mail"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["size"] = 250,
				},
				["decimalLength"] = 2,
				["talkingHeadFrameBackdrop"] = true,
				["altPowerBar"] = {
					["statusBar"] = "ElvUI Blank",
					["font"] = "Sriracha",
				},
				["backdropfadecolor"] = {
					["a"] = 0.80527076125145,
					["r"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["b"] = 0.0549019607843137,
				},
				["objectiveFrameHeight"] = 400,
				["bottomPanel"] = false,
				["topPanel"] = false,
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
			},
			["bags"] = {
				["junkIcon"] = true,
				["countFont"] = "Sriracha",
				["itemLevelFont"] = "Sriracha",
				["split"] = {
					["bagSpacing"] = 10,
				},
				["bagSize"] = 42,
				["countFontOutline"] = "OUTLINE",
				["bankSize"] = 42,
				["countFontSize"] = 12,
				["itemLevelFontSize"] = 12,
				["itemLevelFontOutline"] = "OUTLINE",
				["scrapIcon"] = true,
				["itemLevelCustomColorEnable"] = true,
				["bankWidth"] = 474,
				["bagWidth"] = 474,
			},
			["hideTutorial"] = true,
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 2,
					["growthDirection"] = "RIGHT_DOWN",
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["maxWraps"] = 2,
					["verticalSpacing"] = 12,
					["wrapAfter"] = 13,
					["size"] = 28,
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 2,
					["wrapAfter"] = 13,
					["durationFontSize"] = 12,
					["countFontSize"] = 12,
					["maxWraps"] = 2,
					["verticalSpacing"] = 12,
					["size"] = 28,
				},
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["secondsIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["minutesIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["daysIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["hoursIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["showText"] = true,
				["statusbarTexture"] = "BuiFlat",
				["position"] = "TOP",
				["staticColor"] = {
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["TopCenterContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-383,-63",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-241,337",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,1010",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,2",
				["BuffsMover"] = "TOP,ElvUIParent,TOP,-197,-103",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
				["BossButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-542,-429",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "TOPLEFT,ElvUIParent,TOPLEFT,543,-430",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,18",
				["ElvUF_TargetAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-391,85",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,342",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,147,239",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,14,4",
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,364",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,1,39",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,271,337",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,20",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,316,2",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["ElvUF_PlayerAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,420,85",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-419",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,312,106",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-188,106",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,218,106",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-248,-14",
				["ElvNP_PlayerMover"] = "TOP,ElvUIParent,TOP,-240,-505",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,-2,-113",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-245",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-8,-60",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-282,106",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,239",
				["ReputationBarMover"] = "TOP,ElvUIParent,TOP,1,-11",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,403",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-287,2",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,-9",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,251,-81",
				["ElvUF_FocusAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,217,321",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,255",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,853,783",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-271,242",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,484,979",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,196,-103",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,3",
			},
			["chat"] = {
				["fontSize"] = 12,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Sriracha",
				["panelColor"] = {
					["a"] = 0.447339951992035,
					["r"] = 0.117647058823529,
					["g"] = 0.117647058823529,
					["b"] = 0.117647058823529,
				},
				["timeStampFormat"] = "%I:%M %p ",
				["panelHeightRight"] = 236,
				["font"] = "Sriracha",
				["fontOutline"] = "OUTLINE",
				["panelHeight"] = 236,
				["panelColorConverted"] = true,
				["editBoxPosition"] = "ABOVE_CHAT",
				["tapFontSize"] = 12,
				["panelWidth"] = 250,
			},
			["tooltip"] = {
				["fontSize"] = 12,
				["healthBar"] = {
					["height"] = 12,
					["font"] = "Sriracha",
					["fontSize"] = 8,
				},
				["cursorAnchorY"] = -50,
				["font"] = "Sriracha",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["cursorAnchorX"] = 25,
			},
			["v11NamePlateReset"] = true,
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["hideStyle"] = true,
					["shadows"] = false,
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 414,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["statusbar"] = "Minimalist",
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["frameGlow"] = {
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
						},
					},
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.0117647058823529,
						["b"] = 0,
					},
					["transparentAurabars"] = true,
					["useDeadBackdrop"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["r"] = 0,
						["g"] = 0.513725490196078,
						["b"] = 0.0588235294117647,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.00392156862745098,
						["b"] = 0,
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Sriracha",
				["smoothbars"] = true,
				["thinBorders"] = true,
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["iconSize"] = 32,
							["enable"] = false,
							["width"] = 248,
						},
						["enable"] = false,
						["disableTargetGlow"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["width"] = 270,
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["width"] = 270,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["enable"] = false,
							["xOffset"] = 2,
							["yOffset"] = 0,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
							["camDistanceScale"] = 4,
							["width"] = 150,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["height"] = 22,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["iconXOffset"] = -2,
							["iconSize"] = 30,
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttachedTo"] = "Castbar",
							["iconAttached"] = false,
							["height"] = 30,
							["width"] = 179,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["height"] = 82,
						["orientation"] = "LEFT",
						["buffs"] = {
							["enable"] = false,
							["sizeOverride"] = 26,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "",
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["width"] = 246,
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
					},
					["focus"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 32,
							["enable"] = false,
							["perrow"] = 8,
						},
						["disableTargetGlow"] = true,
						["castbar"] = {
							["iconSize"] = 42,
							["insideInfoPanel"] = false,
							["height"] = 25,
							["width"] = 200,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 20,
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current]",
							["height"] = 22,
						},
						["orientation"] = "LEFT",
						["buffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 26,
							["maxDuration"] = 0,
							["perrow"] = 8,
						},
						["height"] = 82,
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["enable"] = true,
							["height"] = 30,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "BOTTOMRIGHT",
							["xOffset"] = 0,
							["size"] = 12,
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "Sriracha",
							["yOffset"] = 25,
							["size"] = 30,
						},
						["numGroups"] = 8,
						["growthDirection"] = "DOWN_RIGHT",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["width"] = 92,
						["visibility"] = "[@raid6,noexists] hide;show",
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["enable"] = true,
						},
						["castbar"] = {
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttachedTo"] = "Castbar",
							["width"] = 179,
							["iconPosition"] = "RIGHT",
							["iconSize"] = 30,
							["iconAttached"] = false,
							["iconXOffset"] = 2,
							["height"] = 30,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["xOffset"] = 0,
							["position"] = "BOTTOM",
							["detachedWidth"] = 330,
							["detachFromFrame"] = true,
							["height"] = 15,
							["yOffset"] = -1,
						},
						["name"] = {
							["text_format"] = "[name] the Noble",
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["bgUseBarTexture"] = false,
							["frequentUpdates"] = true,
							["yOffset"] = -4,
						},
						["height"] = 82,
						["buffs"] = {
							["noDuration"] = false,
							["sizeOverride"] = 26,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["height"] = 14,
							["detachedWidth"] = 243,
							["spacing"] = 6,
						},
						["aurabar"] = {
							["maxDuration"] = 2000,
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "",
							["attachTo"] = "FRAME",
						},
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["anchorPoint"] = "TOP",
							["sizeOverride"] = 30,
							["xOffset"] = 18,
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
							["duration"] = {
								["position"] = "RIGHT",
							},
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["xOffset"] = 69,
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_UP",
						["groupBy"] = "MTMA",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["position"] = "CENTER",
							["attachTo"] = "Power",
							["damager"] = false,
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 170,
						["health"] = {
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = false,
						},
						["verticalSpacing"] = 40,
						["height"] = 30,
						["buffs"] = {
							["numrows"] = 2,
							["sizeOverride"] = 24,
							["xOffset"] = 72,
							["yOffset"] = -1,
							["anchorPoint"] = "BOTTOM",
							["perrow"] = 7,
							["priority"] = "Blacklist,Personal",
							["attachTo"] = "POWER",
							["enable"] = true,
						},
						["orientation"] = "MIDDLE",
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["font"] = "Sriracha",
				["minimapBottom"] = true,
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "Clique",
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttons"] = 8,
					["buttonspacing"] = 7,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonsize"] = 52,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 1,
					["buttonsize"] = 38,
					["buttons"] = 11,
				},
				["movementModifier"] = "ALT",
				["useRangeColorText"] = true,
				["hotkeyTextPosition"] = "TOPLEFT",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "THICKOUTLINE",
				["notUsableColor"] = {
					["r"] = 0.215686274509804,
					["g"] = 0.215686274509804,
					["b"] = 0.215686274509804,
				},
				["chargeCooldown"] = true,
				["noPowerColor"] = {
					["r"] = 0.156862745098039,
					["g"] = 0.156862745098039,
					["b"] = 0.156862745098039,
				},
				["bar2"] = {
					["enabled"] = true,
					["backdropSpacing"] = 0,
					["buttonspacing"] = 5,
					["buttonsPerRow"] = 2,
					["buttonsize"] = 34,
					["visibility"] = "[petbattle] hide; show",
				},
				["bar1"] = {
					["flyoutDirection"] = "UP",
					["backdropSpacing"] = 0,
					["buttonspacing"] = 5,
					["buttonsPerRow"] = 2,
					["buttonsize"] = 34,
					["point"] = "TOPLEFT",
				},
				["backdropSpacingConverted"] = true,
				["bar5"] = {
					["buttonsPerRow"] = 1,
					["buttonsize"] = 38,
					["buttons"] = 11,
				},
				["fontSize"] = 16,
				["countTextYOffset"] = 0,
				["font"] = "Sriracha",
				["bar7"] = {
					["backdrop"] = false,
				},
				["noRangeColor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0.129411764705882,
				},
				["hotkeyTextYOffset"] = -6,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdropSpacing"] = 4,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["buttonsize"] = 23,
				},
				["bar4"] = {
					["heightMult"] = 3,
					["backdropSpacing"] = 0,
					["buttons"] = 8,
					["buttonspacing"] = 7,
					["buttonsPerRow"] = 2,
					["backdrop"] = false,
					["buttonsize"] = 52,
				},
			},
			["abm"] = {
				["targetw"] = 200,
				["targetSpace"] = 3,
				["playerSpace"] = 3,
				["focus"] = true,
				["target"] = true,
				["playerw"] = 200,
				["player"] = true,
				["focusw"] = 200,
			},
			["nameplates"] = {
				["nonTargetTransparency"] = 0.3,
				["clickableHeight"] = 32,
				["units"] = {
					["ENEMY_NPC"] = {
						["minions"] = false,
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["name"] = {
							["fontSize"] = 8,
							["font"] = "Anime Ace",
						},
						["castbar"] = {
							["textPosition"] = "ONBAR",
							["font"] = "Sriracha",
						},
						["minor"] = true,
						["level"] = {
							["xOffset"] = 5,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
							},
						},
						["buffs"] = {
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["yOffset"] = 10,
							["width"] = 120,
						},
						["enable"] = false,
						["name"] = {
							["enable"] = false,
							["fontSize"] = 10,
							["font"] = "Sriracha",
							["xOffset"] = 1,
						},
						["title"] = {
							["format"] = "[guild]",
						},
						["power"] = {
							["displayAltPower"] = false,
						},
						["level"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["countFont"] = "Sriracha",
							["spacing"] = 0,
							["enable"] = false,
							["fontOutline"] = "NONE",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Sriracha",
								["format"] = "[namecolor][name:long]",
							},
						},
					},
					["FRIENDLY_PLAYER"] = {
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Sriracha",
								["format"] = "[namecolor][name:long]",
							},
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["name"] = {
							["fontSize"] = 10,
							["enable"] = false,
							["format"] = "[name]",
							["font"] = "Sriracha",
							["xOffset"] = 1,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["yOffset"] = 10,
							["width"] = 120,
						},
						["enable"] = false,
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["countFont"] = "Sriracha",
							["spacing"] = 0,
							["enable"] = false,
							["fontOutline"] = "NONE",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["title"] = {
							["enable"] = true,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
								["format"] = "",
							},
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["name"] = {
							["fontSize"] = 8,
							["font"] = "Anime Ace",
							["format"] = "[name]",
						},
						["buffs"] = {
							["yOffset"] = 0,
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
						},
					},
					["PLAYER"] = {
						["name"] = {
							["fontSize"] = 10,
							["enable"] = true,
							["xOffset"] = 1,
							["font"] = "Sriracha",
							["yOffset"] = -10,
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["enable"] = true,
								["format"] = "",
								["font"] = "Sriracha",
								["parent"] = "Health",
							},
							["width"] = 120,
						},
						["power"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["enable"] = false,
							["font"] = "Sriracha",
							["spacing"] = 0,
							["size"] = 20,
							["fontOutline"] = "NONE",
							["countFont"] = "Sriracha",
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs",
							},
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["castbar"] = {
							["iconSize"] = 20,
							["yOffset"] = 0,
						},
					},
				},
				["font"] = "Sriracha",
				["motionType"] = "OVERLAP",
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["loadDistance"] = 46,
				["colors"] = {
					["selection"] = {
						nil, -- [1]
						{
							["g"] = 0.901960784313726,
							["b"] = 0.615686274509804,
						}, -- [2]
					},
				},
				["clampToScreen"] = true,
				["statusbar"] = "Minimalist",
			},
			["cooldown"] = {
				["expiringColor"] = {
					["g"] = 0.333333333333333,
					["b"] = 0.431372549019608,
				},
				["fonts"] = {
					["enable"] = true,
					["font"] = "Sriracha",
					["fontSize"] = 14,
				},
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
		},
		["Curaney - Tichondrius"] = {
			["currentTutorial"] = 1,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1020",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,428",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["v11NamePlateReset"] = true,
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Master"] = {
			["databars"] = {
				["reputation"] = {
					["textFormat"] = "CURPERC",
					["font"] = "Sriracha",
					["enable"] = true,
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["textSize"] = 12,
					["width"] = 930,
				},
				["honor"] = {
					["textFormat"] = "CURPERC",
					["font"] = "Sriracha",
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 12,
					["width"] = 930,
				},
				["experience"] = {
					["textFormat"] = "CURREM",
					["width"] = 930,
					["font"] = "Anime Ace",
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["azerite"] = {
					["textFormat"] = "CURPERC",
					["orientation"] = "HORIZONTAL",
					["mouseover"] = true,
					["height"] = 10,
					["font"] = "Sriracha",
					["textSize"] = 12,
					["width"] = 930,
				},
			},
			["currentTutorial"] = 2,
			["general"] = {
				["totems"] = {
					["spacing"] = 8,
					["growthDirection"] = "HORIZONTAL",
					["size"] = 60,
				},
				["interruptAnnounce"] = "SAY",
				["afk"] = false,
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["locationText"] = "HIDE",
					["resetZoom"] = {
						["enable"] = true,
						["time"] = 5,
					},
					["benikuiStyle"] = false,
					["icons"] = {
						["mail"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["size"] = 250,
				},
				["decimalLength"] = 2,
				["talkingHeadFrameBackdrop"] = true,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80527076125145,
					["r"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["b"] = 0.0549019607843137,
				},
				["valuecolor"] = {
					["a"] = 1,
					["g"] = 0.662745098039216,
					["b"] = 0.517647058823529,
				},
				["threat"] = {
					["textOutline"] = "OUTLINE",
				},
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["font"] = "Sriracha",
				["altPowerBar"] = {
					["statusBar"] = "Minimalist",
					["font"] = "Sriracha",
					["width"] = 852,
				},
				["objectiveFrameHeight"] = 594,
				["talkingHeadFrameScale"] = 1,
				["bonusObjectivePosition"] = "RIGHT",
				["stickyFrames"] = false,
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 12,
				["tabFontOutline"] = "OUTLINE",
				["panelWidth"] = 500,
				["tabFont"] = "Sriracha",
				["panelColor"] = {
					["a"] = 0.447339951992035,
					["r"] = 0.117647058823529,
					["g"] = 0.117647058823529,
					["b"] = 0.117647058823529,
				},
				["desaturateVoiceIcons"] = false,
				["panelColorConverted"] = true,
				["panelHeightRight"] = 236,
				["font"] = "Sriracha",
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelHeight"] = 250,
				["fontOutline"] = "OUTLINE",
				["timeStampFormat"] = "%I:%M ",
				["tapFontSize"] = 12,
				["panelBackdrop"] = "LEFT",
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["hoursIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["minutesIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["daysIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["secondsIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["position"] = "TOP",
				["statusbarTexture"] = "BuiFlat",
				["showText"] = true,
				["staticColor"] = {
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["TopCenterContainerMover"] = "BOTTOM,ElvUIParent,BOTTOM,1,7",
				["RaidMarkerBarAnchor"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-36,6",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-181,399",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,40,1069",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4",
				["BuffsMover"] = "TOP,ElvUIParent,TOP,219,-22",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
				["MinimapButtonAnchor"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-11,221",
				["MirrorTimer3Mover"] = "TOP,ElvUIParent,TOP,-10,-132",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-236,227",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,239,222",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,426,143",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-5,257",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_TargetAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,280,252",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["ElvUF_FocusMover"] = "TOP,ElvUIParent,TOP,0,-154",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,342",
				["ElvUF_FocusCastbarMover"] = "TOP,ElvUIParent,TOP,0,-195",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,84",
				["ElvUF_PlayerAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,-277,252",
				["ElvUF_PetCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,437,146",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,309,170",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-522,354",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-419",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,40,1071",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvNP_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,358,68",
				["ElvUF_FocusAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-298,521",
				["ElvAB_2"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-400,170",
				["BelowMinimapContainerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-211,9",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,12,-154",
				["ElvAB_4"] = "TOPLEFT,ElvUIParent,TOPLEFT,40,-330",
				["AzeriteBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,40,-13",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,60",
				["ElvAB_3"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-330",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,400,170",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-42,-5",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,403",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,521,355",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-66,-18",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-23",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,251,-81",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-309,170",
				["HonorBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,40,-4",
				["ArenaHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,50,-382",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,180,399",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,40,832",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-272,-26",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,91",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,255",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,548,55",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,-217,-23",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
			["tooltip"] = {
				["cursorAnchorX"] = 25,
				["healthBar"] = {
					["height"] = 12,
					["fontSize"] = 8,
					["font"] = "Sriracha",
				},
				["fontSize"] = 12,
				["headerFontSize"] = 16,
				["textFontSize"] = 14,
				["font"] = "Sriracha",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["cursorAnchorY"] = -50,
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["smallTextFontSize"] = 14,
			},
			["bags"] = {
				["junkIcon"] = true,
				["countFont"] = "Sriracha",
				["itemLevelFont"] = "Sriracha",
				["split"] = {
					["bagSpacing"] = 10,
				},
				["bankSize"] = 42,
				["countFontOutline"] = "OUTLINE",
				["bagSize"] = 42,
				["countFontSize"] = 12,
				["bankWidth"] = 474,
				["itemLevelFontOutline"] = "OUTLINE",
				["bagWidth"] = 474,
				["itemLevelCustomColorEnable"] = true,
				["itemLevelFontSize"] = 12,
				["scrapIcon"] = true,
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["nameplates"] = {
				["cutaway"] = {
					["health"] = {
						["enabled"] = true,
						["fadeOutTime"] = 0.1,
						["lengthBeforeFade"] = 0.1,
					},
					["power"] = {
						["enabled"] = true,
						["fadeOutTime"] = 0.1,
						["lengthBeforeFade"] = 0.1,
					},
				},
				["nonTargetTransparency"] = 0.3,
				["clickableHeight"] = 32,
				["font"] = "Sriracha",
				["units"] = {
					["ENEMY_NPC"] = {
						["buffs"] = {
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["countFont"] = "Sriracha",
							["yOffset"] = 0,
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
							},
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["textPosition"] = "ONBAR",
						},
						["minor"] = true,
						["level"] = {
							["xOffset"] = 5,
						},
						["name"] = {
							["fontSize"] = 10,
							["font"] = "Sriracha",
						},
						["title"] = {
							["format"] = "[namecolor][npctitle]",
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style2",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["power"] = {
							["displayAltPower"] = false,
						},
						["showTitle"] = false,
						["raidTargetIndicator"] = {
							["position"] = "TOP",
						},
						["nazjatarFollowerXP"] = {
							["color"] = {
								["b"] = 0.9215686274509803,
								["g"] = 0.2549019607843137,
								["r"] = 0.2980392156862745,
							},
							["yOffset"] = 60,
						},
						["title"] = {
							["fontSize"] = 12,
							["position"] = "CENTER",
							["enable"] = true,
							["format"] = "[namecolor][npctitle][guild]",
							["font"] = "Sriracha",
							["fontOutline"] = "NONE",
						},
						["castbar"] = {
							["fontSize"] = 10,
							["iconOffsetY"] = -1,
							["yOffset"] = -24,
							["width"] = 120,
							["hideTime"] = true,
							["font"] = "Sriracha",
							["fontOutline"] = "NONE",
							["height"] = 15,
							["textPosition"] = "ONBAR",
							["iconSize"] = 17,
							["iconOffsetX"] = 4,
						},
						["level"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["fontOutline"] = "NONE",
							["spacing"] = 0,
							["enable"] = false,
							["font"] = "Sriracha",
							["countFont"] = "Sriracha",
							["size"] = 20,
						},
						["health"] = {
							["enable"] = false,
							["text"] = {
								["enable"] = false,
								["fontSize"] = 10,
								["font"] = "Sriracha",
								["format"] = "[namecolor][name:long]",
							},
							["width"] = 120,
						},
						["name"] = {
							["fontSize"] = 14,
							["fontOutline"] = "NONE",
							["position"] = "CENTER",
							["xOffset"] = 1,
							["format"] = "[namecolor][name]",
							["font"] = "Sriracha",
							["yOffset"] = 7,
						},
					},
					["FRIENDLY_PLAYER"] = {
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["yOffset"] = 10,
							["width"] = 120,
						},
						["nameOnly"] = true,
						["raidTargetIndicator"] = {
							["position"] = "TOP",
						},
						["title"] = {
							["fontSize"] = 12,
							["fontOutline"] = "NONE",
							["enable"] = true,
							["format"] = "[namecolor][guild]",
							["font"] = "Sriracha",
							["position"] = "CENTER",
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["fontOutline"] = "NONE",
							["spacing"] = 0,
							["enable"] = false,
							["font"] = "Sriracha",
							["countFont"] = "Sriracha",
							["size"] = 20,
						},
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["name"] = {
							["xOffset"] = 1,
							["fontSize"] = 14,
							["font"] = "Sriracha",
							["fontOutline"] = "NONE",
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Sriracha",
								["format"] = "[namecolor][name:long]",
							},
							["width"] = 120,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["size"] = 20,
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["name"] = {
							["fontSize"] = 8,
							["font"] = "Anime Ace",
							["format"] = "[namecolor][name]",
						},
						["buffs"] = {
							["countFont"] = "Sriracha",
							["yOffset"] = 0,
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
								["format"] = "",
							},
						},
						["title"] = {
							["fontSize"] = 10,
							["position"] = "BOTTOMRIGHT",
							["enable"] = true,
							["format"] = "[namecolor]<[guild]>",
							["font"] = "Sriracha",
							["yOffset"] = 10,
						},
					},
					["PLAYER"] = {
						["health"] = {
							["width"] = 120,
						},
						["name"] = {
							["format"] = "[friendlytitle]",
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["power"] = {
							["enable"] = false,
						},
					},
				},
				["motionType"] = "OVERLAP",
				["statusbar"] = "Minimalist",
				["colors"] = {
					["selection"] = {
						nil, -- [1]
						{
							["g"] = 0.901960784313726,
							["b"] = 0.615686274509804,
						}, -- [2]
					},
				},
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["loadDistance"] = 50,
				["clampToScreen"] = true,
				["visibility"] = {
					["friendly"] = {
						["totems"] = true,
						["guardians"] = true,
						["minions"] = true,
						["pets"] = true,
					},
					["enemy"] = {
						["minus"] = false,
					},
				},
				["smoothbars"] = true,
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["statusbar"] = "Minimalist",
				["colors"] = {
					["classResources"] = {
						["comboPoints"] = {
							{
								["r"] = 0.403921568627451,
								["g"] = 0.423529411764706,
								["b"] = 0.756862745098039,
							}, -- [1]
							{
								["r"] = 0.223529411764706,
								["g"] = 0.745098039215686,
								["b"] = 0.749019607843137,
							}, -- [2]
							{
								["r"] = 0.219607843137255,
								["g"] = 0.756862745098039,
								["b"] = 0.184313725490196,
							}, -- [3]
						},
						["bgColor"] = {
							["r"] = 0,
							["g"] = 0,
							["b"] = 0,
						},
					},
					["auraBarBuff"] = {
						["r"] = 0,
						["g"] = 0.419607843137255,
						["b"] = 0.725490196078431,
					},
					["auraBarTurtleColor"] = {
						["r"] = 0.447058823529412,
						["g"] = 0,
						["b"] = 0.819607843137255,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.376470588235294,
						["g"] = 1,
						["b"] = 0,
					},
					["classbackdrop"] = true,
					["frameGlow"] = {
						["mainGlow"] = {
							["enable"] = true,
							["class"] = true,
						},
						["mouseoverGlow"] = {
							["class"] = true,
							["texture"] = "Minimalist",
						},
					},
					["healthclass"] = true,
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.0117647058823529,
						["b"] = 0,
					},
					["transparentAurabars"] = true,
					["useDeadBackdrop"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["r"] = 0,
						["g"] = 0.43921568627451,
						["b"] = 0.866666666666667,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.00392156862745098,
						["b"] = 0,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["font"] = "Sriracha",
				["thinBorders"] = true,
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["width"] = 270,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = 2,
							["enable"] = false,
							["yOffset"] = 0,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["enable"] = false,
							["iconSize"] = 32,
							["width"] = 248,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableTargetGlow"] = false,
						["width"] = 270,
					},
					["arena"] = {
						["debuffs"] = {
							["anchorPoint"] = "RIGHT",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["spacing"] = 20,
						["height"] = 50,
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
						},
						["width"] = 170,
					},
					["target"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["width"] = 150,
						},
						["smartAuraDisplay"] = "DISABLED",
						["colorOverride"] = "FORCE_ON",
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["yOffset"] = 12,
							["maxBars"] = 7,
							["spacing"] = 5,
						},
						["castbar"] = {
							["iconXOffset"] = -2,
							["iconAttached"] = false,
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttachedTo"] = "Castbar",
							["height"] = 25,
							["iconSize"] = 30,
							["width"] = 180,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 175,
						["pvpIcon"] = {
							["scale"] = 0.48,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["xOffset"] = 0,
							["text_format"] = "[healthcolor][health:current]",
							["yOffset"] = -6,
						},
						["name"] = {
							["position"] = "TOP",
							["text_format"] = "[namecolor][name]",
							["yOffset"] = 8,
						},
						["classicon"] = {
							["enable"] = false,
						},
						["orientation"] = "LEFT",
						["buffs"] = {
							["enable"] = false,
							["sizeOverride"] = 26,
						},
						["height"] = 25,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["enable"] = false,
							["threatStyle"] = "GLOW",
							["height"] = 22,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["xOffset"] = 18,
							["sizeOverride"] = 30,
							["anchorPoint"] = "TOP",
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
							["duration"] = {
								["position"] = "RIGHT",
							},
							["fontOutline"] = "OUTLINE",
							["xOffset"] = 69,
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["enable"] = true,
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_UP",
						["groupBy"] = "MTMA",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["damager"] = false,
							["attachTo"] = "Power",
							["position"] = "CENTER",
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 170,
						["health"] = {
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = false,
						},
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
						["height"] = 30,
						["verticalSpacing"] = 40,
						["orientation"] = "MIDDLE",
						["buffs"] = {
							["numrows"] = 2,
							["sizeOverride"] = 24,
							["enable"] = true,
							["yOffset"] = -1,
							["anchorPoint"] = "BOTTOM",
							["countFont"] = "Sriracha",
							["perrow"] = 7,
							["priority"] = "Blacklist,Personal",
							["attachTo"] = "POWER",
							["xOffset"] = 72,
						},
					},
					["raid40"] = {
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
					},
					["focus"] = {
						["gps"] = {
							["position"] = "TOPRIGHT",
						},
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["disableTargetGlow"] = true,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "BOTTOMLEFT",
							["xOffset"] = 3,
							["text_format"] = "[powercolor][power:current]",
							["height"] = 10,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 200,
						["infoPanel"] = {
							["height"] = 20,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "BOTTOMRIGHT",
							["xOffset"] = 0,
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["castbar"] = {
							["iconSize"] = 42,
							["insideInfoPanel"] = false,
							["height"] = 25,
							["width"] = 200,
						},
						["orientation"] = "LEFT",
						["buffs"] = {
							["sizeOverride"] = 26,
						},
						["height"] = 42,
						["name"] = {
							["xOffset"] = 2,
							["position"] = "TOPLEFT",
							["text_format"] = "[namecolor][name]",
							["yOffset"] = -2,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["debuffs"] = {
							["sizeOverride"] = 0,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["castbar"] = {
							["width"] = 170,
						},
						["width"] = 170,
						["infoPanel"] = {
							["height"] = 17,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["spacing"] = 20,
						["height"] = 50,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
					},
					["player"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["attachTextTo"] = "Power",
							["height"] = 15,
							["position"] = "BOTTOM",
							["enable"] = false,
							["detachedWidth"] = 201,
							["xOffset"] = 0,
							["yOffset"] = -1,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["disableMouseoverGlow"] = true,
						["width"] = 175,
						["fader"] = {
							["health"] = false,
							["power"] = false,
							["enable"] = true,
							["vehicle"] = false,
							["minAlpha"] = 0,
							["smooth"] = 0,
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["text_format"] = "[namecolor][health:current]",
							["yOffset"] = -6,
						},
						["name"] = {
							["position"] = "TOP",
							["text_format"] = "[namecolor][name:title]",
							["yOffset"] = 8,
						},
						["castbar"] = {
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttached"] = false,
							["width"] = 175,
							["iconXOffset"] = 2,
							["iconSize"] = 30,
							["iconPosition"] = "RIGHT",
							["iconAttachedTo"] = "Castbar",
							["height"] = 25,
						},
						["height"] = 25,
						["buffs"] = {
							["noDuration"] = false,
							["sizeOverride"] = 26,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["spacing"] = 6,
							["height"] = 20,
							["additionalPowerText"] = false,
							["detachedWidth"] = 258,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["yOffset"] = 12,
							["maxBars"] = 7,
							["spacing"] = 5,
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["minimapBottom"] = true,
				["panelTransparency"] = true,
				["panels"] = {
					["BottomMiniPanel"] = "Clique",
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
				},
				["font"] = "Sriracha",
				["fontOutline"] = "OUTLINE",
				["leftChatPanel"] = false,
				["actionbar1"] = false,
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["inheritGlobalFade"] = true,
					["flyoutDirection"] = "UP",
					["buttons"] = 12,
					["buttonspacing"] = 5,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 0,
					["showGrid"] = false,
				},
				["bar6"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["flyoutDirection"] = "UP",
					["point"] = "TOPLEFT",
					["showGrid"] = false,
					["buttonsPerRow"] = 2,
					["buttonsize"] = 30,
					["buttonspacing"] = -1,
				},
				["movementModifier"] = "ALT",
				["useRangeColorText"] = true,
				["hotkeyTextPosition"] = "TOPLEFT",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "THICKOUTLINE",
				["notUsableColor"] = {
					["r"] = 0.215686274509804,
					["g"] = 0.215686274509804,
					["b"] = 0.215686274509804,
				},
				["countTextXOffset"] = 3,
				["chargeCooldown"] = true,
				["globalFadeAlpha"] = 0.9,
				["hideCooldownBling"] = true,
				["backdropSpacingConverted"] = true,
				["bar2"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["showGrid"] = false,
					["backdropSpacing"] = 0,
					["buttonspacing"] = -1,
					["buttonsPerRow"] = 4,
					["visibility"] = "[petbattle] hide; show",
					["buttonsize"] = 60,
				},
				["bar1"] = {
					["point"] = "TOPLEFT",
					["inheritGlobalFade"] = true,
					["flyoutDirection"] = "UP",
					["backdropSpacing"] = 0,
					["showGrid"] = false,
					["buttonsPerRow"] = 2,
					["buttonsize"] = 30,
					["buttonspacing"] = -1,
				},
				["useDrawSwipeOnCharges"] = true,
				["bar5"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = -1,
					["inheritGlobalFade"] = true,
					["flyoutDirection"] = "UP",
					["showGrid"] = false,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 60,
					["backdropSpacing"] = 0,
				},
				["noRangeColor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0.129411764705882,
				},
				["countTextYOffset"] = 0,
				["font"] = "Sriracha",
				["bar7"] = {
					["backdrop"] = false,
				},
				["noPowerColor"] = {
					["r"] = 0.156862745098039,
					["g"] = 0.156862745098039,
					["b"] = 0.156862745098039,
				},
				["hotkeyTextYOffset"] = -4,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["buttonsize"] = 23,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdropSpacing"] = 4,
					["backdrop"] = false,
				},
				["bar4"] = {
					["heightMult"] = 3,
					["inheritGlobalFade"] = true,
					["flyoutDirection"] = "UP",
					["point"] = "BOTTOMRIGHT",
					["showGrid"] = false,
					["backdrop"] = false,
					["backdropSpacing"] = 0,
					["buttonspacing"] = 5,
				},
			},
			["abm"] = {
				["targetSpace"] = 3,
				["playerSpace"] = 3,
				["focus"] = true,
				["playerw"] = 150,
				["targetw"] = 150,
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["hideStyle"] = true,
					["shadows"] = false,
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 414,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
			},
			["cooldown"] = {
				["fonts"] = {
					["enable"] = true,
					["font"] = "Sriracha",
					["fontSize"] = 14,
				},
				["expiringColor"] = {
					["g"] = 0.333333333333333,
					["b"] = 0.431372549019608,
				},
			},
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 12,
					["growthDirection"] = "RIGHT_DOWN",
					["durationFontSize"] = 12,
					["horizontalSpacing"] = 10,
					["verticalSpacing"] = 10,
					["maxWraps"] = 4,
					["wrapAfter"] = 9,
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["horizontalSpacing"] = 10,
					["maxWraps"] = 4,
					["verticalSpacing"] = 10,
					["wrapAfter"] = 9,
				},
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
			},
		},
		["Master-Minimore"] = {
			["databars"] = {
				["reputation"] = {
					["textFormat"] = "CURPERC",
					["enable"] = true,
					["mouseover"] = true,
					["width"] = 500,
					["font"] = "Sriracha",
					["orientation"] = "HORIZONTAL",
					["textSize"] = 12,
					["height"] = 20,
				},
				["honor"] = {
					["textFormat"] = "CURPERC",
					["height"] = 20,
					["mouseover"] = true,
					["width"] = 500,
					["font"] = "Sriracha",
					["orientation"] = "HORIZONTAL",
					["textSize"] = 12,
				},
				["experience"] = {
					["textFormat"] = "CURREM",
					["orientation"] = "HORIZONTAL",
					["width"] = 930,
					["font"] = "Anime Ace",
					["height"] = 16,
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["azerite"] = {
					["textFormat"] = "CURPERC",
					["mouseover"] = true,
					["width"] = 500,
					["font"] = "Sriracha",
					["height"] = 20,
					["textSize"] = 12,
					["orientation"] = "HORIZONTAL",
				},
			},
			["currentTutorial"] = 2,
			["general"] = {
				["interruptAnnounce"] = "SAY",
				["decimalLength"] = 2,
				["backdropfadecolor"] = {
					["a"] = 0.7535223364830017,
					["r"] = 0.1019607843137255,
					["g"] = 0.1019607843137255,
					["b"] = 0.1019607843137255,
				},
				["valuecolor"] = {
					["a"] = 1,
					["g"] = 0.662745098039216,
					["b"] = 0.517647058823529,
				},
				["threat"] = {
					["textOutline"] = "OUTLINE",
				},
				["stickyFrames"] = false,
				["font"] = "Sriracha",
				["altPowerBar"] = {
					["statusBar"] = "Minimalist",
					["font"] = "Sriracha",
				},
				["fontSize"] = 14,
				["afk"] = false,
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["resetZoom"] = {
						["enable"] = true,
						["time"] = 5,
					},
					["benikuiStyle"] = false,
					["icons"] = {
						["calendar"] = {
							["position"] = "BOTTOM",
						},
						["mail"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["size"] = 250,
				},
				["talkingHeadFrameBackdrop"] = true,
				["bottomPanel"] = false,
				["objectiveFrameHeight"] = 660,
				["movertransparancy"] = 0.6,
				["backdropcolor"] = {
					["a"] = 1,
					["r"] = 0.1215686274509804,
					["g"] = 0.1215686274509804,
					["b"] = 0.1215686274509804,
				},
				["talkingHeadFrameScale"] = 1.51,
				["objectiveFrameAutoHide"] = false,
				["bonusObjectivePosition"] = "RIGHT",
				["totems"] = {
					["spacing"] = 8,
					["growthDirection"] = "HORIZONTAL",
					["size"] = 60,
				},
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["a"] = 1,
					["r"] = 0.06274509803921569,
					["g"] = 0.06274509803921569,
					["b"] = 0.07058823529411765,
				},
			},
			["bags"] = {
				["itemLevelFont"] = "Sriracha",
				["bagSize"] = 45,
				["itemLevelCustomColorEnable"] = true,
				["junkIcon"] = true,
				["bankSize"] = 45,
				["itemLevelFontOutline"] = "OUTLINE",
				["countFontSize"] = 12,
				["split"] = {
					["bagSpacing"] = 10,
				},
				["itemLevelFontSize"] = 12,
				["bagWidth"] = 700,
				["scrapIcon"] = true,
				["countFont"] = "Sriracha",
				["countFontOutline"] = "OUTLINE",
				["bankWidth"] = 539,
			},
			["hideTutorial"] = true,
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Sriracha",
				["fontOutline"] = "OUTLINE",
				["panelHeightRight"] = 64,
				["font"] = "Sriracha",
				["tapFontSize"] = 12,
				["panelWidth"] = 400,
				["fontSize"] = 12,
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelColorConverted"] = true,
				["pinVoiceButtons"] = false,
				["panelHeight"] = 250,
				["timeStampFormat"] = "%I:%M ",
				["panelWidthRight"] = 510,
				["panelBackdrop"] = "LEFT",
				["desaturateVoiceIcons"] = false,
				["panelColor"] = {
					["a"] = 0.5088120698928833,
					["r"] = 0.1176470588235294,
					["g"] = 0.1176470588235294,
					["b"] = 0.1176470588235294,
				},
				["hideVoiceButtons"] = true,
			},
			["locplus"] = {
				["dig"] = false,
				["dtheight"] = 22,
				["mouseover"] = true,
				["showicon"] = false,
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["enableStaticColor"] = true,
				["colors"] = {
					["expireIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["secondsIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["minutesIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["daysIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
				},
				["spacing"] = -6,
				["position"] = "TOP",
				["statusbarTexture"] = "BuiFlat",
				["showText"] = true,
				["staticColor"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
			["movers"] = {
				["ElvAB_8"] = "BOTTOM,ElvUIParent,BOTTOM,263,4",
				["RaidMarkerBarAnchor"] = "BOTTOM,ElvUIParent,BOTTOM,11,4",
				["MinimapButtonAnchor"] = "TOPLEFT,ElvUIParent,TOPLEFT,6,-39",
				["BuffsMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,257,-24",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-192,392",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-250,392",
				["SocialMenuMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,5,322",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,736",
				["ElvUF_TargetAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,280,252",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,280",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,127,-149",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["LossControlMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,356",
				["MirrorTimer1Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-466,-383",
				["ElvAB_4"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,56",
				["AzeriteBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,257,-134",
				["ReputationBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,257,-156",
				["ObjectiveFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,81,-299",
				["MirrorTimer2Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-466,-403",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,401",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-245,449",
				["ElvUF_PlayerMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,569,-603",
				["ElvAB_7"] = "BOTTOM,ElvUIParent,BOTTOM,-263,4",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-408,4",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-12",
				["ElvUF_PlayerCastbarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,569,-627",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1860,1257",
				["LeftChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["GMMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-306,-24",
				["MirrorTimer3Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-466,-423",
				["ElvUF_FocusMover"] = "TOP,ElvUIParent,TOP,0,-126",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,299",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-4",
				["ElvUF_TargetMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-517,-604",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1860,1257",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,84",
				["ElvUIBagMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-24,-548",
				["ElvUF_FocusAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-298,521",
				["ElvAB_2"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,203,105",
				["BelowMinimapContainerMover"] = "TOP,ElvUIParent,TOP,1,-91",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,156",
				["ElvUF_FocusCastbarMover"] = "TOP,ElvUIParent,TOP,0,-166",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,8,-209",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-363,4",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,402,56",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,452,4",
				["ElvUF_TargetCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-517,607",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,1,320",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,105",
				["ElvUF_PlayerAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,-277,252",
				["VOICECHAT"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-21,-465",
				["ElvNP_PlayerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-24,-491",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-306,-25",
				["HonorBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,257,-111",
				["ElvAB_6"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,5",
				["TooltipMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-25,-521",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2016,975",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-116,-360",
				["TotemBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-358,5",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,1,-108",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1861,1171",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-190",
				["DebuffsMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,257,-66",
				["MinimapMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-24",
			},
			["tooltip"] = {
				["fontSize"] = 12,
				["headerFontSize"] = 16,
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["cursorAnchorX"] = 25,
				["healthBar"] = {
					["font"] = "Sriracha",
					["height"] = 12,
					["fontSize"] = 8,
				},
				["cursorAnchorY"] = -50,
				["font"] = "Sriracha",
				["textFontSize"] = 18,
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["smallTextFontSize"] = 18,
			},
			["v11NamePlateReset"] = true,
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["nameplates"] = {
				["nonTargetTransparency"] = 0.3,
				["plateSize"] = {
					["personalWidth"] = 185,
					["enemyWidth"] = 190,
				},
				["statusbar"] = "Minimalist",
				["motionType"] = "OVERLAP",
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["filters"] = {
					["ElvUI_Target_2"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
				},
				["cutaway"] = {
					["health"] = {
						["enabled"] = true,
						["fadeOutTime"] = 0.1,
						["lengthBeforeFade"] = 0.1,
					},
					["power"] = {
						["enabled"] = true,
						["fadeOutTime"] = 0.1,
						["lengthBeforeFade"] = 0.1,
					},
				},
				["clickableHeight"] = 32,
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["yOffset"] = 10,
							["spacing"] = 4,
							["size"] = 28,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
						},
						["portrait"] = {
							["position"] = "LEFT",
							["height"] = 24,
						},
						["level"] = {
							["fontSize"] = 10,
							["xOffset"] = 5,
							["yOffset"] = -5,
							["font"] = "Anime Ace",
						},
						["castbar"] = {
							["fontSize"] = 13,
							["iconPosition"] = "LEFT",
							["iconSize"] = 24,
							["iconOffsetY"] = -1,
							["width"] = 190,
							["font"] = "Sriracha",
							["height"] = 5,
						},
						["title"] = {
							["fontSize"] = 8,
							["enable"] = true,
							["yOffset"] = 19,
							["font"] = "Anime Ace",
							["position"] = "BOTTOMRIGHT",
							["format"] = "[health:current]",
							["xOffset"] = 3,
						},
						["minor"] = true,
						["questIcon"] = {
							["size"] = 20,
						},
						["buffs"] = {
							["enable"] = false,
							["yOffset"] = 0,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
						},
						["health"] = {
							["height"] = 18,
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
							},
						},
						["name"] = {
							["fontSize"] = 12,
							["xOffset"] = 4,
							["yOffset"] = -6,
							["font"] = "Sriracha",
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style2",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["raidTargetIndicator"] = {
							["position"] = "TOP",
						},
						["level"] = {
							["enable"] = false,
						},
						["nazjatarFollowerXP"] = {
							["color"] = {
								["r"] = 0.2980392156862745,
								["g"] = 0.2549019607843137,
								["b"] = 0.9215686274509803,
							},
							["yOffset"] = 60,
						},
						["castbar"] = {
							["fontSize"] = 10,
							["yOffset"] = -30,
							["hideTime"] = true,
							["fontOutline"] = "NONE",
							["iconSize"] = 17,
							["textPosition"] = "ONBAR",
							["iconOffsetY"] = -1,
							["width"] = 120,
							["font"] = "Sriracha",
							["height"] = 15,
							["iconOffsetX"] = 4,
						},
						["showTitle"] = false,
						["name"] = {
							["fontSize"] = 14,
							["xOffset"] = 1,
							["yOffset"] = 0,
							["font"] = "Sriracha",
							["position"] = "CENTER",
							["format"] = "[namecolor][name]",
							["fontOutline"] = "NONE",
						},
						["power"] = {
							["displayAltPower"] = false,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["enable"] = false,
							["fontOutline"] = "NONE",
							["size"] = 20,
							["font"] = "Sriracha",
							["countFont"] = "Sriracha",
							["spacing"] = 0,
						},
						["title"] = {
							["fontSize"] = 12,
							["enable"] = true,
							["yOffset"] = -13,
							["font"] = "Sriracha",
							["position"] = "CENTER",
							["format"] = "[namecolor][npctitle][guild]",
							["fontOutline"] = "NONE",
						},
						["health"] = {
							["enable"] = false,
							["text"] = {
								["fontSize"] = 10,
								["enable"] = false,
								["font"] = "Sriracha",
								["format"] = "[namecolor][name:long]",
							},
							["width"] = 120,
						},
					},
					["FRIENDLY_PLAYER"] = {
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["raidTargetIndicator"] = {
							["position"] = "TOP",
						},
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["pvpclassificationindicator"] = {
							["enable"] = true,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Sriracha",
								["format"] = "[namecolor][name:long]",
							},
							["width"] = 120,
						},
						["castbar"] = {
							["yOffset"] = 10,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["iconOffsetY"] = -13,
							["width"] = 120,
							["font"] = "Sriracha",
						},
						["nameOnly"] = true,
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["enable"] = false,
							["fontOutline"] = "NONE",
							["size"] = 20,
							["font"] = "Sriracha",
							["countFont"] = "Sriracha",
							["spacing"] = 0,
						},
						["name"] = {
							["fontSize"] = 14,
							["font"] = "Sriracha",
							["fontOutline"] = "NONE",
							["xOffset"] = 1,
						},
						["title"] = {
							["fontSize"] = 12,
							["enable"] = true,
							["font"] = "Sriracha",
							["position"] = "CENTER",
							["format"] = "[namecolor][guild]",
							["fontOutline"] = "NONE",
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["size"] = 24,
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["name"] = {
							["fontSize"] = 8,
							["font"] = "Anime Ace",
							["format"] = "[namecolor][name]",
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
						},
						["buffs"] = {
							["yOffset"] = 0,
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["countFont"] = "Sriracha",
						},
						["title"] = {
							["fontSize"] = 10,
							["enable"] = true,
							["yOffset"] = 10,
							["font"] = "Sriracha",
							["position"] = "BOTTOMRIGHT",
							["format"] = "[namecolor]<[guild]>",
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
							},
						},
					},
					["PLAYER"] = {
						["portrait"] = {
							["position"] = "LEFT",
							["height"] = 24,
						},
						["level"] = {
							["fontSize"] = 10,
							["xOffset"] = 5,
							["yOffset"] = -5,
							["font"] = "Anime Ace",
							["format"] = "[difficultycolor][level][shortclassification]",
							["enable"] = true,
						},
						["pvpclassificationindicator"] = {
							["enable"] = true,
						},
						["power"] = {
							["enable"] = false,
							["text"] = {
								["yOffset"] = -12,
							},
							["yOffset"] = -12,
							["displayAltPower"] = true,
						},
						["title"] = {
							["fontSize"] = 8,
							["xOffset"] = 3,
							["yOffset"] = 19,
							["font"] = "Anime Ace",
							["position"] = "BOTTOMRIGHT",
							["format"] = "[health:current]",
							["enable"] = true,
						},
						["debuffs"] = {
							["yOffset"] = 10,
							["spacing"] = 4,
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
							["font"] = "Sriracha",
							["countFont"] = "Sriracha",
							["size"] = 28,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["enable"] = true,
								["font"] = "Anime Ace",
							},
							["height"] = 18,
							["healPrediction"] = false,
							["width"] = 120,
						},
						["castbar"] = {
							["fontSize"] = 13,
							["yOffset"] = -10,
							["iconPosition"] = "LEFT",
							["iconSize"] = 24,
							["iconOffsetY"] = -1,
							["width"] = 185,
							["font"] = "Sriracha",
							["height"] = 5,
						},
						["classpower"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["enable"] = false,
							["yOffset"] = 0,
							["filters"] = {
								["maxDuration"] = 0,
							},
							["font"] = "Sriracha",
							["countFont"] = "Sriracha",
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["name"] = {
							["fontSize"] = 12,
							["enable"] = true,
							["yOffset"] = -6,
							["font"] = "Sriracha",
							["xOffset"] = 4,
						},
					},
				},
				["clampToScreen"] = true,
				["colors"] = {
					["castColor"] = {
						["g"] = 0.8117647058823529,
					},
					["selection"] = {
						nil, -- [1]
						{
							["g"] = 0.901960784313726,
							["b"] = 0.615686274509804,
						}, -- [2]
					},
					["castNoInterruptColor"] = {
						["r"] = 0.7803921568627451,
						["g"] = 0.2509803921568627,
						["b"] = 0.2509803921568627,
					},
				},
				["loadDistance"] = 70,
				["font"] = "Sriracha",
				["visibility"] = {
					["friendly"] = {
						["pets"] = true,
						["guardians"] = true,
						["minions"] = true,
						["totems"] = true,
					},
					["enemy"] = {
						["totems"] = true,
						["guardians"] = true,
						["minions"] = true,
						["pets"] = true,
					},
				},
				["smoothbars"] = true,
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["statusbar"] = "Minimalist",
				["fontOutline"] = "OUTLINE",
				["units"] = {
					["tank"] = {
						["targetsGroup"] = {
							["width"] = 150,
							["anchorPoint"] = "LEFT",
							["height"] = 40,
						},
						["width"] = 256,
						["height"] = 40,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["enable"] = false,
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["enable"] = false,
							["xOffset"] = 2,
							["yOffset"] = 0,
						},
					},
					["pet"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["disableTargetGlow"] = false,
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 14,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 250,
							["iconSize"] = 32,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["debuffs"] = {
							["anchorPoint"] = "RIGHT",
						},
						["spacing"] = 20,
						["width"] = 170,
						["name"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["height"] = 50,
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 42,
							["yOffset"] = -24,
							["anchorPoint"] = "BOTTOMLEFT",
							["numrows"] = 8,
							["countFont"] = "Sriracha",
							["perrow"] = 7,
							["attachTo"] = "HEALTH",
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["width"] = 150,
						},
						["smartAuraDisplay"] = "DISABLED",
						["colorOverride"] = "FORCE_ON",
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["enable"] = false,
							["threatStyle"] = "GLOW",
							["height"] = 22,
						},
						["pvpIcon"] = {
							["scale"] = 0.48,
						},
						["attackicon"] = {
							["xOffset"] = 0,
							["yOffset"] = 0,
						},
						["aurabar"] = {
							["maxBars"] = 7,
							["enable"] = false,
							["attachTo"] = "FRAME",
							["yOffset"] = 12,
							["spacing"] = 5,
						},
						["castbar"] = {
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttached"] = false,
							["iconYOffset"] = -12,
							["width"] = 300,
							["iconXOffset"] = 0,
							["strataAndLevel"] = {
								["useCustomStrata"] = true,
								["frameStrata"] = "BACKGROUND",
							},
							["iconSize"] = 69,
							["height"] = 25,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 300,
						["height"] = 45,
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["xOffset"] = 0,
							["text_format"] = "[healthcolor][health:current]",
							["yOffset"] = -9,
						},
						["classicon"] = {
							["enable"] = false,
						},
						["orientation"] = "LEFT",
						["buffs"] = {
							["sizeOverride"] = 28,
							["yOffset"] = 10,
							["numrows"] = 9,
							["countFont"] = "Sriracha",
							["perrow"] = 9,
							["attachTo"] = "HEALTH",
						},
						["name"] = {
							["position"] = "TOP",
							["text_format"] = "[namecolor][name]",
							["yOffset"] = 8,
						},
						["raidicon"] = {
							["yOffset"] = 0,
						},
					},
					["player"] = {
						["debuffs"] = {
							["sizeOverride"] = 28,
							["enable"] = false,
							["yOffset"] = -28,
							["anchorPoint"] = "BOTTOMLEFT",
							["numrows"] = 9,
							["countFont"] = "Sriracha",
							["perrow"] = 9,
							["attachTo"] = "HEALTH",
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["text_format"] = "[namecolor][health:current]",
							["yOffset"] = -6,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["enable"] = false,
							["additionalPowerText"] = false,
							["detachedWidth"] = 258,
							["height"] = 20,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["maxBars"] = 7,
							["enable"] = false,
							["attachTo"] = "FRAME",
							["yOffset"] = 12,
							["spacing"] = 5,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["detachFromFrame"] = true,
							["xOffset"] = 0,
							["yOffset"] = -1,
							["position"] = "BOTTOM",
							["height"] = 20,
							["detachedWidth"] = 258,
							["enable"] = false,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["disableMouseoverGlow"] = true,
						["width"] = 249,
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
						},
						["name"] = {
							["position"] = "TOP",
							["text_format"] = "[namecolor][name:title]",
							["yOffset"] = 8,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconSize"] = 49,
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttached"] = false,
							["iconYOffset"] = -12,
							["width"] = 249,
							["iconXOffset"] = 0,
							["strataAndLevel"] = {
								["useCustomStrata"] = true,
								["frameStrata"] = "BACKGROUND",
							},
							["height"] = 25,
						},
						["height"] = 25,
						["buffs"] = {
							["sizeOverride"] = 36,
							["yOffset"] = 10,
							["numrows"] = 9,
							["countFont"] = "Sriracha",
							["noDuration"] = false,
							["perrow"] = 7,
							["attachTo"] = "HEALTH",
						},
						["fader"] = {
							["power"] = false,
							["enable"] = true,
							["minAlpha"] = 0.05,
							["playertarget"] = false,
							["vehicle"] = false,
							["smooth"] = 0,
						},
					},
					["raid40"] = {
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
						["roleIcon"] = {
							["enable"] = true,
							["damager"] = false,
						},
					},
					["focus"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["disableTargetGlow"] = true,
						["height"] = 42,
						["gps"] = {
							["position"] = "TOPRIGHT",
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["iconSize"] = 42,
							["width"] = 200,
							["height"] = 25,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 200,
						["infoPanel"] = {
							["height"] = 20,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "BOTTOMRIGHT",
							["xOffset"] = 0,
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["power"] = {
							["xOffset"] = 3,
							["text_format"] = "[powercolor][power:current]",
							["position"] = "BOTTOMLEFT",
							["height"] = 10,
							["attachTextTo"] = "InfoPanel",
						},
						["orientation"] = "LEFT",
						["buffs"] = {
							["sizeOverride"] = 26,
						},
						["name"] = {
							["position"] = "TOPLEFT",
							["xOffset"] = 2,
							["text_format"] = "[namecolor][name]",
							["yOffset"] = -2,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["debuffs"] = {
							["sizeOverride"] = 0,
						},
						["roleIcon"] = {
							["damager"] = false,
						},
					},
					["party"] = {
						["debuffs"] = {
							["sizeOverride"] = 25,
							["yOffset"] = 39,
							["anchorPoint"] = "CENTER",
							["numrows"] = 4,
							["countFont"] = "Sriracha",
							["perrow"] = 1,
							["position"] = "RIGHT",
						},
						["groupSpacing"] = 10,
						["customTexts"] = {
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["name"] = {
							["position"] = "TOP",
							["yOffset"] = -10,
						},
						["height"] = 150,
						["buffs"] = {
							["sizeOverride"] = 24,
							["yOffset"] = -1,
							["anchorPoint"] = "BOTTOM",
							["priority"] = "Blacklist,Personal",
							["numrows"] = 2,
							["countFont"] = "Sriracha",
							["perrow"] = 7,
							["attachTo"] = "POWER",
							["xOffset"] = 72,
						},
						["horizontalSpacing"] = 4,
						["rdebuffs"] = {
							["enable"] = true,
							["duration"] = {
								["position"] = "RIGHT",
							},
							["yOffset"] = 154,
							["font"] = "Sriracha",
							["fontOutline"] = "OUTLINE",
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_DOWN",
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
						["groupBy"] = "MTMA",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["damager"] = false,
							["attachTo"] = "Power",
							["position"] = "CENTER",
						},
						["power"] = {
							["text_format"] = "",
							["position"] = "BOTTOM",
							["height"] = 13,
						},
						["width"] = 75,
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["orientation"] = "VERTICAL",
						},
						["portrait"] = {
							["transparent"] = true,
							["height"] = 15,
						},
						["orientation"] = "MIDDLE",
						["verticalSpacing"] = 0,
					},
					["boss"] = {
						["debuffs"] = {
							["sizeOverride"] = 25,
							["yOffset"] = 12,
							["countFont"] = "Sriracha",
							["perrow"] = 4,
							["maxDuration"] = 300,
						},
						["spacing"] = 22,
						["name"] = {
							["position"] = "TOP",
							["yOffset"] = 8,
						},
						["castbar"] = {
							["width"] = 300,
						},
						["width"] = 300,
						["infoPanel"] = {
							["height"] = 17,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["portrait"] = {
							["width"] = 45,
							["style"] = "2D",
							["fullOverlay"] = false,
							["camDistanceScale"] = 2,
						},
						["height"] = 50,
						["buffs"] = {
							["sizeOverride"] = 25,
							["yOffset"] = 12,
							["anchorPoint"] = "RIGHT",
							["numrows"] = 2,
							["countFont"] = "Sriracha",
							["perrow"] = 4,
							["maxDuration"] = 300,
						},
						["power"] = {
							["height"] = 10,
						},
					},
				},
				["font"] = "Sriracha",
				["colors"] = {
					["healthclass"] = true,
					["customhealthbackdrop"] = true,
					["castReactionColor"] = true,
					["powerclass"] = true,
					["classResources"] = {
						["comboPoints"] = {
							{
								["r"] = 0.403921568627451,
								["g"] = 0.423529411764706,
								["b"] = 0.756862745098039,
							}, -- [1]
							{
								["r"] = 0.223529411764706,
								["g"] = 0.745098039215686,
								["b"] = 0.749019607843137,
							}, -- [2]
							{
								["r"] = 0.219607843137255,
								["g"] = 0.756862745098039,
								["b"] = 0.184313725490196,
							}, -- [3]
						},
						["bgColor"] = {
							["b"] = 0,
							["g"] = 0,
							["r"] = 0,
						},
					},
					["auraBarTurtleColor"] = {
						["r"] = 0.447058823529412,
						["g"] = 0,
						["b"] = 0.819607843137255,
					},
					["health_backdrop"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.0117647058823529,
						["b"] = 0,
					},
					["useDeadBackdrop"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.00392156862745098,
						["b"] = 0,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 1,
						["g"] = 0.8117647058823529,
						["b"] = 0,
					},
					["frameGlow"] = {
						["mainGlow"] = {
							["enable"] = true,
							["class"] = true,
						},
						["mouseoverGlow"] = {
							["class"] = true,
							["texture"] = "Minimalist",
						},
					},
					["castNoInterrupt"] = {
						["r"] = 0.7803921568627451,
						["g"] = 0.2509803921568627,
						["b"] = 0.2509803921568627,
					},
					["auraBarBuff"] = {
						["r"] = 0,
						["g"] = 0.419607843137255,
						["b"] = 0.725490196078431,
					},
					["classbackdrop"] = true,
					["transparentAurabars"] = true,
					["health"] = {
						["r"] = 0,
						["g"] = 0.43921568627451,
						["b"] = 0.866666666666667,
					},
				},
				["smoothbars"] = true,
				["thinBorders"] = true,
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["panelTransparency"] = true,
				["panels"] = {
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
					["BottomMiniPanel"] = "Coords",
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
				},
				["minimapBottomRight"] = true,
				["fontOutline"] = "OUTLINE",
				["leftChatPanel"] = false,
				["rightChatPanel"] = false,
				["minimapBottom"] = true,
				["font"] = "Sriracha",
				["actionbar1"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 2,
					["inheritGlobalFade"] = true,
					["backdropSpacing"] = 4,
					["buttons"] = 4,
					["alpha"] = 0.6,
					["flyoutDirection"] = "UP",
					["buttonsPerRow"] = 1,
					["buttonsize"] = 47,
				},
				["bar8"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["flyoutDirection"] = "RIGHT",
					["showGrid"] = false,
					["backdrop"] = false,
					["buttonsize"] = 40,
				},
				["hotkeyTextPosition"] = "TOPLEFT",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "THICKOUTLINE",
				["notUsableColor"] = {
					["r"] = 0.215686274509804,
					["g"] = 0.215686274509804,
					["b"] = 0.215686274509804,
				},
				["chargeCooldown"] = true,
				["bar1"] = {
					["flyoutDirection"] = "UP",
					["inheritGlobalFade"] = true,
					["backdropSpacing"] = 0,
					["alpha"] = 0.6,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 47,
				},
				["font"] = "Sriracha",
				["countTextYOffset"] = 0,
				["hotkeyTextYOffset"] = -4,
				["barPet"] = {
					["enabled"] = false,
					["buttonspacing"] = 4,
					["backdrop"] = false,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 23,
					["backdropSpacing"] = 4,
				},
				["countTextXOffset"] = 3,
				["bar6"] = {
					["flyoutDirection"] = "RIGHT",
					["inheritGlobalFade"] = true,
					["backdropSpacing"] = 0,
					["enabled"] = true,
					["buttons"] = 9,
					["point"] = "TOPLEFT",
					["alpha"] = 0.6,
					["buttonsize"] = 47,
				},
				["movementModifier"] = "ALT",
				["equippedItem"] = true,
				["useRangeColorText"] = true,
				["bar7"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["flyoutDirection"] = "LEFT",
					["showGrid"] = false,
					["point"] = "BOTTOMRIGHT",
					["backdrop"] = false,
					["buttonsize"] = 40,
				},
				["hideCooldownBling"] = true,
				["globalFadeAlpha"] = 0.9500000000000001,
				["addNewSpells"] = true,
				["fontSize"] = 12,
				["noPowerColor"] = {
					["r"] = 0.156862745098039,
					["g"] = 0.156862745098039,
					["b"] = 0.156862745098039,
				},
				["bar2"] = {
					["inheritGlobalFade"] = true,
					["enabled"] = true,
					["alpha"] = 0.6,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 47,
				},
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["backdropSpacing"] = 0,
					["buttons"] = 12,
					["alpha"] = 0.6,
					["flyoutDirection"] = "UP",
					["buttonsPerRow"] = 3,
					["buttonsize"] = 60,
				},
				["noRangeColor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0.129411764705882,
				},
				["backdropSpacingConverted"] = true,
				["useDrawSwipeOnCharges"] = true,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["bar4"] = {
					["flyoutDirection"] = "UP",
					["inheritGlobalFade"] = true,
					["backdropSpacing"] = 0,
					["buttons"] = 8,
					["backdrop"] = false,
					["point"] = "BOTTOMLEFT",
					["alpha"] = 0.6,
					["buttonsPerRow"] = 12,
					["buttonsize"] = 47,
				},
			},
			["abm"] = {
				["targetSpace"] = 3,
				["playerSpace"] = 3,
				["focus"] = true,
				["playerw"] = 150,
				["targetw"] = 150,
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["shadows"] = false,
					["hideStyle"] = true,
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["width"] = 414,
						["backdrop"] = true,
						["transparent"] = false,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["cooldown"] = {
				["expiringColor"] = {
					["g"] = 0.333333333333333,
					["b"] = 0.431372549019608,
				},
				["fonts"] = {
					["enable"] = true,
					["font"] = "Sriracha",
					["fontSize"] = 14,
				},
			},
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 4,
					["durationFontSize"] = 14,
					["growthDirection"] = "RIGHT_DOWN",
					["wrapAfter"] = 20,
					["countFontSize"] = 14,
					["verticalSpacing"] = 4,
					["size"] = 40,
				},
				["fadeThreshold"] = 10,
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
				["fontOutline"] = "OUTLINE",
				["buffs"] = {
					["horizontalSpacing"] = 4,
					["durationFontSize"] = 14,
					["maxWraps"] = 1,
					["growthDirection"] = "RIGHT_DOWN",
					["sortDir"] = "+",
					["countFontSize"] = 14,
					["size"] = 40,
					["verticalSpacing"] = 4,
					["wrapAfter"] = 20,
				},
			},
		},
		["Master- Mini Bottom"] = {
			["databars"] = {
				["reputation"] = {
					["font"] = "Sriracha",
					["textFormat"] = "CURPERC",
					["textSize"] = 12,
					["height"] = 20,
					["enable"] = true,
					["orientation"] = "HORIZONTAL",
					["mouseover"] = true,
					["width"] = 500,
				},
				["azerite"] = {
					["textFormat"] = "CURPERC",
					["height"] = 20,
					["textSize"] = 12,
					["orientation"] = "HORIZONTAL",
					["font"] = "Sriracha",
					["mouseover"] = true,
					["width"] = 500,
				},
				["experience"] = {
					["textFormat"] = "CURREM",
					["textYoffset"] = 10,
					["font"] = "Anime Ace",
					["height"] = 16,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 10,
					["width"] = 930,
				},
				["honor"] = {
					["textFormat"] = "CURPERC",
					["orientation"] = "HORIZONTAL",
					["textSize"] = 12,
					["height"] = 20,
					["font"] = "Sriracha",
					["mouseover"] = true,
					["width"] = 500,
				},
			},
			["currentTutorial"] = 2,
			["general"] = {
				["totems"] = {
					["size"] = 60,
					["growthDirection"] = "HORIZONTAL",
					["spacing"] = 8,
				},
				["fontSize"] = 14,
				["interruptAnnounce"] = "SAY",
				["afk"] = false,
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["resetZoom"] = {
						["enable"] = true,
						["time"] = 5,
					},
					["size"] = 250,
					["icons"] = {
						["mail"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["benikuiStyle"] = false,
				},
				["decimalLength"] = 2,
				["talkingHeadFrameBackdrop"] = true,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.7535223364830017,
					["b"] = 0.1019607843137255,
					["g"] = 0.1019607843137255,
					["r"] = 0.1019607843137255,
				},
				["valuecolor"] = {
					["a"] = 1,
					["g"] = 0.662745098039216,
					["b"] = 0.517647058823529,
				},
				["movertransparancy"] = 0.6,
				["threat"] = {
					["textOutline"] = "OUTLINE",
				},
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["backdropcolor"] = {
					["a"] = 1,
					["b"] = 0.1215686274509804,
					["g"] = 0.1215686274509804,
					["r"] = 0.1215686274509804,
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["a"] = 1,
					["b"] = 0.07058823529411765,
					["g"] = 0.06274509803921569,
					["r"] = 0.06274509803921569,
				},
				["font"] = "Sriracha",
				["altPowerBar"] = {
					["statusBar"] = "Minimalist",
					["font"] = "Sriracha",
				},
				["stickyFrames"] = false,
				["bonusObjectivePosition"] = "RIGHT",
				["talkingHeadFrameScale"] = 1.51,
				["objectiveFrameHeight"] = 594,
			},
			["bags"] = {
				["junkIcon"] = true,
				["countFont"] = "Sriracha",
				["itemLevelFont"] = "Sriracha",
				["split"] = {
					["bagSpacing"] = 10,
				},
				["bagWidth"] = 474,
				["countFontOutline"] = "OUTLINE",
				["bankSize"] = 42,
				["itemLevelFontSize"] = 12,
				["bankWidth"] = 474,
				["itemLevelFontOutline"] = "OUTLINE",
				["scrapIcon"] = true,
				["itemLevelCustomColorEnable"] = true,
				["countFontSize"] = 12,
				["bagSize"] = 42,
			},
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 12,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Sriracha",
				["editBoxPosition"] = "ABOVE_CHAT",
				["fontOutline"] = "OUTLINE",
				["panelWidthRight"] = 510,
				["panelBackdrop"] = "LEFT",
				["desaturateVoiceIcons"] = false,
				["separateSizes"] = true,
				["panelColor"] = {
					["a"] = 0.5088120698928833,
					["b"] = 0.1176470588235294,
					["g"] = 0.1176470588235294,
					["r"] = 0.1176470588235294,
				},
				["panelHeightRight"] = 250,
				["font"] = "Sriracha",
				["timeStampFormat"] = "%I:%M ",
				["panelHeight"] = 250,
				["panelColorConverted"] = true,
				["pinVoiceButtons"] = false,
				["tapFontSize"] = 12,
				["panelWidth"] = 500,
			},
			["locplus"] = {
				["showicon"] = false,
				["dig"] = false,
				["mouseover"] = true,
				["dtheight"] = 22,
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["hoursIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["minutesIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["daysIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["secondsIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["position"] = "TOP",
				["statusbarTexture"] = "BuiFlat",
				["showText"] = true,
				["staticColor"] = {
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "TOP,ElvUIParent,TOP,-1,-252",
				["RaidMarkerBarAnchor"] = "TOPLEFT,ElvUIParent,TOPLEFT,420,-6",
				["MinimapButtonAnchor"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-11,-200",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-257,-24",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,500,249",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-640,254",
				["SocialMenuMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,5,322",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,736",
				["ElvUF_TargetAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,280,252",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,280",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-23",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["LossControlMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,356",
				["MirrorTimer1Mover"] = "BOTTOM,ElvUIParent,BOTTOM,268,620",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-242,56",
				["AzeriteBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,282",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,260",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,-302",
				["MirrorTimer2Mover"] = "BOTTOM,ElvUIParent,BOTTOM,268,602",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,401",
				["ArenaHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,181,-335",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,570,405",
				["ElvAB_7"] = "BOTTOM,ElvUIParent,BOTTOM,-263,4",
				["RightChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,1,283",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-87",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,156",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1257",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,6,4",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-23",
				["MirrorTimer3Mover"] = "BOTTOM,ElvUIParent,BOTTOM,268,584",
				["ElvUF_FocusMover"] = "TOP,ElvUIParent,TOP,-1,-209",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,299",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-4",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-486,385",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-315",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,1,320",
				["ElvAB_8"] = "BOTTOM,ElvUIParent,BOTTOM,263,4",
				["ElvUF_FocusAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-298,521",
				["ElvAB_2"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-242,105",
				["BelowMinimapContainerMover"] = "TOP,ElvUIParent,TOP,0,-39",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,84",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,570,382",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,260",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,508,4",
				["ElvAB_3"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-192,56",
				["ElvAB_5"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,12,-154",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,1257",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-257,-4",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-192,24",
				["ElvNP_PlayerMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-10,34",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,410",
				["ElvAB_1"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-441,105",
				["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,305",
				["ElvUF_PlayerAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,-277,252",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-9,13",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1022",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-257,-373",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,508,108",
				["ElvUF_TargetCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-486,361",
				["ElvUF_PartyMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,172,945",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,7,-335",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-318,-24",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-24",
			},
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 12,
					["size"] = 28,
					["horizontalSpacing"] = 4,
					["durationFontSize"] = 12,
					["verticalSpacing"] = 10,
					["maxWraps"] = 15,
					["wrapAfter"] = 5,
					["growthDirection"] = "DOWN_RIGHT",
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["countFontSize"] = 12,
					["wrapAfter"] = 7,
					["horizontalSpacing"] = 4,
					["durationFontSize"] = 12,
					["verticalSpacing"] = 7,
					["maxWraps"] = 15,
					["sortDir"] = "+",
					["growthDirection"] = "DOWN_LEFT",
				},
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
			},
			["tooltip"] = {
				["cursorAnchorX"] = 25,
				["healthBar"] = {
					["height"] = 12,
					["fontSize"] = 8,
					["font"] = "Sriracha",
				},
				["fontSize"] = 12,
				["headerFontSize"] = 16,
				["textFontSize"] = 18,
				["font"] = "Sriracha",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["cursorAnchorY"] = -50,
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["smallTextFontSize"] = 18,
			},
			["v11NamePlateReset"] = true,
			["abm"] = {
				["targetSpace"] = 3,
				["playerSpace"] = 3,
				["focus"] = true,
				["playerw"] = 150,
				["targetw"] = 150,
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["hideStyle"] = true,
					["shadows"] = false,
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 414,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
			},
			["unitframe"] = {
				["smoothbars"] = true,
				["fontSize"] = 12,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.725490196078431,
						["g"] = 0.419607843137255,
						["r"] = 0,
					},
					["healthclass"] = true,
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["b"] = 0,
						["g"] = 0.0117647058823529,
						["r"] = 0.109803921568627,
					},
					["castReactionColor"] = true,
					["powerclass"] = true,
					["classResources"] = {
						["comboPoints"] = {
							{
								["b"] = 0.756862745098039,
								["g"] = 0.423529411764706,
								["r"] = 0.403921568627451,
							}, -- [1]
							{
								["b"] = 0.749019607843137,
								["g"] = 0.745098039215686,
								["r"] = 0.223529411764706,
							}, -- [2]
							{
								["b"] = 0.184313725490196,
								["g"] = 0.756862745098039,
								["r"] = 0.219607843137255,
							}, -- [3]
						},
						["bgColor"] = {
							["r"] = 0,
							["g"] = 0,
							["b"] = 0,
						},
					},
					["auraBarTurtleColor"] = {
						["b"] = 0.819607843137255,
						["g"] = 0,
						["r"] = 0.447058823529412,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0,
						["g"] = 0.8117647058823529,
						["r"] = 1,
					},
					["frameGlow"] = {
						["mainGlow"] = {
							["enable"] = true,
							["class"] = true,
						},
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
							["class"] = true,
						},
					},
					["castNoInterrupt"] = {
						["b"] = 0.2509803921568627,
						["g"] = 0.2509803921568627,
						["r"] = 0.7803921568627451,
					},
					["transparentAurabars"] = true,
					["health"] = {
						["b"] = 0.866666666666667,
						["g"] = 0.43921568627451,
						["r"] = 0,
					},
					["classbackdrop"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0,
						["g"] = 0.00392156862745098,
						["r"] = 0.109803921568627,
					},
					["useDeadBackdrop"] = true,
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "Minimalist",
				["font"] = "Sriracha",
				["thinBorders"] = true,
				["units"] = {
					["tank"] = {
						["height"] = 40,
						["targetsGroup"] = {
							["height"] = 40,
							["width"] = 150,
						},
						["width"] = 256,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 25,
							["perrow"] = 4,
							["countFont"] = "Sriracha",
							["yOffset"] = 12,
						},
						["portrait"] = {
							["fullOverlay"] = false,
							["camDistanceScale"] = 2,
							["style"] = "2D",
							["width"] = 45,
						},
						["power"] = {
							["height"] = 10,
						},
						["width"] = 300,
						["infoPanel"] = {
							["height"] = 17,
						},
						["name"] = {
							["yOffset"] = 8,
							["position"] = "TOP",
						},
						["spacing"] = 22,
						["height"] = 50,
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 25,
							["perrow"] = 4,
							["maxDuration"] = 300,
							["countFont"] = "Sriracha",
							["numrows"] = 2,
							["yOffset"] = 12,
						},
						["castbar"] = {
							["width"] = 300,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["xOffset"] = 18,
							["sizeOverride"] = 30,
							["anchorPoint"] = "TOP",
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["fontOutline"] = "OUTLINE",
							["xOffset"] = 69,
							["duration"] = {
								["position"] = "RIGHT",
							},
							["enable"] = true,
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "DOWN_LEFT",
						["groupBy"] = "MTMA",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["position"] = "CENTER",
							["attachTo"] = "Power",
							["damager"] = false,
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 170,
						["health"] = {
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = false,
						},
						["buffs"] = {
							["numrows"] = 2,
							["sizeOverride"] = 24,
							["enable"] = true,
							["yOffset"] = -1,
							["anchorPoint"] = "BOTTOM",
							["xOffset"] = 72,
							["attachTo"] = "POWER",
							["priority"] = "Blacklist,Personal",
							["perrow"] = 7,
							["countFont"] = "Sriracha",
						},
						["height"] = 30,
						["verticalSpacing"] = 40,
						["orientation"] = "MIDDLE",
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = 2,
							["enable"] = false,
							["yOffset"] = 0,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
					},
					["raid"] = {
						["roleIcon"] = {
							["damager"] = false,
						},
						["debuffs"] = {
							["sizeOverride"] = 0,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["player"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMLEFT",
							["sizeOverride"] = 28,
							["perrow"] = 9,
							["attachTo"] = "HEALTH",
							["countFont"] = "Sriracha",
							["numrows"] = 9,
							["yOffset"] = -28,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["attachTextTo"] = "InfoPanel",
							["detachedWidth"] = 258,
							["position"] = "BOTTOM",
							["enable"] = false,
							["height"] = 20,
							["xOffset"] = 0,
							["yOffset"] = -1,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["disableMouseoverGlow"] = true,
						["width"] = 249,
						["fader"] = {
							["playertarget"] = false,
							["power"] = false,
							["enable"] = true,
							["vehicle"] = false,
							["smooth"] = 0,
							["minAlpha"] = 0.05,
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["text_format"] = "[namecolor][health:current]",
							["yOffset"] = -6,
						},
						["name"] = {
							["yOffset"] = 8,
							["text_format"] = "[namecolor][name:title]",
							["position"] = "TOP",
						},
						["castbar"] = {
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttached"] = false,
							["iconYOffset"] = -12,
							["width"] = 249,
							["iconXOffset"] = 0,
							["strataAndLevel"] = {
								["frameStrata"] = "BACKGROUND",
								["useCustomStrata"] = true,
							},
							["iconSize"] = 49,
							["height"] = 25,
							["iconPosition"] = "RIGHT",
						},
						["height"] = 25,
						["buffs"] = {
							["numrows"] = 9,
							["sizeOverride"] = 36,
							["perrow"] = 7,
							["attachTo"] = "HEALTH",
							["enable"] = true,
							["noDuration"] = false,
							["countFont"] = "Sriracha",
							["yOffset"] = 10,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["fill"] = "spaced",
							["enable"] = false,
							["detachedWidth"] = 258,
							["height"] = 20,
							["additionalPowerText"] = false,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 7,
							["spacing"] = 5,
							["enable"] = false,
							["yOffset"] = 12,
						},
					},
					["raid40"] = {
						["roleIcon"] = {
							["enable"] = true,
							["damager"] = false,
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
					},
					["focus"] = {
						["gps"] = {
							["position"] = "TOPRIGHT",
						},
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["disableTargetGlow"] = true,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "BOTTOMLEFT",
							["xOffset"] = 3,
							["text_format"] = "[powercolor][power:current]",
							["height"] = 10,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 200,
						["infoPanel"] = {
							["height"] = 20,
						},
						["name"] = {
							["xOffset"] = 2,
							["yOffset"] = -2,
							["text_format"] = "[namecolor][name]",
							["position"] = "TOPLEFT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "BOTTOMRIGHT",
							["xOffset"] = 0,
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["height"] = 42,
						["buffs"] = {
							["sizeOverride"] = 26,
						},
						["orientation"] = "LEFT",
						["castbar"] = {
							["iconSize"] = 42,
							["width"] = 200,
							["height"] = 25,
							["insideInfoPanel"] = false,
						},
					},
					["target"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMLEFT",
							["sizeOverride"] = 42,
							["perrow"] = 7,
							["attachTo"] = "HEALTH",
							["countFont"] = "Sriracha",
							["numrows"] = 8,
							["yOffset"] = -24,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["width"] = 150,
						},
						["smartAuraDisplay"] = "DISABLED",
						["colorOverride"] = "FORCE_ON",
						["attackicon"] = {
							["xOffset"] = 0,
							["yOffset"] = 0,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 7,
							["spacing"] = 5,
							["enable"] = false,
							["yOffset"] = 12,
						},
						["castbar"] = {
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttached"] = false,
							["iconYOffset"] = -12,
							["width"] = 300,
							["iconXOffset"] = 0,
							["strataAndLevel"] = {
								["frameStrata"] = "BACKGROUND",
								["useCustomStrata"] = true,
							},
							["iconSize"] = 69,
							["height"] = 25,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 22,
							["threatStyle"] = "GLOW",
							["enable"] = false,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 300,
						["pvpIcon"] = {
							["scale"] = 0.48,
						},
						["height"] = 45,
						["name"] = {
							["yOffset"] = 8,
							["text_format"] = "[namecolor][name]",
							["position"] = "TOP",
						},
						["classicon"] = {
							["enable"] = false,
						},
						["orientation"] = "LEFT",
						["buffs"] = {
							["numrows"] = 9,
							["sizeOverride"] = 28,
							["perrow"] = 9,
							["attachTo"] = "HEALTH",
							["countFont"] = "Sriracha",
							["yOffset"] = 10,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["xOffset"] = 0,
							["text_format"] = "[healthcolor][health:current]",
							["yOffset"] = -9,
						},
						["raidicon"] = {
							["yOffset"] = 0,
						},
					},
					["arena"] = {
						["debuffs"] = {
							["anchorPoint"] = "RIGHT",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["spacing"] = 20,
						["height"] = 50,
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
						},
						["width"] = 170,
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["iconSize"] = 32,
							["width"] = 250,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableTargetGlow"] = false,
						["width"] = 270,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["minimapBottom"] = true,
				["minimapBottomRight"] = true,
				["panelTransparency"] = true,
				["panels"] = {
					["BottomMiniPanel"] = "Coords",
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
				},
				["font"] = "Sriracha",
				["fontOutline"] = "OUTLINE",
				["leftChatPanel"] = false,
				["actionbar1"] = false,
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 2,
					["inheritGlobalFade"] = true,
					["flyoutDirection"] = "UP",
					["buttons"] = 4,
					["buttonsize"] = 47,
					["buttonsPerRow"] = 1,
					["backdropSpacing"] = 4,
					["alpha"] = 0.6,
				},
				["fontSize"] = 12,
				["movementModifier"] = "ALT",
				["bar8"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["flyoutDirection"] = "RIGHT",
					["showGrid"] = false,
					["backdrop"] = false,
					["buttonsize"] = 40,
				},
				["equippedItem"] = true,
				["useRangeColorText"] = true,
				["hotkeyTextPosition"] = "TOPLEFT",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "THICKOUTLINE",
				["bar4"] = {
					["point"] = "BOTTOMLEFT",
					["buttons"] = 8,
					["alpha"] = 0.6,
					["inheritGlobalFade"] = true,
					["backdrop"] = false,
					["buttonsize"] = 47,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 0,
					["flyoutDirection"] = "UP",
				},
				["notUsableColor"] = {
					["b"] = 0.215686274509804,
					["g"] = 0.215686274509804,
					["r"] = 0.215686274509804,
				},
				["noRangeColor"] = {
					["b"] = 0.129411764705882,
					["g"] = 0,
					["r"] = 1,
				},
				["chargeCooldown"] = true,
				["noPowerColor"] = {
					["b"] = 0.156862745098039,
					["g"] = 0.156862745098039,
					["r"] = 0.156862745098039,
				},
				["hideCooldownBling"] = true,
				["hotkeyTextYOffset"] = -4,
				["bar2"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["buttonsPerRow"] = 4,
					["alpha"] = 0.6,
					["buttonsize"] = 47,
				},
				["bar1"] = {
					["inheritGlobalFade"] = true,
					["flyoutDirection"] = "UP",
					["buttonsize"] = 47,
					["buttonsPerRow"] = 4,
					["backdropSpacing"] = 0,
					["alpha"] = 0.6,
				},
				["bar6"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["flyoutDirection"] = "RIGHT",
					["buttons"] = 9,
					["alpha"] = 0.6,
					["buttonsize"] = 30,
					["point"] = "TOPLEFT",
				},
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["flyoutDirection"] = "UP",
					["buttons"] = 12,
					["buttonsize"] = 60,
					["buttonsPerRow"] = 3,
					["backdropSpacing"] = 0,
					["alpha"] = 0.6,
				},
				["countTextYOffset"] = 0,
				["globalFadeAlpha"] = 0.93,
				["font"] = "Sriracha",
				["bar7"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["flyoutDirection"] = "LEFT",
					["showGrid"] = false,
					["backdrop"] = false,
					["buttonsize"] = 40,
					["point"] = "BOTTOMRIGHT",
				},
				["countTextXOffset"] = 3,
				["useDrawSwipeOnCharges"] = true,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["enabled"] = false,
					["buttonsize"] = 23,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["backdropSpacing"] = 4,
				},
				["backdropSpacingConverted"] = true,
			},
			["nameplates"] = {
				["cutaway"] = {
					["health"] = {
						["enabled"] = true,
						["fadeOutTime"] = 0.1,
						["lengthBeforeFade"] = 0.1,
					},
					["power"] = {
						["enabled"] = true,
						["fadeOutTime"] = 0.1,
						["lengthBeforeFade"] = 0.1,
					},
				},
				["clampToScreen"] = true,
				["statusbar"] = "Minimalist",
				["nonTargetTransparency"] = 0.3,
				["clickableHeight"] = 32,
				["plateSize"] = {
					["enemyWidth"] = 190,
					["personalWidth"] = 185,
				},
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["countFont"] = "Sriracha",
							["spacing"] = 4,
							["size"] = 28,
							["font"] = "Sriracha",
							["yOffset"] = 10,
						},
						["portrait"] = {
							["height"] = 24,
							["position"] = "LEFT",
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["fontSize"] = 13,
							["iconOffsetY"] = -1,
							["iconSize"] = 24,
							["height"] = 5,
							["font"] = "Sriracha",
							["width"] = 190,
						},
						["minor"] = true,
						["questIcon"] = {
							["size"] = 20,
						},
						["name"] = {
							["xOffset"] = 4,
							["fontSize"] = 12,
							["font"] = "Sriracha",
							["yOffset"] = -6,
						},
						["title"] = {
							["fontSize"] = 8,
							["xOffset"] = 3,
							["position"] = "BOTTOMRIGHT",
							["enable"] = true,
							["format"] = "[health:current]",
							["font"] = "Anime Ace",
							["yOffset"] = 19,
						},
						["buffs"] = {
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["health"] = {
							["height"] = 18,
							["text"] = {
								["font"] = "Anime Ace",
								["fontSize"] = 8,
							},
						},
						["level"] = {
							["xOffset"] = 5,
							["fontSize"] = 10,
							["font"] = "Anime Ace",
							["yOffset"] = -5,
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style2",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["power"] = {
							["displayAltPower"] = false,
						},
						["showTitle"] = false,
						["raidTargetIndicator"] = {
							["position"] = "TOP",
						},
						["name"] = {
							["fontSize"] = 14,
							["position"] = "CENTER",
							["fontOutline"] = "NONE",
							["xOffset"] = 1,
							["format"] = "[namecolor][name]",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["health"] = {
							["enable"] = false,
							["text"] = {
								["enable"] = false,
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
							["width"] = 120,
						},
						["title"] = {
							["fontSize"] = 12,
							["position"] = "CENTER",
							["fontOutline"] = "NONE",
							["enable"] = true,
							["format"] = "[namecolor][npctitle][guild]",
							["font"] = "Sriracha",
							["yOffset"] = -13,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["spacing"] = 0,
							["fontOutline"] = "NONE",
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["level"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["fontSize"] = 10,
							["iconOffsetY"] = -1,
							["yOffset"] = -30,
							["iconOffsetX"] = 4,
							["hideTime"] = true,
							["height"] = 15,
							["fontOutline"] = "NONE",
							["iconSize"] = 17,
							["textPosition"] = "ONBAR",
							["font"] = "Sriracha",
							["width"] = 120,
						},
						["nazjatarFollowerXP"] = {
							["color"] = {
								["b"] = 0.9215686274509803,
								["g"] = 0.2549019607843137,
								["r"] = 0.2980392156862745,
							},
							["yOffset"] = 60,
						},
					},
					["PLAYER"] = {
						["name"] = {
							["format"] = "[friendlytitle]",
						},
						["castbar"] = {
							["font"] = "Sriracha",
						},
						["health"] = {
							["width"] = 120,
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["power"] = {
							["enable"] = false,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["size"] = 24,
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["name"] = {
							["fontSize"] = 8,
							["format"] = "[namecolor][name]",
							["font"] = "Anime Ace",
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
						},
						["health"] = {
							["text"] = {
								["font"] = "Anime Ace",
								["fontSize"] = 8,
							},
						},
						["buffs"] = {
							["countFont"] = "Sriracha",
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["yOffset"] = 0,
						},
						["title"] = {
							["fontSize"] = 10,
							["position"] = "BOTTOMRIGHT",
							["enable"] = true,
							["format"] = "[namecolor]<[guild]>",
							["font"] = "Sriracha",
							["yOffset"] = 10,
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
					},
					["FRIENDLY_PLAYER"] = {
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["width"] = 120,
							["yOffset"] = 10,
						},
						["nameOnly"] = true,
						["raidTargetIndicator"] = {
							["position"] = "TOP",
						},
						["title"] = {
							["fontSize"] = 12,
							["position"] = "CENTER",
							["enable"] = true,
							["format"] = "[namecolor][guild]",
							["fontOutline"] = "NONE",
							["font"] = "Sriracha",
						},
						["name"] = {
							["xOffset"] = 1,
							["fontSize"] = 14,
							["font"] = "Sriracha",
							["fontOutline"] = "NONE",
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["spacing"] = 0,
							["fontOutline"] = "NONE",
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["pvpclassificationindicator"] = {
							["enable"] = true,
						},
					},
				},
				["smoothbars"] = true,
				["font"] = "Sriracha",
				["colors"] = {
					["castColor"] = {
						["g"] = 0.8117647058823529,
					},
					["selection"] = {
						nil, -- [1]
						{
							["g"] = 0.901960784313726,
							["b"] = 0.615686274509804,
						}, -- [2]
					},
					["castNoInterruptColor"] = {
						["b"] = 0.2509803921568627,
						["g"] = 0.2509803921568627,
						["r"] = 0.7803921568627451,
					},
				},
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["loadDistance"] = 50,
				["motionType"] = "OVERLAP",
				["visibility"] = {
					["friendly"] = {
						["totems"] = true,
						["guardians"] = true,
						["pets"] = true,
						["minions"] = true,
					},
					["enemy"] = {
						["totems"] = true,
						["guardians"] = true,
						["pets"] = true,
						["minions"] = true,
					},
				},
				["filters"] = {
					["ElvUI_Target_2"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
				},
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["cooldown"] = {
				["fonts"] = {
					["enable"] = true,
					["font"] = "Sriracha",
					["fontSize"] = 14,
				},
				["expiringColor"] = {
					["g"] = 0.333333333333333,
					["b"] = 0.431372549019608,
				},
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
		},
		["Vedrixa - Moon Guard"] = {
			["databars"] = {
				["reputation"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["azerite"] = {
					["enable"] = false,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["font"] = "AnimeAce Bold",
					["textYoffset"] = 10,
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 10,
					["width"] = 414,
				},
				["honor"] = {
					["enable"] = false,
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["stickyFrames"] = false,
				["backdropcolor"] = {
					["b"] = 0.025,
					["g"] = 0.025,
					["r"] = 0.025,
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["minimap"] = {
					["benikuiStyle"] = false,
					["locationFont"] = "Canted Comic",
					["locationText"] = "HIDE",
					["size"] = 198,
				},
				["decimalLength"] = 2,
				["font"] = "Canted Comic",
				["altPowerBar"] = {
					["statusBar"] = "BuiFlat",
					["fontSize"] = 11,
					["font"] = "Expressway",
				},
				["backdropfadecolor"] = {
					["a"] = 1,
					["b"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["r"] = 0.0549019607843137,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["objectiveFrameHeight"] = 750,
				["bottomPanel"] = false,
			},
			["bags"] = {
				["countFont"] = "Canted Comic",
				["itemLevelFont"] = "Canted Comic",
				["itemLevelFontOutline"] = "OUTLINE",
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 10,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Canted Comic",
				["panelColor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Canted Comic",
				["panelHeight"] = 200,
				["timeStampFormat"] = "%H:%M ",
				["tapFontSize"] = 10,
				["panelColorConverted"] = true,
			},
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["hoursIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["minutesIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["daysIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["secondsIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["position"] = "TOP",
				["statusbarTexture"] = "BuiFlat",
				["showText"] = true,
				["staticColor"] = {
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["buiStyle"] = false,
					["notifiers"] = {
						["enable"] = false,
					},
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-6,269",
				["BuffsMover"] = "TOP,ElvUIParent,TOP,0,-75",
				["TargetPowerBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-413,211",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,39,204",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,133,-82",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-38,204",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,664",
				["PlayerPortraitMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,453,-25",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,0",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,2",
				["ElvUF_TargetTargetMover"] = "TOP,ElvUIParent,TOP,256,-444",
				["LossControlMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,431",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-413,3",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-59,-4",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-273,-4",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1055,480",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,217,140",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["RequestStopButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,28",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-34",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-217,140",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,650",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-272,-4",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,-6,287",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,192",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,21",
				["ElvUF_TargetMover"] = "TOP,ElvUIParent,TOP,169,-22",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,645",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,150",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,109",
				["BelowMinimapContainerMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-265,221",
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-380,-419",
				["ElvUF_PlayerMover"] = "TOP,ElvUIParent,TOP,-169,-22",
				["PlayerPowerBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,413,219",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,68",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,413,3",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-56,346",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,280",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,226",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-303",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,28,223",
				["TargetPortraitMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-453,-25",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,50",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-56,-397",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,640",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,9,0",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,23",
			},
			["tooltip"] = {
				["textFontSize"] = 10,
				["fontSize"] = 10,
				["healthBar"] = {
					["fontSize"] = 9,
					["font"] = "Canted Comic",
				},
				["smallTextFontSize"] = 10,
				["font"] = "Canted Comic",
				["headerFontSize"] = 10,
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
			["unitframe"] = {
				["fontSize"] = 11,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["health"] = {
						["b"] = 0.105882352941176,
						["g"] = 0.874509803921569,
						["r"] = 0.219607843137255,
					},
					["castReactionColor"] = true,
					["transparentAurabars"] = true,
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0.003921568627451,
						["g"] = 0.003921568627451,
						["r"] = 0.14901960784314,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["font"] = "Canted Comic",
				["statusbar"] = "BuiFlat",
				["units"] = {
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["size"] = 12,
							["attachTo"] = "InfoPanel",
							["yOffset"] = 15,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["enable"] = false,
							["position"] = "LEFT",
							["xOffset"] = 2,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Canted Comic",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 2,
							["yOffset"] = 16,
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["position"] = "TOPLEFT",
						},
						["health"] = {
							["xOffset"] = 0,
							["yOffset"] = -2,
							["text_format"] = "[health:current-percent]",
							["position"] = "RIGHT",
						},
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["height"] = 40,
						["verticalSpacing"] = 30,
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 18,
							["yOffset"] = -1,
							["xOffset"] = 0,
							["width"] = 60,
						},
						["targetsGroup"] = {
							["anchorPoint"] = "RIGHT",
							["height"] = 16,
							["yOffset"] = -12,
							["xOffset"] = 1,
							["width"] = 70,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 2,
							["iconAttached"] = false,
						},
						["height"] = 58,
						["buffs"] = {
							["xOffset"] = 16,
							["anchorPoint"] = "CENTER",
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 210,
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Canted Comic",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["size"] = 20,
							["yOffset"] = 4,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["health"] = {
							["yOffset"] = 1,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["position"] = "RIGHT",
							["enable"] = true,
							["size"] = 10,
							["xOffset"] = -2,
							["yOffset"] = 0,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["enable"] = false,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["castbar"] = {
							["height"] = 16,
							["enable"] = false,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 14,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 2,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["position"] = "RIGHT",
							["xOffset"] = 4,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachedWidth"] = 240,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 16,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 8,
							["yOffset"] = -25,
							["text_format"] = "",
							["position"] = "RIGHT",
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["orientation"] = "LEFT",
						["height"] = 34,
						["buffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 10,
							["icon"] = false,
							["width"] = 240,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["rdebuffs"] = {
							["size"] = 20,
							["font"] = "Canted Comic",
							["fontOutline"] = "OUTLINE",
							["yOffset"] = 12,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["health"] = {
							["yOffset"] = 0,
							["position"] = "CENTER",
						},
						["height"] = 40,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 12,
							["yOffset"] = 0,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["detachedWidth"] = 240,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["xOffset"] = 0,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 14,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 0,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["bgUseBarTexture"] = false,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 16,
							["enable"] = true,
							["transparent"] = true,
						},
						["CombatIcon"] = {
							["anchorPoint"] = "TOPLEFT",
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["fontSize"] = 14,
							["noDuration"] = false,
							["enable"] = true,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["detachedWidth"] = 334,
							["spacing"] = -1,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["enable"] = false,
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["width"] = 110,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 10,
				["font"] = "Canted Comic",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["left"] = "Spec Switch (BenikUI)",
						["middle"] = "Bags",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttons"] = 8,
					["buttonspacing"] = 0,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 42,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttons"] = 8,
					["buttonspacing"] = 0,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 4,
					["buttonsize"] = 42,
				},
				["bar1"] = {
					["buttons"] = 8,
					["buttonspacing"] = 0,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 0,
					["buttonsize"] = 42,
				},
				["bar5"] = {
					["buttonspacing"] = 0,
					["buttonsPerRow"] = 1,
					["buttonsize"] = 24,
					["buttons"] = 9,
				},
				["font"] = "Canted Comic",
				["fontOutline"] = "OUTLINE",
				["bar4"] = {
					["buttonspacing"] = 0,
					["buttonsize"] = 24,
					["backdrop"] = false,
					["buttons"] = 9,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdropSpacing"] = 4,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 23,
					["backdrop"] = false,
				},
				["backdropSpacingConverted"] = true,
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["nameplates"] = {
				["statusbar"] = "BuiFlat",
				["font"] = "Canted Comic",
				["displayStyle"] = "BLIZZARD",
				["fontSize"] = 10,
				["stackFont"] = "Canted Comic Bold",
				["healthFont"] = "Canted Comic Bold",
				["classbar"] = {
					["attachTo"] = "PLAYER",
					["scale"] = 1.6,
				},
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["alwaysShow"] = true,
					},
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["shadows"] = false,
					["hideStyle"] = true,
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["width"] = 414,
						["backdrop"] = true,
						["transparent"] = false,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["countFontSize"] = 10,
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["countFontSize"] = 10,
					["size"] = 30,
				},
				["font"] = "Canted Comic",
			},
		},
		["Zandroh - Tichondrius"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["azerite"] = {
					["enable"] = false,
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["experience"] = {
					["textFormat"] = "CURREM",
					["width"] = 1819,
					["font"] = "Anime Ace",
					["orientation"] = "HORIZONTAL",
					["height"] = 12,
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["honor"] = {
					["enable"] = false,
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 9,
					["width"] = 222,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["enable"] = false,
					["spacing"] = 8,
					["size"] = 50,
					["growthDirection"] = "HORIZONTAL",
				},
				["font"] = "Sriracha",
				["stickyFrames"] = false,
				["bonusObjectivePosition"] = "AUTO",
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["locationText"] = "HIDE",
					["size"] = 234,
					["icons"] = {
						["mail"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["benikuiStyle"] = false,
				},
				["decimalLength"] = 2,
				["talkingHeadFrameBackdrop"] = true,
				["altPowerBar"] = {
					["statusBar"] = "ElvUI Blank",
					["font"] = "Sriracha",
				},
				["backdropfadecolor"] = {
					["a"] = 0.80527076125145,
					["b"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["r"] = 0.0549019607843137,
				},
				["objectiveFrameHeight"] = 400,
				["talkingHeadFrameScale"] = 1,
				["bottomPanel"] = false,
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["growthDirection"] = "LEFT_UP",
					["wrapAfter"] = 15,
					["horizontalSpacing"] = 2,
					["size"] = 26,
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["countFontSize"] = 12,
					["growthDirection"] = "RIGHT_UP",
					["durationFontSize"] = 12,
					["size"] = 26,
					["maxWraps"] = 1,
					["horizontalSpacing"] = 2,
					["wrapAfter"] = 15,
				},
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["secondsIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["minutesIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["daysIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["hoursIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["showText"] = true,
				["statusbarTexture"] = "BuiFlat",
				["position"] = "TOP",
				["staticColor"] = {
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,364",
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-390",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,203,346",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,2",
				["BuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-221,6",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-1,293",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-1,293",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-133,303",
				["ElvUF_TargetAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-273,220",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,342",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,4",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,241",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,9,144",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,342",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,0",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,215,33",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["ElvUF_PlayerAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,273,218",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-419",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["ElvUF_FocusAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,3,425",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,215,103",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-248,-14",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,215,68",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,-4,174",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-245",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-3,-36",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-216,68",
				["ReputationBarMover"] = "TOP,ElvUIParent,TOP,1,-11",
				["ElvNP_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,119,292",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,239",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,403",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,-9",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,251,-81",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-216,33",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,131,303",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-216,103",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,852,301",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-271,242",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,481,190",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,221,6",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,5",
			},
			["tooltip"] = {
				["cursorAnchorX"] = 25,
				["healthBar"] = {
					["height"] = 12,
					["fontSize"] = 8,
					["font"] = "Sriracha",
				},
				["fontSize"] = 12,
				["headerFontSize"] = 14,
				["textFontSize"] = 10,
				["font"] = "Sriracha",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["cursorAnchorY"] = -50,
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["smallTextFontSize"] = 10,
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["hideStyle"] = true,
					["shadows"] = false,
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 414,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["font"] = "Sriracha",
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["frameGlow"] = {
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
						},
					},
					["customhealthbackdrop"] = true,
					["useDeadBackdrop"] = true,
					["transparentAurabars"] = true,
					["health"] = {
						["b"] = 0.0588235294117647,
						["g"] = 0.513725490196078,
						["r"] = 0,
					},
					["castReactionColor"] = true,
					["health_backdrop"] = {
						["b"] = 0,
						["g"] = 0.0117647058823529,
						["r"] = 0.109803921568627,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0,
						["g"] = 0.00392156862745098,
						["r"] = 0.109803921568627,
					},
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "Minimalist",
				["smoothbars"] = true,
				["thinBorders"] = true,
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["xOffset"] = 18,
							["sizeOverride"] = 30,
							["anchorPoint"] = "TOP",
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
							["duration"] = {
								["position"] = "RIGHT",
							},
							["fontOutline"] = "OUTLINE",
							["xOffset"] = 69,
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["enable"] = true,
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_UP",
						["groupBy"] = "MTMA",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["damager"] = false,
							["attachTo"] = "Power",
							["position"] = "CENTER",
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 170,
						["health"] = {
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = false,
						},
						["verticalSpacing"] = 40,
						["height"] = 30,
						["buffs"] = {
							["numrows"] = 2,
							["sizeOverride"] = 24,
							["enable"] = true,
							["yOffset"] = -1,
							["anchorPoint"] = "BOTTOM",
							["perrow"] = 7,
							["priority"] = "Blacklist,Personal",
							["attachTo"] = "POWER",
							["xOffset"] = 72,
						},
						["orientation"] = "MIDDLE",
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
					},
					["player"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["power"] = {
							["height"] = 22,
							["attachTextTo"] = "InfoPanel",
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["height"] = 25,
							["insideInfoPanel"] = false,
							["width"] = 200,
						},
						["name"] = {
							["text_format"] = "[name] the Noble",
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["bgUseBarTexture"] = false,
							["frequentUpdates"] = true,
							["yOffset"] = -4,
						},
						["height"] = 82,
						["buffs"] = {
							["noDuration"] = false,
							["sizeOverride"] = 26,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["height"] = 14,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "Blacklist,blockNoDuration,Boss,RaidDebuffs,PlayerBuffs,nonPersonal,CastByPlayers",
							["maxDuration"] = 0,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["enable"] = false,
							["iconSize"] = 32,
							["width"] = 270,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableTargetGlow"] = false,
						["width"] = 270,
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "BOTTOMRIGHT",
							["xOffset"] = 0,
							["size"] = 12,
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "Sriracha",
							["yOffset"] = 25,
							["size"] = 30,
						},
						["numGroups"] = 8,
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["width"] = 92,
						["visibility"] = "[@raid6,noexists] hide;show",
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["width"] = 246,
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
					},
					["focus"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
							["attachTo"] = "BUFFS",
							["perrow"] = 8,
						},
						["disableTargetGlow"] = true,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current]",
							["height"] = 22,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 20,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["castbar"] = {
							["iconSize"] = 42,
							["insideInfoPanel"] = false,
							["height"] = 25,
							["width"] = 200,
						},
						["height"] = 82,
						["buffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 26,
							["maxDuration"] = 0,
							["perrow"] = 8,
						},
						["orientation"] = "LEFT",
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["enable"] = true,
							["height"] = 30,
						},
					},
					["target"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["castbar"] = {
							["height"] = 25,
							["insideInfoPanel"] = false,
							["width"] = 200,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["height"] = 22,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
						},
						["height"] = 82,
						["orientation"] = "LEFT",
						["buffs"] = {
							["enable"] = false,
							["sizeOverride"] = 26,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "blockNoDuration,Blacklist,Personal,PlayerBuffs,Boss,RaidDebuffs",
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["width"] = 270,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = 2,
							["enable"] = false,
							["yOffset"] = 0,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["font"] = "Sriracha",
				["minimapBottom"] = true,
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "Clique",
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttons"] = 12,
					["visibility"] = "[petbattle] hide; show",
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 0,
					["buttonsize"] = 34,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsize"] = 34,
				},
				["backdropSpacingConverted"] = true,
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 34,
					["backdropSpacing"] = 0,
					["visibility"] = "[petbattle] hide; show",
				},
				["bar1"] = {
					["backdropSpacing"] = 0,
					["buttonsize"] = 34,
				},
				["fontSize"] = 12,
				["bar5"] = {
					["buttonsize"] = 34,
					["buttonsPerRow"] = 12,
					["visibility"] = "[petbattle] hide; show",
					["buttons"] = 12,
				},
				["font"] = "Sriracha",
				["useRangeColorText"] = true,
				["hotkeyTextPosition"] = "TOPLEFT",
				["fontOutline"] = "OUTLINE",
				["hotkeyTextXOffset"] = 2,
				["hotkeyTextYOffset"] = -2,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["buttonsize"] = 23,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["backdropSpacing"] = 4,
				},
				["bar4"] = {
					["heightMult"] = 3,
					["backdropSpacing"] = 0,
					["backdrop"] = false,
					["buttonsPerRow"] = 12,
					["visibility"] = "[petbattle] hide; show",
					["buttonsize"] = 34,
				},
			},
			["nameplates"] = {
				["nonTargetTransparency"] = 0.3,
				["clickableHeight"] = 32,
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["name"] = {
							["fontSize"] = 8,
							["font"] = "Anime Ace",
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["textPosition"] = "ONBAR",
						},
						["level"] = {
							["xOffset"] = 5,
						},
						["buffs"] = {
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
							},
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["yOffset"] = 10,
							["width"] = 120,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["enable"] = false,
							["fontSize"] = 10,
							["font"] = "Sriracha",
							["xOffset"] = 1,
						},
						["power"] = {
							["displayAltPower"] = false,
						},
						["level"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["spacing"] = 0,
							["fontOutline"] = "NONE",
							["enable"] = false,
							["font"] = "Sriracha",
							["countFont"] = "Sriracha",
							["size"] = 20,
						},
						["title"] = {
							["format"] = "[guild]",
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Sriracha",
								["format"] = "[namecolor][name:long]",
							},
							["width"] = 120,
						},
					},
					["PLAYER"] = {
						["useStaticPosition"] = true,
						["power"] = {
							["enable"] = false,
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["health"] = {
							["text"] = {
								["enable"] = true,
								["fontSize"] = 10,
								["font"] = "Sriracha",
								["format"] = "[name]",
							},
							["width"] = 120,
						},
						["castbar"] = {
							["iconSize"] = 20,
							["yOffset"] = 0,
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["enable"] = false,
							["font"] = "Sriracha",
							["spacing"] = 0,
							["size"] = 20,
							["countFont"] = "Sriracha",
							["fontOutline"] = "NONE",
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs",
							},
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["name"] = {
							["xOffset"] = 1,
							["fontSize"] = 10,
							["font"] = "Sriracha",
							["yOffset"] = -10,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
								["format"] = "",
							},
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["yOffset"] = 0,
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
						},
						["name"] = {
							["fontSize"] = 8,
							["font"] = "Anime Ace",
							["format"] = "[name]",
						},
					},
					["FRIENDLY_PLAYER"] = {
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["title"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["yOffset"] = 10,
							["width"] = 120,
						},
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["spacing"] = 0,
							["fontOutline"] = "NONE",
							["enable"] = false,
							["font"] = "Sriracha",
							["countFont"] = "Sriracha",
							["size"] = 20,
						},
						["name"] = {
							["fontSize"] = 10,
							["xOffset"] = 1,
							["format"] = "[name]",
							["font"] = "Sriracha",
							["enable"] = false,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Sriracha",
								["format"] = "[namecolor][name:long]",
							},
							["width"] = 120,
						},
					},
				},
				["statusbar"] = "Minimalist",
				["motionType"] = "OVERLAP",
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["loadDistance"] = 43,
				["clampToScreen"] = true,
				["font"] = "Sriracha",
			},
			["abm"] = {
				["targetSpace"] = 2,
				["player"] = true,
				["playerSpace"] = 2,
				["targetw"] = 200,
				["target"] = true,
				["playerw"] = 200,
				["focus"] = true,
				["focusw"] = 200,
			},
			["bags"] = {
				["countFontSize"] = 12,
				["countFont"] = "Sriracha",
				["itemLevelFont"] = "Sriracha",
				["bagSize"] = 42,
				["countFontOutline"] = "OUTLINE",
				["bankSize"] = 42,
				["itemLevelFontSize"] = 12,
				["bankWidth"] = 474,
				["itemLevelFontOutline"] = "OUTLINE",
				["scrapIcon"] = true,
				["itemLevelCustomColorEnable"] = true,
				["sortInverted"] = false,
				["bagWidth"] = 474,
			},
			["chat"] = {
				["fontSize"] = 12,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Sriracha",
				["panelColor"] = {
					["a"] = 0.84548881649971,
					["b"] = 0.117647058823529,
					["g"] = 0.117647058823529,
					["r"] = 0.117647058823529,
				},
				["timeStampFormat"] = "%I:%M %p ",
				["font"] = "Sriracha",
				["fontOutline"] = "OUTLINE",
				["panelHeight"] = 236,
				["panelColorConverted"] = true,
				["editBoxPosition"] = "ABOVE_CHAT",
				["tapFontSize"] = 12,
				["panelWidth"] = 470,
			},
		},
		["Grandh - Tichondrius"] = {
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["v11NamePlateReset"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["F"] = {
			["databars"] = {
				["reputation"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["azerite"] = {
					["enable"] = false,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["font"] = "AnimeAce Bold",
					["width"] = 414,
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["honor"] = {
					["enable"] = false,
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["stickyFrames"] = false,
				["backdropcolor"] = {
					["b"] = 0.025,
					["g"] = 0.025,
					["r"] = 0.025,
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["minimap"] = {
					["benikuiStyle"] = false,
					["locationFont"] = "Canted Comic",
					["locationText"] = "HIDE",
					["size"] = 198,
				},
				["decimalLength"] = 2,
				["font"] = "Canted Comic",
				["altPowerBar"] = {
					["statusBar"] = "BuiFlat",
					["fontSize"] = 11,
					["font"] = "Expressway",
				},
				["backdropfadecolor"] = {
					["a"] = 1,
					["b"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["r"] = 0.0549019607843137,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["bottomPanel"] = false,
				["objectiveFrameHeight"] = 750,
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
			},
			["bags"] = {
				["countFont"] = "Canted Comic",
				["itemLevelFont"] = "Canted Comic",
				["itemLevelFontOutline"] = "OUTLINE",
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 10,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Canted Comic",
				["panelColor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Canted Comic",
				["panelHeight"] = 200,
				["panelColorConverted"] = true,
				["tapFontSize"] = 10,
				["timeStampFormat"] = "%H:%M ",
			},
			["VAT"] = {
				["enableStaticColor"] = true,
				["colors"] = {
					["expireIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["secondsIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["minutesIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["daysIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["hoursIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
				},
				["spacing"] = -6,
				["showText"] = true,
				["statusbarTexture"] = "BuiFlat",
				["position"] = "TOP",
				["staticColor"] = {
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-6,269",
				["BuffsMover"] = "TOP,ElvUIParent,TOP,0,-75",
				["TargetPowerBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-413,211",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,39,204",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,133,-82",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-38,204",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,664",
				["PlayerPortraitMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,453,-25",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,0",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,2",
				["ElvUF_TargetTargetMover"] = "TOP,ElvUIParent,TOP,256,-444",
				["LossControlMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,431",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-413,3",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-59,-4",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-273,-4",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1055,480",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,217,140",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["RequestStopButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,28",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-34",
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-380,-419",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,650",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-272,-4",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,-6,287",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,192",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,21",
				["ElvUF_TargetMover"] = "TOP,ElvUIParent,TOP,169,-22",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,645",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,150",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,109",
				["BelowMinimapContainerMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-265,221",
				["ElvUF_PlayerMover"] = "TOP,ElvUIParent,TOP,-169,-22",
				["PlayerPowerBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,413,219",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-56,346",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,68",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,413,3",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,280",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["TargetPortraitMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-453,-25",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,28,223",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-303",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,50",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-56,-397",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,226",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-217,140",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,640",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,9,0",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,23",
			},
			["tooltip"] = {
				["textFontSize"] = 10,
				["fontSize"] = 10,
				["healthBar"] = {
					["fontSize"] = 9,
					["font"] = "Canted Comic",
				},
				["headerFontSize"] = 10,
				["font"] = "Canted Comic",
				["smallTextFontSize"] = 10,
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["countFontSize"] = 10,
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["countFontSize"] = 10,
					["size"] = 30,
				},
				["font"] = "Canted Comic",
			},
			["unitframe"] = {
				["fontSize"] = 11,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["transparentAurabars"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["b"] = 0.105882352941176,
						["g"] = 0.874509803921569,
						["r"] = 0.219607843137255,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0.003921568627451,
						["g"] = 0.003921568627451,
						["r"] = 0.14901960784314,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["font"] = "Canted Comic",
				["statusbar"] = "BuiFlat",
				["units"] = {
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["yOffset"] = 15,
							["attachTo"] = "InfoPanel",
							["size"] = 12,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["xOffset"] = 2,
							["position"] = "LEFT",
							["enable"] = false,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Canted Comic",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["targetsGroup"] = {
							["anchorPoint"] = "RIGHT",
							["height"] = 16,
							["yOffset"] = -12,
							["xOffset"] = 1,
							["width"] = 70,
						},
						["health"] = {
							["xOffset"] = 0,
							["position"] = "RIGHT",
							["text_format"] = "[health:current-percent]",
							["yOffset"] = -2,
						},
						["verticalSpacing"] = 30,
						["height"] = 40,
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 18,
							["yOffset"] = -1,
							["xOffset"] = 0,
							["width"] = 60,
						},
						["name"] = {
							["xOffset"] = 2,
							["position"] = "TOPLEFT",
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["yOffset"] = 16,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconAttached"] = false,
							["iconXOffset"] = 2,
						},
						["height"] = 58,
						["buffs"] = {
							["xOffset"] = 16,
							["anchorPoint"] = "CENTER",
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 210,
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Canted Comic",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["yOffset"] = 4,
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["roleIcon"] = {
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["enable"] = true,
							["size"] = 10,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["health"] = {
							["yOffset"] = 1,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["enable"] = false,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["castbar"] = {
							["height"] = 16,
							["enable"] = false,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["position"] = "RIGHT",
							["xOffset"] = 4,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachedWidth"] = 240,
						},
						["castbar"] = {
							["iconXOffset"] = 10,
							["iconPosition"] = "RIGHT",
							["icon"] = false,
							["width"] = 240,
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 16,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["name"] = {
							["xOffset"] = 8,
							["position"] = "RIGHT",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["orientation"] = "LEFT",
						["height"] = 34,
						["buffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["rdebuffs"] = {
							["yOffset"] = 12,
							["font"] = "Canted Comic",
							["fontOutline"] = "OUTLINE",
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["size"] = 12,
						},
						["height"] = 40,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["health"] = {
							["position"] = "CENTER",
							["yOffset"] = 0,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 14,
							},
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 16,
							["enable"] = true,
							["transparent"] = true,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["detachedWidth"] = 334,
							["spacing"] = -1,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["bgUseBarTexture"] = false,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["detachedWidth"] = 240,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["xOffset"] = 0,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["sizeOverride"] = 26,
							["enable"] = true,
							["noDuration"] = false,
							["fontSize"] = 14,
							["yOffset"] = 1,
						},
						["CombatIcon"] = {
							["anchorPoint"] = "TOPLEFT",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["enable"] = false,
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["width"] = 110,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 10,
				["font"] = "Canted Comic",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttons"] = 8,
					["buttonspacing"] = 0,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 42,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttons"] = 8,
					["buttonspacing"] = 0,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 4,
					["buttonsize"] = 42,
				},
				["bar1"] = {
					["buttons"] = 8,
					["buttonspacing"] = 0,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 0,
					["buttonsize"] = 42,
				},
				["bar5"] = {
					["buttonspacing"] = 0,
					["buttonsPerRow"] = 1,
					["buttonsize"] = 24,
					["buttons"] = 9,
				},
				["font"] = "Canted Comic",
				["fontOutline"] = "OUTLINE",
				["backdropSpacingConverted"] = true,
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["buttonsize"] = 23,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["backdropSpacing"] = 4,
				},
				["bar4"] = {
					["buttonspacing"] = 0,
					["backdrop"] = false,
					["buttonsize"] = 24,
					["buttons"] = 9,
				},
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["hideStyle"] = true,
					["shadows"] = false,
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 414,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
			},
			["nameplates"] = {
				["font"] = "Canted Comic",
				["statusbar"] = "BuiFlat",
				["displayStyle"] = "BLIZZARD",
				["fontSize"] = 10,
				["stackFont"] = "Canted Comic Bold",
				["healthFont"] = "Canted Comic Bold",
				["classbar"] = {
					["attachTo"] = "PLAYER",
					["scale"] = 1.6,
				},
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["alwaysShow"] = true,
					},
				},
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
		},
		["Byanir - Moon Guard"] = {
			["databars"] = {
				["reputation"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["honor"] = {
					["enable"] = false,
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["font"] = "AnimeAce Bold",
					["width"] = 414,
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["azerite"] = {
					["enable"] = false,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["backdropcolor"] = {
					["r"] = 0.025,
					["g"] = 0.025,
					["b"] = 0.025,
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["objectiveFrameAutoHide"] = false,
				["minimap"] = {
					["locationFont"] = "Canted Comic",
					["locationText"] = "HIDE",
					["size"] = 215,
				},
				["decimalLength"] = 2,
				["font"] = "Canted Comic",
				["altPowerBar"] = {
					["statusBar"] = "BuiFlat",
					["fontSize"] = 11,
					["font"] = "Expressway",
				},
				["backdropfadecolor"] = {
					["a"] = 1,
					["r"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["b"] = 0.0549019607843137,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
				["bottomPanel"] = false,
				["objectiveFrameHeight"] = 750,
			},
			["bags"] = {
				["countFont"] = "Canted Comic",
				["itemLevelFont"] = "Canted Comic",
				["itemLevelFontOutline"] = "OUTLINE",
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["hideTutorial"] = true,
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["countFontSize"] = 10,
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["countFontSize"] = 10,
					["size"] = 30,
				},
				["font"] = "Canted Comic",
			},
			["VAT"] = {
				["enableStaticColor"] = true,
				["colors"] = {
					["expireIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["minutesIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["daysIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["secondsIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
				},
				["spacing"] = -6,
				["showText"] = true,
				["statusbarTexture"] = "BuiFlat",
				["position"] = "TOP",
				["staticColor"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["buiStyle"] = false,
					["notifiers"] = {
						["enable"] = false,
					},
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-217,140",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,3,180",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,155,372",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,85",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,200",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,2",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,664",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,372",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,21",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,116",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,31",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,206",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-303",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,324",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,278",
				["BelowMinimapContainerMover"] = "TOP,ElvUIParent,TOP,0,-192",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-438,2",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,232",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,438,2",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-56,-243",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-226,-4",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,831,141",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,217,140",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-56,346",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-56,-397",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-34",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,400,-4",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
			},
			["tooltip"] = {
				["textFontSize"] = 10,
				["fontSize"] = 10,
				["healthBar"] = {
					["font"] = "Canted Comic",
					["fontSize"] = 9,
				},
				["headerFontSize"] = 10,
				["font"] = "Canted Comic",
				["smallTextFontSize"] = 10,
			},
			["chat"] = {
				["fontSize"] = 10,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Canted Comic",
				["panelColor"] = {
					["a"] = 0.75,
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Canted Comic",
				["panelHeight"] = 150,
				["panelColorConverted"] = true,
				["tapFontSize"] = 10,
				["timeStampFormat"] = "%H:%M ",
			},
			["unitframe"] = {
				["fontSize"] = 11,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["castClassColor"] = true,
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["r"] = 0.0862745098039216,
						["g"] = 0.0862745098039216,
						["b"] = 0.0862745098039216,
					},
					["transparentAurabars"] = true,
					["useDeadBackdrop"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["r"] = 0.219607843137255,
						["g"] = 0.874509803921569,
						["b"] = 0.105882352941176,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.14901960784314,
						["g"] = 0.003921568627451,
						["b"] = 0.003921568627451,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["statusbar"] = "BuiFlat",
				["font"] = "Canted Comic",
				["units"] = {
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["enable"] = false,
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["width"] = 110,
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconAttached"] = false,
							["iconXOffset"] = 2,
						},
						["height"] = 58,
						["buffs"] = {
							["xOffset"] = 16,
							["anchorPoint"] = "CENTER",
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 210,
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Canted Comic",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["yOffset"] = 4,
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["roleIcon"] = {
							["position"] = "RIGHT",
							["enable"] = true,
							["yOffset"] = 0,
							["xOffset"] = -2,
							["size"] = 10,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["health"] = {
							["yOffset"] = 1,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["enable"] = false,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 16,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 14,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 10,
							["icon"] = false,
							["width"] = 240,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["detachFromFrame"] = true,
							["detachedWidth"] = 240,
							["height"] = 6,
							["text_format"] = "[powercolor][power:current-percent]",
							["xOffset"] = 4,
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["orientation"] = "LEFT",
						["height"] = 34,
						["buffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["name"] = {
							["xOffset"] = 8,
							["position"] = "RIGHT",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["rdebuffs"] = {
							["yOffset"] = 12,
							["font"] = "Canted Comic",
							["fontOutline"] = "OUTLINE",
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["size"] = 12,
						},
						["height"] = 40,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["health"] = {
							["position"] = "CENTER",
							["yOffset"] = 0,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["attachTextTo"] = "InfoPanel",
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["detachedWidth"] = 240,
							["height"] = 6,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["xOffset"] = 2,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 14,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["fontSize"] = 14,
							["noDuration"] = false,
							["enable"] = true,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["yOffset"] = 15,
							["attachTo"] = "InfoPanel",
							["size"] = 12,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["xOffset"] = 2,
							["position"] = "LEFT",
							["enable"] = false,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Canted Comic",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["targetsGroup"] = {
							["anchorPoint"] = "RIGHT",
							["height"] = 16,
							["width"] = 70,
							["xOffset"] = 1,
							["yOffset"] = -12,
						},
						["name"] = {
							["xOffset"] = 2,
							["position"] = "TOPLEFT",
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["yOffset"] = 16,
						},
						["verticalSpacing"] = 30,
						["height"] = 40,
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 18,
							["width"] = 60,
							["xOffset"] = 0,
							["yOffset"] = -1,
						},
						["health"] = {
							["xOffset"] = 0,
							["position"] = "RIGHT",
							["text_format"] = "[health:current-percent]",
							["yOffset"] = -2,
						},
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 10,
				["font"] = "Canted Comic",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["left"] = "Spec Switch (BenikUI)",
						["middle"] = "Bags",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttons"] = 8,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 42,
				},
				["bar6"] = {
					["enabled"] = true,
					["backdrop"] = true,
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttons"] = 8,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 4,
					["buttonsize"] = 42,
				},
				["bar1"] = {
					["buttons"] = 8,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 4,
					["buttonsize"] = 42,
				},
				["bar5"] = {
					["backdrop"] = true,
					["buttonsPerRow"] = 12,
					["buttonsize"] = 24,
					["buttons"] = 12,
				},
				["font"] = "Canted Comic",
				["fontOutline"] = "OUTLINE",
				["backdropSpacingConverted"] = true,
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdrop"] = false,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdropSpacing"] = 4,
					["buttonsize"] = 23,
				},
				["bar4"] = {
					["buttonsize"] = 24,
					["buttonsPerRow"] = 12,
				},
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["nameplates"] = {
				["font"] = "Canted Comic",
				["statusbar"] = "BuiFlat",
				["fontSize"] = 10,
				["stackFont"] = "Canted Comic Bold",
				["healthFont"] = "Canted Comic Bold",
				["displayStyle"] = "BLIZZARD",
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["alwaysShow"] = true,
					},
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["shadows"] = false,
					["benikuiStyle"] = false,
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 414,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
		},
		["Ayanir - Moon Guard"] = {
			["databars"] = {
				["reputation"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["honor"] = {
					["enable"] = false,
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["font"] = "AnimeAce Bold",
					["textYoffset"] = 10,
					["orientation"] = "HORIZONTAL",
					["height"] = 6,
					["textSize"] = 10,
					["width"] = 414,
				},
				["azerite"] = {
					["enable"] = false,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["stickyFrames"] = false,
				["backdropcolor"] = {
					["r"] = 0.025,
					["g"] = 0.025,
					["b"] = 0.025,
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["minimap"] = {
					["benikuiStyle"] = false,
					["locationFont"] = "Canted Comic",
					["locationText"] = "HIDE",
					["size"] = 198,
				},
				["decimalLength"] = 2,
				["font"] = "Canted Comic",
				["altPowerBar"] = {
					["statusBar"] = "ElvUI Blank",
					["fontSize"] = 11,
					["font"] = "Expressway",
				},
				["backdropfadecolor"] = {
					["a"] = 1,
					["r"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["b"] = 0.0549019607843137,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["objectiveFrameHeight"] = 750,
				["bottomPanel"] = false,
			},
			["bags"] = {
				["countFont"] = "Canted Comic",
				["itemLevelFont"] = "Canted Comic",
				["itemLevelFontOutline"] = "OUTLINE",
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 10,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Canted Comic",
				["panelColor"] = {
					["a"] = 0.84548881649971,
					["r"] = 0.117647058823529,
					["g"] = 0.117647058823529,
					["b"] = 0.117647058823529,
				},
				["tabFontSize"] = 11,
				["font"] = "Canted Comic",
				["panelHeight"] = 200,
				["panelColorConverted"] = true,
				["timeStampFormat"] = "%I:%M %p ",
				["tapFontSize"] = 10,
				["panelBackdrop"] = "LEFT",
			},
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["minutesIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["daysIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["secondsIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["showText"] = true,
				["statusbarTexture"] = "BuiFlat",
				["position"] = "TOP",
				["staticColor"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["buiStyle"] = false,
					["notifiers"] = {
						["enable"] = false,
					},
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-6,269",
				["BuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-250,51",
				["TargetPowerBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-413,211",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,39,204",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,133,-82",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-38,204",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,664",
				["PlayerPortraitMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,453,-25",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,151,211",
				["VehicleSeatMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,0",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,2",
				["ElvUF_TargetTargetMover"] = "TOP,ElvUIParent,TOP,256,-444",
				["LossControlMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,431",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-413,3",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-66,-46",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-436,0",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1055,480",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,217,140",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["RequestStopButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,28",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-34",
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-396,-456",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,203",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,2",
				["GMMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-431,0",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,-6,287",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,192",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,0",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,84,19",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,198",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,150",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,109",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-395,-413",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-84,19",
				["PlayerPowerBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,413,219",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-128",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,68",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,413,3",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-217,140",
				["ElvUF_PetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-396,433",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["TargetPortraitMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-453,-25",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,25,200",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-303",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,50",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-129",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,226",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,280",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,194",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,249,54",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
			},
			["tooltip"] = {
				["textFontSize"] = 10,
				["fontSize"] = 10,
				["healthBar"] = {
					["font"] = "Canted Comic",
					["fontSize"] = 9,
				},
				["smallTextFontSize"] = 10,
				["font"] = "Canted Comic",
				["headerFontSize"] = 10,
			},
			["nameplates"] = {
				["statusbar"] = "Minimalist",
				["font"] = "Canted Comic",
				["displayStyle"] = "BLIZZARD",
				["fontSize"] = 10,
				["stackFont"] = "Canted Comic Bold",
				["healthFont"] = "Canted Comic Bold",
				["classbar"] = {
					["attachTo"] = "PLAYER",
					["scale"] = 1.6,
				},
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["alwaysShow"] = true,
					},
				},
			},
			["unitframe"] = {
				["fontSize"] = 11,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["transparentAurabars"] = true,
					["useDeadBackdrop"] = true,
					["castClassColor"] = true,
					["health"] = {
						["r"] = 0.219607843137255,
						["g"] = 0.874509803921569,
						["b"] = 0.105882352941176,
					},
					["castReactionColor"] = true,
					["frameGlow"] = {
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
						},
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.14901960784314,
						["g"] = 0.003921568627451,
						["b"] = 0.003921568627451,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["statusbar"] = "Minimalist",
				["font"] = "Canted Comic",
				["units"] = {
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["enable"] = false,
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["width"] = 110,
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconXOffset"] = 2,
							["iconAttached"] = false,
						},
						["height"] = 58,
						["buffs"] = {
							["xOffset"] = 16,
							["anchorPoint"] = "CENTER",
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 210,
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Canted Comic",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["size"] = 20,
							["yOffset"] = 4,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["health"] = {
							["yOffset"] = 1,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 10,
							["enable"] = true,
							["yOffset"] = 0,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["enable"] = false,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 16,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["position"] = "RIGHT",
							["xOffset"] = 4,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachedWidth"] = 240,
						},
						["name"] = {
							["xOffset"] = 8,
							["yOffset"] = -25,
							["text_format"] = "",
							["position"] = "RIGHT",
						},
						["width"] = 168,
						["infoPanel"] = {
							["height"] = 16,
							["enable"] = true,
							["transparent"] = true,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["height"] = 34,
						["orientation"] = "LEFT",
						["buffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["castbar"] = {
							["iconXOffset"] = 10,
							["iconPosition"] = "RIGHT",
							["icon"] = false,
							["width"] = 168,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["rdebuffs"] = {
							["size"] = 20,
							["font"] = "Canted Comic",
							["fontOutline"] = "OUTLINE",
							["yOffset"] = 12,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["health"] = {
							["yOffset"] = 0,
							["position"] = "CENTER",
						},
						["height"] = 40,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["size"] = 12,
							["yOffset"] = 0,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 168,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["bgUseBarTexture"] = false,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["width"] = 168,
						["infoPanel"] = {
							["height"] = 16,
							["enable"] = true,
							["transparent"] = true,
						},
						["CombatIcon"] = {
							["anchorPoint"] = "TOPLEFT",
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["xOffset"] = 0,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["detachedWidth"] = 240,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["sizeOverride"] = 26,
							["enable"] = true,
							["noDuration"] = false,
							["fontSize"] = 14,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["detachedWidth"] = 334,
							["spacing"] = -1,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["size"] = 12,
							["attachTo"] = "InfoPanel",
							["yOffset"] = 15,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["enable"] = false,
							["position"] = "LEFT",
							["xOffset"] = 2,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Canted Comic",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["health"] = {
							["xOffset"] = 0,
							["yOffset"] = -2,
							["text_format"] = "[health:current-percent]",
							["position"] = "RIGHT",
						},
						["name"] = {
							["xOffset"] = 2,
							["yOffset"] = 16,
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["position"] = "TOPLEFT",
						},
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["height"] = 40,
						["verticalSpacing"] = 30,
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 18,
							["width"] = 60,
							["xOffset"] = 0,
							["yOffset"] = -1,
						},
						["targetsGroup"] = {
							["anchorPoint"] = "RIGHT",
							["height"] = 16,
							["width"] = 70,
							["xOffset"] = 1,
							["yOffset"] = -12,
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 10,
				["font"] = "Canted Comic",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["left"] = "Spec Switch (BenikUI)",
						["middle"] = "Bags",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttons"] = 8,
					["buttonspacing"] = 0,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 42,
				},
				["bar6"] = {
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttons"] = 8,
					["buttonspacing"] = 0,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 4,
					["buttonsize"] = 42,
				},
				["bar1"] = {
					["buttons"] = 8,
					["buttonspacing"] = 0,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 0,
					["buttonsize"] = 42,
				},
				["bar5"] = {
					["enabled"] = false,
					["buttons"] = 9,
					["buttonspacing"] = 0,
					["buttonsPerRow"] = 1,
					["buttonsize"] = 24,
				},
				["font"] = "Canted Comic",
				["fontOutline"] = "OUTLINE",
				["bar4"] = {
					["enabled"] = false,
					["buttons"] = 9,
					["buttonspacing"] = 0,
					["backdrop"] = false,
					["buttonsize"] = 24,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdrop"] = false,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdropSpacing"] = 4,
					["buttonsize"] = 23,
				},
				["backdropSpacingConverted"] = true,
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["hideStyle"] = true,
					["shadows"] = false,
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 414,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["countFontSize"] = 10,
					["size"] = 30,
					["horizontalSpacing"] = 3,
					["maxWraps"] = 3,
					["wrapAfter"] = 5,
					["growthDirection"] = "RIGHT_DOWN",
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["size"] = 30,
					["countFontSize"] = 10,
					["wrapAfter"] = 5,
				},
				["font"] = "Canted Comic",
			},
		},
		["Mcpokesalot - Tichondrius"] = {
			["databars"] = {
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["enable"] = true,
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["azerite"] = {
					["textFormat"] = "CURMAX",
					["orientation"] = "HORIZONTAL",
					["height"] = 20,
					["font"] = "Sriracha",
					["textSize"] = 14,
					["width"] = 1918,
				},
				["experience"] = {
					["textFormat"] = "CURREM",
					["textYoffset"] = 10,
					["font"] = "Anime Ace",
					["orientation"] = "HORIZONTAL",
					["height"] = 20,
					["textSize"] = 10,
					["width"] = 1948,
				},
				["honor"] = {
					["height"] = 10,
					["enable"] = false,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 9,
					["width"] = 222,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["size"] = 60,
					["growthDirection"] = "HORIZONTAL",
					["spacing"] = 8,
				},
				["interruptAnnounce"] = "SAY",
				["afk"] = false,
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["locationText"] = "HIDE",
					["resetZoom"] = {
						["enable"] = true,
					},
					["size"] = 250,
					["icons"] = {
						["mail"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["benikuiStyle"] = false,
				},
				["decimalLength"] = 2,
				["talkingHeadFrameBackdrop"] = true,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80527076125145,
					["b"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["r"] = 0.0549019607843137,
				},
				["valuecolor"] = {
					["a"] = 1,
					["g"] = 0.662745098039216,
					["b"] = 0.517647058823529,
				},
				["threat"] = {
					["textOutline"] = "OUTLINE",
				},
				["stickyFrames"] = false,
				["talkingHeadFrameScale"] = 1,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["font"] = "Sriracha",
				["altPowerBar"] = {
					["statusBar"] = "Minimalist",
					["font"] = "Sriracha",
				},
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["topPanel"] = false,
				["objectiveFrameHeight"] = 400,
			},
			["bags"] = {
				["junkIcon"] = true,
				["countFont"] = "Sriracha",
				["itemLevelFont"] = "Sriracha",
				["split"] = {
					["bagSpacing"] = 10,
				},
				["bagWidth"] = 474,
				["countFontOutline"] = "OUTLINE",
				["bankSize"] = 42,
				["itemLevelFontSize"] = 12,
				["bankWidth"] = 474,
				["itemLevelFontOutline"] = "OUTLINE",
				["scrapIcon"] = true,
				["itemLevelCustomColorEnable"] = true,
				["countFontSize"] = 12,
				["bagSize"] = 42,
			},
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 12,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Sriracha",
				["panelColor"] = {
					["a"] = 0.447339951992035,
					["b"] = 0.117647058823529,
					["g"] = 0.117647058823529,
					["r"] = 0.117647058823529,
				},
				["panelBackdrop"] = "LEFT",
				["timeStampFormat"] = "%I:%M ",
				["panelHeightRight"] = 236,
				["font"] = "Sriracha",
				["fontOutline"] = "OUTLINE",
				["panelHeight"] = 250,
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelColorConverted"] = true,
				["tapFontSize"] = 12,
				["panelWidth"] = 250,
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["secondsIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["minutesIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["daysIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["position"] = "TOP",
				["statusbarTexture"] = "BuiFlat",
				["showText"] = true,
				["staticColor"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-472,280",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-280,500",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,0,977",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4",
				["BuffsMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,253,2",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["MirrorTimer3Mover"] = "TOP,ElvUIParent,TOP,-10,-132",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,159,484",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-159,484",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,60",
				["ElvUF_TargetAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,190,275",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,484,873",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,91",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-228,437",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,342",
				["TopCenterContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-383,-63",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-83,128",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,280,500",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,63",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,236,40",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-282,-353",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-419",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-190,128",
				["ElvUF_FocusAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-298,521",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,190,128",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-248,-14",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,251,-81",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,-2,-113",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-8,-60",
				["AzeriteBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,3,255",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-236,40",
				["ReputationBarMover"] = "TOP,ElvUIParent,TOP,1,-23",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-190,260",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,403",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,-9",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["ElvNP_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,294,318",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-3,256",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ElvUF_PlayerAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,-190,275",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,190,260",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,853,783",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-282,344",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["TotemBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,2",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-254,2",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
			},
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 2,
					["size"] = 28,
					["wrapAfter"] = 13,
					["durationFontSize"] = 12,
					["verticalSpacing"] = 12,
					["maxWraps"] = 2,
					["countFontSize"] = 12,
					["growthDirection"] = "LEFT_UP",
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 2,
					["size"] = 28,
					["wrapAfter"] = 13,
					["durationFontSize"] = 12,
					["verticalSpacing"] = 12,
					["maxWraps"] = 2,
					["countFontSize"] = 12,
					["growthDirection"] = "RIGHT_UP",
				},
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
			},
			["tooltip"] = {
				["fontSize"] = 12,
				["healthBar"] = {
					["height"] = 12,
					["font"] = "Sriracha",
					["fontSize"] = 8,
				},
				["cursorAnchorY"] = -50,
				["font"] = "Sriracha",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["cursorAnchorX"] = 25,
			},
			["v11NamePlateReset"] = true,
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["shadows"] = false,
					["hideStyle"] = true,
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["width"] = 414,
						["backdrop"] = true,
						["transparent"] = false,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["abm"] = {
				["focus"] = true,
				["targetSpace"] = 3,
				["playerSpace"] = 3,
				["targetw"] = 150,
				["target"] = true,
				["playerw"] = 150,
				["player"] = true,
				["focusw"] = 200,
			},
			["unitframe"] = {
				["statusbar"] = "Minimalist",
				["fontSize"] = 11,
				["colors"] = {
					["health_backdrop_dead"] = {
						["b"] = 0,
						["g"] = 0.00392156862745098,
						["r"] = 0.109803921568627,
					},
					["auraBarBuff"] = {
						["b"] = 0.725490196078431,
						["g"] = 0.419607843137255,
						["r"] = 0,
					},
					["auraBarTurtleColor"] = {
						["b"] = 0.819607843137255,
						["g"] = 0,
						["r"] = 0.447058823529412,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 0.376470588235294,
					},
					["health"] = {
						["b"] = 0.866666666666667,
						["g"] = 0.43921568627451,
						["r"] = 0,
					},
					["frameGlow"] = {
						["mainGlow"] = {
							["enable"] = true,
							["class"] = true,
						},
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
							["class"] = true,
						},
					},
					["healthclass"] = true,
					["customhealthbackdrop"] = true,
					["useDeadBackdrop"] = true,
					["transparentAurabars"] = true,
					["classbackdrop"] = true,
					["castReactionColor"] = true,
					["health_backdrop"] = {
						["b"] = 0,
						["g"] = 0.0117647058823529,
						["r"] = 0.109803921568627,
					},
					["powerclass"] = true,
					["classResources"] = {
						["bgColor"] = {
							["b"] = 0,
							["g"] = 0,
							["r"] = 0,
						},
						["comboPoints"] = {
							{
								["b"] = 0.756862745098039,
								["g"] = 0.423529411764706,
								["r"] = 0.403921568627451,
							}, -- [1]
							{
								["b"] = 0.749019607843137,
								["g"] = 0.745098039215686,
								["r"] = 0.223529411764706,
							}, -- [2]
							{
								["b"] = 0.184313725490196,
								["g"] = 0.756862745098039,
								["r"] = 0.219607843137255,
							}, -- [3]
						},
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Sriracha",
				["smoothbars"] = true,
				["thinBorders"] = true,
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["debuffs"] = {
							["anchorPoint"] = "LEFT",
							["sizeOverride"] = 32,
							["xOffset"] = -6,
							["attachTo"] = "HEALTH",
							["countFont"] = "Sriracha",
							["yOffset"] = 4,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["height"] = 25,
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconSize"] = 30,
							["iconXOffset"] = 2,
							["iconAttached"] = false,
							["width"] = 175,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 175,
						["fader"] = {
							["health"] = false,
							["power"] = false,
							["vehicle"] = false,
							["casting"] = false,
							["playertarget"] = false,
						},
						["name"] = {
							["yOffset"] = 8,
							["text_format"] = "[namecolor][name] the Noble",
							["position"] = "TOP",
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["text_format"] = "[namecolor][health:current]",
							["yOffset"] = -6,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["detachFromFrame"] = true,
							["xOffset"] = 0,
							["position"] = "BOTTOM",
							["detachedWidth"] = 201,
							["height"] = 15,
							["enable"] = false,
							["yOffset"] = -1,
						},
						["height"] = 25,
						["buffs"] = {
							["noDuration"] = false,
							["sizeOverride"] = 26,
							["attachTo"] = "POWER",
							["countFont"] = "Sriracha",
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["verticalOrientation"] = true,
							["fill"] = "spaced",
							["spacing"] = 6,
							["detachedWidth"] = 20,
							["height"] = 20,
							["orientation"] = "VERTICAL",
							["additionalPowerText"] = false,
						},
						["aurabar"] = {
							["maxDuration"] = 2000,
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "Blacklist,Personal,nonPersonal",
							["attachTo"] = "FRAME",
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["width"] = 246,
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["size"] = 12,
							["xOffset"] = 0,
							["position"] = "BOTTOMRIGHT",
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "Sriracha",
							["size"] = 30,
							["yOffset"] = 25,
						},
						["numGroups"] = 8,
						["growthDirection"] = "DOWN_RIGHT",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["visibility"] = "[@raid6,noexists] hide;show",
						["width"] = 92,
					},
					["assist"] = {
						["enable"] = false,
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["anchorPoint"] = "TOP",
							["sizeOverride"] = 30,
							["xOffset"] = 18,
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["duration"] = {
								["position"] = "RIGHT",
							},
							["xOffset"] = 69,
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_UP",
						["groupBy"] = "MTMA",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["damager"] = false,
							["attachTo"] = "Power",
							["position"] = "CENTER",
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 170,
						["health"] = {
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = false,
						},
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
						["height"] = 30,
						["buffs"] = {
							["numrows"] = 2,
							["sizeOverride"] = 24,
							["xOffset"] = 72,
							["yOffset"] = -1,
							["anchorPoint"] = "BOTTOM",
							["enable"] = true,
							["priority"] = "Blacklist,Personal",
							["attachTo"] = "POWER",
							["perrow"] = 7,
						},
						["orientation"] = "MIDDLE",
						["verticalSpacing"] = 40,
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
					},
					["focus"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 32,
							["enable"] = false,
							["perrow"] = 8,
						},
						["disableTargetGlow"] = true,
						["castbar"] = {
							["iconSize"] = 42,
							["width"] = 200,
							["height"] = 25,
							["insideInfoPanel"] = false,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 20,
							["enable"] = true,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["orientation"] = "LEFT",
						["height"] = 82,
						["buffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 26,
							["maxDuration"] = 0,
							["perrow"] = 8,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current]",
							["height"] = 22,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["enable"] = true,
							["height"] = 30,
						},
					},
					["target"] = {
						["debuffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 32,
							["xOffset"] = 6,
							["attachTo"] = "HEALTH",
							["countFont"] = "Sriracha",
							["yOffset"] = 4,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["width"] = 150,
						},
						["smartAuraDisplay"] = "DISABLED",
						["colorOverride"] = "FORCE_ON",
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "",
						},
						["castbar"] = {
							["iconXOffset"] = -2,
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconSize"] = 30,
							["height"] = 25,
							["iconAttached"] = false,
							["width"] = 180,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 175,
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["xOffset"] = 0,
							["text_format"] = "[healthcolor][health:current]",
							["yOffset"] = -6,
						},
						["fader"] = {
							["enable"] = false,
						},
						["height"] = 25,
						["orientation"] = "LEFT",
						["buffs"] = {
							["enable"] = false,
							["sizeOverride"] = 26,
						},
						["name"] = {
							["yOffset"] = 8,
							["text_format"] = "[namecolor][name]",
							["position"] = "TOP",
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 22,
							["threatStyle"] = "GLOW",
							["enable"] = false,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["iconSize"] = 32,
							["enable"] = false,
							["width"] = 248,
						},
						["enable"] = false,
						["disableTargetGlow"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["width"] = 270,
					},
					["targettarget"] = {
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["enable"] = false,
							["xOffset"] = 2,
							["yOffset"] = 0,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["font"] = "Sriracha",
				["minimapBottom"] = true,
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "Clique",
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttonspacing"] = 5,
					["flyoutDirection"] = "DOWN",
					["buttons"] = 10,
					["showGrid"] = false,
					["buttonsPerRow"] = 2,
					["buttonsize"] = 60,
					["backdropSpacing"] = 0,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonspacing"] = 10,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 36,
					["showGrid"] = false,
				},
				["movementModifier"] = "ALT",
				["useRangeColorText"] = true,
				["hotkeyTextPosition"] = "TOPLEFT",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "THICKOUTLINE",
				["notUsableColor"] = {
					["b"] = 0.215686274509804,
					["g"] = 0.215686274509804,
					["r"] = 0.215686274509804,
				},
				["chargeCooldown"] = true,
				["bar4"] = {
					["flyoutDirection"] = "DOWN",
					["buttons"] = 10,
					["buttonspacing"] = 5,
					["backdrop"] = false,
					["heightMult"] = 3,
					["showGrid"] = false,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonsize"] = 60,
				},
				["noPowerColor"] = {
					["b"] = 0.156862745098039,
					["g"] = 0.156862745098039,
					["r"] = 0.156862745098039,
				},
				["fontSize"] = 16,
				["bar2"] = {
					["enabled"] = true,
					["buttonspacing"] = 10,
					["visibility"] = "[petbattle] hide; show",
					["showGrid"] = false,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 36,
					["backdropSpacing"] = 0,
				},
				["bar1"] = {
					["point"] = "TOPLEFT",
					["flyoutDirection"] = "UP",
					["backdropSpacing"] = 0,
					["buttonspacing"] = 10,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 36,
					["showGrid"] = false,
				},
				["hideCooldownBling"] = true,
				["bar5"] = {
					["buttonspacing"] = 10,
					["showGrid"] = false,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["useDrawSwipeOnCharges"] = true,
				["countTextYOffset"] = 0,
				["font"] = "Sriracha",
				["bar7"] = {
					["backdrop"] = false,
				},
				["noRangeColor"] = {
					["b"] = 0.129411764705882,
					["g"] = 0,
					["r"] = 1,
				},
				["hotkeyTextYOffset"] = -6,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdropSpacing"] = 4,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["buttonsize"] = 23,
				},
				["backdropSpacingConverted"] = true,
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["nameplates"] = {
				["nonTargetTransparency"] = 0.3,
				["clickableHeight"] = 32,
				["units"] = {
					["ENEMY_NPC"] = {
						["minions"] = false,
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["name"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 8,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["textPosition"] = "ONBAR",
						},
						["minor"] = true,
						["level"] = {
							["xOffset"] = 5,
						},
						["health"] = {
							["text"] = {
								["font"] = "Anime Ace",
								["fontSize"] = 8,
							},
						},
						["buffs"] = {
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["width"] = 120,
							["yOffset"] = 10,
						},
						["enable"] = false,
						["name"] = {
							["enable"] = false,
							["fontSize"] = 10,
							["xOffset"] = 1,
							["font"] = "Sriracha",
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
							["width"] = 120,
						},
						["level"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["countFont"] = "Sriracha",
							["spacing"] = 0,
							["enable"] = false,
							["font"] = "Sriracha",
							["fontOutline"] = "NONE",
							["size"] = 20,
						},
						["power"] = {
							["displayAltPower"] = false,
						},
						["title"] = {
							["format"] = "[guild]",
						},
					},
					["PLAYER"] = {
						["power"] = {
							["enable"] = false,
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["enable"] = true,
								["format"] = "",
								["parent"] = "Health",
								["font"] = "Sriracha",
							},
						},
						["castbar"] = {
							["iconSize"] = 20,
							["yOffset"] = 0,
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["enable"] = false,
							["font"] = "Sriracha",
							["spacing"] = 0,
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs",
							},
							["countFont"] = "Sriracha",
							["fontOutline"] = "NONE",
							["size"] = 20,
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["name"] = {
							["fontSize"] = 10,
							["enable"] = true,
							["xOffset"] = 1,
							["font"] = "Sriracha",
							["yOffset"] = -10,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["format"] = "",
								["font"] = "Anime Ace",
							},
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["yOffset"] = 0,
						},
						["name"] = {
							["fontSize"] = 8,
							["format"] = "[name]",
							["font"] = "Anime Ace",
						},
					},
					["FRIENDLY_PLAYER"] = {
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
							["width"] = 120,
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["name"] = {
							["fontSize"] = 10,
							["enable"] = false,
							["format"] = "[name]",
							["xOffset"] = 1,
							["font"] = "Sriracha",
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["width"] = 120,
							["yOffset"] = 10,
						},
						["enable"] = false,
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["countFont"] = "Sriracha",
							["spacing"] = 0,
							["enable"] = false,
							["font"] = "Sriracha",
							["fontOutline"] = "NONE",
							["size"] = 20,
						},
						["title"] = {
							["enable"] = true,
						},
					},
				},
				["font"] = "Sriracha",
				["motionType"] = "OVERLAP",
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["loadDistance"] = 46,
				["statusbar"] = "Minimalist",
				["clampToScreen"] = true,
				["colors"] = {
					["selection"] = {
						nil, -- [1]
						{
							["g"] = 0.901960784313726,
							["b"] = 0.615686274509804,
						}, -- [2]
					},
				},
			},
			["cooldown"] = {
				["expiringColor"] = {
					["g"] = 0.333333333333333,
					["b"] = 0.431372549019608,
				},
				["fonts"] = {
					["enable"] = true,
					["font"] = "Sriracha",
					["fontSize"] = 14,
				},
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
		},
		["Iscrackl - Tichondrius"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["honor"] = {
					["enable"] = false,
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 9,
					["width"] = 222,
				},
				["experience"] = {
					["textFormat"] = "CURREM",
					["width"] = 1819,
					["font"] = "Anime Ace",
					["orientation"] = "HORIZONTAL",
					["height"] = 12,
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["azerite"] = {
					["enable"] = false,
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["enable"] = false,
					["spacing"] = 8,
					["growthDirection"] = "HORIZONTAL",
					["size"] = 50,
				},
				["stickyFrames"] = false,
				["font"] = "Sriracha",
				["talkingHeadFrameScale"] = 1,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["locationText"] = "HIDE",
					["benikuiStyle"] = false,
					["icons"] = {
						["mail"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["size"] = 234,
				},
				["decimalLength"] = 2,
				["talkingHeadFrameBackdrop"] = true,
				["altPowerBar"] = {
					["statusBar"] = "ElvUI Blank",
					["font"] = "Sriracha",
				},
				["backdropfadecolor"] = {
					["a"] = 0.80527076125145,
					["r"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["b"] = 0.0549019607843137,
				},
				["objectiveFrameHeight"] = 400,
				["bottomPanel"] = false,
				["topPanel"] = false,
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
			},
			["bags"] = {
				["junkIcon"] = true,
				["countFont"] = "Sriracha",
				["itemLevelFont"] = "Sriracha",
				["split"] = {
					["bagSpacing"] = 10,
				},
				["bagSize"] = 42,
				["countFontOutline"] = "OUTLINE",
				["bankSize"] = 42,
				["countFontSize"] = 12,
				["itemLevelFontSize"] = 12,
				["itemLevelFontOutline"] = "OUTLINE",
				["scrapIcon"] = true,
				["itemLevelCustomColorEnable"] = true,
				["bankWidth"] = 474,
				["bagWidth"] = 474,
			},
			["hideTutorial"] = true,
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 2,
					["growthDirection"] = "RIGHT_DOWN",
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["maxWraps"] = 2,
					["verticalSpacing"] = 12,
					["wrapAfter"] = 13,
					["size"] = 28,
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 2,
					["wrapAfter"] = 13,
					["durationFontSize"] = 12,
					["countFontSize"] = 12,
					["maxWraps"] = 2,
					["verticalSpacing"] = 12,
					["size"] = 28,
				},
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["secondsIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["minutesIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["daysIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["position"] = "TOP",
				["statusbarTexture"] = "BuiFlat",
				["showText"] = true,
				["staticColor"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,364",
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-390",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,1010",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,2",
				["BuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-196,23",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,3",
				["BossButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-542,-429",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "TOPLEFT,ElvUIParent,TOPLEFT,543,-430",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-268,335",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,342",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,484,979",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,1,119",
				["ElvUF_TargetAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,218",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,342",
				["TopCenterContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-383,-63",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,1,103",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,268,335",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-203,239",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-419",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-216,103",
				["ElvUF_FocusAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,3,425",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,215,103",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-248,-14",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,251,-81",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,-2,-113",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-8,-60",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-245",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,543,103",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-220,15",
				["ReputationBarMover"] = "TOP,ElvUIParent,TOP,1,-11",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,204,239",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,403",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,-9",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["ElvNP_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,119,292",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-544,103",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,220,15",
				["ElvUF_PlayerAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,3,218",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,853,783",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-271,242",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,195,23",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
			["tooltip"] = {
				["fontSize"] = 12,
				["healthBar"] = {
					["height"] = 12,
					["font"] = "Sriracha",
					["fontSize"] = 8,
				},
				["cursorAnchorX"] = 25,
				["headerFontSize"] = 14,
				["cursorAnchorY"] = -50,
				["font"] = "Sriracha",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["textFontSize"] = 10,
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["smallTextFontSize"] = 10,
			},
			["v11NamePlateReset"] = true,
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["shadows"] = false,
					["hideStyle"] = true,
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["width"] = 414,
						["backdrop"] = true,
						["transparent"] = false,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["statusbar"] = "Minimalist",
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["frameGlow"] = {
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
						},
					},
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.0117647058823529,
						["b"] = 0,
					},
					["transparentAurabars"] = true,
					["useDeadBackdrop"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["r"] = 0,
						["g"] = 0.513725490196078,
						["b"] = 0.0588235294117647,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.00392156862745098,
						["b"] = 0,
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Sriracha",
				["smoothbars"] = true,
				["thinBorders"] = true,
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["width"] = 270,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["enable"] = false,
							["xOffset"] = 2,
							["yOffset"] = 0,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["iconSize"] = 32,
							["enable"] = false,
							["width"] = 248,
						},
						["enable"] = false,
						["disableTargetGlow"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["width"] = 270,
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
							["camDistanceScale"] = 4,
							["width"] = 150,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["height"] = 22,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["iconXOffset"] = -2,
							["iconSize"] = 30,
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttachedTo"] = "Castbar",
							["iconAttached"] = false,
							["height"] = 30,
							["width"] = 179,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["height"] = 82,
						["orientation"] = "LEFT",
						["buffs"] = {
							["enable"] = false,
							["sizeOverride"] = 26,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "",
						},
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["anchorPoint"] = "TOP",
							["sizeOverride"] = 30,
							["xOffset"] = 18,
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
							["duration"] = {
								["position"] = "RIGHT",
							},
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["xOffset"] = 69,
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_UP",
						["groupBy"] = "MTMA",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["position"] = "CENTER",
							["attachTo"] = "Power",
							["damager"] = false,
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 170,
						["health"] = {
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = false,
						},
						["verticalSpacing"] = 40,
						["height"] = 30,
						["buffs"] = {
							["numrows"] = 2,
							["sizeOverride"] = 24,
							["xOffset"] = 72,
							["yOffset"] = -1,
							["anchorPoint"] = "BOTTOM",
							["perrow"] = 7,
							["priority"] = "Blacklist,Personal",
							["attachTo"] = "POWER",
							["enable"] = true,
						},
						["orientation"] = "MIDDLE",
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
					},
					["focus"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 32,
							["enable"] = false,
							["perrow"] = 8,
						},
						["disableTargetGlow"] = true,
						["castbar"] = {
							["iconSize"] = 42,
							["insideInfoPanel"] = false,
							["height"] = 25,
							["width"] = 200,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 20,
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current]",
							["height"] = 22,
						},
						["orientation"] = "LEFT",
						["buffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 26,
							["maxDuration"] = 0,
							["perrow"] = 8,
						},
						["height"] = 82,
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["enable"] = true,
							["height"] = 30,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "BOTTOMRIGHT",
							["xOffset"] = 0,
							["size"] = 12,
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "Sriracha",
							["yOffset"] = 25,
							["size"] = 30,
						},
						["numGroups"] = 8,
						["growthDirection"] = "DOWN_RIGHT",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["width"] = 92,
						["visibility"] = "[@raid6,noexists] hide;show",
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["width"] = 246,
					},
					["player"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["enable"] = true,
						},
						["castbar"] = {
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttachedTo"] = "Castbar",
							["width"] = 179,
							["iconPosition"] = "RIGHT",
							["iconSize"] = 30,
							["iconAttached"] = false,
							["iconXOffset"] = 2,
							["height"] = 30,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["xOffset"] = 0,
							["position"] = "BOTTOM",
							["detachedWidth"] = 243,
							["detachFromFrame"] = true,
							["height"] = 15,
							["yOffset"] = -1,
						},
						["name"] = {
							["text_format"] = "[name] the Noble",
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["bgUseBarTexture"] = false,
							["frequentUpdates"] = true,
							["yOffset"] = -4,
						},
						["height"] = 82,
						["buffs"] = {
							["noDuration"] = false,
							["sizeOverride"] = 26,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["height"] = 14,
							["detachedWidth"] = 243,
							["spacing"] = 6,
						},
						["aurabar"] = {
							["maxDuration"] = 0,
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "",
							["attachTo"] = "FRAME",
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["font"] = "Sriracha",
				["minimapBottom"] = true,
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "Clique",
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttonsize"] = 52,
					["buttons"] = 8,
					["buttonspacing"] = 7,
					["buttonsPerRow"] = 2,
					["visibility"] = "[petbattle] hide; show",
					["backdropSpacing"] = 0,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsize"] = 38,
					["buttons"] = 11,
				},
				["movementModifier"] = "ALT",
				["useRangeColorText"] = true,
				["hotkeyTextPosition"] = "TOPLEFT",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "THICKOUTLINE",
				["notUsableColor"] = {
					["r"] = 0.215686274509804,
					["g"] = 0.215686274509804,
					["b"] = 0.215686274509804,
				},
				["chargeCooldown"] = true,
				["noPowerColor"] = {
					["r"] = 0.156862745098039,
					["g"] = 0.156862745098039,
					["b"] = 0.156862745098039,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 34,
					["buttonspacing"] = 5,
					["buttonsPerRow"] = 2,
					["visibility"] = "[petbattle] hide; show",
					["backdropSpacing"] = 0,
				},
				["bar1"] = {
					["flyoutDirection"] = "UP",
					["backdropSpacing"] = 0,
					["buttonspacing"] = 5,
					["buttonsPerRow"] = 2,
					["buttonsize"] = 34,
					["point"] = "TOPLEFT",
				},
				["backdropSpacingConverted"] = true,
				["bar5"] = {
					["buttonsize"] = 38,
					["buttonsPerRow"] = 12,
					["visibility"] = "[petbattle] hide; show",
					["buttons"] = 11,
				},
				["fontSize"] = 16,
				["countTextYOffset"] = 0,
				["font"] = "Sriracha",
				["bar7"] = {
					["backdrop"] = false,
				},
				["noRangeColor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0.129411764705882,
				},
				["hotkeyTextYOffset"] = -6,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdrop"] = false,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 23,
					["backdropSpacing"] = 4,
				},
				["bar4"] = {
					["heightMult"] = 3,
					["backdropSpacing"] = 0,
					["backdrop"] = false,
					["buttons"] = 8,
					["buttonspacing"] = 7,
					["buttonsPerRow"] = 2,
					["buttonsize"] = 52,
					["visibility"] = "[petbattle] hide; show",
				},
			},
			["nameplates"] = {
				["nonTargetTransparency"] = 0.3,
				["clickableHeight"] = 32,
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["name"] = {
							["fontSize"] = 8,
							["font"] = "Anime Ace",
						},
						["castbar"] = {
							["textPosition"] = "ONBAR",
							["font"] = "Sriracha",
						},
						["level"] = {
							["xOffset"] = 5,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
							},
						},
						["buffs"] = {
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["yOffset"] = 10,
							["width"] = 120,
						},
						["enable"] = false,
						["name"] = {
							["enable"] = false,
							["fontSize"] = 10,
							["font"] = "Sriracha",
							["xOffset"] = 1,
						},
						["title"] = {
							["format"] = "[guild]",
						},
						["power"] = {
							["displayAltPower"] = false,
						},
						["level"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["countFont"] = "Sriracha",
							["spacing"] = 0,
							["enable"] = false,
							["fontOutline"] = "NONE",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Sriracha",
								["format"] = "[namecolor][name:long]",
							},
						},
					},
					["FRIENDLY_PLAYER"] = {
						["name"] = {
							["fontSize"] = 10,
							["enable"] = false,
							["format"] = "[name]",
							["font"] = "Sriracha",
							["xOffset"] = 1,
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["title"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["yOffset"] = 10,
							["width"] = 120,
						},
						["enable"] = false,
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["countFont"] = "Sriracha",
							["spacing"] = 0,
							["enable"] = false,
							["fontOutline"] = "NONE",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Sriracha",
								["format"] = "[namecolor][name:long]",
							},
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
								["format"] = "",
							},
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["name"] = {
							["fontSize"] = 8,
							["font"] = "Anime Ace",
							["format"] = "[name]",
						},
						["buffs"] = {
							["yOffset"] = 0,
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
						},
					},
					["PLAYER"] = {
						["name"] = {
							["fontSize"] = 10,
							["enable"] = true,
							["xOffset"] = 1,
							["font"] = "Sriracha",
							["yOffset"] = -10,
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["enable"] = true,
								["format"] = "",
								["font"] = "Sriracha",
								["parent"] = "Health",
							},
							["width"] = 120,
						},
						["power"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["enable"] = false,
							["font"] = "Sriracha",
							["spacing"] = 0,
							["size"] = 20,
							["fontOutline"] = "NONE",
							["countFont"] = "Sriracha",
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs",
							},
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["castbar"] = {
							["iconSize"] = 20,
							["yOffset"] = 0,
						},
					},
				},
				["font"] = "Sriracha",
				["motionType"] = "OVERLAP",
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["loadDistance"] = 43,
				["clampToScreen"] = true,
				["statusbar"] = "Minimalist",
			},
			["abm"] = {
				["targetw"] = 200,
				["targetSpace"] = 2,
				["playerSpace"] = 2,
				["focus"] = true,
				["target"] = true,
				["playerw"] = 200,
				["player"] = true,
				["focusw"] = 200,
			},
			["cooldown"] = {
				["expiringColor"] = {
					["g"] = 0.333333333333333,
					["b"] = 0.431372549019608,
				},
				["fonts"] = {
					["enable"] = true,
					["font"] = "Sriracha",
					["fontSize"] = 14,
				},
			},
			["chat"] = {
				["fontSize"] = 12,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Sriracha",
				["panelColor"] = {
					["a"] = 0.84548881649971,
					["r"] = 0.117647058823529,
					["g"] = 0.117647058823529,
					["b"] = 0.117647058823529,
				},
				["timeStampFormat"] = "%I:%M %p ",
				["font"] = "Sriracha",
				["fontOutline"] = "OUTLINE",
				["panelHeight"] = 236,
				["panelColorConverted"] = true,
				["editBoxPosition"] = "ABOVE_CHAT",
				["tapFontSize"] = 12,
				["panelWidth"] = 470,
			},
		},
		["Warrior"] = {
			["databars"] = {
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["enable"] = true,
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["azerite"] = {
					["textFormat"] = "CURMAX",
					["height"] = 20,
					["orientation"] = "HORIZONTAL",
					["font"] = "Sriracha",
					["textSize"] = 14,
					["width"] = 1918,
				},
				["experience"] = {
					["textFormat"] = "CURREM",
					["textYoffset"] = 10,
					["font"] = "Anime Ace",
					["orientation"] = "HORIZONTAL",
					["height"] = 12,
					["textSize"] = 10,
					["width"] = 1819,
				},
				["honor"] = {
					["height"] = 10,
					["enable"] = false,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 9,
					["width"] = 222,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["size"] = 60,
					["growthDirection"] = "HORIZONTAL",
					["spacing"] = 8,
				},
				["interruptAnnounce"] = "SAY",
				["afk"] = false,
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["locationText"] = "HIDE",
					["size"] = 250,
					["icons"] = {
						["mail"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["benikuiStyle"] = false,
				},
				["decimalLength"] = 2,
				["talkingHeadFrameBackdrop"] = true,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80527076125145,
					["b"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["r"] = 0.0549019607843137,
				},
				["objectiveFrameHeight"] = 400,
				["stickyFrames"] = false,
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["font"] = "Sriracha",
				["altPowerBar"] = {
					["statusBar"] = "Minimalist",
					["font"] = "Sriracha",
				},
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["talkingHeadFrameScale"] = 1,
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 12,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Sriracha",
				["panelColor"] = {
					["a"] = 0.447339951992035,
					["b"] = 0.117647058823529,
					["g"] = 0.117647058823529,
					["r"] = 0.117647058823529,
				},
				["timeStampFormat"] = "%I:%M %p ",
				["panelHeightRight"] = 236,
				["font"] = "Sriracha",
				["panelHeight"] = 250,
				["fontOutline"] = "OUTLINE",
				["panelColorConverted"] = true,
				["editBoxPosition"] = "ABOVE_CHAT",
				["tapFontSize"] = 12,
				["panelWidth"] = 250,
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["secondsIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["minutesIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["daysIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["position"] = "TOP",
				["statusbarTexture"] = "BuiFlat",
				["showText"] = true,
				["staticColor"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,137",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-310,300",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,904",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,2",
				["BuffsMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,253,2",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
				["MirrorTimer3Mover"] = "TOP,ElvUIParent,TOP,-10,-132",
				["BossButton"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-500,500",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,500,500",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,60",
				["ElvUF_TargetAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,330",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,484,873",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-271,242",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-228,437",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,342",
				["TopCenterContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-383,-63",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,99",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-14",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,63",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_PlayerAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,-310,330",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,256",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,290",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-419",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvUF_FocusAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-298,521",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-310,83",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,310,83",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-248,-14",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,251,-81",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-256,7",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-8,-60",
				["AzeriteBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,257,7",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,255",
				["ReputationBarMover"] = "TOP,ElvUIParent,TOP,1,-23",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-310,290",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,403",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,-9",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["ElvNP_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,304,433",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,-2,-113",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,300",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,853,783",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,83",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-254,2",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
			["tooltip"] = {
				["cursorAnchorX"] = 25,
				["healthBar"] = {
					["height"] = 12,
					["fontSize"] = 8,
					["font"] = "Sriracha",
				},
				["cursorAnchorY"] = -50,
				["font"] = "Sriracha",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["fontSize"] = 12,
			},
			["bags"] = {
				["junkIcon"] = true,
				["countFont"] = "Sriracha",
				["itemLevelFont"] = "Sriracha",
				["split"] = {
					["bagSpacing"] = 10,
				},
				["scrapIcon"] = true,
				["countFontOutline"] = "OUTLINE",
				["bankSize"] = 42,
				["itemLevelFontSize"] = 12,
				["bankWidth"] = 474,
				["itemLevelFontOutline"] = "OUTLINE",
				["bagWidth"] = 474,
				["itemLevelCustomColorEnable"] = true,
				["countFontSize"] = 12,
				["bagSize"] = 42,
			},
			["abm"] = {
				["player"] = true,
				["targetSpace"] = 3,
				["playerSpace"] = 3,
				["targetw"] = 200,
				["target"] = true,
				["playerw"] = 200,
				["focus"] = true,
				["focusw"] = 200,
			},
			["nameplates"] = {
				["nonTargetTransparency"] = 0.3,
				["clickableHeight"] = 32,
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["name"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 8,
						},
						["castbar"] = {
							["textPosition"] = "ONBAR",
							["font"] = "Sriracha",
						},
						["minor"] = true,
						["level"] = {
							["xOffset"] = 5,
						},
						["health"] = {
							["text"] = {
								["font"] = "Anime Ace",
								["fontSize"] = 8,
							},
						},
						["buffs"] = {
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["power"] = {
							["displayAltPower"] = false,
						},
						["enable"] = false,
						["title"] = {
							["format"] = "[guild]",
						},
						["name"] = {
							["enable"] = false,
							["fontSize"] = 10,
							["xOffset"] = 1,
							["font"] = "Sriracha",
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["spacing"] = 0,
							["fontOutline"] = "NONE",
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["level"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["width"] = 120,
							["yOffset"] = 10,
						},
					},
					["PLAYER"] = {
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["enable"] = true,
								["format"] = "",
								["parent"] = "Health",
								["font"] = "Sriracha",
							},
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["name"] = {
							["fontSize"] = 10,
							["enable"] = true,
							["xOffset"] = 1,
							["font"] = "Sriracha",
							["yOffset"] = -10,
						},
						["power"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["enable"] = false,
							["font"] = "Sriracha",
							["fontOutline"] = "NONE",
							["size"] = 20,
							["spacing"] = 0,
							["countFont"] = "Sriracha",
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs",
							},
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["castbar"] = {
							["iconSize"] = 20,
							["yOffset"] = 0,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["name"] = {
							["fontSize"] = 8,
							["format"] = "[name]",
							["font"] = "Anime Ace",
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["format"] = "",
								["font"] = "Anime Ace",
							},
						},
						["buffs"] = {
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["yOffset"] = 0,
						},
					},
					["FRIENDLY_PLAYER"] = {
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["name"] = {
							["fontSize"] = 10,
							["enable"] = false,
							["format"] = "[name]",
							["xOffset"] = 1,
							["font"] = "Sriracha",
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["width"] = 120,
							["yOffset"] = 10,
						},
						["enable"] = false,
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["spacing"] = 0,
							["fontOutline"] = "NONE",
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["title"] = {
							["enable"] = true,
						},
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
					},
				},
				["statusbar"] = "Minimalist",
				["motionType"] = "OVERLAP",
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["loadDistance"] = 46,
				["clampToScreen"] = true,
				["colors"] = {
					["selection"] = {
						nil, -- [1]
						{
							["g"] = 0.901960784313726,
							["b"] = 0.615686274509804,
						}, -- [2]
					},
				},
				["font"] = "Sriracha",
			},
			["unitframe"] = {
				["font"] = "Sriracha",
				["fontSize"] = 12,
				["colors"] = {
					["health"] = {
						["b"] = 0.866666666666667,
						["g"] = 0.43921568627451,
						["r"] = 0,
					},
					["auraBarBuff"] = {
						["b"] = 0.725490196078431,
						["g"] = 0.419607843137255,
						["r"] = 0,
					},
					["auraBarTurtleColor"] = {
						["r"] = 0.447058823529412,
						["g"] = 0,
						["b"] = 0.819607843137255,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 0.376470588235294,
					},
					["transparentAurabars"] = true,
					["frameGlow"] = {
						["mainGlow"] = {
							["enable"] = true,
							["class"] = true,
						},
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
							["class"] = true,
						},
					},
					["healthclass"] = true,
					["customhealthbackdrop"] = true,
					["useDeadBackdrop"] = true,
					["classbackdrop"] = true,
					["healthselection"] = true,
					["castReactionColor"] = true,
					["health_backdrop"] = {
						["b"] = 0,
						["g"] = 0.0117647058823529,
						["r"] = 0.109803921568627,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0,
						["g"] = 0.00392156862745098,
						["r"] = 0.109803921568627,
					},
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "Minimalist",
				["smoothbars"] = true,
				["thinBorders"] = true,
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["width"] = 246,
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["xOffset"] = 18,
							["sizeOverride"] = 30,
							["anchorPoint"] = "TOP",
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["fontOutline"] = "OUTLINE",
							["xOffset"] = 69,
							["duration"] = {
								["position"] = "RIGHT",
							},
							["enable"] = true,
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_UP",
						["groupBy"] = "MTMA",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["position"] = "CENTER",
							["attachTo"] = "Power",
							["damager"] = false,
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 170,
						["health"] = {
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = false,
						},
						["verticalSpacing"] = 40,
						["height"] = 30,
						["buffs"] = {
							["numrows"] = 2,
							["sizeOverride"] = 24,
							["enable"] = true,
							["yOffset"] = -1,
							["anchorPoint"] = "BOTTOM",
							["xOffset"] = 72,
							["priority"] = "Blacklist,Personal",
							["attachTo"] = "POWER",
							["perrow"] = 7,
						},
						["orientation"] = "MIDDLE",
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = 2,
							["enable"] = false,
							["yOffset"] = 0,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["size"] = 12,
							["xOffset"] = 0,
							["position"] = "BOTTOMRIGHT",
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "Sriracha",
							["size"] = 30,
							["yOffset"] = 25,
						},
						["numGroups"] = 8,
						["growthDirection"] = "DOWN_RIGHT",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["visibility"] = "[@raid6,noexists] hide;show",
						["width"] = 92,
					},
					["assist"] = {
						["enable"] = false,
					},
					["player"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["enable"] = true,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["detachedWidth"] = 330,
							["position"] = "BOTTOM",
							["xOffset"] = 0,
							["height"] = 15,
							["attachTextTo"] = "Power",
							["yOffset"] = -1,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["name"] = {
							["yOffset"] = 8,
							["text_format"] = "[namecolor][name] the Noble",
							["position"] = "TOP",
						},
						["fader"] = {
							["health"] = false,
							["power"] = false,
							["enable"] = true,
							["vehicle"] = false,
							["casting"] = false,
							["playertarget"] = false,
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["text_format"] = "[namecolor][health:current]",
							["yOffset"] = -6,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["height"] = 30,
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconSize"] = 30,
							["iconXOffset"] = 2,
							["iconAttached"] = false,
							["width"] = 180,
						},
						["height"] = 50,
						["buffs"] = {
							["noDuration"] = false,
							["sizeOverride"] = 26,
							["attachTo"] = "POWER",
							["countFont"] = "Sriracha",
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["spacing"] = 0,
							["detachedWidth"] = 330,
							["height"] = 17,
							["additionalPowerText"] = false,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "",
							["maxDuration"] = 2000,
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
					},
					["focus"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
							["attachTo"] = "BUFFS",
							["perrow"] = 8,
						},
						["disableTargetGlow"] = true,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current]",
							["height"] = 22,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 20,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["orientation"] = "LEFT",
						["height"] = 82,
						["buffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 26,
							["maxDuration"] = 0,
							["perrow"] = 8,
						},
						["castbar"] = {
							["iconSize"] = 42,
							["width"] = 200,
							["height"] = 25,
							["insideInfoPanel"] = false,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["enable"] = true,
							["height"] = 30,
						},
					},
					["target"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
							["camDistanceScale"] = 4,
							["width"] = 150,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["colorOverride"] = "FORCE_ON",
						["castbar"] = {
							["iconXOffset"] = -2,
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttached"] = false,
							["iconSize"] = 30,
							["height"] = 30,
							["width"] = 180,
						},
						["disableMouseoverGlow"] = true,
						["name"] = {
							["yOffset"] = 8,
							["text_format"] = "[namecolor][name]",
							["position"] = "TOP",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["xOffset"] = 0,
							["text_format"] = "[healthcolor][health:current]",
							["yOffset"] = -6,
						},
						["orientation"] = "LEFT",
						["height"] = 50,
						["buffs"] = {
							["enable"] = false,
							["sizeOverride"] = 26,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 22,
							["threatStyle"] = "GLOW",
							["enable"] = false,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "",
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["enable"] = false,
							["iconSize"] = 32,
							["width"] = 248,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableTargetGlow"] = false,
						["width"] = 270,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["font"] = "Sriracha",
				["minimapBottom"] = true,
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "Clique",
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["backdropSpacing"] = 0,
					["flyoutDirection"] = "DOWN",
					["buttons"] = 10,
					["showGrid"] = false,
					["buttonsPerRow"] = 2,
					["buttonsize"] = 60,
					["buttonspacing"] = 5,
				},
				["fontSize"] = 16,
				["movementModifier"] = "ALT",
				["useRangeColorText"] = true,
				["hotkeyTextPosition"] = "TOPLEFT",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "THICKOUTLINE",
				["notUsableColor"] = {
					["b"] = 0.215686274509804,
					["g"] = 0.215686274509804,
					["r"] = 0.215686274509804,
				},
				["chargeCooldown"] = true,
				["noPowerColor"] = {
					["b"] = 0.156862745098039,
					["g"] = 0.156862745098039,
					["r"] = 0.156862745098039,
				},
				["bar2"] = {
					["enabled"] = true,
					["backdropSpacing"] = 0,
					["buttonspacing"] = 10,
					["buttonsPerRow"] = 4,
					["visibility"] = "[petbattle] hide; show",
					["buttonsize"] = 60,
				},
				["bar1"] = {
					["flyoutDirection"] = "UP",
					["backdropSpacing"] = 0,
					["buttonspacing"] = 10,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 60,
					["point"] = "TOPLEFT",
				},
				["bar4"] = {
					["flyoutDirection"] = "DOWN",
					["buttons"] = 10,
					["buttonspacing"] = 5,
					["backdrop"] = false,
					["heightMult"] = 3,
					["showGrid"] = false,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonsize"] = 60,
				},
				["bar5"] = {
					["showGrid"] = false,
					["buttonsize"] = 40,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 40,
					["showGrid"] = false,
				},
				["countTextYOffset"] = 0,
				["font"] = "Sriracha",
				["bar7"] = {
					["backdrop"] = false,
				},
				["noRangeColor"] = {
					["b"] = 0.129411764705882,
					["g"] = 0,
					["r"] = 1,
				},
				["hotkeyTextYOffset"] = -6,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdrop"] = false,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 23,
					["backdropSpacing"] = 4,
				},
				["backdropSpacingConverted"] = true,
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["shadows"] = false,
					["hideStyle"] = true,
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["width"] = 414,
						["backdrop"] = true,
						["transparent"] = false,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["cooldown"] = {
				["fonts"] = {
					["enable"] = true,
					["font"] = "Sriracha",
					["fontSize"] = 14,
				},
				["expiringColor"] = {
					["g"] = 0.333333333333333,
					["b"] = 0.431372549019608,
				},
			},
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 12,
					["size"] = 28,
					["horizontalSpacing"] = 2,
					["durationFontSize"] = 12,
					["verticalSpacing"] = 12,
					["maxWraps"] = 2,
					["wrapAfter"] = 13,
					["growthDirection"] = "LEFT_UP",
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["countFontSize"] = 12,
					["size"] = 28,
					["horizontalSpacing"] = 2,
					["durationFontSize"] = 12,
					["verticalSpacing"] = 12,
					["maxWraps"] = 2,
					["wrapAfter"] = 13,
					["growthDirection"] = "RIGHT_UP",
				},
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
			},
		},
		["Stoakt - Tichondrius"] = {
			["currentTutorial"] = 1,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1093",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,735",
			},
			["v11NamePlateReset"] = true,
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Andalsa - Tichondrius"] = {
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,433",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1276",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,196",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,428",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["v11NamePlateReset"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Umbrick - Tichondrius"] = {
			["databars"] = {
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["enable"] = true,
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["azerite"] = {
					["textFormat"] = "CURMAX",
					["orientation"] = "HORIZONTAL",
					["height"] = 20,
					["font"] = "Sriracha",
					["textSize"] = 14,
					["width"] = 1918,
				},
				["experience"] = {
					["textFormat"] = "CURREM",
					["textYoffset"] = 10,
					["font"] = "Anime Ace",
					["orientation"] = "HORIZONTAL",
					["height"] = 12,
					["textSize"] = 10,
					["width"] = 1819,
				},
				["honor"] = {
					["height"] = 10,
					["enable"] = false,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 9,
					["width"] = 222,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["size"] = 50,
					["growthDirection"] = "HORIZONTAL",
					["spacing"] = 8,
				},
				["interruptAnnounce"] = "SAY",
				["afk"] = false,
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["locationText"] = "HIDE",
					["resetZoom"] = {
						["enable"] = true,
					},
					["size"] = 250,
					["icons"] = {
						["mail"] = {
							["scale"] = 1.55,
							["position"] = "TOP",
						},
						["classHall"] = {
							["xOffset"] = 2,
							["scale"] = 0.6,
							["yOffset"] = -2,
						},
						["calendar"] = {
							["xOffset"] = -3,
							["scale"] = 0.8,
							["yOffset"] = -7,
						},
					},
					["benikuiStyle"] = false,
				},
				["decimalLength"] = 2,
				["talkingHeadFrameBackdrop"] = true,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80527076125145,
					["b"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["r"] = 0.0549019607843137,
				},
				["objectiveFrameHeight"] = 400,
				["itemLevel"] = {
					["itemLevelFont"] = "Sriracha",
					["enchantFont"] = "Canted Comic",
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["font"] = "Sriracha",
				["altPowerBar"] = {
					["statusBar"] = "ElvUI Blank",
					["font"] = "Sriracha",
				},
				["stickyFrames"] = false,
				["talkingHeadFrameScale"] = 1,
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 2,
					["size"] = 28,
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["verticalSpacing"] = 12,
					["maxWraps"] = 2,
					["wrapAfter"] = 13,
					["growthDirection"] = "LEFT_UP",
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 2,
					["size"] = 28,
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["verticalSpacing"] = 12,
					["maxWraps"] = 2,
					["wrapAfter"] = 13,
					["growthDirection"] = "RIGHT_UP",
				},
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["secondsIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["minutesIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["daysIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["hoursIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["showText"] = true,
				["statusbarTexture"] = "BuiFlat",
				["position"] = "TOP",
				["staticColor"] = {
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["TopCenterContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-383,-63",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-110,350",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,904",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,2",
				["BuffsMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,253,2",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
				["MirrorTimer3Mover"] = "TOP,ElvUIParent,TOP,-10,-132",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,137,219",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-137,219",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,60",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-228,437",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,3,737",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-271,242",
				["ElvUF_TargetAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,330",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,137",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,105",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,110,350",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,63",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_PlayerAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,-310,330",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,256",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-419",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,3,482",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,-2,-113",
				["ElvUF_FocusAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-298,521",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,310,83",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-248,-14",
				["ElvNP_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,304,433",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-256,18",
				["AzeriteBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-8,-60",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,257,17",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,255",
				["ReputationBarMover"] = "TOP,ElvUIParent,TOP,1,-23",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,403",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-310,290",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,-9",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,251,-81",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-310,83",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-14",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,290",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,853,783",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,83",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,385,776",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-254,2",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
			},
			["chat"] = {
				["fontSize"] = 12,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Sriracha",
				["panelColor"] = {
					["a"] = 0.447339951992035,
					["b"] = 0.117647058823529,
					["g"] = 0.117647058823529,
					["r"] = 0.117647058823529,
				},
				["timeStampFormat"] = "%I:%M %p ",
				["panelHeightRight"] = 236,
				["font"] = "Sriracha",
				["panelHeight"] = 250,
				["fontOutline"] = "OUTLINE",
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelColorConverted"] = true,
				["tapFontSize"] = 12,
				["panelWidth"] = 250,
			},
			["tooltip"] = {
				["fontSize"] = 12,
				["healthBar"] = {
					["height"] = 12,
					["font"] = "Sriracha",
					["fontSize"] = 8,
				},
				["cursorAnchorY"] = -50,
				["font"] = "Sriracha",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["cursorAnchorX"] = 25,
			},
			["bags"] = {
				["junkIcon"] = true,
				["countFont"] = "Sriracha",
				["itemLevelFont"] = "Sriracha",
				["split"] = {
					["bagSpacing"] = 10,
				},
				["bagWidth"] = 474,
				["countFontOutline"] = "OUTLINE",
				["bankSize"] = 45,
				["itemLevelFontSize"] = 12,
				["bankWidth"] = 474,
				["itemLevelFontOutline"] = "OUTLINE",
				["scrapIcon"] = true,
				["itemLevelCustomColorEnable"] = true,
				["countFontSize"] = 12,
				["bagSize"] = 45,
			},
			["nameplates"] = {
				["nonTargetTransparency"] = 0.3,
				["clickableHeight"] = 32,
				["units"] = {
					["ENEMY_NPC"] = {
						["name"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 8,
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["health"] = {
							["text"] = {
								["font"] = "Anime Ace",
								["fontSize"] = 8,
							},
						},
						["castbar"] = {
							["textPosition"] = "ONBAR",
							["font"] = "Sriracha",
						},
						["minor"] = true,
						["level"] = {
							["xOffset"] = 5,
						},
						["buffs"] = {
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["minions"] = false,
					},
					["TARGET"] = {
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["width"] = 120,
							["yOffset"] = 10,
						},
						["enable"] = false,
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
						},
						["title"] = {
							["format"] = "[guild]",
						},
						["name"] = {
							["enable"] = false,
							["fontSize"] = 10,
							["xOffset"] = 1,
							["font"] = "Sriracha",
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["spacing"] = 0,
							["fontOutline"] = "NONE",
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["level"] = {
							["enable"] = false,
						},
						["power"] = {
							["displayAltPower"] = false,
						},
					},
					["PLAYER"] = {
						["name"] = {
							["fontSize"] = 10,
							["enable"] = true,
							["xOffset"] = 1,
							["font"] = "Sriracha",
							["yOffset"] = -10,
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["enable"] = true,
								["format"] = "",
								["parent"] = "Health",
								["font"] = "Sriracha",
							},
						},
						["castbar"] = {
							["iconSize"] = 20,
							["yOffset"] = 0,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["enable"] = false,
							["font"] = "Sriracha",
							["fontOutline"] = "NONE",
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs",
							},
							["spacing"] = 0,
							["countFont"] = "Sriracha",
							["size"] = 20,
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["power"] = {
							["enable"] = false,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["format"] = "",
								["font"] = "Anime Ace",
							},
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["name"] = {
							["fontSize"] = 8,
							["format"] = "[name]",
							["font"] = "Anime Ace",
						},
						["buffs"] = {
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["yOffset"] = 0,
						},
					},
					["FRIENDLY_PLAYER"] = {
						["title"] = {
							["enable"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["width"] = 120,
							["yOffset"] = 10,
						},
						["enable"] = false,
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["spacing"] = 0,
							["fontOutline"] = "NONE",
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["name"] = {
							["fontSize"] = 10,
							["enable"] = false,
							["format"] = "[name]",
							["xOffset"] = 1,
							["font"] = "Sriracha",
						},
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
					},
				},
				["statusbar"] = "Minimalist",
				["motionType"] = "OVERLAP",
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["loadDistance"] = 46,
				["font"] = "Sriracha",
				["colors"] = {
					["selection"] = {
						nil, -- [1]
						{
							["g"] = 0.901960784313726,
							["b"] = 0.615686274509804,
						}, -- [2]
					},
				},
				["clampToScreen"] = true,
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["hideStyle"] = true,
					["shadows"] = false,
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 414,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
			},
			["unitframe"] = {
				["statusbar"] = "Minimalist",
				["fontSize"] = 12,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["frameGlow"] = {
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
						},
					},
					["customhealthbackdrop"] = true,
					["useDeadBackdrop"] = true,
					["health"] = {
						["b"] = 0.0588235294117647,
						["g"] = 0.513725490196078,
						["r"] = 0,
					},
					["transparentAurabars"] = true,
					["castReactionColor"] = true,
					["health_backdrop"] = {
						["b"] = 0,
						["g"] = 0.0117647058823529,
						["r"] = 0.109803921568627,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0,
						["g"] = 0.00392156862745098,
						["r"] = 0.109803921568627,
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Sriracha",
				["smoothbars"] = true,
				["thinBorders"] = true,
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["width"] = 246,
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["xOffset"] = 18,
							["sizeOverride"] = 30,
							["anchorPoint"] = "TOP",
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["duration"] = {
								["position"] = "RIGHT",
							},
							["xOffset"] = 69,
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_UP",
						["groupBy"] = "MTMA",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["position"] = "CENTER",
							["attachTo"] = "Power",
							["damager"] = false,
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 170,
						["health"] = {
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = false,
						},
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
						["height"] = 30,
						["verticalSpacing"] = 40,
						["orientation"] = "MIDDLE",
						["buffs"] = {
							["anchorPoint"] = "BOTTOM",
							["sizeOverride"] = 24,
							["perrow"] = 7,
							["enable"] = true,
							["xOffset"] = 72,
							["attachTo"] = "POWER",
							["numrows"] = 2,
							["yOffset"] = -1,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["enable"] = false,
							["xOffset"] = 2,
							["yOffset"] = 0,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["size"] = 12,
							["xOffset"] = 0,
							["position"] = "BOTTOMRIGHT",
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "Sriracha",
							["size"] = 30,
							["yOffset"] = 25,
						},
						["numGroups"] = 8,
						["growthDirection"] = "DOWN_RIGHT",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["visibility"] = "[@raid6,noexists] hide;show",
						["width"] = 92,
					},
					["assist"] = {
						["enable"] = false,
					},
					["player"] = {
						["debuffs"] = {
							["numrows"] = 5,
							["sizeOverride"] = 41,
							["attachTo"] = "POWER",
							["priority"] = "Personal,nonPersonal",
							["countFont"] = "Sriracha",
							["yOffset"] = 2,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["enable"] = true,
						},
						["castbar"] = {
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttached"] = false,
							["width"] = 180,
							["iconPosition"] = "RIGHT",
							["displayTarget"] = true,
							["iconSize"] = 30,
							["height"] = 30,
							["iconXOffset"] = 2,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["health"] = {
							["attachTextTo"] = "Frame",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["text_format"] = "[healthcolor][health:current]",
							["yOffset"] = -6,
						},
						["fader"] = {
							["health"] = false,
							["power"] = false,
							["enable"] = true,
							["vehicle"] = false,
							["casting"] = false,
							["playertarget"] = false,
						},
						["name"] = {
							["yOffset"] = 8,
							["text_format"] = "[name] the Noble",
							["position"] = "TOP",
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["detachedWidth"] = 330,
							["position"] = "BOTTOM",
							["xOffset"] = 0,
							["height"] = 20,
							["detachFromFrame"] = true,
							["yOffset"] = -1,
						},
						["height"] = 50,
						["buffs"] = {
							["noDuration"] = false,
							["sizeOverride"] = 26,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["spacing"] = 0,
							["detachedWidth"] = 330,
							["height"] = 17,
							["additionalPowerText"] = false,
						},
						["aurabar"] = {
							["maxDuration"] = 0,
							["priority"] = "blockNoDuration,Personal,nonPersonal",
							["maxBars"] = 40,
							["sort"] = "TIME_REMAINING_REVERSE",
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
					},
					["focus"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["disableTargetGlow"] = true,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current]",
							["height"] = 22,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 20,
							["enable"] = true,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["height"] = 82,
						["buffs"] = {
							["sizeOverride"] = 26,
						},
						["orientation"] = "LEFT",
						["castbar"] = {
							["iconSize"] = 42,
							["width"] = 200,
							["height"] = 25,
							["insideInfoPanel"] = false,
						},
					},
					["target"] = {
						["debuffs"] = {
							["attachTo"] = "HEALTH",
							["sizeOverride"] = 27,
							["perrow"] = 10,
							["enable"] = false,
							["priority"] = "",
							["countFont"] = "Sriracha",
							["yOffset"] = -65,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
							["camDistanceScale"] = 4,
							["width"] = 150,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 22,
							["threatStyle"] = "GLOW",
							["enable"] = false,
						},
						["name"] = {
							["yOffset"] = 8,
							["text_format"] = "[namecolor][name]",
							["position"] = "TOP",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["xOffset"] = 0,
							["text_format"] = "[healthcolor][health:current]",
							["yOffset"] = -6,
						},
						["orientation"] = "LEFT",
						["height"] = 50,
						["buffs"] = {
							["attachTo"] = "HEALTH",
							["sizeOverride"] = 27,
							["perrow"] = 10,
							["priority"] = "Personal,nonPersonal",
							["countFont"] = "Sriracha",
							["yOffset"] = -27,
						},
						["castbar"] = {
							["iconXOffset"] = -2,
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttached"] = false,
							["iconSize"] = 30,
							["height"] = 30,
							["width"] = 180,
						},
						["aurabar"] = {
							["maxDuration"] = 0,
							["priority"] = "Personal,nonPersonal",
							["friendlyAuraType"] = "HARMFUL",
							["attachTo"] = "BUFFS",
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["enable"] = false,
							["iconSize"] = 32,
							["width"] = 248,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableTargetGlow"] = false,
						["width"] = 270,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["minimapBottom"] = true,
				["panelTransparency"] = true,
				["panels"] = {
					["BottomMiniPanel"] = "|cffb4b4ffALL THE THINGS|r",
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["BottomRightMiniPanel"] = "|cffb4b4ffALL THE THINGS|r",
					["BottomLeftMiniPanel"] = "Wholly",
					["LeftChatDataPanel"] = {
						["right"] = "|cffb4b4ffALL THE THINGS|r",
						["left"] = "|cffb4b4ffALL THE THINGS|r",
						["middle"] = "Wholly",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
				},
				["font"] = "Sriracha",
				["fontOutline"] = "OUTLINE",
				["leftChatPanel"] = false,
				["minimapBottomLeft"] = true,
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["backdropSpacing"] = 0,
					["flyoutDirection"] = "DOWN",
					["buttons"] = 10,
					["showGrid"] = false,
					["buttonsPerRow"] = 2,
					["buttonsize"] = 60,
					["buttonspacing"] = 5,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 40,
					["showGrid"] = false,
				},
				["movementModifier"] = "ALT",
				["useRangeColorText"] = true,
				["hotkeyTextPosition"] = "TOPLEFT",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "THICKOUTLINE",
				["notUsableColor"] = {
					["b"] = 0.215686274509804,
					["g"] = 0.215686274509804,
					["r"] = 0.215686274509804,
				},
				["chargeCooldown"] = true,
				["noPowerColor"] = {
					["b"] = 0.156862745098039,
					["g"] = 0.156862745098039,
					["r"] = 0.156862745098039,
				},
				["bar4"] = {
					["flyoutDirection"] = "DOWN",
					["buttons"] = 10,
					["buttonspacing"] = 5,
					["backdrop"] = false,
					["heightMult"] = 3,
					["showGrid"] = false,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonsize"] = 60,
				},
				["bar2"] = {
					["enabled"] = true,
					["backdropSpacing"] = 0,
					["buttonspacing"] = 10,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 60,
					["visibility"] = "[petbattle] hide; show",
				},
				["bar1"] = {
					["flyoutDirection"] = "UP",
					["backdropSpacing"] = 0,
					["buttonspacing"] = 10,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 60,
					["point"] = "TOPLEFT",
				},
				["noRangeColor"] = {
					["b"] = 0.129411764705882,
					["g"] = 0,
					["r"] = 1,
				},
				["bar5"] = {
					["showGrid"] = false,
					["buttonsize"] = 40,
					["buttons"] = 12,
				},
				["extraActionButton"] = {
					["scale"] = 1.12,
				},
				["countTextYOffset"] = 0,
				["font"] = "Sriracha",
				["bar7"] = {
					["backdrop"] = false,
				},
				["fontSize"] = 16,
				["hotkeyTextYOffset"] = -6,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdrop"] = false,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 23,
					["backdropSpacing"] = 4,
				},
				["backdropSpacingConverted"] = true,
			},
			["abm"] = {
				["player"] = true,
				["targetSpace"] = 3,
				["playerSpace"] = 3,
				["focus"] = true,
				["target"] = true,
				["playerw"] = 200,
				["targetw"] = 200,
				["focusw"] = 200,
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["cooldown"] = {
				["expiringColor"] = {
					["g"] = 0.333333333333333,
					["b"] = 0.431372549019608,
				},
				["fonts"] = {
					["enable"] = true,
					["font"] = "Sriracha",
					["fontSize"] = 14,
				},
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
		},
		["Harwapa - Tichondrius"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["azerite"] = {
					["enable"] = false,
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["experience"] = {
					["textFormat"] = "CURREM",
					["width"] = 1819,
					["font"] = "Anime Ace",
					["orientation"] = "HORIZONTAL",
					["height"] = 12,
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["honor"] = {
					["enable"] = false,
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 9,
					["width"] = 222,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["spacing"] = 8,
					["size"] = 50,
					["growthDirection"] = "HORIZONTAL",
				},
				["talkingHeadFrameBackdrop"] = true,
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["bonusObjectivePosition"] = "AUTO",
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["locationText"] = "HIDE",
					["size"] = 234,
					["icons"] = {
						["mail"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["benikuiStyle"] = false,
				},
				["decimalLength"] = 2,
				["font"] = "Sriracha",
				["altPowerBar"] = {
					["statusBar"] = "ElvUI Blank",
					["font"] = "Sriracha",
				},
				["backdropfadecolor"] = {
					["a"] = 0.80527076125145,
					["b"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["r"] = 0.0549019607843137,
				},
				["objectiveFrameHeight"] = 400,
				["talkingHeadFrameScale"] = 1,
				["bottomPanel"] = false,
				["stickyFrames"] = false,
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["growthDirection"] = "LEFT_UP",
					["wrapAfter"] = 15,
					["horizontalSpacing"] = 2,
					["size"] = 26,
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["countFontSize"] = 12,
					["growthDirection"] = "RIGHT_UP",
					["durationFontSize"] = 12,
					["size"] = 26,
					["maxWraps"] = 1,
					["horizontalSpacing"] = 2,
					["wrapAfter"] = 15,
				},
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["secondsIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["minutesIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["daysIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["position"] = "TOP",
				["statusbarTexture"] = "BuiFlat",
				["showText"] = true,
				["staticColor"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,364",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-301,138",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,203,346",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,2",
				["BuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-221,6",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-1,293",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-1,293",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,5",
				["ElvUF_TargetAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-273,220",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,342",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-133,303",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,481,190",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,241",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,342",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,0",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,131,303",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-419",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,215,33",
				["ElvUF_FocusAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,3,425",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,215,103",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-248,-14",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,-4,174",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,215,68",
				["ReputationBarMover"] = "TOP,ElvUIParent,TOP,1,-11",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-3,-36",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-216,68",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-216,33",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,251,-81",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,239",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,403",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,-9",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["ElvNP_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,119,292",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-245",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ElvUF_PlayerAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,273,218",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-216,103",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,852,301",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,394",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,4",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,221,6",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
			},
			["tooltip"] = {
				["cursorAnchorX"] = 25,
				["healthBar"] = {
					["height"] = 12,
					["fontSize"] = 8,
					["font"] = "Sriracha",
				},
				["fontSize"] = 12,
				["headerFontSize"] = 14,
				["textFontSize"] = 10,
				["font"] = "Sriracha",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["cursorAnchorY"] = -50,
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["smallTextFontSize"] = 10,
			},
			["bags"] = {
				["countFontSize"] = 12,
				["countFont"] = "Sriracha",
				["itemLevelFont"] = "Sriracha",
				["bankSize"] = 42,
				["countFontOutline"] = "OUTLINE",
				["bagSize"] = 42,
				["itemLevelFontSize"] = 12,
				["bankWidth"] = 474,
				["itemLevelFontOutline"] = "OUTLINE",
				["scrapIcon"] = true,
				["itemLevelCustomColorEnable"] = true,
				["sortInverted"] = false,
				["bagWidth"] = 474,
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
			["nameplates"] = {
				["font"] = "Sriracha",
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["nonTargetTransparency"] = 0.3,
				["clampToScreen"] = true,
				["loadDistance"] = 70,
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
						},
						["name"] = {
							["fontSize"] = 8,
							["font"] = "Anime Ace",
						},
						["buffs"] = {
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 2,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
							},
						},
						["level"] = {
							["xOffset"] = 5,
						},
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["health"] = {
							["text"] = {
								["font"] = "Sriracha",
								["fontSize"] = 10,
								["format"] = "[name:long]",
							},
							["width"] = 120,
						},
						["castbar"] = {
							["yOffset"] = 0,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["spacing"] = 0,
							["fontOutline"] = "NONE",
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["name"] = {
							["font"] = "Sriracha",
							["xOffset"] = 1,
							["fontSize"] = 10,
							["enable"] = false,
							["yOffset"] = -10,
						},
						["level"] = {
							["enable"] = false,
						},
					},
					["PLAYER"] = {
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["power"] = {
							["enable"] = false,
						},
						["useStaticPosition"] = true,
						["health"] = {
							["text"] = {
								["enable"] = true,
								["fontSize"] = 10,
								["font"] = "Sriracha",
								["format"] = "[name]",
							},
							["width"] = 120,
						},
						["name"] = {
							["xOffset"] = 1,
							["font"] = "Sriracha",
							["fontSize"] = 10,
							["yOffset"] = -10,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["enable"] = false,
							["font"] = "Sriracha",
							["spacing"] = 0,
							["size"] = 20,
							["countFont"] = "Sriracha",
							["fontOutline"] = "NONE",
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs",
							},
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["castbar"] = {
							["iconSize"] = 20,
							["yOffset"] = 0,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["name"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 8,
							["format"] = "[name]",
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["yOffset"] = 0,
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
							},
						},
					},
					["FRIENDLY_PLAYER"] = {
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["name"] = {
							["fontSize"] = 10,
							["font"] = "Sriracha",
							["xOffset"] = 1,
							["format"] = "[name]",
							["enable"] = false,
							["yOffset"] = -10,
						},
						["castbar"] = {
							["yOffset"] = 0,
						},
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["spacing"] = 0,
							["fontOutline"] = "NONE",
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["health"] = {
							["text"] = {
								["font"] = "Sriracha",
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
							},
							["width"] = 120,
						},
					},
				},
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["font"] = "Sriracha",
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["frameGlow"] = {
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
						},
					},
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["b"] = 0,
						["g"] = 0.0117647058823529,
						["r"] = 0.109803921568627,
					},
					["transparentAurabars"] = true,
					["health"] = {
						["b"] = 0.0588235294117647,
						["g"] = 0.513725490196078,
						["r"] = 0,
					},
					["castReactionColor"] = true,
					["useDeadBackdrop"] = true,
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0,
						["g"] = 0.00392156862745098,
						["r"] = 0.109803921568627,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["statusbar"] = "Minimalist",
				["thinBorders"] = true,
				["units"] = {
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["enable"] = false,
							["iconSize"] = 32,
							["width"] = 270,
						},
						["enable"] = false,
						["disableTargetGlow"] = false,
						["width"] = 270,
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["anchorPoint"] = "TOP",
							["sizeOverride"] = 30,
							["xOffset"] = 18,
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
							["duration"] = {
								["position"] = "RIGHT",
							},
							["fontOutline"] = "OUTLINE",
							["xOffset"] = 69,
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["enable"] = true,
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_UP",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["damager"] = false,
							["attachTo"] = "Power",
							["position"] = "CENTER",
						},
						["groupBy"] = "MTMA",
						["verticalSpacing"] = 40,
						["height"] = 30,
						["orientation"] = "MIDDLE",
						["buffs"] = {
							["numrows"] = 2,
							["sizeOverride"] = 24,
							["xOffset"] = 72,
							["yOffset"] = -1,
							["attachTo"] = "POWER",
							["perrow"] = 7,
							["priority"] = "Blacklist,Personal",
							["enable"] = true,
							["anchorPoint"] = "BOTTOM",
						},
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
						["width"] = 170,
					},
					["player"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["castbar"] = {
							["height"] = 25,
							["insideInfoPanel"] = false,
							["width"] = 200,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["bgUseBarTexture"] = false,
						},
						["power"] = {
							["height"] = 22,
							["attachTextTo"] = "InfoPanel",
						},
						["height"] = 82,
						["buffs"] = {
							["noDuration"] = false,
							["sizeOverride"] = 26,
						},
						["classbar"] = {
							["height"] = 14,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "Blacklist,blockNoDuration,Boss,RaidDebuffs,PlayerBuffs,nonPersonal,CastByPlayers",
							["maxDuration"] = 0,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["width"] = 246,
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
					},
					["focus"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
							["attachTo"] = "BUFFS",
							["perrow"] = 8,
						},
						["disableTargetGlow"] = true,
						["castbar"] = {
							["iconSize"] = 42,
							["insideInfoPanel"] = false,
							["height"] = 25,
							["width"] = 200,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 20,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current]",
							["height"] = 22,
						},
						["height"] = 82,
						["buffs"] = {
							["maxDuration"] = 0,
							["sizeOverride"] = 26,
							["anchorPoint"] = "TOPRIGHT",
							["perrow"] = 8,
						},
						["orientation"] = "LEFT",
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["enable"] = true,
							["height"] = 30,
						},
					},
					["target"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["castbar"] = {
							["height"] = 25,
							["insideInfoPanel"] = false,
							["width"] = 200,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["height"] = 22,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
						},
						["height"] = 82,
						["orientation"] = "LEFT",
						["buffs"] = {
							["enable"] = false,
							["sizeOverride"] = 26,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "blockNoDuration,Blacklist,Personal,PlayerBuffs,Boss,RaidDebuffs",
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "BOTTOMRIGHT",
							["xOffset"] = 0,
							["size"] = 12,
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "Sriracha",
							["yOffset"] = 25,
							["size"] = 30,
						},
						["numGroups"] = 8,
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["width"] = 92,
						["visibility"] = "[@raid6,noexists] hide;show",
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["targettarget"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["width"] = 270,
						["disableMouseoverGlow"] = true,
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = 2,
							["enable"] = false,
							["yOffset"] = 0,
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["font"] = "Sriracha",
				["minimapBottom"] = true,
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "Clique",
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttons"] = 12,
					["visibility"] = "[petbattle] hide; show",
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 0,
					["buttonsize"] = 34,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsize"] = 34,
				},
				["backdropSpacingConverted"] = true,
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 34,
					["backdropSpacing"] = 0,
					["visibility"] = "[petbattle] hide; show",
				},
				["bar1"] = {
					["backdropSpacing"] = 0,
					["buttonsize"] = 34,
				},
				["fontSize"] = 12,
				["bar5"] = {
					["buttonsize"] = 34,
					["buttonsPerRow"] = 12,
					["visibility"] = "[petbattle] hide; show",
					["buttons"] = 12,
				},
				["font"] = "Sriracha",
				["useRangeColorText"] = true,
				["hotkeyTextPosition"] = "TOPLEFT",
				["fontOutline"] = "OUTLINE",
				["hotkeyTextXOffset"] = 2,
				["hotkeyTextYOffset"] = -2,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["buttonsize"] = 23,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["backdropSpacing"] = 4,
				},
				["bar4"] = {
					["heightMult"] = 3,
					["backdrop"] = false,
					["backdropSpacing"] = 0,
					["buttonsPerRow"] = 12,
					["buttonsize"] = 34,
					["visibility"] = "[petbattle] hide; show",
				},
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["abm"] = {
				["targetSpace"] = 2,
				["player"] = true,
				["playerSpace"] = 2,
				["targetw"] = 200,
				["target"] = true,
				["playerw"] = 200,
				["focus"] = true,
				["focusw"] = 200,
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["shadows"] = false,
					["hideStyle"] = true,
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["width"] = 414,
						["backdrop"] = true,
						["transparent"] = false,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["chat"] = {
				["fontSize"] = 12,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Sriracha",
				["panelColor"] = {
					["a"] = 0.84548881649971,
					["b"] = 0.117647058823529,
					["g"] = 0.117647058823529,
					["r"] = 0.117647058823529,
				},
				["timeStampFormat"] = "%I:%M %p ",
				["font"] = "Sriracha",
				["editBoxPosition"] = "ABOVE_CHAT",
				["fontOutline"] = "OUTLINE",
				["panelColorConverted"] = true,
				["panelHeight"] = 236,
				["tapFontSize"] = 12,
				["panelWidth"] = 470,
			},
		},
		["Umbrick - Emerald Dream"] = {
			["databars"] = {
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["enable"] = true,
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["honor"] = {
					["orientation"] = "HORIZONTAL",
					["enable"] = false,
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["experience"] = {
					["font"] = "AnimeAce Bold",
					["textYoffset"] = 10,
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 12,
					["width"] = 348,
				},
				["azerite"] = {
					["orientation"] = "HORIZONTAL",
					["enable"] = false,
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["growthDirection"] = "HORIZONTAL",
					["size"] = 50,
					["spacing"] = 8,
				},
				["fontSize"] = 9,
				["stickyFrames"] = false,
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["bonusObjectivePosition"] = "AUTO",
				["minimap"] = {
					["size"] = 235,
					["locationFont"] = "Anime Ace",
					["locationText"] = "HIDE",
					["benikuiStyle"] = false,
				},
				["decimalLength"] = 2,
				["font"] = "Anime Ace",
				["altPowerBar"] = {
					["statusBar"] = "ElvUI Blank",
					["fontSize"] = 11,
					["font"] = "Expressway",
				},
				["backdropfadecolor"] = {
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["objectiveFrameHeight"] = 400,
				["talkingHeadFrameScale"] = 1,
				["bottomPanel"] = false,
				["talkingHeadFrameBackdrop"] = true,
			},
			["bags"] = {
				["countFontSize"] = 9,
				["countFont"] = "Anime Ace",
				["itemLevelFont"] = "Anime Ace",
				["scrapIcon"] = true,
				["countFontOutline"] = "OUTLINE",
				["bagSize"] = 42,
				["bankWidth"] = 474,
				["itemLevelFontSize"] = 9,
				["itemLevelFontOutline"] = "OUTLINE",
				["bagWidth"] = 474,
				["itemLevelCustomColorEnable"] = true,
				["sortInverted"] = false,
				["bankSize"] = 42,
			},
			["hideTutorial"] = true,
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["countFontSize"] = 9,
					["wrapAfter"] = 5,
					["durationFontSize"] = 9,
					["horizontalSpacing"] = 3,
					["maxWraps"] = 3,
					["size"] = 40,
					["growthDirection"] = "RIGHT_DOWN",
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["durationFontSize"] = 9,
					["wrapAfter"] = 5,
					["countFontSize"] = 9,
					["size"] = 40,
				},
				["font"] = "Anime Ace",
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["secondsIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["minutesIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["daysIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["position"] = "TOP",
				["statusbarTexture"] = "BuiFlat",
				["showText"] = true,
				["staticColor"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,147",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-108,279",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,248",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,2",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-1,293",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,418,-186",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-1,293",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,305",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,0",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,151,2",
				["LossControlMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,507",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,244",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,209",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-38",
				["PetAB"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,237",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-1,-36",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,175",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-92,57",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["ElvNP_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,186,314",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,0",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,769",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,368,-210",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,108,279",
				["TotemBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-115,-119",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-151,2",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-245",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,248",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["ReputationBarMover"] = "TOP,ElvUIParent,TOP,0,-12",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
			},
			["tooltip"] = {
				["fontSize"] = 9,
				["healthBar"] = {
					["height"] = 12,
					["fontSize"] = 8,
					["font"] = "Anime Ace",
				},
				["cursorAnchorX"] = 25,
				["headerFontSize"] = 9,
				["textFontSize"] = 9,
				["font"] = "Anime Ace",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["cursorAnchorY"] = -50,
				["visibility"] = {
					["combat"] = true,
					["combatOverride"] = "ALT",
				},
				["smallTextFontSize"] = 9,
			},
			["chat"] = {
				["fontSize"] = 9,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Anime Ace",
				["panelColor"] = {
					["a"] = 0.84548881649971,
					["r"] = 0.117647058823529,
					["g"] = 0.117647058823529,
					["b"] = 0.117647058823529,
				},
				["tabFontSize"] = 8,
				["panelBackdrop"] = "LEFT",
				["font"] = "Anime Ace",
				["timeStampFormat"] = "%I:%M %p ",
				["panelHeight"] = 236,
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelColorConverted"] = true,
				["tapFontSize"] = 9,
				["panelWidth"] = 470,
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["shadows"] = false,
					["hideStyle"] = true,
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["width"] = 414,
						["backdrop"] = true,
						["transparent"] = false,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["unitframe"] = {
				["font"] = "Anime Ace",
				["fontSize"] = 8,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["frameGlow"] = {
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
						},
					},
					["customhealthbackdrop"] = true,
					["useDeadBackdrop"] = true,
					["health"] = {
						["b"] = 0.0588235294117647,
						["g"] = 0.513725490196078,
						["r"] = 0,
					},
					["transparentAurabars"] = true,
					["castReactionColor"] = true,
					["health_backdrop"] = {
						["b"] = 0,
						["g"] = 0.0117647058823529,
						["r"] = 0.109803921568627,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.00392156862745098,
						["b"] = 0,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["statusbar"] = "Minimalist",
				["thinBorders"] = true,
				["units"] = {
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["enable"] = false,
							["iconSize"] = 32,
							["width"] = 270,
						},
						["enable"] = false,
						["disableTargetGlow"] = false,
						["width"] = 270,
					},
					["targettarget"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = 2,
							["enable"] = false,
							["yOffset"] = 0,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
						},
						["debuffs"] = {
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Anime Ace",
						},
						["width"] = 231,
						["height"] = 74,
						["buffs"] = {
							["sizeOverride"] = 18,
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Anime Ace",
						},
					},
					["focus"] = {
						["castbar"] = {
							["height"] = 25,
							["width"] = 96,
						},
						["width"] = 270,
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["castbar"] = {
							["height"] = 25,
							["width"] = 200,
							["insideInfoPanel"] = false,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["orientation"] = "LEFT",
						["height"] = 82,
						["buffs"] = {
							["sizeOverride"] = 26,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["height"] = 22,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["size"] = 12,
							["xOffset"] = 0,
							["position"] = "BOTTOMRIGHT",
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "Anime Ace",
							["size"] = 30,
							["yOffset"] = 25,
						},
						["numGroups"] = 8,
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["visibility"] = "[@raid6,noexists] hide;show",
						["width"] = 92,
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 32,
						},
						["castbar"] = {
							["height"] = 25,
							["width"] = 200,
							["insideInfoPanel"] = false,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["bgUseBarTexture"] = false,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 22,
						},
						["height"] = 82,
						["buffs"] = {
							["enable"] = true,
							["sizeOverride"] = 26,
							["noDuration"] = false,
							["attachTo"] = "FRAME",
						},
						["classbar"] = {
							["height"] = 14,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["width"] = 246,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 9,
				["font"] = "Anime Ace",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttons"] = 12,
					["visibility"] = "[petbattle] hide; show",
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 0,
					["buttonsize"] = 34,
				},
				["fontSize"] = 8,
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 34,
					["backdropSpacing"] = 0,
					["visibility"] = "[petbattle] hide; show",
				},
				["bar1"] = {
					["backdropSpacing"] = 0,
					["buttonsize"] = 34,
				},
				["bar5"] = {
					["enabled"] = false,
					["buttons"] = 9,
					["buttonspacing"] = 0,
					["buttonsPerRow"] = 1,
					["buttonsize"] = 24,
					["visibility"] = "[petbattle] hide; show",
				},
				["font"] = "Anime Ace",
				["bar4"] = {
					["buttonspacing"] = 0,
					["buttonsize"] = 24,
					["backdrop"] = false,
					["visibility"] = "[petbattle] hide; show",
				},
				["fontOutline"] = "OUTLINE",
				["bar6"] = {
					["visibility"] = "[petbattle] hide; show",
					["buttonsize"] = 18,
				},
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["buttonsize"] = 23,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["backdropSpacing"] = 4,
				},
				["backdropSpacingConverted"] = true,
			},
			["nameplates"] = {
				["font"] = "Anime Ace",
				["units"] = {
					["ENEMY_NPC"] = {
						["health"] = {
							["text"] = {
								["font"] = "Anime Ace",
								["fontSize"] = 8,
							},
						},
						["name"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 8,
						},
					},
					["FRIENDLY_NPC"] = {
						["name"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 8,
						},
						["health"] = {
							["text"] = {
								["font"] = "Anime Ace",
								["fontSize"] = 8,
							},
						},
					},
					["PLAYER"] = {
						["health"] = {
							["text"] = {
								["font"] = "Anime Ace",
								["fontSize"] = 8,
							},
						},
						["name"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 8,
						},
					},
					["ENEMY_PLAYER"] = {
						["name"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 8,
						},
					},
					["FRIENDLY_PLAYER"] = {
						["health"] = {
							["text"] = {
								["font"] = "Anime Ace",
								["fontSize"] = 8,
							},
						},
						["portrait"] = {
							["enable"] = true,
						},
						["name"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 8,
						},
					},
				},
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["v11NamePlateReset"] = true,
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
		},
		["Mininimi - Moon Guard"] = {
			["databars"] = {
				["reputation"] = {
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["azerite"] = {
					["enable"] = false,
					["height"] = 150,
					["textSize"] = 9,
					["width"] = 8,
				},
				["experience"] = {
					["font"] = "AnimeAce Bold",
					["width"] = 414,
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["honor"] = {
					["enable"] = false,
					["height"] = 152,
					["textSize"] = 9,
					["width"] = 8,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["backdropcolor"] = {
					["b"] = 0.025,
					["g"] = 0.025,
					["r"] = 0.025,
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["objectiveFrameAutoHide"] = false,
				["minimap"] = {
					["locationFont"] = "Canted Comic",
					["locationText"] = "HIDE",
					["size"] = 215,
				},
				["decimalLength"] = 2,
				["font"] = "Canted Comic",
				["altPowerBar"] = {
					["statusBar"] = "BuiFlat",
					["fontSize"] = 11,
					["font"] = "Expressway",
				},
				["backdropfadecolor"] = {
					["a"] = 1,
					["b"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["r"] = 0.0549019607843137,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["bottomPanel"] = false,
				["objectiveFrameHeight"] = 750,
			},
			["bags"] = {
				["countFont"] = "Canted Comic",
				["itemLevelFont"] = "Canted Comic",
				["itemLevelFontOutline"] = "OUTLINE",
				["sortInverted"] = false,
				["countFontOutline"] = "OUTLINE",
			},
			["hideTutorial"] = true,
			["auras"] = {
				["timeXOffset"] = -1,
				["debuffs"] = {
					["countFontSize"] = 10,
					["size"] = 30,
				},
				["fontOutline"] = "MONOCROMEOUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["countFontSize"] = 10,
					["size"] = 30,
				},
				["font"] = "Canted Comic",
			},
			["VAT"] = {
				["enableStaticColor"] = true,
				["colors"] = {
					["expireIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["secondsIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["minutesIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["daysIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["hoursIndicator"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
				},
				["spacing"] = -6,
				["showText"] = true,
				["statusbarTexture"] = "BuiFlat",
				["position"] = "TOP",
				["staticColor"] = {
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-34",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-217,140",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,3,180",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,22",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-38",
				["BuffsMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,722",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,209",
				["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,155,372",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,85",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,538,233",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,22",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,21",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,664",
				["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-365,163",
				["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,236",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,209",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-56,-397",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,372",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,158,-5",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,189,163",
				["BuiMiddleDtMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,2",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-56,346",
				["ElvUF_TargetTargetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,125",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,31",
				["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,206",
				["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184",
				["TargetPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,365,163",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,324",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,278",
				["BelowMinimapContainerMover"] = "TOP,ElvUIParent,TOP,0,-192",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,116",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,438,2",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,22",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,232",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-415,22",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-526",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-189,163",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,159",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-56,-243",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-226,-4",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,831,141",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-303",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-6",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,217,140",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-438,2",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-300",
				["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292",
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,223",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,200",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140",
				["DebuffsMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,400,-4",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-6",
			},
			["tooltip"] = {
				["textFontSize"] = 10,
				["fontSize"] = 10,
				["healthBar"] = {
					["fontSize"] = 9,
					["font"] = "Canted Comic",
				},
				["headerFontSize"] = 10,
				["font"] = "Canted Comic",
				["smallTextFontSize"] = 10,
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
			["unitframe"] = {
				["fontSize"] = 11,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["transparentHealth"] = true,
					["colorhealthbyvalue"] = false,
					["castClassColor"] = true,
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["b"] = 0.0862745098039216,
						["g"] = 0.0862745098039216,
						["r"] = 0.0862745098039216,
					},
					["transparentAurabars"] = true,
					["useDeadBackdrop"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["b"] = 0.105882352941176,
						["g"] = 0.874509803921569,
						["r"] = 0.219607843137255,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0.003921568627451,
						["g"] = 0.003921568627451,
						["r"] = 0.14901960784314,
					},
				},
				["fontOutline"] = "OUTLINE",
				["smoothbars"] = true,
				["font"] = "Canted Comic",
				["statusbar"] = "BuiFlat",
				["units"] = {
					["pet"] = {
						["infoPanel"] = {
							["transparent"] = true,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 24,
						["buffs"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 10,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["debuffs"] = {
							["xOffset"] = -1,
							["sizeOverride"] = 24,
							["yOffset"] = 12,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["iconAttached"] = false,
							["iconXOffset"] = 2,
						},
						["height"] = 58,
						["buffs"] = {
							["xOffset"] = 16,
							["anchorPoint"] = "CENTER",
							["attachTo"] = "HEALTH",
							["yOffset"] = 0,
						},
						["power"] = {
							["height"] = 5,
						},
						["width"] = 210,
					},
					["party"] = {
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["xOffset"] = -2,
							["yOffset"] = 15,
							["attachTo"] = "InfoPanel",
							["size"] = 12,
						},
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 23,
							["position"] = "RIGHT",
							["xOffset"] = 2,
							["fontSize"] = 14,
							["yOffset"] = 8,
						},
						["portrait"] = {
							["transparent"] = true,
							["enable"] = true,
							["height"] = 15,
							["camDistanceScale"] = 1,
							["width"] = 60,
						},
						["power"] = {
							["xOffset"] = 2,
							["position"] = "LEFT",
							["enable"] = false,
							["height"] = 8,
							["text_format"] = "",
							["yOffset"] = -2,
						},
						["customTexts"] = {
						},
						["rdebuffs"] = {
							["font"] = "Canted Comic",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 220,
						["infoPanel"] = {
							["height"] = 20,
							["transparent"] = true,
						},
						["targetsGroup"] = {
							["anchorPoint"] = "RIGHT",
							["height"] = 16,
							["yOffset"] = -12,
							["xOffset"] = 1,
							["width"] = 70,
						},
						["name"] = {
							["xOffset"] = 2,
							["position"] = "TOPLEFT",
							["text_format"] = "[name:medium] [difficultycolor][smartlevel]",
							["yOffset"] = 16,
						},
						["verticalSpacing"] = 30,
						["height"] = 40,
						["buffs"] = {
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = -10,
						},
						["petsGroup"] = {
							["name"] = {
								["position"] = "LEFT",
							},
							["height"] = 18,
							["yOffset"] = -1,
							["xOffset"] = 0,
							["width"] = 60,
						},
						["health"] = {
							["xOffset"] = 0,
							["position"] = "RIGHT",
							["text_format"] = "[health:current-percent]",
							["yOffset"] = -2,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 5,
						["rdebuffs"] = {
							["font"] = "Canted Comic",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["yOffset"] = 4,
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["height"] = 18,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -1,
						},
						["roleIcon"] = {
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["enable"] = true,
							["size"] = 10,
						},
						["height"] = 35,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["health"] = {
							["yOffset"] = 1,
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["enable"] = false,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["height"] = 5,
						},
						["castbar"] = {
							["height"] = 16,
							["enable"] = false,
							["iconSize"] = 26,
							["icon"] = false,
							["width"] = 110,
						},
						["width"] = 110,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 10,
							},
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["detachFromFrame"] = true,
							["height"] = 6,
							["detachedWidth"] = 240,
							["text_format"] = "[powercolor][power:current-percent]",
							["xOffset"] = 4,
						},
						["castbar"] = {
							["iconXOffset"] = 10,
							["iconPosition"] = "RIGHT",
							["icon"] = false,
							["width"] = 240,
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = -40,
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["orientation"] = "LEFT",
						["height"] = 34,
						["buffs"] = {
							["fontSize"] = 14,
							["sizeOverride"] = 26,
							["yOffset"] = 1,
						},
						["name"] = {
							["xOffset"] = 8,
							["position"] = "RIGHT",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 5,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["yOffset"] = -17,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 5,
						},
						["rdebuffs"] = {
							["yOffset"] = 12,
							["font"] = "Canted Comic",
							["fontOutline"] = "OUTLINE",
							["size"] = 20,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "UP_RIGHT",
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "LEFT",
						},
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["yOffset"] = 0,
							["size"] = 12,
						},
						["height"] = 40,
						["verticalSpacing"] = 5,
						["width"] = 78,
						["health"] = {
							["position"] = "CENTER",
							["yOffset"] = 0,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["fontSize"] = 14,
							["sizeOverride"] = 32,
							["yOffset"] = 2,
						},
						["portrait"] = {
							["enable"] = true,
							["camDistanceScale"] = 1,
							["width"] = 0,
						},
						["castbar"] = {
							["height"] = 28,
							["icon"] = false,
							["width"] = 240,
						},
						["customTexts"] = {
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 10,
							},
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name]",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 14,
							},
						},
						["width"] = 240,
						["infoPanel"] = {
							["height"] = 18,
							["enable"] = true,
							["transparent"] = true,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["attachTextTo"] = "InfoPanel",
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["height"] = 6,
							["detachedWidth"] = 240,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current-percent]",
							["xOffset"] = 2,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
							["yOffset"] = -25,
						},
						["height"] = 34,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["sizeOverride"] = 26,
							["enable"] = true,
							["noDuration"] = false,
							["fontSize"] = 14,
							["yOffset"] = 1,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["detachedWidth"] = 140,
							["fill"] = "spaced",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["targettarget"] = {
						["infoPanel"] = {
							["height"] = 12,
							["transparent"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["height"] = 5,
						},
						["enable"] = false,
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["width"] = 110,
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 10,
				["font"] = "Canted Comic",
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttons"] = 8,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["buttonsize"] = 42,
				},
				["bar6"] = {
					["enabled"] = true,
					["backdrop"] = true,
					["buttonsize"] = 18,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttons"] = 8,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 4,
					["buttonsize"] = 42,
				},
				["bar1"] = {
					["buttons"] = 8,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 8,
					["backdropSpacing"] = 4,
					["buttonsize"] = 42,
				},
				["bar5"] = {
					["backdrop"] = true,
					["buttonsPerRow"] = 12,
					["buttonsize"] = 24,
					["buttons"] = 12,
				},
				["font"] = "Canted Comic",
				["fontOutline"] = "OUTLINE",
				["backdropSpacingConverted"] = true,
				["stanceBar"] = {
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["buttonsize"] = 23,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["backdropSpacing"] = 4,
				},
				["bar4"] = {
					["buttonsize"] = 24,
					["buttonsPerRow"] = 12,
				},
			},
			["nameplates"] = {
				["font"] = "Canted Comic",
				["statusbar"] = "BuiFlat",
				["fontSize"] = 10,
				["stackFont"] = "Canted Comic Bold",
				["healthFont"] = "Canted Comic Bold",
				["displayStyle"] = "BLIZZARD",
				["units"] = {
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
					["PLAYER"] = {
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
							},
						},
						["healthbar"] = {
							["height"] = 4,
							["width"] = 158,
						},
						["alwaysShow"] = true,
					},
				},
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["shadows"] = false,
					["benikuiStyle"] = false,
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
						["getPlayerPortraitSize"] = false,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["transparent"] = false,
						["backdrop"] = true,
						["width"] = 414,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
			},
			["chat"] = {
				["fontSize"] = 10,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Canted Comic",
				["panelColor"] = {
					["a"] = 0.75,
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["tabFontSize"] = 11,
				["font"] = "Canted Comic",
				["panelHeight"] = 150,
				["panelColorConverted"] = true,
				["tapFontSize"] = 10,
				["timeStampFormat"] = "%H:%M ",
			},
		},
		["Minimalistic"] = {
			["currentTutorial"] = 2,
			["general"] = {
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80000001192093,
					["r"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["b"] = 0.058823529411765,
				},
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["textFormat"] = "PERCENT",
					["height"] = 16,
					["width"] = 200,
				},
				["bordercolor"] = {
					["r"] = 0.30588235294118,
					["g"] = 0.30588235294118,
					["b"] = 0.30588235294118,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["fontSize"] = 11,
			},
			["movers"] = {
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-428",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,51,120",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,50",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-50",
				["BossButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-117,-298",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,249,-216",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,827",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-52",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,51,-87",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,143",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,392,1073",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,50",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,90",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-394",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-186",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,305,50",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-305,50",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-50",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,230,140",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-393",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,232",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,1150",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,133",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,184,773",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-488,330",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,995",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-50",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-228",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,51,937",
			},
			["bags"] = {
				["itemLevelFontSize"] = 9,
				["countFontSize"] = 9,
			},
			["hideTutorial"] = true,
			["auras"] = {
				["font"] = "Expressway",
				["buffs"] = {
					["countFontSize"] = 11,
					["maxWraps"] = 2,
					["durationFontSize"] = 11,
				},
				["debuffs"] = {
					["countFontSize"] = 11,
					["durationFontSize"] = 11,
				},
			},
			["unitframe"] = {
				["statusbar"] = "ElvUI Blank",
				["fontOutline"] = "THICKOUTLINE",
				["smoothbars"] = true,
				["font"] = "Expressway",
				["fontSize"] = 9,
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettarget"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -2,
							["position"] = "TOP",
						},
						["height"] = 50,
						["width"] = 122,
					},
					["pet"] = {
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 14,
						},
						["debuffs"] = {
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["width"] = 122,
						},
						["height"] = 50,
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["width"] = 122,
					},
					["party"] = {
						["horizontalSpacing"] = 3,
						["debuffs"] = {
							["numrows"] = 4,
							["anchorPoint"] = "BOTTOM",
							["perrow"] = 1,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 5,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["growthDirection"] = "RIGHT_DOWN",
						["infoPanel"] = {
							["enable"] = true,
						},
						["roleIcon"] = {
							["position"] = "TOPRIGHT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["orientation"] = "VERTICAL",
							["text_format"] = "[healthcolor][health:current]",
							["position"] = "RIGHT",
						},
						["healPrediction"] = true,
						["height"] = 59,
						["verticalSpacing"] = 0,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name:short]",
							["position"] = "LEFT",
						},
						["width"] = 110,
					},
					["player"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["combatfade"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["height"] = 80,
						["castbar"] = {
							["iconAttached"] = false,
							["iconSize"] = 54,
							["height"] = 35,
							["width"] = 478,
						},
						["classbar"] = {
							["height"] = 15,
							["autoHide"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 17,
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["iconSize"] = 26,
							["width"] = 122,
						},
						["height"] = 56,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "LEFT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current]",
						},
						["width"] = 189,
					},
					["target"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["hideonnpc"] = false,
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["castbar"] = {
							["iconSize"] = 54,
							["iconAttached"] = false,
						},
						["height"] = 80,
						["buffs"] = {
							["perrow"] = 7,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["position"] = "RIGHT",
						},
						["debuffs"] = {
							["enable"] = true,
							["sizeOverride"] = 27,
							["perrow"] = 4,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "Expressway",
						},
						["growthDirection"] = "UP_RIGHT",
						["health"] = {
							["yOffset"] = -6,
						},
						["width"] = 140,
						["height"] = 28,
						["name"] = {
							["position"] = "LEFT",
						},
						["visibility"] = "[nogroup] hide;show",
						["groupsPerRowCol"] = 5,
					},
					["arena"] = {
						["castbar"] = {
							["width"] = 246,
						},
						["spacing"] = 26,
					},
					["assist"] = {
						["enable"] = false,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 11,
				["leftChatPanel"] = false,
				["goldFormat"] = "SHORT",
				["panelTransparency"] = true,
				["font"] = "Expressway",
				["panels"] = {
					["BottomMiniPanel"] = "Time",
					["RightMiniPanel"] = "",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["LeftMiniPanel"] = "",
					["LeftChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["fontSize"] = 9,
				["bar2"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar1"] = {
					["heightMult"] = 2,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["globalFadeAlpha"] = 0.87,
				["stanceBar"] = {
					["inheritGlobalFade"] = true,
				},
				["bar6"] = {
					["buttonsize"] = 38,
				},
				["bar4"] = {
					["enabled"] = false,
					["backdrop"] = false,
					["buttonsize"] = 38,
				},
			},
			["layoutSet"] = "dpsMelee",
			["chat"] = {
				["chatHistory"] = false,
				["fontSize"] = 11,
				["tabFont"] = "Expressway",
				["tabFontSize"] = 11,
				["fadeUndockedTabs"] = false,
				["editBoxPosition"] = "ABOVE_CHAT",
				["fadeTabsNoBackdrop"] = false,
				["font"] = "Expressway",
				["panelBackdrop"] = "HIDEBOTH",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["healthBar"] = {
					["font"] = "Expressway",
				},
				["smallTextFontSize"] = 11,
				["fontSize"] = 11,
				["headerFontSize"] = 11,
			},
			["nameplates"] = {
				["filters"] = {
				},
			},
		},
		["Bjorgr - Tichondrius"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["azerite"] = {
					["textFormat"] = "CURMAX",
					["height"] = 20,
					["orientation"] = "HORIZONTAL",
					["font"] = "Sriracha",
					["textSize"] = 14,
					["width"] = 1918,
				},
				["experience"] = {
					["textFormat"] = "CURREM",
					["width"] = 1819,
					["font"] = "Anime Ace",
					["orientation"] = "HORIZONTAL",
					["height"] = 12,
					["textSize"] = 10,
					["textYoffset"] = 10,
				},
				["honor"] = {
					["enable"] = false,
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 9,
					["width"] = 222,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["enable"] = false,
					["spacing"] = 8,
					["size"] = 50,
					["growthDirection"] = "HORIZONTAL",
				},
				["stickyFrames"] = false,
				["talkingHeadFrameBackdrop"] = true,
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["locationText"] = "HIDE",
					["size"] = 249,
					["icons"] = {
						["mail"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["benikuiStyle"] = false,
				},
				["decimalLength"] = 2,
				["font"] = "Sriracha",
				["altPowerBar"] = {
					["statusBar"] = "ElvUI Blank",
					["font"] = "Sriracha",
				},
				["backdropfadecolor"] = {
					["a"] = 0.80527076125145,
					["b"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["r"] = 0.0549019607843137,
				},
				["objectiveFrameHeight"] = 400,
				["bottomPanel"] = false,
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["talkingHeadFrameScale"] = 1,
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 12,
					["growthDirection"] = "LEFT_UP",
					["size"] = 28,
					["durationFontSize"] = 12,
					["maxWraps"] = 2,
					["verticalSpacing"] = 12,
					["horizontalSpacing"] = 2,
					["wrapAfter"] = 13,
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["countFontSize"] = 12,
					["growthDirection"] = "RIGHT_UP",
					["size"] = 28,
					["durationFontSize"] = 12,
					["maxWraps"] = 2,
					["verticalSpacing"] = 12,
					["horizontalSpacing"] = 2,
					["wrapAfter"] = 13,
				},
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["secondsIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["minutesIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["daysIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["position"] = "TOP",
				["statusbarTexture"] = "BuiFlat",
				["showText"] = true,
				["staticColor"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,137",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-269,274",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,1010",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,2",
				["BuffsMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,253,2",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,3",
				["MirrorTimer3Mover"] = "TOP,ElvUIParent,TOP,-10,-132",
				["BossButton"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-500,500",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,500,500",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,60",
				["ElvUF_TargetAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,280,318",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,484,979",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,83",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-228,437",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["TopCenterContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-383,-63",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,99",
				["ElvUF_PlayerAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,-280,316",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,63",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-14",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,270,276",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,306,276",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-419",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvUF_FocusAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-298,521",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-306,82",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,305,84",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-248,-14",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,251,-81",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-400,84",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-8,-60",
				["AzeriteBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,400,82",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,239",
				["ReputationBarMover"] = "TOP,ElvUIParent,TOP,1,-23",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-306,274",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,403",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,-9",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["ElvNP_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,304,433",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,-2,-113",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-3,255",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,853,783",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-271,242",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,342",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-254,2",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
			},
			["chat"] = {
				["fontSize"] = 12,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Sriracha",
				["panelColor"] = {
					["a"] = 0.447339951992035,
					["b"] = 0.117647058823529,
					["g"] = 0.117647058823529,
					["r"] = 0.117647058823529,
				},
				["timeStampFormat"] = "%I:%M %p ",
				["panelHeightRight"] = 236,
				["font"] = "Sriracha",
				["fontOutline"] = "OUTLINE",
				["panelHeight"] = 236,
				["panelColorConverted"] = true,
				["editBoxPosition"] = "ABOVE_CHAT",
				["tapFontSize"] = 12,
				["panelWidth"] = 250,
			},
			["tooltip"] = {
				["cursorAnchorX"] = 25,
				["healthBar"] = {
					["height"] = 12,
					["fontSize"] = 8,
					["font"] = "Sriracha",
				},
				["cursorAnchorY"] = -50,
				["font"] = "Sriracha",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["fontSize"] = 12,
			},
			["bags"] = {
				["junkIcon"] = true,
				["countFont"] = "Sriracha",
				["itemLevelFont"] = "Sriracha",
				["split"] = {
					["bagSpacing"] = 10,
				},
				["bankSize"] = 42,
				["countFontOutline"] = "OUTLINE",
				["bagSize"] = 42,
				["countFontSize"] = 12,
				["bankWidth"] = 474,
				["itemLevelFontOutline"] = "OUTLINE",
				["scrapIcon"] = true,
				["itemLevelCustomColorEnable"] = true,
				["itemLevelFontSize"] = 12,
				["bagWidth"] = 474,
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["shadows"] = false,
					["hideStyle"] = true,
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["width"] = 414,
						["backdrop"] = true,
						["transparent"] = false,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["font"] = "Sriracha",
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["frameGlow"] = {
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
						},
					},
					["customhealthbackdrop"] = true,
					["useDeadBackdrop"] = true,
					["transparentAurabars"] = true,
					["health"] = {
						["b"] = 0.0588235294117647,
						["g"] = 0.513725490196078,
						["r"] = 0,
					},
					["castReactionColor"] = true,
					["health_backdrop"] = {
						["b"] = 0,
						["g"] = 0.0117647058823529,
						["r"] = 0.109803921568627,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0,
						["g"] = 0.00392156862745098,
						["r"] = 0.109803921568627,
					},
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "Minimalist",
				["smoothbars"] = true,
				["thinBorders"] = true,
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["width"] = 246,
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["xOffset"] = 18,
							["sizeOverride"] = 30,
							["anchorPoint"] = "TOP",
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
							["duration"] = {
								["position"] = "RIGHT",
							},
							["fontOutline"] = "OUTLINE",
							["xOffset"] = 69,
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["enable"] = true,
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_UP",
						["groupBy"] = "MTMA",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["damager"] = false,
							["attachTo"] = "Power",
							["position"] = "CENTER",
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 170,
						["health"] = {
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = false,
						},
						["buffs"] = {
							["numrows"] = 2,
							["sizeOverride"] = 24,
							["enable"] = true,
							["yOffset"] = -1,
							["anchorPoint"] = "BOTTOM",
							["perrow"] = 7,
							["priority"] = "Blacklist,Personal",
							["attachTo"] = "POWER",
							["xOffset"] = 72,
						},
						["height"] = 30,
						["verticalSpacing"] = 40,
						["orientation"] = "MIDDLE",
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["width"] = 270,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = 2,
							["enable"] = false,
							["yOffset"] = 0,
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["position"] = "BOTTOMRIGHT",
							["xOffset"] = 0,
							["size"] = 12,
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "Sriracha",
							["yOffset"] = 25,
							["size"] = 30,
						},
						["numGroups"] = 8,
						["growthDirection"] = "DOWN_RIGHT",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["width"] = 92,
						["visibility"] = "[@raid6,noexists] hide;show",
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["player"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["enable"] = true,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["xOffset"] = 0,
							["position"] = "BOTTOM",
							["detachedWidth"] = 330,
							["attachTextTo"] = "Power",
							["height"] = 15,
							["yOffset"] = -1,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 252,
						["castbar"] = {
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttached"] = false,
							["width"] = 179,
							["iconPosition"] = "RIGHT",
							["iconSize"] = 30,
							["iconAttachedTo"] = "Castbar",
							["iconXOffset"] = 2,
							["height"] = 30,
						},
						["name"] = {
							["text_format"] = "[name] the Noble",
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["bgUseBarTexture"] = false,
							["frequentUpdates"] = true,
							["yOffset"] = -4,
						},
						["height"] = 60,
						["buffs"] = {
							["noDuration"] = false,
							["sizeOverride"] = 26,
							["countFont"] = "Sriracha",
							["attachTo"] = "POWER",
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["autoHide"] = true,
							["detachedWidth"] = 330,
							["height"] = 17,
							["spacing"] = 0,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "blockNoDuration",
							["maxDuration"] = 2000,
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
					},
					["focus"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
							["attachTo"] = "BUFFS",
							["perrow"] = 8,
						},
						["disableTargetGlow"] = true,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current]",
							["height"] = 22,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 20,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["castbar"] = {
							["iconSize"] = 42,
							["insideInfoPanel"] = false,
							["height"] = 25,
							["width"] = 200,
						},
						["orientation"] = "LEFT",
						["buffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 26,
							["maxDuration"] = 0,
							["perrow"] = 8,
						},
						["height"] = 82,
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["enable"] = true,
							["height"] = 30,
						},
					},
					["target"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
							["camDistanceScale"] = 4,
							["width"] = 150,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 252,
						["castbar"] = {
							["iconXOffset"] = -2,
							["iconAttached"] = false,
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconSize"] = 30,
							["iconAttachedTo"] = "Castbar",
							["height"] = 30,
							["width"] = 179,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["height"] = 60,
						["orientation"] = "LEFT",
						["buffs"] = {
							["enable"] = false,
							["sizeOverride"] = 26,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["height"] = 22,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "",
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["enable"] = false,
							["iconSize"] = 32,
							["width"] = 248,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableTargetGlow"] = false,
						["width"] = 270,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["font"] = "Sriracha",
				["minimapBottom"] = true,
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "Clique",
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttons"] = 8,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonsize"] = 60,
				},
				["fontSize"] = 16,
				["movementModifier"] = "ALT",
				["useRangeColorText"] = true,
				["hotkeyTextPosition"] = "TOPLEFT",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "THICKOUTLINE",
				["notUsableColor"] = {
					["b"] = 0.215686274509804,
					["g"] = 0.215686274509804,
					["r"] = 0.215686274509804,
				},
				["chargeCooldown"] = true,
				["noPowerColor"] = {
					["b"] = 0.156862745098039,
					["g"] = 0.156862745098039,
					["r"] = 0.156862745098039,
				},
				["bar2"] = {
					["enabled"] = true,
					["visibility"] = "[petbattle] hide; show",
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 4,
					["backdropSpacing"] = 0,
					["buttonsize"] = 60,
				},
				["bar1"] = {
					["flyoutDirection"] = "UP",
					["point"] = "TOPLEFT",
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 60,
					["backdropSpacing"] = 0,
				},
				["backdropSpacingConverted"] = true,
				["bar5"] = {
					["buttonsize"] = 40,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 40,
				},
				["countTextYOffset"] = 0,
				["font"] = "Sriracha",
				["bar7"] = {
					["backdrop"] = false,
				},
				["noRangeColor"] = {
					["b"] = 0.129411764705882,
					["g"] = 0,
					["r"] = 1,
				},
				["hotkeyTextYOffset"] = -6,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["buttonsize"] = 23,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["backdropSpacing"] = 4,
				},
				["bar4"] = {
					["heightMult"] = 3,
					["buttonsize"] = 60,
					["buttons"] = 8,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["backdrop"] = false,
				},
			},
			["abm"] = {
				["targetSpace"] = 3,
				["player"] = true,
				["playerSpace"] = 3,
				["targetw"] = 200,
				["target"] = true,
				["playerw"] = 200,
				["focus"] = true,
				["focusw"] = 200,
			},
			["nameplates"] = {
				["nonTargetTransparency"] = 0.3,
				["clickableHeight"] = 32,
				["units"] = {
					["ENEMY_NPC"] = {
						["level"] = {
							["xOffset"] = 5,
						},
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
							},
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["textPosition"] = "ONBAR",
						},
						["minor"] = true,
						["minions"] = false,
						["buffs"] = {
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["name"] = {
							["fontSize"] = 8,
							["font"] = "Anime Ace",
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["power"] = {
							["displayAltPower"] = false,
						},
						["enable"] = false,
						["title"] = {
							["format"] = "[guild]",
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["yOffset"] = 10,
							["width"] = 120,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["spacing"] = 0,
							["fontOutline"] = "NONE",
							["enable"] = false,
							["font"] = "Sriracha",
							["countFont"] = "Sriracha",
							["size"] = 20,
						},
						["level"] = {
							["enable"] = false,
						},
						["name"] = {
							["enable"] = false,
							["fontSize"] = 10,
							["font"] = "Sriracha",
							["xOffset"] = 1,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Sriracha",
								["format"] = "[namecolor][name:long]",
							},
							["width"] = 120,
						},
					},
					["PLAYER"] = {
						["power"] = {
							["enable"] = false,
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["parent"] = "Health",
								["format"] = "",
								["font"] = "Sriracha",
								["enable"] = true,
							},
							["width"] = 120,
						},
						["castbar"] = {
							["iconSize"] = 20,
							["yOffset"] = 0,
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["enable"] = false,
							["font"] = "Sriracha",
							["spacing"] = 0,
							["size"] = 20,
							["countFont"] = "Sriracha",
							["fontOutline"] = "NONE",
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs",
							},
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["name"] = {
							["fontSize"] = 10,
							["enable"] = true,
							["xOffset"] = 1,
							["font"] = "Sriracha",
							["yOffset"] = -10,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["font"] = "Anime Ace",
								["format"] = "",
							},
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["yOffset"] = 0,
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
						},
						["name"] = {
							["fontSize"] = 8,
							["font"] = "Anime Ace",
							["format"] = "[name]",
						},
					},
					["FRIENDLY_PLAYER"] = {
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["spacing"] = 0,
							["fontOutline"] = "NONE",
							["enable"] = false,
							["font"] = "Sriracha",
							["countFont"] = "Sriracha",
							["size"] = 20,
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["title"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["yOffset"] = 10,
							["width"] = 120,
						},
						["enable"] = false,
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["name"] = {
							["fontSize"] = 10,
							["xOffset"] = 1,
							["format"] = "[name]",
							["font"] = "Sriracha",
							["enable"] = false,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["font"] = "Sriracha",
								["format"] = "[namecolor][name:long]",
							},
							["width"] = 120,
						},
					},
				},
				["statusbar"] = "Minimalist",
				["motionType"] = "OVERLAP",
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["loadDistance"] = 46,
				["clampToScreen"] = true,
				["colors"] = {
					["selection"] = {
						nil, -- [1]
						{
							["g"] = 0.901960784313726,
							["b"] = 0.615686274509804,
						}, -- [2]
					},
				},
				["font"] = "Sriracha",
			},
			["cooldown"] = {
				["fonts"] = {
					["enable"] = true,
					["font"] = "Sriracha",
					["fontSize"] = 14,
				},
				["expiringColor"] = {
					["g"] = 0.333333333333333,
					["b"] = 0.431372549019608,
				},
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
		},
		["Bramblebrow - Emerald Dream"] = {
			["databars"] = {
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["enable"] = true,
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["honor"] = {
					["height"] = 10,
					["enable"] = false,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 9,
					["width"] = 222,
				},
				["experience"] = {
					["textFormat"] = "CURREM",
					["textYoffset"] = 10,
					["font"] = "Anime Ace",
					["orientation"] = "HORIZONTAL",
					["height"] = 12,
					["textSize"] = 10,
					["width"] = 1819,
				},
				["azerite"] = {
					["orientation"] = "HORIZONTAL",
					["enable"] = false,
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["enable"] = false,
					["growthDirection"] = "HORIZONTAL",
					["size"] = 50,
					["spacing"] = 8,
				},
				["stickyFrames"] = false,
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["locationText"] = "HIDE",
					["benikuiStyle"] = false,
					["icons"] = {
						["mail"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["size"] = 234,
				},
				["decimalLength"] = 2,
				["font"] = "Sriracha",
				["altPowerBar"] = {
					["statusBar"] = "ElvUI Blank",
					["font"] = "Sriracha",
				},
				["backdropfadecolor"] = {
					["a"] = 0.80527076125145,
					["r"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["b"] = 0.0549019607843137,
				},
				["objectiveFrameHeight"] = 400,
				["talkingHeadFrameScale"] = 1,
				["bottomPanel"] = false,
				["talkingHeadFrameBackdrop"] = true,
			},
			["bags"] = {
				["countFontSize"] = 12,
				["countFont"] = "Sriracha",
				["itemLevelFont"] = "Sriracha",
				["scrapIcon"] = true,
				["countFontOutline"] = "OUTLINE",
				["bagSize"] = 42,
				["bankWidth"] = 474,
				["itemLevelFontSize"] = 12,
				["itemLevelFontOutline"] = "OUTLINE",
				["bagWidth"] = 474,
				["itemLevelCustomColorEnable"] = true,
				["sortInverted"] = false,
				["bankSize"] = 42,
			},
			["hideTutorial"] = true,
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 2,
					["wrapAfter"] = 13,
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["verticalSpacing"] = 12,
					["maxWraps"] = 2,
					["size"] = 28,
					["growthDirection"] = "RIGHT_DOWN",
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 2,
					["wrapAfter"] = 13,
					["durationFontSize"] = 12,
					["verticalSpacing"] = 12,
					["maxWraps"] = 2,
					["countFontSize"] = 12,
					["size"] = 28,
				},
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["secondsIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["minutesIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["daysIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["position"] = "TOP",
				["statusbarTexture"] = "BuiFlat",
				["showText"] = true,
				["staticColor"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,364",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-270,319",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,1010",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,2",
				["BuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-196,23",
				["BossButton"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-474,123",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,474,123",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,5",
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-390",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_TargetAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-273,218",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,484,979",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,342",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,1,119",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,1,103",
				["ElvUF_PlayerAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,273,218",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,241",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,270,319",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-419",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-216,103",
				["ElvUF_FocusAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,3,425",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,215,103",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-248,-14",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-553,103",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,-2,-113",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,251,-81",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-3,-36",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,551,103",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-220,15",
				["ReputationBarMover"] = "TOP,ElvUIParent,TOP,1,-11",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,239",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,403",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,-9",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["ElvNP_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,119,292",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-245",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,220,15",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,853,783",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,342",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-271,242",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,195,23",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
			["tooltip"] = {
				["fontSize"] = 12,
				["healthBar"] = {
					["height"] = 12,
					["font"] = "Sriracha",
					["fontSize"] = 8,
				},
				["cursorAnchorX"] = 25,
				["headerFontSize"] = 14,
				["cursorAnchorY"] = -50,
				["font"] = "Sriracha",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["textFontSize"] = 10,
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["smallTextFontSize"] = 10,
			},
			["chat"] = {
				["fontSize"] = 12,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Sriracha",
				["panelColor"] = {
					["a"] = 0.84548881649971,
					["r"] = 0.117647058823529,
					["g"] = 0.117647058823529,
					["b"] = 0.117647058823529,
				},
				["timeStampFormat"] = "%I:%M %p ",
				["font"] = "Sriracha",
				["panelHeight"] = 236,
				["fontOutline"] = "OUTLINE",
				["panelColorConverted"] = true,
				["editBoxPosition"] = "ABOVE_CHAT",
				["tapFontSize"] = 12,
				["panelWidth"] = 470,
			},
			["abm"] = {
				["player"] = true,
				["targetSpace"] = 2,
				["playerSpace"] = 2,
				["targetw"] = 200,
				["target"] = true,
				["playerw"] = 200,
				["focus"] = true,
				["focusw"] = 200,
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["unitframe"] = {
				["smoothbars"] = true,
				["fontSize"] = 12,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["frameGlow"] = {
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
						},
					},
					["customhealthbackdrop"] = true,
					["useDeadBackdrop"] = true,
					["health"] = {
						["r"] = 0,
						["g"] = 0.513725490196078,
						["b"] = 0.0588235294117647,
					},
					["transparentAurabars"] = true,
					["castReactionColor"] = true,
					["health_backdrop"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.0117647058823529,
						["b"] = 0,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.00392156862745098,
						["b"] = 0,
					},
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "Minimalist",
				["font"] = "Sriracha",
				["thinBorders"] = true,
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["enable"] = false,
							["xOffset"] = 2,
							["yOffset"] = 0,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["enable"] = false,
							["iconSize"] = 32,
							["width"] = 248,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableTargetGlow"] = false,
						["width"] = 270,
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["height"] = 22,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["height"] = 82,
						["orientation"] = "LEFT",
						["buffs"] = {
							["enable"] = false,
							["sizeOverride"] = 26,
						},
						["castbar"] = {
							["iconXOffset"] = -2,
							["iconAttached"] = false,
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttachedTo"] = "Castbar",
							["height"] = 30,
							["iconSize"] = 30,
							["width"] = 179,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "",
						},
					},
					["player"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["castbar"] = {
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttachedTo"] = "Castbar",
							["width"] = 179,
							["iconPosition"] = "RIGHT",
							["iconSize"] = 30,
							["height"] = 30,
							["iconXOffset"] = 2,
							["iconAttached"] = false,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["detachedWidth"] = 243,
							["position"] = "BOTTOM",
							["xOffset"] = 0,
							["height"] = 15,
							["detachFromFrame"] = true,
							["yOffset"] = -1,
						},
						["name"] = {
							["text_format"] = "[name] the Noble",
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["bgUseBarTexture"] = false,
							["frequentUpdates"] = true,
							["yOffset"] = -4,
						},
						["height"] = 82,
						["buffs"] = {
							["noDuration"] = false,
							["sizeOverride"] = 26,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["height"] = 14,
							["detachedWidth"] = 243,
							["spacing"] = 6,
						},
						["aurabar"] = {
							["maxDuration"] = 0,
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "",
							["attachTo"] = "FRAME",
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
					},
					["focus"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
							["attachTo"] = "BUFFS",
							["perrow"] = 8,
						},
						["disableTargetGlow"] = true,
						["castbar"] = {
							["iconSize"] = 42,
							["width"] = 200,
							["height"] = 25,
							["insideInfoPanel"] = false,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 20,
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["height"] = 82,
						["orientation"] = "LEFT",
						["buffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 26,
							["maxDuration"] = 0,
							["perrow"] = 8,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current]",
							["height"] = 22,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["enable"] = true,
							["height"] = 30,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["size"] = 12,
							["xOffset"] = 0,
							["position"] = "BOTTOMRIGHT",
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "Sriracha",
							["size"] = 30,
							["yOffset"] = 25,
						},
						["numGroups"] = 8,
						["growthDirection"] = "DOWN_RIGHT",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["visibility"] = "[@raid6,noexists] hide;show",
						["width"] = 92,
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["xOffset"] = 18,
							["sizeOverride"] = 30,
							["anchorPoint"] = "TOP",
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["duration"] = {
								["position"] = "RIGHT",
							},
							["xOffset"] = 69,
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_UP",
						["groupBy"] = "MTMA",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["position"] = "CENTER",
							["attachTo"] = "Power",
							["damager"] = false,
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 170,
						["health"] = {
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = false,
						},
						["buffs"] = {
							["numrows"] = 2,
							["sizeOverride"] = 24,
							["xOffset"] = 72,
							["yOffset"] = -1,
							["anchorPoint"] = "BOTTOM",
							["enable"] = true,
							["priority"] = "Blacklist,Personal",
							["attachTo"] = "POWER",
							["perrow"] = 7,
						},
						["height"] = 30,
						["verticalSpacing"] = 40,
						["orientation"] = "MIDDLE",
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["width"] = 246,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["font"] = "Sriracha",
				["minimapBottom"] = true,
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "Clique",
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttons"] = 8,
					["visibility"] = "[petbattle] hide; show",
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonsize"] = 52,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsize"] = 38,
					["buttons"] = 11,
				},
				["movementModifier"] = "ALT",
				["useRangeColorText"] = true,
				["hotkeyTextPosition"] = "TOPLEFT",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "THICKOUTLINE",
				["notUsableColor"] = {
					["r"] = 0.215686274509804,
					["g"] = 0.215686274509804,
					["b"] = 0.215686274509804,
				},
				["chargeCooldown"] = true,
				["noPowerColor"] = {
					["r"] = 0.156862745098039,
					["g"] = 0.156862745098039,
					["b"] = 0.156862745098039,
				},
				["bar2"] = {
					["enabled"] = true,
					["visibility"] = "[petbattle] hide; show",
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonsize"] = 34,
				},
				["bar1"] = {
					["flyoutDirection"] = "UP",
					["buttonsize"] = 34,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["point"] = "TOPLEFT",
				},
				["bar4"] = {
					["heightMult"] = 3,
					["buttonsize"] = 52,
					["buttons"] = 8,
					["visibility"] = "[petbattle] hide; show",
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["backdrop"] = false,
				},
				["bar5"] = {
					["buttonsize"] = 38,
					["buttonsPerRow"] = 12,
					["visibility"] = "[petbattle] hide; show",
					["buttons"] = 11,
				},
				["fontSize"] = 16,
				["countTextYOffset"] = 0,
				["font"] = "Sriracha",
				["bar7"] = {
					["backdrop"] = false,
				},
				["noRangeColor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0.129411764705882,
				},
				["hotkeyTextYOffset"] = -6,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["buttonsize"] = 23,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["backdropSpacing"] = 4,
				},
				["backdropSpacingConverted"] = true,
			},
			["nameplates"] = {
				["nonTargetTransparency"] = 0.3,
				["clickableHeight"] = 32,
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["name"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 8,
						},
						["castbar"] = {
							["textPosition"] = "ONBAR",
							["font"] = "Sriracha",
						},
						["level"] = {
							["xOffset"] = 5,
						},
						["health"] = {
							["text"] = {
								["font"] = "Anime Ace",
								["fontSize"] = 8,
							},
						},
						["buffs"] = {
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["title"] = {
							["format"] = "[guild]",
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["enable"] = false,
							["fontSize"] = 10,
							["xOffset"] = 1,
							["font"] = "Sriracha",
						},
						["power"] = {
							["displayAltPower"] = false,
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
						},
						["level"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["spacing"] = 0,
							["fontOutline"] = "NONE",
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["width"] = 120,
							["yOffset"] = 10,
						},
					},
					["FRIENDLY_PLAYER"] = {
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["width"] = 120,
							["yOffset"] = 10,
						},
						["name"] = {
							["fontSize"] = 10,
							["xOffset"] = 1,
							["format"] = "[name]",
							["enable"] = false,
							["font"] = "Sriracha",
						},
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["title"] = {
							["enable"] = true,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["spacing"] = 0,
							["fontOutline"] = "NONE",
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["size"] = 20,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["name"] = {
							["fontSize"] = 8,
							["format"] = "[name]",
							["font"] = "Anime Ace",
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["format"] = "",
								["font"] = "Anime Ace",
							},
						},
						["buffs"] = {
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["yOffset"] = 0,
						},
					},
					["PLAYER"] = {
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["castbar"] = {
							["iconSize"] = 20,
							["yOffset"] = 0,
						},
						["name"] = {
							["xOffset"] = 1,
							["fontSize"] = 10,
							["font"] = "Sriracha",
							["yOffset"] = -10,
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["enable"] = true,
								["fontSize"] = 10,
								["format"] = "[name]",
								["font"] = "Sriracha",
							},
						},
						["power"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["enable"] = false,
							["font"] = "Sriracha",
							["spacing"] = 0,
							["size"] = 20,
							["fontOutline"] = "NONE",
							["countFont"] = "Sriracha",
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs",
							},
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["useStaticPosition"] = true,
					},
				},
				["statusbar"] = "Minimalist",
				["motionType"] = "OVERLAP",
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["loadDistance"] = 43,
				["clampToScreen"] = true,
				["font"] = "Sriracha",
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["shadows"] = false,
					["hideStyle"] = true,
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["width"] = 414,
						["backdrop"] = true,
						["transparent"] = false,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["cooldown"] = {
				["expiringColor"] = {
					["g"] = 0.333333333333333,
					["b"] = 0.431372549019608,
				},
				["fonts"] = {
					["enable"] = true,
					["font"] = "Sriracha",
					["fontSize"] = 14,
				},
			},
			["v11NamePlateReset"] = true,
		},
		["Top Nameplates"] = {
			["databars"] = {
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["enable"] = true,
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["azerite"] = {
					["orientation"] = "HORIZONTAL",
					["enable"] = false,
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["experience"] = {
					["textFormat"] = "CURREM",
					["textYoffset"] = 10,
					["font"] = "Anime Ace",
					["orientation"] = "HORIZONTAL",
					["height"] = 12,
					["textSize"] = 10,
					["width"] = 1819,
				},
				["honor"] = {
					["height"] = 10,
					["enable"] = false,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 9,
					["width"] = 222,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["enable"] = false,
					["size"] = 50,
					["growthDirection"] = "HORIZONTAL",
					["spacing"] = 8,
				},
				["stickyFrames"] = false,
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["talkingHeadFrameScale"] = 1,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["locationText"] = "HIDE",
					["size"] = 234,
					["icons"] = {
						["mail"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["benikuiStyle"] = false,
				},
				["decimalLength"] = 2,
				["font"] = "Sriracha",
				["altPowerBar"] = {
					["statusBar"] = "ElvUI Blank",
					["font"] = "Sriracha",
				},
				["backdropfadecolor"] = {
					["a"] = 0.80527076125145,
					["b"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["r"] = 0.0549019607843137,
				},
				["objectiveFrameHeight"] = 400,
				["topPanel"] = false,
				["bottomPanel"] = false,
				["talkingHeadFrameBackdrop"] = true,
			},
			["bags"] = {
				["junkIcon"] = true,
				["countFont"] = "Sriracha",
				["itemLevelFont"] = "Sriracha",
				["split"] = {
					["bagSpacing"] = 10,
				},
				["bagWidth"] = 474,
				["countFontOutline"] = "OUTLINE",
				["bagSize"] = 42,
				["bankWidth"] = 474,
				["itemLevelFontSize"] = 12,
				["itemLevelFontOutline"] = "OUTLINE",
				["scrapIcon"] = true,
				["itemLevelCustomColorEnable"] = true,
				["countFontSize"] = 12,
				["bankSize"] = 42,
			},
			["hideTutorial"] = true,
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 2,
					["size"] = 28,
					["wrapAfter"] = 13,
					["durationFontSize"] = 12,
					["verticalSpacing"] = 12,
					["maxWraps"] = 2,
					["countFontSize"] = 12,
					["growthDirection"] = "RIGHT_DOWN",
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 2,
					["size"] = 28,
					["durationFontSize"] = 12,
					["verticalSpacing"] = 12,
					["maxWraps"] = 2,
					["countFontSize"] = 12,
					["wrapAfter"] = 13,
				},
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["secondsIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["minutesIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["daysIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["position"] = "TOP",
				["statusbarTexture"] = "BuiFlat",
				["showText"] = true,
				["staticColor"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,364",
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-390",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,1010",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,2",
				["BuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-196,23",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,3",
				["BossButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-542,-429",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "TOPLEFT,ElvUIParent,TOPLEFT,543,-430",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-268,335",
				["ElvUF_TargetAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,218",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,484,979",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,342",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,342",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["TopCenterContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-383,-63",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,1,103",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,268,335",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,220,15",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-419",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-216,103",
				["ElvUF_FocusAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,3,425",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,215,103",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-248,-14",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,251,-81",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,-2,-113",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-8,-60",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-245",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,543,103",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-220,15",
				["ReputationBarMover"] = "TOP,ElvUIParent,TOP,1,-11",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,204,239",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,403",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,-9",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["ElvNP_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,119,292",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-544,103",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ElvUF_PlayerAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,3,218",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-203,239",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,853,783",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,1,119",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-271,242",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,195,23",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
			},
			["v11NamePlateReset"] = true,
			["tooltip"] = {
				["fontSize"] = 12,
				["healthBar"] = {
					["height"] = 12,
					["font"] = "Sriracha",
					["fontSize"] = 8,
				},
				["cursorAnchorX"] = 25,
				["headerFontSize"] = 14,
				["cursorAnchorY"] = -50,
				["font"] = "Sriracha",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["textFontSize"] = 10,
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["smallTextFontSize"] = 10,
			},
			["chat"] = {
				["fontSize"] = 12,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Sriracha",
				["panelColor"] = {
					["a"] = 0.84548881649971,
					["b"] = 0.117647058823529,
					["g"] = 0.117647058823529,
					["r"] = 0.117647058823529,
				},
				["timeStampFormat"] = "%I:%M %p ",
				["font"] = "Sriracha",
				["panelHeight"] = 236,
				["fontOutline"] = "OUTLINE",
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelColorConverted"] = true,
				["tapFontSize"] = 12,
				["panelWidth"] = 470,
			},
			["abm"] = {
				["focus"] = true,
				["targetSpace"] = 2,
				["playerSpace"] = 2,
				["targetw"] = 200,
				["target"] = true,
				["playerw"] = 200,
				["player"] = true,
				["focusw"] = 200,
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["unitframe"] = {
				["statusbar"] = "Minimalist",
				["fontSize"] = 12,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0,
							["g"] = 0.5,
							["r"] = 1,
						},
					},
					["castColor"] = {
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["frameGlow"] = {
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
						},
					},
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["b"] = 0,
						["g"] = 0.0117647058823529,
						["r"] = 0.109803921568627,
					},
					["transparentAurabars"] = true,
					["useDeadBackdrop"] = true,
					["castReactionColor"] = true,
					["health"] = {
						["b"] = 0.0588235294117647,
						["g"] = 0.513725490196078,
						["r"] = 0,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["b"] = 0,
						["g"] = 0.00392156862745098,
						["r"] = 0.109803921568627,
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Sriracha",
				["smoothbars"] = true,
				["thinBorders"] = true,
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["anchorPoint"] = "TOP",
							["sizeOverride"] = 30,
							["xOffset"] = 18,
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["duration"] = {
								["position"] = "RIGHT",
							},
							["xOffset"] = 69,
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_UP",
						["groupBy"] = "MTMA",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["damager"] = false,
							["attachTo"] = "Power",
							["position"] = "CENTER",
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 170,
						["health"] = {
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = false,
						},
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
						["height"] = 30,
						["verticalSpacing"] = 40,
						["orientation"] = "MIDDLE",
						["buffs"] = {
							["numrows"] = 2,
							["sizeOverride"] = 24,
							["xOffset"] = 72,
							["yOffset"] = -1,
							["anchorPoint"] = "BOTTOM",
							["enable"] = true,
							["priority"] = "Blacklist,Personal",
							["attachTo"] = "POWER",
							["perrow"] = 7,
						},
					},
					["player"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["enable"] = true,
						},
						["castbar"] = {
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttachedTo"] = "Castbar",
							["width"] = 179,
							["iconPosition"] = "RIGHT",
							["iconSize"] = 30,
							["height"] = 30,
							["iconXOffset"] = 2,
							["iconAttached"] = false,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["detachedWidth"] = 243,
							["position"] = "BOTTOM",
							["xOffset"] = 0,
							["height"] = 15,
							["detachFromFrame"] = true,
							["yOffset"] = -1,
						},
						["name"] = {
							["text_format"] = "[name] the Noble",
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["bgUseBarTexture"] = false,
							["frequentUpdates"] = true,
							["yOffset"] = -4,
						},
						["height"] = 82,
						["buffs"] = {
							["noDuration"] = false,
							["sizeOverride"] = 26,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["height"] = 14,
							["detachedWidth"] = 243,
							["spacing"] = 6,
						},
						["aurabar"] = {
							["maxDuration"] = 0,
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "",
							["attachTo"] = "FRAME",
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["iconSize"] = 32,
							["enable"] = false,
							["width"] = 248,
						},
						["enable"] = false,
						["disableTargetGlow"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["width"] = 270,
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["size"] = 12,
							["xOffset"] = 0,
							["position"] = "BOTTOMRIGHT",
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "Sriracha",
							["size"] = 30,
							["yOffset"] = 25,
						},
						["numGroups"] = 8,
						["growthDirection"] = "DOWN_RIGHT",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["visibility"] = "[@raid6,noexists] hide;show",
						["width"] = 92,
					},
					["assist"] = {
						["enable"] = false,
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["width"] = 246,
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
					},
					["focus"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 32,
							["enable"] = false,
							["perrow"] = 8,
						},
						["disableTargetGlow"] = true,
						["castbar"] = {
							["iconSize"] = 42,
							["width"] = 200,
							["height"] = 25,
							["insideInfoPanel"] = false,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 20,
							["enable"] = true,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["height"] = 82,
						["orientation"] = "LEFT",
						["buffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 26,
							["maxDuration"] = 0,
							["perrow"] = 8,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current]",
							["height"] = 22,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["enable"] = true,
							["height"] = 30,
						},
					},
					["target"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
							["camDistanceScale"] = 4,
							["width"] = 150,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["height"] = 22,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["orientation"] = "LEFT",
						["height"] = 82,
						["buffs"] = {
							["enable"] = false,
							["sizeOverride"] = 26,
						},
						["castbar"] = {
							["iconXOffset"] = -2,
							["iconAttachedTo"] = "Castbar",
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconSize"] = 30,
							["height"] = 30,
							["iconAttached"] = false,
							["width"] = 179,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "",
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["enable"] = false,
							["xOffset"] = 2,
							["yOffset"] = 0,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["font"] = "Sriracha",
				["minimapBottom"] = true,
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "Clique",
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["visibility"] = "[petbattle] hide; show",
					["buttons"] = 8,
					["buttonspacing"] = 7,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonsize"] = 52,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsize"] = 38,
					["buttons"] = 11,
				},
				["movementModifier"] = "ALT",
				["useRangeColorText"] = true,
				["hotkeyTextPosition"] = "TOPLEFT",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "THICKOUTLINE",
				["notUsableColor"] = {
					["b"] = 0.215686274509804,
					["g"] = 0.215686274509804,
					["r"] = 0.215686274509804,
				},
				["chargeCooldown"] = true,
				["noPowerColor"] = {
					["b"] = 0.156862745098039,
					["g"] = 0.156862745098039,
					["r"] = 0.156862745098039,
				},
				["bar2"] = {
					["enabled"] = true,
					["visibility"] = "[petbattle] hide; show",
					["buttonspacing"] = 5,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonsize"] = 34,
				},
				["bar1"] = {
					["flyoutDirection"] = "UP",
					["point"] = "TOPLEFT",
					["buttonspacing"] = 5,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonsize"] = 34,
				},
				["bar4"] = {
					["heightMult"] = 3,
					["visibility"] = "[petbattle] hide; show",
					["buttonsize"] = 52,
					["buttons"] = 8,
					["buttonspacing"] = 7,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["backdrop"] = false,
				},
				["bar5"] = {
					["visibility"] = "[petbattle] hide; show",
					["buttonsPerRow"] = 12,
					["buttonsize"] = 38,
					["buttons"] = 11,
				},
				["fontSize"] = 16,
				["bar7"] = {
					["backdrop"] = false,
				},
				["font"] = "Sriracha",
				["countTextYOffset"] = 0,
				["noRangeColor"] = {
					["b"] = 0.129411764705882,
					["g"] = 0,
					["r"] = 1,
				},
				["hotkeyTextYOffset"] = -6,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["buttonsize"] = 23,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdropSpacing"] = 4,
					["backdrop"] = false,
				},
				["backdropSpacingConverted"] = true,
			},
			["nameplates"] = {
				["nonTargetTransparency"] = 0.3,
				["clickableHeight"] = 32,
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["name"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 8,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["textPosition"] = "ONBAR",
						},
						["level"] = {
							["xOffset"] = 5,
						},
						["buffs"] = {
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["health"] = {
							["text"] = {
								["font"] = "Anime Ace",
								["fontSize"] = 8,
							},
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["width"] = 120,
							["yOffset"] = 10,
						},
						["enable"] = false,
						["name"] = {
							["enable"] = false,
							["fontSize"] = 10,
							["xOffset"] = 1,
							["font"] = "Sriracha",
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
							["width"] = 120,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["countFont"] = "Sriracha",
							["spacing"] = 0,
							["enable"] = false,
							["font"] = "Sriracha",
							["fontOutline"] = "NONE",
							["size"] = 20,
						},
						["level"] = {
							["enable"] = false,
						},
						["power"] = {
							["displayAltPower"] = false,
						},
						["title"] = {
							["format"] = "[guild]",
						},
					},
					["PLAYER"] = {
						["castbar"] = {
							["iconSize"] = 20,
							["yOffset"] = 0,
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["name"] = {
							["fontSize"] = 10,
							["enable"] = true,
							["xOffset"] = 1,
							["font"] = "Sriracha",
							["yOffset"] = -10,
						},
						["power"] = {
							["enable"] = false,
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["enable"] = false,
							["font"] = "Sriracha",
							["spacing"] = 0,
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs",
							},
							["countFont"] = "Sriracha",
							["fontOutline"] = "NONE",
							["size"] = 20,
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["enable"] = true,
								["format"] = "",
								["parent"] = "Health",
								["font"] = "Sriracha",
							},
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["format"] = "",
								["font"] = "Anime Ace",
							},
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["yOffset"] = 0,
						},
						["name"] = {
							["fontSize"] = 8,
							["format"] = "[name]",
							["font"] = "Anime Ace",
						},
					},
					["FRIENDLY_PLAYER"] = {
						["title"] = {
							["enable"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
							["width"] = 120,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["width"] = 120,
							["yOffset"] = 10,
						},
						["enable"] = false,
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["countFont"] = "Sriracha",
							["spacing"] = 0,
							["enable"] = false,
							["font"] = "Sriracha",
							["fontOutline"] = "NONE",
							["size"] = 20,
						},
						["name"] = {
							["fontSize"] = 10,
							["enable"] = false,
							["format"] = "[name]",
							["xOffset"] = 1,
							["font"] = "Sriracha",
						},
					},
				},
				["font"] = "Sriracha",
				["motionType"] = "OVERLAP",
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["loadDistance"] = 43,
				["statusbar"] = "Minimalist",
				["clampToScreen"] = true,
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["shadows"] = false,
					["hideStyle"] = true,
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["width"] = 414,
						["backdrop"] = true,
						["transparent"] = false,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["cooldown"] = {
				["expiringColor"] = {
					["g"] = 0.333333333333333,
					["b"] = 0.431372549019608,
				},
				["fonts"] = {
					["enable"] = true,
					["font"] = "Sriracha",
					["fontSize"] = 14,
				},
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
		},
		["Zandro - Tichondrius"] = {
			["databars"] = {
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["enable"] = true,
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["honor"] = {
					["height"] = 10,
					["enable"] = false,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 9,
					["width"] = 222,
				},
				["experience"] = {
					["textFormat"] = "CURREM",
					["textYoffset"] = 10,
					["font"] = "Anime Ace",
					["orientation"] = "HORIZONTAL",
					["height"] = 12,
					["textSize"] = 10,
					["width"] = 1819,
				},
				["azerite"] = {
					["orientation"] = "HORIZONTAL",
					["enable"] = false,
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["enable"] = false,
					["growthDirection"] = "HORIZONTAL",
					["size"] = 50,
					["spacing"] = 8,
				},
				["itemLevel"] = {
					["itemLevelFont"] = "Canted Comic",
					["enchantFont"] = "Canted Comic",
				},
				["stickyFrames"] = false,
				["bonusObjectivePosition"] = "AUTO",
				["topPanel"] = false,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["locationText"] = "HIDE",
					["benikuiStyle"] = false,
					["icons"] = {
						["mail"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["size"] = 234,
				},
				["decimalLength"] = 2,
				["talkingHeadFrameBackdrop"] = true,
				["altPowerBar"] = {
					["statusBar"] = "ElvUI Blank",
					["font"] = "Sriracha",
				},
				["backdropfadecolor"] = {
					["a"] = 0.80527076125145,
					["r"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["b"] = 0.0549019607843137,
				},
				["objectiveFrameHeight"] = 400,
				["talkingHeadFrameScale"] = 1,
				["bottomPanel"] = false,
				["font"] = "Sriracha",
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["size"] = 26,
					["horizontalSpacing"] = 2,
					["wrapAfter"] = 15,
					["growthDirection"] = "LEFT_UP",
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["countFontSize"] = 12,
					["wrapAfter"] = 15,
					["durationFontSize"] = 12,
					["horizontalSpacing"] = 2,
					["maxWraps"] = 1,
					["size"] = 26,
					["growthDirection"] = "RIGHT_UP",
				},
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["secondsIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["minutesIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["daysIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["position"] = "TOP",
				["statusbarTexture"] = "BuiFlat",
				["showText"] = true,
				["staticColor"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,364",
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-390",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,203,346",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,2",
				["BuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-221,6",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-1,293",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-1,293",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,5",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-133,303",
				["ElvUF_TargetAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-273,220",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,342",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,481,190",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,342",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,1,222",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,0",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,241",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-216,103",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-419",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,131,303",
				["ElvUF_FocusAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,3,425",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,215,103",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-248,-14",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,-4,174",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,215,68",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-216,33",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-245",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-216,68",
				["ReputationBarMover"] = "TOP,ElvUIParent,TOP,1,-11",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,251,-81",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,239",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,403",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,-9",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["ElvNP_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,119,292",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-3,-36",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,215,33",
				["ElvUF_PlayerAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,273,218",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,852,301",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-271,242",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,4",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,221,6",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
			},
			["tooltip"] = {
				["cursorAnchorX"] = 25,
				["healthBar"] = {
					["height"] = 12,
					["fontSize"] = 8,
					["font"] = "Sriracha",
				},
				["fontSize"] = 12,
				["headerFontSize"] = 14,
				["textFontSize"] = 10,
				["font"] = "Sriracha",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["cursorAnchorY"] = -50,
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["smallTextFontSize"] = 10,
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
			["abm"] = {
				["targetSpace"] = 2,
				["player"] = true,
				["playerSpace"] = 2,
				["targetw"] = 200,
				["target"] = true,
				["playerw"] = 200,
				["focus"] = true,
				["focusw"] = 200,
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["shadows"] = false,
					["hideStyle"] = true,
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["width"] = 414,
						["backdrop"] = true,
						["transparent"] = false,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["unitframe"] = {
				["smoothbars"] = true,
				["fontSize"] = 12,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["frameGlow"] = {
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
						},
					},
					["customhealthbackdrop"] = true,
					["useDeadBackdrop"] = true,
					["transparentAurabars"] = true,
					["health"] = {
						["r"] = 0,
						["g"] = 0.513725490196078,
						["b"] = 0.0588235294117647,
					},
					["castReactionColor"] = true,
					["health_backdrop"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.0117647058823529,
						["b"] = 0,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.00392156862745098,
						["b"] = 0,
					},
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "Minimalist",
				["font"] = "Sriracha",
				["thinBorders"] = true,
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = 2,
							["enable"] = false,
							["yOffset"] = 0,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["enable"] = false,
							["iconSize"] = 32,
							["width"] = 270,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableTargetGlow"] = false,
						["width"] = 270,
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
							["BenikuiTargetName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiTargetHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Anime Ace",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["threatStyle"] = "GLOW",
							["height"] = 22,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["orientation"] = "LEFT",
						["height"] = 82,
						["buffs"] = {
							["enable"] = false,
							["sizeOverride"] = 26,
						},
						["castbar"] = {
							["height"] = 25,
							["width"] = 200,
							["insideInfoPanel"] = false,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "blockNoDuration,Blacklist,Personal,PlayerBuffs,Boss,RaidDebuffs",
						},
					},
					["player"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["enable"] = false,
							["height"] = 22,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["height"] = 25,
							["width"] = 200,
							["insideInfoPanel"] = false,
						},
						["name"] = {
							["text_format"] = "[name] the Noble",
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["bgUseBarTexture"] = false,
							["frequentUpdates"] = true,
							["yOffset"] = -4,
						},
						["height"] = 82,
						["buffs"] = {
							["noDuration"] = false,
							["sizeOverride"] = 26,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["height"] = 14,
							["detachedWidth"] = 243,
							["spacing"] = 6,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["height"] = 30,
							["priority"] = "Blacklist,blockNoDuration,Boss,RaidDebuffs,PlayerBuffs,nonPersonal,CastByPlayers",
							["maxDuration"] = 0,
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
					},
					["focus"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 32,
							["attachTo"] = "BUFFS",
							["perrow"] = 8,
						},
						["disableTargetGlow"] = true,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current]",
							["height"] = 22,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 20,
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["orientation"] = "LEFT",
						["height"] = 82,
						["buffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 26,
							["maxDuration"] = 0,
							["perrow"] = 8,
						},
						["castbar"] = {
							["iconSize"] = 42,
							["width"] = 200,
							["height"] = 25,
							["insideInfoPanel"] = false,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["maxBars"] = 10,
							["spacing"] = 3,
							["enable"] = true,
							["height"] = 30,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["size"] = 12,
							["xOffset"] = 0,
							["position"] = "BOTTOMRIGHT",
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "Sriracha",
							["size"] = 30,
							["yOffset"] = 25,
						},
						["numGroups"] = 8,
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["visibility"] = "[@raid6,noexists] hide;show",
						["width"] = 92,
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["xOffset"] = 18,
							["sizeOverride"] = 30,
							["anchorPoint"] = "TOP",
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["fontOutline"] = "OUTLINE",
							["xOffset"] = 69,
							["duration"] = {
								["position"] = "RIGHT",
							},
							["enable"] = true,
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_UP",
						["groupBy"] = "MTMA",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["position"] = "CENTER",
							["attachTo"] = "Power",
							["damager"] = false,
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 170,
						["health"] = {
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = false,
						},
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
						["height"] = 30,
						["buffs"] = {
							["numrows"] = 2,
							["sizeOverride"] = 24,
							["enable"] = true,
							["yOffset"] = -1,
							["anchorPoint"] = "BOTTOM",
							["xOffset"] = 72,
							["priority"] = "Blacklist,Personal",
							["attachTo"] = "POWER",
							["perrow"] = 7,
						},
						["orientation"] = "MIDDLE",
						["verticalSpacing"] = 40,
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["width"] = 246,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["font"] = "Sriracha",
				["minimapBottom"] = true,
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "Clique",
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttons"] = 12,
					["buttonsize"] = 34,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 0,
					["visibility"] = "[petbattle] hide; show",
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsize"] = 34,
				},
				["bar4"] = {
					["heightMult"] = 3,
					["buttonsize"] = 34,
					["visibility"] = "[petbattle] hide; show",
					["buttonsPerRow"] = 12,
					["backdrop"] = false,
					["backdropSpacing"] = 0,
				},
				["bar2"] = {
					["enabled"] = true,
					["visibility"] = "[petbattle] hide; show",
					["backdropSpacing"] = 0,
					["buttonsize"] = 34,
				},
				["bar1"] = {
					["backdropSpacing"] = 0,
					["buttonsize"] = 34,
				},
				["fontSize"] = 12,
				["bar5"] = {
					["visibility"] = "[petbattle] hide; show",
					["buttonsPerRow"] = 12,
					["buttonsize"] = 34,
					["buttons"] = 12,
				},
				["hotkeyTextPosition"] = "TOPLEFT",
				["useRangeColorText"] = true,
				["font"] = "Sriracha",
				["hotkeyTextXOffset"] = 2,
				["fontOutline"] = "OUTLINE",
				["hotkeyTextYOffset"] = -2,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["backdropSpacing"] = 4,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["buttonsize"] = 23,
				},
				["backdropSpacingConverted"] = true,
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["nameplates"] = {
				["nonTargetTransparency"] = 0.3,
				["clickableHeight"] = 32,
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["name"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 8,
						},
						["castbar"] = {
							["textPosition"] = "ONBAR",
							["font"] = "Sriracha",
						},
						["level"] = {
							["xOffset"] = 5,
						},
						["health"] = {
							["text"] = {
								["font"] = "Anime Ace",
								["fontSize"] = 8,
							},
						},
						["buffs"] = {
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
					},
					["TARGET"] = {
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["name"] = {
							["enable"] = false,
							["fontSize"] = 10,
							["xOffset"] = 1,
							["font"] = "Sriracha",
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["title"] = {
							["format"] = "[guild]",
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["width"] = 120,
							["yOffset"] = 10,
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["fontOutline"] = "NONE",
							["spacing"] = 0,
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["level"] = {
							["enable"] = false,
						},
						["power"] = {
							["displayAltPower"] = false,
						},
					},
					["FRIENDLY_PLAYER"] = {
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["width"] = 120,
							["yOffset"] = 10,
						},
						["name"] = {
							["fontSize"] = 10,
							["xOffset"] = 1,
							["format"] = "[name]",
							["enable"] = false,
							["font"] = "Sriracha",
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["fontOutline"] = "NONE",
							["spacing"] = 0,
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["title"] = {
							["enable"] = true,
						},
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["name"] = {
							["fontSize"] = 8,
							["format"] = "[name]",
							["font"] = "Anime Ace",
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["format"] = "",
								["font"] = "Anime Ace",
							},
						},
						["buffs"] = {
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["yOffset"] = 0,
						},
					},
					["PLAYER"] = {
						["useStaticPosition"] = true,
						["castbar"] = {
							["iconSize"] = 20,
							["yOffset"] = 0,
						},
						["name"] = {
							["xOffset"] = 1,
							["fontSize"] = 10,
							["font"] = "Sriracha",
							["yOffset"] = -10,
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["enable"] = true,
								["fontSize"] = 10,
								["format"] = "[name]",
								["font"] = "Sriracha",
							},
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["enable"] = false,
							["font"] = "Sriracha",
							["spacing"] = 0,
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs",
							},
							["fontOutline"] = "NONE",
							["countFont"] = "Sriracha",
							["size"] = 20,
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["power"] = {
							["enable"] = false,
						},
					},
				},
				["statusbar"] = "Minimalist",
				["motionType"] = "OVERLAP",
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["loadDistance"] = 43,
				["font"] = "Sriracha",
				["clampToScreen"] = true,
			},
			["bags"] = {
				["countFontSize"] = 12,
				["countFont"] = "Sriracha",
				["itemLevelFont"] = "Sriracha",
				["bagWidth"] = 474,
				["countFontOutline"] = "OUTLINE",
				["bankSize"] = 42,
				["bankWidth"] = 474,
				["itemLevelFontSize"] = 12,
				["itemLevelFontOutline"] = "OUTLINE",
				["scrapIcon"] = true,
				["itemLevelCustomColorEnable"] = true,
				["sortInverted"] = false,
				["bagSize"] = 42,
			},
			["chat"] = {
				["fontSize"] = 12,
				["tabFontOutline"] = "OUTLINE",
				["tabFont"] = "Sriracha",
				["panelColor"] = {
					["a"] = 0.84548881649971,
					["r"] = 0.117647058823529,
					["g"] = 0.117647058823529,
					["b"] = 0.117647058823529,
				},
				["timeStampFormat"] = "%I:%M %p ",
				["font"] = "Sriracha",
				["panelHeight"] = 236,
				["fontOutline"] = "OUTLINE",
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelColorConverted"] = true,
				["tapFontSize"] = 12,
				["panelWidth"] = 470,
			},
		},
		["Madylad - Tichondrius"] = {
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["v11NamePlateReset"] = true,
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,433",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1276",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,196",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,428",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
		},
		["Brungar - Tichondrius"] = {
			["databars"] = {
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["enable"] = true,
					["height"] = 10,
					["textSize"] = 9,
					["width"] = 222,
				},
				["honor"] = {
					["height"] = 10,
					["enable"] = false,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 9,
					["width"] = 222,
				},
				["experience"] = {
					["textYoffset"] = 10,
					["textFormat"] = "CURREM",
					["font"] = "Anime Ace",
					["fontOutline"] = "OUTLINE",
					["orientation"] = "HORIZONTAL",
					["height"] = 30,
					["textSize"] = 10,
					["width"] = 1948,
				},
				["azerite"] = {
					["textFormat"] = "CURMAX",
					["height"] = 20,
					["orientation"] = "HORIZONTAL",
					["font"] = "Sriracha",
					["textSize"] = 14,
					["width"] = 1918,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["totems"] = {
					["growthDirection"] = "HORIZONTAL",
					["size"] = 50,
					["spacing"] = 8,
				},
				["interruptAnnounce"] = "SAY",
				["afk"] = false,
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationFont"] = "Sriracha",
					["locationText"] = "HIDE",
					["resetZoom"] = {
						["enable"] = true,
					},
					["benikuiStyle"] = false,
					["icons"] = {
						["mail"] = {
							["position"] = "BOTTOMLEFT",
						},
					},
					["size"] = 250,
				},
				["decimalLength"] = 2,
				["talkingHeadFrameBackdrop"] = true,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.334398567676544,
					["r"] = 0.0588235294117647,
					["g"] = 0.0588235294117647,
					["b"] = 0.0588235294117647,
				},
				["valuecolor"] = {
					["a"] = 1,
				},
				["threat"] = {
					["position"] = "LEFTCHAT",
				},
				["itemLevel"] = {
					["itemLevelFont"] = "Sriracha",
					["enchantFont"] = "Canted Comic",
				},
				["backdropcolor"] = {
					["a"] = 1,
					["b"] = 0.0745098039215686,
					["g"] = 0.0745098039215686,
					["r"] = 0.0745098039215686,
				},
				["talkingHeadFrameScale"] = 1,
				["bordercolor"] = {
					["a"] = 1,
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["font"] = "Sriracha",
				["altPowerBar"] = {
					["statusBar"] = "ElvUI Blank",
					["font"] = "Sriracha",
				},
				["topPanel"] = false,
				["stickyFrames"] = false,
				["objectiveFrameHeight"] = 400,
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 2,
					["wrapAfter"] = 13,
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["verticalSpacing"] = 12,
					["maxWraps"] = 2,
					["size"] = 28,
					["growthDirection"] = "LEFT_UP",
				},
				["fontOutline"] = "OUTLINE",
				["fadeThreshold"] = 10,
				["buffs"] = {
					["horizontalSpacing"] = 2,
					["wrapAfter"] = 13,
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
					["verticalSpacing"] = 12,
					["maxWraps"] = 2,
					["size"] = 28,
					["growthDirection"] = "RIGHT_UP",
				},
				["timeYOffset"] = 11,
				["font"] = "Sriracha",
			},
			["layoutSet"] = "tank",
			["VAT"] = {
				["colors"] = {
					["expireIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["secondsIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["minutesIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["daysIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
				},
				["enableStaticColor"] = true,
				["spacing"] = -6,
				["position"] = "TOP",
				["statusbarTexture"] = "BuiFlat",
				["showText"] = true,
				["staticColor"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
			},
			["benikuiDatabars"] = {
				["artifact"] = {
					["notifiers"] = {
					},
				},
				["experience"] = {
					["notifiers"] = {
						["enable"] = false,
					},
					["buiStyle"] = false,
				},
				["honor"] = {
					["enable"] = false,
					["notifiers"] = {
						["position"] = "LEFT",
					},
				},
				["reputation"] = {
					["buttonStyle"] = "DEFAULT",
				},
				["azerite"] = {
					["notifiers"] = {
						["position"] = "RIGHT",
					},
					["buttonStyle"] = "DEFAULT",
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,137",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-110,350",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,2,904",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,2",
				["BuffsMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,253,2",
				["MinimapMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
				["MirrorTimer3Mover"] = "TOP,ElvUIParent,TOP,-10,-132",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,137,219",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,9,-75",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-137,219",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,2,3",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,376",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,555,1032",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-271,242",
				["ElvUF_TargetAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,330",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,1,24",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-34",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,105",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,110,350",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,63",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,290",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-14",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-419",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-310,83",
				["ElvUF_FocusAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-298,521",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,310,83",
				["BelowMinimapContainerMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-334,431",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,251,-81",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,-2,-113",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-8,-60",
				["AzeriteBarMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,257,17",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,255",
				["ReputationBarMover"] = "TOP,ElvUIParent,TOP,1,-23",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-310,290",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,11,403",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,-27",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["ElvNP_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,304,433",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-256,18",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-255",
				["ElvUF_PlayerAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,-310,330",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,256",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,853,783",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-14",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,342",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,83",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-4,-274",
				["DebuffsMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-254,2",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,475,344",
			},
			["dashboards"] = {
				["professions"] = {
					["enableProfessions"] = false,
				},
				["tokens"] = {
					["enableTokens"] = false,
				},
				["system"] = {
					["enableSystem"] = false,
				},
			},
			["tooltip"] = {
				["targetInfo"] = false,
				["healthBar"] = {
					["height"] = 12,
					["font"] = "Sriracha",
					["fontSize"] = 8,
				},
				["cursorAnchorX"] = 25,
				["fontSize"] = 12,
				["cursorAnchorY"] = -50,
				["npcID"] = false,
				["textFontSize"] = 14,
				["font"] = "Sriracha",
				["cursorAnchor"] = true,
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["headerFontSize"] = 16,
				["visibility"] = {
					["combatOverride"] = "ALT",
				},
				["spellID"] = false,
			},
			["bags"] = {
				["junkIcon"] = true,
				["countFont"] = "Sriracha",
				["itemLevelFont"] = "Sriracha",
				["split"] = {
					["bagSpacing"] = 10,
				},
				["scrapIcon"] = true,
				["countFontOutline"] = "OUTLINE",
				["bagSize"] = 45,
				["bankWidth"] = 474,
				["itemLevelFontSize"] = 12,
				["itemLevelFontOutline"] = "OUTLINE",
				["bagWidth"] = 474,
				["itemLevelCustomColorEnable"] = true,
				["countFontSize"] = 12,
				["bankSize"] = 45,
			},
			["abm"] = {
				["targetSpace"] = 3,
				["player"] = true,
				["playerSpace"] = 3,
				["targetw"] = 200,
				["target"] = true,
				["playerw"] = 200,
				["focus"] = true,
				["focusw"] = 200,
			},
			["benikuiSkins"] = {
				["variousSkins"] = {
					["talkingHead"] = false,
				},
			},
			["unitframe"] = {
				["smoothbars"] = true,
				["fontSize"] = 12,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["frameGlow"] = {
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
						},
					},
					["customhealthbackdrop"] = true,
					["useDeadBackdrop"] = true,
					["health"] = {
						["r"] = 0,
						["g"] = 0.513725490196078,
						["b"] = 0.0588235294117647,
					},
					["transparentAurabars"] = true,
					["castReactionColor"] = true,
					["health_backdrop"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.0117647058823529,
						["b"] = 0,
					},
					["powerclass"] = true,
					["health_backdrop_dead"] = {
						["r"] = 0.109803921568627,
						["g"] = 0.00392156862745098,
						["b"] = 0,
					},
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "Minimalist",
				["font"] = "Sriracha",
				["thinBorders"] = true,
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["enable"] = false,
							["iconSize"] = 32,
							["width"] = 248,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableTargetGlow"] = false,
						["width"] = 271,
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["enable"] = false,
							["xOffset"] = 2,
							["yOffset"] = 0,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["debuffs"] = {
							["attachTo"] = "HEALTH",
							["sizeOverride"] = 27,
							["perrow"] = 10,
							["enable"] = false,
							["priority"] = "",
							["countFont"] = "Sriracha",
							["yOffset"] = -65,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
							["camDistanceScale"] = 4,
							["width"] = 150,
						},
						["smartAuraDisplay"] = "DISABLED",
						["customTexts"] = {
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 22,
							["threatStyle"] = "GLOW",
							["enable"] = false,
						},
						["name"] = {
							["yOffset"] = 8,
							["text_format"] = "[namecolor][name]",
							["position"] = "TOP",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["xOffset"] = 0,
							["text_format"] = "[healthcolor][health:current]",
							["yOffset"] = -6,
						},
						["orientation"] = "LEFT",
						["height"] = 50,
						["buffs"] = {
							["attachTo"] = "HEALTH",
							["sizeOverride"] = 27,
							["perrow"] = 10,
							["priority"] = "Personal,nonPersonal",
							["countFont"] = "Sriracha",
							["yOffset"] = -27,
						},
						["castbar"] = {
							["iconXOffset"] = -2,
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconAttached"] = false,
							["iconSize"] = 30,
							["height"] = 30,
							["width"] = 180,
						},
						["aurabar"] = {
							["maxDuration"] = 0,
							["priority"] = "Personal,nonPersonal",
							["friendlyAuraType"] = "HARMFUL",
							["attachTo"] = "BUFFS",
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["width"] = 246,
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Sriracha",
						},
					},
					["focus"] = {
						["debuffs"] = {
							["sizeOverride"] = 32,
						},
						["disableTargetGlow"] = true,
						["castbar"] = {
							["iconSize"] = 42,
							["width"] = 200,
							["height"] = 25,
							["insideInfoPanel"] = false,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 20,
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current]",
							["height"] = 22,
						},
						["height"] = 82,
						["buffs"] = {
							["sizeOverride"] = 26,
						},
						["orientation"] = "LEFT",
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["size"] = 12,
							["xOffset"] = 0,
							["position"] = "BOTTOMRIGHT",
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "Sriracha",
							["size"] = 30,
							["yOffset"] = 25,
						},
						["numGroups"] = 8,
						["growthDirection"] = "DOWN_RIGHT",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["visibility"] = "[@raid6,noexists] hide;show",
						["width"] = 92,
					},
					["player"] = {
						["debuffs"] = {
							["numrows"] = 5,
							["sizeOverride"] = 41,
							["attachTo"] = "POWER",
							["priority"] = "Personal,nonPersonal",
							["countFont"] = "Sriracha",
							["yOffset"] = 2,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
							["enable"] = true,
						},
						["castbar"] = {
							["iconPosition"] = "RIGHT",
							["height"] = 30,
							["spark"] = false,
							["insideInfoPanel"] = false,
							["iconSize"] = 30,
							["iconXOffset"] = 2,
							["iconAttached"] = false,
							["width"] = 180,
						},
						["customTexts"] = {
							["BenikuiPlayerName"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
							["BenikuiPlayerHealth"] = {
								["attachTextTo"] = "InfoPanel",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = -2,
								["font"] = "Canted Comic Bold",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 10,
							},
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["fader"] = {
							["health"] = false,
							["power"] = false,
							["enable"] = true,
							["vehicle"] = false,
							["casting"] = false,
							["playertarget"] = false,
						},
						["name"] = {
							["yOffset"] = 8,
							["text_format"] = "[namecolor][name] the Noble",
							["position"] = "TOP",
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["bgUseBarTexture"] = false,
							["text_format"] = "[healthcolor][health:current]",
							["yOffset"] = -6,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["detachedWidth"] = 330,
							["position"] = "BOTTOM",
							["xOffset"] = 0,
							["height"] = 20,
							["detachFromFrame"] = true,
							["yOffset"] = -1,
						},
						["height"] = 50,
						["buffs"] = {
							["noDuration"] = false,
							["sizeOverride"] = 26,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["spacing"] = 0,
							["detachedWidth"] = 330,
							["height"] = 17,
							["additionalPowerText"] = false,
						},
						["aurabar"] = {
							["maxDuration"] = 0,
							["priority"] = "blockNoDuration,Personal,nonPersonal",
							["maxBars"] = 40,
							["sort"] = "TIME_REMAINING_REVERSE",
						},
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["xOffset"] = 18,
							["sizeOverride"] = 30,
							["anchorPoint"] = "TOP",
							["position"] = "RIGHT",
						},
						["portrait"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Sriracha",
							["stack"] = {
								["position"] = "BOTTOM",
							},
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["duration"] = {
								["position"] = "RIGHT",
							},
							["xOffset"] = 69,
							["size"] = 30,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_UP",
						["groupBy"] = "MTMA",
						["roleIcon"] = {
							["attachTextTo"] = "Health",
							["position"] = "CENTER",
							["attachTo"] = "Power",
							["damager"] = false,
						},
						["power"] = {
							["height"] = 13,
						},
						["customTexts"] = {
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["width"] = 170,
						["health"] = {
							["frequentUpdates"] = true,
							["bgUseBarTexture"] = false,
						},
						["buffs"] = {
							["anchorPoint"] = "BOTTOM",
							["sizeOverride"] = 24,
							["perrow"] = 7,
							["enable"] = true,
							["xOffset"] = 72,
							["attachTo"] = "POWER",
							["numrows"] = 2,
							["yOffset"] = -1,
						},
						["height"] = 30,
						["verticalSpacing"] = 40,
						["orientation"] = "MIDDLE",
						["buffIndicator"] = {
							["enable"] = false,
							["size"] = 20,
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["font"] = "Sriracha",
				["minimapBottom"] = true,
				["fontOutline"] = "OUTLINE",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["BottomMiniPanel"] = "Clique",
					["BuiRightChatDTPanel"] = {
						["middle"] = "Bags",
						["left"] = "Spec Switch (BenikUI)",
					},
					["BuiLeftChatDTPanel"] = {
						["right"] = "BuiMail",
						["left"] = "Attack Power",
						["middle"] = "BfA Missions (BenikUI)",
					},
					["BuiMiddleDTPanel"] = {
						["right"] = "Armor",
						["left"] = "Avoidance",
						["middle"] = "Mastery",
					},
					["LeftChatDataPanel"] = {
						["right"] = "Quick Join",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["heightMult"] = 3,
					["buttonsize"] = 60,
					["flyoutDirection"] = "DOWN",
					["buttons"] = 10,
					["buttonspacing"] = 5,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["showGrid"] = false,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 40,
					["showGrid"] = false,
				},
				["extraActionButton"] = {
					["scale"] = 1.12,
				},
				["useRangeColorText"] = true,
				["hotkeyTextPosition"] = "TOPLEFT",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "THICKOUTLINE",
				["notUsableColor"] = {
					["r"] = 0.215686274509804,
					["g"] = 0.215686274509804,
					["b"] = 0.215686274509804,
				},
				["chargeCooldown"] = true,
				["noPowerColor"] = {
					["r"] = 0.156862745098039,
					["g"] = 0.156862745098039,
					["b"] = 0.156862745098039,
				},
				["bar4"] = {
					["flyoutDirection"] = "DOWN",
					["buttons"] = 10,
					["buttonspacing"] = 5,
					["backdrop"] = false,
					["heightMult"] = 3,
					["showGrid"] = false,
					["buttonsPerRow"] = 2,
					["backdropSpacing"] = 0,
					["buttonsize"] = 60,
				},
				["bar2"] = {
					["enabled"] = true,
					["visibility"] = "[petbattle] hide; show",
					["buttonspacing"] = 10,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 60,
					["backdropSpacing"] = 0,
				},
				["bar1"] = {
					["flyoutDirection"] = "UP",
					["buttonsize"] = 60,
					["buttonspacing"] = 10,
					["buttonsPerRow"] = 4,
					["backdropSpacing"] = 0,
					["point"] = "TOPLEFT",
				},
				["movementModifier"] = "ALT",
				["bar5"] = {
					["showGrid"] = false,
					["buttonsize"] = 40,
					["buttons"] = 12,
				},
				["fontSize"] = 16,
				["noRangeColor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0.129411764705882,
				},
				["font"] = "Sriracha",
				["countTextYOffset"] = 0,
				["bar7"] = {
					["backdrop"] = false,
				},
				["hotkeyTextYOffset"] = -6,
				["stanceBar"] = {
					["enabled"] = false,
					["buttonsize"] = 24,
				},
				["barPet"] = {
					["buttonsize"] = 20,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdropSpacing"] = 4,
					["backdrop"] = false,
				},
				["backdropSpacingConverted"] = true,
			},
			["benikui"] = {
				["installed"] = true,
				["misc"] = {
					["ilevel"] = {
						["enable"] = false,
						["font"] = "Canted Comic",
						["fontsize"] = 10,
					},
				},
				["general"] = {
					["shadows"] = false,
					["hideStyle"] = true,
				},
				["actionbars"] = {
					["style"] = {
						["bar3"] = false,
						["bar6"] = false,
						["stancebar"] = false,
						["bar2"] = false,
						["bar1"] = false,
						["petbar"] = false,
						["bar5"] = false,
						["bar4"] = false,
					},
				},
				["datatexts"] = {
					["middle"] = {
						["height"] = 22,
						["width"] = 414,
						["backdrop"] = true,
						["transparent"] = false,
					},
					["chat"] = {
						["styled"] = true,
						["transparent"] = true,
					},
				},
				["unitframes"] = {
					["textures"] = {
						["ignoreTransparency"] = true,
					},
					["player"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["portraitHeight"] = 47,
					},
					["target"] = {
						["detachPortrait"] = true,
						["portraitStyle"] = true,
						["getPlayerPortraitSize"] = false,
						["portraitHeight"] = 47,
					},
					["castbar"] = {
						["text"] = {
							["ShowInfoText"] = false,
							["player"] = {
								["yOffset"] = -18,
							},
							["target"] = {
								["yOffset"] = -18,
							},
							["yOffset"] = 0,
						},
					},
				},
			},
			["nameplates"] = {
				["nonTargetTransparency"] = 0.3,
				["clickableHeight"] = 32,
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
						["health"] = {
							["text"] = {
								["font"] = "Anime Ace",
								["fontSize"] = 8,
							},
						},
						["castbar"] = {
							["textPosition"] = "ONBAR",
							["font"] = "Sriracha",
						},
						["minor"] = true,
						["level"] = {
							["xOffset"] = 5,
						},
						["name"] = {
							["font"] = "Anime Ace",
							["fontSize"] = 8,
						},
						["buffs"] = {
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["yOffset"] = 0,
						},
					},
					["TARGET"] = {
						["classpower"] = {
							["enable"] = true,
						},
						["glowStyle"] = "style1",
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["width"] = 120,
							["yOffset"] = 10,
						},
						["enable"] = false,
						["title"] = {
							["format"] = "[guild]",
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
						},
						["name"] = {
							["enable"] = false,
							["fontSize"] = 10,
							["xOffset"] = 1,
							["font"] = "Sriracha",
						},
						["level"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["fontOutline"] = "NONE",
							["spacing"] = 0,
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["size"] = 20,
						},
						["power"] = {
							["displayAltPower"] = false,
						},
					},
					["FRIENDLY_PLAYER"] = {
						["name"] = {
							["fontSize"] = 10,
							["xOffset"] = 1,
							["format"] = "[name]",
							["enable"] = false,
							["font"] = "Sriracha",
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["title"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["font"] = "Sriracha",
							["iconOffsetY"] = -13,
							["iconSize"] = 22,
							["textPosition"] = "ABOVE",
							["width"] = 120,
							["yOffset"] = 10,
						},
						["enable"] = false,
						["level"] = {
							["enable"] = false,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["format"] = "[namecolor][name:long]",
								["font"] = "Sriracha",
							},
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["fontOutline"] = "NONE",
							["spacing"] = 0,
							["enable"] = false,
							["countFont"] = "Sriracha",
							["font"] = "Sriracha",
							["size"] = 20,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["filters"] = {
								["priority"] = "Blacklist,Personal,CCDebuffs",
							},
						},
						["name"] = {
							["fontSize"] = 8,
							["format"] = "[name]",
							["font"] = "Anime Ace",
						},
						["level"] = {
							["xOffset"] = 5,
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 8,
								["format"] = "",
								["font"] = "Anime Ace",
							},
						},
						["buffs"] = {
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,RaidBuffsElvUI,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							},
							["yOffset"] = 0,
						},
					},
					["PLAYER"] = {
						["name"] = {
							["fontSize"] = 10,
							["enable"] = true,
							["xOffset"] = 1,
							["font"] = "Sriracha",
							["yOffset"] = -10,
						},
						["debuffs"] = {
							["enable"] = false,
							["filters"] = {
								["priority"] = "Blacklist,Boss,CCDebuffs,RaidDebuffs,Dispellable",
							},
						},
						["health"] = {
							["width"] = 120,
							["text"] = {
								["fontSize"] = 10,
								["parent"] = "Health",
								["format"] = "",
								["enable"] = true,
								["font"] = "Sriracha",
							},
						},
						["power"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["countFontSize"] = 4,
							["fontSize"] = 4,
							["enable"] = false,
							["font"] = "Sriracha",
							["spacing"] = 0,
							["size"] = 20,
							["fontOutline"] = "NONE",
							["countFont"] = "Sriracha",
							["filters"] = {
								["maxDuration"] = 0,
								["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs",
							},
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["visibility"] = {
							["showAlways"] = true,
						},
						["castbar"] = {
							["iconSize"] = 20,
							["yOffset"] = 0,
						},
					},
				},
				["statusbar"] = "Minimalist",
				["motionType"] = "OVERLAP",
				["clickThrough"] = {
					["personal"] = true,
					["friendly"] = true,
				},
				["loadDistance"] = 46,
				["font"] = "Sriracha",
				["colors"] = {
					["selection"] = {
						nil, -- [1]
						{
							["g"] = 0.901960784313726,
							["b"] = 0.615686274509804,
						}, -- [2]
					},
				},
				["clampToScreen"] = true,
			},
			["cooldown"] = {
				["expiringColor"] = {
					["g"] = 0.333333333333333,
					["b"] = 0.431372549019608,
				},
				["fonts"] = {
					["enable"] = true,
					["font"] = "Sriracha",
					["fontSize"] = 14,
				},
			},
			["chat"] = {
				["fontSize"] = 12,
				["tabFontOutline"] = "OUTLINE",
				["desaturateVoiceIcons"] = false,
				["timeStampFormat"] = "%I:%M %p ",
				["panelColor"] = {
					["a"] = 0.449999988079071,
					["r"] = 0.0823529411764706,
					["g"] = 0.0823529411764706,
					["b"] = 0.0823529411764706,
				},
				["tabFont"] = "Sriracha",
				["font"] = "Sriracha",
				["panelHeightRight"] = 236,
				["panelColorConverted"] = true,
				["panelHeight"] = 250,
				["fontOutline"] = "OUTLINE",
				["editBoxPosition"] = "ABOVE_CHAT",
				["pinVoiceButtons"] = false,
				["tapFontSize"] = 12,
				["panelWidth"] = 250,
			},
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Vedrixa - Moon Guard"] = "Vedrixa - Moon Guard",
		["Honabar - Emerald Dream"] = "Honabar - Emerald Dream",
		["Andalsam - Tichondrius"] = "Andalsam - Tichondrius",
		["Zandroh - Tichondrius"] = "Zandroh - Tichondrius",
		["Zandro - Tichondrius"] = "Zandro - Tichondrius",
		["Whitmoore - Emerald Dream"] = "Whitmoore - Emerald Dream",
		["Bramblebrow - Emerald Dream"] = "Bramblebrow - Emerald Dream",
		["Wharapi - Tichondrius"] = "Wharapi - Tichondrius",
		["Ayanir - Moon Guard"] = "Ayanir - Moon Guard",
		["Mcpokesalot - Tichondrius"] = "Mcpokesalot - Tichondrius",
		["Iscrackl - Tichondrius"] = "Iscrackl - Tichondrius",
		["Andallsa - Tichondrius"] = "Andallsa - Tichondrius",
		["Stoakt - Tichondrius"] = "Stoakt - Tichondrius",
		["Andalsa - Tichondrius"] = "Andalsa - Tichondrius",
		["Lonalber - Emerald Dream"] = "Lonalber - Emerald Dream",
		["Magnr - Tichondrius"] = "Magnr - Tichondrius",
		["Umbrick - Tichondrius"] = "Umbrick - Tichondrius",
		["Byanir - Emerald Dream"] = "Byanir - Emerald Dream",
		["Tirdailough - Tichondrius"] = "Tirdailough - Tichondrius",
		["Curaney - Tichondrius"] = "Curaney - Tichondrius",
		["Harwapa - Tichondrius"] = "Harwapa - Tichondrius",
		["Mahakah - Tichondrius"] = "Mahakah - Tichondrius",
		["Mininimi - Moon Guard"] = "Mininimi - Moon Guard",
		["Bjorgr - Tichondrius"] = "Bjorgr - Tichondrius",
		["Byanir - Moon Guard"] = "Byanir - Moon Guard",
		["Umbrick - Emerald Dream"] = "Umbrick - Emerald Dream",
		["Grandh - Tichondrius"] = "Grandh - Tichondrius",
		["Madylad - Tichondrius"] = "Madylad - Tichondrius",
		["Brungar - Tichondrius"] = "Brungar - Tichondrius",
	},
	["profiles"] = {
		["Vedrixa - Moon Guard"] = {
			["general"] = {
				["chatBubbleFontSize"] = 16,
				["normTex"] = "BuiFlat",
				["dmgfont"] = "Canted Comic Bold",
				["chatBubbleFont"] = "Original Woody",
				["namefont"] = "Canted Comic Bold",
				["glossTex"] = "BuiFlat",
			},
			["benikui"] = {
				["install_complete"] = "3.54",
				["session"] = {
					["day"] = 5,
				},
				["expressway"] = true,
			},
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[241] = false,
						[1174] = false,
						[980] = false,
						[1587] = false,
						[615] = false,
						[1508] = false,
						[385] = false,
						[393] = false,
						[397] = false,
						[401] = false,
						[1716] = false,
						[1129] = false,
						[1717] = false,
						[823] = false,
						[1273] = false,
						[1416] = false,
						[1718] = false,
						[1226] = false,
						[752] = false,
						[776] = false,
						[1560] = false,
						[398] = false,
						[402] = false,
						[824] = false,
						[1275] = false,
						[1355] = false,
						[1149] = false,
						[777] = false,
						[1356] = false,
						[944] = false,
						[61] = false,
						[1166] = false,
						[738] = false,
						[1357] = false,
						[754] = false,
						[391] = false,
						[1580] = false,
						[1342] = false,
						[1533] = false,
						[81] = false,
						[1534] = false,
						[676] = false,
						[1154] = false,
						[1710] = false,
						[994] = false,
						[384] = false,
						[1155] = false,
						[1314] = false,
						[400] = false,
						[677] = false,
						[399] = false,
						[828] = false,
						[416] = false,
						[394] = false,
						[1299] = false,
						[829] = false,
						[1191] = false,
						[1220] = false,
						[1172] = false,
						[1535] = false,
						[1268] = false,
						[614] = false,
						[1173] = false,
						[789] = false,
						[1101] = false,
						[361] = false,
						[697] = false,
						[821] = false,
						[515] = false,
					},
				},
			},
			["theme"] = "classic",
			["install_complete"] = "10.92",
		},
		["Honabar - Emerald Dream"] = {
		},
		["Andalsam - Tichondrius"] = {
			["general"] = {
				["normTex"] = "Minimalist",
				["minimapbar"] = {
					["mbgarrison"] = true,
					["buttonsPerRow"] = 8,
					["mouseover"] = true,
					["mbcalendar"] = true,
				},
				["raidmarkerbar"] = {
					["visibility"] = "INPARTY",
					["backdrop"] = true,
				},
				["namefont"] = "Sriracha",
				["glossTex"] = "Minimalist",
				["dmgfont"] = "Anime Ace",
			},
			["skins"] = {
				["blizzard"] = {
					["raid"] = false,
					["pvp"] = false,
				},
			},
			["bags"] = {
				["enable"] = false,
			},
			["install_complete"] = "11.16",
			["auras"] = {
				["masque"] = {
					["buffs"] = true,
				},
			},
		},
		["Zandroh - Tichondrius"] = {
			["skins"] = {
				["blizzard"] = {
					["timemanager"] = false,
					["misc"] = false,
					["gossip"] = false,
					["deathRecap"] = false,
					["bags"] = false,
					["calendar"] = false,
					["merchant"] = false,
					["loot"] = false,
					["taxi"] = false,
					["dressingroom"] = false,
					["raid"] = false,
					["quest"] = false,
					["worldmap"] = false,
					["achievement"] = false,
					["tradeskill"] = false,
					["debug"] = false,
					["lfg"] = false,
					["macro"] = false,
					["encounterjournal"] = false,
					["archaeology"] = false,
					["spellbook"] = false,
					["friends"] = false,
					["collections"] = false,
					["addonManager"] = false,
					["trade"] = false,
					["mail"] = false,
					["inspect"] = false,
					["voidstorage"] = false,
					["pvp"] = false,
				},
			},
			["install_complete"] = "11.10",
		},
		["Zandro - Tichondrius"] = {
			["skins"] = {
				["parchmentRemover"] = {
					["enable"] = true,
				},
			},
			["general"] = {
				["minimapbar"] = {
					["mouseover"] = true,
					["buttonsPerRow"] = 20,
					["mbgarrison"] = true,
					["mbcalendar"] = true,
				},
				["raidmarkerbar"] = {
					["visibility"] = "INPARTY",
				},
				["namefont"] = "Anime Ace",
				["minimap"] = {
					["hideClassHallReport"] = true,
					["hideCalendar"] = false,
				},
				["normTex"] = "Minimalist",
				["dmgfont"] = "Sriracha",
				["chatBubbleFont"] = "Sriracha",
				["chatBubbleFontOutline"] = "OUTLINE",
				["glossTex"] = "Minimalist",
			},
			["install_complete"] = "11.10",
		},
		["Whitmoore - Emerald Dream"] = {
			["benikui"] = {
				["session"] = {
					["day"] = 2,
				},
			},
			["install_complete"] = "10.87",
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[241] = false,
						[1174] = false,
						[980] = false,
						[1587] = false,
						[615] = false,
						[1508] = false,
						[385] = false,
						[393] = false,
						[397] = false,
						[401] = false,
						[1716] = false,
						[1129] = false,
						[1717] = false,
						[823] = false,
						[1273] = false,
						[1416] = false,
						[1718] = false,
						[1226] = false,
						[752] = false,
						[776] = false,
						[1560] = false,
						[398] = false,
						[402] = false,
						[824] = false,
						[1275] = false,
						[1355] = false,
						[1149] = false,
						[777] = false,
						[1356] = false,
						[944] = false,
						[61] = false,
						[1166] = false,
						[738] = false,
						[1357] = false,
						[754] = false,
						[391] = false,
						[1580] = false,
						[1342] = false,
						[1533] = false,
						[81] = false,
						[1534] = false,
						[676] = false,
						[1154] = false,
						[1710] = false,
						[994] = false,
						[384] = false,
						[1155] = false,
						[1314] = false,
						[400] = false,
						[677] = false,
						[515] = false,
						[416] = false,
						[828] = false,
						[697] = false,
						[1299] = false,
						[361] = false,
						[1101] = false,
						[1220] = false,
						[1172] = false,
						[1535] = false,
						[1268] = false,
						[614] = false,
						[1173] = false,
						[789] = false,
						[1191] = false,
						[829] = false,
						[394] = false,
						[821] = false,
						[399] = false,
					},
				},
			},
		},
		["Bramblebrow - Emerald Dream"] = {
			["benikui"] = {
				["expressway"] = true,
				["install_complete"] = "3.53",
			},
			["install_complete"] = "10.87",
			["general"] = {
				["chatBubbleFontSize"] = 12,
				["normTex"] = "Minimalist",
				["glossTex"] = "Minimalist",
				["namefont"] = "Sriracha",
				["chatBubbleName"] = true,
				["chatBubbleFont"] = "Sriracha",
				["dmgfont"] = "Sriracha",
				["minimap"] = {
					["hideCalendar"] = false,
				},
			},
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[416] = false,
						[828] = false,
						[1534] = false,
						[361] = false,
						[1101] = false,
						[1357] = false,
						[1172] = false,
						[789] = false,
						[980] = false,
						[1129] = false,
						[614] = false,
						[994] = false,
						[1535] = false,
						[752] = false,
						[754] = false,
						[821] = false,
						[384] = false,
						[385] = false,
						[829] = false,
						[1587] = false,
						[1717] = false,
						[391] = false,
						[776] = false,
						[393] = false,
						[394] = false,
						[1560] = false,
						[1174] = false,
						[397] = false,
						[398] = false,
						[399] = false,
						[400] = false,
						[401] = false,
						[615] = false,
						[1580] = false,
						[1710] = false,
						[676] = false,
						[1718] = false,
						[677] = false,
						[1355] = false,
						[1173] = false,
						[1191] = false,
						[1154] = false,
						[1299] = false,
						[61] = false,
						[1416] = false,
						[241] = false,
						[1716] = false,
					},
				},
			},
		},
		["Wharapi - Tichondrius"] = {
			["general"] = {
				["chatBubbleFontSize"] = 12,
				["normTex"] = "Minimalist",
				["minimap"] = {
					["hideCalendar"] = false,
				},
				["dmgfont"] = "Sriracha",
				["chatBubbleFontOutline"] = "OUTLINE",
				["chatBubbleFont"] = "Sriracha",
				["namefont"] = "Sriracha",
				["glossTex"] = "Minimalist",
			},
			["install_complete"] = "11.00",
		},
		["Ayanir - Moon Guard"] = {
			["benikui"] = {
				["session"] = {
					["day"] = 5,
				},
				["install_complete"] = "3.54",
			},
			["install_complete"] = "10.92",
			["general"] = {
				["glossTex"] = "Minimalist",
				["normTex"] = "Minimalist",
				["namefont"] = "Canted Comic Bold",
				["dmgfont"] = "Canted Comic Bold",
			},
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[241] = false,
						[1174] = false,
						[980] = false,
						[1587] = false,
						[615] = false,
						[1508] = false,
						[385] = false,
						[393] = false,
						[397] = false,
						[401] = false,
						[1716] = false,
						[1129] = false,
						[1717] = false,
						[823] = false,
						[1273] = false,
						[1416] = false,
						[1718] = false,
						[1226] = false,
						[752] = false,
						[776] = false,
						[1560] = false,
						[398] = false,
						[402] = false,
						[824] = false,
						[1275] = false,
						[1355] = false,
						[1149] = false,
						[777] = false,
						[1356] = false,
						[944] = false,
						[61] = false,
						[1166] = false,
						[738] = false,
						[1357] = false,
						[754] = false,
						[391] = false,
						[1580] = false,
						[1342] = false,
						[1533] = false,
						[81] = false,
						[1534] = false,
						[676] = false,
						[1154] = false,
						[1710] = false,
						[994] = false,
						[384] = false,
						[1155] = false,
						[1314] = false,
						[400] = false,
						[677] = false,
						[399] = false,
						[828] = false,
						[416] = false,
						[394] = false,
						[1299] = false,
						[829] = false,
						[1191] = false,
						[1220] = false,
						[1172] = false,
						[1535] = false,
						[1268] = false,
						[614] = false,
						[1173] = false,
						[789] = false,
						[1101] = false,
						[361] = false,
						[697] = false,
						[821] = false,
						[515] = false,
					},
				},
			},
		},
		["Mcpokesalot - Tichondrius"] = {
			["general"] = {
				["chatBubbleFont"] = "Sriracha",
				["namefont"] = "Sriracha",
				["dmgfont"] = "Sriracha",
			},
			["install_complete"] = "11.10",
		},
		["Iscrackl - Tichondrius"] = {
			["theme"] = "class",
			["install_complete"] = "11.10",
		},
		["Andallsa - Tichondrius"] = {
			["install_complete"] = "11.21",
		},
		["Stoakt - Tichondrius"] = {
			["general"] = {
				["normTex"] = "Minimalist",
				["glossTex"] = "Minimalist",
				["minimapbar"] = {
					["mbcalendar"] = true,
					["buttonsPerRow"] = 8,
				},
				["raidmarkerbar"] = {
					["backdrop"] = true,
				},
				["chatBubbleFont"] = "Sriracha",
				["namefont"] = "Sriracha",
				["dmgfont"] = "Sriracha",
			},
			["install_complete"] = "11.14",
		},
		["Andalsa - Tichondrius"] = {
			["general"] = {
				["dmgfont"] = "Anime Ace",
				["minimapbar"] = {
					["mouseover"] = true,
					["mbgarrison"] = true,
					["mbcalendar"] = true,
				},
			},
			["install_complete"] = "11.21",
		},
		["Lonalber - Emerald Dream"] = {
			["benikui"] = {
				["session"] = {
					["day"] = 5,
				},
				["install_complete"] = "3.53",
			},
			["install_complete"] = "10.87",
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[241] = false,
						[1174] = false,
						[980] = false,
						[1587] = false,
						[615] = false,
						[1508] = false,
						[385] = false,
						[393] = false,
						[397] = false,
						[401] = false,
						[1716] = false,
						[1129] = false,
						[1717] = false,
						[823] = false,
						[1273] = false,
						[1416] = false,
						[1718] = false,
						[1226] = false,
						[752] = false,
						[776] = false,
						[1560] = false,
						[398] = false,
						[402] = false,
						[824] = false,
						[1275] = false,
						[1355] = false,
						[1149] = false,
						[777] = false,
						[1356] = false,
						[944] = false,
						[61] = false,
						[1166] = false,
						[738] = false,
						[1357] = false,
						[754] = false,
						[391] = false,
						[1580] = false,
						[1342] = false,
						[1533] = false,
						[81] = false,
						[1534] = false,
						[676] = false,
						[1154] = false,
						[1710] = false,
						[994] = false,
						[384] = false,
						[1155] = false,
						[1314] = false,
						[400] = false,
						[677] = false,
						[515] = false,
						[416] = false,
						[828] = false,
						[697] = false,
						[1299] = false,
						[361] = false,
						[1101] = false,
						[1220] = false,
						[1172] = false,
						[1535] = false,
						[1268] = false,
						[614] = false,
						[1173] = false,
						[789] = false,
						[1191] = false,
						[829] = false,
						[394] = false,
						[821] = false,
						[399] = false,
					},
				},
			},
		},
		["Magnr - Tichondrius"] = {
			["general"] = {
				["normTex"] = "Minimalist",
				["chatBubbleFontOutline"] = "OUTLINE",
				["chatBubbleFont"] = "Sriracha",
				["namefont"] = "Sriracha",
				["dmgfont"] = "Sriracha",
			},
			["install_complete"] = "11.10",
		},
		["Umbrick - Tichondrius"] = {
			["skins"] = {
				["blizzard"] = {
					["quest"] = false,
				},
				["parchmentRemover"] = {
					["enable"] = true,
				},
			},
			["install_complete"] = "11.10",
			["general"] = {
				["normTex"] = "Minimalist",
				["glossTex"] = "Minimalist",
				["minimapbar"] = {
					["buttonsPerRow"] = 8,
				},
				["namefont"] = "Sriracha",
				["chatBubbleFont"] = "Sriracha",
				["dmgfont"] = "Sriracha",
				["minimap"] = {
					["hideCalendar"] = false,
				},
			},
			["auras"] = {
				["enable"] = false,
			},
		},
		["Byanir - Emerald Dream"] = {
			["benikui"] = {
				["session"] = {
					["day"] = 5,
				},
			},
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[241] = false,
						[1174] = false,
						[980] = false,
						[1587] = false,
						[615] = false,
						[1508] = false,
						[385] = false,
						[393] = false,
						[397] = false,
						[401] = false,
						[1716] = false,
						[1129] = false,
						[1717] = false,
						[823] = false,
						[1273] = false,
						[1416] = false,
						[1718] = false,
						[1226] = false,
						[752] = false,
						[776] = false,
						[1560] = false,
						[398] = false,
						[402] = false,
						[824] = false,
						[1275] = false,
						[1355] = false,
						[1149] = false,
						[777] = false,
						[1356] = false,
						[944] = false,
						[61] = false,
						[1166] = false,
						[738] = false,
						[1357] = false,
						[754] = false,
						[391] = false,
						[1580] = false,
						[1342] = false,
						[1533] = false,
						[81] = false,
						[1534] = false,
						[676] = false,
						[1154] = false,
						[1710] = false,
						[994] = false,
						[384] = false,
						[1155] = false,
						[1314] = false,
						[400] = false,
						[677] = false,
						[515] = false,
						[416] = false,
						[828] = false,
						[697] = false,
						[1299] = false,
						[361] = false,
						[1101] = false,
						[1220] = false,
						[1172] = false,
						[1535] = false,
						[1268] = false,
						[614] = false,
						[1173] = false,
						[789] = false,
						[1191] = false,
						[829] = false,
						[394] = false,
						[821] = false,
						[399] = false,
					},
				},
			},
		},
		["Tirdailough - Tichondrius"] = {
			["theme"] = "classic",
			["install_complete"] = "11.10",
		},
		["Curaney - Tichondrius"] = {
			["install_complete"] = "11.10",
		},
		["Harwapa - Tichondrius"] = {
			["general"] = {
				["dmgfont"] = "Sriracha",
				["namefont"] = "Sriracha",
			},
			["theme"] = "class",
			["install_complete"] = "11.00",
		},
		["Mahakah - Tichondrius"] = {
			["theme"] = "default",
			["general"] = {
				["chatBubbles"] = "nobackdrop",
				["namefont"] = "Anime Ace Bold",
				["chatBubbleFont"] = "Anime Ace",
				["dmgfont"] = "Anime Ace Bold",
			},
			["install_complete"] = "11.00",
		},
		["Mininimi - Moon Guard"] = {
			["benikui"] = {
				["session"] = {
					["day"] = 4,
				},
				["install_complete"] = "3.54",
			},
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[241] = false,
						[1174] = false,
						[980] = false,
						[1587] = false,
						[615] = false,
						[1508] = false,
						[385] = false,
						[393] = false,
						[397] = false,
						[401] = false,
						[1716] = false,
						[1129] = false,
						[1717] = false,
						[823] = false,
						[1273] = false,
						[1416] = false,
						[1718] = false,
						[1226] = false,
						[752] = false,
						[776] = false,
						[1560] = false,
						[398] = false,
						[402] = false,
						[824] = false,
						[1275] = false,
						[1355] = false,
						[1149] = false,
						[777] = false,
						[1356] = false,
						[944] = false,
						[61] = false,
						[1166] = false,
						[738] = false,
						[1357] = false,
						[754] = false,
						[391] = false,
						[1580] = false,
						[1342] = false,
						[1533] = false,
						[81] = false,
						[1534] = false,
						[676] = false,
						[1154] = false,
						[1710] = false,
						[994] = false,
						[384] = false,
						[1155] = false,
						[1314] = false,
						[400] = false,
						[677] = false,
						[399] = false,
						[828] = false,
						[416] = false,
						[394] = false,
						[1299] = false,
						[829] = false,
						[1191] = false,
						[1220] = false,
						[1172] = false,
						[1535] = false,
						[1268] = false,
						[614] = false,
						[1173] = false,
						[789] = false,
						[1101] = false,
						[361] = false,
						[697] = false,
						[821] = false,
						[515] = false,
					},
				},
			},
			["general"] = {
				["chatBubbleFontSize"] = 16,
				["chatBubbleFont"] = "Original Woody",
				["namefont"] = "Canted Comic Bold",
				["dmgfont"] = "Canted Comic Bold",
			},
			["install_complete"] = "10.92",
		},
		["Bjorgr - Tichondrius"] = {
			["auras"] = {
				["enable"] = false,
			},
			["general"] = {
				["chatBubbleFont"] = "Sriracha",
				["namefont"] = "Sriracha",
				["dmgfont"] = "Sriracha",
			},
			["install_complete"] = "11.10",
		},
		["Byanir - Moon Guard"] = {
			["benikui"] = {
				["session"] = {
					["day"] = 4,
				},
				["install_complete"] = "3.53",
			},
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[241] = false,
						[1174] = false,
						[980] = false,
						[1587] = false,
						[615] = false,
						[1508] = false,
						[385] = false,
						[393] = false,
						[397] = false,
						[401] = false,
						[1716] = false,
						[1129] = false,
						[1717] = false,
						[823] = false,
						[1273] = false,
						[1416] = false,
						[1718] = false,
						[1226] = false,
						[752] = false,
						[776] = false,
						[1560] = false,
						[398] = false,
						[402] = false,
						[824] = false,
						[1275] = false,
						[1355] = false,
						[1149] = false,
						[777] = false,
						[1356] = false,
						[944] = false,
						[61] = false,
						[1166] = false,
						[738] = false,
						[1357] = false,
						[754] = false,
						[391] = false,
						[1580] = false,
						[1342] = false,
						[1533] = false,
						[81] = false,
						[1534] = false,
						[676] = false,
						[1154] = false,
						[1710] = false,
						[994] = false,
						[384] = false,
						[1155] = false,
						[1314] = false,
						[400] = false,
						[677] = false,
						[399] = false,
						[828] = false,
						[416] = false,
						[394] = false,
						[1299] = false,
						[829] = false,
						[1191] = false,
						[1220] = false,
						[1172] = false,
						[1535] = false,
						[1268] = false,
						[614] = false,
						[1173] = false,
						[789] = false,
						[1101] = false,
						[361] = false,
						[697] = false,
						[821] = false,
						[515] = false,
					},
				},
			},
			["general"] = {
				["dmgfont"] = "Canted Comic Bold",
				["namefont"] = "Canted Comic Bold",
			},
			["install_complete"] = "10.87",
		},
		["Umbrick - Emerald Dream"] = {
			["general"] = {
				["chatBubbleFontSize"] = 18,
				["minimap"] = {
					["hideClassHallReport"] = true,
					["hideCalendar"] = false,
				},
				["chatBubbleFontOutline"] = "OUTLINE",
				["namefont"] = "Sriracha",
				["chatBubbleFont"] = "Sriracha",
				["dmgfont"] = "Sriracha",
			},
			["dashboards"] = {
				["tokens"] = {
					["chooseTokens"] = {
						[416] = false,
						[1191] = false,
						[828] = false,
						[515] = false,
						[1101] = false,
						[752] = false,
						[61] = false,
						[1534] = false,
						[361] = false,
						[1416] = false,
						[1357] = false,
						[1172] = false,
						[823] = false,
						[1716] = false,
						[789] = false,
						[1314] = false,
						[1129] = false,
						[1535] = false,
						[1299] = false,
						[384] = false,
						[1166] = false,
						[1149] = false,
						[1342] = false,
						[1220] = false,
						[615] = false,
						[676] = false,
						[81] = false,
						[1173] = false,
						[754] = false,
						[1154] = false,
						[821] = false,
						[697] = false,
						[1508] = false,
						[1355] = false,
						[829] = false,
						[1268] = false,
						[1587] = false,
						[1717] = false,
						[391] = false,
						[776] = false,
						[393] = false,
						[394] = false,
						[994] = false,
						[1174] = false,
						[397] = false,
						[398] = false,
						[399] = false,
						[400] = false,
						[401] = false,
						[402] = false,
						[1580] = false,
						[1710] = false,
						[1273] = false,
						[1718] = false,
						[1533] = false,
						[385] = false,
						[1226] = false,
						[1356] = false,
						[1275] = false,
						[980] = false,
						[944] = false,
						[677] = false,
						[241] = false,
						[614] = false,
					},
				},
			},
			["benikui"] = {
				["session"] = {
					["day"] = 5,
				},
				["install_complete"] = "3.53",
			},
			["auras"] = {
				["enable"] = false,
			},
			["theme"] = "default",
			["install_complete"] = "11.00",
		},
		["Grandh - Tichondrius"] = {
		},
		["Madylad - Tichondrius"] = {
			["install_complete"] = "11.21",
		},
		["Brungar - Tichondrius"] = {
			["skins"] = {
				["parchmentRemover"] = {
					["enable"] = true,
				},
			},
			["general"] = {
				["voiceOverlay"] = false,
				["normTex"] = "Minimalist",
				["minimapbar"] = {
					["buttonsPerRow"] = 8,
				},
				["dmgfont"] = "Sriracha",
				["chatBubbleFont"] = "Sriracha",
				["namefont"] = "Sriracha",
				["glossTex"] = "Minimalist",
			},
			["install_complete"] = "11.10",
		},
	},
}
