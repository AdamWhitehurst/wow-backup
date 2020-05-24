--[[ Special shout-out to Alex Brault for helping me with this many years ago. ]]--

local f=CreateFrame("FRAME","MMD_Frame",Minimap);
f:SetAllPoints();

local n = f:CreateFontString("$parentText","ARTWORK","GameFontNormal");
local e = f:CreateFontString("$parentText","ARTWORK","GameFontNormal");
local s = f:CreateFontString("$parentText","ARTWORK","GameFontNormal");
local w = f:CreateFontString("$parentText","ARTWORK","GameFontNormal");

n:SetText("N")
e:SetText("E")
s:SetText("S")
w:SetText("W")

n:SetPoint("CENTER", f, "TOP")
e:SetPoint("CENTER", f, "RIGHT")
s:SetPoint("CENTER", f, "BOTTOM")
w:SetPoint("CENTER", f, "LEFT")