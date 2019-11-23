-------------------------------------------------------------------------------
--|> INIT
--: Loads saved options or applies defaults.
--: Checks for database changes and applies updates when needed.
--: Loads player data.
-------------------------------------------------------------------------------
_G.weizPVP = LibStub("AceAddon-3.0"):NewAddon("weizPVP", "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0")
local weizPVP = weizPVP

-------------------------------------------------------------------------------
--|> ADDON INFO
-------------------------------------------------------------------------------
weizPVP.Addon = {
    VERSION = GetAddOnMetadata("weizPVP", "Version"), -- Get value from toc; ~"1.23.4-beta5A"
    VERSION_NUM = 1802.1, --!! deprecetd n 2.0
    DB_VERSION = "3.0", -- PlayerDB Version
    LagModeActive = false,
    Halted = false
}

-------------------------------------------------------------------------------
--|> KEY BINDINGS
-------------------------------------------------------------------------------
--> Bindings Globals
BINDING_HEADER_WEIZPVP = "weizPVP"
BINDING_NAME_WEIZPVP_TOGGLECROSSHAIRS = "Toggle Crosshairs"

-------------------------------------------------------------------------------
--|> UPVALUE GLOBALS
-------------------------------------------------------------------------------
local C_UI_Reload = C_UI.Reload
local UnitLevel = UnitLevel
local GetRealmName = GetRealmName
local GetUnitName = GetUnitName
local MAX_PLAYER_LEVEL_TABLE = MAX_PLAYER_LEVEL_TABLE
local GetExpansionLevel = GetExpansionLevel
local UnitFactionGroup = UnitFactionGroup
local select = select
local UIParent = UIParent
local GetScreenWidth = GetScreenWidth
local GetScreenHeight = GetScreenHeight
local GetFramerate = GetFramerate
local GetCVar = GetCVar
local wipe = wipe

-------------------------------------------------------------------------------
--|> LIB SHARED MEDIA
-------------------------------------------------------------------------------
local SM = LibStub:GetLibrary("LibSharedMedia-3.0")
do
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
    SM:Register("FONT", "Accidental Presidency v2", [[Interface\Addons\weizPVP\Media\Fonts\Accidental-Presidency.ttf]])
    SM:Register("FONT", "Accidental Presidency Italic", [[Interface\Addons\weizPVP\Media\Fonts\Accidental-Presidency-Italic.ttf]])
    SM:Register("FONT", "PT Sans Narrow Bold", [[Interface\Addons\weizPVP\Media\Fonts\PT_Sans-Narrow-Bold.ttf]])
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
end

-------------------------------------------------------------------------------
--|> GET CURRENT PLAYER AND GAME INFO
-------------------------------------------------------------------------------
--> Player Info
weizPVP.Player = {}
weizPVP.Player.Name = GetUnitName("player")
weizPVP.Player.Faction = select(1, UnitFactionGroup("player"))
weizPVP.Player.Level = UnitLevel("player")
weizPVP.Player.FromRealm = GetRealmName()
weizPVP.Player.FromSubRealm = gsub(weizPVP.Player.FromRealm, "[%s%-]", "")

--> Game Info
weizPVP.Game = {}
weizPVP.Game.MaxPlayerLevel = MAX_PLAYER_LEVEL_TABLE[GetExpansionLevel()]

-------------------------------------------------------------------------------
--|> GET DISPLAY INFO
--: Used by visual elements for better scaling and positioning
--: FPS updated
-------------------------------------------------------------------------------
do
    weizPVP.Display = {}
    weizPVP.Display.Width = GetScreenWidth()
    weizPVP.Display.Height = GetScreenHeight()
    weizPVP.Display.xFactor = (768 / weizPVP.Display.Width) * (weizPVP.Display.Width / weizPVP.Display.Height)
    weizPVP.Display.yFactor = 768 / weizPVP.Display.Height
    weizPVP.Display.UIScale = UIParent:GetScale()
    weizPVP.Display.EffectiveScale = UIParent:GetEffectiveScale()
    weizPVP.Display.CVarUiScale = GetCVar("uiScale")
    weizPVP.Display.CurrentFPS = GetFramerate()
end

-------------------------------------------------------------------------------
--|> DEFAULT OPTIONS
-------------------------------------------------------------------------------
do
    weizPVP.defaults = {
        profile = {
            Options = {
                DB_VERSION = "3.0",
                DEBUG = false,
                Addon = {
                    Enabled = true,
                    EnabledInBattlegrounds = true,
                    EnabledInArena = false,
                    Halted = false,
                    VersionSplashSeen = false,
                    VersionNumber = 0,
                    Version = "",
                    Shown = true
                },
                Window = {
                    Locked = false,
                    Pinned = false,
                    Collapsed = false,
                    Visible = true
                },
                --> LagMode
                LagMode = {
                    Enabled = false,
                    Active = false,
                    FPSThreshold = 30,
                    HaltEnabled = false,
                    HaltActive = false
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
                    DetectedPlayerSound = false,
                    DetectedPlayerSoundFile = "weizPVP: Notice 1"
                },
                --> Bars
                Bars = {
                    MaxNumBars = 20,
                    AlphaDead = 0.8,
                    AlphaInactive = 0.6,
                    AlphaDefault = 1,
                    RowHeight = 18,
                    VerticalSpacing = 1,
                    Texture = "weizPVP: StatusBar",
                    BarTexture = "weizPVP: Bar-BG",
                    BarSolid = "weizPVP: SolidStatus",
                    NameFont = "Accidental Presidency v2",
                    NameFontSize = 16,
                    LevelFont = "Accidental Presidency Italic",
                    LevelFontSize = 16,
                    GuildFont = "Accidental Presidency v2",
                    GuildFontSize = 14
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
                    BorderSize = 4,
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
                        Height = 26,
                        BackgroundColor = {
                            0.01,
                            0.01,
                            0.01,
                            0.7
                        },
                        Font = "Roboto Condensed BoldItalic",
                        FontSize = 18,
                        X = 383,
                        Y = 132,
                        Scale = 1,
                        Width = 251,
                        FontOutline = "OUTLINE",
                        Point = "CENTER"
                    },
                    --> Footer Frame
                    Footer = {
                        Height = 18,
                        Font = "Accidental Presidency v2",
                        FontSize = 15,
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
                --> Crosshair
                Crosshair = {
                    Enabled = true,
                    Alpha = 1,
                    OnlyOnKosTargets = false,
                    ShowBountyOverlay = false,
                    ColorOverride = false,
                    ColorOverrideRGBA = {
                        1,
                        0.2,
                        0.2,
                        0.6
                    },
                    NameEnabled = false,
                    GuildEnabled = false,
                    RotatingArrows = false,
                    LineThickness = 2,
                    FX = {
                        NewTarget1 = false
                    }
                }
            }
        }
    }
    --> Calculate additional defaults based on the dimensions of other properties
    --: Dynamic values adjusted from other values needed during initial frame construction
    -------------------------------------------------------------------------------
    weizPVP.defaults.profile.Options.Frames.List.Height = weizPVP.defaults.profile.Options.Bars.RowHeight + weizPVP.defaults.profile.Options.Bars.VerticalSpacing
    weizPVP.defaults.profile.Options.Frames.Scroll.Height = (weizPVP.defaults.profile.Options.Frames.List.Height * 12) + weizPVP.defaults.profile.Options.Bars.VerticalSpacing
    weizPVP.defaults.profile.Options.Frames.Height = weizPVP.defaults.profile.Options.Frames.Scroll.Height
    weizPVP.defaults.profile.Options.Frames.List.Height = weizPVP.defaults.profile.Options.Frames.List.Height * weizPVP.defaults.profile.Options.Bars.MaxNumBars
end

-------------------------------------------------------------------------------
--|> LOAD DATABASE
--: Initializes static data tables
--: Loads saved variables or applies defaults if none exist
-------------------------------------------------------------------------------
function weizPVP:LoadDB()
    --> LOAD CHARACTER OPTIONS
    weizPVP.charDB = {}
    weizPVP.Options = {}
    weizPVP.charDB = LibStub("AceDB-3.0"):New("weizPVPOptions", weizPVP.defaults, true)
    weizPVP.Options = weizPVP.charDB.profile.Options
    --> LOAD GLOBAL PLAYER DB
    weizPVP.globalDB = {}
    weizPVP.PlayerDB = {}
    weizPVP.globalDB = LibStub("AceDB-3.0"):New("weizPVPDatabase", {}, false)
    weizPVP.PlayerDB = weizPVP.globalDB.global
end

-------------------------------------------------------------------------------
--> INIT CURRENT VALUES
-------------------------------------------------------------------------------
local function BuildUIElements()
    --> Create Core Frames and Bars
    weizPVP:CreateCoreFrames()
    weizPVP:CreateBars()
    weizPVP:CreateStatusBar()
    weizPVP:CreateStealthAlertFrame()
    --> Setup Crosshair
    weizPVP:CreateCrosshair()
    if weizPVP.Options.Crosshair.Enabled then
        weizPVP:EnableCrosshair()
    else
        weizPVP:DisableCrosshair()
    end
    weizPVP:SetCoreFramePosition()
end

-------------------------------------------------------------------------------
--|> ON INITIALIZE
-------------------------------------------------------------------------------
function weizPVP:OnInitialize()
    --> Load Ace3 DB
    weizPVP:LoadDB()
    BuildUIElements()
    weizPVP.ManageBarsDisplayed()
end

-------------------------------------------------------------------------------
--|> ON ENABLE
-------------------------------------------------------------------------------
function weizPVP:OnEnable()
    --> Show frames
    C_Timer.After(1, weizPVP.SetWindowSettings)
    weizPVP.SetWindowSettings()
    --> Enable Events
    weizPVP.Addon.Enabled = true
    weizPVP:EnableEvents()
    --> Pulse Timer
    weizPVP:CancelAllTimers()
    weizPVP:ScheduleRepeatingTimer("PulseEvent", 2)
    weizPVP:CheckSplash()
end

-------------------------------------------------------------------------------
--|> ON DISABLE
-------------------------------------------------------------------------------
function weizPVP:OnDisable()
    --> Hide frames
    weizPVP.HeaderFrame:Hide()
    weizPVP.CoreFrame:Hide()
    weizPVP.StatusBar:Hide()
    --> Cancel Timers
    weizPVP:CancelAllTimers()
    --> Clear current player data
    weizPVP:ClearListData()
    --> Enable Events
    weizPVP.DisableEvents()
    --> Mark addon is disabled
    weizPVP.Addon.Enabled = false
end

-------------------------------------------------------------------------------
--|> RESET ALL
-------------------------------------------------------------------------------
function weizPVP:ResetAll()
    wipe(weizPVP.charDB.profile.Options)
    wipe(weizPVP.globalDB.global)
    wipe(weizPVP.Options)
    wipe(weizPVP.PlayerDB)
    C_UI_Reload()
end

-------------------------------------------------------------------------------
--|> RESET OPTIONS
-------------------------------------------------------------------------------
function weizPVP:ResetOptions()
    if weizPVP.Options then
        wipe(weizPVP.Options)
    end

    if wipe(weizPVP.charDB) then
        wipe((weizPVP.charDB))
    end

    C_UI_Reload()
end
