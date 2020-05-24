local E, L, V, P, G = unpack(ElvUI);
local ALUI = E:GetModule("AlysiaUI");

function ALUI:LoadKTProfile()

KT:CreateProfile('AlysiaUI')

KalielsTrackerDB = {

	["profiles"] = {
		["AlysiaUI"] = {
			["classBorder"] = true,
			["hdrBtnColorShare"] = true,
			["xOffset"] = -12,
			["progressBar"] = "MaUI 1",
			["yOffset"] = -360,
			["modulesOrder"] = {
				nil, -- [1]
				nil, -- [2]
				nil, -- [3]
				"BONUS_OBJECTIVE_TRACKER_MODULE", -- [4]
				"WORLD_QUEST_TRACKER_MODULE", -- [5]
				"QUEST_TRACKER_MODULE", -- [6]
			},
			["soundQuest"] = false,
			["hdrBgrColorShare"] = true,
			["colorDifficulty"] = true,
			["bgrColor"] = {
				["a"] = 1,
			},
			["hdrTxtColorShare"] = true,
			["bgr"] = "None",
			["textWordWrap"] = true,
			["hideEmptyTracker"] = true,
			["font"] = "Expressway",
			["hdrBgr"] = 3,
			["collapseInInstance"] = true,
			["maxHeight"] = 500,
			["objNumSwitch"] = true,
		},
	},
}

KT:ApplyProfile('AlysiaUI')

	end
