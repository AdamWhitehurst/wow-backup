local E, L, V, P, G = unpack(ElvUI);
local ALUI = E:GetModule("AlysiaUI");

function ALUI:LoadOmniCDProfile()

OmniCDDB = {
	["profileKeys"] = {
	},
	["cooldowns"] = {
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["version"] = 1,
	["profiles"] = {
		["Default"] = {
			["Party"] = {
				["party"] = {
					["columns"] = 20,
					["anchor"] = "TOPRIGHT",
					["attach"] = "TOPLEFT",
					["preset"] = "TOPLEFT",
					["offsetY"] = 5,
					["offsetX"] = 50,
				},
				["autoScale"] = false,
				["raid"] = {
					["displayInactive"] = true,
					["offsetX"] = 50,
					["anchor"] = "TOPRIGHT",
					["attach"] = "TOPLEFT",
					["preset"] = "TOPLEFT",
					["offsetY"] = 5,
					["columns"] = 20,
				},
				["bgTrinket"] = true,
				["showAnchor"] = false,
				["spells"] = {
					["spell408"] = true,
					["spell1766"] = true,
					["spell53480"] = true,
					["spell64044"] = true,
					["spell184662"] = true,
					["spell221562"] = true,
					["spell116705"] = true,
					["spell305497"] = true,
					["spell15487"] = true,
					["spell107570"] = true,
					["spell47528"] = true,
					["spell46968"] = true,
					["spell1856"] = false,
					["spell243435"] = true,
					["spell6552"] = true,
					["spell2094"] = true,
					["spell106839"] = true,
					["spell115203"] = true,
					["spell108194"] = true,
					["spell147362"] = true,
					["spell201318"] = true,
					["spell57994"] = true,
					["spell30283"] = true,
					["spell122278"] = true,
					["spell1044"] = false,
					["spell196718"] = true,
					["spell192058"] = true,
					["spell2139"] = true,
					["spell183752"] = true,
					["spell205369"] = true,
					["spell211881"] = true,
					["spell212619"] = true,
					["spell871"] = true,
					["spell96231"] = true,
					["spell6940"] = true,
					["spell119381"] = true,
					["spell19577"] = true,
					["spell204331"] = true,
					["spell115078"] = true,
					["spell853"] = true,
					["spell1022"] = true,
					["spell51514"] = true,
					["spell199804"] = true,
					["spell6789"] = false,
					["spell5211"] = true,
				},
				["disableElvMsg"] = true,
				["player"] = true,
				["uf"] = "ElvUI",
				["arena"] = {
					["columns"] = 20,
					["anchor"] = "TOPRIGHT",
					["attach"] = "TOPLEFT",
					["preset"] = "TOPLEFT",
					["offsetY"] = 5,
					["offsetX"] = 50,
				},
				["visibility"] = {
					["finder"] = true,
				},
			},
		},
	},
}

end