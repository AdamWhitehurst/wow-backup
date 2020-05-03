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
                InterfaceOptionsFrame_OpenToCategory(ADDON_NAME)
                local _, Smax = InterfaceOptionsFrameAddOnsListScrollBar:GetMinMaxValues()
                InterfaceOptionsFrameAddOnsListScrollBar:SetValue(Smax)
                InterfaceOptionsFrame_OpenToCategory(ADDON_NAME) -- run again (wow bug workaround)
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
            name = "Crosshairs",
            desc = "Toggles the Crosshairs on or off",
            type = "execute",
            order = 7,
            func = function()
                if NS.Options.Crosshair.Enabled == false then
                    NS.Options.Crosshair.Enabled = true
                    NS.Crosshair.Enable()
                    NS.PrintAddonMessage("Crosshairs are |cff37ff37ENABLED|r.")
                else
                    NS.Options.Crosshair.Enabled = false
                    NS.Crosshair.Disable()
                    NS.PrintAddonMessage("Crosshairs are |cffff3838DISABLED|r.")
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
        --!! HIDDEN OPTIONS !!-----------------------------------------------------------------------------------------
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
        resetplayers = {
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
local tipsText =
    [[
  |cff00ff75Toggle Options|r: |cff42dcf4Right-Click|r  the minimap icon
  |cff00ff75Show/Hide Window|r: |cff42dcf4Left-Click|r the minimap icon
  |cff00ff75Pin/Unpin the Window|r: |cff42dcf4Right-Click|r title/header bar of the main window
  |cff00ff75Lock/Uplock the Window|r: |cff42dcf4Ctrl+Right-Click|r title/header bar of the main window
  ]]
local commandsText =
    [[
  |cffbbbbbb(Commands can be executed with either|r |cff42dcf4/wpvp|r |cffbbbbbbor|r |cff42dcf4/weizpvp|r|cffbbbbbb)|r

  |cff00ff75Show Window|r:  |cff42dcf4/wpvp show|r
  |cff00ff75Hide Window|r:  |cff42dcf4/wpvp hide|r
  |cff00ff75Toggle Lock Window|r:  |cff42dcf4/wpvp lock|r
  |cff00ff75Toggle Pin Window|r:  |cff42dcf4/wpvp pin|r

  |cffff0000RESET ALL WEIZPVP SETTINGS AND OPTIONS|r:  |cff42dcf4/wpvp resetall|r
  |cffbbbbbb(Only use if you're noticing a lot of issue - it may fix some things)|r
  ]]
local kosHelpText =
    [[
  **  |cffbbbbbbFeatures are limited for now; more in development|r  **

  |cff42dcf4Add or Remove player from KOS List : |r
  |cffffffffRight click the player's unit frame (traget, focus, etc)
  The same method can be done from the weizPVP's player list.|r
  ]]
local kosHelpTextAbout =
    [[
  |cff42dcf4How to Add or Remove player from the KOS List : |r
  |cffffffff - Right click the player's unit frame (traget, focus, etc)
  - Right click the player from the weizPVP lost of detected players|r
  ]]
local knowIssuesText =
    [[
    - Occasional errors related to dropdown menus can occur and will be resolved.
    - Role icons and estimation need updates and at time can flicker between 2 roles
    - If the Crosshair is not working, make sure enemy player nameplates are enabled.
  ]]

--> Validate option input
local ValidateNumeric = function(_, val)
    if val ~= nil and val ~= "" and not tonumber(val) then
        return false
    end
    return true
end

NS.OptionsTable = {
    name = ADDON_NAME .. " |cffffffff-|r  v" .. _G.weizPVP.Addon_Version,
    type = "group",
    args = {
        --> General
        general = {
            name = "|cffFFA200General|r",
            type = "group",
            order = 1,
            args = {
                introGeneral = {
                    name = " |cffFFA200General|r",
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
            name = "|cff00f7ffAlerts|r",
            type = "group",
            order = 4,
            args = {
                introAlerts = {
                    name = " |cff00f7ffAlerts & Notifications|r",
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
                    name = " New Player Detected - Audio Alert",
                    desc = "Play's an alert when a new player is added to the enemy list." ..
                        "Plays the audio until it ends; doesnt not overlap with multiple detections.",
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
                AlertDetectedBGDisbled = {
                    name = "   Disable in Battlegrounds",
                    desc = "Disables the new player audio alert while in battlegrounds",
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
                    desc = "The audio file that plays on detection of a new player.",
                    values = sounds,
                    width = "full",
                    order = 10,
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
                    order = 5
                },
                StealthAlertEnabled = {
                    name = " Enable Stealth Alerts",
                    desc = "Show an alert when a unit is detected going stealth or invis.",
                    type = "toggle",
                    width = "full",
                    order = 6,
                    get = function()
                        return NS.Options.StealthAlert.Enabled
                    end,
                    set = function(_, value)
                        NS.Options.StealthAlert.Enabled = value
                    end
                },
                StealthAlertSoundEnabled = {
                    name = " Enable Stealth Audio Alert",
                    desc = "Plays a sound when players going stealth or invis while Stealth Alerts is enabled.",
                    type = "toggle",
                    width = "full",
                    order = 7,
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
                    order = 8,
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
                    order = 9
                },
                PhasingChatAlertEnabled = {
                    name = " Show phasing alert in chat",
                    desc = "Puts a notice in chat when your character is phasing.",
                    type = "toggle",
                    width = "full",
                    order = 10,
                    get = function()
                        return NS.Options.Alerts.PhasingChat
                    end,
                    set = function(_, value)
                        NS.Options.Alerts.PhasingChat = value
                    end
                }
            }
        },
        --> KOS - #ff2050
        kos = {
            name = "|cffff2050Kill On Sight (KOS)|r",
            type = "group",
            order = 5,
            args = {
                introKOS = {
                    name = " |cffff2050Kill On Sight (KOS)|r",
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
                    name = " \n |cffffa012Help|r",
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
        --> Crosshair - #ff7c29
        crosshair = {
            name = "|cffff7c29Crosshair|r",
            type = "group",
            order = 6,
            args = {
                intro = {
                    name = "|cffff7c29Crosshair|r",
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
                    desc = "Adjust Crosshair Alpha. 0 = transparent, 1.0 = max opacity/visability",
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
                --> CVars
                CVarHeader = {
                    name = "\n|cffffa012Nameplate CVars:|r",
                    type = "description",
                    fontSize = "large",
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
                    order = 40,
                    func = function()
                        SetCVar("nameplateTargetRadialPosition", GetCVarDefault("nameplateTargetRadialPosition"))
                        SetCVar("nameplateTargetBehindMaxDistance", GetCVarDefault("nameplateTargetBehindMaxDistance"))
                        NS.PrintAddonMessage("|cff27e817CVars reset|r :")
                    end
                }
            }
        },
        --> Help - #ffffff
        about = {
            name = "|cffffffffHelp|r",
            type = "group",
            order = 7,
            args = {
                intro = {
                    name = "|cffffffffHelp|r",
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
                --> tips
                tipsHeader = {
                    name = "|cffffa012Tips|r",
                    type = "description",
                    fontSize = "large",
                    width = "full",
                    order = 4
                },
                tips = {
                    type = "description",
                    fontSize = "medium",
                    name = tipsText,
                    width = "full",
                    order = 5
                },
                --> kos
                kosheader = {
                    name = "|cffffa012KOS|r",
                    type = "description",
                    fontSize = "large",
                    width = "full",
                    order = 6
                },
                koshelp = {
                    type = "description",
                    fontSize = "medium",
                    name = kosHelpTextAbout,
                    width = "full",
                    order = 7
                },
                --> knownIssues
                issuesHeader = {
                    name = "\n|cffffa012Known Issues|r",
                    type = "description",
                    fontSize = "large",
                    width = "full",
                    order = 8
                },
                issueText = {
                    type = "description",
                    fontSize = "medium",
                    name = knowIssuesText,
                    width = "full",
                    order = 9
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
local Realod_UI = C_UI.Reload
function NS.ResetAll()
    StaticPopup_Show("WEIZPVP_CONFIRM_RESETALL")
end
--> RESET OPTIONS
function NS.ResetOptions()
    StaticPopup_Show("WEIZPVP_CONFIRM_RESETOPTIONS")
end
--> RESET PLAYER DB
function NS.ResetPlayerDB()
    StaticPopup_Show("WEIZPVP_CONFIRM_RESETPLAYERDB")
end

--> TOGGLE OPTIONS
function NS.ToggleOptions()
    if InterfaceOptionsFrame:IsShown() then
        InterfaceOptionsFrame:Hide()
    else
        InterfaceOptionsFrame_OpenToCategory(ADDON_NAME) -- open options to ADDON_NAME
        local _, Smax = InterfaceOptionsFrameAddOnsListScrollBar:GetMinMaxValues() -- Get scrollbar min/max
        InterfaceOptionsFrameAddOnsListScrollBar:SetValue(Smax) -- Set scrollbar to max (top)
        InterfaceOptionsFrame_OpenToCategory(ADDON_NAME) -- open options again (wow bug workaround)
    end
end

--> VERSION UPGRADE CHECK
function NS.VersionUpgradeCheck()
    if not _G._weizpvp_addon then -- check for major upgrade (pre-1.9.0)
        _G._weizpvp_addon = {
            Database_Version = weizPVP.Database_Version,
            Addon_Version = weizPVP.Addon_Version
        }
        NS.globalDB.global = {}
        NS.databaseReset = true
    end
end

--|> STATIC POPUPS
-------------------------------------------------------------------------------
--> Reset All Popup
StaticPopupDialogs["WEIZPVP_CONFIRM_RESETALL"] = {
    text = "Are you sure you want to reset all weizPVP settings and wipe its player data?\n|cffff0000This will reload your UI.|r",
    button1 = YES,
    button2 = NO,
    OnAccept = function()
        wipe(NS.charDB)
        wipe(NS.globalDB)
        wipe(NS.Options)
        wipe(NS.PlayerDB)
        wipe(NS.KosList)
        Realod_UI()
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
StaticPopupDialogs["WEIZPVP_CONFIRM_RESETOPTIONS"] = {
    text = "Are you sure you want to reset the weizPVP options & settings?\n|cffff0000This will reload your UI.|r",
    button1 = YES,
    button2 = NO,
    OnAccept = function()
        wipe(NS.charDB.Options)
        wipe(NS.Options)
        Realod_UI()
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
--> Reset Player Databsae
StaticPopupDialogs["WEIZPVP_CONFIRM_RESETPLAYERDB"] = {
    text = "Are you sure you want to wipe weizPVP's player database?",
    button1 = YES,
    button2 = NO,
    OnAccept = function()
        wipe(NS.globalDB)
        wipe(NS.PlayerDB)
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
    text = "|cffFFA200weizPVP's options and data have been reset!|r\n|cffaaaaaa(Details in chat)|r",
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
