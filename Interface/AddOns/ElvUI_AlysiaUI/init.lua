local addon, ns = ...
local format = string.format
local GetCVarBool = GetCVarBool
local ReloadUI = ReloadUI
local StopMusic = StopMusic
local IsAddOnLoaded = IsAddOnLoaded
local E, L, V, P, G = unpack(ElvUI)
local MyPluginName = "AlysiaUI"
local EP = LibStub("LibElvUIPlugin-1.0")
local ALUI = E:NewModule(MyPluginName, "AceHook-3.0", "AceEvent-3.0", "AceTimer-3.0");
ALUI.Version = GetAddOnMetadata(addon, "Version")
ALUI.Config = {}

-- Default Options
P['ALUI'] = {
	['EasyDelete'] = true,
}

-- Login Message
E:Print(L["Hello,|r |r" ..UnitName("Player")..  "|r Welcome to |cff00c0faAlysiaUI |cffffffffby |cff00c0faDlarge|cffffffff, please visit |cff00c0fahttps://www.tukui.org/addons.php?id=96 |cfffffffffor updates and requests or bugs. Thank you."])

-- Profile Check
local function ProfileCheck(new)
	if (new) then
		StaticPopupDialogs["CreateProfileNameNew"] = {
		text = L["Name for the new profile"],
		button1 = L["Accept"],
		button2 = L["Cancel"],
		hasEditBox = 1,
		whileDead = 1,
		hideOnEscape = 1,
		timeout = 0,
		OnShow = function(self, data)
		  self.editBox:SetText("AlysiaUI");
		end,
		OnAccept = function(self, data, data2)
		  local text = self.editBox:GetText()
		  ElvUI[1].data:SetProfile(text)
		  E:Print(L["Profile created"])
		  PluginInstallStepComplete.message = "Profile Created"
		  PluginInstallStepComplete:Show()
		  PluginInstallFrame.Desc3:SetText("Your currently active profile is: |cff00c0fa"..ElvUI[1].data:GetCurrentProfile().."|r")
		end
	  };
	  StaticPopup_Show("CreateProfileNameNew", "test");
	elseif(new == false) then
		StaticPopupDialogs["ProfileOverwriteConfirm"] = {
			text = "Are you sure you want to overwrite the current profile?",
			button1 = "Yes",
			button2 = "No",
			OnAccept = function()
				E:Print(L["Current Profile Selected"])
			    PluginInstallStepComplete.message = "Current Profile Selected"
		        PluginInstallStepComplete:Show()
			end,
			timeout = 0,
			whileDead = true,
			hideOnEscape = true,
		}
		StaticPopup_Show("ProfileOverwriteConfirm", "test")
	end
end

-- This function is executed when you press "Skip Process" or "Finished" in the installer.
local function InstallComplete()
	if GetCVarBool("Sound_EnableMusic") then
		StopMusic()
	end

	--Set a variable tracking the version of the addon when layout was installed
	E.db.ALUI.install_version = ALUI.Version

	ReloadUI()
end

-- Installer Data
local InstallerData = {
	Title = format("|cff00c0fa%s %s|r", MyPluginName, "Installation"),
	Name = MyPluginName,
	tutorialImage = "Interface\\AddOns\\ElvUI_AlysiaUI\\media\\logo\\AlysiaUI.tga",
	["tutorialImageSize"] = {256, 128},
	["tutorialImagePoint"] = {0, 30},	
	Pages = {
		[1] = function()
			PluginInstallFrame.SubTitle:SetFormattedText("Welcome to the installation for %s.", MyPluginName)
			PluginInstallFrame.Desc1:SetText("This installation process will guide you through a few steps and apply settings to your current ElvUI profile. If you want to be able to go back to your original settings then create a new profile before going through this installation process.")
			PluginInstallFrame.Desc2:SetText("Please press the continue button if you wish to go through the installation process, otherwise click the 'Skip Process' button.")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", InstallComplete)
			PluginInstallFrame.Option1:SetText("Skip Process")			
		end,
		
		[2] = function()
			PluginInstallFrame.SubTitle:SetText("Profile")
			PluginInstallFrame.Desc1:SetText("You can either create a new profile for |cff00c0faAlysiaUI |cffffffff or you can use your current profile")
			PluginInstallFrame.Desc2:SetText("Importance: |cff00c0faLow|r")
			PluginInstallFrame.Desc3:SetText("Your currently active profile is: |cff00c0fa"..ElvUI[1].data:GetCurrentProfile().."|r")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() ProfileCheck(true, "AlysiaUI") end)
			PluginInstallFrame.Option1:SetText("Create New")
			--PluginInstallFrame.Option2:Show()
			--PluginInstallFrame.Option2:SetScript("OnClick", function() ProfileCheck(false) end)
			--PluginInstallFrame.Option2:SetText("Use Current")
		end,
		
		[3] = function()
			PluginInstallFrame.SubTitle:SetText("Layout")
			PluginInstallFrame.Desc1:SetText("This will set |cff00c0faAlysiaUI |cfffffffflayout settings. Please click the button below to proceed.")
			PluginInstallFrame.Desc2:SetText("Importance: |cff00c0faHigh|r")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() ALUI:SetupLayout("dps") end)
			PluginInstallFrame.Option1:SetText("Tank/DD")
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() ALUI:SetupLayout("heal") end)
			PluginInstallFrame.Option2:SetText("Heal")			
		end,
		
		[4] = function()
			PluginInstallFrame.SubTitle:SetText("Theme")
			PluginInstallFrame.Desc1:SetText("This will set the theme for |cff00c0faAlysiaUI |cffffffffunitframes. Please choose a theme below to proceed.")
			PluginInstallFrame.Desc2:SetText("Importance: |cff00c0faMedium|r")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() ALUI:SetupTheme("transparent") end)
			PluginInstallFrame.Option1:SetText("Transparent")
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() ALUI:SetupTheme("class") end)
			PluginInstallFrame.Option2:SetText("Class")
		end,
		
		[5] = function()
			PluginInstallFrame.SubTitle:SetText("Chat")
			PluginInstallFrame.Desc1:SetText("This will set chat windows settings. Please click the button below to proceed.")
			PluginInstallFrame.Desc2:SetText("Importance: |cff00c0faMedium|r")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() ALUI:SetupChat() end)
			PluginInstallFrame.Option1:SetText("Chat")
		end,

		[6] = function()
			PluginInstallFrame.SubTitle:SetText("Addons Profiles")
			PluginInstallFrame.Desc1:SetText("This will set some addons profiles if present to match |cff00c0faAlysiaUI. |cffffffffPlease click the button below to proceed.")
			PluginInstallFrame.Desc2:SetText("Importance: |cff00c0faLow|r")
			PluginInstallFrame.Desc3:SetText("|cff00c0faNotice: |cffffffffIt is recommanded that you backup your WTF folder or some specific Addons settings as they will be overwritten.")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() ALUI:SetupAddons("addon") end)
			PluginInstallFrame.Option1:SetText("Setup Addons")
		end,
		
		[7] = function()
			PluginInstallFrame.SubTitle:SetText("Installation Complete")
			PluginInstallFrame.Desc1:SetText("You have completed the installation process.")
			PluginInstallFrame.Desc2:SetText("Please click the button below in order to finalize the process and automatically reload your UI.")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", InstallComplete)
			PluginInstallFrame.Option1:SetText("Finished")
		end,
		
	},
	StepTitles = {
		[1] = "Welcome",
		[2] = "Profile",
		[3] = "Layout",
		[4] = "Theme",		
		[5] = "Chat",		
		[6] = "Addons",
		[7] = "Installation Complete",
	},
	StepTitlesColor = {1, 1, 1},
	StepTitlesColorSelected = {0, 160/195, 1},
	StepTitleWidth = 200,
	StepTitleButtonWidth = 200,
	StepTitleTextJustification = "CENTER",
}

-- This function holds the options table which will be inserted into the ElvUI config
function ALUI:ConfigTable()
	E.Options.args.ALUI = {
		order = 100,
		type = "group",
		name = format("|cff00c0fa%s|r", MyPluginName),
		args = {
			welcomeheader = {
				order = 1,
				type = "header",
				name = format("|cff00c0fa%s|r", MyPluginName),
			},
			welcomeheaderdesc1 = {
				order = 2,
				type = "description",
				name = "|cff00c0faAlysiaUI |cffffffffby |cff00c0faDlarge|cffffffff, is an external edit for ElvUI designed for 2560x1440 resolution, suited for any spec or role. Please visit |cff00c0fahttps://www.tukui.org/addons.php?id=96 |cfffffffffor updates and requests or bugs. Thank you.",
			},
			welcomeheaderspac1 = {
				order = 3,
				type = "description",
				name = "",
			},
			logoicon = {
				order = 4,
				type = "description",
				name = "",
				image = "Interface\\AddOns\\ElvUI_AlysiaUI\\media\\logo\\AlysiaUI.tga",
				imageWidth = 350,
				imageHeight = 175,
				imageCoords = {0,1,0,1},
			},
			welcomeheaderspac2 = {
				order = 5,
				type = "description",
				name = "",
			},
			installheaeder = {
				order = 6,
				type = "header",
				name = "|cff00c0faInstallation/Update",
			},
			installheaederdesc1 = {
				order = 7,
				type = "description",
				name = "The installation guide should pop up automatically after you login. If you wish to re-run the installation process to reset/update some settings please click the button below.",
			},
			installheaederspac1 = {
				order = 8,
				type = "description",
				name = "",
			},
			installbutton = {
				order = 9,
				type = "execute",
				name = "Install/Update",
				desc = "Run the installation/update process.",
				func = function() E:GetModule("PluginInstaller"):Queue(InstallerData); E:ToggleOptionsUI(); end,
			},
			installheaederspac2 = {
				order = 10,
				type = "description",
				name = "",
			},
			creditsheader = {
				order = 93,
				type = "header",
				name = "|cff00c0faCredits",
			},
			creditsheaderdesc1 = {
				order = 94,
				type = "description",
				name = "Special thanks goes to these amazing people for their help, code or inspiration.",
			},
			creditsheaderdesc2 = {
				order = 95,
				type = "description",
				name = "|cff00c0faBenik, Merathilis, Blazeflack, Blinkii, Skullflower, Kesava, Resike and all others...",
			},
			creditsheaderspac1 = {
				order = 96,
				type = "description",
				name = "",
			},
			contactheader = {
				order = 97,
				type = "header",
				name = "|cff00c0faContact",
			},
			contactheaderdesc1 = {
				order = 98,
				type = "description",
				name = "Discord Tag: |cff00c0fa@Dlarge#9912",
			},
			-- contactheaderdesc2 = {
				-- order = 99,
				-- type = "description",
				-- name = "Email: |cff00c0fadlarge500@gmail.com",
			-- },
		},
	}
	for _, func in pairs(ALUI.Config) do
		func()
	end
end

-- This function will handle initialization of the addon
function ALUI:Initialize()
	E.private.install_complete = E.version
	if IsAddOnLoaded('ElvUI_SLE') then
	local SLEver = GetAddOnMetadata("ElvUI_SLE", "Version")
	E.private.sle.install_complete = SLEver
	end

	if E.private.install_complete and E.db.ALUI.install_version == nil or E.db.ALUI.install_version < ALUI.Version then
		E:GetModule("PluginInstaller"):Queue(InstallerData)
	end
	
	--Insert our options table when ElvUI config is loaded
	EP:RegisterPlugin(addon, ALUI.ConfigTable)

end
-- This function will get called by ElvUI automatically when it is ready to initialize modules
local function CallbackInitialize()
	ALUI:Initialize()
end

-- Register module with callback so it gets initialized when ready
E:RegisterModule(MyPluginName, CallbackInitialize)