local addon = select(2, ...)
local D = addon.TomCatsLibs.Data

addon.TomCatsLibs.Data.loadData(
        "Quest Chains",
        { "ID", "Quest Giver", "Orphan", "Quest IDs", "Max Quests", "Rewards" },
        {
            { 1, D["Quest Givers"][14450], D["Orphans"][14305], { 1468, 29093, 54130, 29106, 29119, 29117, 171 }, 7, { { 23015, 294480, 127 }, { 23002, 656341, 125 }, { 66073, 134434, 289 }, { 23007, 132514, 126 } } }, -- Human
            { 2, D["Quest Givers"][51989], D["Orphans"][14444], { 172, 29146, 54146, 29176, 29191, 29190, 5502 }, 7, { { 23015, 294480, 127 }, { 23002, 656341, 125 }, { 66073, 134434, 289 }, { 23007, 132514, 126 } } }, -- Orcish
            { 3, D["Quest Givers"][22819], D["Orphans"][22818], { 10943, 10950, 10954, 10952, 10956, 10962, 10966 }, 7, { { 32616, 294475, 158 }, { 32622, 656598, 159 }, { 32617, 294482, 157 }, { 69648, 254502, 308 } } }, -- Draenei
            { 4, D["Quest Givers"][22819], D["Orphans"][22817], { 10942, 10945, 10953, 10951, 11975, 10963, 10967 }, 7, { { 32616, 294475, 158 }, { 32622, 656598, 159 }, { 32617, 294482, 157 }, { 69648, 254502, 308 } } }, -- Blood Elf
            { 5, D["Quest Givers"][34365], D["Orphans"][33533], { 13926, 13929, 13933, 13950, 13956, 13954, 13937, 13959, 28879 }, 8, { { 46545, 252780, 225 } } }, -- Oracle
            { 6, D["Quest Givers"][34365], D["Orphans"][33532], { 13927, 13930, 13934, 13951, 13955, 13957, 13938, 13960, 28880 }, 8, { { 46544, 236698, 226 } } }, -- Wolvar
            { 7, D["Quest Givers"][145291], D["Orphans"][145394], { 53811, 53859, 53861, 53862, 53863, 53864, 53865 }, 7, { { 167008, 2027914, 2575 }, { 167010, 1738683, 2576 }, { 167011, 2399261, 2577 }, { 167009, 2027841, 2578 } } }, -- Kul Tiran
            { 8, D["Quest Givers"][131346], D["Orphans"][145463], { 53965, 53966, 53968, 53967, 53970, 53969, 53971 }, 7, { { 167008, 2027914, 2575 }, { 167010, 1738683, 2576 }, { 167011, 2399261, 2577 }, { 167009, 2027841, 2578 } } }, -- Zandalari
        }
)


--[[
ItemID, petIcon, speciesID

Whisker's the Rat
23015, 294480, 127
Speedy
23002, 656341, 125
Scooter the Snail
66073, 134434, 289
Mr. Wiggles
23007, 132514, 126

Egbert
32616, 294475, 158
Peanut
32622, 656598, 159
Willy
32617, 294482, 157
Legs
69648, 254502, 308

Curious Oracle Hatchling
{ 46545, 252780, 225 }
Curious Wolvar Pup
{ 46544, 236698, 226 }


Mr. Crabs
167008, 2027914, 2575
Beakbert
167010, 1738683, 2576
Froglet
167011, 2399261, 2577
Scaley
167009, 2027841, 2578
]]
