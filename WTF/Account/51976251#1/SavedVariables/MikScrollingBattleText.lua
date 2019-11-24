
MSBTProfiles_SavedVars = {
	["profiles"] = {
		["Default"] = {
			["critFontName"] = "Anime Ace",
			["enableBlizzardDamage"] = false,
			["animationSpeed"] = 60,
			["creationVersion"] = "5.7.149",
			["critFontSize"] = 18,
			["events"] = {
				["NOTIFICATION_COMBAT_ENTER"] = {
					["message"] = "[COMBAT ENTERED]",
				},
				["NOTIFICATION_PC_KILLING_BLOW"] = {
					["message"] = "(%n) GOT SLAPPED!",
					["soundFile"] = "Sharp Punch",
					["scrollArea"] = "Static",
				},
				["NOTIFICATION_MONEY"] = {
					["fontSize"] = 23,
					["soundFile"] = "Retro2: SFX_188",
				},
				["INCOMING_SPELL_PARRY"] = {
					["colorG"] = 0.4274509803921568,
					["colorR"] = 0.3843137254901961,
				},
				["INCOMING_DEFLECT"] = {
					["colorG"] = 0.3333333333333333,
					["colorR"] = 0.2078431372549019,
				},
				["NOTIFICATION_REP_LOSS"] = {
					["soundFile"] = "Retro1: SFX_36",
				},
				["NOTIFICATION_PET_COOLDOWN"] = {
					["fontSize"] = false,
					["disabled"] = true,
					["scrollArea"] = "Notification",
				},
				["INCOMING_MISS"] = {
					["colorG"] = 0.3333333333333333,
					["colorR"] = 0.2078431372549019,
				},
				["INCOMING_BLOCK"] = {
					["colorG"] = 0.3333333333333333,
					["colorR"] = 0.2078431372549019,
				},
				["NOTIFICATION_ALT_POWER_LOSS"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_ITEM_COOLDOWN"] = {
					["fontSize"] = false,
					["disabled"] = true,
					["scrollArea"] = "Notification",
				},
				["INCOMING_SPELL_DEFLECT"] = {
					["colorG"] = 0.4274509803921568,
					["colorR"] = 0.3843137254901961,
				},
				["NOTIFICATION_REP_GAIN"] = {
					["alwaysSticky"] = true,
					["soundFile"] = "Retro1: SFX_36",
				},
				["NOTIFICATION_ALT_POWER_GAIN"] = {
					["soundFile"] = "Kaching",
					["disabled"] = true,
					["alwaysSticky"] = true,
				},
				["NOTIFICATION_EXPERIENCE_GAIN"] = {
					["soundFile"] = "Pickup_Coin5",
					["disabled"] = false,
					["scrollArea"] = "Custom1",
				},
				["NOTIFICATION_LOOT"] = {
					["fontSize"] = 23,
					["soundFile"] = "Retro1: SFX_68",
				},
				["NOTIFICATION_MONSTER_EMOTE"] = {
					["disabled"] = true,
					["scrollArea"] = "Notification",
				},
				["NOTIFICATION_COMBAT_LEAVE"] = {
					["message"] = "[COMBAT LEFT]",
				},
				["INCOMING_PARRY"] = {
					["colorG"] = 0.3333333333333333,
					["colorR"] = 0.2078431372549019,
				},
				["NOTIFICATION_HONOR_GAIN"] = {
					["soundFile"] = "Retro1: SFX_36",
				},
				["INCOMING_SPELL_DODGE"] = {
					["colorG"] = 0.4274509803921568,
					["colorR"] = 0.3843137254901961,
				},
				["NOTIFICATION_COOLDOWN"] = {
					["fontSize"] = false,
					["disabled"] = true,
					["scrollArea"] = "Notification",
				},
				["NOTIFICATION_ENEMY_BUFF"] = {
					["scrollArea"] = "Notification",
				},
				["INCOMING_DODGE"] = {
					["colorG"] = 0.3333333333333333,
					["colorR"] = 0.2078431372549019,
				},
				["INCOMING_SPELL_MISS"] = {
					["colorG"] = 0.4274509803921568,
					["colorR"] = 0.3843137254901961,
				},
				["NOTIFICATION_SKILL_GAIN"] = {
					["alwaysSticky"] = true,
					["soundFile"] = "Retro1: SFX_34",
				},
				["NOTIFICATION_CURRENCY"] = {
					["soundFile"] = "Retro2: SFX_190",
					["fontSize"] = 23,
				},
				["NOTIFICATION_CHI_CHANGE"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_CHI_FULL"] = {
					["disabled"] = true,
				},
				["INCOMING_SPELL_BLOCK"] = {
					["colorG"] = 0.4274509803921568,
					["colorR"] = 0.3843137254901961,
				},
			},
			["triggers"] = {
				["Custom1"] = {
					["message"] = "Killing Blow Player",
					["fontSize"] = 26,
					["alwaysSticky"] = true,
					["mainEvents"] = "PARTY_KILL{recipientUnitType;;eq;;1024;;recipientAffiliation;;eq;;4026531840}",
				},
			},
			["scrollAreas"] = {
				["Notification"] = {
					["stickyTextAlignIndex"] = 1,
					["stickyBehavior"] = "Jiggle",
					["stickyDirection"] = "Up",
					["scrollWidth"] = 10,
					["offsetX"] = -480,
					["scrollHeight"] = 250,
					["offsetY"] = -636,
					["textAlignIndex"] = 1,
					["direction"] = "Up",
				},
				["Incoming"] = {
					["offsetY"] = -177,
					["offsetX"] = -421,
					["disabled"] = true,
				},
				["Static"] = {
					["direction"] = "Alternate",
					["stickyBehavior"] = "Jiggle",
					["skillIconsDisabled"] = true,
					["stickyDirection"] = "Up",
					["scrollHeight"] = 120,
					["offsetX"] = -400,
					["scrollWidth"] = 800,
					["offsetY"] = -170,
					["animationStyle"] = "Angled",
					["behavior"] = "AngleUp",
				},
				["Custom1"] = {
					["stickyDirection"] = "Up",
					["direction"] = "Up",
					["name"] = "Center",
					["offsetX"] = -18,
					["stickyBehavior"] = "Jiggle",
					["offsetY"] = -165,
					["animationStyle"] = "Parabola",
					["behavior"] = "CurvedLeft",
				},
				["Outgoing"] = {
					["direction"] = "Alternate",
					["disabled"] = true,
					["stickyBehavior"] = "MSBT_NORMAL",
					["stickyDirection"] = "Up",
					["offsetX"] = -365,
					["behavior"] = "AngleUp",
					["offsetY"] = -174,
					["animationStyle"] = "Angled",
					["stickyAnimationStyle"] = "Static",
				},
			},
			["normalFontName"] = "Sriracha",
			["enableBlizzardHealing"] = false,
			["normalFontSize"] = 14,
		},
	},
}
MSBT_SavedMedia = {
	["fonts"] = {
	},
	["sounds"] = {
	},
}
