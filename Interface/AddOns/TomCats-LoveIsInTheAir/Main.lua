if (TomCats and TomCats.Register) then
    TomCats:Register(
        {
--            slashCommands = {
--                {
--                    command = "LOVE TOGGLE",
--                    desc = "Toggle Love is in the Air Window",
--                    func = toggleUI
--                }
--            },
            name = "Love is in the Air",
            version = "1.0.13"
        }
    )
end

if (GetServerTime() > 1551204000) then return end  -- cya next year!

local _, addon = ...
local TCL = addon.TomCatsLibs
local Books = TCL.Books
TCL.Charms.scope = "account"
local AP
local book
local characters
local character

--todo: Add unopened box warning

local function toggleUI()
    if (not book) then
        addon:initializeBook()
    else
        book:toggle()
    end
end

function addon:initializeBook()
    book = Books.CreateBook()
    book:toggle()
    local overview = book:CreatePage("overview")
    local inset1 = overview:CreateInset({
        { "TOPLEFT", book, "TOPLEFT", book.pageOffsetX, book.pageOffsetY },
        { "BOTTOMRIGHT", book, "TOPLEFT", book.pageOffsetX + book.pageWidth, book.pageOffsetY - 77 }
    })

    overview:CreateInset({
        { "TOPLEFT", inset1, "BOTTOMLEFT", 0, -90 },
        { "BOTTOM", book, "BOTTOM", 0, 50 },
        { "RIGHT", book, "TOPLEFT", book.pageOffsetX + book.pageWidth - 47, 0 }
    })

    overview:CreateInset({
        { "TOPLEFT", inset1, "BOTTOMLEFT", 0, -8 },
        { "BOTTOM", inset1, "BOTTOM", 0, -52 },
        { "RIGHT", inset1, "CENTER", -4, 0 }
    })

    overview:CreateInset({
        { "TOPRIGHT", inset1, "BOTTOMRIGHT", 0, -8 },
        { "BOTTOM", inset1, "BOTTOM", 0, -52 },
        { "LEFT", inset1, "CENTER", 4, 0 }
    })
    overview:Show()
end

local characterInitialized = false

local function LFG_UPDATE_RANDOM_INFO(_, event)
    local initializing = not characterInitialized
    if (not characterInitialized) then
        local name, realm = UnitFullName("player")
        character.name = name or character.name
        character.realm = realm or character.realm
        character.class = select(2,UnitClass("player")) or character.class
        local level = UnitLevel("player")
        character.level = level and (level > character.level) and level or character.level
        character.faction = UnitFactionGroup("player") or character.faction
        character.completedDungeon = GetLFGDungeonRewards(288)
        character.timestamp = GetServerTime()
        characterInitialized = true
        addon:UpdateCompleted()
    end
    addon:SortedCharacterList()
    if (not character.canLootMount) then
        if (character.level >= 110) then
            local lfgLockList = GetLFDChoiceLockedState()
            if (not lfgLockList[288]) then
                local _, _, _, _, _, lootItemID = GetLFGDungeonRewardInfo(288, 1)
                if ((lootItemID and lootItemID == 54537) or character.completedDungeon)  then
                    character.canLootMount = true
                    character.completedDungeon = GetLFGDungeonRewards(288)
                    character.timestamp = GetServerTime()
                    if (not initializing) then
                        --todo: Update entire list view in UI
                        addon:UpdateScrollFrame()
                    end
                    return
                end
            end
        end
    end
    if (character.canLootMount and (not character.completedDungeon)) then
        local completedDungeon = GetLFGDungeonRewards(288)
        if (completedDungeon) then
            character.completedDungeon = true
            character.timestamp = GetServerTime()
            if (not initializing) then
                addon:UpdateScrollFrame()
                --todo: Announce in chat
                DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00TomCat's Tours: Love is in the Air: |cffffffff" .. addon.completedCharacters .. " of " .. addon.eligibleCharacters .. " Completed Today|r")
                --todo: Update completion status in UI for current character
            end
        end
    end
end

local function PLAYER_LEVEL_UP(_, _, level)
    character.level = level
    if (character.level == 110) then
        RequestLFDPlayerLockInfo()
    elseif (character.level > 110) then
        -- todo: update level value in UI for current character
        addon:UpdateScrollFrame()
    end
end

local function LFG_COMPLETION_REWARD()
    if (not character.completedDungeon) then
        RequestLFDPlayerLockInfo()
    end
end

local lastBagUpdate
local bagUpdatePending = false
local function handleBagUpdate()
    bagUpdatePending = false
    lastBagUpdate = GetServerTime()
    character.boxes = GetItemCount(54537, true)
    character.charms = GetItemCount(49655, true)
    character.tokens = GetItemCount(49927, true)
    character.bracelets = GetItemCount(49916, true)
    if (addon.bagUpdate) then
        addon:bagUpdate()
    end
    -- todo: update item quantites in the UI for buttons
    addon:UpdateScrollFrame()
end

local function BAG_UPDATE()
    if (bagUpdatePending) then return end
    local time = GetServerTime()
    if ((not lastBagUpdate) or (time == lastBagUpdate)) then
        bagUpdatePending = true
        C_Timer.After(1, handleBagUpdate)
    else
        handleBagUpdate()
    end
end

local function ADDON_LOADED(_, _, arg1)
    if (arg1 == addon.name) then
        TCL.Events.UnregisterEvent("ADDON_LOADED", ADDON_LOADED)
        TCL.Events.RegisterEvent("LFG_UPDATE_RANDOM_INFO", LFG_UPDATE_RANDOM_INFO)
        TCL.Events.RegisterEvent("LFG_COMPLETION_REWARD", LFG_COMPLETION_REWARD)
        TCL.Events.RegisterEvent("PLAYER_LEVEL_UP", PLAYER_LEVEL_UP)
        TCL.Events.RegisterEvent("BAG_UPDATE", BAG_UPDATE)
        AP = addon.savedVariables.account.preferences
        addon.savedVariables.account.characters = addon.savedVariables.account.characters or { }
        characters = addon.savedVariables.account.characters
        local guid = UnitGUID("player")
        local UNKNOWN = "UNKNOWN"
        character = characters[guid] or {
            name = UNKNOWN,
            realm = UNKNOWN,
            class = UNKNOWN,
            timestamp = 0,
            completedDungeon = false,
            level = 0,
            boxes = 0,
            charms = 0,
            tokens = 0,
            bracelets = 0,
            canLootMount = false,
            faction = UNKNOWN
        }
        characters[guid] = character
        addon.character = character
        local region = GetCurrentRegionName()
        if (region == "US" or region == "EU") then
            DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00TomCat's Tours: |cffffffffThank you for installing TomCat's Tours: Love is in the Air|r")
            DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00TomCat's Tours: |cffffffffThis addon is being developed before your very eyes|r")
            if (region == "US") then
                DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00TomCat's Tours: |cffffffffPlease stop by and visit our |cff82c5ff|HclubTicket:nlvbGvmib2a|h[Blizzard community]|h|r to participate|r")
            else
                DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00TomCat's Tours: |cffffffffPlease stop by and visit our |cff82c5ff|HclubTicket:ABDDPlSLV7|h[Blizzard community]|h|r to participate|r")
            end
        end
        addon.charm = TCL.Charms.Create({
            name = "TomCats-LoveIsInTheAirMinimapButton",
            iconTexture = "Interface\\AddOns\\TomCats-LoveIsInTheAir\\images\\liith-icon",
            backgroundColor = { 0.0,0.0,0.0,1.0 },
            handler_onclick = toggleUI
        })
        addon.charm.tooltip = {
            Show = function(this)
                GameTooltip:ClearLines()
                GameTooltip:SetOwner(this, "ANCHOR_LEFT")
                GameTooltip:SetText("TomCat's Tours:", 1, 1, 1)
                GameTooltip:AddLine("Love is in the Air", nil, nil, nil, true)
                GameTooltip:Show()
            end,
            Hide = function()
                GameTooltip:Hide()
            end
        }
        if ("1.0.13" ~= AP["lastVersionSeen"]) then
            addon.charm.MinimapLoopPulseAnim:Play()
        end
    end
end

TCL.Events.RegisterEvent("ADDON_LOADED", ADDON_LOADED)

