-------------------------------------------------------------------------------
--|> CONFIG
--: Slash Commands and Interface Options
-------------------------------------------------------------------------------
--> Namespace
local ADDON_NAME, NS = ...
--> Upvalues
local GetCVarDefault = GetCVarDefault
local InterfaceOptionsFrame_OpenToCategory = InterfaceOptionsFrame_OpenToCategory
local wipe = wipe
local next = next
local tonumber = tonumber
--> Libs
local SM = LibStub("LibSharedMedia-3.0")
local sounds = SM:List("sound")

--|> ACE3 SLASH COMMANDS TABLE
-------------------------------------------------------------------------------
NS.SlashCommands = {
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
                NS.ToggleOptions()
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
                NS.SetWindowVisible(true)
                NS.Options.Window.Visible = true
            end,
            dialogHidden = true
        },
        hide = {
            name = "Hide",
            desc = "Hide the weizPVP window.",
            type = "execute",
            order = 4,
            func = function()
                NS.SetWindowVisible(false)
                NS.Options.Window.Visible = false
            end,
            dialogHidden = true
        },
        lock = {
            name = "Lock",
            desc = "Toggle locking of the window's position and size.",
            type = "execute",
            order = 5,
            func = function()
                NS.SetWindowLocked(not NS.Options.Window.Locked)
            end,
            dialogHidden = true
        },
        pin = {
            name = "Pin",
            desc = "Toggle pinning of the window.",
            type = "execute",
            order = 6,
            func = function()
                if NS.Options.Window.Locked then
                    NS.PrintAddonMessage("Window is currently |cffff3838LOCKED|r. Window can only be pinned after being unlocked.")
                else
                    NS.SetWindowPin(not NS.Options.Window.Pinned)
                end
            end,
            dialogHidden = true
        },
        ch = {
            name = "Crosshair",
            desc = "Toggles the Crosshair on or off",
            type = "execute",
            order = 7,
            func = function()
                if NS.Options.Crosshair.Enabled == false then
                    NS.Options.Crosshair.Enabled = true
                    NS.Crosshair.Enable()
                    NS.PrintAddonMessage("Crosshair is |cff37ff37ENABLED|r.")
                else
                    NS.Options.Crosshair.Enabled = false
                    NS.Crosshair.Disable()
                    NS.PrintAddonMessage("Crosshair is |cffff3838DISABLED|r.")
                end
            end,
            dialogHidden = true
        },
        pb = {
            name = "Player Browser",
            desc = "Toggle the Player Browser",
            type = "execute",
            order = 8,
            func = function()
                if NS.PlayerBrowser:IsShown() then
                    NS.PlayerBrowser:Hide()
                else
                    NS.PlayerBrowser:Show()
                end
            end,
            dialogHidden = true
        },
        debug = {
            name = "DEBUG",
            desc = "Toggles DEBUG mode where ALL players of any factions are accepted as valid.",
            type = "execute",
            order = 60,
            func = function()
                if NS.Options.DEBUG == true then
                    NS.Options.DEBUG = false
                    weizPVP.NS = nil
                    NS.ClearListData()
                    NS.PrintAddonMessage("|TInterface\\Addons\\weizPVP\\Media\\Icons\\toolbox.tga:0|t - |cff37ff37DISABLED|r")
                    NS.SetStatusBarMessage("|cff37ff37> DEBUG MODE DISABLED <|r", true, 3)
                else
                    NS.Options.DEBUG = true
                    weizPVP.NS = NS
                    NS.PrintAddonMessage("|TInterface\\Addons\\weizPVP\\Media\\Icons\\toolbox.tga:0|t - |cffff3838ENABLED|r")
                    NS.SetStatusBarMessage("|cffff3838>|r DEBUG MODE: |cffff3838ACTIVE <|r", true, 3)
                end
            end,
            cmdHidden = true
        },
        --> RESETALL: Wipes EVERYTHING
        resetall = {
            cmdHidden = true,
            name = "Reset All",
            desc = "Resets all settings and wipes player data",
            type = "execute",
            order = 61,
            func = function()
                NS.ResetAll()
            end
        },
        --> RESET OPTIONS
        resetoptions = {
            cmdHidden = true,
            name = "Reset Options",
            desc = "Resets all Options but doesn't change player data at all",
            type = "execute",
            order = 63,
            func = function()
                NS.ResetOptions()
            end
        },
        --> RESET PLAYER DB
        resetPlayers = {
            cmdHidden = true,
            name = "Reset Player DB",
            desc = "Wipes the player database. Options remain untouched.",
            type = "execute",
            order = 64,
            func = function()
                NS.ResetPlayerDB()
            end
        }
    }
}

LibStub("AceConfig-3.0"):RegisterOptionsTable(ADDON_NAME .. " Commands", NS.SlashCommands, {"wpvp", "weizpvp"}) -- Register Slash Commands

--|> INTERFACE OPTIONS: ACE3 OPTIONS TABLE
-------------------------------------------------------------------------------
local interfaceTipsText =
    [[
  |cff00ff75Toggle Options|r -  |cff42dcf4Right-Click|r  the minimap icon
  |cff00ff75Show/Hide Window|r -  |cff42dcf4Left-Click|r the minimap icon
  |cff00ff75Pin/Unpin the Window|r -  |cff42dcf4Right-Click|r title/header bar of the main window
  |cff00ff75Lock/Unlock the Window|r -  |cff42dcf4Ctrl+Right-Click|r title/header bar of the main window
  ]]
local commandsText =
    [[
  |cffbbbbbb(Commands can be executed with either|r |cff42dcf4/wpvp|r|cffbbbbbb or|r |cff42dcf4/weizpvp|r|cffbbbbbb)|r

  |cff00ff75Show Window|r:  |cff42dcf4/wpvp show|r
  |cff00ff75Hide Window|r:  |cff42dcf4/wpvp hide|r
  |cff00ff75Toggle Lock Window|r:  |cff42dcf4/wpvp lock|r
  |cff00ff75Toggle Pin Window|r:  |cff42dcf4/wpvp pin|r

  |cffff0000RESET COMMANDS|r |cffbbbbbb(in case you're having issues)|r
    |cffff0000Reset all options and player data|r:  |cff42dcf4/wpvp resetall|r
    |cffff0000Reset all saved player data|r:  |cff42dcf4/wpvp resetall|r
    |cffff0000Reset options|r:  |cff42dcf4/wpvp resetoptions|r
  ]]
local kosHelpText =
    [[
  |cff00ff75To add or remove a player from the main window|r:
      |cff42dcf4Right-Click|r the player's bar

  |cff00ff75To add or remove a player from a unit frame (such as target or focus)|r:
      |cff42dcf4Right-Click|r the unit frame |cffbbbbbb(such as target, focus, etc)|r

  ]]
local crosshairTips = "Nameplates must be enabled for Crosshair to work!"

--> Validate option input
local ValidateNumeric = function(_, val)
    if val ~= nil and val ~= "" and not tonumber(val) then
        return false
    end
    return true
end

NS.OptionsTable = {
    name = NS.addonString .. " |cffbbbbbb -|r|cffcafdff " .. _G.weizPVP.Addon_Version .. "|r",
    type = "group",
    args = {
        --> General
        general = {
            name = "|TInterface\\Addons\\weizPVP\\Media\\Icons\\general.tga:0|t |cffffffffGeneral|r",
            type = "group",
            order = 1,
            args = {
                introGeneral = {
                    name = "|TInterface\\Addons\\weizPVP\\Media\\Icons\\general.tga:0|t |cffffffffGeneral|r",
                    type = "header",
                    order = 1,
                    width = "full"
                },
                --> Options
                minimapIcon = {
                    name = "Minimap Icon",
                    desc = "Show or hide the weizPVP Minimap Icon.",
                    type = "toggle",
                    width = "full",
                    order = 2,
                    get = function()
                        return NS.Options.LDB.minimap
                    end,
                    set = function(_, value)
                        if value == true then
                            LibStub("LibDBIcon-1.0"):Show(ADDON_NAME)
                        else
                            LibStub("LibDBIcon-1.0"):Hide(ADDON_NAME)
                        end
                        NS.Options.LDB.minimap = value
                    end
                },
                EnableBGs = {
                    name = " Enable in Battlegrounds",
                    desc = "Enable weizPVP in Battlegrounds.",
                    type = "toggle",
                    order = 3,
                    width = "full",
                    get = function()
                        return NS.Options.Addon.EnabledInBattlegrounds
                    end,
                    set = function(_, value)
                        --> Double check that we were already disabled. If so, initialize addon again.
                        NS.Options.Addon.EnabledInBattlegrounds = value
                        NS.GetPVPZone()
                    end
                },
                EnableArenas = {
                    name = " Enable in Arenas",
                    desc = "Enable weizPVP in Arenas.",
                    type = "toggle",
                    order = 4,
                    width = "full",
                    get = function()
                        return NS.Options.Addon.EnabledInArena
                    end,
                    set = function(_, value)
                        --> Double check that we were already disabled. If so, initialize addon again.
                        NS.Options.Addon.EnabledInArena = value
                        NS.GetPVPZone()
                    end
                }
            }
        },
        --> Alerts - #00f7ff
        alerts = {
            name = "|TInterface\\Addons\\weizPVP\\Media\\Icons\\alert.tga:0|t |cffffffffAlerts|r",
            type = "group",
            order = 4,
            args = {
                introAlerts = {
                    name = "|TInterface\\Addons\\weizPVP\\Media\\Icons\\alert.tga:0|t |cffffffffAlerts|r",
                    type = "header",
                    order = 1,
                    width = "full"
                },
                --> New player detected

                AlertDetectedSection = {
                    name = "\n |cffffa012New Player Detected|r",
                    type = "description",
                    fontSize = "large",
                    width = "full",
                    order = 2
                },
                AlertDetectedPlayer = {
                    name = " New Player Detected",
                    desc = "Play's a sound when a new player is detected.",
                    type = "toggle",
                    width = "full",
                    order = 3,
                    get = function()
                        return NS.Options.AudioAlerts.DetectedPlayerSound
                    end,
                    set = function(_, value)
                        NS.Options.AudioAlerts.DetectedPlayerSound = value
                    end
                },
                AlertDetectedBGDisabled = {
                    name = " Disable in Battlegrounds",
                    desc = "Disables the new player sound alert while in battlegrounds",
                    type = "toggle",
                    width = "full",
                    order = 4,
                    get = function()
                        return NS.Options.AudioAlerts.DetectedPlayerSoundBGDisabled
                    end,
                    set = function(_, value)
                        NS.Options.AudioAlerts.DetectedPlayerSoundBGDisabled = value
                    end,
                    disabled = function()
                        return not NS.Options.AudioAlerts.DetectedPlayerSound
                    end
                },
                AlertDetectedPlayerSoundFile = {
                    type = "select",
                    name = " New Player Detected Sound",
                    desc = "The sound to play on detection of a new player.",
                    values = sounds,
                    width = "full",
                    order = 5,
                    get = function()
                        for i, v in next, sounds do
                            if v == NS.Options.AudioAlerts.DetectedPlayerSoundFile then
                                return i
                            end
                        end
                    end,
                    set = function(_, value)
                        NS.Options.AudioAlerts.DetectedPlayerSoundFile = sounds[value]
                    end,
                    itemControl = "DDI-Sound",
                    disabled = function()
                        return not NS.Options.AudioAlerts.DetectedPlayerSound
                    end
                },
                --> Stealth
                stealthSection = {
                    name = "\n |cffffa012Stealth|r",
                    type = "description",
                    fontSize = "large",
                    width = "full",
                    order = 10
                },
                StealthAlertEnabled = {
                    name = " Enable Stealth Alerts",
                    desc = "Show an alert when a unit is detected going stealth/invisible.",
                    type = "toggle",
                    width = "full",
                    order = 11,
                    get = function()
                        return NS.Options.StealthAlert.Enabled
                    end,
                    set = function(_, value)
                        NS.Options.StealthAlert.Enabled = value
                    end
                },
                StealthAlertSoundEnabled = {
                    name = " Enable Stealth Audio Alert",
                    desc = "Plays a sound when enemy players go stealth/invisible.",
                    type = "toggle",
                    width = "full",
                    order = 12,
                    get = function()
                        return NS.Options.StealthAlert.EnableSound
                    end,
                    set = function(_, value)
                        NS.Options.StealthAlert.EnableSound = value
                    end,
                    disabled = function()
                        return not NS.Options.StealthAlert.Enabled
                    end
                },
                StealthAlertSoundFile = {
                    type = "select",
                    name = " Stealth Alert Sound",
                    desc = "The sound to play on stealth detection, if enabled.",
                    values = sounds,
                    width = "full",
                    order = 13,
                    get = function()
                        for i, v in next, sounds do
                            if v == NS.Options.StealthAlert.SoundFile then
                                return i
                            end
                        end
                    end,
                    set = function(_, value)
                        NS.Options.StealthAlert.SoundFile = sounds[value]
                    end,
                    itemControl = "DDI-Sound",
                    disabled = function()
                        if NS.Options.StealthAlert.EnableSound == false or NS.Options.StealthAlert.Enabled == false then
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
                    order = 20
                },
                PhasingChatAlertEnabled = {
                    name = " Show phasing alert in chat",
                    desc = "Puts a notice in chat when your character is phasing.",
                    type = "toggle",
                    width = "full",
                    order = 21,
                    get = function()
                        return NS.Options.Alerts.PhasingChat
                    end,
                    set = function(_, value)
                        NS.Options.Alerts.PhasingChat = value
                    end
                }
            }
        },
        --> KOS - #ff2050 / #ffd2db
        kos = {
            name = "|TInterface\\Addons\\weizPVP\\Media\\Icons\\kos.tga:0|t |cffffffffKill On Sight (KOS)|r",
            type = "group",
            order = 5,
            args = {
                introKOS = {
                    name = "|TInterface\\Addons\\weizPVP\\Media\\Icons\\kos.tga::0|t |cffffffffKill On Sight (KOS)|r",
                    type = "header",
                    order = 1,
                    width = "full"
                },
                --> New player detected
                AudioAlert = {
                    name = " Play sound on detection",
                    desc = "Play's a sound when a player on the KOS list has been found.",
                    type = "toggle",
                    width = "full",
                    order = 2,
                    get = function()
                        return NS.Options.KOS.AudioAlert
                    end,
                    set = function(_, value)
                        NS.Options.KOS.AudioAlert = value
                    end
                },
                AudioAlertFile = {
                    type = "select",
                    name = " Detection Sound",
                    desc = "The sound that plays when a player on the KOS list is detected.",
                    values = sounds,
                    width = "full",
                    order = 3,
                    get = function()
                        for i, v in next, sounds do
                            if v == NS.Options.KOS.AudioAlertFile then
                                return i
                            end
                        end
                    end,
                    set = function(_, value)
                        NS.Options.KOS.AudioAlertFile = sounds[value]
                    end,
                    itemControl = "DDI-Sound",
                    disabled = function()
                        return not NS.Options.KOS.AudioAlert
                    end
                },
                ChatOutput = {
                    type = "toggle",
                    name = " Chat alert",
                    desc = "Outputs a message to your chat frame when a player from the KOS list is first found (only you will see this)",
                    width = "full",
                    order = 5,
                    get = function()
                        return NS.Options.KOS.ChatAlert
                    end,
                    set = function(_, value)
                        NS.Options.KOS.ChatAlert = value
                    end
                },
                TaskbarAlert = {
                    type = "toggle",
                    name = " Flash the taskbar icon on KOS detect",
                    desc = "Flashes the WoW application icon on your taskbar/dock when a KOS target is detected. Useful for when WoW is minimized, using multiple monitors, etc.",
                    width = "full",
                    order = 6,
                    get = function()
                        return NS.Options.KOS.TaskbarAlert
                    end,
                    set = function(_, value)
                        NS.Options.KOS.TaskbarAlert = value
                    end
                },
                helpHeader = {
                    name = " \n |TInterface\\Addons\\weizPVP\\Media\\Icons\\help.tga:0|t |cfffdffd7 Adding and Removing players:|r",
                    type = "description",
                    fontSize = "large",
                    width = "full",
                    order = 7
                },
                help = {
                    type = "description",
                    name = kosHelpText,
                    width = "full",
                    order = 8
                }
            }
        },
        --> Crosshair - #ff9d11 / #ffeed5
        crosshair = {
            name = "|TInterface\\Addons\\weizPVP\\Media\\Icons\\crosshair.tga:0|t |cffffffffCrosshair|r",
            type = "group",
            order = 6,
            args = {
                intro = {
                    name = "|TInterface\\Addons\\weizPVP\\Media\\Icons\\crosshair.tga:0|t |cffffffffCrosshair|r",
                    type = "header",
                    order = 1,
                    width = "full"
                },
                --> Options
                Enabled = {
                    name = " Enable Crosshair",
                    desc = "Toggles the Crosshair on/off",
                    type = "toggle",
                    width = "full",
                    order = 2,
                    get = function()
                        return NS.Options.Crosshair.Enabled
                    end,
                    set = function(_, value)
                        if value == true then
                            NS.Options.Crosshair.Enabled = true
                            NS.Crosshair.Enable()
                        else
                            NS.Options.Crosshair.Enabled = false
                            NS.Crosshair.Disable()
                        end
                    end
                },
                ShowRange = {
                    name = " Show Range Text",
                    desc = "Show the estimated range of the target while the crosshair is active. Text fades away under 30 yards.",
                    type = "toggle",
                    width = "full",
                    order = 10,
                    get = function()
                        return NS.Options.Crosshair.ShowRange
                    end,
                    set = function(_, value)
                        if value == true then
                            NS.Options.Crosshair.ShowRange = true
                            _G.weizPVP_CrosshairFrame.RangeText:Show()
                            NS.Crosshair.Enable()
                        else
                            NS.Options.Crosshair.ShowRange = false
                            _G.weizPVP_CrosshairFrame.RangeText:Hide()
                            NS.Crosshair.Enable()
                        end
                    end,
                    disabled = function()
                        return not NS.Options.Crosshair.Enabled
                    end
                },
                --> GUILD AND NAME TEXT
                NameEnabled = {
                    name = " Enable Name Text",
                    desc = "Toggles the the target's name being shown on the Crosshair.",
                    type = "toggle",
                    width = "full",
                    order = 11,
                    get = function()
                        return NS.Options.Crosshair.NameEnabled
                    end,
                    set = function(_, value)
                        NS.Options.Crosshair.NameEnabled = value
                        NS.Crosshair.Reset()
                        NS.Crosshair.NewTarget()
                    end,
                    disabled = function()
                        return not NS.Options.Crosshair.Enabled
                    end
                },
                GuildEnabled = {
                    name = " Enable Guild Text",
                    desc = "Toggles the the target's guild being shown on the Crosshair.",
                    type = "toggle",
                    width = "full",
                    order = 12,
                    get = function()
                        return NS.Options.Crosshair.GuildEnabled
                    end,
                    set = function(_, value)
                        NS.Options.Crosshair.GuildEnabled = value
                        NS.Crosshair.Reset()
                        NS.Crosshair.NewTarget()
                    end,
                    disabled = function()
                        return not NS.Options.Crosshair.Enabled
                    end
                },
                Alpha = {
                    name = " Alpha Multiplier",
                    desc = "Adjust Crosshair Alpha. 0 = transparent, 1.0 = max opacity/visibility",
                    type = "range",
                    min = 0,
                    max = 1,
                    width = "full",
                    validate = ValidateNumeric,
                    step = 0.05,
                    order = 20,
                    get = function()
                        if type(NS.Options.Crosshair.Alpha) == "number" then
                            return NS.Options.Crosshair.Alpha
                        else
                            return 1
                        end
                    end,
                    set = function(_, value)
                        if type(NS.Options.Crosshair.Alpha) == "number" then
                            NS.Options.Crosshair.Alpha = value
                            NS.Crosshair.SetAlpha()
                        else
                            NS.Options.Crosshair.Alpha = 1
                            NS.Crosshair.SetAlpha()
                        end
                    end,
                    disabled = function()
                        return not NS.Options.Crosshair.Enabled
                    end
                },
                Scale = {
                    name = " Scale",
                    desc = "Adjust the Scale of the Crosshair",
                    type = "range",
                    min = 0.1,
                    max = 4,
                    width = "full",
                    validate = ValidateNumeric,
                    step = 0.1,
                    order = 21,
                    get = function()
                        if type(NS.Options.Crosshair.Scale) == "number" then
                            return NS.Options.Crosshair.Scale
                        else
                            return 1
                        end
                    end,
                    set = function(_, value)
                        if type(NS.Options.Crosshair.Scale) == "number" then
                            NS.Options.Crosshair.Scale = value
                            NS.Crosshair.SetScale(value)
                        else
                            NS.Options.Crosshair.Scale = 1
                            NS.Crosshair.SetScale(1)
                        end
                    end,
                    disabled = function()
                        return not NS.Options.Crosshair.Enabled
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
                    order = 22,
                    get = function()
                        return NS.Options.Crosshair.LineThickness
                    end,
                    set = function(_, value)
                        NS.Options.Crosshair.LineThickness = value
                        NS.Crosshair.SetLineThickness(value)
                    end,
                    disabled = function()
                        return not NS.Options.Crosshair.Enabled
                    end
                },
                --> spacer
                spacer_1 = {
                    name = "\n\n",
                    type = "description",
                    width = "full",
                    order = 24
                },
                --> CVars header
                CVarHeader = {
                    name = " |cffffffffNameplate CVars|r ",
                    type = "header",
                    width = "full",
                    order = 25
                },
                nameplateTargetRadialPosition = {
                    type = "toggle",
                    name = "|cff42dcf4nameplateTargetRadialPosition|r (|cff37ff37Enabled is recommended|r)",
                    desc = "When target is off screen, position its nameplate radially around sides and bottom",
                    width = "full",
                    order = 27,
                    get = function()
                        return GetCVar("nameplateTargetRadialPosition") == "1" and true or false
                    end,
                    set = function(_, value)
                        if value then
                            SetCVar("nameplateTargetRadialPosition", "1")
                        else
                            SetCVar("nameplateTargetRadialPosition", "0")
                        end
                    end
                },
                nameplateTargetBehindMaxDistance = {
                    type = "range",
                    name = "|cff42dcf4nameplateTargetBehindMaxDistance|r |cffffffff(|r|cff37ff3760 is recommended|r|cffffffff)|r",
                    desc = "The max distance to show the target nameplate when the target is behind the camera.",
                    width = "full",
                    min = 15,
                    max = 60,
                    validate = ValidateNumeric,
                    step = 1,
                    order = 28,
                    get = function()
                        return tonumber(GetCVar("nameplateTargetBehindMaxDistance"))
                    end,
                    set = function(_, value)
                        SetCVar("nameplateTargetBehindMaxDistance", tostring(value))
                    end
                },
                ResetCVars = {
                    type = "execute",
                    name = "Reset the above CVars to default values",
                    desc = "The CVars nameplateTargetRadialPosition, nameplateTargetBehindMaxDistance, and nameplateMaxDistance will be reset to default",
                    width = "full",
                    order = 30,
                    func = function()
                        SetCVar("nameplateTargetRadialPosition", GetCVarDefault("nameplateTargetRadialPosition"))
                        SetCVar("nameplateTargetBehindMaxDistance", GetCVarDefault("nameplateTargetBehindMaxDistance"))
                        NS.PrintAddonMessage("|cff27e817CVars reset|r :")
                    end
                },
                --> tips
                tips = {
                    name = " \n |TInterface\\Addons\\weizPVP\\Media\\Icons\\help.tga:0|t  " .. crosshairTips,
                    type = "description",
                    width = "full",
                    order = 40
                }
            }
        },
        --> Help - #f0ff00 / #fdffd7
        help = {
            name = "|TInterface\\Addons\\weizPVP\\Media\\Icons\\help.tga:0|t |cffffffffHelp|r",
            type = "group",
            order = 7,
            args = {
                intro = {
                    name = "|TInterface\\Addons\\weizPVP\\Media\\Icons\\help.tga:0|t |cffffffffHelp|r",
                    type = "header",
                    order = 1,
                    width = "full"
                },
                --> commands
                commandsHeader = {
                    name = "|cffffa012Commands|r",
                    type = "description",
                    fontSize = "large",
                    width = "full",
                    order = 2
                },
                commands = {
                    type = "description",
                    fontSize = "medium",
                    name = commandsText,
                    width = "full",
                    order = 3
                },
                --> interface
                interfaceHeader = {
                    name = "\n|cffffa012Interface|r",
                    type = "description",
                    fontSize = "large",
                    width = "full",
                    order = 4
                },
                interfaceTips = {
                    type = "description",
                    fontSize = "medium",
                    name = interfaceTipsText,
                    width = "full",
                    order = 5
                },
                --> kos
                kosHeader = {
                    name = "\n|cffffa012Kill On Sight|r",
                    type = "description",
                    fontSize = "large",
                    width = "full",
                    order = 6
                },
                kosHelp = {
                    type = "description",
                    fontSize = "medium",
                    name = kosHelpText,
                    width = "full",
                    order = 7
                }
            }
        }
    }
}

LibStub("AceConfig-3.0"):RegisterOptionsTable(ADDON_NAME, NS.OptionsTable)
LibStub("AceConfigDialog-3.0"):AddToBlizOptions(ADDON_NAME, ADDON_NAME)

--|> CONFIG FUNCTIONS
-------------------------------------------------------------------------------
--> RESET ALL
local Reload_UI = C_UI.Reload
function NS.ResetAll()
    StaticPopup_Show("WEIZPVP_CONFIRM_RESET_ALL")
end
--> RESET OPTIONS
function NS.ResetOptions()
    StaticPopup_Show("WEIZPVP_CONFIRM_RESET_OPTIONS")
end
--> RESET PLAYER DB
function NS.ResetPlayerDB()
    StaticPopup_Show("WEIZPVP_CONFIRM_RESET_PLAYER_DB")
end

--> TOGGLE OPTIONS
function NS.ToggleOptions()
    if InterfaceOptionsFrame:IsShown() then
        InterfaceOptionsFrame:Hide()
    else
        InterfaceOptionsFrame_OpenToCategory(ADDON_NAME) -- open options to ADDON_NAME
        local _, max = InterfaceOptionsFrameAddOnsListScrollBar:GetMinMaxValues() -- Get scrollbar min/max
        InterfaceOptionsFrameAddOnsListScrollBar:SetValue(max) -- Set scrollbar to max (top)
        InterfaceOptionsFrame_OpenToCategory(ADDON_NAME) -- open options again (wow bug workaround)
    end
end

--> VERSION UPGRADE CHECK
function NS.VersionUpgradeCheck()
    local upgrade = false
    -- version checks
    if not _G._weizpvp_global_info then -- check for migration (pre-1.9.1)
        if _G._weizpvp_addon then -- check for upgrade (pre-1.9.0)
            wipe(_G._weizpvp_addon)
        else
            upgrade = true
        end
    end
    -- Update addon info
    _G._weizpvp_global_info = {
        Database_Version = weizPVP.Database_Version,
        Addon_Version = weizPVP.Addon_Version
    }
    -- Upgrade / Wipe ?
    if upgrade == true then
        NS.globalDB.global = {}
        NS.databaseReset = true
    end
end

--|> STATIC POPUPS
-------------------------------------------------------------------------------
--> Reset All Popup
StaticPopupDialogs["WEIZPVP_CONFIRM_RESET_ALL"] = {
    text = "Are you sure you want to reset all weizPVP settings and wipe its player data?\n|cffff0000This will reload your UI.|r",
    button1 = YES,
    button2 = NO,
    OnAccept = function()
        wipe(NS.charDB)
        wipe(NS.globalDB)
        wipe(NS.Options)
        wipe(NS.PlayerDB)
        wipe(NS.KosList)
        wipe(_weizpvp_chardb)
        wipe(_weizpvp_global_info)
        wipe(_weizpvp_globaldb)
        Reload_UI()
    end,
    timeout = 0,
    whileDead = 1,
    hideOnEscape = 1,
    showAlert = 1,
    OnShow = function(self)
        self:SetFrameStrata("FULLSCREEN_DIALOG")
        self:SetFrameLevel(99)
    end
}
--> Reset Options
StaticPopupDialogs["WEIZPVP_CONFIRM_RESET_OPTIONS"] = {
    text = "Are you sure you want to reset the weizPVP options & settings?\n|cffff0000This will reload your UI.|r",
    button1 = YES,
    button2 = NO,
    OnAccept = function()
        if NS.charDB.profile and NS.charDB.profile.Options then
            wipe(NS.charDB.profile.Options)
        end
        wipe(NS.Options)
        Reload_UI()
    end,
    timeout = 0,
    whileDead = 1,
    hideOnEscape = 1,
    showAlert = 1,
    OnShow = function(self)
        self:SetFrameStrata("FULLSCREEN_DIALOG")
        self:SetFrameLevel(99)
    end
}
--> Reset Player Database
StaticPopupDialogs["WEIZPVP_CONFIRM_RESET_PLAYER_DB"] = {
    text = "Are you sure you want to wipe the player database?",
    button1 = YES,
    button2 = NO,
    OnAccept = function()
        wipe(NS.globalDB)
        wipe(NS.PlayerDB)
        wipe(NS.PlayerActiveCache)
        wipe(_weizpvp_globaldb)
        NS.globalDB = LibStub("AceDB-3.0"):New("_weizpvp_globaldb", {}, false)
        NS.PlayerDB = NS.globalDB.global
        NS.ClearListData()
    end,
    timeout = 0,
    whileDead = 1,
    hideOnEscape = 1,
    showAlert = 1,
    OnShow = function(self)
        self:SetFrameStrata("FULLSCREEN_DIALOG")
        self:SetFrameLevel(99)
    end
}
--> Version Update - Options and DB reset
StaticPopupDialogs["WEIZPVP_UPGRADE_DB_RESET"] = {
    text = "|cffFFA200weizPVP options and data have been reset due to some major updates!|r\n|cffaaaaaa(Details in chat)|r",
    button1 = OKAY,
    button2 = nil,
    OnAccept = function()
    end,
    timeout = 0,
    whileDead = 1,
    hideOnEscape = 1,
    showAlert = 1,
    OnShow = function(self)
        self:SetFrameStrata("FULLSCREEN_DIALOG")
        self:SetFrameLevel(99)
    end
}
