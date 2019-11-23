-- $Id: Constants.lua 94 2018-12-21 15:55:51Z arith $
-----------------------------------------------------------------------
-- Upvalued Lua API.
-----------------------------------------------------------------------
-- Functions
local _G = getfenv(0)
-- Libraries
-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local FOLDER_NAME, private = ...
private.addon_name = "WorldMapTrackingEnhanced"

local LibStub = _G.LibStub

local constants = {}
private.constants = constants

constants.defaults = {
	profile = {
		handynotes_contextMenu = true,
		worldQuestTracker_contextMenu = false,
		enable_HandyNotes = true,
		enable_GatherMate2 = true,
		enable_PetTracker = true,
		enable_RareScanner = true,
		enable_WorldQuestTracker = true,
		enable_Atlas = true,
		enable_AtlasLoot = true,
	},
}

constants.events = {
--	"CLOSE_WORLD_MAP",
}
