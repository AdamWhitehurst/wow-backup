local E, L, V, P, G = unpack(ElvUI);
local ALUI = E:GetModule("AlysiaUI");

function ALUI:LoadXIVProfile()

	XIVBarDB = {
	["profiles"] = {
		["Default"] = {
				["modules"] = {
					["tradeskill"] = {
						["barCC"] = true,
					},
					["talent"] = {
						["barCC"] = true,
					},
					["currency"] = {
						["xpBarCC"] = true,
						["currencyTwo"] = "1220",
						["currencyOne"] = "1273",
					},
					["clock"] = {
						["timeFormat"] = "twoFour",
					},
					["MasterVolume"] = {
						["enabled"] = true,
					},
				},
				["text"] = {
					["flags"] = 2,
					["fontSize"] = 10,
					["font"] = "Expressway",
				},
				["general"] = {
					["moduleSpacing"] = 25,
					["barPosition"] = "TOP",
				},
				["color"] = {
					["barColor"] = {
						["a"] = 0.40,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
			},
		},
	}
	end
