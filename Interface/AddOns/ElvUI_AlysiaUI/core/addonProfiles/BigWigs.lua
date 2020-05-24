local E, L, V, P, G = unpack(ElvUI);
local ALUI = E:GetModule("AlysiaUI");

function ALUI:LoadBWProfile()

BigWigs3DB = {
	["namespaces"] = {
		["BigWigs_Plugins_Victory"] = {
			["profiles"] = {
				["Default"] = {
					["soundName"] = "None",
				},
			},
		},
		["BigWigs_Plugins_Alt Power"] = {
			["profiles"] = {
				["Default"] = {
					["posx"] = 206.221923396315,
					["fontName"] = "Expressway",
					["posy"] = 219.022357734048,
					["fontOutline"] = "OUTLINE",
					["lock"] = true,
				},
			},
		},
		["LibDualSpec-1.0"] = {
		},
		["BigWigs_Plugins_Sounds"] = {
		},
		["BigWigs_Plugins_AutoReply"] = {
			["profiles"] = {
				["Default"] = {
					["disabled"] = false,
					["exitCombat"] = 4,
					["mode"] = 4,
				},
			},
		},
		["BigWigs_Bosses_Harlan Sweete"] = {
		},
		["BigWigs_Bosses_Ring of Booty"] = {
		},
		["BigWigs_Bosses_Skycap'n Kragg"] = {
		},
		["BigWigs_Plugins_Colors"] = {
			["profiles"] = {
				["Default"] = {
					["barColor"] = {
						["BigWigs_Plugins_Colors"] = {
							["default"] = {
								0.709803921568628, -- [1]
								0.709803921568628, -- [2]
								0.709803921568628, -- [3]
							},
						},
					},
					["barEmphasized"] = {
						["BigWigs_Plugins_Colors"] = {
							["default"] = {
								0.709803921568628, -- [1]
								0.709803921568628, -- [2]
								0.709803921568628, -- [3]
							},
						},
					},
				},
			},
		},
		["BigWigs_Plugins_Raid Icons"] = {
		},
		["BigWigs_Plugins_InfoBox"] = {
			["profiles"] = {
				["Default"] = {
					["posx"] = 322.1331241197,
					["posy"] = 123.022442215024,
				},
			},
		},
		["BigWigs_Plugins_Bars"] = {
			["profiles"] = {
				["Default"] = {
					["outline"] = "OUTLINE",
					["BigWigsAnchor_width"] = 180,
					["BigWigsAnchor_x"] = 194.132990811922,
					["interceptMouse"] = true,
					["BigWigsEmphasizeAnchor_height"] = 9.999991416931152,
					["growup"] = false,
					["fontName"] = "Expressway",
					["BigWigsAnchor_height"] = 10.00000858306885,
					["BigWigsAnchor_y"] = 691.199886528648,
					["texture"] = "MaUI10",
					["barStyle"] = "MonoUI",
					["BigWigsEmphasizeAnchor_width"] = 195,
					["BigWigsEmphasizeAnchor_x"] = 838.4001199994746,
					["interceptKey"] = "SHIFT",
					["BigWigsEmphasizeAnchor_y"] = 143.6445349072637,
					["onlyInterceptOnKeypress"] = true,
					["fontSizeEmph"] = 12,
				},
			},
		},
		["BigWigs_Plugins_Super Emphasize"] = {
			["profiles"] = {
				["Default"] = {
					["fontName"] = "Expressway",
				},
			},
		},
		["BigWigs_Bosses_Council o' Captains"] = {
		},
		["BigWigs_Bosses_Freehold Trash"] = {
		},
		["BigWigs_Plugins_Wipe"] = {
		},
		["BigWigs_Plugins_BossBlock"] = {
		},
		["BigWigs_Plugins_Messages"] = {
			["profiles"] = {
				["Default"] = {
					["BWMessageAnchor_x"] = 607.6888141140116,
					["fontName"] = "Expressway",
					["BWMessageAnchor_y"] = 603.622243138343,
				},
			},
		},
		["BigWigs_Plugins_Statistics"] = {
		},
		["BigWigs_Plugins_Pull"] = {
		},
		["BigWigs_Plugins_Proximity"] = {
			["profiles"] = {
				["Default"] = {
					["fontSize"] = 12,
					["fontName"] = "Expressway",
					["width"] = 139.999984741211,
					["posy"] = 132.266637317339,
					["lock"] = true,
					["height"] = 120.000007629395,
					["posx"] = 443.732823244718,
				},
			},
		},
	},
	["wipe80"] = true,
	["profileKeys"] = {
	},
	["profiles"] = {
		["Default"] = {
			["fakeDBMVersion"] = true,
			["flash"] = false,
		},
	},
}
BigWigsIconDB = {
	["hide"] = true,
}
BigWigsStatsDB = {
}

end