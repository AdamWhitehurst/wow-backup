-------------------------------------------------------------------------------
--|> CONFIG
--: Slash Commands and Interface Options
-------------------------------------------------------------------------------
--|> UPVALUE GLOBALS
-------------------------------------------------------------------------------
local weizPVP = weizPVP
local GetCVarDefault = GetCVarDefault
local LibStub = LibStub
local InterfaceOptionsFrameAddOnsListScrollBar = InterfaceOptionsFrameAddOnsListScrollBar
local InterfaceOptionsFrame_OpenToCategory = InterfaceOptionsFrame_OpenToCategory
local wipe = wipe
local SetCVar = SetCVar
local _

-------------------------------------------------------------------------------
--|> LIBS
-------------------------------------------------------------------------------
local AceConfig = LibStub("AceConfig-3.0")
local SM = LibStub("LibSharedMedia-3.0")
local sounds = SM:List("sound")

-------------------------------------------------------------------------------
--|> SLASH COMMANDS
-------------------------------------------------------------------------------
local halt = false
local Smax
--=> Commands Option Table
-------------------------------------------------------------------------------
weizPVP.SlashCommands = {
    name = "Slash Commands",
    order = -3,
    type = "group",
    args = {
        intro = {
            name = "weizPVP Slash Commands",
            type = "description",
            order = 1,
            cmdHidden = true
        },
        config = {
            name = "config",
            desc = "Opens the configuration menu.",
            type = "execute",
            func = function()
                InterfaceOptionsFrame_OpenToCategory("weiz|cffffa012PVP|r")
                _, Smax = InterfaceOptionsFrameAddOnsListScrollBar:GetMinMaxValues()
                InterfaceOptionsFrameAddOnsListScrollBar:SetValue(Smax)
                InterfaceOptionsFrame_OpenToCategory("weiz|cffffa012PVP|r")
            end,
            guiHidden = true,
            order = 2
        },
        show = {
            name = "Show",
            desc = "Show the weizPVP window.",
            type = "execute",
            order = 3,
            func = function()
                weizPVP:SetWindowVisible(true)
                weizPVP.Options.Window.Visible = true
            end,
            dialogHidden = true
        },
        hide = {
            name = "Hide",
            desc = "Hide the weizPVP window.",
            type = "execute",
            order = 4,
            func = function()
                weizPVP:SetWindowVisible(false)
                weizPVP.Options.Window.Visible = false
            end,
            dialogHidden = true
        },
        lock = {
            name = "Lock",
            desc = "Toggle locking of the window's position and size.",
            type = "execute",
            order = 5,
            func = function()
                weizPVP:SetWindowLocked(not weizPVP.Options.Window.Locked)
            end,
            dialogHidden = true
        },
        pin = {
            name = "Pin",
            desc = "Toggle pinning of the window.",
            type = "execute",
            order = 6,
            func = function()
                if weizPVP.Options.Window.Locked then
                    weizPVP:PrintAddonMessage(
                        "Window is currently |cffff3838LOCKED|r. Window can only be pinned after being unlocked."
                    )
                else
                    weizPVP:SetWindowPin(not weizPVP.Options.Window.Pinned)
                end
            end,
            dialogHidden = true
        },
        ch = {
            name = "Crosshairs",
            desc = "Toggles the Crosshairs on or off",
            type = "execute",
            order = 7,
            func = function()
                if weizPVP.Options.Crosshair.Enabled == false then
                    weizPVP.Options.Crosshair.Enabled = true
                    weizPVP:EnableCrosshair()
                    weizPVP:PrintAddonMessage("Crosshairs are |cff37ff37ENABLED|r.")
                else
                    weizPVP.Options.Crosshair.Enabled = false
                    weizPVP:DisableCrosshair()
                    weizPVP:PrintAddonMessage("Crosshairs are |cffff3838DISABLED|r.")
                end
            end,
            dialogHidden = true
        },
        --> HALT
        halt = {
            name = "Halts all event processing.",
            desc = "Stops any additional processing from taking place related to data gathering and player detection.",
            type = "execute",
            order = 8,
            func = function()
                if halt == false then
                    halt = true
                    weizPVP:UnregisterEvent("NAME_PLATE_UNIT_ADDED", "NameplateAdded")
                    weizPVP:UnregisterEvent("NAME_PLATE_UNIT_REMOVED", "NameplateRemoved")
                    weizPVP:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED", "CombatLogEvent")
                    weizPVP:UnregisterEvent("PLAYER_TARGET_CHANGED", "PlayerTargetEvent")
                    weizPVP:UnregisterEvent("UPDATE_MOUSEOVER_UNIT", "PlayerMouseoverEvent")
                    weizPVP:UnregisterEvent("UNIT_HEALTH", "UnitHealthEvent")
                    weizPVP:UnregisterEvent("PLAYER_LOGIN", "UpdateDisplayData")
                    weizPVP:PrintAddonMessage("|cffff3838EVENT PROCESSING HALTED:|r Run '/wpvp halt' again to resume.")
                else
                    if halt == true then
                        halt = false
                        weizPVP:RegisterEvent("NAME_PLATE_UNIT_ADDED", "NameplateAdded")
                        weizPVP:RegisterEvent("NAME_PLATE_UNIT_REMOVED", "NameplateRemoved")
                        weizPVP:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED", "CombatLogEvent")
                        weizPVP:RegisterEvent("PLAYER_TARGET_CHANGED", "PlayerTargetEvent")
                        weizPVP:RegisterEvent("UPDATE_MOUSEOVER_UNIT", "PlayerMouseoverEvent")
                        weizPVP:RegisterEvent("UNIT_HEALTH", "UnitHealthEvent")
                        weizPVP:RegisterEvent("PLAYER_LOGIN", "UpdateDisplayData")
                        weizPVP:PrintAddonMessage("|cff37ff37EVENT PROCESSING RESUMED.|r")
                    end
                end
            end,
            cmdHidden = true
        },
        --> DEBUG: Detects and manages ALL player characters; not just enemies.
        debug = {
            name = "DEBUG",
            desc = "Toggles DEBUG mode where ALL players of any factions are accepted as valid.",
            type = "execute",
            order = 60,
            func = function()
                if weizPVP.Options.DEBUG == true then
                    weizPVP.Options.DEBUG = false
                    weizPVP:ClearListData()
                    weizPVP:PrintAddonMessage(
                        "|TInterface\\Addons\\weizPVP\\Media\\Icons\\Pack\\toolbox.tga:0|t - |cff37ff37DISABLED|r"
                    )
                    weizPVP:SetStatusBarMessage("|cff37ff37> DEBUG MODE DISABLED <|r", true, 3)
                else
                    weizPVP.Options.DEBUG = true
                    weizPVP:PrintAddonMessage(
                        "|TInterface\\Addons\\weizPVP\\Media\\Icons\\Pack\\toolbox.tga:0|t - |cffff3838ENABLED|r"
                    )
                    weizPVP:SetStatusBarMessage("|cffff3838>|r DEBUG MODE: |cffff3838ACTIVE <|r", true, 3)
                end
            end,
            cmdHidden = true
        },
        --> RESETALL: Wipes EVERYTHING
        resetall = {
            name = "Reset All",
            desc = "Resets all settings and wipes player data",
            type = "execute",
            order = 61,
            func = function()
                weizPVP:ResetAll()
            end,
            cmdHidden = true
        },
        --> RESET OPTIONS
        resetoptions = {
            name = "Reset Options",
            desc = "Resets all Options but doesn't change player data at all",
            type = "execute",
            order = 63,
            func = function()
                weizPVP:ResetOptions()
            end,
            cmdHidden = true
        },
        --> RESET PLAYER DB
        resetplayers = {
            name = "Reset Player DB",
            desc = "Wipes the player database. Options remain untouched.",
            type = "execute",
            order = 64,
            func = function()
                weizPVP:ClearListData()
                if weizPVP.PlayerDB then
                    wipe(weizPVP.PlayerDB)
                end
                weizPVP.globalDB.PlayerDB = {}
            end,
            cmdHidden = true
        }
        -- !! END HIDDEN COMMANDS =====================================================
    }
}

--=> Register Slash Commands
-------------------------------------------------------------------------------
AceConfig:RegisterOptionsTable("weizPVP.SlashCommands", weizPVP.SlashCommands, {"wpvp", "weizpvp"})
-------------------------------------------------------------------------------
--|> LOCAL FUNCTIONS
-------------------------------------------------------------------------------
local ValidateNumeric = function(_, val)
    if val ~= nil and val ~= "" and not tonumber(val) then
        return false
    end
    return true
end
-------------------------------------------------------------------------------
--|> INTERFACE OPTIONS: WOW GUI MENU
-------------------------------------------------------------------------------
--=> Options Table
-------------------------------------------------------------------------------
local tips =
    [[
Toggle Options: |cff42dcf4Right Click|r  the minimap icon
Show/Hide Window: |cff42dcf4Shift + Right Click|r the minimap icon
Pin/Unpin the Window: |cff42dcf4Right Click|r title bar to toggle.
Lock/Uplock the Window: |cff42dcf4Ctrl + Right Click|r title bar to toggle.
]]
local commands =
    [[
Show Window:  |cff42dcf4/wpvp show|r
Hide Window:  |cff42dcf4/wpvp hide|r
Toggle Lock Window:  |cff42dcf4/wpvp lock|r
Toggle Pin Window:  |cff42dcf4/wpvp pin|r
]]

weizPVP.OptionsTable = {
    name = "weizPVP  |cffffffff/|r  v" .. weizPVP.Addon.VERSION,
    type = "group",
    args = {
        --> Overview Group
        -------------------------------------------
        overview = {
            name = "Tips & Commands",
            type = "group",
            order = 1,
            args = {
                introOverview = {
                    name = "|cffffa012TIPS & COMMANDS|r \n",
                    type = "header",
                    order = 1,
                    width = "full"
                },
                --> Window Tips
                -------------------------------------------
                windowTipsHeader = {
                    name = "|cffffa012Window Tips:|r",
                    type = "description",
                    fontSize = "large",
                    width = "full",
                    order = 2
                },
                windowTips = {
                    type = "description",
                    name = tips,
                    width = "full",
                    order = 3
                },
                --> Commands
                -------------------------------------------
                commandsHeader = {
                    name = "|cffffa012Commands:|r",
                    type = "description",
                    fontSize = "large",
                    width = "full",
                    order = 4
                },
                commands = {
                    type = "description",
                    name = commands,
                    width = "full",
                    order = 5
                }
            }
        },
        --> General Options Group
        -------------------------------------------
        general = {
            name = "General",
            type = "group",
            order = 2,
            args = {
                introGeneral = {
                    name = " |cffffa012GENERAL|r",
                    type = "header",
                    order = 1,
                    width = "full"
                },
                --> General Options
                -------------------------------------------
                minimapIcon = {
                    name = "Show minimap icon",
                    desc = "Show or hide the minimap icon.",
                    type = "toggle",
                    width = "full",
                    order = 2,
                    get = function()
                        return weizPVP.Options.LDB.minimap
                    end,
                    set = function(_, value)
                        if value == true then
                            LibStub("LibDBIcon-1.0"):Show("weizPVP")
                        else
                            LibStub("LibDBIcon-1.0"):Hide("weizPVP")
                        end
                        weizPVP.Options.LDB.minimap = value
                    end
                },
                EnableBGs = {
                    name = " Enabled in BGs",
                    desc = "Enable weizPVP in Battlegrounds.",
                    type = "toggle",
                    order = 3,
                    width = "full",
                    get = function()
                        return weizPVP.Options.Addon.EnabledInBattlegrounds
                    end,
                    set = function(_, value)
                        --> Double check that we were already disabled. If so, initialize addon again.
                        weizPVP.Options.Addon.EnabledInBattlegrounds = value
                        weizPVP.GetPVPZone()
                    end
                },
                EnableArenas = {
                    name = " Enabled in Arenas",
                    desc = "Enable weizPVP in Arenas.",
                    type = "toggle",
                    order = 4,
                    width = "full",
                    get = function()
                        return weizPVP.Options.Addon.EnabledInArena
                    end,
                    set = function(_, value)
                        --> Double check that we were already disabled. If so, initialize addon again.
                        weizPVP.Options.Addon.EnabledInArena = value
                        weizPVP.GetPVPZone()
                    end
                }
            }
        },
        --> Alerts Group
        -------------------------------------------
        alerts = {
            name = "Alerts",
            type = "group",
            order = 4,
            args = {
                introAlerts = {
                    name = " |cffffa012ALERTS & NOTIFICATIONS|r",
                    type = "header",
                    order = 1,
                    width = "full"
                },
                --> New player detected
                -------------------------------------------
                AlertDetectedSection = {
                    name = "\n |cffffa012On New Player Detection|r",
                    type = "description",
                    fontSize = "large",
                    width = "full",
                    order = 2
                },
                AlertDetectedPlayer = {
                    name = " New Player Detected: Audio Alert",
                    desc = "Play's an alert when a new player is added to the enemy list." ..
                        "Plays the audio until it ends; doesnt not overlap with multiple detections.",
                    type = "toggle",
                    width = "full",
                    order = 3,
                    get = function()
                        return weizPVP.Options.AudioAlerts.DetectedPlayerSound
                    end,
                    set = function(_, value)
                        weizPVP.Options.AudioAlerts.DetectedPlayerSound = value
                    end
                },
                AlertDetectedPlayerSoundFile = {
                    type = "select",
                    name = " New Player Alert Sound",
                    desc = "The audio file that plays on detection of a new player.",
                    values = sounds,
                    width = "full",
                    order = 4,
                    get = function()
                        for i, v in next, sounds do
                            if v == weizPVP.Options.AudioAlerts.DetectedPlayerSoundFile then
                                return i
                            end
                        end
                    end,
                    set = function(_, value)
                        weizPVP.Options.AudioAlerts.DetectedPlayerSoundFile = sounds[value]
                    end,
                    itemControl = "DDI-Sound",
                    disabled = function()
                        return not weizPVP.Options.AudioAlerts.DetectedPlayerSound
                    end
                },
                --> Stealth
                stealthSection = {
                    name = "\n |cffffa012Stealth|r",
                    type = "description",
                    fontSize = "large",
                    width = "full",
                    order = 5
                },
                StealthAlertEnabled = {
                    name = " Enable Stealth Alerts",
                    desc = "Show an alert when a unit is detected going stealth or invis.",
                    type = "toggle",
                    width = "full",
                    order = 6,
                    get = function()
                        return weizPVP.Options.StealthAlert.Enabled
                    end,
                    set = function(_, value)
                        weizPVP.Options.StealthAlert.Enabled = value
                    end
                },
                StealthAlertSoundEnabled = {
                    name = " Enable Stealth Audio Alert",
                    desc = "Plays a sound when players going stealth or invis while Stealth Alerts is enabled.",
                    type = "toggle",
                    width = "full",
                    order = 7,
                    get = function()
                        return weizPVP.Options.StealthAlert.EnableSound
                    end,
                    set = function(_, value)
                        weizPVP.Options.StealthAlert.EnableSound = value
                    end,
                    disabled = function()
                        return not weizPVP.Options.StealthAlert.Enabled
                    end
                },
                StealthAlertSoundFile = {
                    type = "select",
                    name = " Stealth Alert Sound",
                    desc = "The sound to play on stealth detection, if enabled.",
                    values = sounds,
                    width = "full",
                    order = 8,
                    get = function()
                        for i, v in next, sounds do
                            if v == weizPVP.Options.StealthAlert.SoundFile then
                                return i
                            end
                        end
                    end,
                    set = function(_, value)
                        weizPVP.Options.StealthAlert.SoundFile = sounds[value]
                    end,
                    itemControl = "DDI-Sound",
                    disabled = function()
                        if
                            weizPVP.Options.StealthAlert.EnableSound == false or
                                weizPVP.Options.StealthAlert.Enabled == false
                         then
                            return true
                        else
                            return false
                        end
                    end
                },
                --> Phasing
                phasingSection = {
                    name = "\n |cffffa012Phasing|r",
                    type = "description",
                    fontSize = "large",
                    width = "full",
                    order = 9
                },
                PhasingChatAlertEnabled = {
                    name = " Show phasing alert in chat",
                    desc = "Puts a notice in chat when your character is phasing.",
                    type = "toggle",
                    width = "full",
                    order = 10,
                    get = function()
                        return weizPVP.Options.Alerts.PhasingChat
                    end,
                    set = function(_, value)
                        weizPVP.Options.Alerts.PhasingChat = value
                    end
                }
            }
        },
        --> Crosshair Group
        -------------------------------------------
        crosshair = {
            name = "Crosshair",
            type = "group",
            order = 5,
            args = {
                intro = {
                    name = "|cffffa012CROSSHAIR|r",
                    type = "header",
                    order = 1,
                    width = "full"
                },
                --> Crosshair Options
                -------------------------------------------
                Enabled = {
                    name = " Enable Crosshairs",
                    desc = "Toggles the Crosshairs on/off",
                    type = "toggle",
                    width = "full",
                    order = 2,
                    get = function()
                        return weizPVP.Options.Crosshair.Enabled
                    end,
                    set = function(_, value)
                        if value == true then
                            weizPVP.Options.Crosshair.Enabled = true
                            weizPVP:EnableCrosshair()
                        else
                            weizPVP.Options.Crosshair.Enabled = false
                            weizPVP:DisableCrosshair()
                        end
                    end
                },
                RotatingArows = {
                    name = " Rotating Arrows",
                    desc = "Enable rotation of the arrows around the crosshair.",
                    type = "toggle",
                    width = "full",
                    order = 4,
                    get = function()
                        return weizPVP.Options.Crosshair.RotatingArrows
                    end,
                    set = function(_, value)
                        if value == true then
                            weizPVP.Options.Crosshair.RotatingArrows = true
                            weizPVP.Crosshair.FourArrows.ag:Play()
                        else
                            weizPVP.Options.Crosshair.RotatingArrows = false
                            weizPVP.Crosshair.FourArrows.ag:Stop()
                        end
                    end,
                    disabled = function()
                        return not weizPVP.Options.Crosshair.Enabled
                    end
                },
                NewTarget1FX = {
                    name = " New Target FX",
                    desc = "Shows additional visuals when selecting a new target.",
                    type = "toggle",
                    width = "full",
                    order = 4,
                    get = function()
                        return weizPVP.Options.Crosshair.FX.NewTarget1
                    end,
                    set = function(_, value)
                        if value == true then
                            weizPVP.Options.Crosshair.FX.NewTarget1 = true
                        else
                            weizPVP.Options.Crosshair.FX.NewTarget1 = false
                        end
                    end,
                    disabled = function()
                        return not weizPVP.Options.Crosshair.Enabled
                    end
                },
                Alpha = {
                    name = " Alpha Multiplier",
                    desc = "Adjust the Alpha multiplier of the Crosshair and all Crosshair elements",
                    type = "range",
                    min = 0.1,
                    max = 1,
                    width = "full",
                    validate = ValidateNumeric,
                    step = 0.1,
                    order = 5,
                    get = function()
                        if type(weizPVP.Options.Crosshair.Alpha) == "number" then
                            return weizPVP.Options.Crosshair.Alpha
                        else
                            return 1
                        end
                    end,
                    set = function(_, value)
                        if type(weizPVP.Options.Crosshair.Alpha) == "number" then
                            weizPVP.Options.Crosshair.Alpha = value
                            weizPVP:CrosshairsSetAlpha(value)
                        else
                            weizPVP.Options.Crosshair.Alpha = 1
                            weizPVP:CrosshairsSetAlpha(1)
                        end
                    end,
                    disabled = function()
                        return not weizPVP.Options.Crosshair.Enabled
                    end
                },
                LineThickness = {
                    name = " Line Thickness",
                    desc = "Change the thickness of the lines",
                    type = "range",
                    min = 1,
                    max = 12,
                    width = "full",
                    step = 1,
                    order = 6,
                    get = function()
                        return weizPVP.Options.Crosshair.LineThickness
                    end,
                    set = function(_, value)
                        weizPVP.Options.Crosshair.LineThickness = value
                        weizPVP:ChangeLineThickness(value)
                    end,
                    disabled = function()
                        return not weizPVP.Options.Crosshair.Enabled
                    end
                },
                --> BOUNTY
                -------------------------------------------
                BountyHeader = {
                    name = "\n|cffffa012Bounty Options:|r",
                    type = "description",
                    fontSize = "large",
                    width = "full",
                    order = 11
                },
                BountyEnabled = {
                    name = " Enable Bounty Overlay",
                    desc = "Toggles the overlay indicator for players with the Bounty Hunted debuff.",
                    type = "toggle",
                    width = "full",
                    order = 12,
                    get = function()
                        return weizPVP.Options.Crosshair.ShowBountyOverlay
                    end,
                    set = function(_, value)
                        if value == true then
                            weizPVP.Options.Crosshair.ShowBountyOverlay = true
                            weizPVP:EnableCrosshair()
                        else
                            weizPVP.Options.Crosshair.ShowBountyOverlay = false
                            weizPVP:EnableCrosshair()
                        end
                    end,
                    disabled = function()
                        return not weizPVP.Options.Crosshair.Enabled
                    end
                },
                --> GUILD AND TEXT
                -------------------------------------------
                NameAndGuildTextHeader = {
                    name = "\n|cffffa012Name and Guild Text:|r",
                    type = "description",
                    fontSize = "large",
                    width = "full",
                    order = 13
                },
                NameEnabled = {
                    name = " Enable Name Text",
                    desc = "Toggles the the target's name being shown on the Crosshair.",
                    type = "toggle",
                    width = "full",
                    order = 14,
                    get = function()
                        return weizPVP.Options.Crosshair.NameEnabled
                    end,
                    set = function(_, value)
                        if value == true then
                            weizPVP.Options.Crosshair.NameEnabled = true
                        else
                            weizPVP.Options.Crosshair.NameEnabled = false
                        end
                    end,
                    disabled = function()
                        return not weizPVP.Options.Crosshair.Enabled
                    end
                },
                GuildEnabled = {
                    name = " Enable Guild Text",
                    desc = "Toggles the the target's guild being shown on the Crosshair.",
                    type = "toggle",
                    width = "full",
                    order = 15,
                    get = function()
                        return weizPVP.Options.Crosshair.GuildEnabled
                    end,
                    set = function(_, value)
                        if value == true then
                            weizPVP.Options.Crosshair.GuildEnabled = true
                        else
                            weizPVP.Options.Crosshair.GuildEnabled = false
                        end
                    end,
                    disabled = function()
                        return not weizPVP.Options.Crosshair.Enabled
                    end
                },
                --> Crosshair Tips
                -------------------------------------------
                TipsHeader = {
                    name = "\n|cffffa012Nameplate CVars:|r",
                    type = "description",
                    fontSize = "large",
                    width = "full",
                    order = 16
                },
                Tips = {
                    type = "description",
                    name = "Use these options to apply optimal or default nameplate settings. \n" ..
                        "Other addons may change these values. If the crosshairs start acting up, try re-applying. \n",
                    order = 17
                },
                ApplyCVars = {
                    type = "execute",
                    name = "Apply Optimal Nameplate CVar values",
                    width = "full",
                    order = 18,
                    func = function()
                        SetCVar("nameplateMaxDistance", 100)
                        SetCVar("nameplateTargetRadialPosition", 1)
                        SetCVar("nameplateMaxScale", 1)
                        SetCVar("nameplateMinScale", 0.8)
                        SetCVar("nameplateSelectedScale", 1)
                        SetCVar("nameplateOtherTopInset", 0.1)
                        SetCVar("nameplateOtherBottomInset", 0.1)
                        SetCVar("nameplateLargeTopInset", 0.1)
                        SetCVar("nameplateLargeBottomInset", 0.15)
                    end
                },
                ResetCVars = {
                    type = "execute",
                    name = "Set Nameplate CVars to DEFAULT values",
                    width = "full",
                    order = 19,
                    func = function()
                        SetCVar("nameplateMaxDistance", GetCVarDefault("nameplateMaxDistance"))
                        SetCVar("nameplateTargetRadialPosition", GetCVarDefault("nameplateTargetRadialPosition"))
                        SetCVar("nameplateMaxScale", GetCVarDefault("nameplateMaxScale"))
                        SetCVar("nameplateMinScale", GetCVarDefault("nameplateMinScale"))
                        SetCVar("nameplateSelectedScale", GetCVarDefault("nameplateSelectedScale"))
                        SetCVar("nameplateOtherTopInset", GetCVarDefault("nameplateOtherTopInset"))
                        SetCVar("nameplateOtherBottomInset", GetCVarDefault("nameplateOtherBottomInset"))
                        SetCVar("nameplateLargeTopInset", GetCVarDefault("nameplateLargeTopInset"))
                        SetCVar("nameplateLargeBottomInset", GetCVarDefault("nameplateLargeBottomInset"))
                    end
                }
            }
        },
        --> BETA Group
        -------------------------------------------
        beta = {
            name = "|cffffa012BETA|r",
            type = "group",
            order = 6,
            args = {
                introBeta = {
                    name = " |cff42dcf4BETA|r \n",
                    type = "header",
                    order = 1,
                    width = "full"
                },
                descBeta = {
                    name = "The options in this section are |cFFF4564Dexperimental|r." ..
                        "\n|cFFF4564DEnabling these options may give errors " ..
                            "and trigger bugs that effect other parts of the addon.|r",
                    type = "description",
                    order = 2,
                    width = "full"
                },
                introLagMode = {
                    name = "\n |cffffa012LagMode|r",
                    type = "description",
                    fontSize = "large",
                    width = "full",
                    order = 3
                },
                descLagMode = {
                    name = "Disables some data gathering functions resulting in less CPU usage." ..
                        "\n \n |cffffa012*|r This also means that there will be less updates for things like determining roles." ..
                            "\n \n |cffffa012*|r Health and death updates are the main priority. \n",
                    type = "description",
                    order = 4,
                    width = "full"
                },
                --> LagMode
                -------------------------------------------
                LagModeEnable = {
                    name = "LagMode: Enable",
                    desc = "Enable LagMode, which will dynamically adjust this addon's processing & CPU usage based on your curren FPS.",
                    type = "toggle",
                    order = 5,
                    width = "full",
                    get = function()
                        return weizPVP.Options.LagMode.Enabled
                    end,
                    set = function(_, value)
                        weizPVP.Options.LagMode.Enabled = value
                        if value == true then
                            weizPVP.Addon.LagModeActive = false
                        end
                    end
                },
                LagModeFPSThreshold = {
                    name = "LagMode: FPS Threshold",
                    desc = "LagMode will only be activated when below this 'Frames Per Second' threshold.",
                    type = "range",
                    min = 10,
                    max = 60,
                    width = "full",
                    step = 1,
                    order = 6,
                    get = function()
                        return weizPVP.Options.LagMode.FPSThreshold
                    end,
                    set = function(_, value)
                        weizPVP.Options.LagMode.FPSThreshold = value
                    end,
                    disabled = function()
                        return not weizPVP.Options.LagMode.Enabled
                    end
                },
                LagModeHalt = {
                    name = "LagMode: Emergency Halt (@10 FPS)",
                    desc = "When enabled, all data processing will be halted when dropping below 10 frames per second. \n" ..
                        "When back above 10 fps, normal operation will continue.",
                    type = "toggle",
                    order = 7,
                    width = "full",
                    get = function()
                        return weizPVP.Options.LagMode.HaltEnabled
                    end,
                    set = function(_, value)
                        weizPVP.Options.LagMode.HaltEnabled = value
                    end,
                    disabled = function()
                        return not weizPVP.Options.LagMode.Enabled
                    end
                }
            }
        }
    }
}

LibStub("AceConfig-3.0"):RegisterOptionsTable("weizPVP.OptionsTable", weizPVP.OptionsTable)
LibStub("AceConfigDialog-3.0"):AddToBlizOptions("weizPVP.OptionsTable", "weiz|cffffa012PVP|r")
