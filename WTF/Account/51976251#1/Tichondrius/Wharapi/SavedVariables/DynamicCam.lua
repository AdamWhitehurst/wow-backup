
DynamicCamDB = {
	["profileKeys"] = {
		["Weqfqw - Alonsus"] = "Default",
		["YourCharName - YourServer"] = "Default",
	},
	["global"] = {
		["dbVersion"] = 2,
	},
	["profiles"] = {
		["Default"] = {
			["defaultCvars"] = {
				["cameraZoomSpeed"] = 39.5,
				["test_cameraHeadMovementDeadZone"] = 0,
				["test_cameraDynamicPitchBaseFovPadFlying"] = 0.22,
				["test_cameraHeadMovementRangeScale"] = 2.5,
				["test_cameraHeadMovementStrength"] = 0.5,
				["test_cameraDynamicPitchBaseFovPadDownScale"] = 0.84,
				["test_cameraDynamicPitchBaseFovPad"] = 1,
				["test_cameraDynamicPitch"] = 1,
				["test_cameraOverShoulder"] = 0.9,
				["test_cameraDynamicPitchSmartPivotCutoffDist"] = 0,
			},
			["enabled"] = false,
			["situations"] = {
				["033"] = {
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and UnitAffectingCombat(\"player\") and IsEncounterInProgress();",
					["cameraCVars"] = {
						["test_cameraOverShoulder"] = 1,
					},
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"ENCOUNTER_START", -- [4]
						"ENCOUNTER_STOP", -- [5]
						"INSTANCE_ENCOUNTER_ENGAGE_UNIT", -- [6]
					},
					["name"] = "Raid (Combat, Boss)",
					["priority"] = 303,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraActions"] = {
						["zoomMax"] = 39,
						["zoomFitToggleNameplate"] = true,
						["zoomFitContinous"] = true,
						["zoomSetting"] = "fit",
					},
				},
				["023"] = {
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomSetting"] = "fit",
						["zoomFitToggleNameplate"] = true,
					},
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"ENCOUNTER_START", -- [4]
						"ENCOUNTER_STOP", -- [5]
						"INSTANCE_ENCOUNTER_ENGAGE_UNIT", -- [6]
					},
					["name"] = "Dungeon (Combat, Boss)",
					["priority"] = 302,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and IsEncounterInProgress();",
				},
				["006"] = {
					["enabled"] = false,
					["condition"] = "return not IsInInstance() and UnitAffectingCombat(\"player\");",
					["name"] = "World (Combat)",
					["cameraCVars"] = {
						["test_cameraHeadMovementStrength"] = 1,
						["test_cameraOverShoulder"] = 1.2,
					},
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
					},
					["priority"] = 50,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraActions"] = {
						["zoomFitUseCurAsMin"] = true,
						["zoomFitSpeedMultiplier"] = 1.5,
						["zoomMax"] = 8,
						["zoomMin"] = 2,
						["transitionTime"] = 1.5,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "fit",
					},
				},
				["302"] = {
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "set",
						["zoomValue"] = 7,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 1,
					},
					["events"] = {
						"UNIT_SPELLCAST_START", -- [1]
						"UNIT_SPELLCAST_STOP", -- [2]
						"UNIT_SPELLCAST_SUCCEEDED", -- [3]
						"UNIT_SPELLCAST_CHANNEL_START", -- [4]
						"UNIT_SPELLCAST_CHANNEL_STOP", -- [5]
						"UNIT_SPELLCAST_CHANNEL_UPDATE", -- [6]
						"UNIT_SPELLCAST_INTERRUPTED", -- [7]
					},
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["name"] = "Fishing",
					["priority"] = 20,
					["delay"] = 2,
					["condition"] = "return (UnitChannelInfo(\"player\") == GetSpellInfo(7620))",
				},
				["101"] = {
					["condition"] = "return UnitOnTaxi(\"player\");",
					["name"] = "Taxi",
					["cameraCVars"] = {
						["test_cameraHeadMovementStrength"] = 2,
						["test_cameraOverShoulder"] = 3.8,
					},
					["events"] = {
						"PLAYER_CONTROL_LOST", -- [1]
						"PLAYER_CONTROL_GAINED", -- [2]
					},
					["priority"] = 1000,
					["extras"] = {
						["nameplates"] = false,
						["hideUI"] = true,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomValue"] = 12,
						["rotateSpeed"] = 0.100000000000001,
						["zoomFitToggleNameplate"] = true,
						["rotate"] = true,
						["zoomSetting"] = "set",
					},
				},
				["002"] = {
					["enabled"] = false,
					["condition"] = "return IsResting() and IsIndoors();",
					["name"] = "City (Indoors)",
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 0.11,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraOverShoulder"] = 2,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
					},
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
						"ZONE_CHANGED_INDOORS", -- [2]
						"ZONE_CHANGED", -- [3]
						"SPELL_UPDATE_USABLE", -- [4]
					},
					["priority"] = 11,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["transitionTime"] = 1.05,
						["zoomValue"] = 3,
						["zoomSetting"] = "set",
					},
				},
				["021"] = {
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "set",
						["zoomValue"] = 15,
					},
					["events"] = {
						"ZONE_CHANGED_INDOORS", -- [1]
						"ZONE_CHANGED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"SPELL_UPDATE_USABLE", -- [4]
					},
					["name"] = "Dungeon (Outdoors)",
					["priority"] = 12,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and IsOutdoors();",
				},
				["100"] = {
					["condition"] = "return IsMounted();",
					["name"] = "Mounted",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 1,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 1.6,
					},
					["events"] = {
						"SPELL_UPDATE_USABLE", -- [1]
						"UNIT_AURA", -- [2]
					},
					["priority"] = 100,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["transitionTime"] = 1,
						["zoomSetting"] = "out",
						["zoomFitToggleNameplate"] = true,
					},
				},
				["102"] = {
					["condition"] = "return UnitUsingVehicle(\"player\");",
					["name"] = "Vehicle",
					["cameraCVars"] = {
						["test_cameraOverShoulder"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraDynamicPitch"] = 0,
					},
					["events"] = {
						"UNIT_ENTERED_VEHICLE", -- [1]
						"UNIT_EXITED_VEHICLE", -- [2]
					},
					["priority"] = 1000,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["050"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
					["name"] = "Arena",
					["priority"] = 3,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"arena\");",
				},
				["200"] = {
					["executeOnInit"] = "this.spells = {136508, 189838, 54406, 94719, 556, 168487, 168499, 171253, 50977, 8690, 222695, 171253, 224869, 53140, 3565, 32271, 193759, 3562, 3567, 33690, 35715, 32272, 49358, 176248, 3561, 49359, 3566, 88342, 88344, 3563, 132627, 132621, 176242, 192085, 192084, 216016};",
					["condition"] = "for k,v in pairs(this.spells) do \n    if (UnitCastingInfo(\"player\") == GetSpellInfo(v)) then \n        return true;\n    end\nend\nreturn false;",
					["executeOnEnter"] = "local _, _, _, _, startTime, endTime = UnitCastingInfo(\"player\");\nthis.transitionTime = ((endTime - startTime)/1000) - .25;",
					["events"] = {
						"UNIT_SPELLCAST_START", -- [1]
						"UNIT_SPELLCAST_STOP", -- [2]
						"UNIT_SPELLCAST_SUCCEEDED", -- [3]
						"UNIT_SPELLCAST_CHANNEL_START", -- [4]
						"UNIT_SPELLCAST_CHANNEL_STOP", -- [5]
						"UNIT_SPELLCAST_CHANNEL_UPDATE", -- [6]
						"UNIT_SPELLCAST_INTERRUPTED", -- [7]
					},
					["name"] = "Hearth/Teleport",
					["cameraActions"] = {
						["timeIsMax"] = false,
						["rotateSetting"] = "degrees",
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["rotateDegrees"] = 360,
						["zoomValue"] = 4,
						["transitionTime"] = 10,
						["zoomSetting"] = "in",
						["rotate"] = true,
					},
					["priority"] = 20,
					["extras"] = {
						["nameplates"] = false,
						["hideUI"] = true,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
				},
				["301"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "in",
						["zoomValue"] = 4,
					},
					["events"] = {
						"MAIL_CLOSED", -- [1]
						"MAIL_SHOW", -- [2]
						"GOSSIP_CLOSED", -- [3]
					},
					["name"] = "Mailbox",
					["priority"] = 20,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "return (MailFrame and MailFrame:IsShown())",
				},
				["060"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
					["name"] = "Battleground",
					["priority"] = 3,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"pvp\");",
				},
				["034"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"ENCOUNTER_START", -- [4]
						"ENCOUNTER_STOP", -- [5]
						"INSTANCE_ENCOUNTER_ENGAGE_UNIT", -- [6]
					},
					["name"] = "Raid (Combat, Trash)",
					["priority"] = 203,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and UnitAffectingCombat(\"player\") and not IsEncounterInProgress();",
				},
				["201"] = {
					["executeOnInit"] = "this.buffs = {46924, 51690, 188499, 210152};",
					["condition"] = "for k,v in pairs(this.buffs) do \n    if (UnitBuff(\"player\", GetSpellInfo(v))) then\n        return true;\n    end\nend\nreturn false;",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
					["name"] = "Annoying Spells",
					["events"] = {
						"UNIT_AURA", -- [1]
					},
					["priority"] = 1000,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["061"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
					},
					["name"] = "Battleground (Combat)",
					["priority"] = 203,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"pvp\") and UnitAffectingCombat(\"player\");",
				},
				["001"] = {
					["enabled"] = false,
					["condition"] = "return IsResting();",
					["name"] = "City",
					["cameraCVars"] = {
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 1.2,
					},
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
					},
					["priority"] = 1,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraActions"] = {
						["zoomMax"] = 6,
						["zoomFitToggleNameplate"] = true,
						["transitionTime"] = 1,
						["zoomValue"] = 6,
						["zoomSetting"] = "set",
					},
				},
				["024"] = {
					["cameraActions"] = {
						["zoomMin"] = 10,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "fit",
					},
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"ENCOUNTER_START", -- [4]
						"ENCOUNTER_STOP", -- [5]
						"INSTANCE_ENCOUNTER_ENGAGE_UNIT", -- [6]
					},
					["name"] = "Dungeon (Combat, Trash)",
					["priority"] = 202,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and not IsEncounterInProgress();",
				},
				["051"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
					},
					["name"] = "Arena (Combat)",
					["priority"] = 203,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"arena\") and UnitAffectingCombat(\"player\");",
				},
				["004"] = {
					["cameraActions"] = {
						["zoomMax"] = 10,
						["zoomValue"] = 6.5,
						["zoomMin"] = 6,
						["transitionTime"] = 1,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "set",
					},
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
						"ZONE_CHANGED_NEW_AREA", -- [2]
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 0.17,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 0.27,
						["test_cameraDynamicPitchBaseFovPadFlying"] = 0.75,
						["test_cameraOverShoulder"] = 1.2,
						["test_cameraDynamicPitchSmartPivotCutoffDist"] = 10,
					},
					["name"] = "World",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "return not IsResting() and not IsInInstance();",
				},
				["300"] = {
					["executeOnInit"] = "this.frames = {\"GarrisonCapacitiveDisplayFrame\", \"BankFrame\", \"MerchantFrame\", \"GossipFrame\", \"ClassTrainerFrame\", \"QuestFrame\",}",
					["condition"] = "local shown = false;\nfor k,v in pairs(this.frames) do\n    if (_G[v] and _G[v]:IsShown()) then\n        shown = true;\n    end\nend\nreturn UnitExists(\"npc\") and UnitIsUnit(\"npc\", \"target\") and shown;",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["targetLock"] = {
						["enabled"] = true,
						["onlyAttackable"] = false,
						["nameplateVisible"] = false,
					},
					["events"] = {
						"PLAYER_TARGET_CHANGED", -- [1]
						"GOSSIP_SHOW", -- [2]
						"GOSSIP_CLOSED", -- [3]
						"QUEST_COMPLETE", -- [4]
						"QUEST_DETAIL", -- [5]
						"QUEST_FINISHED", -- [6]
						"QUEST_GREETING", -- [7]
						"BANKFRAME_OPENED", -- [8]
						"BANKFRAME_CLOSED", -- [9]
						"MERCHANT_SHOW", -- [10]
						"MERCHANT_CLOSED", -- [11]
						"TRAINER_SHOW", -- [12]
						"TRAINER_CLOSED", -- [13]
						"SHIPMENT_CRAFTER_OPENED", -- [14]
						"SHIPMENT_CRAFTER_CLOSED", -- [15]
					},
					["name"] = "NPC Interaction",
					["cameraActions"] = {
						["zoomFitUseCurAsMin"] = true,
						["zoomFitIncrements"] = 0.5,
						["rotateSetting"] = "degrees",
						["zoomMax"] = 28.5,
						["zoomMin"] = 0.5,
						["rotateBack"] = true,
						["zoomSetting"] = "range",
						["transitionTime"] = 0.5,
						["zoomFitToggleNameplate"] = true,
						["zoomFitPosition"] = 90,
						["rotate"] = true,
						["zoomValue"] = 3.5,
					},
					["priority"] = 20,
					["delay"] = 0.5,
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 1,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraHeadMovementStrength"] = 1,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 1,
						["test_cameraDynamicPitchBaseFovPadFlying"] = 0.66,
						["test_cameraOverShoulder"] = -1.8,
						["test_cameraDynamicPitchSmartPivotCutoffDist"] = 0,
					},
				},
				["020"] = {
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "set",
						["zoomValue"] = 15,
					},
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
					["name"] = "Dungeon",
					["priority"] = 2,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\");",
				},
				["030"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
					["name"] = "Raid",
					["priority"] = 3,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\");",
				},
				["031"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["events"] = {
						"ZONE_CHANGED_INDOORS", -- [1]
						"ZONE_CHANGED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"SPELL_UPDATE_USABLE", -- [4]
					},
					["name"] = "Raid (Outdoors)",
					["priority"] = 13,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and IsOutdoors();",
				},
				["005"] = {
					["condition"] = "return not IsResting() and not IsInInstance() and IsIndoors();",
					["name"] = "World (Indoors)",
					["cameraCVars"] = {
						["test_cameraHeadMovementStrength"] = 0.5,
						["test_cameraOverShoulder"] = 1.2,
					},
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
						"ZONE_CHANGED_INDOORS", -- [2]
						"ZONE_CHANGED", -- [3]
						"ZONE_CHANGED_NEW_AREA", -- [4]
						"SPELL_UPDATE_USABLE", -- [5]
					},
					["priority"] = 10,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["transitionTime"] = 1.1,
						["zoomValue"] = 3.5,
						["zoomSetting"] = "in",
					},
				},
			},
			["reactiveZoom"] = {
				["maxZoomTime"] = 2,
				["addIncrements"] = 5,
				["addIncrementsAlways"] = 0,
			},
			["defaultVersion"] = 1,
			["actionCam"] = false,
		},
		["ImmersiveLeveling"] = {
			["defaultCvars"] = {
				["test_cameraDynamicPitchBaseFovPad"] = 0.08,
				["test_cameraHeadMovementRangeScale"] = 4,
				["test_cameraDynamicPitchSmartPivotCutoffDist"] = 0,
				["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
				["test_cameraOverShoulder"] = 1.1,
				["test_cameraDynamicPitch"] = 1,
				["test_cameraDynamicPitchBaseFovPadFlying"] = 0.46,
				["cameraZoomSpeed"] = 29,
			},
			["situations"] = {
				["033"] = {
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"ENCOUNTER_START", -- [4]
						"ENCOUNTER_STOP", -- [5]
						"INSTANCE_ENCOUNTER_ENGAGE_UNIT", -- [6]
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and UnitAffectingCombat(\"player\") and IsEncounterInProgress();",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["priority"] = 303,
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["name"] = "Raid (Combat, Boss)",
				},
				["023"] = {
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"ENCOUNTER_START", -- [4]
						"ENCOUNTER_STOP", -- [5]
						"INSTANCE_ENCOUNTER_ENGAGE_UNIT", -- [6]
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and IsEncounterInProgress();",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["priority"] = 302,
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "fit",
						["zoomMax"] = 20,
					},
					["name"] = "Dungeon (Combat, Boss)",
				},
				["006"] = {
					["name"] = "World (Combat)",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
					},
					["priority"] = 50,
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 0.5,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraHeadMovementStrength"] = 1.8,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 0.31,
						["test_cameraOverShoulder"] = 1.2,
						["test_cameraDynamicPitchSmartPivotCutoffDist"] = 10.5,
					},
					["targetLock"] = {
						["enabled"] = true,
					},
					["condition"] = "return not IsInInstance() and UnitAffectingCombat(\"player\");",
					["cameraActions"] = {
						["zoomFitUseCurAsMin"] = true,
						["zoomMax"] = 6.5,
						["zoomMin"] = 3.5,
						["zoomFitIncrements"] = 0.5,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "fit",
						["zoomValue"] = 5.5,
						["zoomFitContinous"] = true,
						["transitionTime"] = 1.5,
					},
				},
				["302"] = {
					["condition"] = "return (UnitChannelInfo(\"player\") == GetSpellInfo(7620))",
					["delay"] = 2,
					["name"] = "Fishing",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["events"] = {
						"UNIT_SPELLCAST_START", -- [1]
						"UNIT_SPELLCAST_STOP", -- [2]
						"UNIT_SPELLCAST_SUCCEEDED", -- [3]
						"UNIT_SPELLCAST_CHANNEL_START", -- [4]
						"UNIT_SPELLCAST_CHANNEL_STOP", -- [5]
						"UNIT_SPELLCAST_CHANNEL_UPDATE", -- [6]
						"UNIT_SPELLCAST_INTERRUPTED", -- [7]
					},
					["priority"] = 20,
					["cameraActions"] = {
						["zoomSetting"] = "set",
						["zoomFitToggleNameplate"] = true,
						["zoomValue"] = 7,
						["zoomMax"] = 20,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 1,
					},
				},
				["034"] = {
					["enabled"] = false,
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"ENCOUNTER_START", -- [4]
						"ENCOUNTER_STOP", -- [5]
						"INSTANCE_ENCOUNTER_ENGAGE_UNIT", -- [6]
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and UnitAffectingCombat(\"player\") and not IsEncounterInProgress();",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["priority"] = 203,
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["name"] = "Raid (Combat, Trash)",
				},
				["002"] = {
					["cameraActions"] = {
						["transitionTime"] = 1.05,
						["zoomMax"] = 20,
						["zoomSetting"] = "set",
						["zoomValue"] = 3.5,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 0.11,
						["test_cameraOverShoulder"] = 1.2,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
					},
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
						"ZONE_CHANGED_INDOORS", -- [2]
						"ZONE_CHANGED", -- [3]
						"SPELL_UPDATE_USABLE", -- [4]
					},
					["priority"] = 11,
					["condition"] = "return IsResting() and IsIndoors();",
					["name"] = "City (Indoors)",
				},
				["021"] = {
					["events"] = {
						"ZONE_CHANGED_INDOORS", -- [1]
						"ZONE_CHANGED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"SPELL_UPDATE_USABLE", -- [4]
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and IsOutdoors();",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["priority"] = 12,
					["cameraActions"] = {
						["zoomSetting"] = "set",
						["zoomFitToggleNameplate"] = true,
						["zoomValue"] = 15,
						["zoomMax"] = 20,
					},
					["name"] = "Dungeon (Outdoors)",
				},
				["100"] = {
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["transitionTime"] = 1,
						["zoomSetting"] = "out",
						["zoomMax"] = 20,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 0.3,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraHeadMovementStrength"] = 0.4,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
						["test_cameraOverShoulder"] = 5,
						["test_cameraDynamicPitchSmartPivotCutoffDist"] = 8.5,
					},
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["events"] = {
						"SPELL_UPDATE_USABLE", -- [1]
						"UNIT_AURA", -- [2]
					},
					["priority"] = 100,
					["condition"] = "return IsMounted();",
					["name"] = "Mounted",
				},
				["102"] = {
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["cameraCVars"] = {
						["test_cameraOverShoulder"] = -0.0999999999999997,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraDynamicPitch"] = 0,
					},
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["events"] = {
						"UNIT_ENTERED_VEHICLE", -- [1]
						"UNIT_EXITED_VEHICLE", -- [2]
					},
					["priority"] = 1000,
					["condition"] = "return UnitUsingVehicle(\"player\");",
					["name"] = "Vehicle",
				},
				["050"] = {
					["enabled"] = false,
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"arena\");",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["priority"] = 3,
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["name"] = "Arena",
				},
				["200"] = {
					["executeOnInit"] = "this.spells = {136508, 189838, 54406, 94719, 556, 168487, 168499, 171253, 50977, 8690, 222695, 171253, 224869, 53140, 3565, 32271, 193759, 3562, 3567, 33690, 35715, 32272, 49358, 176248, 3561, 49359, 3566, 88342, 88344, 3563, 132627, 132621, 176242, 192085, 192084, 216016};",
					["condition"] = "for k,v in pairs(this.spells) do \n    if (UnitCastingInfo(\"player\") == GetSpellInfo(v)) then \n        return true;\n    end\nend\nreturn false;",
					["executeOnEnter"] = "local _, _, _, _, startTime, endTime = UnitCastingInfo(\"player\");\nthis.transitionTime = ((endTime - startTime)/1000) - .25;",
					["events"] = {
						"UNIT_SPELLCAST_START", -- [1]
						"UNIT_SPELLCAST_STOP", -- [2]
						"UNIT_SPELLCAST_SUCCEEDED", -- [3]
						"UNIT_SPELLCAST_CHANNEL_START", -- [4]
						"UNIT_SPELLCAST_CHANNEL_STOP", -- [5]
						"UNIT_SPELLCAST_CHANNEL_UPDATE", -- [6]
						"UNIT_SPELLCAST_INTERRUPTED", -- [7]
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["rotateDegrees"] = 360,
						["timeIsMax"] = false,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "in",
						["rotate"] = true,
						["rotateSetting"] = "degrees",
						["zoomValue"] = 4,
						["transitionTime"] = 10,
					},
					["priority"] = 20,
					["extras"] = {
						["nameplates"] = false,
						["friendlyNameplates"] = true,
						["enemyNameplates"] = true,
						["hideUI"] = true,
					},
					["name"] = "Hearth/Teleport",
				},
				["301"] = {
					["enabled"] = false,
					["events"] = {
						"MAIL_CLOSED", -- [1]
						"MAIL_SHOW", -- [2]
						"GOSSIP_CLOSED", -- [3]
					},
					["condition"] = "return (MailFrame and MailFrame:IsShown())",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["priority"] = 20,
					["cameraActions"] = {
						["zoomSetting"] = "in",
						["zoomFitToggleNameplate"] = true,
						["zoomValue"] = 4,
						["zoomMax"] = 20,
					},
					["name"] = "Mailbox",
				},
				["005"] = {
					["cameraActions"] = {
						["transitionTime"] = 1.1,
						["zoomMax"] = 20,
						["zoomSetting"] = "in",
						["zoomValue"] = 3.5,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraHeadMovementStrength"] = 0.5,
						["test_cameraOverShoulder"] = 1.2,
					},
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
						"ZONE_CHANGED_INDOORS", -- [2]
						"ZONE_CHANGED", -- [3]
						"ZONE_CHANGED_NEW_AREA", -- [4]
						"SPELL_UPDATE_USABLE", -- [5]
					},
					["priority"] = 10,
					["condition"] = "return not IsResting() and not IsInInstance() and IsIndoors();",
					["name"] = "World (Indoors)",
				},
				["101"] = {
					["cameraActions"] = {
						["rotateSpeed"] = 0.100000000000001,
						["zoomMax"] = 20,
						["zoomSetting"] = "set",
						["rotate"] = true,
						["zoomFitToggleNameplate"] = true,
						["zoomValue"] = 12,
					},
					["cameraCVars"] = {
						["test_cameraHeadMovementStrength"] = 2,
						["test_cameraOverShoulder"] = 3.8,
					},
					["extras"] = {
						["nameplates"] = false,
						["friendlyNameplates"] = true,
						["enemyNameplates"] = true,
						["hideUI"] = true,
					},
					["events"] = {
						"PLAYER_CONTROL_LOST", -- [1]
						"PLAYER_CONTROL_GAINED", -- [2]
					},
					["priority"] = 1000,
					["condition"] = "return UnitOnTaxi(\"player\");",
					["name"] = "Taxi",
				},
				["201"] = {
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["events"] = {
						"UNIT_AURA", -- [1]
					},
					["priority"] = 1000,
					["name"] = "Annoying Spells",
					["executeOnInit"] = "this.buffs = {46924, 51690, 188499, 210152};",
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["condition"] = "for k,v in pairs(this.buffs) do \n    if (UnitBuff(\"player\", GetSpellInfo(v))) then\n        return true;\n    end\nend\nreturn false;",
				},
				["061"] = {
					["enabled"] = false,
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"pvp\") and UnitAffectingCombat(\"player\");",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["priority"] = 203,
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["name"] = "Battleground (Combat)",
				},
				["001"] = {
					["cameraActions"] = {
						["transitionTime"] = 1,
						["zoomMax"] = 6,
						["zoomSetting"] = "set",
						["zoomValue"] = 6,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 1.2,
					},
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
					},
					["priority"] = 1,
					["condition"] = "return IsResting();",
					["name"] = "City",
				},
				["024"] = {
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"ENCOUNTER_START", -- [4]
						"ENCOUNTER_STOP", -- [5]
						"INSTANCE_ENCOUNTER_ENGAGE_UNIT", -- [6]
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and not IsEncounterInProgress();",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["priority"] = 202,
					["cameraActions"] = {
						["zoomMin"] = 10,
						["zoomSetting"] = "fit",
						["zoomFitToggleNameplate"] = true,
					},
					["name"] = "Dungeon (Combat, Trash)",
				},
				["051"] = {
					["enabled"] = false,
					["events"] = {
						"PLAYER_REGEN_DISABLED", -- [1]
						"PLAYER_REGEN_ENABLED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"arena\") and UnitAffectingCombat(\"player\");",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["priority"] = 203,
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["name"] = "Arena (Combat)",
				},
				["004"] = {
					["events"] = {
						"PLAYER_UPDATE_RESTING", -- [1]
						"ZONE_CHANGED_NEW_AREA", -- [2]
					},
					["condition"] = "return not IsResting() and not IsInInstance();",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["name"] = "World",
					["cameraActions"] = {
						["timeIsMax"] = false,
						["zoomSetting"] = "set",
						["zoomMax"] = 10,
						["zoomFitToggleNameplate"] = true,
						["zoomMin"] = 6,
						["transitionTime"] = 1.05,
						["zoomValue"] = 4.5,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 0.46,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraHeadMovementStrength"] = 0.8,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 0.66,
						["test_cameraDynamicPitchBaseFovPadFlying"] = 0.66,
						["test_cameraOverShoulder"] = 1,
						["test_cameraDynamicPitchSmartPivotCutoffDist"] = 0,
					},
				},
				["300"] = {
					["executeOnInit"] = "this.frames = {\"GarrisonCapacitiveDisplayFrame\", \"BankFrame\", \"MerchantFrame\", \"GossipFrame\", \"ClassTrainerFrame\", \"QuestFrame\",}",
					["condition"] = "local shown = false;\nfor k,v in pairs(this.frames) do\n    if (_G[v] and _G[v]:IsShown()) then\n        shown = true;\n    end\nend\nreturn UnitExists(\"npc\") and UnitIsUnit(\"npc\", \"target\") and shown;",
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 1,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraHeadMovementStrength"] = 1,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 1,
						["test_cameraDynamicPitchBaseFovPadFlying"] = 0.66,
						["test_cameraOverShoulder"] = -1.8,
						["test_cameraDynamicPitchSmartPivotCutoffDist"] = 0,
					},
					["delay"] = 0.5,
					["events"] = {
						"PLAYER_TARGET_CHANGED", -- [1]
						"GOSSIP_SHOW", -- [2]
						"GOSSIP_CLOSED", -- [3]
						"QUEST_COMPLETE", -- [4]
						"QUEST_DETAIL", -- [5]
						"QUEST_FINISHED", -- [6]
						"QUEST_GREETING", -- [7]
						"BANKFRAME_OPENED", -- [8]
						"BANKFRAME_CLOSED", -- [9]
						"MERCHANT_SHOW", -- [10]
						"MERCHANT_CLOSED", -- [11]
						"TRAINER_SHOW", -- [12]
						"TRAINER_CLOSED", -- [13]
						"SHIPMENT_CRAFTER_OPENED", -- [14]
						"SHIPMENT_CRAFTER_CLOSED", -- [15]
					},
					["name"] = "NPC Interaction",
					["cameraActions"] = {
						["zoomFitUseCurAsMin"] = true,
						["zoomMax"] = 28.5,
						["zoomMin"] = 0.5,
						["rotateDegrees"] = -40,
						["rotateBack"] = true,
						["zoomValue"] = 3.5,
						["zoomFitIncrements"] = 0.5,
						["rotate"] = true,
						["zoomSetting"] = "in",
						["zoomFitPosition"] = 90,
						["rotateSetting"] = "degrees",
						["zoomFitToggleNameplate"] = true,
						["transitionTime"] = 0.5,
					},
					["priority"] = 20,
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["targetLock"] = {
						["enabled"] = true,
						["onlyAttackable"] = false,
						["nameplateVisible"] = false,
					},
				},
				["020"] = {
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\");",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["priority"] = 2,
					["cameraActions"] = {
						["zoomSetting"] = "set",
						["zoomFitToggleNameplate"] = true,
						["zoomValue"] = 15,
						["zoomMax"] = 20,
					},
					["name"] = "Dungeon",
				},
				["030"] = {
					["enabled"] = false,
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\");",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["priority"] = 3,
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["name"] = "Raid",
				},
				["031"] = {
					["enabled"] = false,
					["events"] = {
						"ZONE_CHANGED_INDOORS", -- [1]
						"ZONE_CHANGED", -- [2]
						"ZONE_CHANGED_NEW_AREA", -- [3]
						"SPELL_UPDATE_USABLE", -- [4]
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"raid\") and IsOutdoors();",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["priority"] = 13,
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["name"] = "Raid (Outdoors)",
				},
				["060"] = {
					["enabled"] = false,
					["events"] = {
						"ZONE_CHANGED_NEW_AREA", -- [1]
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"pvp\");",
					["extras"] = {
						["nameplates"] = false,
						["enemyNameplates"] = true,
						["friendlyNameplates"] = true,
					},
					["priority"] = 3,
					["cameraActions"] = {
						["zoomFitToggleNameplate"] = true,
						["zoomMax"] = 20,
					},
					["name"] = "Battleground",
				},
			},
			["defaultVersion"] = 1,
			["reactiveZoom"] = {
				["addIncrementsAlways"] = 0,
				["maxZoomTime"] = 2,
				["addIncrements"] = 5,
			},
			["advanced"] = true,
		},
	},
}
