local E, L, V, P, G = unpack(ElvUI);
local ALUI = E:GetModule("AlysiaUI");

function ALUI:LoadNCProfile()
local db = LibStub("AceDB-3.0"):New(NameplateCooldownsAceDB, nil, true)

if(NameplateCooldownsAceDB["profiles"]["AlysiaUI"])then
db:SetProfile("AlysiaUI")
else
NameplateCooldownsDB = nil
NameplateCooldownsAceDB["profiles"]["AlysiaUI"] = {
			["IconSortMode"] = "trinket-interrupt-other",
			["IconSize"] = 20,
			["ShowBorderInterrupts"] = false,
			["IconYOffset"] = -32,
			["IconXOffset"] = 23,
			["ShowBorderTrinkets"] = false,
			["Font"] = "Expressway",
		},
	
db:SetProfile("AlysiaUI")
end

end