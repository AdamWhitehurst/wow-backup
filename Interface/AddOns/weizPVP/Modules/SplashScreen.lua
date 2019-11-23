-------------------------------------------------------------------------------
-- |> SPLASH SCREEN
--: Creates a splash screen window for a static display of info
--: Currently used only for version updates.
-------------------------------------------------------------------------------
--|> UPVALUE GLOBALS
-------------------------------------------------------------------------------
local weizPVP = weizPVP
local CreateFrame = CreateFrame
local UIFrameFadeOut = UIFrameFadeOut
-------------------------------------------------------------------------------
-- |> SETTINGS
-------------------------------------------------------------------------------
local SplashShownMinVersion = 1801.0 -- Show splash if last build version is less than this value
local PaddingSize = 18 -- Padding base size used for spacing elements
local bgTexture = "Interface\\Addons\\weizPVP\\Media\\Textures\\white16x16.tga"
local edgeFile = "Interface\\Addons\\weizPVP\\Media\\Textures\\white16x16.tga"
local fontBold = "Interface\\Addons\\weizPVP\\Media\\Fonts\\RobotoCondensed-Bold.ttf"
local fontBoldItalic = "Interface\\Addons\\weizPVP\\Media\\Fonts\\RobotoCondensed-BoldItalic.ttf"

-------------------------------------------------------------------------------
--|> CREATE SPLASH SCREEN
-------------------------------------------------------------------------------
local function CreateSplash()
    local splash = CreateFrame("Frame", "RecentChangesScreen", _G.UIParent)
    splash:SetPoint("CENTER")
    splash:SetMovable(true)
    splash:EnableMouse(true)
    splash:RegisterForDrag("LeftButton")
    splash:SetScript("OnDragStart", splash.StartMoving)
    splash:SetScript("OnDragStop", splash.StopMovingOrSizing)
    splash:SetSize(520, 200)
    splash:SetFrameStrata("DIALOG")
    splash:SetBackdrop(
        {
            bgFile = bgTexture,
            tile = false,
            edgeFile = edgeFile,
            edgeSize = 1,
            insets = {left = 1, right = 1, top = 1, bottom = 1}
        }
    )
    splash:SetBackdropColor(0.1, 0.1, 0.1, 0.5)
    splash:SetBackdropBorderColor(0, 0, 0, 1)
    splash:Hide()

    splash.bg = splash:CreateTexture(nil, "BACKGROUND")
    splash.bg:SetPoint("TOPLEFT", splash, "TOPLEFT")
    splash.bg:SetPoint("BOTTOMRIGHT", splash, "BOTTOMRIGHT")
    splash.bg:SetDrawLayer("BACKGROUND", 0)
    splash.bg:SetColorTexture(1, 1, 1, 1)
    splash.bg:SetGradientAlpha("VERTICAL", 0.1, 0.1, 0.1, 0.7, 0.08, 0.08, 0.08, 0.8)

    local sectionHeaderText = [[|TInterface\Addons\weizPVP\Media\Icons\Pack\hot.tga:0|t |cff37ff378.2 API Updates|r]]

    local SplashDetailsText =
        [[
    |TInterface\Addons\weizPVP\Media\Icons\Pack\new.tga:0|t Crosshairs can no longer animate from nameplate to nameplate
       |cffaaaaaa   -|r |cffbbbbbbAPI changes prevent getting nameplate locations|r
       |cffaaaaaa   -|r |cffbbbbbbLocations were required to move from one plate to another|r
       |cffaaaaaa   -|r |cffbbbbbbNew visual options will be available in weizPVP 2.0|r]]

    --> Title
    splash.title = splash:CreateFontString(nil, "ARTWORK", "GameFont_Gigantic")
    splash.title:SetFont(fontBold, 26, "OUTLINE")
    splash.title:SetPoint("TOPLEFT", PaddingSize, -1 * PaddingSize)
    splash.title:SetText("|cffffffffweiz|r|cffffa012PVP|r |cFFaaaaaa:|r ")

    --> Subtitle
    splash.subtitle = splash:CreateFontString(nil, "ARTWORK", "GameFont_Gigantic")
    splash.subtitle:SetFont(fontBoldItalic, 26, "OUTLINE")
    splash.subtitle:SetPoint("LEFT", splash.title, "RIGHT", 0, 0)
    splash.subtitle:SetText("|cff42dcf4Recent Changes|r")

    --> Divider
    splash.hr = splash:CreateTexture(nil, "ART")
    splash.hr:SetPoint("LEFT", splash, "LEFT", PaddingSize, 0)
    splash.hr:SetPoint("RIGHT", splash, "RIGHT", -1 * PaddingSize, 0)
    splash.hr:SetPoint("TOP", splash.title, "BOTTOM", 0, -6)
    splash.hr:SetHeight(2)
    splash.hr:SetColorTexture(1, 1, 1, 1)
    splash.hr:SetGradientAlpha("HORIZONTAL", 1, 1, 1, 1, 0.08, 0.08, 0.08, 0)

    --> Section Header
    splash.sectionHeader = splash:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
    splash.sectionHeader:SetPoint("TOP", splash.title, "BOTTOM", 0, -22)
    splash.sectionHeader:SetPoint("LEFT", splash.title, "LEFT", 0, -22)
    splash.sectionHeader:SetWidth(splash:GetWidth() - (PaddingSize * 2))
    splash.sectionHeader:SetJustifyH("LEFT")
    splash.sectionHeader:SetText(sectionHeaderText)
    splash.sectionHeader:SetFont(fontBold, 18, "OUTLINE")

    --> Body
    splash.body = splash:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
    splash.body:SetPoint("TOPLEFT", splash.sectionHeader, "BOTTOMLEFT", 0, -8)
    splash.body:SetWidth(splash:GetWidth() - (PaddingSize * 2))
    splash.body:SetJustifyH("LEFT")
    splash.body:SetShadowColor(0, 0, 0, 0.8)
    splash.body:SetShadowOffset(1.5, -1.5)
    splash.body:SetText(SplashDetailsText)
    splash.body:SetFont(fontBold, 14, "NONE")

    --> OK Button
    splash.okayButton = CreateFrame("Button", "weizPVP: Splash OK Button", splash)
    splash.okayButton:SetSize(128, 32)
    splash.okayButton:SetPoint("TOP", splash.body, "BOTTOM", 0, -1 * PaddingSize)
    splash.okayButton:SetBackdrop(
        {
            bgFile = [[Interface\Addons\weizPVP\Media\Textures\white16x16.tga]],
            tile = false,
            edgeFile = [[Interface\Addons\weizPVP\Media\Textures\white16x16.tga]],
            edgeSize = 1,
            insets = {left = 1, right = 1, top = 1, bottom = 1}
        }
    )
    splash.okayButton:SetBackdropColor(0.4, 0.4, 0.4, 1)
    splash.okayButton:SetBackdropBorderColor(0, 0, 0, 1)
    splash.okayButton:SetScript(
        "OnClick",
        function()
            splash:Hide()
            --> CLEAN ALL SETTINGS
            --> Fade out
            UIFrameFadeOut(splash, 0.3, 1, 0)
            weizPVP.Options.Addon.VersionSplashSeen = true
            splash:SetMovable(false)
            splash:EnableMouse(false)
            splash.okayButton:EnableMouse(false)
            weizPVP.Options.Addon.Version = weizPVP.Addon.VERSION
            weizPVP.Options.Addon.VersionNumber = weizPVP.Addon.VERSION_NUM
        end
    )

    --> OK TEXT
    splash.okayButton.text = splash.okayButton:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
    splash.okayButton.text:SetPoint("CENTER")
    splash.okayButton.text:SetJustifyH("CENTER")
    splash.okayButton.text:SetTextColor(1, 1, 1, 1)
    splash.okayButton.text:SetText("OK")
    splash.okayButton.text:SetShadowOffset(1, -1)
    splash.okayButton.text:SetFont(fontBold, 20, "OUTLINE")
    splash.okayButton:SetScript(
        "OnEnter",
        function()
            splash.okayButton.text:SetShadowOffset(2, -2)
            splash.okayButton:SetBackdropColor(0.7, 0.7, 0.7, 1)
        end
    )
    splash.okayButton:SetScript(
        "OnLeave",
        function()
            splash.okayButton.text:SetShadowOffset(1, -1)
            splash.okayButton:SetBackdropColor(0.4, 0.4, 0.4, 1)
        end
    )

    --> Version
    splash.version = splash:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
    splash.version:SetPoint("BOTTOMRIGHT", splash, "BOTTOMRIGHT", -8, 8)
    splash.version:SetJustifyH("RIGHT")
    splash.version:SetFont(fontBoldItalic, 12, "NONE")
    splash.version:SetText("|cFF9999aaVersion:|r |cFFbbbbcc" .. _G.GetAddOnMetadata("weizPVP", "Version") .. "|r")
    splash.version:SetShadowColor(0, 0, 0, 0)
    local NewHeight =
        splash.body:GetHeight() + splash.sectionHeader:GetHeight() + splash.okayButton:GetHeight() +
        splash.title:GetHeight() +
        splash.version:GetHeight() +
        (PaddingSize * 4)
    splash:SetHeight(NewHeight)
    weizPVP.Splash = splash
end

-------------------------------------------------------------------------------
--> Check Splash
-------------------------------------------------------------------------------
function weizPVP:CheckSplash()
    --> Reset if not seen splash screen before
    if not weizPVP.Options.Addon.VersionSplashSeen or weizPVP.Options.Addon.VersionSplashSeen == false then
        --> LOAD CHARACTER OPTIONS
        weizPVP.charDB:ResetDB()
        weizPVP.globalDB:ResetDB()
        weizPVP.charDB = LibStub("AceDB-3.0"):New("weizPVPOptions", weizPVP.defaults, true)
        weizPVP.Options = weizPVP.charDB.profile.Options
        --> LOAD GLOBAL PLAYER DB
        weizPVP.globalDB = LibStub("AceDB-3.0"):New("weizPVPDatabase", {}, false)
        weizPVP.PlayerDB = weizPVP.globalDB.global
    end
    --> Check to see if new version popup has been seen for this version
    local ShowSplash = not weizPVP.Options.Addon.VersionNumber or false
    ShowSplash = ShowSplash or weizPVP.Options.Addon.VersionNumber < SplashShownMinVersion
    ShowSplash = ShowSplash or weizPVP.Options.DEBUG == true
    if ShowSplash then
        if not weizPVP.Splash then
            CreateSplash()
            weizPVP.Splash:Show()
        end
    end
    --> Update Versions
end
