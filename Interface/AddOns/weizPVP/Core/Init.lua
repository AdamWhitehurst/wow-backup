-------------------------------------------------------------------------------
--|> INIT
--: Loads saved options or applies defaults.
--: Checks for database changes and applies updates when needed.
--: Loads player data.
-------------------------------------------------------------------------------
local _, NS = ...
_G.weizPVP = LibStub("AceAddon-3.0"):NewAddon("weizPVP", "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0")

--|> ADDON INFO
-------------------------------------------------------------------------------
_G.weizPVP.Database_Version = 3
_G.weizPVP.Addon_Version = GetAddOnMetadata("weizPVP", "Version")

--|> Upvalue Globals
-------------------------------------------------------------------------------
local MAX_PLAYER_LEVEL_TABLE = MAX_PLAYER_LEVEL_TABLE
local GetUnitName = GetUnitName
local GetRealmName = GetRealmName
local GetExpansionLevel = GetExpansionLevel
local UnitFactionGroup = UnitFactionGroup
local GetScreenWidth = GetScreenWidth
local GetScreenHeight = GetScreenHeight
local GetFramerate = GetFramerate
local GetCVar = GetCVar
local select = select

--|> LIB SHARED MEDIA
-------------------------------------------------------------------------------
local SM = LibStub:GetLibrary("LibSharedMedia-3.0")
--> Status Bars
SM:Register("STATUSBAR", "weizPVP: StatusBar", [[Interface\Addons\weizPVP\Media\Textures\bar-solid75.tga]])
SM:Register("STATUSBAR", "weizPVP: SolidStatus", [[Interface\Addons\weizPVP\Media\Textures\white16x16.tga]])
--> Backgrounds
SM:Register("BACKGROUND", "weizPVP: #FFFFFF", [[Interface\Addons\weizPVP\Media\Textures\white16x16.tga]])
SM:Register("BACKGROUND", "weizPVP: Bar-BG", [[Interface\Addons\weizPVP\Media\Textures\bar-solid75.tga]])
--> Borders
SM:Register("BORDER", "weizPVP: Border", [[Interface\Addons\weizPVP\Media\Textures\white16x16.tga]])
--> Fonts
SM:Register("FONT", "Roboto Condensed", [[Interface\Addons\weizPVP\Media\Fonts\RobotoCondensed.ttf]])
SM:Register("FONT", "Roboto Condensed Bold", [[Interface\Addons\weizPVP\Media\Fonts\RobotoCondensed-Bold.ttf]])
SM:Register("FONT", "Roboto Condensed BoldItalic", [[Interface\Addons\weizPVP\Media\Fonts\RobotoCondensed-BoldItalic.ttf]])
SM:Register("FONT", "Accidental Presidency", [[Interface\Addons\weizPVP\Media\Fonts\AccidentalPresidency.ttf]])
SM:Register("FONT", "Accidental Presidency Italic", [[Interface\Addons\weizPVP\Media\Fonts\AccidentalPresidency-Italic.ttf]])
--> Sounds
SM:Register("SOUND", "weizPVP: MLG Air Horn 1", [[Interface\Addons\weizPVP\Media\Sounds\airhorn-1.ogg]])
SM:Register("SOUND", "weizPVP: Beep 1", [[Interface\Addons\weizPVP\Media\Sounds\beep-1.ogg]])
SM:Register("SOUND", "weizPVP: Beep 2", [[Interface\Addons\weizPVP\Media\Sounds\beep-2.ogg]])
SM:Register("SOUND", "weizPVP: Error 1", [[Interface\Addons\weizPVP\Media\Sounds\error-1.ogg]])
SM:Register("SOUND", "weizPVP: Notice 1", [[Interface\Addons\weizPVP\Media\Sounds\notice-1.ogg]])
SM:Register("SOUND", "weizPVP: Notice 2", [[Interface\Addons\weizPVP\Media\Sounds\notice-2.ogg]])
SM:Register("SOUND", "weizPVP: Notice 3", [[Interface\Addons\weizPVP\Media\Sounds\notice-3.ogg]])
SM:Register("SOUND", "weizPVP: Warning 1", [[Interface\Addons\weizPVP\Media\Sounds\warning-1.ogg]])
SM:Register("SOUND", "weizPVP: Warning 2", [[Interface\Addons\weizPVP\Media\Sounds\warning-2.ogg]])
SM:Register("SOUND", "weizPVP: Warning 3", [[Interface\Addons\weizPVP\Media\Sounds\warning-3.ogg]])
SM:Register("SOUND", "weizPVP: Warning 4", [[Interface\Addons\weizPVP\Media\Sounds\warning-4.ogg]])

--|> GET CURRENT PLAYER AND GAME INFO
-------------------------------------------------------------------------------
--> Player Info
NS.Player = {}
NS.Player.GUID = UnitGUID("player")
NS.Player.Name = GetUnitName("player")
NS.Player.Faction = select(1, UnitFactionGroup("player"))
NS.Player.Level = UnitLevel("player")
NS.Player.FromRealm = GetRealmName()
NS.Player.FromSubRealm = gsub(NS.Player.FromRealm, "[%s%-]", "")
NS.PlayerRealm = NS.Player.FromSubRealm

--> Game Info
NS.Game = {}
NS.Game.MaxPlayerLevel = MAX_PLAYER_LEVEL_TABLE[GetExpansionLevel()]

--|> GET DISPLAY INFO
-------------------------------------------------------------------------------
NS.Display = {}
NS.Display.Width = GetScreenWidth()
NS.Display.Height = GetScreenHeight()
NS.Display.xFactor = (768 / NS.Display.Width) * (NS.Display.Width / NS.Display.Height)
NS.Display.yFactor = 768 / NS.Display.Height
NS.Display.UIScale = UIParent:GetScale()
NS.Display.EffectiveScale = UIParent:GetEffectiveScale()
NS.Display.CVarUiScale = GetCVar("uiScale")
NS.Display.CurrentFPS = GetFramerate()

--|> DEFAULT OPTIONS
-------------------------------------------------------------------------------
NS._DefaultOptions = {
    profile = {
        Options = {
            DEBUG = false,
            Addon = {
                Enabled = true,
                EnabledInBattlegrounds = true,
                EnabledInArena = false,
                Shown = true
            },
            Window = {
                Locked = false,
                Pinned = false,
                Collapsed = false,
                Visible = true
            },
            --> LDB
            LDB = {
                minimapPos = 200,
                minimap = true
            },
            --> Alerts
            Alerts = {
                PhasingChat = true
            },
            --> Audio Alerts
            AudioAlerts = {
                DetectedPlayerSound = true,
                DetectedPlayerSoundBGDisabled = false,
                DetectedPlayerSoundFile = "weizPVP: Notice 1"
            },
            --> Bars
            Bars = {
                MaxNumBars = 20,
                AlphaDead = 0.8,
                AlphaInactive = 0.6,
                AlphaDefault = 1,
                RowHeight = 19,
                VerticalSpacing = 1,
                Texture = "weizPVP: StatusBar",
                BarTexture = "weizPVP: Bar-BG",
                BarSolid = "weizPVP: SolidStatus",
                NameFont = "Accidental Presidency",
                NameFontSize = 14,
                LevelFont = "Accidental Presidency Italic",
                LevelFontSize = 14,
                GuildFont = "Accidental Presidency",
                GuildFontSize = 13
            },
            --> Sorting
            Sorting = {
                NearbyInactiveTimeout = 32,
                NearbyActiveTimeout = 20
            },
            --> Frames
            Frames = {
                BackgroundTexture = "weizPVP: #FFFFFF",
                BorderTexture = "weizPVP: Border",
                BackgroundColor = {
                    0.02,
                    0.02,
                    0.02,
                    0.5
                },
                Width = 251,
                Height = 247,
                X = 383,
                Y = -4.5,
                Scale = 1,
                Point = "CENTER",
                BorderSize = 2,
                AutoResize = false,
                --> Scroll Frame
                Scroll = {
                    Height = 0
                },
                --> List Frame
                List = {
                    Height = 0
                },
                --> Header Frame
                Header = {
                    Height = 20,
                    BackgroundColor = {
                        0.015,
                        0.015,
                        0.015,
                        0.85
                    },
                    Font = "Roboto Condensed BoldItalic",
                    FontSize = 17,
                    X = 383,
                    Y = 132,
                    Scale = 1,
                    Width = 251,
                    FontOutline = "OUTLINE",
                    Point = "CENTER"
                },
                --> Footer Frame
                Footer = {
                    Height = 17,
                    Font = "Accidental Presidency",
                    FontSize = 14,
                    FontOutline = "NONE",
                    BackgroundColor = {
                        0.01,
                        0.01,
                        0.01,
                        0.4
                    }
                }
            },
            --> Stealth Alert
            StealthAlert = {
                Enabled = true,
                EnableSound = true,
                SoundFile = "weizPVP: Warning 1"
            },
            --> KOS
            KOS = {
                AudioAlert = true,
                AudioAlertFile = "weizPVP: Warning 2",
                ChatAlert = true,
                TaskbarAlert = true
            },
            --> Crosshair
            Crosshair = {
                Enabled = true,
                Alpha = 1,
                Scale = 1,
                ShowBountyOverlay = false,
                NameEnabled = false,
                GuildEnabled = false,
                ShowRange = true,
                LineThickness = 1
            }
        },
        KosList = {}
    }
}
--> Calculate additional defaults based on the dimensions of other properties
--: Dynamic values adjusted from other values needed during initial frame construction
-------------------------------------------------------------------------------
NS._DefaultOptions.profile.Options.Frames.List.Height =
    NS._DefaultOptions.profile.Options.Bars.RowHeight + NS._DefaultOptions.profile.Options.Bars.VerticalSpacing
NS._DefaultOptions.profile.Options.Frames.Scroll.Height =
    (NS._DefaultOptions.profile.Options.Frames.List.Height * 12) + NS._DefaultOptions.profile.Options.Bars.VerticalSpacing
NS._DefaultOptions.profile.Options.Frames.Height = NS._DefaultOptions.profile.Options.Frames.Scroll.Height
NS._DefaultOptions.profile.Options.Frames.List.Height =
    NS._DefaultOptions.profile.Options.Frames.List.Height * NS._DefaultOptions.profile.Options.Bars.MaxNumBars

--> LOAD DATABASE
local function LoadDB()
    --> LOAD CHARACTER OPTIONS
    NS.charDB = LibStub("AceDB-3.0"):New("_weizpvp_chardb", NS._DefaultOptions, true)
    NS.Options = NS.charDB.profile.Options
    NS.KosList = NS.charDB.profile.KosList or {}
    --> LOAD GLOBAL PLAYER DB
    NS.PlayerDB = {}
    NS.globalDB = LibStub("AceDB-3.0"):New("_weizpvp_globaldb", {}, false)
    NS.PlayerDB = NS.globalDB.global
    NS.VersionUpgradeCheck() -- update check
    --> DEBUG CHECK
    if NS.Options.DEBUG then
        _G.weizPVP.NS = NS
    end
end

--> BUILD UI
local function BuildUIElements()
    -- Create Core Frames and Bars
    NS.CreateCoreFrames()
    NS.CreateBars()
    NS.CreateStatusBar()
    NS.CreateStealthAlertFrame()
    -- Setup Crosshair
    if NS.Options.Crosshair.Enabled then
        NS.Crosshair.Enable()
    else
        NS.Crosshair.Disable()
    end
    NS.SetCoreFramePosition()
    NS.KOS.Enable()
end

--> ON INITIALIZE
function weizPVP.OnInitialize()
    XEN.Init()
    LoadDB()
    BuildUIElements()
    NS.ManageBarsDisplayed()
    NS.firstRun = true
end

--> ON ENABLE
local C_Timer_After = C_Timer.After
function weizPVP:OnEnable()
    --> Show frames
    C_Timer_After(1, NS.SetWindowSettings)
    NS.SetWindowSettings()
    --> Enable Events
    NS.EnableEvents()
    --> Pulse Timer
    self:CancelAllTimers()
    self:ScheduleRepeatingTimer(NS.PulseEvent, 1)
end

--> ON DISABLE
function weizPVP:OnDisable()
    --> Hide frames
    NS.HeaderFrame:Hide()
    NS.CoreFrame:Hide()
    NS.StatusBar:Hide()
    --> Cancel Timers
    self:CancelAllTimers()
    --> Clear current player data
    NS.ClearListData()
    --> Enable Events
    NS.DisableEvents()
end

--> PRINT ADDON MESSAGE
-----------------------------------------------------------
function NS.PrintAddonMessage(msg)
    --> Print message with default addon prefix
    (SELECTED_CHAT_FRAME or DEFAULT_CHAT_FRAME):AddMessage("|TInterface\\Addons\\weizPVP\\Media\\weizpvp_chat.tga:0|t " .. msg)
end
