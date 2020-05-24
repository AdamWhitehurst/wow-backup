local E, L, V, P, G = unpack(ElvUI);
local ALUI = E:GetModule("AlysiaUI");

function ALUI:LoadMSBTProfile()

MSBTProfiles_SavedVars = {
	["profiles"] = {
		["Default"] = {
			["critFontName"] = "Expressway",
			["enableBlizzardDamage"] = false,
			["creationVersion"] = "5.7.149",
			["critFontSize"] = 14,
			["shortenNumbers"] = true,
			["enableBlizzardHealing"] = false,
			["normalFontName"] = "Expressway",
			["scrollAreas"] = {
				["Outgoing"] = {
					["direction"] = "Up",
					["offsetX"] = 205,
					["behavior"] = "MSBT_NORMAL",
					["offsetY"] = 121,
					["animationStyle"] = "Straight",
					["scrollHeight"] = 120,
				},
				["Notification"] = {
					["disabled"] = true,
				},
				["Incoming"] = {
					["behavior"] = "MSBT_NORMAL",
					["stickyDirection"] = "Up",
					["scrollHeight"] = 120,
					["offsetX"] = -252,
					["offsetY"] = 124,
					["animationStyle"] = "Straight",
				},
				["Static"] = {
					["offsetY"] = 327,
					["disabled"] = true,
					["offsetX"] = -22,
				},
			},
			["normalFontSize"] = 12,
		},
	},
}

end