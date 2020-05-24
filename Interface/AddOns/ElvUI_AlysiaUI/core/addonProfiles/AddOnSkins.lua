local E, L, V, P, G = unpack(ElvUI);
local ALUI = E:GetModule("AlysiaUI");

function ALUI:LoadASProfile()

AddOnSkinsDB = {
	["profiles"] = {
		["Default"] = {
			["SelectedColor"] = {
				nil, -- [1]
				0.7843137254901961, -- [2]
				0.9803921568627451, -- [3]
				1, -- [4]
			},
			["DBMRadarTrans"] = true,
			["DBMSkinHalf"] = true,
			["DBMFont"] = "Expressway",
			["SkinDebug"] = true,
			["StatusBarTexture"] = "MaUI1",
			["BackgroundTexture"] = "MaUI1",
			["EmbedBackdrop"] = false,
			["EmbedLeftWidth"] = 206,
			["Skada"] = false,
			["EmbedSystemDual"] = true,
		},
	},
}
	
end