
WeakAurasSaved = {
	["dynamicIconCache"] = {
		["Sweeping Strikes"] = {
			[260708] = 132306,
		},
		["Mortal Wounds"] = {
			[115804] = 132109,
		},
		["Mystic Touch"] = {
			[113746] = 615342,
		},
		["Sudden Death"] = {
			[52437] = 132346,
		},
		["Overpower"] = {
			[7384] = 132223,
		},
		["Blackout Kick!"] = {
			[116768] = 574575,
		},
		["Colossus Smash"] = {
			[208086] = 464973,
		},
		["In For The Kill"] = {
			[248622] = 1029718,
		},
	},
	["minimap"] = {
		["minimapPos"] = 317.87436222242,
		["hide"] = true,
	},
	["login_squelch_time"] = 10,
	["registered"] = {
	},
	["displays"] = {
		["Energy Amount"] = {
			["text2Point"] = "CENTER",
			["frameStrata"] = 4,
			["text1FontSize"] = 11,
			["glowLength"] = 10,
			["authorOptions"] = {
			},
			["glow"] = false,
			["yOffset"] = -354.619033813477,
			["anchorPoint"] = "CENTER",
			["parent"] = "General - Energy Bar",
			["cooldownSwipe"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_power"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["powertype"] = 3,
						["use_powertype"] = true,
						["custom_hide"] = "timed",
						["type"] = "status",
						["duration"] = "1",
						["power"] = "0",
						["power_operator"] = ">=",
						["unevent"] = "auto",
						["event"] = "Power",
						["use_percentpower"] = false,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["percentpower"] = "0",
						["percentpower_operator"] = ">=",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["text1Enabled"] = true,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["width"] = 64,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DRUID"] = true,
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["use_class"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["icon"] = true,
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["anchorFrameType"] = "SCREEN",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["text2Enabled"] = false,
			["glowLines"] = 8,
			["text2Font"] = "Friz Quadrata TT",
			["glowFrequency"] = 0.25,
			["text1Containment"] = "INSIDE",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2"] = "%p",
			["desaturate"] = false,
			["text2FontSize"] = 24,
			["keepAspectRatio"] = false,
			["text1"] = "%p",
			["text1Font"] = "Sriracha",
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["auto"] = true,
			["glowScale"] = 1,
			["id"] = "Energy Amount",
			["glowThickness"] = 4,
			["alpha"] = 1,
			["glowYOffset"] = 0,
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["conditions"] = {
			},
			["xOffset"] = 175.317443847656,
			["glowBorder"] = false,
		},
		["Use Battle Shout"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 72,
			["xOffset"] = 0,
			["displayText"] = "%i USE BATTLE SHOUT %i",
			["regionType"] = "text",
			["yOffset"] = 450,
			["anchorPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "dtx1MHwQYXK",
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["useGroup_count"] = false,
						["auranames"] = {
							"Battle Shout", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["names"] = {
							"Battle Shout", -- [1]
						},
						["useName"] = true,
						["use_tooltip"] = false,
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnMissing",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["use_health"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["use_absorbMode"] = true,
						["event"] = "Action Usable",
						["unit"] = "player",
						["realSpellName"] = "Battle Shout",
						["use_spellName"] = true,
						["health"] = "0",
						["subeventPrefix"] = "SPELL",
						["health_operator"] = ">",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["spellName"] = 6673,
					},
					["untrigger"] = {
						["spellName"] = 6673,
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["fixedWidth"] = 100,
			["internalVersion"] = 16,
			["justify"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "bounce",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Use Battle Shout",
			["wordWrap"] = "WordWrap",
			["frameStrata"] = 1,
			["desc"] = "\nBattle Shout Reminder\n\nVersion: 1.0.1\nAuthor: Begde\n\nPowered by WeakAuras.online\nYour No. 1 platform to manage and share your own WeakAuras.\n",
			["url"] = "https://www.weakauras.online/a/l879m8VAqz",
			["config"] = {
			},
			["version"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["load"] = {
				["use_spellknown"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 6673,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["font"] = "Doris PP",
		},
		["Energy Bar"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 174.444396972656,
			["stacksFlags"] = "None",
			["yOffset"] = -357.69856262207,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "LEFT",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.470588235294118, -- [2]
				0.2, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["SHAMAN"] = true,
						["DRUID"] = true,
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["use_class"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 18,
			["spark"] = false,
			["timerFont"] = "ElvUI Pixel",
			["alpha"] = 1,
			["borderInset"] = 17,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "General - Energy Bar",
			["customTextUpdate"] = "update",
			["textSize"] = 12,
			["triggers"] = {
				{
					["trigger"] = {
						["use_power"] = false,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["powertype"] = 3,
						["use_powertype"] = true,
						["custom_hide"] = "timed",
						["type"] = "status",
						["duration"] = "1",
						["power"] = "0",
						["power_operator"] = ">=",
						["unevent"] = "auto",
						["event"] = "Power",
						["use_percentpower"] = false,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["percentpower"] = "20",
						["percentpower_operator"] = "<=",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 16,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["stickyDuration"] = false,
			["authorOptions"] = {
			},
			["height"] = 125,
			["timerFlags"] = "OUTLINE",
			["config"] = {
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksFont"] = "ElvUI Font",
			["auto"] = true,
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["border"] = true,
			["borderEdge"] = "None",
			["sparkWidth"] = 10,
			["borderSize"] = 1,
			["anchorFrameType"] = "SCREEN",
			["icon_side"] = "RIGHT",
			["borderBackdrop"] = "Solid",
			["borderInFront"] = true,
			["sparkHeight"] = 30,
			["sparkHidden"] = "NEVER",
			["sparkRotationMode"] = "AUTO",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["displayTextRight"] = " ",
			["id"] = "Energy Bar",
			["displayTextLeft"] = " ",
			["frameStrata"] = 3,
			["width"] = 20,
			["timer"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["inverse"] = false,
			["zoom"] = 0,
			["orientation"] = "VERTICAL_INVERSE",
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["backgroundColor"] = {
				0.0823529411764706, -- [1]
				0.0823529411764706, -- [2]
				0.0823529411764706, -- [3]
				1, -- [4]
			},
		},
		["WarrSwingTimer"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = -18,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "LEFT",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.098039215686274, -- [1]
				0.098039215686274, -- [2]
				0.098039215686274, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 2,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Warrior Rage Bar",
			["customText"] = "function()\n    return string.format(\"%.0f\",((UnitPower(\"player\") / UnitPowerMax(\"player\") * 100)))\nend",
			["sparkRotationMode"] = "AUTO",
			["textSize"] = 8,
			["triggers"] = {
				{
					["trigger"] = {
						["use_power"] = false,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["powertype"] = 1,
						["use_hand"] = true,
						["use_powertype"] = true,
						["custom_hide"] = "timed",
						["type"] = "status",
						["unevent"] = "auto",
						["power_operator"] = ">",
						["event"] = "Swing Timer",
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["power"] = "0",
						["debuffType"] = "HELPFUL",
						["hand"] = "main",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["stickyDuration"] = false,
			["authorOptions"] = {
			},
			["config"] = {
			},
			["version"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timer"] = false,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["auto"] = true,
			["sparkWidth"] = 10,
			["url"] = "https://wago.io/V1TnYG3QM/1",
			["customTextUpdate"] = "update",
			["width"] = 8,
			["border"] = true,
			["borderEdge"] = "Blizzard Achievement Wood",
			["borderBackdrop"] = "None",
			["borderSize"] = 7,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["icon_side"] = "RIGHT",
			["sparkHidden"] = "NEVER",
			["borderInFront"] = true,
			["sparkHeight"] = 30,
			["timerSize"] = 12,
			["zoom"] = 0,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["semver"] = "1.0.0",
			["displayTextLeft"] = "%p",
			["id"] = "WarrSwingTimer",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 4,
			["anchorFrameType"] = "SCREEN",
			["displayTextRight"] = " ",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["inverse"] = false,
			["height"] = 200,
			["orientation"] = "VERTICAL_INVERSE",
			["conditions"] = {
			},
			["stacksFont"] = "Friz Quadrata TT",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
		},
		["Hitcombo Last Hit"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 10,
			["authorOptions"] = {
			},
			["yOffset"] = -349.541122436523,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/SkGHAwYum/1",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["sound"] = "Interface\\AddOns\\ElvUI\\media\\sounds\\warning.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.lastHit = aura_env.lastHit or 137384\ncomboFlash = 0\n\n\n\n\n\n",
					["do_custom"] = true,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["single"] = 18,
					["multi"] = {
						[18] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["zoom"] = 0.33,
			["auto"] = true,
			["glowScale"] = 1,
			["text2Enabled"] = false,
			["glowYOffset"] = 0,
			["uid"] = "LiEKGm3qodb",
			["displayIcon"] = 572033,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 16,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["scaleType"] = "custom",
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "shrink",
					["use_scale"] = false,
					["scaleFunc"] = "",
				},
				["main"] = {
					["colorR"] = 0.99607843137255,
					["duration"] = "1",
					["alphaType"] = "straight",
					["colorB"] = 0.94901960784314,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_alpha"] = false,
					["duration_type"] = "seconds",
					["scaleType"] = "straightScale",
					["use_scale"] = false,
					["scaley"] = 0.1,
					["use_color"] = true,
					["preset"] = "spin",
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["scaleFunc"] = "function(progress, startX, startY, scaleX, scaleY)\n      return startX + (progress * (scaleX - startX)), startY + (progress * (scaleY - startY))\n    end\n  ",
					["colorType"] = "custom",
					["colorFunc"] = "function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    if comboFlash == 1 then\n        return 1, 0, 0, 1\n    else\n        return 1, 1, 1, 1\n    end\nend",
					["rotate"] = 0,
					["type"] = "custom",
					["scalex"] = 0.1,
				},
				["finish"] = {
					["scaleType"] = "custom",
					["type"] = "preset",
					["preset"] = "shrink",
					["duration_type"] = "seconds",
					["use_scale"] = true,
				},
			},
			["stickyDuration"] = false,
			["version"] = 1,
			["height"] = 51.198577880859,
			["glowLines"] = 8,
			["glowFrequency"] = 0.25,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Homespun TT BRK",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["glowLength"] = 10,
			["glow"] = false,
			["cooldownTextDisabled"] = false,
			["text1"] = " ",
			["xOffset"] = 0,
			["config"] = {
			},
			["desaturate"] = false,
			["semver"] = "1.0.0",
			["text1Enabled"] = true,
			["id"] = "Hitcombo Last Hit",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 51.2,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "0",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["customIcon"] = "function()\n    if aura_env.lastHit == 203858 then\n        return 135262\n    elseif aura_env.lastHit == 101545 then \n        return 606545\n    else\n        return GetSpellTexture(aura_env.lastHit)\n    end\nend",
						["custom_hide"] = "custom",
						["type"] = "custom",
						["custom_type"] = "event",
						["names"] = {
						},
						["event"] = "Combat Log",
						["debuffType"] = "HELPFUL",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["customName"] = "function()\n    local name, _, _, _, _, _, _ = GetSpellInfo(aura_env.lastHit)\n    return name\nend",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "timed",
						["custom"] = "function(event, _, message, _, sourceGUID, _, _, _, destGUID, _, _, _, spellID, spellName)\n    aura_env.lastHit = aura_env.lastHit or 0\n    \n    local spellList = {}\n    spellList[100780] = true  -- Tiger Palm\n    spellList[100784] = true  -- Blackout Kick\n    spellList[107428] = true  -- Rising Sun Kick\n    spellList[101545] = true  -- Flying Serpent Kick\n    spellList[113656] = true  -- Fists of Fury\n    spellList[101546] = true  -- Spinning Crane Kick\n    spellList[116847] = true  -- Rushing Jade Wind\n    spellList[152175] = true  -- Whirling Dragon Punch\n    spellList[115098] = true  -- Chi Wave\n    spellList[123986] = true  -- Chi Burst\n    spellList[117952] = true  -- Crackling Jade Lightning\n    spellList[205320] = true  -- Strike of the Windlord\n    spellList[115080] = true  -- Touch of Death\n    \n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" and message == \"SPELL_CAST_SUCCESS\" and sourceGUID == UnitGUID(\"player\") then\n        if spellList[spellID] then\n            if spellID == aura_env.lastHit then\n                if not(aura_env.lastHit == 101545) then\n                    PlaySoundFile(\"Interface\\\\AddOns\\\\WeakAuras\\\\Media\\\\Sounds\\\\BananaPeelSlip.ogg\",\"SFX\");\n                end\n                comboFlash = 1\n            else\n                aura_env.lastHit = spellID\n                comboFlash = 0\n            end\n        end\n        -- Sacred Draenic Incense  \n    elseif event == \"COMBAT_LOG_EVENT_UNFILTERED\" and sourceGUID == UnitGUID(\"player\") and spellName == \"Rising Sun Kick\" and not(aura_env.lastHit == 107428) and not(message == \"SPELL_CAST_FAILED\")then\n        aura_env.flash = 0\n        aura_env.lastHit = 203858 -- Fake Rising Sun Kick spellID\n        -- Sacred Draenic Incense\n    end\n    \n    return true\nend",
						["use_messageType"] = false,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["custom"] = "\n\n\n\n\n\n\n",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["event"] = "Conditions",
						["custom_type"] = "stateupdate",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["anchorFrameType"] = "SCREEN",
			["inverse"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["alpha"] = 1,
			["glowBorder"] = false,
		},
		["General - Energy Bar"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Energy Amount", -- [1]
				"Energy Bar", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["scale"] = 1,
			["border"] = false,
			["yOffset"] = 0.0001220703125,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["desc"] = "\nEnergy Bar\n\nVersion: 1.0.0\nAuthor: WalkingTheWind\n\nPowered by WeakAuras.online\nYour No. 1 platform to manage and share your own WeakAuras.\n",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["xOffset"] = 1,
			["url"] = "https://www.weakauras.online/a/YyGEoJ69xa",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["regionType"] = "group",
			["borderOffset"] = 5,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "General - Energy Bar",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 11,
			["config"] = {
			},
			["version"] = 1,
			["internalVersion"] = 16,
			["conditions"] = {
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = "false",
				["race"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["borderEdge"] = "None",
		},
		["WarrSwingTimerBG"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = -18,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "LEFT",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.32549019607843, -- [1]
				0.32549019607843, -- [2]
				0.32549019607843, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Warrior Rage Bar",
			["customTextUpdate"] = "update",
			["textSize"] = 12,
			["triggers"] = {
				{
					["trigger"] = {
						["use_power"] = false,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["powertype"] = 1,
						["use_hand"] = true,
						["use_powertype"] = true,
						["custom_hide"] = "timed",
						["duration"] = "1",
						["type"] = "status",
						["hand"] = "main",
						["unevent"] = "auto",
						["power_operator"] = "<",
						["names"] = {
						},
						["event"] = "Swing Timer",
						["use_percentpower"] = false,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["power"] = "90",
						["percentpower"] = "90",
						["percentpower_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["stickyDuration"] = false,
			["authorOptions"] = {
			},
			["config"] = {
			},
			["version"] = 1,
			["timer"] = false,
			["height"] = 200,
			["timerFlags"] = "None",
			["useAdjustededMax"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["auto"] = true,
			["url"] = "https://wago.io/V1TnYG3QM/1",
			["width"] = 8,
			["border"] = false,
			["borderEdge"] = "None",
			["displayTextLeft"] = "%n",
			["borderInFront"] = true,
			["borderSize"] = 16,
			["icon_side"] = "RIGHT",
			["sparkHidden"] = "NEVER",
			["sparkOffsetX"] = 0,
			["sparkHeight"] = 30,
			["timerSize"] = 12,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["semver"] = "1.0.0",
			["displayTextRight"] = "%p",
			["id"] = "WarrSwingTimerBG",
			["sparkRotationMode"] = "AUTO",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["icon"] = false,
			["sparkWidth"] = 10,
			["inverse"] = false,
			["borderOffset"] = 5,
			["orientation"] = "VERTICAL_INVERSE",
			["conditions"] = {
			},
			["stacksFont"] = "Friz Quadrata TT",
			["backgroundColor"] = {
				0.32549019607843, -- [1]
				0.32549019607843, -- [2]
				0.32549019607843, -- [3]
				1, -- [4]
			},
		},
		["FuryRageTexture"] = {
			["modelIsUnit"] = false,
			["borderBackdrop"] = "Blizzard Tooltip",
			["api"] = false,
			["xOffset"] = -180.8251953125,
			["yOffset"] = -132.063430786133,
			["anchorPoint"] = "CENTER",
			["model_x"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["url"] = "https://wago.io/V1TnYG3QM/1",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_power"] = false,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["powertype"] = 1,
						["use_powertype"] = true,
						["custom_hide"] = "timed",
						["type"] = "status",
						["duration"] = "1",
						["unevent"] = "auto",
						["power_operator"] = "<",
						["debuffType"] = "HELPFUL",
						["event"] = "Power",
						["use_percentpower"] = false,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["power"] = "90",
						["percentpower"] = "90",
						["percentpower_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["model_fileId"] = "240896",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["model_st_ty"] = 0,
			["rotation"] = 0,
			["version"] = 1,
			["height"] = 200,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["model_st_tx"] = 0,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["model_path"] = "spells/firebomb_missle.m2",
			["sequence"] = 1,
			["authorOptions"] = {
			},
			["scale"] = 1,
			["parent"] = "Warrior Rage Bar",
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "model",
			["borderSize"] = 16,
			["model_st_us"] = 40,
			["selfPoint"] = "CENTER",
			["model_st_rz"] = 0,
			["model_z"] = 0,
			["config"] = {
			},
			["borderOffset"] = 5,
			["semver"] = "1.0.0",
			["frameStrata"] = 3,
			["id"] = "FuryRageTexture",
			["model_y"] = 0,
			["model_st_rx"] = 270,
			["width"] = 14,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 11,
			["model_st_ry"] = 0,
			["modelDisplayInfo"] = false,
			["conditions"] = {
			},
			["model_st_tz"] = 0,
			["advance"] = false,
		},
		["FuryRageBG"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = -180.808898925781,
			["stacksFlags"] = "None",
			["yOffset"] = -130.031387329102,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "LEFT",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.24313725490196, -- [1]
				0.011764705882353, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Warrior Rage Bar",
			["customTextUpdate"] = "update",
			["textSize"] = 12,
			["triggers"] = {
				{
					["trigger"] = {
						["use_power"] = false,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["powertype"] = 1,
						["use_powertype"] = true,
						["custom_hide"] = "timed",
						["type"] = "status",
						["duration"] = "1",
						["unevent"] = "auto",
						["power_operator"] = "<",
						["debuffType"] = "HELPFUL",
						["event"] = "Power",
						["use_percentpower"] = false,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["power"] = "90",
						["percentpower"] = "90",
						["percentpower_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["stickyDuration"] = false,
			["authorOptions"] = {
			},
			["config"] = {
			},
			["version"] = 1,
			["displayTextLeft"] = "%n",
			["timer"] = false,
			["timerFlags"] = "None",
			["useAdjustededMax"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkRotation"] = 0,
			["height"] = 200,
			["auto"] = true,
			["width"] = 15,
			["border"] = false,
			["borderEdge"] = "None",
			["sparkOffsetX"] = 0,
			["borderInFront"] = true,
			["borderSize"] = 16,
			["icon_side"] = "RIGHT",
			["sparkHidden"] = "NEVER",
			["sparkWidth"] = 10,
			["sparkHeight"] = 30,
			["timerSize"] = 12,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["sparkRotationMode"] = "AUTO",
			["id"] = "FuryRageBG",
			["url"] = "https://wago.io/V1TnYG3QM/1",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.0",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["inverse"] = false,
			["borderOffset"] = 5,
			["orientation"] = "VERTICAL_INVERSE",
			["conditions"] = {
			},
			["stacksFont"] = "Friz Quadrata TT",
			["backgroundColor"] = {
				0.24313725490196, -- [1]
				0.011764705882353, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["Warrior Rage Bar"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"FuryRageBG", -- [1]
				"FuryRageOverlay", -- [2]
				"FuryRageTexture", -- [3]
				"WarrSwingTimer", -- [4]
				"WarrSwingTimerBG", -- [5]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["border"] = false,
			["yOffset"] = -235,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["selfPoint"] = "BOTTOMLEFT",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["url"] = "https://wago.io/V1TnYG3QM/1",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["borderEdge"] = "None",
			["internalVersion"] = 16,
			["semver"] = "1.0.0",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Warrior Rage Bar",
			["regionType"] = "group",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["version"] = 1,
			["desc"] = "https://github.com/TheJixel/WoW-Stuff/wiki",
			["borderOffset"] = 5,
			["conditions"] = {
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["borderInset"] = 11,
		},
		["FuryRageOverlay"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = -180.857238769531,
			["stacksFlags"] = "None",
			["yOffset"] = -130.761825561523,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rotateText"] = "LEFT",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.098039215686274, -- [1]
				0.098039215686274, -- [2]
				0.098039215686274, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 2,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Warrior Rage Bar",
			["customText"] = "function()\n    return string.format(\"%.0f\",((UnitPower(\"player\") / UnitPowerMax(\"player\") * 100)))\nend",
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%p",
			["triggers"] = {
				{
					["trigger"] = {
						["use_power"] = false,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["powertype"] = 1,
						["use_powertype"] = true,
						["custom_hide"] = "timed",
						["type"] = "status",
						["unevent"] = "auto",
						["power_operator"] = ">",
						["event"] = "Power",
						["duration"] = "1",
						["power"] = "0",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 16,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["stickyDuration"] = false,
			["authorOptions"] = {
			},
			["config"] = {
			},
			["version"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["height"] = 200,
			["timerFlags"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["timer"] = true,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["customTextUpdate"] = "update",
			["sparkWidth"] = 10,
			["width"] = 14,
			["border"] = true,
			["borderEdge"] = "Blizzard Achievement Wood",
			["semver"] = "1.0.0",
			["borderSize"] = 7,
			["borderInFront"] = true,
			["icon_side"] = "RIGHT",
			["sparkHidden"] = "NEVER",
			["borderBackdrop"] = "None",
			["sparkHeight"] = 30,
			["timerSize"] = 12,
			["textSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p/%t",
			["url"] = "https://wago.io/V1TnYG3QM/1",
			["id"] = "FuryRageOverlay",
			["sparkRotation"] = 0,
			["frameStrata"] = 4,
			["anchorFrameType"] = "SCREEN",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["zoom"] = 0,
			["inverse"] = true,
			["auto"] = true,
			["orientation"] = "VERTICAL_INVERSE",
			["conditions"] = {
			},
			["stacksFont"] = "Friz Quadrata TT",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
		},
	},
	["frame"] = {
		["xOffset"] = -1027.94049072266,
		["yOffset"] = -119.9345703125,
		["height"] = 500.000091552734,
		["width"] = 830,
	},
	["editor_theme"] = "Monokai",
}
