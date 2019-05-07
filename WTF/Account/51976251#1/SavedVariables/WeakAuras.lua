
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
	["displays"] = {
		["Hitcombo Last Hit"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 10,
			["xOffset"] = 0,
			["yOffset"] = -349.541122436523,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
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
						["spellIds"] = {
						},
						["customName"] = "function()\n    local name, _, _, _, _, _, _ = GetSpellInfo(aura_env.lastHit)\n    return name\nend",
						["custom"] = "function(event, _, message, _, sourceGUID, _, _, _, destGUID, _, _, _, spellID, spellName)\n    aura_env.lastHit = aura_env.lastHit or 0\n    \n    local spellList = {}\n    spellList[100780] = true  -- Tiger Palm\n    spellList[100784] = true  -- Blackout Kick\n    spellList[107428] = true  -- Rising Sun Kick\n    spellList[101545] = true  -- Flying Serpent Kick\n    spellList[113656] = true  -- Fists of Fury\n    spellList[101546] = true  -- Spinning Crane Kick\n    spellList[116847] = true  -- Rushing Jade Wind\n    spellList[152175] = true  -- Whirling Dragon Punch\n    spellList[115098] = true  -- Chi Wave\n    spellList[123986] = true  -- Chi Burst\n    spellList[117952] = true  -- Crackling Jade Lightning\n    spellList[205320] = true  -- Strike of the Windlord\n    spellList[115080] = true  -- Touch of Death\n    \n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" and message == \"SPELL_CAST_SUCCESS\" and sourceGUID == UnitGUID(\"player\") then\n        if spellList[spellID] then\n            if spellID == aura_env.lastHit then\n                if not(aura_env.lastHit == 101545) then\n                    PlaySoundFile(\"Interface\\\\AddOns\\\\WeakAuras\\\\Media\\\\Sounds\\\\BananaPeelSlip.ogg\",\"SFX\");\n                end\n                comboFlash = 1\n            else\n                aura_env.lastHit = spellID\n                comboFlash = 0\n            end\n        end\n        -- Sacred Draenic Incense  \n    elseif event == \"COMBAT_LOG_EVENT_UNFILTERED\" and sourceGUID == UnitGUID(\"player\") and spellName == \"Rising Sun Kick\" and not(aura_env.lastHit == 107428) and not(message == \"SPELL_CAST_FAILED\")then\n        aura_env.flash = 0\n        aura_env.lastHit = 203858 -- Fake Rising Sun Kick spellID\n        -- Sacred Draenic Incense\n    end\n    \n    return true\nend",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "timed",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
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
			["text2"] = "%p",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "OUTSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["internalVersion"] = 15,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 1,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 51.198577880859,
			["displayIcon"] = 572033,
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
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
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
			["authorOptions"] = {
			},
			["cooldownEdge"] = false,
			["config"] = {
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Homespun TT BRK",
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["glow"] = false,
			["text2FontSize"] = 24,
			["useglowColor"] = false,
			["text1"] = " ",
			["auto"] = true,
			["zoom"] = 0.33,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.0",
			["animation"] = {
				["start"] = {
					["scaleType"] = "custom",
					["type"] = "preset",
					["preset"] = "shrink",
					["use_scale"] = false,
					["duration_type"] = "seconds",
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
					["preset"] = "spin",
					["scaley"] = 0.1,
					["use_color"] = true,
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
			["id"] = "Hitcombo Last Hit",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["width"] = 51.2,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "LiEKGm3qodb",
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
		},
	},
	["registered"] = {
	},
	["login_squelch_time"] = 10,
	["frame"] = {
		["xOffset"] = -37.92431640625,
		["yOffset"] = -48.8139038085938,
		["height"] = 500.000091552734,
		["width"] = 830,
	},
	["editor_theme"] = "Monokai",
}
