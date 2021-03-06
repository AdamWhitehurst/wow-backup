local E, L, V, P, G = unpack(ElvUI);
local ALUI = E:GetModule("AlysiaUI");

function ALUI:LoadSkadaProfile()

SkadaDB = {
	["profiles"] = {
		["Default"] = {
			["modeclicks"] = {
				["Damage"] = 9,
				["Healing"] = 4,
			},
			["themes"] = {
				{
					["titleset"] = true,
					["barheight"] = 22,
					["color"] = {
						["a"] = 0.6,
						["r"] = 0.3,
						["g"] = 0.3,
						["b"] = 0.3,
					},
					["issolidbackdrop"] = false,
					["classicons"] = true,
					["barslocked"] = true,
					["useframe"] = true,
					["enabletitle"] = false,
					["wipemode"] = "",
					["set"] = "current",
					["hidden"] = false,
					["y"] = 28.0000762939453,
					["barfont"] = "Expressway",
					["title"] = {
						["textcolor"] = {
							["a"] = 1,
							["r"] = 0.9,
							["g"] = 0.9,
							["b"] = 0.9,
						},
						["color"] = {
							["a"] = 1,
							["r"] = 0.3,
							["g"] = 0.3,
							["b"] = 0.3,
						},
						["bordercolor"] = {
							["a"] = 1,
							["r"] = 0,
							["g"] = 0,
							["b"] = 0,
						},
						["font"] = "Expressway",
						["fontsize"] = 13,
						["height"] = 20,
						["fontflags"] = "",
						["bordertexture"] = "None",
						["borderthickness"] = 2,
						["texture"] = "Armory",
					},
					["display"] = "bar",
					["barfontflags"] = "OUTLINE",
					["isonnewline"] = false,
					["isusingelvuiskin"] = true,
					["showself"] = true,
					["strata"] = "LOW",
					["point"] = "TOPRIGHT",
					["spellschoolcolors"] = true,
					["barbgcolor"] = {
						["a"] = 0.6,
						["r"] = 0.3,
						["g"] = 0.3,
						["b"] = 0.3,
					},
					["barcolor"] = {
						["a"] = 1,
						["r"] = 0.149019607843137,
						["g"] = 0.149019607843137,
						["b"] = 0.149019607843137,
					},
					["clickthrough"] = false,
					["returnaftercombat"] = false,
					["background"] = {
						["strata"] = "LOW",
						["tile"] = false,
						["color"] = {
							["a"] = 0,
							["r"] = 0,
							["g"] = 0,
							["b"] = 0,
						},
						["bordercolor"] = {
							["a"] = 1,
							["r"] = 0,
							["g"] = 0,
							["b"] = 0,
						},
						["borderthickness"] = 1,
						["height"] = 164.999984741211,
						["bordertexture"] = "None",
						["tilesize"] = 0,
						["texture"] = "ElvUI Blank",
					},
					["reversegrowth"] = false,
					["modeincombat"] = "",
					["roleicons"] = false,
					["barorientation"] = 1,
					["mode"] = "Damage",
					["version"] = 1,
					["bartexture"] = "MaUI10",
					["width"] = 600,
					["textcolor"] = {
						["r"] = 0.9,
						["g"] = 0.9,
						["b"] = 0.9,
					},
					["spark"] = false,
					["buttons"] = {
						["segment"] = true,
						["menu"] = true,
						["mode"] = true,
						["report"] = true,
						["reset"] = true,
					},
					["barwidth"] = 198.999938964844,
					["barspacing"] = 0,
					["fixedbarwidth"] = false,
					["smoothing"] = true,
					["scale"] = 1,
					["snapto"] = true,
					["height"] = 30,
					["classcolorbars"] = true,
					["isusingclasscolors"] = true,
					["barfontsize"] = 12,
					["classcolortext"] = false,
					["x"] = 1504.99993896484,
				}, -- [1]
			},
			["windows"] = {
				{
					["titleset"] = false,
					["barheight"] = 26,
					["barslocked"] = true,
					["y"] = 35.000244140625,
					["x"] = -255.998901367188,
					["name"] = "DPS",
					["barfontflags"] = "OUTLINE",
					["enabletitle"] = false,
					["classcolortext"] = false,
					["barbgcolor"] = {
						["a"] = 0,
						["b"] = 0.133333333333333,
						["g"] = 0.133333333333333,
						["r"] = 0.133333333333333,
					},
					["barcolor"] = {
						["a"] = 0,
						["b"] = 0.133333333333333,
						["g"] = 0.133333333333333,
						["r"] = 0.133333333333333,
					},
					["barfontsize"] = 12,
					["mode"] = "Damage",
					["bartexture"] = "MaUI10",
					["barwidth"] = 252.999786376953,
					["smoothing"] = true,
					["point"] = "BOTTOMRIGHT",
					["classcolorbars"] = true,
					["background"] = {
						["height"] = 190.999984741211,
					},
					["title"] = {
						["color"] = {
							["a"] = 0,
							["b"] = 0.301960784313726,
							["g"] = 0.301960784313726,
							["r"] = 0.301960784313726,
						},
						["font"] = "Expressway",
						["fontsize"] = 12,
						["fontflags"] = "OUTLINE",
						["texture"] = "MaUI10",
					},
					["barfont"] = "Expressway",
				}, -- [1]
				{
					["titleset"] = true,
					["barheight"] = 26,
					["color"] = {
						["a"] = 0.6,
						["b"] = 0.3,
						["g"] = 0.3,
						["r"] = 0.3,
					},
					["issolidbackdrop"] = false,
					["classicons"] = true,
					["barslocked"] = true,
					["useframe"] = true,
					["clickthrough"] = false,
					["wipemode"] = "",
					["set"] = "current",
					["hidden"] = false,
					["y"] = 35.0001106262207,
					["barfont"] = "Expressway",
					["name"] = "Heal",
					["display"] = "bar",
					["height"] = 30,
					["barfontflags"] = "OUTLINE",
					["isusingelvuiskin"] = true,
					["background"] = {
						["color"] = {
							["a"] = 0.4,
							["b"] = 0,
							["g"] = 0,
							["r"] = 0,
						},
						["bordertexture"] = "Blizzard Party",
						["borderthickness"] = 1,
						["tile"] = false,
						["height"] = 191.000122070313,
						["bordercolor"] = {
							["a"] = 1,
							["b"] = 0,
							["g"] = 0,
							["r"] = 0,
						},
						["tilesize"] = 0,
						["texture"] = "Solid",
					},
					["strata"] = "LOW",
					["point"] = "BOTTOMRIGHT",
					["spellschoolcolors"] = true,
					["barbgcolor"] = {
						["a"] = 0,
						["r"] = 0.133333333333333,
						["g"] = 0.133333333333333,
						["b"] = 0.133333333333333,
					},
					["barcolor"] = {
						["a"] = 0,
						["r"] = 0.764705882352941,
						["g"] = 0.12156862745098,
						["b"] = 0.231372549019608,
					},
					["barfontsize"] = 12,
					["returnaftercombat"] = false,
					["title"] = {
						["textcolor"] = {
							["a"] = 1,
							["b"] = 0.9,
							["g"] = 0.9,
							["r"] = 0.9,
						},
						["color"] = {
							["a"] = 1,
							["b"] = 0.3,
							["g"] = 0.3,
							["r"] = 0.3,
						},
						["bordercolor"] = {
							["a"] = 1,
							["b"] = 0,
							["g"] = 0,
							["r"] = 0,
						},
						["font"] = "Expressway",
						["fontsize"] = 12,
						["fontflags"] = "OUTLINE",
						["height"] = 20,
						["borderthickness"] = 2,
						["bordertexture"] = "None",
						["texture"] = "Armory",
					},
					["version"] = 1,
					["snapto"] = true,
					["roleicons"] = false,
					["barorientation"] = 1,
					["mode"] = "Healing",
					["enabletitle"] = false,
					["reversegrowth"] = false,
					["smoothing"] = true,
					["fixedbarwidth"] = false,
					["modeincombat"] = "",
					["buttons"] = {
						["segment"] = true,
						["menu"] = true,
						["mode"] = true,
						["report"] = true,
						["reset"] = true,
					},
					["barwidth"] = 248.000152587891,
					["barspacing"] = 0,
					["bartexture"] = "MaUI10",
					["width"] = 600,
					["textcolor"] = {
						["b"] = 0.9,
						["g"] = 0.9,
						["r"] = 0.9,
					},
					["scale"] = 1,
					["isonnewline"] = false,
					["classcolorbars"] = true,
					["isusingclasscolors"] = true,
					["showself"] = true,
					["classcolortext"] = false,
					["x"] = -4.9986572265625,
				}, -- [2]
			},
			["columns"] = {
				["Healing_Percent"] = false,
				["Damage_Percent"] = false,
				["Damage taken_Percent"] = false,
				["Total healing_Total"] = false,
				["Healing taken_Percent"] = false,
			},
			["versions"] = {
				["1.6.3"] = true,
				["1.6.4"] = true,
				["1.6.7"] = true,
			},
		},
	},
}

end