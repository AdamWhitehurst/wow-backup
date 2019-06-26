local addon = select(2, ...)

local TomCatsAddOns = {
    { name = "TomCats", version = "1.0.10" },
    { name = "TomCats-ArathiHighlandsRares", version = "1.2.7" },
    { name = "TomCats-Complete", version = "1.0.24" },
    { name = "TomCats-Coordinates", version = "2.0.5" },
    { name = "TomCats-DarkshoreRares", version = "1.2.7" },
    { name = "TomCats-HallowsEnd", version = "1.2.0" },
    { name = "TomCats-Hivemind", version = "0.1.4" },
    { name = "TomCats-LunarFestival", version = "1.0.20" },
    { name = "TomCats-LoveIsInTheAir", version = "1.0.13" },
    { name = "TomCats-WarfrontsCommandCenter", version = "1.2.7" },
    { name = "TomCats-Noblegarden", version = "1.0.4" },
    { name = "TomCats-ChildrensWeek", version = "1.0.4" },
    { name = "TomCats-Mechagon", version = "1.0.1" },
    { name = "TomCats-Nazjatar", version = "1.0.1" }
}

if (TomCats and TomCats.Register) then
    TomCats:Register(
        {
            name = "Complete",
            version = "1.0.24"
        }
    )
    TomCats.installed = {}
    local missing = false
    for i = 1, #TomCatsAddOns do
        local name, title, notes, enabled, loadable, reason, security = GetAddOnInfo(TomCatsAddOns[i].name)
        if (loadable == "MISSING") then
            if (not missing) then
                missing = true
                --print("One or more TomCat's Tours addons are missing from your installation:")
            end
            --print("- " .. name)
        end
    end
    if (missing) then
        --print("Please check your settings on Twitch for TomCat's Tours: Complete")
    end
end
