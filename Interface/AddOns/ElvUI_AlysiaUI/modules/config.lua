--[[ Credit: Benik ]]

local E, L, V, P, G = unpack(ElvUI)
local ALUI = E:GetModule("AlysiaUI");

local function ConfigTable()
	E.Options.args.ALUI.args.Options = {
		order = 11,
		type = "group",
		name = "Options",
		--guiInline = true,
		args = {
			optionsheader = {
				order = 12,
				type = "header",
				name = "|cff00c0faOptions",
			},
			optionsheaderspac1 = {
				order = 13,
				type = "description",
				name = "",
			},
			optionsheaderspac2 = {
				order = 14,
				type = "description",
				name = "",
			},
			--Clean Boss Button
			--[[ CleanBossButton = {
			order = 15,
			type = "toggle",
			name = L['Clean Boss Button'],
			desc = L['Remove Boss/Zone Ability Button Texture'],
			get = function(info) return E.db.ALUI[ info[#info] ] end,
			set = function(info, value) E.db.ALUI[ info[#info] ] = value; E:StaticPopup_Show('PRIVATE_RL'); end,
			}, ]]
			--Easy Delete
			EasyDelete = {
			order = 16,
			type = "toggle",
			name = L['Easy Delete'],
			desc = L['Auto Confirm Delete Dialogue Without Typing Delete'],
			get = function(info) return E.db.ALUI[ info[#info] ] end,
			set = function(info, value) E.db.ALUI[ info[#info] ] = value; end,
			},
		},
	}
end
ALUI.Config["Options"] = ConfigTable