local E, L, V, P, G = unpack(ElvUI);
local ALUI = E:GetModule("AlysiaUI");

function ALUI:LoadDetailsProfile()



_detalhes_global = {
	["npcid_pool"] = {
		[65414] = "Ätherisches Sha",
		[155634] = "Gebundener Sturm",
		[156146] = "Leerengebundene Schildträgerin",
		[37133] = "Kriegsfürst der Ymirjar",
		[24777] = "Schildwache der Sonnenklingen",
		[133112] = "Hexwaldbinderin",
		[162289] = "Enthaupterin des Schwarzen Imperiums",
		[158706] = "Verderbte Fäulnis",
		[50058] = "Tortuga",
		[157171] = "Heixi der Steinfürst",
		[141303] = "B.U.M.M.B.A.",
		[109826] = "Nachtsüchtiger Hungerleider",
		[158707] = "Leerengeist",
		[159219] = "Umbraseherin",
		[131069] = "Starshine",
		[7444] = "Sauubäär",
		[160755] = "Absorbierender Klumpen",
		[140792] = "Bruchschnabelknochenpicker",
		[145399] = "Wilde Sternruferin",
		[162291] = "Zuckender Schrecken",
		[112386] = "Twirhp",
		[92423] = "Theryssia",
		[136186] = "Spiritualistin der Gezeitenweisen",
		[118017] = "Zar'teth",
		[18315] = "Astraler Theurg",
		[65415] = "Leerenhaftes Sha",
		[37134] = "Jägerin der Ymirjar",
		[133116] = "Holzbruchköter",
		[150520] = "Gepresster Schrott",
		[76556] = "Grunzer des Eisernen Marsches",
		[145402] = "Rasendes Wildherz",
		[130303] = "Hexendoktorin Unbugu",
		[134141] = "Rudelmeister der Borstenrücken",
		[126720] = "Grobian der Eisenfluträuber",
		[136189] = "Der Pilzkönig",
		[94984] = "Verdammnisheulerin der Scharrfurien",
		[145915] = "Dunkle Waldläuferin der Kaldorei",
		[43917] = "Felsbohrer",
		[28297] = "Neerd",
		[89098] = "Myrmidone der Hassnattern",
		[154106] = "Kwall",
		[135167] = "Spektrale Berserkerin",
		[160249] = "Stacheltentakel",
		[161273] = "Abgründige Brut",
		[137215] = "Abgrundzelot",
		[91402] = "Königin Azshara",
		[134144] = "Lebendige Strömung",
		[129025] = "Duellantin der Schwertwasserkorsaren",
		[147965] = "Instabiles Azerit",
		[152572] = "Azeritleviathan",
		[113413] = "Höllischer Belagerungsbrecher",
		[54795] = "Springbrunnen des Lichts <Zeitlinienversetzter Priester>",
		[54923] = "Ewiger Hüter",
		[17356] = "Kriechender Schlamm",
		[135169] = "Totem des Geistentzugs <Blutverschworener Schänder>",
		[131586] = "Bankettbediensteter",
		[127490] = "Kürassier Valyri",
		[103176] = "Zermalmer der Mo'arg",
		[133122] = "Kriegerin der Nazmani",
		[43662] = "Entfesselter Erdwüter",
		[131587] = "Bezirzter Hauptmann",
		[117509] = "Huschender Dämon",
		[81422] = "Scharfschütze des Schwarzfelsklans",
		[126723] = "Urschnappkiefer",
		[36880] = "Verwesender Koloss",
		[147968] = "Aufgebrachtes Azerit",
		[144897] = "Guerilla von Hohlauge",
		[138755] = "Sklaventreiberin der Eisenfluträuber",
		[120837] = "Klingenwutvollstrecker",
		[144898] = "Kapitän Naschaschuk",
		[89101] = "Prinz Ozeanus",
		[118022] = "Höllenchaosbringer",
		[138244] = "Dornholzbollwerk",
		[140292] = "Schneepelzalpha",
		[103178] = "Plünderer der Schleimschnauzen",
		[162303] = "Schwarmwächter der Aqir",
		[138245] = "Behexter Armbrustschütze",
		[79632] = "Grunzer der Grom'kar",
		[139269] = "Düsterschrecken",
		[117255] = "Kriegshetzer der Teufelsskorn",
		[161280] = "Aqirskarabäus",
		[125957] = "Besessene Dockarbeiterin",
		[146436] = "Unbekannt",
		[24715] = "Hochexplosives Schaf <Zelfan>",
		[103179] = "Geomant der Schleimschnauzen",
		[162305] = "Herzdurchbohrer der Aqir",
		[138247] = "Marodeur der Eisenfluträuber",
		[146949] = "Stotternder Fleischfetzer",
		[163841] = "Unbekannt",
		[25227] = "Gruftkriecher",
		[25419] = "Kochender Geist",
		[17357] = "Kriechender Schlammling",
		[123399] = "Bezauberte Matrosin",
		[140808] = "Schockkiefer",
		[145927] = "Sternenruferin Ellana",
		[128774] = "Rostfellwolf",
		[56589] = "Bomber Ga'dok",
		[153094] = "Räuber der Zan-Tien",
		[117769] = "Teufelsgeborener Zauberbrecher",
		[101645] = "Grausteingräber",
		[36626] = "Fauldarm",
		[130822] = "Betörerin der Zeth'jir",
		[126983] = "Harlan der Schmierige",
		[153095] = "Rufer der Zan-Tien",
		[129031] = "Manifestation des Hasses",
		[161286] = "Dunkler Ritualist",
		[5829] = "Snort der Spucker",
		[731] = "Marduk",
		[27531] = "Eisiger Monstrositätenangreifer",
		[130823] = "Gezeitenmaid der Zeth'jir",
		[159751] = "Aufrührerischer Spulenträger",
		[136205] = "Eiszahnheuler",
		[153097] = "Leerengebundener Schamane",
		[43537] = "Erdformer des Steinernen Kerns",
		[134158] = "Schattengeborener Champion",
		[146955] = "Goblinpionier",
		[149515] = "Berserker der Eidgebundenen",
		[145932] = "Celestra Mondschein",
		[36627] = "Modermiene",
		[3] = "Fleischfresser",
		[61453] = "Mu'Shiba",
		[37011] = "Die Verdammten",
		[127497] = "Aschenwindwärter",
		[153099] = "Beschützer der Baruk",
		[124170] = "Fallhafenschwein",
		[138255] = "Aschenwindkundschafterin",
		[109326] = "Leysteinspinnling",
		[145934] = "Ivan der Wahnsinnige",
		[93714] = "Blog der Fahle",
		[59534] = "Saavik",
		[161291] = "Tiefwasserbeschwörer",
		[88084] = "Plünderer der Hassnattern",
		[117005] = "Klingenwirker der Zornwächter",
		[129802] = "Erdwüter",
		[157709] = "Dreliana",
		[101649] = "Frostsplitter",
		[154638] = "Großkaiserin Shek'zara",
		[122636] = "Blutknochenpickerin",
		[37012] = "Uralter Skelettsoldat",
		[159758] = "Aufrührerischer Maschinist",
		[129547] = "Prügler der Schwarzzahnvandalen",
		[137748] = "Grotesker Knecht",
		[151569] = "Tiefseeschlund",
		[90389] = "Unbekannt",
		[3475] = "Katze",
		[90901] = "Rudelführer Miaul",
		[28108] = "Knochensensenverheerer",
		[139285] = "Schauderschuppe der Giftige",
		[147987] = "Plünderer der Grauflossen",
		[136214] = "Windsprecherin Heldis",
		[149011] = "Leichenfresser der Verlassenen",
		[150547] = "Grunzling der Schrottknochen",
		[86039] = "Gogluk",
		[90390] = "Tyndrissen",
		[153107] = "Schattenwandler der Dokani",
		[62351] = "Kriegstreiber von Salyis",
		[139287] = "Sägezahn",
		[139799] = "Lehrling von Eisenkiel",
		[88855] = "Athissa",
		[117776] = "Hexenmeister des Schattenrats",
		[126734] = "Echo von Shadra",
		[139800] = "Sturmbeschwörerlehrling",
		[95766] = "Wahnsinniger Klingenschnabel",
		[112402] = "Oku",
		[26125] = "Batbreaker",
		[135706] = "Plünderer der Bilgeratten",
		[129550] = "Samtpfote der Bilgeratten",
		[129806] = "Greifende Dornen",
		[161812] = "Gesichtsloser Verheerer",
		[130318] = "Prophet der Zackenkämme",
		[118289] = "Wachsame Maid",
		[139290] = "Maison der Tragbare",
		[127503] = "Aufseher Korgus",
		[136731] = "Kroluskschlachtkriecher",
		[161813] = "Assassine der K'thir",
		[120593] = "Himmelsschrecken der Nazmani",
		[88089] = "Verzauberin der Hassnattern",
		[109332] = "Vorfahre der Bluttotems",
		[101398] = "Psychoschrecken <Злойвинс-ЧерныйШрам>",
		[135197] = "Aasfressender Finsterrachen",
		[152089] = "Thrall",
		[132126] = "Goldene Priesterin",
		[161815] = "Leerrufer der K'thir",
		[91417] = "Arbeiter der Wellenskorn",
		[134174] = "Schattengeborener Hexendoktor",
		[159768] = "Deresh aus dem Nichts",
		[156185] = "Leerenverzerrter Neferset",
		[129552] = "Monzumi",
		[137758] = "Drustrufer",
		[97816] = "Zelot der Teufelsskorn",
		[151579] = "Schildgenerator",
		[95769] = "Gebrochener Kreischer",
		[112405] = "Vhell",
		[88091] = "Athissa",
		[139807] = "Firmenfeldmesser",
		[129553] = "Dinomantin Kish'o",
		[62865] = "Tier <Macorc-Mannoroth>",
		[21263] = "Techniker der Grauherzen",
		[118804] = "Domatrax",
		[139808] = "Firmentrampel",
		[43286] = "Kristallsplitter",
		[59794] = "Unterbrecher der Krik'thik",
		[162331] = "Verderbtes Neuron",
		[112406] = "Erbarmungslose Gladiatorin Saifu",
		[139809] = "Firmenakquisespezialistin",
		[117269] = "Kil'jaeden",
		[129810] = "Rubinzehentarantel",
		[89116] = "Athissa",
		[159261] = "Luftabschreckungseinheit JK-3",
		[139298] = "Nad el Kissen",
		[153119] = "Geringer Leerenelementar",
		[149536] = "Schattenjäger der Eidgebundenen",
		[95771] = "Verheererin der Schreckensseele",
		[159262] = "Aufrührerischer Kriecher",
		[135204] = "Spektraler Hexpriester",
		[139811] = "Firmenstellvertreterin",
		[148513] = "Unbekannt",
		[109336] = "Dämonenversklavter Zornfürst",
		[117782] = "Blutmagierin der Eredar",
		[139812] = "Firmenproduzent",
		[95772] = "Rasende Nachtkralle",
		[120598] = "Xeth'tal",
		[88094] = "Seeskrog",
		[152098] = "Azerittröpfchen",
		[24207] = "Armee der Toten <Tyres-Ysera>",
		[161312] = "Zerschmetterndes Tentakel",
		[137766] = "Gefangener Zandalari",
		[131112] = "Angreifer der Schwertwasserkorsaren",
		[131624] = "Ravasaurus von Xibala",
		[156706] = "Sonnenpriester der Amathet",
		[16593] = "Raufbold der Zerschmetterten Hand",
		[120087] = "Kill Credit: Fire",
		[138279] = "Adhara Weiß",
		[112409] = "Krapfenkerl",
		[21136] = "Ewige Chronomantin",
		[121623] = "Federmähnen",
		[130325] = "Tiefseezwingzange",
		[97821] = "Schwurbinder der Teufelsskorn",
		[138792] = "Täuscher Tom",
		[59412] = "Faustkloppaufspieker",
		[160291] = "Aschenwandererassassine",
		[160803] = "Solarkugel",
		[119576] = "Finsteres Scheusal",
		[91423] = "Hügelpirscherworg",
		[138281] = "Gesichtsloser Verderber",
		[112410] = "Schreckenspfote",
		[125207] = "Starrender Kreischer",
		[97822] = "Garzareth",
		[139818] = "Sicherheitsoffizier Durk",
		[160805] = "Unbekannt",
		[103453] = "Rektor der Verlassenen",
		[137771] = "Düstere Beschwörerin",
		[154663] = "Gnomfressender Tropfen",
		[120601] = "Magraloth",
		[129559] = "Duellantin der Schwertwasserkorsaren",
		[132653] = "Brutling von Ji'arak <Rallepala-Ravencrest>",
		[11658] = "Geschmolzener Riese",
		[154152] = "Anodisierter Wachposten",
		[59157] = "Granitqilen",
		[134701] = "Blutbildnis",
		[63508] = "Xuen <Bilovar-Rexxar>",
		[78116] = "Wasserelementar",
		[99359] = "Moderherzbewahrer",
		[137773] = "Ku'shif der Grausame",
		[120602] = "Kar'aaz",
		[124953] = "Helena Sanftmut",
		[113436] = "Gigantischer Belagerungsbrecher",
		[125977] = "Totem der Wiederbelebung",
		[154154] = "Honighauer",
		[73766] = "Leerenwolf <Unbekannt>",
		[123418] = "Champion der Teufelsbelagerung",
		[16594] = "Akolyth des Schattenmondklans",
		[99360] = "Garststachelblüte",
		[37531] = "Tierführer der Frostwächter",
		[88099] = "Hakenklinge der Salzaugen",
		[152108] = "Kelfinnenspäherin",
		[21137] = "Ewiger Assassine",
		[144942] = "Funkenbot",
		[130073] = "Ausguck der Borstenrücken",
		[138288] = "Geist aus der Tiefe",
		[159275] = "Portalhüterin",
		[74023] = "Kommandant Vorka",
		[140336] = "Nachtschuppenwindnatter",
		[145967] = "Tiefenrochen",
		[112414] = "Darragh",
		[88100] = "Küstensprinter der Salzaugen",
		[117021] = "Wyrmzungenextraktor",
		[117277] = "Alchemistin Korlya",
		[144944] = "Dürstender Blutsauger",
		[154670] = "Unbekannt",
		[93987] = "Apothekerin Fluchherz",
		[159789] = "Leerenrückstände",
		[140338] = "Nestwächter Jinka'lo",
		[119837] = "Einflößer der Teufelsskorn",
		[37532] = "Frostschwingenwelpe",
		[95779] = "Eiterpelzgrizzly",
		[112415] = "Vulajin",
		[88101] = "Wellenschamane der Salzaugen",
		[117278] = "Teufelsfeuerverbrenner",
		[157231] = "Shad'har der Unersättliche",
		[130075] = "Geomant der Borstenrücken",
		[93988] = "Bezauberte Überreste",
		[106785] = "Meerwassertoxin",
		[123421] = "Verdammnisruferin der Teufelsbelagerung",
		[56472] = "Duftender Lotus",
		[125469] = "Knochenwerfer der Schmutzsteine",
		[144948] = "Lederschwingenjäger",
		[149555] = "Unbekannt <Naneria-Thrall>",
		[126237] = "Gezeitenlauerer",
		[138294] = "Teufelslohenwichtel",
		[126749] = "Schreckenszeckenbeißer",
		[151603] = "Statue",
		[106786] = "Sklave der Bittergischt",
		[123422] = "Champion der Teufelsbelagerung",
		[144949] = "Wipfelpirscher",
		[37533] = "Raufang",
		[139319] = "Schlickpest",
		[125214] = "Krubbs",
		[136248] = "Unbekannt",
		[157235] = "Instabiler Leerenpirscher",
		[25489] = "Knubbel",
		[17427] = "Bogenschütze der Zerschmetterten Hand",
		[106787] = "Sklave der Bittergischt",
		[140344] = "Himmelsviper",
		[153141] = "Totem des endlosen Hungers <Leerengebundener Schamane>",
		[99365] = "Pestherzpirscher",
		[128286] = "Verfluchter Räuber",
		[103972] = "Verräter des Dämonenpakts",
		[79658] = "Arkananomalie",
		[139321] = "Braedan Weißwall",
		[56473] = "Fliegender Schnee",
		[140345] = "Sturmkreisch",
		[123714] = "Hügelsaurolisk",
		[145976] = "Steinhautbulle",
		[114210] = "Verdammniswache",
		[123647] = "Saurolisk",
		[155702] = "Unbekannt",
		[37022] = "Verseuchte Monstrosität",
		[97796] = "Unbekannt",
		[157238] = "Prophet Skitra",
		[99366] = "Pestherzbeschwörer",
		[145977] = "Kolossale Steinhaut",
		[37662] = "Sinistrer Kommandant",
		[159286] = "Jojo",
		[89350] = "Oublion",
		[148025] = "Kommandant Ral'esh",
		[154051] = "Dunkelsprecher der K'thir",
		[161334] = "Knirschender Schrecken",
		[11659] = "Geschmolzener Zerstörer",
		[130335] = "Splittplattenkristallauge",
		[114211] = "Teufelshund",
		[134717] = "Umbra'rix",
		[140789] = "Funkenelementar",
		[131646] = "Unbekannt",
		[1130] = "Unbekannt",
		[161335] = "Leerenschrecken",
		[111652] = "Teufelsvernichter",
		[79148] = "Geisterhafter Perlzahn",
		[140335] = "Nachtschuppenkreischer",
		[133181] = "Ritualistin der Nazmani",
		[151610] = "Wächter der Amathet",
		[135365] = "Matrone Alma",
		[145975] = "Steinhautbock",
		[109349] = "Schleierschattenläufer",
		[133183] = "Knorriges Ungetüm",
		[118051] = "Kriegsbullennovize",
		[114212] = "Teufelswache",
		[130848] = "Runenkrieger",
		[135231] = "Spektraler Schläger",
		[82220] = "Leerenzerrissener Geist",
		[132160] = "Rankenmeisterin Schnarf",
		[140992] = "Leichenplatzer",
		[89846] = "Hauptmann Volo'ren",
		[79149] = "Geisterhaftes Perlzahnkalb",
		[37663] = "Sinistrer Adliger",
		[71480] = "Sun Zartherz",
		[151612] = "Sonnenpriester der Amathet",
		[136181] = "Vulkan",
		[132161] = "Rankenmeisterin Orgstein",
		[144958] = "Grunzerin der Eidgebundenen",
		[157755] = "Drohne der Vil'thik",
		[59804] = "Unbekannt <Verderbter Taran Zhu>",
		[97808] = "Höllischer Belagerungsbrecher",
		[130849] = "Gefallener Verteidiger",
		[151613] = "Antipersoneneichhörnchen <Tüftlerin von Mechagon>",
		[135745] = "Schieferkrabbler",
		[132162] = "Rankenmeisterin Grunz",
		[127778] = "Sturmbinder der Kao-Tien",
		[148663] = "Dunkelwirkermystiker",
		[128290] = "Spross von Hir'eek",
		[119397] = "Aggonar",
		[93444] = "Distelblattdorntänzer",
		[135234] = "Verstorbener Mastiff",
		[80174] = "Eber",
		[140353] = "Hellschuppenechsenzahn",
		[26322] = "Serpy",
		[140985] = "Ätzender Wurm",
		[140787] = "Glutelementar <Planktonius-Thrall>",
		[158781] = "Zerfetzte Psyche <[*] Zerfledderte Psyche>",
		[130850] = "Kanone der Eisenfluträuber",
		[135235] = "Spektrale Bestienmeisterin",
		[119077] = "Beschützerin des Hains der Träume",
		[140354] = "Hellschuppenwindnatter",
		[155699] = "Spritzpirscher",
		[37955] = "Blutkönigin Lana'thel",
		[54687] = "Zeitlinienversetzter Fußsoldat",
		[37664] = "Sinistre Erzmagierin",
		[138819] = "Marodeur der Blutgischt",
		[136697] = "Die Frostjägerin",
		[152128] = "Orgozoa",
		[140355] = "Hellschuppenkreischer",
		[161342] = "Verstörende Galle",
		[130083] = "Fluchgeformter Verheerer",
		[85294] = "Gorenbeschützer",
		[157256] = "Flitzer der Aqir",
		[159295] = "Gerber Pang",
		[150190] = "Fliegende Unterdrückungseinheit JK-8",
		[127268] = "Kränklicher Schnappkiefer",
		[159309] = "Schröpfender Parasit",
		[19668] = "Schattengeist <Amanera-Blackrock>",
		[135895] = "Lodernder Funke",
		[97259] = "Flammende Hydrabrut",
		[159790] = "Leerenkügelchen",
		[159296] = "Cullen Hammerstirn",
		[145324] = "Imperialer Verteidiger",
		[163308] = "Geisttrinker",
		[138226] = "Gezeitenweise Küstenstade",
		[97068] = "Sturmdrache",
		[18317] = "Astraler Priester",
		[91115] = "Gezeitenungetüm",
		[136363] = "Schock",
		[61339] = "Orakel der Glintrok",
		[135239] = "Spektrale Hexendoktorin",
		[37025] = "Stinki",
		[24723] = "Selin Feuerherz",
		[136178] = "Bruder Drees",
		[135771] = "Brigantin der Eisenfluträuber",
		[120103] = "Teufelsflammenhöllenbestie",
		[37665] = "Sinistrer Leutnant",
		[71475] = "Rook Steinzeh",
		[135240] = "Seelenessenz",
		[156227] = "Bewohner von Neferset",
		[54557] = "Bernglaskrabbe",
		[155629] = "Sturmbinderin der Azsh'ari",
		[117800] = "Il'ruxx",
		[118056] = "Gerissene Ausgeburt",
		[17694] = "Dunkelzauberer des Schattenmondklans",
		[110378] = "Drugon der Frostblütige",
		[135241] = "Brandschatzer der Bilgeratten",
		[138823] = "Wegfinderin der Blutgischt",
		[131677] = "Runenweberin des Herzbanns",
		[17621] = "Heidnischer Wächter",
		[153203] = "Kolbenkracher",
		[120153] = "Äonischer Verteidiger",
		[156652] = "Akolythin von N'Zoth",
		[148010] = "Räuber der Dunkelschuppen",
		[129062] = "Sonnenbringer Firasi",
		[128596] = "Missgestalteter Knecht",
		[163306] = "Geisttrinker",
		[157253] = "Ka'zir",
		[138846] = "Berngeflügelter Gedankensänger",
		[118057] = "Krakenbrut",
		[138821] = "Kriegsmaid der Blutgischt",
		[61340] = "Verhexer der Glintrok",
		[26643] = "Moppi",
		[152135] = "Leerenentstellter Spruchwirker",
		[140362] = "Schimmerflügel",
		[157254] = "Tek'ris",
		[162306] = "Drohne der Aqir",
		[161370] = "Schwarmwache der Zara'thik",
		[158790] = "Schwarzwächter Rhothkozz",
		[138827] = "Bodalf der Starke",
		[113149] = "Teufelswache",
		[152136] = "Azeritverschlinger",
		[129575] = "Entlarvte Hexe",
		[157255] = "Unbekannt",
		[130087] = "Eisenfluträuber",
		[138848] = "Klingentänzer Zorlak",
		[162886] = "Stockwache der Zara'thik",
		[118570] = "Kreischende Höllenfledermaus",
		[135245] = "Verwüster der Bilgeratten",
		[132194] = "Hexwolfalpha",
		[152649] = "Ergebener der Amathet",
		[123689] = "Talestra die Grässliche",
		[95073] = "Unheilschwinge der Verlassenen",
		[56636] = "Kommandant Ri'mok",
		[162887] = "Tiefensprecher der Zara'thik",
		[138340] = "Ritualistin der Gezeitenweisen",
		[129064] = "Phönixmagier Rhydras",
		[12076] = "Lavaelementar",
		[152162] = "Leerenentstellter Himmelsstürmer",
		[76597] = "Wolf",
		[56862] = "Betrunkener Raufbold der Ho-zen",
		[101679] = "Vergifterin der Schreckensseele",
		[138318] = "Leutnant Watt",
		[159305] = "Wahnsinniger Rekrut",
		[151627] = "Herr Richter",
		[135759] = "Totem des Erdwalls",
		[127737] = "Akolyth von Tizeja",
		[38453] = "Urspiritus",
		[145485] = "Fußsoldat der Seuchenwache",
		[11668] = "Feuerlord",
		[41762] = "Unbekannt",
		[71479] = "Hee Samtfuß",
		[129065] = "Phönixmagierin Ryleia",
		[104751] = "Vortos",
		[126969] = "Trothak",
		[144974] = "Alchemistin der Verlassenen",
		[58910] = "Ebenenfalke",
		[118523] = "Jägerin Kasparian",
		[154700] = "Luftvollstrecker XZ-9",
		[37038] = "Rachsüchtiger Fleischernter",
		[130307] = "Instabiler Taifun",
		[135761] = "Totem des Donners",
		[136273] = "Unbekannt",
		[144975] = "Lanzerin der Verlassenen",
		[47649] = "Erblühen <Böó-Kazzak>",
		[152097] = "Grollendes Azerit",
		[72791] = "Anhaltende Verderbnis",
		[134738] = "Hakbi der Auferstandene",
		[113148] = "Teufelshund",
		[131667] = "Seelengebundener Goliath",
		[132179] = "Tosender Strom",
		[144976] = "Todeswache der Verlassenen",
		[145488] = "Alchemist der Seuchenwache",
		[141905] = "Zebast der Ewiglebende",
		[57119] = "Ho-zen-Verwüster",
		[134739] = "Läuterungskonstrukt",
		[131156] = "Koloss von Nazwatha",
		[37028] = "Pirscherin der Kor'kron",
		[66106] = "Ho-zen-Strauchdieb",
		[144977] = "Meisterschütze der Verlassenen",
		[153740] = "Schuppenwache der Zanj'ir",
		[130635] = "Steinzorn",
		[134638] = "Kriegsfürst Zothix",
		[134768] = "Sandhuscher der Unerbittliche",
		[127254] = "Spross von Gonk",
		[135764] = "Totem der Explosion",
		[97081] = "König Björn",
		[161411] = "Gedankengriff",
		[87369] = "Atemlose Seele",
		[24664] = "Kael'thas Sonnenwanderer",
		[89653] = "Gangamesh",
		[147026] = "Gallenspucker der Verlassenen",
		[140398] = "Zeritarj",
		[135765] = "Totem des Stroms",
		[132182] = "Auditor Dolp",
		[103218] = "Betrüger der Verlassenen",
		[91430] = "Klagende Banshee",
		[101886] = "Höllenwärter Xaphan",
		[81155] = "Reiffrostelementar <Krangak-Aman'thul>",
		[79672] = "Schildträger der Grom'kar",
		[60447] = "Saboteur der Krik'thik",
		[104754] = "Teufelskondensatorwichtel",
		[148563] = "Herzogin Todessang von Frost",
		[128285] = "Unbekannt",
		[119100] = "Golgranoth",
		[129527] = "Bukanier der Bilgeratten",
		[142950] = "Bürgerin von Theramore",
		[138838] = "Mantis der Zara'thik",
		[127799] = "Ehrenwache der Dazar'ai",
		[69947] = "Kobe",
		[95030] = "Unheilschwinge der Verlassenen",
		[153171] = "Unbekannt",
		[117838] = "Quetschfaust",
		[37035] = "Bezwinger der Kor'kron",
		[134232] = "Auftragsmörder",
		[72276] = "Amalgam der Verderbnis",
		[155272] = "Schwarzwasserorakel",
		[117040] = "Gelgothar",
		[109106] = "Vadis",
		[157267] = "Entflohene Mutation",
		[139395] = "Sumpfhüter der Morastlauerer",
		[137816] = "Schädlingsbekämpfer MK. II",
		[131666] = "Dornformerin des Zirkels",
		[138840] = "Pfähler der Zara'thik",
		[61444] = "Ming der Verschlagene",
		[131674] = "Bittertidengischtschwanz",
		[134725] = "Schläger der Knochenritzer",
		[59808] = "Shado-Pan-Sturmbringer",
		[145495] = "Mrrgl-gurk der Nachtflut",
		[128302] = "Erwachter Wächter",
		[99922] = "Unbekannt",
		[138841] = "Schlachtsänger der Zara'thik",
		[151638] = "Rasender Erdwüter",
		[104756] = "Skola Großschwert",
		[40229] = "Brühender Felselementar",
		[122924] = "Eroberer der Eredar",
		[130094] = "Seerufer der Gezeitenweisen",
		[149007] = "Pfähler der Dunkelspeere",
		[130606] = "Fluchgeformter Verheerer",
		[147032] = "Nathanos Pestrufer",
		[151639] = "Rasender Schleifwurm",
		[131676] = "Bittertidenguillotine",
		[154744] = "Toxische Monstrosität",
		[78651] = "Knochenhacker der Zerschmetterten Hand",
		[48391] = "Krieger des Drachenmals",
		[120113] = "Zornige Teufelsglut",
		[106317] = "Totem des Sturms",
		[147033] = "Brynja",
		[151640] = "Defekter Schrottbot",
		[125232] = "Käpt'n Mu'kala",
		[148569] = "Wellenbrecherelementar",
		[132701] = "T'zane",
		[153208] = "Onyxkriegsschlange",
		[154200] = "Tiefengeborener Binder",
		[118322] = "Teufelsgeborene Bestraferin",
		[134753] = "Verfluchter Dornrücken",
		[103932] = "Alter Grubengänger",
		[135773] = "Mastiff der Eisenfluträuber",
		[156760] = "Stillwasserkrokilisk",
		[115507] = "Rebell der Nachtsüchtigen",
		[135699] = "Aschenwindkerkermeister",
		[37149] = "Nekrolyth der Kor'kron",
		[162903] = "Unbekannt",
		[159320] = "Amathet",
		[157156] = "Unbekannt",
		[104758] = "Unbekannt",
		[98813] = "Blutwitternder Teufelshund",
		[129367] = "Orkan der Bilgeratten",
		[136828] = "Kriegerin der Dorrzweige",
		[115010] = "Unbekannt",
		[134239] = "Hexruferin des Zirkels",
		[159321] = "Khateph",
		[131168] = "Blutdurchströmter Peitscher",
		[37031] = "Orakel der Kor'kron",
		[37666] = "Sinistrer Taktiker",
		[119603] = "Teufelsseelenwärter",
		[43960] = "Verstärkung der Steintroggs",
		[89673] = "Verhörer Arev'naal",
		[134240] = "Hexenherrin des Zirkels",
		[120627] = "Lodernder Wichtel",
		[159303] = "Monströses Ungetüm",
		[113145] = "Verdammniswache",
		[42810] = "Kristallbrutriese",
		[54691] = "Zeitlinienversetzte Zauberin",
		[153692] = "Amniotische Eruption <Zoatroid>",
		[137824] = "Bogenlicht",
		[134241] = "Bürger von Brennadam",
		[151133] = "Hati",
		[59426] = "Bopper",
		[135777] = "Haudrauf der Eisenfluträuber",
		[152669] = "Leerenkügelchen",
		[161371] = "Bernformer der Zara'thik",
		[83538] = "Kommandant des Kriegshymnenklans",
		[137825] = "Schneesturz",
		[111197] = "Anax",
		[120628] = "Virulenter Wichtel",
		[151646] = "Aufgeladener Schrottbot",
		[103931] = "Wellenruferin der Sashj'tar",
		[132195] = "Hexwolffährtenleser",
		[134271] = "Sonnenläufer Ordel",
		[130098] = "Unbekannt",
		[18982] = "Düsterjaguar",
		[138338] = "Reanimierter Wächter <Gefallener Todessprecher>",
		[79693] = "Silberblatturtum",
		[139362] = "Unbekannt <Geistrufer der Eidgebundenen>",
		[37032] = "Verteidiger der Kor'kron",
		[152671] = "Wekemara",
		[144993] = "Rasender Distelbär",
		[128051] = "Gruesh",
		[37544] = "Bastionsgargoyle",
		[120899] = "Kul'krazahn",
		[120629] = "Dunkelfeuerunhold",
		[156130] = "Niederer Zoatroid",
		[131685] = "Runenjüngerin",
		[152672] = "Tidenwoger",
		[97083] = "König Ranulf",
		[36873] = "Hohepriesterin Silthera",
		[133733] = "Mondsichel Pelani",
		[97851] = "Erwählter der Teufelsskorn",
		[142947] = "Bürger von Theramore",
		[151649] = "Verteidigungsbot Mk. I",
		[134775] = "Erdenruferin Gulgort",
		[152673] = "Wellenwoger",
		[59811] = "Instabile Energie",
		[115767] = "Herrin Sassz'ine",
		[133734] = "Runenschreiber Lusaris",
		[120374] = "Zerstörer der Teufelswache",
		[142948] = "Bürgerin von Theramore",
		[139365] = "Beat",
		[131687] = "Tambano",
		[152674] = "Erneuernder Born",
		[97084] = "König Tor",
		[157793] = "Soldat der Zara'thik",
		[137830] = "Bleicher Schlinger",
		[156795] = "Informantin des SI:7",
		[130868] = "Runenbollwerk",
		[131670] = "Herzbannrankenwinderin",
		[37033] = "Herbeirufer der Kor'kron",
		[152675] = "Brandender Wellenwächter",
		[144997] = "Gurin Steinbinder",
		[89086] = "Kriegsherr Parjesh",
		[37545] = "Bastionsdiener",
		[21723] = "Gonzo",
		[134760] = "Dunkelsprecher Jo'la",
		[25760] = "Räuber der Kvaldir",
		[152164] = "Rasender Elementar",
		[121399] = "Inquisitor Sebilus",
		[54693] = "Zeitlinienversetzter Scharfschütze",
		[145510] = "Marinesoldat der Bohrinselflotte",
		[151604] = "Anodisierte Problemauflöserin",
		[122670] = "Wächter der Nekropole",
		[142951] = "Bürger von Theramore",
		[155139] = "Arkane Verschmelzung",
		[138866] = "Mack",
		[148582] = "Sturmgebundener Wächter",
		[107323] = "Schnatternder Teufel",
		[98368] = "Geisterhafter Beschützer",
		[133738] = "Astralitin Visara",
		[120376] = "Initiandin der Teufelsskorn",
		[17881] = "Aeonus",
		[151654] = "Deutz Mechatuner",
		[96574] = "Sturmgeschmiedeter Wächter",
		[160868] = "Hetzer Nir'verash",
		[145000] = "Lanzerkommandantin Blaer",
		[101437] = "Brennende Geode",
		[129371] = "Springflutschredderin",
		[134251] = "Seneschall M'bara",
		[142953] = "Bürger von Theramore",
		[118841] = "Leerensklave",
		[37034] = "Templerin der Kor'kron",
		[152679] = "Reißende Strömung",
		[157286] = "Saba-tok",
		[145513] = "Knochensägerin der Bohrinselflotte",
		[37546] = "Rasende Monstrosität",
		[144994] = "Kriechermine",
		[151144] = "Hati",
		[147561] = "Seuchenverbreiter der Verlassenen",
		[140260] = "Runenhufrenner",
		[98555] = "Verdorrter Schlurfer",
		[97087] = "Champion der Valarjar",
		[101438] = "Ekelsplitterbrocken",
		[141931] = "Kriegsherr Dagu",
		[155616] = "Schläger der Zanj'ir",
		[159335] = "Rasende Verteidigerin der Huojin",
		[151657] = "Bombenpanzer",
		[145002] = "Verwundeter Grunzer",
		[157795] = "Bürger von Ramkahen",
		[43438] = "Corborus",
		[161895] = "Ding aus dem Jenseits",
		[105826] = "Vorbote des Alptraums",
		[11982] = "Magmadar",
		[138316] = "Ziege",
		[151658] = "Schreitpanzer",
		[134840] = "Unterboss der Knochenritzer",
		[152682] = "Prinz Vortran",
		[153194] = "Unbekannt",
		[152196] = "Ungeprüfter der Amathet",
		[136297] = "Vergessener Bewohner",
		[155780] = "Unbekannt <Aldrantiss>",
		[151147] = "Hati",
		[151659] = "Raketenpanzer",
		[127289] = "Sauroliskenzähmer Mugg",
		[152683] = "Wütender Gewittersturm",
		[103231] = "Grimmiger Inquisitor",
		[91202] = "Sturmschwingendrache",
		[37547] = "Luftschiffrumpf",
		[103929] = "Wellenbrecher der Sashj'tar",
		[138863] = "Schwester Martha",
		[151660] = "Müllschmeißer der Schrottknochen",
		[129337] = "Säbelhauer",
		[103235] = "Zuchtmeister Schmutzbart",
		[153196] = "Unbekannt",
		[130105] = "Sprecher der Gluthauer",
		[158315] = "Auge des Chaos",
		[126522] = "Schwester Früh",
		[151149] = "HeftigDeftig",
		[109131] = "Lodernder Teufelskristall",
		[127290] = "Mugg",
		[114709] = "Schmutzfürst",
		[122963] = "Rezan",
		[97093] = "Shara Teufelshauch",
		[137841] = "Anstürmender Familiar",
		[159767] = "Sanguimar",
		[79686] = "Silberblatturtum",
		[151662] = "Gezeitenbinderin Sarjezi",
		[103245] = "Besudler der Verlassenen",
		[152686] = "Donnervortex",
		[145008] = "Geistruferin der Eidgebundenen",
		[112445] = "<AFK>Johnny Imba",
		[137842] = "Grotesker Knecht",
		[126523] = "Schwester Mooring",
		[159341] = "Jinho der Windbrecher",
		[118845] = "Leerrufer",
		[143985] = "Absorb-o-Tron <Rabten-Rexxar>",
		[155271] = "Abyssischer Speerjäger",
		[119597] = "Champion der Teufelsbelagerung",
		[91204] = "Langaxt der Wellenskorn",
		[141938] = "Aschenwindheckenschützin",
		[161244] = "Blut des Verderbers",
		[120637] = "Brennendes Scheusal",
		[89834] = "Uralter Foliant",
		[135796] = "Käpt'n Bleifaust",
		[98370] = "Geisterhafter Berater",
		[120820] = "Fixierter Verderber",
		[137332] = "Skorpashidünenschere",
		[141939] = "Aschenwindkundschafterin",
		[157368] = "Velinaria",
		[18331] = "Astraler Dunkelzauberer",
		[118846] = "Leerenausstoß",
		[138822] = "Harpunierin der Blutgischt",
		[123453] = "Zauberin der Faulschuppen",
		[144987] = "Schattenjägerin Mutumba",
		[91205] = "Sturmgeborener der Drekirjar",
		[132578] = "Qroshekx",
		[149644] = "Shadow",
		[120638] = "Teufelsflammenplünderer",
		[135774] = "Erdgebundener Diener",
		[43014] = "Unbekannt",
		[107567] = "Schildwache von Suramar",
		[117567] = "Beschwörerin der Eredar",
		[140432] = "Klippenhufspringer",
		[153741] = "Fallensteller der Zanj'ir",
		[112369] = "Wodyn",
		[159345] = "Andrew Vestal",
		[162933] = "Gedankenernter",
		[115008] = "Vorhut der Legion",
		[98884] = "Bezirztes Urhorn",
		[145013] = "Goblintechnikerin",
		[136915] = "Heiler der Sethrak",
		[162417] = "Donnerknall",
		[128610] = "Schlund von Shul-Nagruth",
		[138871] = "Ernie",
		[134796] = "Königsdornzange",
		[98366] = "Geisterhafter Gefolgsmann",
		[145041] = "Flinkschweifpirscher",
		[153204] = "Kolbenkracher",
		[157811] = "Lilliam Spindelfunks",
		[137848] = "Seeminenblindgänger",
		[103227] = "Wachsschürfer",
		[91130] = "Magula",
		[139384] = "Unbekannt",
		[119104] = "Blutsänger der Teufelstotems",
		[123455] = "Stacheliger Tangklacker",
		[123450] = "Tiefenjäger der Faulschuppen",
		[157812] = "Billibub Zahnrad",
		[87368] = "Ertrunkener Magister",
		[150646] = "Junge Schildkröte",
		[159348] = "David Harrington",
		[120896] = "Dunkler Peiniger",
		[15650] = "Therus <Thepayn-Rexxar>",
		[114932] = "Tiefseemonstrosität",
		[91756] = "Ewiger Wächter",
		[157813] = "Glimm Springspross",
		[137850] = "Verseuchter Unhold",
		[146552] = "Gezeitenwirkerin von Kul Tiras",
		[159349] = "Tania Sommerbrise",
		[110416] = "Wichtlingplünderer",
		[119105] = "Kriegstreiber der Teufelstotems",
		[115502] = "Rebellin der Nachtgeborenen",
		[119602] = "Finsteres Scheusal",
		[114996] = "Gebrandmarkt",
		[137851] = "Verseuchte Essenz",
		[146553] = "Schläger von Kul Tiras",
		[159350] = "Himmelstänzer Shun",
		[139387] = "Nassa der Kaltblütige",
		[56706] = "Bombardierer der Krik'thik",
		[129599] = "Messerwerferin der Schwertwasserkorsaren",
		[145018] = "Seuchenspezialist der Verlassenen",
		[11663] = "Heiler der Flammenschürer",
		[113987] = "Teufelssogbrutmutter",
		[134269] = "Mahna Flammenwisper",
		[136158] = "Archivar der Gezeitenweisen",
		[127040] = "Zelotin von Zalamar",
		[109100] = "Boshafter Plünderer",
		[109641] = "Arkanor Prime",
		[136829] = "Axtwerferin der Dorrzweige",
		[112372] = "Weizi",
		[158328] = "Il'gynoth",
		[134270] = "Geistwandlerin Quura",
		[79692] = "Silberblatturtum",
		[151674] = "Stinkfellhopfling",
		[121154] = "Schuftender Sammler",
		[129600] = "Salzschuppe der Bilgeratten",
		[145020] = "Dolizit",
		[117827] = "Großinquisitor",
		[153255] = "Bernheiler der Vil'thik",
		[114244] = "Magiertöterin der Eredar",
		[145487] = "Füsilier der Seuchenwache",
		[118851] = "Leerenweberin der Eredar",
		[156818] = "Furorion",
		[152699] = "Leerengebundener Berserker",
		[136831] = "Hexendoktorin der Dorrzweige",
		[54432] = "Murozond",
		[60208] = "Hopfling",
		[142462] = "Bezauberte Matrosin",
		[159354] = "Unbekannt",
		[151676] = "Stinkfellrandalierer",
		[125250] = "Uralter Kieferknirscher",
		[129601] = "Harpunier der Schwertwasserkorsaren",
		[136832] = "Berserker der Dorrzweige",
		[140997] = "Severus der Ausgestoßene",
		[21339] = "Hassschürerin des Echsenkessels",
		[150653] = "Schwarzwasserungetüm",
		[85034] = "Unbekannt <Portalmeisterin des Schattenmondklans>",
		[139392] = "Saurok der Morastlauerer",
		[152138] = "Überladungsstation",
		[132226] = "Kralpflegerin der Borstenrücken",
		[136833] = "Giftpriester der Dorrzweige",
		[127844] = "Gefräßiger Yeti",
		[150142] = "Müllschmeißer der Schrottknochen",
		[128578] = "Zujothgul",
		[157333] = "Finsterstimmenkultistin",
		[139393] = "Gelegewächter der Morastlauerer",
		[217] = "Giftweberspinne",
		[129602] = "Vollstrecker der Eisenfluträuber",
		[56747] = "Gu Wolkenschlag",
		[56875] = "Verwüster der Krik'thik",
		[150143] = "Häcksler der Schrottknochen",
		[136347] = "Initiandin der Gezeitenweisen",
		[159357] = "Nadina Sternstein",
		[151679] = "Stinkfellklopfer",
		[115014] = "Teufelsseelenwichtel",
		[98890] = "Schlummer",
		[132740] = "Giftschuppenhydra",
		[99402] = "Rüstmeister Talastis",
		[132178] = "Totem der Verbrennung <Totemmacherin Jash'ga>",
		[140443] = "Moschusflankenstürmer",
		[159358] = "Braumeisterin Linshi",
		[151680] = "Gelbzahn",
		[96247] = "Ekelsplitterkriecher",
		[152704] = "Krabbelnde Verderbnis",
		[145026] = "Flinkschweifräuber",
		[109640] = "Seuchenbringerin der Schreckensreiter",
		[133765] = "Herzbannschwester",
		[138830] = "Sternengeleiteter Thorvast",
		[134789] = "Monströse Dornzange",
		[139396] = "Wächter der Morastlauerer",
		[160383] = "Türsteuerung",
		[111176] = "Wellenwirkerin der Zithreenai",
		[153217] = "Seegischthamsterer",
		[108020] = "Sengender Blick",
		[150146] = "Schamane der Schrottknochen",
		[115795] = "Abyssalpirscher",
		[159360] = "Tivilix Knallwandler",
		[139397] = "Schleicher der Morastlauerer",
		[126991] = "Wachsame Stachelratte",
		[127530] = "Gefräßige Möwe",
		[56748] = "Schaumiger Bierlementar <Schaumiger Bierlementar>",
		[157825] = "Rasender Peiniger",
		[90616] = "Aufseher der Nachtsüchtigen",
		[89678] = "Hakenklinge der Salzaugen",
		[121400] = "Ankläger Gnazh",
		[139398] = "Assassine der Morastlauerer",
		[157337] = "Spross von Shad'har",
		[111177] = "Myrmidone der Zithreenai",
		[132744] = "Frostschuppenhydra",
		[159297] = "Bero",
		[130824] = "Seeruferin der Zeth'jir",
		[18341] = "Pandemonius",
		[138887] = "Mystiker der Blutgischt",
		[139399] = "Schläger der Morastlauerer",
		[135816] = "Finsteres Scheusal",
		[148613] = "Kommandant Breitseite",
		[21212] = "Lady Vashj",
		[119279] = "Wächter der Blaukerzen",
		[146054] = "Hochexplosive Bombe",
		[112419] = "Kuglaroth",
		[127488] = "Aschenwindflammenschleuderin",
		[139400] = "Flussrufer der Morastlauerer",
		[135817] = "Zephyr",
		[148614] = "Kanonier von Kul Tiras",
		[132746] = "Frostschuppenbrutmutter",
		[95310] = "Hexenwaldgreisin",
		[110896] = "Uralter Vernichter",
		[128582] = "Schwester Wittwer",
		[120816] = "Fluchrufer der Teufelsflossen",
		[157229] = "Lebendiges Miasma",
		[135818] = "Windstoßsoldat",
		[136330] = "Seelendornen <[*] Seelendornen>",
		[79354] = "Häscher des Schattenmondklans",
		[56877] = "Raigonn",
		[21215] = "Leotheras der Blinde",
		[154758] = "Toxische Monstrosität",
		[110384] = "Dämonensklavenhöllenbestie <Xândrilâ>",
		[136665] = "Aschenwindkundschafter",
		[135819] = "Lebender Tornado",
		[82514] = "Dunkelkrallenjunges",
		[140938] = "Quako",
		[128071] = "Gezähmte Kriegsbrut",
		[91472] = "Distelblattplage",
		[120393] = "Belagerungsmeister Voraan",
		[142986] = "König Varian Wrynn",
		[129095] = "Prügler der Schwarzzahnvandalen",
		[54446] = "Flammenkernfunken",
		[140359] = "Donnerfalkenverschlinger",
		[151709] = "Aufgeladener Schrottwelpe",
		[11664] = "Elite der Flammenschürer",
		[158343] = "Organ der Verderbnis",
		[131053] = "Hauptmann Jalazko",
		[27611] = "Seucheneruptor",
		[151689] = "Klauenfuß der Hüpfer",
		[119114] = "Initiand der Teufelstotems",
		[111180] = "Die Goroboros",
		[145035] = "Flinkschweifläufer",
		[153737] = "Lehrling der Shirakess",
		[150154] = "Knochenbeißersaurolisk",
		[128584] = "Vugthuth",
		[125992] = "Lauerndes Rachenscheusal",
		[109351] = "Schleierstreuner",
		[108848] = "Geschändeter Wassergeist",
		[80468] = "Maschinist des Schwarzfelsklans",
		[161416] = "Schattenformer der Aqir",
		[153738] = "Unterwerfer der Shirakess",
		[140986] = "Ätzender Gräber",
		[150667] = "Aufgerüsteter Wachposten",
		[136664] = "Knochenschnabelgeier",
		[160826] = "Stockwache Naz'ruzek",
		[119115] = "Initiand der Teufelstotems",
		[132240] = "Verfluchter Falke",
		[104691] = "Unbekannt",
		[153739] = "Myrmidone der Zanj'ir",
		[91474] = "Distelblattgrobian",
		[120395] = "Eroberer der Eredar",
		[54191] = "Auferstandener Ghul",
		[129097] = "Klopper der Schwarzzahnvandalen",
		[156299] = "R'khuzj der Unergründliche",
		[72279] = "Rudiment des Stolzes",
		[140943] = "Aufgebrachte Kröte",
		[76886] = "Späherin des Eisernen Marsches",
		[105807] = "Alptraumeichhörnchen",
		[162380] = "Giftblutskorpid",
		[155276] = "Berstender Klippenfisch",
		[163978] = "Finsterstimmenkultist",
		[115021] = "Makabrer Plünderer",
		[111182] = "Schlachtmaid der Zithreenai",
		[145039] = "Schneepirscher",
		[128074] = "Hir'eek",
		[124654] = "Kroluskdünenkriecher",
		[128586] = "Bezaubertes Sturmgewitter",
		[79702] = "Keli'dan der Zerstörer",
		[96091] = "Teufelskugel",
		[127060] = "Blutkrogg",
		[152718] = "Alleria Windläufer",
		[95221] = "Verrückter Henryk",
		[137362] = "Wildholzsklaventreiber",
		[150159] = "König Gobbamak",
		[102392] = "Totem der Resonanz",
		[37125] = "Hauptmann Rupert",
		[139410] = "Visz die stille Klinge",
		[134284] = "Gefallener Todessprecher",
		[132244] = "Kiboku",
		[119629] = "Lord Hel'nurath",
		[21218] = "Ehrenwache der Vashj'ir",
		[150160] = "Schikanierer der Schrottknochen",
		[138387] = "Fetza",
		[79703] = "Cat",
		[139411] = "Vielfang",
		[146900] = "Schlurfender Scharfschütze",
		[130116] = "Schäumendes Gezeitenblut",
		[129867] = "Bombardierender Zeppelin",
		[145554] = "Basiskäpt'n Kurbelknall",
		[127794] = "Frostkrätze",
		[134293] = "Azeritdurchströmte Schlacke",
		[106321] = "Totem des Rückenwinds",
		[56832] = "Klingenrückenschnapper",
		[129571] = "Unbekannt",
		[111184] = "Grausteinsplitterwirker",
		[127820] = "Späher Skrasniss",
		[134139] = "Schreintempler",
		[69943] = "Ben",
		[134294] = "Wütender Wasserelementar",
		[101943] = "Stoßtruppsoldat der Teufelswache",
		[112368] = "Anenga",
		[135830] = "Sturmzorn",
		[152722] = "Gefallene Leerensprecherin",
		[109386] = "Unbekannt",
		[134782] = "Mordschnabel",
		[107300] = "Seeskrogzeichnung",
		[117279] = "Eindämmungspylon",
		[140988] = "Stahlfetz",
		[139414] = "Morastpriester Vassz",
		[114923] = "Splitterknochenskelett",
		[98900] = "Wyrmzungenschwindler",
		[95061] = "Großer Feuerelementar <Mcsun-Tirion>",
		[66652] = "Geringe unstete Energie <Sha der Gewalt>",
		[117286] = "Schrecken der Teufelsschwingen",
		[134296] = "Lucille",
		[37813] = "Todesbringer Saurfang",
		[143510] = "Pollenbedeckte Drohne",
		[50354] = "Havak",
		[96853] = "Der Kerzenkönig",
		[129869] = "Hungriger Wühler",
		[161938] = "Gelehrte der Forscherliga",
		[150165] = "Schleimelementar",
		[63279] = "Unbekannt",
		[142999] = "Rhonin",
		[73465] = "Unbekannt",
		[101414] = "Schleicher der Salzschuppen",
		[55601] = "Weiser von Fe-Feng",
		[145047] = "Seuchenschleim",
		[17695] = "Auftragsmörder der Zerschmetterten Hand",
		[145065] = "Flügge Nachtschwinge",
		[134298] = "Azeritdurchströmter Elementar",
		[120646] = "Unbekannt",
		[135322] = "Die Goldschlange",
		[135834] = "Üble Wolke",
		[122990] = "Gallenschleimgolem",
		[129870] = "Ebermeister der Borstenrücken",
		[145560] = "Magnetarm",
		[146072] = "Schreddertechniker",
		[130638] = "Zangenkieferkrokilisk",
		[143001] = "Herbeiruferin der Kirin Tor",
		[110675] = "Donnerschlange Nalak'Ra",
		[136249] = "Wächterelementar",
		[140442] = "Moschusflankenyak",
		[138793] = "Zuchtmeister Burlok",
		[159224] = "Gryth'ax der Henker",
		[150168] = "Toxische Monstrosität",
		[118819] = "Teufelsklingenverwüster",
		[143002] = "Herbeirufer der Kirin Tor",
		[54322] = "Deth'tilac",
		[129359] = "Sägezahnhai",
		[132253] = "Ji'arak",
		[109396] = "Auge des Inquisitors",
		[11665] = "Lavavernichter",
		[150169] = "Giftschleicher",
		[130639] = "Zangenkiefermampfer",
		[116206] = "Zornwächter der Teufelsseele",
		[127056] = "Nachtjägertrainerin von Zalamar",
		[158158] = "Schmiedewache Hurrul",
		[140444] = "Moschusflankenbulle",
		[158376] = "Psychus",
		[161943] = "Unbekannt",
		[141980] = "Alchemistin Pitz",
		[95832] = "Schildmaid der Valarjar",
		[144849] = "Späher der Dunkelschuppen",
		[150698] = "Zähflüssiges Öl",
		[127486] = "Aschenwindoffizierin",
		[103210] = "Verteidigerin der Verlassenen",
		[109397] = "Belphiar",
		[133279] = "Akkordarbeiter der Nazmani",
		[41146] = "Strauchdieb der Frostmähnen",
		[130640] = "Zangenkiefersägezahn",
		[130896] = "Unbekannt <Käpt'n Raoul>",
		[36612] = "Lord Mark'gar",
		[109807] = "Wilder Nachtsäbler",
		[80181] = "Portalmeisterin des Schattenmondklans",
		[120932] = "Brennender Wächter",
		[161945] = "Leerenportal",
		[95577] = "Leerententakel",
		[95833] = "Hyrja",
		[131585] = "Bezauberte Wache",
		[77414] = "Schummerblüte",
		[118050] = "Akolythennovize",
		[102430] = "Teerspuckerschnecke",
		[153244] = "Auslöschungselementar",
		[153756] = "Mechamotorrad",
		[135893] = "Brennende Glutwache",
		[130641] = "Sturmsangvollstrecker",
		[130897] = "Hauptmann Klingenstachel",
		[135329] = "Matrone Brünndel",
		[146607] = "Omgar Unheilsbogen",
		[136353] = "Kolossales Tentakel",
		[119788] = "Gefräßiger Aaspirscher",
		[103512] = "Pioniersprengladung",
		[161229] = "Giftweber der Aqir",
		[95834] = "Mystiker der Valarjar",
		[133842] = "Schlachtkriecher Karkithiss",
		[17952] = "Dunkelwasserkrokilisk",
		[131538] = "Herzbannschwester",
		[148639] = "Verhüllter Saboteur",
		[90134] = "Llothiengrizzly",
		[130130] = "Hungrige Kampfsau",
		[141985] = "Herold Zaxuthril",
		[117325] = "Teufelsgeborene Bannzauberin",
		[143009] = "Daelin Prachtmeer",
		[122964] = "Dunkler Totenbeschwörer",
		[160413] = "Serpent",
		[97825] = "Spalter der Teufelsskorn",
		[161437] = "Explosiver Skarabäus",
		[146652] = "Gepanzerte Todeswache",
		[130025] = "Schläger der Eisenfluträuber",
		[120405] = "Unheilschwinge",
		[147105] = "Zu Eis erstarrt",
		[155807] = "Wahnsinnige der Quel'dorei",
		[90660] = "Brennende Ausgeburt",
		[1195] = "Waldlauerer",
		[58803] = "Verbleibender Hass",
		[133285] = "Flussgrundjäger",
		[158367] = "Unbekannt",
		[114263] = "Odyn",
		[130899] = "Kommandant Wermut",
		[122965] = "Vol'kaal",
		[17879] = "Chronolord Deja",
		[134838] = "Strauchdieb der Knochenritzer",
		[145059] = "Listige Nachtschwinge",
		[26711] = "Verletztes Mammut",
		[112365] = "Schlachti",
		[134310] = "Herzbannjüngerin",
		[150195] = "Gnomfressender Schleim",
		[139429] = "Steingebundener Krieger",
		[129364] = "Peter der Leisetreter",
		[140453] = "Dornenfellherdenführer",
		[27539] = "Eisige Nekromantin",
		[56884] = "Verderbter Taran Zhu",
		[159266] = "Portalmeister",
		[152755] = "Blutschwarmfrenzy",
		[131812] = "Seelenbetörerin des Herzbanns",
		[117088] = "Arachniarch Bybee",
		[109154] = "Koloss der Hassnattern",
		[107098] = "Blendwyrm",
		[145061] = "Krächzende Nachtschwinge",
		[43430] = "Berserker des Steinernen Kerns",
		[91486] = "Sturmschwingendrache",
		[80175] = "Elekk",
		[154058] = "Leerenkügelchen",
		[120371] = "Höllenglutwichtel",
		[124185] = "Golrakahn",
		[12100] = "Lavahäscher",
		[129877] = "Bezauberter Hase",
		[153027] = "Verteidiger der Zanj'ir",
		[158371] = "Zardeth der Schwarzen Klaue",
		[42808] = "Schinder des Steinernen Kerns",
		[131085] = "Gezeitenlord der Zeth'jir",
		[122967] = "Priesterin Alun'za",
		[104289] = "Dunkle Waldläuferin Alina",
		[59700] = "Nordwindhabicht",
		[140968] = "Granatrückenschläger",
		[154569] = "Bindender Seetang",
		[43704] = "Terrorwolf",
		[129526] = "Deckschrubber der Bilgeratten",
		[116569] = "Wogenheiler der Reißmäuler",
		[130581] = "Sandauge",
		[129366] = "Bukanier der Bilgeratten",
		[140457] = "Dornenfellgraser",
		[95270] = "Bezirzter Bär",
		[130143] = "Unheilsdorn",
		[152009] = "Defekter Schrottbot",
		[138369] = "Fußbombenrandalierer",
		[126807] = "Gehorsamer Akkordarbeiter",
		[122968] = "Yazma",
		[81711] = "Ritualistin des Schattenmondklans",
		[140458] = "Dornenfellbulle",
		[89] = "Höllenbestie <Matte-Kazzak>",
		[42789] = "Magmalord des Steinernen Kerns",
		[158374] = "Gedankenpforte",
		[150696] = "Tiefenrochenbruthüter",
		[134828] = "Aqualing",
		[100446] = "Jägerin der Wellenskorn",
		[50359] = "Urgolax",
		[151713] = "Unbekannt",
		[129879] = "Spalterin der Eisenfluträuber",
		[11666] = "Feuergänger",
		[158375] = "Verderbertentakel",
		[134317] = "Abscheulicher Familiar",
		[2043] = "Siam",
		[122969] = "Hexendoktorin der Zanchuli",
		[152233] = "Sonnenberührter Ritualist",
		[159417] = "Wahnsinniger Messerdreher",
		[95072] = "Unbekannt <Yânkeê-Blackrock>",
		[126562] = "Reizbares Dimetrodon",
		[128344] = "Blutbauchflügler",
		[128600] = "Todesgebundener Schlurfer",
		[12018] = "Majordomus Exekutus",
		[122922] = "Verdammnisrufer der Teufelsbelagerung",
		[96608] = "Schwarzklauenworg",
		[129624] = "Holzzahnlauerer",
		[119140] = "Ritualistin An'xa",
		[141485] = "Himmelsreiterin der Eisenfluträuber",
		[112363] = "Spoogledorf",
		[18394] = "Astrales Gespenst <Astraler Zauberbinder>",
		[120676] = "Eitriger Alchemist",
		[122970] = "Schattenklingenpirscher",
		[123226] = "Hafendrescher",
		[107102] = "Teufelssogspinnling",
		[157354] = "Vexiona",
		[62005] = "Tier",
		[128345] = "Todverfluchter Schrecken",
		[134320] = "Treulose Verheererin",
		[112477] = "Yorg Düstermund",
		[88871] = "Speerfuchtler der Salzaugen",
		[129369] = "Eisenfluträuber",
		[100960] = "Übler Pilz <Moderherzbewahrer>",
		[90380] = "Verdorrter Manawüter",
		[133753] = "Unbekannt",
		[105823] = "Alptraumranke",
		[134321] = "Treulose Aggressorin",
		[98542] = "Amalgam der Seelen",
		[122971] = "Moloch der Dazar'ai",
		[114534] = "Helhund",
		[140464] = "Dressierter Papagei",
		[161451] = "Manipulator Yar'shath",
		[159173] = "Unbekannt <Ka'zir>",
		[154285] = "Rachsüchtige Hochgeborene",
		[95842] = "Donnerrufer der Valarjar",
		[88870] = "Wegelagerer der Hassnattern",
		[109803] = "Leynarbenkrabbler",
		[129370] = "Wellenformerin der Eisenfluträuber",
		[111591] = "Thassarian",
		[88932] = "Der Goldene Xue",
		[149679] = "Flachwasserhai",
		[46910] = "Rembrandt",
		[97890] = "Unbekannt",
		[159405] = "Aqirskarabäus",
		[122972] = "Augur der Dazar'ai",
		[148144] = "Croz Blutzorn",
		[126841] = "Haihappen",
		[119645] = "Xorothianischer Teufelsritter",
		[110660] = "Zhu vom Ewigen Stein",
		[133812] = "Zanxib",
		[95843] = "König Haldor",
		[112479] = "Schwurbinder der Teufelsskorn",
		[119654] = "Glutschuppenwärter",
		[135860] = "Einfallender Grunzer",
		[37030] = "Primalist der Kor'kron",
		[58807] = "Rudiment des Hasses",
		[56764] = "Verzehrendes Sha",
		[130395] = "Kriegsrufer der Borstenrücken",
		[61338] = "Schleicher der Glintrok",
		[153541] = "Sklavenmeister Ul'rok",
		[122973] = "Bekenner der Dazar'ai",
		[148146] = "Zul'aki der Kopfjäger",
		[89731] = "Teufelssucher",
		[153265] = "Schnellklinge der Vil'thik",
		[110340] = "Myonix",
		[120158] = "Flüchtige Verderbnis",
		[142516] = "Bruder Hain",
		[112480] = "Diener von Skovald",
		[139720] = "Schredderpilot",
		[129372] = "Schwarzteerbomber",
		[110570] = "Gespenst der Shao-Tien",
		[90659] = "Himmelsschrecken der Legion",
		[94490] = "Unbekannt <Sturmbö>",
		[162480] = "N'Zoth der Verderber",
		[30739] = "Champion des Kriegshymnenklans",
		[134839] = "Leerenkugel",
		[147989] = "Lebendiges Hüterfragment",
		[99358] = "Moderherzdryade",
		[132280] = "Krächz",
		[153267] = "Schwarmwächter der Vil'thik",
		[66668] = "Bastet",
		[156869] = "Ausgegrabener Hüter",
		[152657] = "Tatt der Knochenkauer",
		[112481] = "Zelot der Teufelsskorn",
		[102253] = "Demolierer des Tiefgesteins",
		[129373] = "Rottenkommandantin der Dockhunde",
		[152756] = "Dolchzahnschrecken",
		[153268] = "Schwarmverheerer",
		[101476] = "Geschmolzene Kohlhaut <Dargrul>",
		[61337] = "Eisenhaut der Glintrok",
		[130653] = "Zerstörungswütige Pionierin",
		[130909] = "Eitrige Made",
		[109394] = "Folterer der Inquisition",
		[1863] = "Dislith",
		[137671] = "Unbekannt",
		[66413] = "Hefiger Braubierlementar",
		[136848] = "Wahrsagerin der Sandskalpe",
		[161217] = "Krabbler der Aqir",
		[138970] = "Rachsüchtiger Geist",
		[97803] = "Seuchenwichtel",
		[118759] = "Auferstandene Bogenschützin",
		[121184] = "Herrin Sassz'ine",
		[156853] = "Sonnenpriester der Amathet",
		[157365] = "Knisternder Pirscher <Ra-den>",
		[133307] = "Matrone Kerridwen",
		[137914] = "Grotesker Schlächter",
		[134331] = "König Rahu'ai",
		[138938] = "Seebrecher Skoloth",
		[98406] = "Glutsplitterskorpion",
		[65402] = "Gurthanschnellklinge",
		[156854] = "Zelot der Amathet",
		[157366] = "Leerenjäger <Ra-den>",
		[61240] = "Einstechen",
		[137915] = "Goblinschredder",
		[134332] = "Käpt'n Grünbauch",
		[117991] = "Gelthrak",
		[97260] = "Arkane Hydrabrut",
		[157121] = "Ekashim",
		[156855] = "Lichtklinge der Amathet",
		[128361] = "Hexverrückter Großhirsch",
		[11667] = "Flammenwächter",
		[129252] = "Gladiator der Laugenschuppen",
		[134333] = "Dorp",
		[136416] = "Wilde Klingenklaue",
		[59801] = "Windformer der Krik'thik",
		[140334] = "Nachtschuppenechsenzahn",
		[148666] = "Eiserner Kriegsgronn",
		[161463] = "Tiefenrufer Velshen",
		[137405] = "Packender Schrecken",
		[28001] = "Schreckenssäbler",
		[138429] = "Gezeitenbinderin der Hämeflossen",
		[159416] = "Stacheliges Tentakel",
		[77942] = "Ursturmelementar <Hograth-Rexxar>",
		[133357] = "Gezähmter Blutschwärmer",
		[156857] = "Ausgegrabene Hüterin",
		[140989] = "Knochenschuppenwurm",
		[56890] = "Spitzel der Krik'thik",
		[130400] = "Zermalmer der Eisenfluträuber",
		[101991] = "Alptraumbewohner",
		[114532] = "Seelenbinder der Knochensprecher",
		[151739] = "Ma'haat der Unbeugsame",
		[119139] = "Steinblutbasilisk",
		[148668] = "Tobender Felsstampfer",
		[140990] = "Knochenschuppenspeier",
		[153025] = "Emorneth",
		[146109] = "Mitternachtsstampfer",
		[128609] = "Tentakel von Shul-Nagruth",
		[137937] = "Einfallender Holzzahn",
		[151740] = "Defekter Schrottwelpe",
		[148008] = "Grunzer der Eidgebundenen",
		[152764] = "Oxidierte Egelbestie",
		[140991] = "Markbohr",
		[127757] = "Reanimierte Ehrenwache",
		[17252] = "ShaaVegen",
		[138432] = "Gezeitenherrin Nessa",
		[139473] = "Steinmaschinist Nu-Xin",
		[124287] = "Knochenpickerhyäne",
		[139968] = "Verderbter Wellenspringer",
		[148670] = "Donnernder Kletterer",
		[161467] = "Portalhüterin Jin'tashal",
		[118801] = "Wichtel",
		[60090] = "Cho Cho der Verruchte",
		[134338] = "Vollstrecker der Gezeitenweisen",
		[17892] = "Unbekannt",
		[139457] = "Steingebundener Qilen",
		[145346] = "Kommandant der Kil'karrok",
		[160462] = "Akolyth von N'Zoth",
		[153278] = "Kunchongzerstörer",
		[149004] = "Aufseherin der Shirakess",
		[136183] = "Molluskelprotz",
		[61242] = "Eisenhaut der Glintrok",
		[81774] = "Verletzter Pirscher",
		[122980] = "Auferstandener Zombie",
		[160463] = "Hervorruferin des Schwarzen Imperiums",
		[148672] = "Zähe Garnreiterin",
		[150976] = "Aufgeladener Schrotthund",
		[150464] = "Schimmerschuppenaal",
		[131076] = "Raubvogel",
		[134340] = "Gebundene Meereswoge",
		[120677] = "Verfluchter Plünderer",
		[120933] = "Lebende Teufelslohe",
		[117094] = "Malorus der Seelenwärter",
		[152768] = "Siechstachelskorpid",
		[61946] = "Harthaksturmrufer",
		[109672] = "Sturmschnabel",
		[146114] = "Windsog",
		[118374] = "Hauptmann Yathae Mondstreich",
		[108145] = "Trommelklauer der Blaukerzen",
		[139460] = "Steingebundener Erdweber",
		[135894] = "Feuerelementar",
		[138254] = "Pulverschütze der Eisenfluträuber",
		[136901] = "Salzzahnsaurolisk",
		[145603] = "Goblinernter",
		[118757] = "Auferstandener Späher",
		[159165] = "Matrone Vi Vinh",
		[100363] = "Sigurd der Riesentöter",
		[135366] = "Brandstifter der Schwarzzahnvandalen",
		[139973] = "Unbekannt",
		[156865] = "Ausgegrabener Hüter",
		[20196] = "Vestige",
		[158929] = "Serenka",
		[130404] = "Ungezieferfänger",
		[61243] = "Gekkan",
		[159425] = "Okkulte Schattenheilerin",
		[61499] = "Ring aus Feuer",
		[148164] = "Bummschussspezialist",
		[156866] = "Ra-den",
		[153299] = "Knochenbrecher Szun",
		[87671] = "Mitternachtkaliri",
		[133832] = "Flutling",
		[21138] = "Unbekannt",
		[120679] = "Knochenzermalmer der Mo'arg",
		[2630] = "Totem der Erdbindung <Fauli-Tirion>",
		[117096] = "Trankmeister Glug",
		[136837] = "Giftmischer Ant'su",
		[21220] = "Priesterin des Echsenkessels",
		[88859] = "Elya Azurmond",
		[146118] = "Territorialer Nadelrücken",
		[130661] = "Erdformer der Venture Co.",
		[114537] = "Helya",
		[159164] = "Bonni Chang",
		[144071] = "Wellenformerin der Eisenfluträuber",
		[79342] = "Ritualistin des Schattenmondklans",
		[158140] = "Rasende Ratte",
		[78830] = "Ritualistin des Blutenden Auges",
		[146119] = "Nadelpfeilbestie",
		[128614] = "Todesgebundener Drescher",
		[120680] = "Schläger der Mo'arg",
		[116841] = "Piranhado",
		[135882] = "Ogarth Axtfall",
		[117353] = "Einflößer der Teufelstotems",
		[136906] = "Major Alan Hawkins",
		[137944] = "Seichtwasserstachelaal",
		[133835] = "Wilder Blutschwärmer",
		[158917] = "Rasende Wächterin der Tushui",
		[114538] = "Geistfetzer der Kvaldir",
		[110699] = "Schläger der Rakeeshi",
		[154113] = "Ernteschwärmerin <Honighauer>",
		[525] = "Räudiger Wolf",
		[127847] = "Aasfresser",
		[122851] = "Umbralbogenschützin",
		[133836] = "Reanimierter Wächter",
		[131084] = "Gezeitenwächter der Zeth'jir",
		[36678] = "Professor Seuchenmord",
		[151752] = "Leerenschwarm",
		[148169] = "Zertifizierter Sprengstoffexperte",
		[106356] = "Herbeizauberin der Empyreumgesellschaft",
		[137152] = "Betriebswachhund",
		[126056] = "Totemmacherin Jash'ga",
		[119435] = "Dämonische Mentorin",
		[96028] = "Azsharas Zorn",
		[114539] = "Riffbeschwörer der Kvaldir",
		[110700] = "Dämonenversklavter Hofierer",
		[139980] = "Taja der Gezeitenheuler",
		[146872] = "Kachota der Verbannte",
		[112393] = "Astrylian",
		[152319] = "Krebs",
		[158937] = "Murphy Wildmoor",
		[11988] = "Golemagg der Verbrenner",
		[27749] = "Rekrutin der Horde",
		[151754] = "Leerenspuk",
		[135886] = "Todeswache der Verlassenen",
		[129640] = "Knurrender Dockhund",
		[56766] = "Unstete Energie",
		[149707] = "Korallenaal",
		[109933] = "Richterin der Inquisition",
		[130664] = "Goldmantelstecher",
		[91114] = "Gezeitenungetüm",
		[151755] = "Schemenhund",
		[141059] = "Zorngroll der Mümmlermalmer",
		[95052] = "Seuchenbringer der Schreckensreiter",
		[139710] = "Orcpeon",
		[91250] = "Wolfgang",
		[146125] = "Magmeister Sprengzisch",
		[122850] = "Umbralwache",
		[71543] = "Immerseus",
		[120939] = "Arglistiger Inquisitor",
		[12259] = "Gehennas",
		[160970] = "Vuk'laz der Erdbrecher",
		[21221] = "Bestienbändiger des Echsenkessels",
		[153804] = "Zitterstacheleindringling",
		[158411] = "Instabiler Diener",
		[151806] = "Lichtklinge der Amathet",
		[114548] = "Moderseelenriese",
		[135377] = "Xuxuga die Brandschatzerin",
		[119148] = "Dämonenversklavte Todeswache",
		[66169] = "Derwisch der Farraki",
		[152283] = "Tobender Schrottbot",
		[43586] = "Opalsteinwerfer",
		[150222] = "Schmierer",
		[118016] = "Thal'xur",
		[124294] = "Hochexplosive Verwüstergeschosse",
		[108655] = "Brut von Serpentrix <Teiia-Blackmoore>",
		[117101] = "Übler Teufelsspinner",
		[136402] = "Ur'zul <Fabeliera>",
		[132819] = "Rostpelzjunges",
		[81014] = "Unbekannt",
		[162508] = "Wächter des Anubisath",
		[97906] = "Runengebundener Wicht",
		[121058] = "Seelenschinder der Zornwächter",
		[59410] = "Faustkloppzerkracher",
		[130302] = "Berserkerin Zar'ri",
		[136403] = "Schrecken der Leere",
		[132820] = "Schlammschnauzenferkel",
		[134078] = "Herzholzsoldat",
		[134147] = "Biengetüm",
		[31139] = "Pusteliger Schrecken",
		[134868] = "Bluttrollpirscherin",
		[120941] = "Blick der Inquisition",
		[135892] = "Entfesseltes Inferno",
		[92788] = "Traumverzerrer der Schattenteufel",
		[136916] = "Räuber der Sethrak",
		[58943] = "Ho-zen-Magenfetzer",
		[130411] = "Eindringling der Sethrak",
		[145339] = "Schnappling",
		[155344] = "Oxidierter Schlick",
		[138466] = "Obsidianwelpe",
		[139988] = "Sandzahn",
		[88087] = "Sturmruferin der Hassnattern",
		[90997] = "Machtsteinbrecher",
		[160183] = "Leerenfanatikerin",
		[138820] = "Vrykul der Blutgischt",
		[128620] = "Schreckensmaul",
		[28010] = "Gestrandeter Drescher",
		[134077] = "Blutholzritualistin",
		[160464] = "Assassine des Schwarzen Imperiums",
		[92789] = "Verdammnisbringer der Schattenteufel",
		[134137] = "Tempelbediensteter",
		[56896] = "Explosive Munition",
		[118127] = "Dunkle Ritualistin",
		[61247] = "Grünschnabel der Glintrok",
		[36805] = "Dienerin der Todessprecher",
		[90230] = "Einfallender Zornwächter",
		[160465] = "Enthaupterin des Schwarzen Imperiums",
		[136407] = "Zornwächter",
		[90998] = "Pestsplitterformer",
		[145338] = "Abgrundaal",
		[79205] = "Fahler Verschlinger",
		[16807] = "Großhexenmeister Nethekurse",
		[129140] = "Verfiddelter Seemann",
		[155859] = "Vizja'ra",
		[112867] = "Maiev Schattensang",
		[137985] = "Sturmsangschildwache",
		[68476] = "Navrecorne",
		[153812] = "Zitterstachelschleicher",
		[42692] = "Haudrauf des Steinernen Kerns",
		[158931] = "Priester Weißbraue",
		[21478] = "Felsspitzenreißer",
		[17447] = "Unbekannt",
		[98677] = "Rabenspinnling",
		[156884] = "Vitaessenz <Ra-den>",
		[130301] = "Schattenjäger Ju'loa",
		[134076] = "Blutholzruferin",
		[107891] = "Schattenflammenwichtel",
		[124527] = "Knochenschnabelaasfresser",
		[138969] = "Geist von Zian-Ti",
		[102287] = "Glutpanzerdominator",
		[156373] = "Amniotische Eruption <Niederer Zoatroid>",
		[124548] = "Betti",
		[145112] = "Zagg Blindauge",
		[117251] = "Unbekannt",
		[42696] = "Kriegshetzer des Steinernen Kerns",
		[18343] = "Tavarok",
		[114546] = "Auferstandener Knochenknecht",
		[159318] = "Schattenwandler Yash'gth",
		[91781] = "Krieger der Hassnattern",
		[98022] = "Seuchenwichtel",
		[91000] = "Ekelsplittergigant",
		[137212] = "Abgrundprophet",
		[133852] = "Lebendige Fäulnis",
		[158934] = "Jenessa Flussbrise",
		[136439] = "Meuchelklinge der Verlassenen",
		[18983] = "Schwarzfangtarantel",
		[148185] = "Todespirscherassassine",
		[132317] = "Gallenzahnjäger",
		[121713] = "Teufelsportalwächter",
		[11669] = "Flammenwichtel",
		[146138] = "Explodierendes Magmit",
		[158935] = "Keri Eppstein",
		[114547] = "Uralter Knochenknecht",
		[157170] = "Akolyth Taspu",
		[135901] = "Fungianer der Blutschwämme",
		[132318] = "Gallenzahnhuscher",
		[91001] = "Teerspuckerlauerer",
		[129758] = "Grenadier der Eisenfluträuber",
		[154329] = "Tiefengeborener Binder",
		[158936] = "Rosa Peony",
		[91008] = "Steingebundener Prassler",
		[128768] = "Zischender Seegang",
		[135902] = "Fungumant der Blutschwämme",
		[132319] = "Gallenzahnmutter",
		[16244] = "Ansteckender Ghul",
		[109577] = "Geomantin des Irdenen Rings",
		[155061] = "Unbekannt",
		[73342] = "Gefallener Beckenhüter",
		[36807] = "Jünger der Todessprecher",
		[150249] = "Schrotterin der Kolbenköppe",
		[135903] = "Manifestation der Tiefe",
		[156890] = "Übler Beobachter",
		[99192] = "Schemen von Xavius",
		[119923] = "Höllenglutseelenheiler",
		[149133] = "Berserkerin der Eidgebundenen",
		[16808] = "Kriegshäuptling Kargath Messerfaust",
		[59461] = "Hopfling",
		[157442] = "Blick des Wahnsinns",
		[92538] = "Teerspuckerlarve",
		[109174] = "Speerwache der Salzaugen",
		[153308] = "Azsharas Furor",
		[133345] = "Nichtsnutziger Assistent",
		[154332] = "Unbekannt",
		[138464] = "Aschenwinddeckmatrose",
		[152809] = "Alx'kov der Befallene",
		[151773] = "T.Ö.L.3. des Schrottplatzes",
		[98681] = "Rabenspinner",
		[107127] = "Raufgoth",
		[91003] = "Rokmora",
		[101644] = "Grausteinsplittermeister",
		[21863] = "Lauerer des Schlangenschreins",
		[138465] = "Aschenwindkanonier",
		[42522] = "Steindrache",
		[96640] = "Schützin der Valarjar",
		[146686] = "Geheimnisvoller Seuchenbringer",
		[56754] = "Azurschlange",
		[132835] = "Schreckenszahnotter",
		[133347] = "Verheererin der Nazmani",
		[141239] = "Oska der Blutige",
		[18344] = "Nexusprinz Shaffar",
		[36808] = "Zelot der Todessprecher",
		[79631] = "Eiserner Schildträger",
		[119157] = "Teufelswache",
		[136419] = "Steinschleuderettin",
		[91004] = "Ularogg Klippenformer",
		[62352] = "Häuptling Salyis",
		[37023] = "Seuchenwissenschaftler",
		[138467] = "Obisidiandrachkin",
		[134884] = "Ragna",
		[127870] = "Junger Schmarotzer",
		[157419] = "Leerenentstellter Welpe",
		[160990] = "Unbekannt",
		[153312] = "Kyx'zhul der Tiefensprecher",
		[138167] = "Kunstschützin der Eisenfluträuber",
		[42695] = "Späherin des Steinernen Kerns",
		[138468] = "Obsidianflammenruferin",
		[138980] = "Räuber der Schlammflossen",
		[27686] = "Eisiger Spukangreifer",
		[119158] = "Verderbte Klinge",
		[136421] = "Erdbrecherettin",
		[91005] = "Naraxas",
		[120201] = "Spektraler Wächter",
		[120182] = "Gequälte Priesterin",
		[146659] = "Seele des Gezeitenpriesters",
		[96124] = "Flusstroller der Drogbar",
		[131303] = "Salzwerferin der Eisenfluträuber",
		[14466] = "Schlachtstandarte der Horde <Sternw-Uldaman>",
		[107135] = "Manapirscher",
		[153314] = "Aldrantiss",
		[153826] = "Verirrter Wächter",
		[150254] = "Schrotthund",
		[138470] = "Obsidiandrache",
		[138982] = "Murloc der Schlammflossen",
		[131304] = "Samtpfote der Vulpera",
		[107367] = "Sklaventreiber der Hassnattern",
		[56719] = "Sha der Gewalt",
		[91006] = "Steinrückenknirscher",
		[92792] = "Alptraumreiter",
		[117559] = "Schreckensklinge der Zornwächter",
		[16809] = "Kriegshetzer O'mrogg",
		[138983] = "Gezeitenjäger der Schlammflossen",
		[131305] = "Wellenrufer der Laugenschuppen",
		[131817] = "Felsschlund der Befallene",
		[133376] = "Zerbröselndes Skelett",
		[93157] = "Besudelter Hainwandler",
		[161243] = "Samh'rek der Chaosrufer",
		[130421] = "Schlangenzauberschutz <Schattenjäger Ju'loa>",
		[138472] = "Obsidiankapitän",
		[98173] = "Mystikerin Ssa'veh",
		[131306] = "Räuber der Schwertwasserkorsaren",
		[131818] = "Gezeichnete Schwester",
		[5420] = "Basilisk",
		[91007] = "Dargrul",
		[130010] = "Sturmsangdragonerin",
		[79633] = "Eiserne Schrotschleuder",
		[83591] = "Tura’aka",
		[161510] = "Gedankenwundententakel",
		[131307] = "Schlägerin der Schwarzzahnvandalen",
		[131819] = "Wahrsagerin des Zirkels",
		[157439] = "Zorn von N'Zoth",
		[127484] = "Jes Knurris",
		[140534] = "Fleischschild",
		[158437] = "Gefallene Zuchtmeisterin",
		[163044] = "Schnitter der Aqir",
		[25618] = "Unbekannt",
		[135403] = "Wegelagerin der Zeth'jir",
		[102781] = "Teufelsfledermausjunges",
		[137989] = "Balsamierungsflüssigkeit",
		[119673] = "Verfluchter Plünderer",
		[136177] = "Schwester Celicia",
		[151785] = "Leerenentstellter Wyrmtöter",
		[138475] = "Tyrantion",
		[138987] = "Hochorakel der Schlammflossen",
		[135404] = "Zertrümmerer der Zeth'jir",
		[131821] = "Gesichtslose Maid",
		[103431] = "Stinkwindkoloss",
		[38346] = "Mordicchio",
		[63044] = "Glitschzunge der Bleichklingen",
		[162534] = "Wächter des Anubisath",
		[73349] = "Gequälter Initiand",
		[153320] = "Giftige Welle",
		[90241] = "Garstiger Pirscher",
		[27751] = "Hauptmann Drayzen",
		[98943] = "Verdorrter",
		[119674] = "Irrsinnige Überreste",
		[133358] = "Blutige Jüngerin",
		[150250] = "Knaller der Kolbenköppe",
		[138477] = "Krallenwache Vrykiss",
		[138989] = "Salzflosse",
		[135406] = "Animiertes Gold",
		[131823] = "Schwester Gebrecht",
		[12118] = "Lucifron",
		[145132] = "Veteranin der Todeswache",
		[158938] = "Philip Luke",
		[150251] = "Mechaniker der Kolbenköppe",
		[158953] = "Gesichtsloser Manipulator",
		[36811] = "Magd der Todessprecher",
		[94337] = "Seuchenbringer der Schreckensreiter",
		[82308] = "Schattenmondpirscher",
		[24744] = "Vexallus",
		[129658] = "Unbekannt <Schwester Wittwer>",
		[8419] = "Zwielichtverehrer",
		[154347] = "Leerenentstellter Verderber",
		[102277] = "Scharfschützenköder <Pestherzscharfschütze>",
		[92034] = "Sklavenjäger Zsanesh",
		[156406] = "Leerengebundene Ehrenwache",
		[131825] = "Schwester Dornstrauch",
		[92802] = "Gravax der Schänder",
		[109438] = "Teufelsschläger der Zornwächter",
		[133361] = "Siechender Diener",
		[150253] = "Waffenfähiger Krabbler",
		[59206] = "Mantismunition",
		[134897] = "Dagrus der Verachtete",
		[114813] = "Gezeitenhexe der Kvaldir",
		[160491] = "Unbekannt",
		[17578] = "Trainingsattrappe",
		[137905] = "Azeritdurchströmter Elementar",
		[113537] = "Glutpanzerdominator",
		[137969] = "Bestattungskonstrukt",
		[142576] = "Ungebundene Fluten",
		[96774] = "Grabräuber der Blaukerzen",
		[123001] = "Dunkles Wasser",
		[157614] = "Tentakel von Drest'agath",
		[88708] = "MaBoi",
		[153326] = "Vil'raxx",
		[121980] = "Terrorhornjungtier",
		[120449] = "Defensive Gegenmaßnahmen",
		[71529] = "Invictus",
		[416] = "Rulnik",
		[417] = "Zhaaghon",
		[135923] = "Hund von Gazzran",
		[98946] = "Verdorrter Dürstender",
		[153327] = "Wahnsinnsverseuchung",
		[139515] = "Sandmalmer",
		[109188] = "Verdorrtes Versuchsobjekt",
		[158958] = "Meister Zhang",
		[146864] = "Erdbinderin der Nebelskorn",
		[133373] = "Jax'teb der Wiederbelebte",
		[135924] = "Glühender Zorn",
		[136436] = "Unbekannt",
		[80775] = "Ogronkriegsschläger",
		[162030] = "Finsterstimmenritualist",
		[19306] = "Manasauger",
		[152313] = "Koloss der Schreckensnattern",
		[145328] = "Raufbold der Zanj'ir",
		[131318] = "Älteste Leaxa",
		[98691] = "Auferstandener Späher",
		[91529] = "Glimar Eisenfaust",
		[119677] = "Horror der Teufelsschwingen",
		[137461] = "Ausgehungerter Finsterrachen",
		[154353] = "Goliath der Aqir",
		[138485] = "Nuzoriak der Experimentierer",
		[153338] = "Schrottkanone <Galactus>",
		[130008] = "Sturmsangmarschall",
		[79590] = "Ritualist des Schattenmondklans",
		[82057] = "Unbekannt",
		[91786] = "Splittschleimschnecke",
		[145327] = "Beschwörerin der Azsh'ari",
		[154354] = "Stachel der Aqir",
		[138486] = "Aluriak",
		[126845] = "Käpt'n Jolli",
		[158970] = "Gedankenräuber der K'thir",
		[89099] = "Verzauberin der Hassnattern",
		[24745] = "Pure Energie",
		[123774] = "Aggressor der Sethrak",
		[86535] = "Aufseher Lykill",
		[120191] = "Ewige Seelenwache",
		[146677] = "Unbekannt",
		[138496] = "Zwielichtdrakonaar",
		[160904] = "Unbekannt",
		[42188] = "Ozruk",
		[102404] = "Steinklauenlarvenmeister",
		[21226] = "Schamane der Gezeitenwandler",
		[153313] = "Vyz'olgo der Willensdieb",
		[153202] = "Kolbenkracher",
		[158963] = "Leerenhüter",
		[126846] = "Kriegsbrutreiterin",
		[59464] = "Hopfer",
		[160499] = "Zuckender Schrecken",
		[98949] = "Stachelfaust der Verhasste",
		[153333] = "Bestrafer der Zanj'ir",
		[122982] = "Verschlingender Ghul",
		[158452] = "Gedankenentstellertentakel",
		[91783] = "Sturmwirkerin der Hassnattern",
		[120704] = "Annihilanwächter",
		[151798] = "Vexiona",
		[135930] = "Lavarok",
		[25216] = "Orakel der Winterflossen",
		[110471] = "Wichtlingplünderer",
		[77169] = "Irrender der Leere",
		[79589] = "Leerenaxtkämpferin des Schattenmondklans",
		[154367] = "Pfähler der Aqir",
		[126847] = "Käpt'n Raoul",
		[151799] = "Ausgräber der Amathet",
		[152311] = "Myrmidone der Zanj'ir",
		[153311] = "Zackenkamm Azanz",
		[89865] = "Mrrgrl der Gezeitenhäscher",
		[114809] = "Matrosennachtwächter",
		[152287] = "Motospinne",
		[91784] = "Kriegsherr Parjesh",
		[56765] = "Zerstörendes Sha",
		[151800] = "Bogenschütze der Amathet",
		[108932] = "Schänderin Ma'veth",
		[121473] = "Anklägerin Nixa",
		[93064] = "Falke der Rabenwehr",
		[11671] = "Kernhund",
		[19307] = "Nexusschrecken",
		[142587] = "Verschlingende Made",
		[126848] = "Käpt'n Eudora",
		[164086] = "Sonnenpriester der Amathet",
		[123265] = "Gewittersturm",
		[98955] = "Kriegsbär der Wellenskorn",
		[136957] = "Bombardierender Zeppelin",
		[16353] = "Brucy",
		[120194] = "Geisterhafte Akolythin",
		[138493] = "Unbekannt",
		[158633] = "Blick von N'Zoth",
		[136934] = "Waffentester",
		[117123] = "Legionär der Gezeitenschuppen",
		[12119] = "Beschützer der Flammenschürer",
		[136958] = "Bombardierender Zeppelin",
		[56906] = "Saboteur Kip'tilak",
		[137134] = "Behexte Soldatin",
		[141061] = "Diener von Thros",
		[24554] = "Eramas Leuchtfeuer",
		[106630] = "Grabender Leywurm",
		[98696] = "Illysanna Rabenkrone",
		[152827] = "Leerenhetzer der Shirakess",
		[127873] = "Schmarotzerpatriarch",
		[115844] = "Goroth",
		[136110] = "Sturmsangloyalistin",
		[138495] = "Zwielichtkommandant",
		[139693] = "Abgehärteter Grunzer",
		[155899] = "Sak'ja",
		[158465] = "Unbekannt",
		[134329] = "Blutbrut",
		[93066] = "Runenaxt der Knochensprecher",
		[128472] = "Unterwerfer Zheng",
		[151299] = "Opportunistische Banditin",
		[21419] = "Angreifende Höllenbestie",
		[2175] = "Schattenklaue",
		[155900] = "Zsal'iss",
		[43214] = "Plattenhaut",
		[107143] = "Höllischer Belagerungsbrecher",
		[21148] = "Bewahrerin der Zeitrisse",
		[137473] = "Wachoffizier Atu",
		[154365] = "Schnitter der Aqir",
		[138497] = "Zwielichteidschuppe",
		[91790] = "Treibsandläufer der Mak'rana",
		[155901] = "Arkane Bombe",
		[111068] = "Erzmagier Galeorn",
		[138489] = "Zuls Schatten",
		[161532] = "Ausbilder Teshal",
		[137474] = "König Timalji",
		[133891] = "Behexter Leutnant",
		[59979] = "Peon von Zwillingsfels",
		[130946] = "Runenwächterkonstrukt",
		[94347] = "Schreckensreiter Cortis",
		[135939] = "Rankensprecherin Ratha",
		[141226] = "Haegol der Hammer",
		[145153] = "Scharfseherin der Klingenspeer",
		[131302] = "Plünderin der Eisenfluträuber",
		[133892] = "Behexter Armbrustschütze",
		[138499] = "Zwielichtdrachkin",
		[92044] = "Thoraazun",
		[123271] = "Salzpelzstockschmeißer",
		[117126] = "Lord Vazuun",
		[137132] = "Hexgebundener Familiar",
		[149249] = "Avatar des Leidens",
		[80715] = "Todesstachelverheerer",
		[130435] = "Benebelter Rohling",
		[95620] = "Diener von Skovald",
		[151297] = "Opportunistischer Bandit",
		[18477] = "Waldworgalpha",
		[82319] = "Unbekannt",
		[152833] = "Azeritriese",
		[134150] = "Runenmetz Sorn",
		[111752] = "Betörter Inquisitor",
		[154369] = "Befallener Wüstenwanderer",
		[91789] = "Lady Hassnatter",
		[151298] = "Habgier",
		[60491] = "Sha des Zorns",
		[131847] = "Feiernder von Kronsteig",
		[152834] = "Azerithuscher",
		[157441] = "Leerengeist",
		[137478] = "Königin Wasi",
		[130436] = "Arbeiter außer Dienst",
		[140768] = "Guuru der Bergbrecher",
		[114568] = "Zerfallender Diener",
		[151811] = "Sonnenberührter Falke",
		[24683] = "Magierwache der Sonnenklingen",
		[152835] = "Kristallisiertes Azerit",
		[153347] = "Auge des Verderbers",
		[103563] = "Reitwolf",
		[150276] = "Schwerer Schrottbot",
		[120455] = "Höllenbestienzerstörer",
		[151300] = "Kelfinnenspäherin",
		[151812] = "Bedrohung neutralisieren",
		[131849] = "Wahnsinnige Schützin",
		[59800] = "Wüter der Krik'thik",
		[153348] = "Lebendiger Befall <Auge des Verderbers>",
		[107133] = "Zornwächter",
		[130437] = "Minenratte",
		[133036] = "Dornholzwache",
		[110474] = "Zauberin der Rakeeshi",
		[151813] = "Elfenbeinbeobachter",
		[131850] = "Irrsinniger Überlebenskünstler",
		[144647] = "Tiefenflutfrenzy",
		[99213] = "Erasmus Mondklinge",
		[111754] = "Unbekannt <Betörter Inquisitor>",
		[684] = "Katze",
		[138505] = "Evolvierter Gelegewächter",
		[37970] = "Prinz Valanar",
		[120968] = "Knochenknacker der Versteinerer",
		[94687] = "Infektiöser Wurm",
		[148443] = "Verteid-o-bot",
		[80786] = "Grunzer des Schwarzfelsklans",
		[157959] = "Bernsucher der Klaxxi",
		[40657] = "Serpent",
		[146856] = "Äscherner Räuber",
		[24684] = "Blutritter der Sonnenklingen",
		[127111] = "Ruderer der Eisenfluträuber",
		[123272] = "Salzpelzglitschipikser",
		[106629] = "Blerg",
		[161541] = "Unbekannt",
		[89056] = "Kapitän Fergus",
		[137995] = "Minentechniker der Venture Co.",
		[91792] = "Sturmschneisenhydra",
		[158933] = "Apo die Frohnatur",
		[120969] = "Wahnsinnige Teufelsklinge",
		[144296] = "Spinnenpanzer",
		[137485] = "Blutverschworener Agent",
		[157447] = "Fanatische Kultistin",
		[137484] = "König A'akul",
		[146186] = "Feuerstachelkrieger",
		[146187] = "Feuerstacheldominator",
		[151305] = "Extraktor der Horde",
		[158932] = "Heilerin Nan",
		[134058] = "Sturmbeschwörerin Faye",
		[100991] = "Unbekannt",
		[145163] = "Grunzerin der Eidgebundenen",
		[111756] = "Entkräftendes Auge",
		[103822] = "Unbekannt <Entay-Blackrock>",
		[91793] = "Seegischtkrabbe",
		[151655] = "Hochexplosive Rakete",
		[94338] = "Pirscher der Schreckensreiter",
		[108941] = "Phantomoffizier",
		[146876] = "Machitu der Brutale",
		[157449] = "Finsterer Seelenschnitzer",
		[137486] = "Königin Patlaa",
		[154378] = "Mechanisierter Vollstrecker",
		[138510] = "Zwielichtverdammnisrufer",
		[151307] = "Bilgewässer Haudrauf",
		[96129] = "Räuber der Teufelsskorn",
		[123274] = "Salzpelzraufbold",
		[161033] = "Schattenschlund",
		[157450] = "Bezauberte Ritualistin",
		[137487] = "Skelettjagdraptor",
		[79253] = "Züchter der Botani",
		[91794] = "Lauerer der Salzschuppen",
		[139176] = "Belagerungsturm",
		[136976] = "T'zala",
		[114137] = "Balaadur",
		[148749] = "Unbekannt",
		[21229] = "Gezeitenrufer der Grauherzen",
		[151309] = "Unbekannt",
		[25215] = "Küstenschläger der Winterflossen",
		[134417] = "Tiefseeritualist",
		[130953] = "Boxer der Da'kani",
		[139536] = "Drohne der Zara'thik",
		[131858] = "Dornwächter",
		[129749] = "Tobender Grunzer",
		[157452] = "Alptraumantigen",
		[156579] = "Königin Azshara",
		[155917] = "Sturmruferin der Azsh'ari",
		[134418] = "Ertrunkener Tiefenbringer",
		[151310] = "Kelfinnenspäher",
		[139537] = "Kunchong der Zara'thik",
		[129418] = "Tentakel von Viq'Goth",
		[17835] = "Ewiger Assassine",
		[120535] = "Teufelslohenwichtel",
		[142097] = "Korvash",
		[158477] = "Sandsteineingräber",
		[106896] = "Gezeitenelementar",
		[130954] = "Lackaffe der Da'kani",
		[139538] = "Mauerbrecher Ha'vik",
		[98706] = "Kommandant Shemdah'sohn",
		[119767] = "Brutaler Bestrafer",
		[136615] = "Azeritdurchströmter Elementar",
		[91796] = "Wellenbrecherskrog",
		[158478] = "Verderbnistumor",
		[128651] = "Hadal Dunkelgrund",
		[155919] = "Sturmling <Sturmruferin der Azsh'ari>",
		[37972] = "Prinz Keleseth",
		[97171] = "Arkanistin der Hassnattern",
		[155920] = "Orkanklinge der Azsh'ari",
		[132885] = "Luftelementar",
		[58959] = "Ista'tul",
		[128652] = "Viq'Goth",
		[126093] = "Saurok der Zackenkämme",
		[124302] = "Sauroliskenjunges",
		[147730] = "Seuchenwagen der Verlassenen",
		[131862] = "Sturmverschmolzene Munition",
		[152994] = "Springender Arachnobot",
		[132007] = "Orkansturm",
		[131864] = "Gorak Tul",
		[155553] = "Niederer Zoatroid",
		[91797] = "König Klafterbart",
		[134934] = "Unbekannt",
		[3527] = "Totem des heilenden Flusses <Kikin-Blackrock>",
		[131863] = "Raal der Unersättliche",
		[136470] = "Snackverkäuferin",
		[97172] = "Salzmeertropfen",
		[56912] = "Umhüller der Krik'thik",
		[133912] = "Blutverschworener Schänder",
		[134423] = "Abgrundtentakel",
		[128653] = "Junger Seegischtpterrordax",
		[898] = "Worgen der Nachtheuler",
		[24685] = "Magister der Sonnenklingen",
		[140055] = "Erster Maat Grogtok",
		[126094] = "Wellenrufer der Zackenkämme",
		[136613] = "Azeritdurchströmter Fels",
		[103827] = "König Morgalash",
		[120463] = "Unterwasserverwalter",
		[120719] = "Lunarpriesterin",
		[37973] = "Prinz Taldaram",
		[21102] = "Kernhund",
		[160671] = "Sylvanas Windläufer",
		[136984] = "Reban",
		[76954] = "Schildkröte",
		[139684] = "Goblinschredder",
		[134426] = "Pioniertechniker",
		[146850] = "Großmeister Ulrich",
		[38997] = "Buddler der Archäologischen Akademie",
		[46838] = "Unterworfener Feuerteufel",
		[98965] = "Kur'talos Rabenkrone",
		[138521] = "Minentechniker",
		[21806] = "Zauberbinder der Grauherzen",
		[89053] = "Krieger der Mak'rana",
		[17839] = "Fürst der Zeitenrisse",
		[120720] = "Lunarwache",
		[157087] = "Thaumaturg des Schwarzen Imperiums",
		[136100] = "Versunkener Bewohner",
		[156949] = "Waffenmeisterin Terenson",
		[157461] = "Myzelzyste",
		[101525] = "Teufelsschattenoculus <Verhörer Arev'naal>",
		[150295] = "Panzerknacker Mk. I",
		[130191] = "Nestverteidiger",
		[36822] = "Lord Kassarus",
		[131356] = "Dschungelpirscher",
		[105621] = "Grimmiger Oculus",
		[11673] = "Uralter Kernhund",
		[132892] = "Jubelblatt",
		[159510] = "Auge der Tiefe",
		[133916] = "Sturmgebundener Eroberer",
		[118162] = "Dunkelsteintrickser",
		[120721] = "Lunarbogenschützin",
		[155927] = "Mystischer Tornado <Azsharas Furor>",
		[125328] = "Unbekannt",
		[134941] = "Spinne der Borstenstachler",
		[113555] = "Xalian Teufelslohe",
		[137500] = "Feuerteufel der Venture Co.",
		[150297] = "Renormalisiererin von Mechagon",
		[114323] = "Guarm",
		[110484] = "Teufelspirscher",
		[118930] = "Ixallon der Seelenbrecher",
		[61392] = "Harthakflammensucher",
		[134940] = "Durchbohrer der Borstenstachler",
		[115603] = "General Zeonar",
		[107301] = "Koboldzeichnung",
		[102361] = "Eiterborstenpelz",
		[154045] = "Grunzer der Horde",
		[162716] = "Bezauberter Ritualist",
		[12057] = "Garr",
		[96664] = "Runenmetz der Valarjar",
		[139008] = "Urzeitlicher Zerfleischer",
		[151605] = "Anodisierter Maschinist",
		[118163] = "Instabiler Dunkelsteinwichtel",
		[154394] = "Veskan der Gefallene",
		[24686] = "Hexenmeister der Sonnenklingen",
		[102295] = "Glutpanzerdominator",
		[69791] = "Feuergeist",
		[119187] = "Xorothianischer Teufelsritter",
		[159514] = "Blut von Ny'alotha",
		[136991] = "Blutjägerin Dazal'ai",
		[103575] = "Rifflord Raj'his",
		[151324] = "Anodisierter Vollstrecker",
		[141599] = "Sauerzahn",
		[100248] = "Ritualistin Lesha",
		[151836] = "Leerenschrecken",
		[160538] = "Gesichtsloser Gefängniswärter",
		[105623] = "Schlitzer der Fal'dorei",
		[157467] = "Leerenaszendent",
		[117908] = "Schrecklicher Hundemeister",
		[42710] = "Faucon-dragon",
		[69792] = "Arentor-Rexxar <Arentor-Rexxar>",
		[151325] = "Alarm-o-Bot",
		[90267] = "Ael'Yith",
		[103656] = "Gornoth der Verlorene",
		[1108] = "Unbekannt",
		[141088] = "Sturmbö",
		[119956] = "Blutwurm <[*] Wurmfluch>",
		[100249] = "Kanalisiererin Varisz",
		[98521] = "Lord Etheldrin Rabenkrone",
		[151326] = "Anodisierter Spulenträger",
		[96410] = "Majestätisches Urhorn",
		[117141] = "Malgrazoth",
		[26286] = "Glutwyrm",
		[117909] = "Gefräßiger Teufelsjäger",
		[126099] = "Nachtmantelhöhlenmutter",
		[126355] = "Erweckter Wächter",
		[159005] = "Raoshan die Adlerkralle",
		[136483] = "Aschenwinddeckmatrose",
		[145185] = "Gnominator G-800",
		[41175] = "Späher der Frostmähnen",
		[98970] = "Latosius",
		[119701] = "Glutschuppenwache",
		[153887] = "Peitschendes Tentakel",
		[131365] = "Kupferzahnstreuner",
		[108185] = "Starrblickkriecher der Klammschuppen",
		[100250] = "Binderin Ashioi",
		[104601] = "Gepanzerter Mistral",
		[140067] = "Rostpelzalpha",
		[24687] = "Heiler der Sonnenklingen",
		[72609] = "Peon des Schattenmondklans",
		[134950] = "Reißzahnschrecken",
		[130451] = "Elite der Klingenwache",
		[152356] = "Giftiger Schnappdrache",
		[157475] = "Synthesegeschwür",
		[156452] = "Jünger der Schattenanbeter",
		[140068] = "Rostpelzknurrer",
		[152357] = "Schnappdrachenjäger",
		[153377] = "Unbekannt",
		[91354] = "Distelblattgrobian",
		[144170] = "Aschenwindheckenschützin",
		[120470] = "Verschmelzender Alptraum",
		[108441] = "Grulk",
		[104602] = "Wilder Vortex",
		[117143] = "Champion der Dunkelklinge",
		[152866] = "Verhärtetes Azerit",
		[132903] = "Dorfbewohner der Dorrzweige",
		[157985] = "Kommandant I'juk",
		[154402] = "Verteidiger der Huojin",
		[120472] = "Verstörendes Echo",
		[24559] = "Kriegsherr Salaris",
		[131883] = "Dornholzeindringling",
		[127381] = "Schlickkrabbe",
		[94877] = "Brogrul der Mächtige",
		[24815] = "Wichtel der Sonnenklingen <Hexenmeister der Sonnenklingen>",
		[137511] = "Halsabschneider der Bilgeratten",
		[128405] = "Lebendes Artefakt",
		[128661] = "Treuloser Verheerer",
		[132395] = "Schwester Noella Dornholz",
		[135071] = "Ertrunkener Bekehrter",
		[21104] = "Bewahrerin der Zeitrisse",
		[138538] = "Abyssische Reichweite",
		[137000] = "Kellerhuscher",
		[141607] = "Lord Sturmsang",
		[122263] = "Stachelpanzerschnappkiefer",
		[122519] = "Dregmar Runenbrand",
		[156454] = "Gurgelnde Fleischbestie",
		[94624] = "Sturmgeborener der Drekirjar",
		[135977] = "Umherirrendes Runengespenst",
		[157593] = "Unbekannt",
		[43480] = "Temperamentvoller Rumpler",
		[156455] = "Geistwurm",
		[153896] = "Wasserelementar",
		[128662] = "Treulose Wärterin",
		[129232] = "Mogul Ratztunk",
		[104604] = "Windstoßsoldat",
		[152358] = "Terrorschlund der Schnappdrachen",
		[140585] = "Umbralauerer",
		[116691] = "Belac",
		[56917] = "Munitionsvorräte",
		[122264] = "Alter Stachelpanzer",
		[122520] = "Eisfaust",
		[138028] = "Champion Starrbiss",
		[131372] = "Dornholzhund",
		[144169] = "Aschenwindkommandant",
		[118426] = "Garstiger Handlanger",
		[123289] = "Spiegelpanzertodesschere",
		[153895] = "Abgrundflügelbutt",
		[157592] = "Unersättliche Fleischbestie",
		[120473] = "Kämpfer der Gezeitenschuppen",
		[152873] = "Arkane Bombe",
		[131373] = "Dornholzeindringling",
		[160550] = "Gesichtsloser Dominator",
		[117402] = "Dämonenversklavte Pyromagierin",
		[63728] = "EliteSkorpi",
		[58965] = "Khilradath",
		[122265] = "Salzpelzzerschmetterer",
		[122521] = "Knochenkracher",
		[27631] = "Entartung von Angrathar",
		[152362] = "Schnappdrachenverheerer",
		[140076] = "Knöchelhauersilberrücken",
		[86690] = "Geschützturm",
		[145195] = "Zerstörer der Bohrinselflotte",
		[137517] = "Aschenwindzerstörer",
		[122522] = "Eisberster",
		[128664] = "Treuloser Wachposten",
		[24688] = "Getriebener Schleicher",
		[135470] = "Aka'ali die Bezwingerin",
		[121242] = "Glompschlund",
		[152874] = "Vez'okk der Lichtlose",
		[153386] = "Eingeschleimt",
		[109725] = "Teufelswache",
		[133935] = "Belebter Wächter",
		[163112] = "Verderbter Eierhüter",
		[24560] = "Priesterin Delrissa",
		[86691] = "Sturmgeschütz",
		[156458] = "Hexenmeister der K'thir",
		[28847] = "Schlickschlitteraal",
		[144168] = "Aschenwindzerstörer",
		[128665] = "Treuloser Himmelsrufer",
		[37595] = "Sinistrer Blutritter",
		[58198] = "Shado-Pan-Schüler",
		[129743] = "Haihappen",
		[135472] = "Zanazal der Weise",
		[152364] = "Azsharas Glanz",
		[129487] = "Zermalmer der Jambani",
		[132913] = "Inselettin",
		[151960] = "Sonnenberührter Akolyth",
		[151852] = "Beobachter Rehu",
		[130713] = "Unbekannt",
		[139165] = "Orcischer Räuber",
		[157483] = "Ysedra die Verdunklerin",
		[131890] = "Felspirscher",
		[139394] = "Sumpfpriester der Morastlauerer",
		[145305] = "Verwilderter Hüne",
		[137521] = "Pulverschütze der Eisenfluträuber",
		[134450] = "Auferstandener Bluthund",
		[138545] = "Seeschrauberin der Venture Co.",
		[139570] = "Späher der Horde",
		[135474] = "Distelakolythin",
		[49267] = "Kristallsplitter",
		[146736] = "Zorn der Tiefe",
		[157485] = "Überwuchertes Tentakel",
		[155950] = "Animakügelchen",
		[148272] = "Kurbelknallflammengeschütz",
		[122524] = "Blutschmaus",
		[61398] = "Xin der Waffenmeister",
		[135475] = "Kula die Schlächterin",
		[135987] = "Tentakel",
		[18994] = "Ewiger Henker",
		[157486] = "Schrecklicher Blutsturz",
		[153903] = "Gesichtsloser Eroberer",
		[133940] = "Verstärkung der Borstenrücken <Ausguck der Borstenrücken>",
		[81063] = "Arbeiter des Schwarzfelsklans",
		[59479] = "Yan-Zhu der Dekantierte",
		[139571] = "Sturmverschmolzener Hammerschmied",
		[156463] = "Akolyth der Schattenanbeter",
		[133430] = "Genie der Venture Co.",
		[141107] = "Sengels die Klinge",
		[133429] = "Blubbernder Met",
		[97956] = "Tichondrius",
		[122525] = "Schwelendes Skelett",
		[139161] = "Salzzahngezeitenpirscher",
		[127132] = "Infizierter Saurolisk",
		[123293] = "Königliche Sandkrabbe",
		[152881] = "Schuppenwache der Zanj'ir",
		[120528] = "Marodeur der Teufelswache",
		[153905] = "Tiefenbauauserwählter",
		[153906] = "Lebendiger Befall",
		[146740] = "Bestienherr der Mag'har",
		[134966] = "Ruheloser Stein",
		[131383] = "Sporenrufer Zancha",
		[117151] = "Dunkelpirscher",
		[152882] = "Gezeitenlord der Zanj'ir",
		[24561] = "Yazzai",
		[93349] = "Lobo",
		[133943] = "Fixieren",
		[122526] = "Schwelendes Konstrukt",
		[36829] = "Hohepriester der Todessprecher",
		[36957] = "Häscherin der Kor'kron",
		[119199] = "Portalhüterin der Eredar",
		[152883] = "Myrmidone der Zanj'ir",
		[24689] = "Getriebener Schläger",
		[153907] = "Fauliges Sekret",
		[133432] = "Alchemistin der Venture Co.",
		[21298] = "Schlangenwache des Echsenkessels",
		[43228] = "Berserker der Steintroggs",
		[120991] = "Teufelsfledermaus",
		[131897] = "Steinpanzerzange",
		[152884] = "Fallensteller der Zanj'ir",
		[130765] = "Dschungelpirscherjunges",
		[153908] = "Auge des Imperiums",
		[118176] = "Donnerschock",
		[122527] = "Schwelender Spuk",
		[156980] = "Leerenessenz",
		[1860] = "Unbekannt",
		[131898] = "Dornholzbelagerungsbrecher",
		[132410] = "Federviper",
		[132922] = "Versklavter Murloc",
		[137529] = "Arvon der Verratene",
		[133434] = "Schwefelfuror",
		[131669] = "Rauer Hund",
		[133435] = "Drust Slaver Summoning Portal",
		[155957] = "Steinformer der Baruk",
		[131899] = "Dornholzauslöscher",
		[152886] = "Sonnenberührter Falke",
		[141113] = "Schädelbersterin Cotner",
		[153910] = "Gezeitenverderber",
		[26481] = "Magnataurenalpha",
		[146744] = "Äscherner Vollstrecker",
		[159312] = "Lebendes Blut",
		[131388] = "Dornholzunterwerfer",
		[134780] = "Angelockter Axtschnabel",
		[78507] = "Wilder des Blutenden Auges",
		[128973] = "Raunz der Übellaunige",
		[133436] = "Flugfacklerin der Venture Co.",
		[112337] = "Nisstyr",
		[154935] = "Gorgonischer Plünderer",
		[153904] = "Gesichtsloser Peiniger",
		[131389] = "Teres",
		[117154] = "Akolyth der Reißmäuler",
		[42333] = "Hohepriesterin Azil",
		[155959] = "Todesgebundener Diener",
		[7886] = "Verzauberin der Grollflossen",
		[131901] = "Dornholzvernichter",
		[138556] = "Besudelter Schlamm",
		[118690] = "Einfallender Zornwächter",
		[140694] = "Giermaul der Fresser",
		[12098] = "Sulfuronherold",
		[153913] = "Flüsternder Beobachter",
		[145211] = "Donnerschuppenwelpling",
		[79020] = "Hydra von Echidna",
		[159633] = "Henkerin der Kultisten",
		[120482] = "Seeruferin der Gezeitenschuppen",
		[138557] = "Lebende Verderbnis",
		[135486] = "Dornholzruferin",
		[152378] = "Korrodierter Krabbler",
		[36597] = "Der Lichkönig",
		[137622] = "Verwüster",
		[137110] = "Feuerteufel der Venture Co.",
		[146228] = "Basiskäpt'n Kurbelknall",
		[138558] = "Gesichtsloser",
		[24690] = "Getriebene Hülle",
		[143677] = "Schnellklinge der Zandalari",
		[140094] = "Morastschnauzendornrücken",
		[78509] = "Berserker des Blutenden Auges",
		[42845] = "Felsbohrer",
		[153915] = "Treibende Monstrosität",
		[100307] = "Chen Sturmbräu",
		[146749] = "Assassine der Eidgebundenen",
		[138645] = "Seelenschinderin der Kvaldir",
		[143678] = "Axtwerfer der Zandalari",
		[152380] = "Korrodierter Vollstrecker",
		[152892] = "Rostiger Mechanokrabbler",
		[104615] = "Grausteinüberrumpler",
		[21299] = "Tiefenhexe des Echsenkessels",
		[118180] = "Schreckenswesir Gra'tork",
		[148797] = "Magus der Toten <Tyres-Ysera>",
		[38879] = "Seuchenmords Falle",
		[134764] = "Rasselpanzer",
		[152381] = "Korrodierter Wachposten",
		[78510] = "Beilkämpferin des Blutenden Auges",
		[137025] = "Brutmutter",
		[82647] = "Gepeinigte Seele",
		[133527] = "Juba der Vernarbte",
		[138561] = "Gesichtsloser Gedankenpeitscher",
		[128930] = "Rohnkor",
		[120484] = "Spuktrugbild",
		[118949] = "Disa Richtschaft",
		[117413] = "Marodeur des Dämonengrolls",
		[129954] = "Gahz'ralka",
		[138644] = "Fluchgängerin der Kvaldir",
		[61146] = "Statue des Schwarzen Ochsen <Nayomii-Thrall>",
		[138562] = "Leerenmade",
		[119205] = "Mondkralle <Hauptmann Yathae Mondstreich>",
		[160061] = "Krabbelnde Verderbnis",
		[152383] = "Schnapppanzerschildkröte",
		[152895] = "Unbekannt",
		[137620] = "Schläger der Venture Co.",
		[140038] = "Abgrundaal",
		[144705] = "Belagerungsschredder",
		[157268] = "Krabbelnde Verderbnis <Vez'okk der Lichtlose>",
		[119206] = "Eruptive Reflexion von Xâvius",
		[151872] = "Griff des Schreckens",
		[117158] = "Höllischer Wichtel",
		[105129] = "Seelenerfasser",
		[141123] = "Entfesselte Sturmwoge",
		[133445] = "Räuber der Nazmani",
		[158527] = "Sandsteinjungtier",
		[138564] = "Kshuun",
		[119718] = "Wichtelmutter Bruva",
		[59483] = "Ul-Bataar",
		[148290] = "Wahnsinniger Kurbelknallingenieur",
		[144707] = "Schredderpilot",
		[137029] = "Geschützspezialist",
		[112335] = "Skarabäusfürst Ahzesh",
		[158528] = "Oberster Wächter Reshef",
		[120486] = "Amalgam der Qualen",
		[93095] = "Gieriger Bär",
		[120998] = "Flllurlokkr",
		[117159] = "Wyrmzungenplünderer",
		[120997] = "Fel Rain Invisible Bunny (Medium)",
		[10404] = "Eiternder Schrecken",
		[56924] = "Brennender Ho-zen-Muskelprotz",
		[107216] = "Wärter der Legion",
		[102059] = "Adeptin des Dämonenpakts",
		[134983] = "Samuel Willem",
		[155970] = "Animawache",
		[136083] = "Vergessener Bewohner",
		[37217] = "Schatz",
		[156046] = "Qilen der Zan-Tien",
		[42719] = "Jabalí",
		[146832] = "Totenbeschwörerjünger",
		[124582] = "Schluchtjäger",
		[71603] = "Sha-Tropfen",
		[146757] = "Dunkler Exekutor",
		[117160] = "Verdammnisheroldin",
		[153998] = "Flutquellwoger",
		[97197] = "Läuterer der Valarjar",
		[137544] = "Seeschrauberin der Venture Co.",
		[118184] = "Krakenei",
		[135492] = "Dornholzschlachtzauberin",
		[140689] = "Schreckenszahngleiter",
		[25651] = "Kultist der Nekrolythen",
		[113832] = "Teufelsberster",
		[21108] = "Can del Núcleo",
		[145223] = "Donnerschuppenjungtier",
		[120786] = "Wachsames Auge",
		[138641] = "Verdammnisbringer der Kvaldir",
		[124583] = "Granatrückenwurm",
		[163651] = "Yu'gaz",
		[151878] = "Sonnenkönig Nahkotep",
		[56541] = "Meister Schneewehe",
		[148295] = "Ivus der Verfallene",
		[145224] = "Donnerschuppendrache",
		[101549] = "Arkaner Diener",
		[154438] = "Mechanisierte Pilotin",
		[120487] = "Alptraumhafter Horror",
		[134987] = "Tiefenkämpfer der Zeth'jir",
		[131404] = "Vorarbeiter Zettel",
		[82354] = "Seeklippenkaliri",
		[117161] = "Rachsüchtiger Zornwächter",
		[119721] = "Unbekannt",
		[119977] = "Würgerankenpeitscher",
		[140107] = "Todesstachelpeitscher",
		[120489] = "Verstörende Vision",
		[120745] = "Übler Seelenwart",
		[151880] = "Sonnenberührter der Amathet",
		[148297] = "Seuchling",
		[145226] = "Strofnir",
		[137036] = "Erwachte Leere",
		[123083] = "Klingenschlundschnapper",
		[42721] = "TReex",
		[37029] = "Häscher der Kor'kron",
		[146756] = "Energiesturm",
		[151881] = "Abyssalkommandantin Sivara",
		[160583] = "Leerenkugel",
		[25843] = "Nordmeerrohling",
		[95152] = "Wurmkrallenjägerin",
		[119978] = "Knallpeitscher",
		[146251] = "Schwester Katharina",
		[128935] = "Mala'kili",
		[155465] = "Lauernder Wachposten",
		[100527] = "Schreckensfeuerwichtel",
		[129448] = "Hammerhai",
		[152906] = "Zenturio der Zanj'ir",
		[144785] = "Nagtar Wolfsbann",
		[131402] = "Tiefenpfuhlzecke",
		[154442] = "Fliegende Unterdrückungseinheit JK-8",
		[151883] = "Anaua",
		[121035] = "Teufelsklingenwächter",
		[127145] = "Blutsängerin von Zalamar",
		[148300] = "Kurbelknallblaster",
		[131408] = "Firmenmuskelprotz",
		[100048] = "Seelenschinder der Zornwächter",
		[138567] = "Shathhoth der Bestrafer",
		[79285] = "Mondsturzmatriarchin",
		[112301] = "Finna Bjornsdottir",
		[111821] = "Adept des Dämonenpakts",
		[164169] = "Sonnenberührter Falke",
		[152396] = "Wächter von Azeroth <Noreya-Rexxar>",
		[91459] = "Schläger der Naga",
		[129961] = "Gotaka der Atal'zul",
		[21301] = "Zertrümmerer des Echsenkessels",
		[97713] = "Lightning Stalker",
		[59486] = "Bannerwache der Bataari",
		[134993] = "Mchimba der Balsamierer",
		[94386] = "Verfluchtes Urhorn",
		[43234] = "Erdberster der Steintroggs",
		[144719] = "Kanonierin der Eidgebundenen",
		[21749] = "Unbekannt",
		[137553] = "General Krathax",
		[129764] = "Hexverrückte Hirschkuh",
		[149839] = "Mechanisierter Schrotthund",
		[120748] = "Abscheuliche Teufelsschwinge",
		[131411] = "Giftschuppenwaran",
		[146256] = "Laminaria",
		[144720] = "Kampfgestählte Kriegerin",
		[97202] = "Olmyr der Erleuchtete",
		[153934] = "Gezeitenherrin Ethendriss",
		[122284] = "Unbekannt",
		[126635] = "Blutpriesterin Xak'lar",
		[126891] = "Bluthexe Yialu",
		[131410] = "Gigantische Giftschuppe",
		[159116] = "Herausforderer Soong",
		[144721] = "Schwarzpulverexperte",
		[107440] = "Teufelssogjäger",
		[159117] = "Riki der Wechselschatten",
		[154447] = "Bruder Meller",
		[118700] = "Teufelsfäulnispirscher",
		[120749] = "Übler Peiniger",
		[138992] = "Pfützenspringer der Schlammflossen",
		[96691] = "Machtsteinschleuderer",
		[144722] = "Togoth Grobfaust",
		[141139] = "Diener von Bwonsamdi <Pursan-DunMorogh>",
		[116689] = "Atrigan",
		[154448] = "Mechanisierter Krabbler",
		[116939] = "Gefallener Avatar",
		[93619] = "Metzlerhöllenbestie",
		[155984] = "Schnellklinge der Vil'thik",
		[74169] = "Schummerschattenheuler",
		[157005] = "Seelenschinden",
		[116171] = "Teufelsklingenwächter",
		[82196] = "Leerenpriesterin des Schattenmondklans",
		[58810] = "Fragment des Hasses",
		[119203] = "Sklaventreiber des Dämonengrolls",
		[120750] = "Instabiler Trickser",
		[155985] = "Bernformer Gokilak",
		[144212] = "Grobian der Knochenritzer",
		[157009] = "Unbekannt <Jäsmin-ChamberofAspects>",
		[149331] = "Leuchtendes Azerit",
		[133463] = "Kriegsmaschine der Venture Co.",
		[163025] = "Goliath der Aqir",
		[126637] = "Kandak",
		[118703] = "Teufelsgeborene Botanikerin",
		[151945] = "Plünderer der Dünenläufer",
		[119724] = "Gezeitenwoger",
		[157010] = "Wildtier <Lîghtnîng-Malorne>",
		[102094] = "Auferstandener Schwertkämpfer",
		[144725] = "Blutrünstiger Kopfjäger",
		[154451] = "Oktopusschwanzkreischer",
		[129699] = "Ludwig Von Tortollen",
		[135000] = "Abgrundverderber",
		[152915] = "Neophytin der Azsh'ari",
		[164170] = "Sonnenberührter Akolyth",
		[152916] = "Wellenbrecherin der Azsh'ari",
		[149333] = "Schwarzpulverbombe",
		[158035] = "Magister Umbric",
		[159135] = "Meisteranglerin Marina",
		[152392] = "Korrodierter Spulenträger",
		[118704] = "Dul'zak",
		[127150] = "Koch der Schmutzsteine",
		[135052] = "Seuchenkröte",
		[144727] = "Schamane der Wolkenbrecher",
		[152917] = "Sturmwogerin der Azsh'ari",
		[143020] = "Gorak Tul",
		[56395] = "Shado-Pan-Novize",
		[109021] = "Lodernder Unhold",
		[135002] = "Dämonischer Tyrann",
		[121008] = "Beklemmende Verzweiflung",
		[161157] = "Sandsteinzerstörer",
		[152918] = "Orakel der Azsh'ari",
		[144789] = "Ranah Säbelklaue",
		[56929] = "Beschützer der Krik'thik",
		[139658] = "Tiefenlichtmatschkrabbler",
		[126919] = "Sturmruferin der Eisenfluträuber",
		[118705] = "Nal'asha",
		[138979] = "Gezeitenrufer der Schlammflossen",
		[156502] = "Korallenrochen <Tiefenrochenbruthüter>",
		[152919] = "Elementaristin der Azsh'ari",
		[127919] = "Schädelbersterin der Loaschlächter",
		[153943] = "Dezimierer Shiq'voth",
		[0] = "Auge der Verderbnis",
		[126151] = "Fluchgeformter Familiar",
		[61389] = "Kargeshhochwache",
		[159120] = "Weiser Weißherz",
		[103344] = "Eichenherz",
		[161110] = "Rasender Wächter von Ramkahen",
		[113872] = "Teufelskondensatorwichtel",
		[137564] = "Verseuchte Manifestation",
		[59105] = "Thecrayne",
		[95034] = "Unbekannt <Erdenruferin Gulgort>",
		[118706] = "Nekrotischer Spinnling",
		[151897] = "Sonnenpriesterin Nubitt",
		[149338] = "Instabiles Azerit",
		[136541] = "Gallschlammling",
		[27893] = "Unbekannt <Cøcâ-Thrall>",
		[27957] = "Spuk von Angrathar",
		[162647] = "Williges Opfer",
		[121193] = "Schattenseele",
		[128650] = "Rothaken der Häcksler",
		[160088] = "Dunkelblickbeobachter",
		[110486] = "Huk'roth der Meisterjäger",
		[161112] = "König Phaoris",
		[146253] = "Bruder Joseph",
		[158041] = "N'Zoth der Verderber",
		[97720] = "Pestsplitterhuscher <Rokmora>",
		[97940] = "Zornwächter",
		[65504] = "Raffzahnnervensäge",
		[144733] = "Todeswachenkommandant Vandel",
		[152411] = "Seher der Kil'karrok",
		[161113] = "Akhet",
		[127921] = "Metzger der Loaschlächter",
		[135049] = "Unheilschwingenrabe",
		[154459] = "Vorhut der Horde",
		[61245] = "Totem der Energiespeicherung <Shippou-Ysera>",
		[159578] = "Ungeschützte Synapse",
		[121011] = "Hexe der Gezeitenschuppen",
		[152412] = "Gezeitenschamane der Kil'karrok",
		[54627] = "Vorarbeiterin von Zwillingsfels",
		[148392] = "Makrura der Kil'karrok",
		[137568] = "Verseuchter Schrecken",
		[158157] = "Oberanführer Mathias Shaw",
		[51044] = "DönerPommes",
		[84944] = "Eiserner Späher",
		[17464] = "Gladiator der Zerschmetterten Hand",
		[152413] = "Hammerzange der Kil'karrok",
		[136545] = "Verheererin der Sethrak",
		[107447] = "Harpunier der Hassnattern",
		[95674] = "Fenryr",
		[128434] = "Fressender Himmelskreischer",
		[151807] = "Gezähmter Dünenläufer",
		[26482] = "Zwilling",
		[128965] = "Uroku der Gebundene",
		[125363] = "Manatrinkerin der Faulschuppen",
		[80574] = "Aufseher Gotrigg",
		[17462] = "Zelot der Zerschmetterten Hand",
		[162140] = "Skikx'traz",
		[134024] = "Verschlingende Made",
		[130738] = "Verderbtes Gold",
		[114614] = "Geistfetzer der Kvaldir",
		[36968] = "Axtwerfer der Kor'kron",
		[152415] = "Alga der Augenlose",
		[136547] = "Kriegshetzer der Sethrak",
		[89097] = "Höhlenskrog",
		[162141] = "Zuythiz",
		[133988] = "Verfluchter Gerfalke",
		[144784] = "Charg \"der Protzige\"",
		[119495] = "Kriegsbulle der Teufelstotems",
		[128435] = "Toxischer Saurid",
		[139654] = "Dunstschuppenschlammhüpfer",
		[136548] = "Kriegskrolusk",
		[136015] = "Minenarbeiter der Reißzahnfeste",
		[130006] = "Sturmsangloyalist",
		[135192] = "Geehrter Raptor",
		[141641] = "Felskiefersaurolisk",
		[161407] = "Instabiler Klumpen <Schleimige Schleimsphäre>",
		[110776] = "Dämonenversklavter Wichtel",
		[107439] = "Bestienfütterer der Salzaugen",
		[136549] = "Aschenwindkanonier",
		[158048] = "Verformte Fleischbestie",
		[119990] = "Penny",
		[133990] = "Schlächter der Knochenritzer",
		[116407] = "Harjatan",
		[100539] = "Pestherzscharfschütze",
		[131431] = "Sicherheitskontrollbot",
		[90379] = "Verdorrter Exilant",
		[136550] = "Aufgeladener Wächter",
		[129972] = "Sandbrecherlanze",
		[118455] = "Rasselnder Zornwandler",
		[150371] = "Instabiler Tidenwoger",
		[114360] = "Hyrja",
		[95676] = "Odyn",
		[157275] = "Finsterstimmenjünger",
		[119223] = "Kreischer der Teufelsschwingen",
		[136551] = "Unterwerfer der Kao-Tien",
		[119735] = "Braumeisterin Blanche",
		[128181] = "Rachsüchtiger Toter",
		[154467] = "Häuptling Mek-mek",
		[28858] = "Sturmklagegeist",
		[155468] = "Defekte Gliedmaße",
		[80321] = "Chimaera",
		[117176] = "Teufelspirscher",
		[136552] = "Marodeur der Kao-Tien",
		[135226] = "Spross von Umbra'rix",
		[137576] = "Rekruten der Venture Co.",
		[130485] = "Mechanisierter Friedensbewahrer",
		[114361] = "Hymdall",
		[118712] = "Vollstrecker der Teufelsschreiter",
		[17465] = "Zenturio der Zerschmetterten Hand",
		[133482] = "Kriechermine",
		[43368] = "Pilzgärtner von Verlok",
		[137065] = "Öler der Venture Co.",
		[158052] = "Scharmützler der Zara'thik",
		[99773] = "Blutwurm <Qarinah>",
		[129989] = "Pulverschütze der Eisenfluträuber",
		[115896] = "Zitterqualle",
		[134999] = "Bruder Haller",
		[153957] = "Korrodierte Maschinistin",
		[161124] = "Urg'roth der Heldenbrecher",
		[89024] = "Tiefenpirscher der Hassnattern",
		[136616] = "Niederer azeritdurchströmter Elementar",
		[101821] = "Warpwirker der Nachtgeborenen",
		[131436] = "Auserwählte Blutmatrone",
		[118713] = "Sphärenwirkerin der Teufelsschreiter",
		[139626] = "Hochgespülter Matrose",
		[82370] = "Sumpfleuchterarbeiter",
		[136555] = "Sturmgebundener Eroberer",
		[145257] = "Schlicksprüherin",
		[153959] = "Wilder Schnappdrache",
		[150376] = "RochenJochen",
		[160126] = "Manipulator Yggshoth",
		[123135] = "Wilder Säbelhauer",
		[153960] = "Unbekannt",
		[136044] = "Giftquell",
		[129719] = "Klabauti",
		[89025] = "Aufhetzerin der Hassnattern",
		[81091] = "Unbekannt",
		[138092] = "Feuerteufelin der Venture Co.",
		[102078] = "Roggsplitter <Grausteinsplittermeister>",
		[118714] = "Höllenglutverführerin",
		[121029] = "Brutmutter Nix",
		[82371] = "Sumpfleuchterdrohne",
		[142088] = "Wirbelschwinge",
		[158568] = "Stellarpylon <Saba-tok>",
		[144769] = "Nachtflutzauberin",
		[138093] = "Feuerteufel der Venture Co.",
		[152426] = "Schimmerschalenkoloss",
		[130232] = "Giftige Ringelschuppe",
		[129208] = "Schreckenskapitänin Luebke",
		[156521] = "Dunkelsprecher der K'thir",
		[157033] = "Dünenläufer des Sklaventreibers",
		[118716] = "Gallsprühpeitscher",
		[61029] = "Urfeuerelementar <Sciahomerus-Pozzodell'Eternità>",
		[162664] = "Unbekannt <Schwarmwächter der Aqir>",
		[82373] = "Leerenwolf",
		[118715] = "Reanimierter Templer",
		[118971] = "Schreckensschuppe der Teufelsflossen",
		[24696] = "Hexe der Echsennarbe",
		[157034] = "Sklaventreiber der Amathet",
		[137587] = "Verfluchter Diener",
		[153963] = "Gedankengefesselte Kelfinne",
		[138095] = "Feuerteufel der Venture Co.",
		[159082] = "Knochenhäuter von N'Zoth",
		[117957] = "Gepeinigte Seele",
		[95939] = "Flutstampferskrog",
		[156523] = "Ma'ut",
		[154480] = "Königin Azshara",
		[118718] = "Buch des ewigen Winters",
		[89283] = "Giftmischer der Bittergischt",
		[130489] = "Lizard",
		[118460] = "Das Seelenkonstrukt",
		[163690] = "Shath'Yarschreiberin",
		[59494] = "Hefiger Braubierlementar",
		[43242] = "Lavafelsspalt",
		[43370] = "Roter Nebel",
		[135541] = "Bilgewasserverbrenner",
		[137585] = "Erdengriff <Wagga Knurrzahn>",
		[134002] = "Unterfürst Xerxiz",
		[134514] = "Abgrundkultist",
		[136565] = "Bluthexe Pakkala",
		[104640] = "Unbekannt",
		[120516] = "Schnellflosse der Reißmäuler",
		[113342] = "Wildtier <Glutschi-Nefarian>",
		[145267] = "AzerMEK Mk. II",
		[89284] = "Salzwirker der Bittergischt",
		[141696] = "Felskiefermatriarchin",
		[147827] = "Marinesoldat der 7. Legion",
		[36844] = "Auferstandener Diener der Todessprecher",
		[127682] = "Eispelzyeti",
		[136051] = "Klaftar",
		[37228] = "Krieger der Frostwächter",
		[123836] = "Nezar'Azret",
		[91332] = "Steinklauenjäger",
		[140149] = "Freigelassener Krogg",
		[128699] = "Blutwulst",
		[37868] = "Auferstandener Erzmagier",
		[100546] = "Lord Kra'vos",
		[121790] = "Dominator der Flottenlords",
		[113343] = "Wildtier <Eichenhorn-Lothar>",
		[109504] = "Zornschlund",
		[118724] = "Höllenglutteufelsbringer",
		[134005] = "Schieferbeißer",
		[118462] = "Seelenkönigin Dejahna",
		[139124] = "Seeformerin der Zeth'jir",
		[59495] = "Faustkloppzerkracher",
		[89286] = "Ältester der Mak'rana",
		[107201] = "Willensbrecher der Legion",
		[119742] = "Einfallende Teufelswache",
		[162159] = "Schmettertentakel",
		[81357] = "Schlackeschlepper des Schwarzfelsklans",
		[79560] = "Krull",
		[24697] = "Schwester der Qual",
		[131447] = "Stampfer der Borstennacken",
		[144244] = "Unbekannt",
		[37229] = "Zauberin der Frostwächter",
		[129980] = "Abgrundaal",
		[162160] = "Obsidianzerstörer",
		[114112] = "Portal nach Nihilam",
		[148861] = "Fire from Bomb Hit (Wrapper",
		[118719] = "Wyrmzungenplünderer",
		[78025] = "Leerenschildtotem <Leerenbinder des Schattenmondklans>",
		[160625] = "Verstörende Galle",
		[24761] = "Hellschuppenwyrm",
		[16699] = "Häscher der Zerschmetterten Hand",
		[137591] = "Totem der Heilungsflut <Spektrale Hexendoktorin>",
		[99524] = "Bewahrerin Selentia",
		[58216] = "Kräuterkundiger der Wildschuppen",
		[139127] = "Instabile Kapsel",
		[33776] = "Unbekannt",
		[38125] = "Todesbringerin der Ymirjar",
		[144758] = "Professor Seuchenherd",
		[129981] = "Gezeitengebundener Korsar",
		[126142] = "Unbekannt",
		[20923] = "Blutwache Porung",
		[144246] = "K.U.-J.0.",
		[135032] = "Gebrochener Feigling",
		[161139] = "Akolythin von N'Zoth",
		[102852] = "Morjirn",
		[59752] = "Shado-Pan-Lauerer",
		[95174] = "Aschenhexe der Scharrfurien",
		[21818] = "Ewiger Welpe",
		[141175] = "Herrin der Gesänge Dadalea",
		[98757] = "Grubenlord",
		[144760] = "Schreddermeister Blix",
		[129214] = "Münzbetriebener Meuteverprügler",
		[144248] = "Hochmaschinist Funkenstrom",
		[161140] = "Bwemba",
		[118723] = "Gazerax",
		[149879] = "Automatisches Flammengeschütz",
		[162164] = "Dominator der Aqir",
		[159093] = "Sara Finkelknips",
		[161141] = "Beschwörerin des Schwarzen Imperiums",
		[140666] = "Zermalmer der Eisenfluträuber",
		[144249] = "Omegabrecher",
		[37230] = "Bastionsfrostwyrm",
		[131445] = "Blockwärter",
		[134012] = "Vorarbeiter Askari",
		[128447] = "Sturmgebundener Eroberer",
		[159094] = "Bandit",
		[92104] = "Distelblattstrolch",
		[119489] = "Höllenbestie der Teufelsbelagerung",
		[129471] = "Tiefseesandkriecher",
		[144762] = "Delaryn Sommermond",
		[90057] = "Dolchschnabel",
		[126144] = "Schwester Eschbrunn",
		[27513] = "Begieriger Spuk",
		[159095] = "Kairo",
		[94152] = "Hexerin der Finsterschwingen",
		[90313] = "Llothienstreuner",
		[43373] = "Tobender Kristallwandler",
		[119490] = "Himmelsrufer Drez'mal",
		[160630] = "Dreck",
		[138618] = "Durchgebrannter Golem",
		[89287] = "Königin Kraklaa",
		[159096] = "Der Fiedler",
		[163703] = "Tiefenbausoldat",
		[89289] = "Matrose der Revanche der Königin",
		[94153] = "Kreischerin der Finsterschwingen",
		[136568] = "Hauptmann Conrad",
		[105676] = "Eingesponnenes Opfer",
		[89290] = "Matrosin der Revanche der Königin",
		[154490] = "Rijz'x der Verschlinger",
		[89802] = "Skrog der Hassnattern",
		[163704] = "Tiefenbauleerensänger",
		[17083] = "Höllenorckonvertit",
		[24698] = "Schmuggler des Astraleums",
		[144765] = "Asithra Düstersang",
		[123839] = "Auferstandenes Ross",
		[16700] = "Legionär der Zerschmetterten Hand",
		[150396] = "Lufteinheit R-21/X",
		[54123] = "Echo von Sylvanas",
		[163705] = "Tiefenbauschwarmgeborener",
		[135552] = "Unbekannt",
		[54507] = "Zeitlinienversetzte Seuchenbestie",
		[21179] = "Bittsteller der Dämonenjäger",
		[72655] = "Fragment des Stolzes",
		[16507] = "Wachposten der Zerschmetterten Hand",
		[150397] = "König Mechagon",
		[89803] = "Gezeitenbrecher",
		[131009] = "Geist des Goldes",
		[118980] = "Lorgos der Reanimator",
		[152445] = "Schimmerschalenkrabbler",
		[55659] = "Wildwichtel",
		[153469] = "Niederer Zoatroid",
		[60010] = "Kampfziege",
		[99267] = "Abkömmling der Nachtgeborenen",
		[75471] = "Rasender Sumpfleuchter",
		[59751] = "Shado-Pan-Hüter",
		[98243] = "Seelengeschändeter Champion",
		[97219] = "Solsten",
		[161134] = "Akolythin von N'Zoth",
		[109511] = "Teufelsschläger der Zornwächter",
		[162172] = "Schlachtzauberer der Aqir",
		[118717] = "Höllenglutwichtel",
		[77519] = "Giantbane",
		[163708] = "Umbraltorwächter",
		[92610] = "Hämmerer des Tiefgesteins",
		[126907] = "Kriegstrommlerin Zurula",
		[37232] = "Brutling der Nerub'ar",
		[152939] = "Unendliche Verderbnis",
		[130488] = "Mechjockey",
		[153962] = "Fallensteller der Zanj'ir",
		[37744] = "Frost Freeze Trap",
		[133841] = "Hauptmann Gutflink",
		[139651] = "Tiefenlichtlichttiefseher",
		[118728] = "Schauriger Knochenwärter",
		[144770] = "Nachtfluthexe",
		[153956] = "Ertrunkener Zelot",
		[101578] = "Niederer Inquisitor",
		[142661] = "Unbekannt",
		[27578] = "Unbekannt",
		[136553] = "Salzrückenkrolusk",
		[139652] = "Tiefenlichtküstenläufer",
		[141143] = "Schwester Absinthia",
		[5985] = "Grauschopf",
		[90621] = "Nachtgleve die Verräterin",
		[141700] = "Unbekannt",
		[134022] = "Gefesselter Schwall",
		[139660] = "Dunstschuppenmurloc",
		[61069] = "Shai Hu",
		[157602] = "Unbekannt",
		[152450] = "Zelot der Amathet",
		[79585] = "Zuchtmeister Gurran",
		[72658] = "Hybrisamalgam",
		[136546] = "Wärter der Sethrak",
		[81360] = "Murenfaust",
		[95675] = "Gottkönig Skovald",
		[163712] = "Unbekannt",
		[94413] = "Isel der Hammer",
		[111281] = "Buchtdrescher",
		[152963] = "Lord Ha'kass",
		[115656] = "Dreckiger Akkordarbeiter",
		[56763] = "Regenerierendes Sha",
		[158594] = "Weltuntergangsverkünder Vathiris",
		[112329] = "Kariel",
		[135048] = "Blutverschmiertes Ferkel",
		[121031] = "Höllischer Wichtel",
		[138125] = "Panzeringenieur",
		[56034] = "Diebischer Ebenenfalke",
		[105419] = "Unbekannt <Sternw-Uldaman>",
		[126150] = "Wiedererweckter Krieger",
		[157120] = "Reißzahnsammler Orsa",
		[147938] = "Azerjuwelenkristallrücken",
		[126918] = "Kunstschütze der Eisenfluträuber",
		[133155] = "G'Naat",
		[150442] = "Fliegende Klaue",
		[21231] = "Schildträger der Grauherzen",
		[115657] = "Aufseher des Verdammnisschwurs",
		[139661] = "Dunstschuppenhamsterer",
		[125452] = "Seichtwassersaurolisk",
		[27829] = "Schwarzer Gargoyle <Vanna-Azshara>",
		[128966] = "Sumpfhornisse",
		[139657] = "Tiefenlichtküstenschläger",
		[117193] = "Agronox",
		[152966] = "Lady Narjiss",
		[77936] = "Großer Sturmelementar <Fauli-Tirion>",
		[113866] = "Muschelbezwinger der Salzaugen",
		[139663] = "Dunstschuppenschilfflechter",
		[89808] = "Murlocbrutstätte",
		[18429] = "Arkane Bestie <Astraler Zauberer>",
		[151943] = "Jäger der Amathet",
		[152455] = "Prügelpanzerarena",
		[144777] = "Nachtflutmarodeur",
		[115658] = "Inquisitor des Verdammnisschwurs",
		[162181] = "Schwarmmeister Nazzex",
		[128455] = "T'lonja",
		[137504] = "Reporterin der Venture Co.",
		[128967] = "Aschenwindheckenschütze",
		[139659] = "Dunstschuppenorakel",
		[117194] = "Dreschzahn der Spöttische",
		[144778] = "Nachtflutchampion",
		[72661] = "Eifer",
		[24781] = "Netherenergie",
		[134029] = "Holzzahnlingbeschworener",
		[93904] = "Brennende Ausgeburt",
		[126929] = "Monströser Grizzly",
		[127176] = "Kroggschlüpfling",
		[130088] = "Ertrunkener Harpunier",
		[148874] = "Hüter Xibek",
		[107469] = "Tobender Sturmjäger",
		[136295] = "Versunkener Bewohner",
		[99791] = "Koralunettin",
		[146827] = "Wildhund",
		[135054] = "Verstörter Feigling",
		[121034] = "Gefräßiger Teufelspirscher",
		[58960] = "Arcaton",
		[144780] = "Nachtflutschläger",
		[161672] = "Unbekannt",
		[137614] = "Verwüstender Schrecken",
		[101839] = "Auferstandener Gefährte",
		[102095] = "Auferstandener Lanzer",
		[118731] = "Höllischer Belagerungsplünderer",
		[139662] = "Dunstschuppenregenrufer",
		[121004] = "Myrmidone der Reißmäuler",
		[134994] = "Spektraler Kopfjäger",
		[139358] = "Der Zuckerbäcker",
		[79061] = "Leerenzerissener Kaliri",
		[138250] = "Lache der Dunkelheit",
		[112333] = "Jesibelle",
		[128969] = "Aschenwindkommandant",
		[125130] = "Giftiger Weber",
		[54511] = "Zeitlinienversetzter Spuk",
		[157617] = "Schnellklinge der Vil'thik",
		[137104] = "Orcischer Räuber",
		[147786] = "Seuchenverbreiterin der Verlassenen",
		[126410] = "Herzbannakolythin",
		[89811] = "Unterworfener Murloc",
		[139152] = "Carla Schmunzel",
		[139664] = "Dunstschuppenschreckensfinne",
		[140106] = "Todesstachelbrutwächter",
		[59758] = "Terrakottakrieger",
		[100526] = "Gequälter Blutsucher",
		[158092] = "Gefallener Herzdurchbohrer",
		[133963] = "Versuchsobjekt",
		[146831] = "Sturmbringer von Kul Tiras",
		[118951] = "Tael'thos der Aufschlitzer",
		[139665] = "Belagerungsturm",
		[160652] = "Unbekannt",
		[136594] = "Käpt'n Rez'okun",
		[127142] = "Kriegerin von Zalamar",
		[65133] = "Zauberer der Shao-Tien",
		[146838] = "Brüchiges Skelett",
		[36724] = "Diener des Throns",
		[138812] = "Dentone",
		[131476] = "Zayoos",
		[74200] = "Fleischfressendes Eichhörnchen",
		[140690] = "Schreckenszahnviper",
		[155054] = "Unbekannt",
		[153999] = "Entfesselter Gezeitenzorn",
		[42428] = "Ergebener Anhänger",
		[159118] = "Lao Lang",
		[146755] = "Geifernde Schädelspalterin",
		[129227] = "Azerokk",
		[118950] = "Nethos Sternwandler",
		[140691] = "Riesenschreckenszahn",
		[145298] = "Verwilderter Witterer",
		[133525] = "Totem der Resonanz",
		[81367] = "Schmiedearbeiter des Schwarzfelsklans",
		[146834] = "Totenbeschwörermeister",
		[151871] = "Sägeblattroder",
		[61387] = "Qilenwächter",
		[152465] = "Nadelstachel",
		[35189] = "Loki",
		[117344] = "Teufelserfüllter Wurmling",
		[141716] = "Felskieferjunges",
		[120270] = "Dämonischer Obelisk",
		[146835] = "Ghul",
		[159632] = "Schattenklinge der Kultisten",
		[140095] = "Morastschnauzenaufspießer",
		[109009] = "Überschüssige Macht <Ael'Yith>",
		[143488] = "Bilgewasserbohrerin",
		[129996] = "Schweres Schlitzen",
		[65134] = "Faust der Shao-Tien",
		[130508] = "Brutmutter Razora",
		[36725] = "Bruthüter der Nerub'ar",
		[36853] = "Sindragosa",
		[139670] = "Morgok",
		[145308] = "Rottenmeisterin Stahlzahn",
		[119503] = "Pädagoge Gandorak",
		[153909] = "Einfluss von N'Zoth",
		[152367] = "Hamsterer der Blutflossen",
		[16243] = "Seuchenschleim",
		[138647] = "Hjana Nebelbringer",
		[100308] = "Li Li Sturmbräu",
		[116944] = "Mephistroth",
		[100820] = "Geisterwolf",
		[129950] = "Kralle",
		[21246] = "Sporensegler des Echsenkessels",
		[58456] = "Stáncer",
		[134041] = "Infizierter Arbeiter",
		[138648] = "Sigrid die Verhüllungsweberin",
		[126926] = "Giftkiefer",
		[17471] = "Geringer Schattenspalt <Großhexenmeister Nethekurse>",
		[132409] = "Federviper",
		[56920] = "Mantisausrüstung",
		[126621] = "Knochenschwall",
		[99541] = "Auferstandener Schleicher <Naneria-Thrall>",
		[151858] = "Auserwählter der Amathet",
		[75483] = "Gestreifter Ebenenpirscher",
		[128974] = "Königin Tzxi'kik",
		[104660] = "Blargrul der Belagerungsbrul",
		[156565] = "Beschwörer des Schwarzen Imperiums",
		[101077] = "Einschüchterung",
		[145304] = "Verwilderter Würger",
		[137626] = "Verwüstender Schrecken",
		[63574] = "Cloud Tile Trap Bunny",
		[146840] = "Skelettwächter",
		[18431] = "Astrales Leuchtfeuer",
		[36982] = "Raketenschütze der Kor'kron",
		[156566] = "Gurgelnde Fleischbestie",
		[161173] = "Abgrundbeobachter",
		[149400] = "Königliche Schreckenswache",
		[145817] = "Hauptmann Holgresh",
		[130655] = "Robbi Knurris <Jes Knurris>",
		[131558] = "Invasive Klingenschwinge",
		[628] = "Schwarzer Verheerer",
		[129231] = "Rixxa Fluxflamme",
		[156567] = "Gedankenfresser",
		[152984] = "Haggronar",
		[157591] = "Geistesgestörte Fleischbestie",
		[21253] = "Besudelter Wasserelementar <Hydross der Unstete>",
		[123290] = "Spiegelpanzerklacker",
		[126672] = "Senkenaal",
		[126928] = "Korsarin der Eisenfluträuber",
		[117403] = "Skrog des Dämonengrolls",
		[156568] = "Gesichtsloser Plünderer",
		[140077] = "Knöchelhauerstampfer",
		[145307] = "Arbeiter der Verlassenen",
		[59605] = "Durchtränkter Ho-zen-Raufbold",
		[64852] = "Jadewächter",
		[146843] = "Stachelghul",
		[39926] = "Zwielichtentzünder",
		[135582] = "Krolusksandjäger",
		[137516] = "Aschenwindeindringling",
		[144796] = "Hochtüftler Mekkadrill",
		[89050] = "Boss Walplauze",
		[156457] = "Schleimige Verderbnis",
		[91808] = "Serpentrix",
		[159129] = "Aysa Wolkensänger",
		[36855] = "Lady Todeswisper",
		[114900] = "Greifendes Tentakel",
		[160665] = "Flammen des Wahnsinns",
		[152987] = "Gesichtsloser Willensbrecher",
		[157594] = "Unbekannt",
		[16704] = "Scharfschütze der Zerschmetterten Hand",
		[161571] = "Wächter des Anubisath",
		[159130] = "Ausbilder Windspeer",
		[139167] = "Pioniertechniker",
		[135584] = "Ertrunkener Hierarch",
		[136490] = "Unbekannt",
		[152988] = "Gesichtsloser Schattenrufer",
		[145310] = "Lehrling von Orgrimmar",
		[21232] = "Schleicher der Grauherzen",
		[128660] = "Treuloser Aggressor",
		[159131] = "Heiran Steinmagen",
		[139168] = "Blutrünstige Kopfjägerin",
		[139680] = "Lichtloser Jäger",
		[156572] = "Weltuntergangsverkünder der K'thir",
		[99481] = "Kieferfelspirscher",
		[149406] = "Dunkle Waldläuferin der Kaldorei",
		[91355] = "Mondschwinge",
		[162715] = "Fanatische Kultistin",
		[75487] = "Messerklauenjäger",
		[139169] = "Tobender Grunzer",
		[120723] = "Annihilanfanatikerin",
		[145181] = "Geistrufer der Eidgebundenen",
		[96986] = "Höhlenschnauzer der Blaukerzen",
		[145312] = "Kreissäge",
		[133539] = "Lo'kuno",
		[126419] = "Naroua",
		[131824] = "Schwester Solena",
		[139170] = "Verwüster",
		[131492] = "Ergebene Blutpriesterin",
		[152479] = "Leerenentstellter Welpe",
		[119509] = "Ausbilder der Schreckensklingen",
		[146714] = "Ekelwanst",
		[7885] = "Kampfmeister der Grollflossen",
		[162717] = "Finstere Seelenschnitzerin",
		[79583] = "Ungra",
		[120789] = "Leutnant Silbermacht",
		[38008] = "Blood Orb Controller",
		[156575] = "Dunkle Inquisitorin Xanesh",
		[129747] = "Wirbelwindsäbel",
		[153504] = "Niederer Zoatroid <Gnadenloses Ei>",
		[126095] = "Vyliss",
		[162718] = "Vollstrecker mit eisernem Willen",
		[138660] = "Nebelhund",
		[43954] = "Fungusschrecken",
		[123093] = "Ankylodonbulle",
		[156576] = "Gedankenräuber der K'thir",
		[144803] = "Blutrünstiges Crewmitglied",
		[157600] = "Abgemagerte Fleischbestie",
		[21230] = "Nethermagier der Grauherzen",
		[162719] = "Leerenaszendent",
		[159136] = "Älteste Lin",
		[124885] = "Bezirzter Finsterrachen",
		[139685] = "Gebäude zerstört",
		[156577] = "Therum Tiefenschmied",
		[136614] = "Azeritdurchströmter Brocken",
		[137126] = "Explosive Ratte",
		[137638] = "Feuer des Bombeneinschlags",
		[56272] = "Unbekannt",
		[159137] = "Kalligraph Resshi",
		[150292] = "Kavallerist von Mechagon",
		[131496] = "Vorarbeiter Klingenknurr",
		[144293] = "Müllverarbeitungseinheit",
		[144805] = "Gezeitenbrecherskrog",
		[127957] = "Erwachter Klagegeist",
		[31147] = "Heimtückischer Spuk",
		[134056] = "Aqu'sirr",
		[146853] = "Kefolkis der Unbegrabene",
		[147202] = "Animierter Azersplitter",
		[92307] = "Gottkönig Skovald",
		[144294] = "Tüftlerin von Mechagon",
		[96989] = "Katakombenratte",
		[157603] = "Leerenkügelchen",
		[123275] = "Salzpelz-Ho-zen",
		[134057] = "Schreckenszeckenbeißer",
		[100943] = "Totem des irdenen Walls <Dexax-DunMorogh>",
		[163746] = "Spazierschock X1",
		[123095] = "Jossie",
		[144295] = "Mechaniker von Mechagon",
		[59764] = "Totem der Heilungsflut",
		[157604] = "Krabbelnde Verderbnis",
		[104755] = "Lady Keletress",
		[124375] = "Vollgefressener Saurolisk",
		[37782] = "Fleischfressendes Insekt",
		[153303] = "Leerenklinge Kassar",
		[117112] = "Teufelsklingenwächter",
		[160676] = "Terrortentakel",
		[129750] = "Scharmützler der Borstenrücken",
		[157605] = "Grabende Gliedmaße",
		[129906] = "Tunnelgräber der Borstenrücken",
		[126423] = "Unbekannt",
		[130774] = "Unbekannt",
		[135905] = "Spore der Blutschwämme",
		[123096] = "Scharfzahn der Froschmarschen",
		[123352] = "Schneepelzheuler",
		[156372] = "Leerenriss",
		[137131] = "Hexruferin des Zirkels",
		[153305] = "Metzler der Zanj'ir",
		[134060] = "Lord Sturmsang",
		[146857] = "Eroberin der Eidgebundenen",
		[103177] = "Winzling der Schleimschnauzen",
		[37571] = "Sinistrer Berater",
		[144298] = "Verteidigungsbot Mk. III",
		[144810] = "Luftschiffingenieur",
		[157607] = "Gesichtsloser Schattenrufer",
		[130952] = "Schwester Ava",
		[126424] = "Korallenrückenbrandungskriecher",
		[125453] = "Stachelrattenmatriarchin",
		[82315] = "Totem der Leerenmonstrosität <Ungra>",
		[6584] = "König Mosh",
		[144299] = "Werkstattverteidiger",
		[155612] = "Kanalisiererin der Azsh'ari",
		[157608] = "Gesichtsloser Willensbrecher",
		[62346] = "Galleon",
		[158632] = "Verderbte Fleischbestie",
		[146859] = "Versklavter Felselementar",
		[138469] = "Obsidianbannschuppe",
		[24128] = "Wolf",
		[125401] = "Invasive Stachelratte",
		[80653] = "Schockschuppenaal",
		[157609] = "Gedankenschnitzer der K'thir",
		[97504] = "Phantomkralle",
		[134063] = "Bruder Eisenkiel",
		[146860] = "Marodeur der Nebelskorn",
		[154222] = "Pirscher der Zanj'ir",
		[119930] = "Unheilschwinge",
		[144301] = "Lebender Müll",
		[6194] = "Schlangenwache der Grollflossen",
		[157610] = "Dominator der K'thir",
		[158122] = "Geistiges Auge",
		[126967] = "Mittellandhirsch",
		[146861] = "Geifernder Schädelspalter",
		[124890] = "Bezauberter Knochenpicker",
		[125816] = "Himmelskönigin",
		[152492] = "Unbekannt",
		[129753] = "Blutrünstiger Kopfjäger",
		[145326] = "Herbeiruferin der Azsh'ari",
		[126170] = "Gehirngewaschener Vollstrecker",
		[73191] = "Aquatischer Verteidiger",
		[148391] = "Plünderer der Kil'karrok",
		[102788] = "Teufelsgrollunterwerfer",
		[161502] = "Unersättliches Fleischmonster",
		[144303] = "W.A.C.H.E.",
		[101637] = "Aspirantin der Valarjar",
		[157612] = "Auge von Drest'agath",
		[137649] = "Schädlingsbekämpfer MK. II",
		[153315] = "Eldanar",
		[146863] = "Verheerer der Nebelskorn",
		[152236] = "Lady Aschenwind",
		[117833] = "Zornfürst Akrazar",
		[140209] = "Verfiddelte Rumwache",
		[151684] = "Kieferbrecher",
		[157613] = "Schlund von Drest'agath",
		[131311] = "Entfesseltes Azerit",
		[133870] = "Kranker Peitscher",
		[18370] = "Wilder Schattenspalt <Großhexenmeister Nethekurse>",
		[126463] = "Salzfederadler",
		[145129] = "Champion der Todeswache",
		[94691] = "Übergroße Larve",
		[122664] = "Kriegsfürstin Malaja",
		[123868] = "Flechtenkiefersaurolisk",
		[129657] = "Za'amar, Klinge der Königin",
		[94986] = "Fleischfetzerroc",
		[138675] = "Vollgefressener Eber",
		[101639] = "Schildmaid der Valarjar",
		[29264] = "Geisterwolf <Yânkeê-Blackrock>",
		[137967] = "Unbekannt",
		[21140] = "Unbekannt",
		[130011] = "Bukanier der Eisenfluträuber",
		[124681] = "Knochenpickerpirscher",
		[134069] = "Vol'zith der Flüsterer",
		[146866] = "Verklavter Frostelementar",
		[98275] = "Auferstandene Bogenschützin",
		[27712] = "Hirnloser Ghul",
		[132022] = "Wilder Säbelhauer",
		[144819] = "Unbekannt <Charg \"der Protzige\">",
		[156392] = "Zerreißer des Dunkelpakts",
		[137653] = "Gesichtsloser Vernichter",
		[137993] = "Seeminenblindgänger",
		[146867] = "Scharfhorn der Nebelskorn",
		[145159] = "Seuchenschrecken",
		[156393] = "Wässrige Verschmelzung",
		[122961] = "Verfluchter abgerichteter Falke",
		[97418] = "Marakhan",
		[130012] = "Verheererin der Eisenfluträuber",
		[137654] = "Gesichtsloser Verderber",
		[126429] = "Verkrusteter Korallenrücken",
		[98020] = "Legionär der Teufelswache",
		[151301] = "Defekter Schrotthund",
		[1797] = "Liebhabär",
		[37117] = "Kriegsmagier der Kor'kron",
		[152813] = "Niederer Zoatroid",
		[153523] = "Rasender Rostbot",
		[37501] = "Champion der Nerub'ar",
		[124382] = "Knochenpickerrabe",
		[140456] = "Dornenfellmoschushirsch",
		[151476] = "Rumsatron X-80",
		[131513] = "Hochlandzerfleischer",
		[54521] = "Spukwurf",
		[118787] = "Gefräßiger Teufelspirscher",
		[137144] = "Betriebswachposten",
		[81129] = "Säbelwächter der Brennenden Klinge",
		[138168] = "Münzenschlepper der Eisenfluträuber",
		[103307] = "Seuchenbringer der Verlassenen",
		[122847] = "Umbralpriesterin",
		[59512] = "Schaumwall",
		[154352] = "Leerenwirker der Aqir",
		[144823] = "Chefingenieur Erzog",
		[37146] = "Heckenschütze der Kor'kron",
		[103180] = "Übler Verhängnisbringer",
		[99214] = "Belagerungswurm",
		[112354] = "Nulil",
		[120800] = "Schlammklatscher der Steinflossen",
		[129246] = "Azeritfußbombe",
		[127879] = "Zuls Schildträger",
		[148919] = "Arkanistin der Eidgebundenen",
		[137146] = "Betriebsfüsilierin",
		[153332] = "Schläger der Zanj'ir",
		[138170] = "Halsabschneider der Eisenfluträuber",
		[155062] = "Schwarmfallenbrutling",
		[129641] = "Entlarvte Hexe",
		[127106] = "Offizierin der Eisenfluträuber",
		[138981] = "Orakel der Schlammflossen",
		[37534] = "Wirbelpirscher",
		[137147] = "Betriebsvollstrecker",
		[37502] = "Netzweber der Nerub'ar",
		[138171] = "Betriebsangestellter",
		[88086] = "Hakenschwanz der Hassnattern",
		[120801] = "Regenmacher der Steinflossen",
		[151992] = "Konstrukteur der Amathet",
		[125828] = "Soulrend Add",
		[151801] = "Zelot der Amathet",
		[137148] = "Offizierin des Extraktionspunkts",
		[154104] = "Vshj'ix der Sucher",
		[73197] = "Niederer Sha-Tropfen",
		[146874] = "Windruferin Mariah",
		[118754] = "Auferstandener Hund",
		[131518] = "Picken",
		[59641] = "Monströser Ebenenfalke",
		[154361] = "Brutstättenei",
		[137149] = "Bilgewasserverbrenner",
		[158136] = "Inquisitor Dunkelwort",
		[79340] = "Leerenaxtkämpfer des Schattenmondklans",
		[90902] = "Schreckensreiter Malwick",
		[132868] = "Geronnenes Azerit",
		[131519] = "Behexter Falkner",
		[12099] = "Feueranbeter",
		[17880] = "Unbekannt",
		[111181] = "Rangalag",
		[24556] = "Zelfan",
		[61177] = "Raigonn",
		[118499] = "Teufelskrallenhortmutter",
		[98280] = "Auferstandener Arkanist",
		[151995] = "Hik-ten der Zuchtmeister",
		[98792] = "Wyrmzungenplünderer",
		[136639] = "Anbeter von Zalamar",
		[61945] = "Gurthaneisenschlund",
		[125959] = "Parasitärer Gedankenräuber",
		[134080] = "Wildholzköter",
		[163257] = "Titanusei",
		[140293] = "Schneepelzknurrer",
		[161019] = "Ätzender Aqir",
		[88090] = "Tiefenkommandant Zarrin",
		[121571] = "ROBERT",
		[21251] = "Tiefensumpfkoloss",
		[101008] = "Stechender Schwarm",
		[154368] = "Made der Aqir <Befallener Wüstenwanderer>",
		[163258] = "Goliathei",
		[118756] = "Falke der Rabenwehr",
		[143622] = "Wildwichtel <Elaînê-Lothar>",
		[25730] = "Hochfürst Saurfang",
		[134155] = "Wütender Schwärmer",
		[137153] = "Neu verkabelter Ernter",
		[137665] = "Seelengoliath",
		[150462] = "Huschender Zitteraal",
		[163259] = "Unbekannt",
		[128994] = "Unbekannt",
		[151998] = "Knochenbeißersaurolisk",
		[129928] = "Pulverschützin der Eisenfluträuber",
		[75043] = "Karnoth",
		[132879] = "Kristallinriese",
		[56717] = "Hopsallus",
		[119053] = "Xorothianische Kultistin",
		[146880] = "Gholvran der Kryptische",
		[135107] = "Schläger der Knochenritzer",
		[127203] = "Treiber der Schmutzsteine",
		[80162] = "Leerenwirkerin des Schattenmondklans",
		[138978] = "Riesenhafte Schlammflosse",
		[137155] = "Sturmsangloyalist",
		[92445] = "Einfallende Teufelswache",
		[154559] = "Tiefenfürst Zrihj",
		[146881] = "Deuter Brinvulf",
		[107299] = "Zeichnung von Senegos",
		[114811] = "Korallenmaid der Kvaldir",
		[113127] = "Unbekannt",
		[122639] = "R'gal der Alte",
		[137156] = "Initiand der Gezeitenweisen",
		[162238] = "Finsterstimmenkultist",
		[130531] = "Abtrünnige Schiffsbauerin",
		[129548] = "Schläger der Schwarzzahnvandalen",
		[118758] = "Auferstandene Soldatin",
		[103449] = "Eishexe der Verlassenen",
		[130572] = "Wilde Klingenschwinge",
		[115431] = "Wilder weißer Hai",
		[137157] = "Gebundener Elementar",
		[58812] = "Hasserfüllte Essenz",
		[138181] = "Streuner der Finsterrachen",
		[112360] = "Wache",
		[139205] = "P4-N73R4",
		[131527] = "Lord Kronsteig",
		[109867] = "Küstenfelskiefer",
		[144836] = "Stachel",
		[137158] = "Gebundener Blitzelementar",
		[122086] = "Eisenschuppe der Zackenkämme",
		[99868] = "Fenryr",
		[146884] = "Kriegsherr Hjelskard",
		[110569] = "Geisterkrieger der Shao-Tien",
		[97369] = "Unbekannt <Microshaman-Thrall>",
		[132734] = "Stacheldorn",
		[144837] = "Dunkelküstenhirsch",
		[61947] = "Kargeshrippenbrecher",
		[158146] = "Gefallene Risswanderin",
		[58108] = "Spitzel der Krik'thik",
		[146885] = "Faulkreischer",
		[145130] = "Donnerknall",
		[131529] = "Behexter Armbrustschütze",
		[153106] = "Blutformer der Dokani",
		[161218] = "Zermalmer der Aqir",
		[93166] = "Tiptog der Verlorene",
		[160182] = "Leereninitiandin",
		[130809] = "Salzpanzermakrura",
		[146886] = "Hrolskald der Stinkende",
		[21508] = "Unbekannt",
		[131530] = "Behexter Gardist",
		[25496] = "Nebellord der Kvaldir",
		[140744] = "Emmerich Kampen",
		[17669] = "Tollwütiger Kriegshund",
		[162243] = "Verderbter Gedankenfresser",
		[152812] = "Zoatroid",
		[21956] = "Blacksoul",
		[127762] = "Marodeur der Kao-Tien",
		[139805] = "Mechanischer Wachhund",
		[132043] = "Kanonier der Eisenfluträuber",
		[159764] = "Jesh'ra",
		[90661] = "Bittsteller der Eredar",
		[162244] = "Verderbter Verdammnisverkünder",
		[18309] = "Astraler Strauchdieb",
		[163268] = "Titanusjungtier",
		[118040] = "Teufelswurmei",
		[114922] = "Dunkler Seraph",
		[136139] = "Mechanisierter Friedensbewahrer",
		[90662] = "Wichtelmutter Fecunda",
		[127975] = "Steingebundener Wächter",
		[56876] = "Pionier der Krik'thik",
		[138187] = "Grotesker Schrecken",
		[146889] = "Fleischmodertodeswandler",
		[137921] = "Einfallende Holzklaue",
		[15651] = "BacTat",
		[127485] = "Plünderer der Bilgeratten",
		[92966] = "Unbekannt",
		[123502] = "Teufelssaurier",
		[154056] = "Zerreißer des Dunkelpakts",
		[126440] = "Klagende Sirene",
		[146890] = "Fleischmoderrunenweber",
		[131673] = "Bittertidenstachelzange",
		[131534] = "Behexte Gardistin",
		[138789] = "Plünderin der Eisenfluträuber",
		[94960] = "Hymdall",
		[91121] = "Steinblutverheererin",
		[141772] = "Betriebswachposten",
		[138189] = "Durchströmter Elementar",
		[112364] = "Kesak",
		[125464] = "Streuner der Finsterrachen",
		[11502] = "Ragnaros",
		[132047] = "Verstärkter Kielbrecher",
		[129768] = "Holzweideneindringling",
		[130024] = "Durchnässte Schiffsratte",
		[141773] = "Aschenwindvollstrecker",
		[126441] = "Matrone Levae",
		[146892] = "Fleischmodermarodeur",
		[139793] = "Stachelklauengrizzly",
		[127001] = "Gwugnug der Verfluchte",
		[106990] = "Häuptling Bittergischt",
		[102408] = "Eiterraufer",
		[133072] = "Dornholzbollwerk",
		[123420] = "Verdammnisruferin der Teufelsbelagerung",
		[151606] = "Anodisierter Krabbler",
		[146893] = "Fleischmodermystiker",
		[71734] = "Sha des Stolzes",
		[95013] = "Wurmpuler der Drogbar",
		[129513] = "Geistverzerrerin der Jambani",
		[54690] = "Zeitlinienversetzter Priester",
		[141263] = "Angreifer der Zeth'jir",
		[162250] = "Verderbte Assassine",
		[148612] = "Schwelende Beschützerin",
		[146894] = "Fleischmoderkabalist",
		[154153] = "Vollstrecker KX-T57",
		[59518] = "Aufgeblähter Braubierlementar",
		[141970] = "Moderzweig",
		[126832] = "Himmelskäpt'n Kragg",
		[17670] = "Hundemeister der Zerschmetterten Hand",
		[134106] = "Greifholzwächter",
		[6499] = "Contergan",
		[146895] = "Fleischmodervandale",
		[129002] = "Zottelpelz",
		[61216] = "Verhexer der Glintrok",
		[132051] = "Blutzecke",
		[148609] = "Seefahrerkanone",
		[130026] = "Seesprecher der Bilgeratten",
		[126187] = "Leichenbringerin Yal'kar",
		[162764] = "Entstellte Gliedmaße <Tootsie-Gilneas>",
		[160810] = "Herold Il'koxik",
		[36868] = "Versklavter Sohn von Arkkoroc",
		[140337] = "Nachtschuppenjunges",
		[136247] = "Rastlose Steine",
		[119533] = "Verdammnisrufer der Teufelsbelagerung",
		[130413] = "Wind Serpent",
		[154063] = "Leerenrückstände",
		[138195] = "Diener von Thros",
		[134612] = "Unbekannt",
		[153755] = "Naeno Megarumms",
		[130334] = "Splittplattenstarrer",
		[27268] = "Auferstandener Greifenreiter",
		[144850] = "Frostblitz",
		[130027] = "Aschenwindmarinesoldat",
		[129374] = "Vollstrecker der Knochenritzer",
		[136406] = "Shivarra <Fabeliera>",
		[98035] = "Schreckenspirscher",
		[94196] = "Verfluchter Streuner",
		[72764] = "Underground",
		[162828] = "Ätzender Verdauer",
		[42691] = "Rissbeschwörer des Steinernen Kerns",
		[131285] = "Reanimierte Monstrosität",
		[151096] = "Hati",
		[124397] = "Kal'draxa",
		[146899] = "Äscherne Todeswache",
		[147411] = "Seuchenwachenhauptmann Thedric",
		[156794] = "Lichtjäger des SI:7",
		[160720] = "Gurgelnde Fleischbestie",
		[157137] = "Terrortentakel",
		[130028] = "Aschenwindpriesterin",
		[128773] = "Amakiblutsängerin",
		[154578] = "Schinder der Aqir",
		[155090] = "Anodisierter Spulenträger",
		[139842] = "Auferstandener Ravasaurus <Killmaschien-Ambossar>",
		[145028] = "Schattenjäger der Eidgebundenen",
		[132056] = "Flugfacklerin der Venture Co.",
		[40238] = "Unbekannt",
		[161745] = "Hepthys",
		[120361] = "Lichtbrecher der Antaen",
		[135258] = "Marodeur der Eisenfluträuber",
		[146901] = "Manische Apothekerin",
		[129005] = "König Kooba",
		[131545] = "Lady Kronsteig",
		[129517] = "Reanimierter Raptor",
		[97013] = "Xist",
		[161746] = "Ossirat",
		[133593] = "Technikexperte",
		[150485] = "Plasmakugel",
		[126702] = "Urhimmelsschrecken",
		[25605] = "Geheimkultist",
		[78650] = "Folterer der Zerschmetterten Hand",
		[82425] = "Leuchtende Orchidee",
		[144855] = "Apotheker Jerrod",
		[17671] = "Champion der Zerschmetterten Hand",
		[149437] = "Jalazkos Eisenwache",
		[124399] = "Befallenes Terrorhorn",
		[157759] = "Krieger der Vil'thik",
		[116721] = "Gor'lok der Fleischwolf",
		[139737] = "Lord Sturmsang",
		[128551] = "Mastiff der Eisenfluträuber",
		[21216] = "Hydross der Unstete",
		[3810] = "Brombär",
		[61056] = "Urerdelementar",
		[18311] = "Astraler Grufträuber",
		[155094] = "Mechagonsoldat",
		[56637] = "Uuk-Uuk",
		[79681] = "Netherbinderin der Sargerei",
		[37126] = "Schwester Svalna",
		[144857] = "Lehrling Crispin",
		[91128] = "Lagunenbasilisk",
		[112358] = "Skarabäusfürst Hamlet",
		[79355] = "Leerenbinder des Schattenmondklans",
		[146905] = "Wahnsinniges Seuchenscheusal",
		[129007] = "Treuloser Wachposten",
		[131785] = "Summende Drohne",
		[148441] = "Gnomische Gyroingenieurin",
		[103446] = "Frostschleuderin der Verlassenen",
		[141832] = "Moderschwanz",
		[91431] = "Spektraler Adept",
		[130543] = "Gorilla",
		[146906] = "Schwärender Koloss",
		[25758] = "Beschützo-Panz 66D",
		[135645] = "Alte Rudelmutter",
		[148442] = "Gnomischer Kommandosoldat",
		[120112] = "Teufelsflammenoberdämon",
		[78883] = "Eiserner Grunzer",
		[158168] = "Dunkler Jünger",
		[151148] = "Unbekannt",
		[146907] = "Auferstandener Schütze",
		[12037] = "Ursol'lok",
		[135254] = "Eisenfluträuberin",
		[12101] = "Lavawoger",
		[144860] = "Sira Mondhüter",
		[145372] = "Wilde Mondruferin",
		[158169] = "Ergebener Jünger",
		[153130] = "Großer Leerenelementar",
		[159308] = "Eifrige Anhängerin",
		[135135] = "Schlammfresser",
		[147932] = "Aufgebrachter Azersplitter",
		[37127] = "Frostbinderin der Ymirjar",
		[161241] = "Leerenweber Mal'thir",
		[41478] = "Schneefährtenleserwolf",
		[133600] = "Scharfauge der Schwertwasserkorsaren",
		[151663] = "Häcksler der Schrottknochen",
		[112373] = "Jarud",
		[151742] = "Leerenentstellter Eindringling",
		[147933] = "Geoaktiver Azersplitter",
		[136160] = "König Dazar",
		[117492] = "Verzauberin des Dämonengrolls",
		[54445] = "Echo von Jaina",
		[157266] = "Kilxl das Klaffende Maul",
		[152159] = "Zoatroid",
		[146910] = "Fleischmoderseuchenklaue",
		[110582] = "Xioliang",
		[59522] = "Schaumiger Bierlementar",
		[90474] = "Dämonenjägerin",
		[59778] = "Schläger der Krik'thik",
		[137185] = "Orcpeon",
		[132741] = "Flammenschuppenhydra",
		[158684] = "Geistesgestörte Fleischbestie",
		[146911] = "Fleischmoderpesthund",
		[139233] = "Gulliver",
		[147935] = "Azerjuwelenkriecher",
		[156637] = "Lichtklingenausbilder",
		[140769] = "Goldader",
		[161408] = "Bösartiges Geschwür",
		[150712] = "Trixie Teyser",
		[18312] = "Astraler Zauberbinder",
		[114467] = "Unbekannt",
		[61442] = "Kuai der Grobian",
		[147936] = "Azerjuwelensplitterrücken",
		[98810] = "Klingenfürst der Zornwächter",
		[111351] = "Unbekannt",
		[54320] = "Unbekannt",
		[103673] = "Dunkelblick <Noelani-Gilneas>",
		[146401] = "Buddelsklave der Dunkelschuppen",
		[93030] = "Eisenast",
		[139235] = "Krötenkiefer",
		[157792] = "Stockwache der Zara'thik",
		[140259] = "Runenhufgroßhirsch",
		[152676] = "Lebendiges Wasser",
		[137188] = "Entstellter Strom",
		[138991] = "Grrl",
		[138212] = "Kielholer der Eisenfluträuber",
		[118518] = "Priesterin Lunazenit",
		[90109] = "Sklaventreiber der Hassnattern",
		[152033] = "Unscheinbare Pflanze",
		[148450] = "Explodierendes Schaf",
		[103162] = "Bittstellerin der Eredar",
		[137189] = "Geladener Orkan",
		[128347] = "Hexgebundener Knurrer",
		[103930] = "Wellenbrecher der Sashj'tar",
		[135263] = "Aschenwindkundschafter",
		[128611] = "Auge von Shul-Nagruth",
		[120156] = "Verderbte Rabenwache",
		[156641] = "Bezauberter Waffenschmied",
		[136830] = "Kopfjäger der Dorrzweige",
		[32517] = "Hanswurst",
		[134769] = "Zackenklaue",
		[81408] = "Schattenmondbarsch",
		[134631] = "Brüchiger Matrose",
		[155618] = "Jägerin der Zanj'ir",
		[131560] = "Wilder Ravasaurus",
		[138826] = "Leikneir der Kühne",
		[138870] = "Mick",
		[141286] = "Wilderer Jannes",
		[136727] = "Schlachtreiter der Sethrak",
		[158690] = "Peiniger der Kultisten",
		[138727] = "Blutschwärmer",
		[155619] = "Ehrenwache der Zanj'ir",
		[156131] = "Myrmidone der Zanj'ir",
		[140263] = "Runenhufhirsch",
		[157808] = "Schwarmgeborener der Vil'thik",
		[111944] = "Unbekannt",
		[137704] = "Matrone Morana",
		[131718] = "Dornenschwinge",
		[115015] = "Blutmagierin der Eredar",
		[118776] = "Teufelsklingenverwüster",
		[156132] = "Hexe der Azsh'ari",
		[148454] = "Schimmerschalenkrabbe",
		[161251] = "Schmeichler der Kultisten",
		[102222] = "Verfluchter Schädelhaufen <Wyrmzungenextraktor>",
		[130079] = "Wagga Knurrzahn",
		[60164] = "Sha-verseuchter Yaungol",
		[134157] = "Schattengeborener Krieger",
		[133063] = "Bluthexe der Nazmani",
		[156133] = "Koloss der Schreckensnattern",
		[152550] = "Großer Wurm aus dem Jenseits",
		[140777] = "Edelsteinsplitterkoloss",
		[158327] = "Knisternder Splitter",
		[142463] = "Bezauberter Matrose",
		[18313] = "Astraler Zauberer",
		[134788] = "Felspanzer der Dornzangen",
		[122872] = "Blutvergießerin von Atal'Shadra",
		[27604] = "Gebrechliches Konstrukt",
		[127479] = "Die Sandkönigin",
		[157158] = "Sklaventreiber der Kultisten",
		[130131] = "Neu verkabelter Ernter",
		[154087] = "Zror'um der Unendliche",
		[138219] = "Verseuchter Schatten",
		[163301] = "Geisttrinker",
		[95311] = "Unbekannt",
		[153760] = "Bezauberter Fußsoldat",
		[38154] = "Kriegsfalke",
		[109137] = "Verärgerte Menge",
		[130039] = "Salzkraftkanonier",
		[137708] = "Steingolem",
		[138220] = "Verseuchtes Übel",
		[151017] = "Wächterin M'sheke",
		[43391] = "Millhaus Manasturm",
		[109395] = "Seelenschinder der Inquisition",
		[127480] = "Stechender Parasit",
		[153065] = "Leerengebundener Verheerer",
		[109140] = "Fleischschnitter der Teufelswache",
		[102232] = "Steingebundener Fallensteller",
		[122684] = "Reanimierter Schrecken",
		[159208] = "Welbiz Jubelpfiff",
		[159720] = "Verfluchtes Blut",
		[96512] = "Erzdruide Glaidalis",
		[152554] = "Abgründige Brut",
		[16523] = "Wilder der Zerschmetterten Hand",
		[146577] = "Getarnter Todespirscher",
		[109821] = "Lord Korithis",
		[101887] = "Aspersius",
		[159209] = "Thelett Schieferherz",
		[61445] = "Haiyan der Unaufhaltsame",
		[147948] = "Geronnenes Azerit",
		[156650] = "Finstere Manifestation <[*] Finstere Manifestation>",
		[136687] = "Schreckenskanone",
		[136239] = "Monolithstein",
		[117049] = "Gloth",
		[150508] = "Belagerungsmeisterin der Azsh'ari",
		[159210] = "Clarice Chapmann",
		[12264] = "Shazzrah",
		[59835] = "Schwärmer der Krik'thik",
		[129529] = "Klopper der Schwarzzahnvandalen",
		[99088] = "Uralte Bewahrerin",
		[127315] = "Totem der Wiederbelebung",
		[136864] = "Uguu der Gefürchtete",
		[17420] = "Häretiker der Zerschmetterten Hand",
		[159211] = "Lorry Warmherz",
		[155628] = "Orakel der Azsh'ari",
		[107103] = "Teufelssognetzspinner",
		[127482] = "Kanalisationszangenkiefer",
		[153069] = "Korrodierter Problemauflöser",
		[133663] = "Fanatischer Kopfjäger",
		[81901] = "Wilder des Blutenden Auges",
		[96878] = "Starrblickkriecher der Katakomben",
		[81902] = "Wolfgang",
		[151534] = "Plünderer der Nekroflossen",
		[136838] = "Zgordo der Metzler",
		[156653] = "Geronnener Horror",
		[136690] = "Schneewehenstreuner",
		[137202] = "Gefallene Kielwächterin",
		[130298] = "Wasserelementar",
		[18314] = "Nexuswandler",
		[81670] = "Nag Blutsucher",
		[139250] = "Abgründige Brut",
		[36939] = "Hochfürst Saurfang",
		[37132] = "Kriegsmaid der Ymirjar",
		[45450] = "Волк",
		[142000] = "Quälendes Tentakel",
		[137715] = "Unbekannt",
		[153096] = "Belebter Hüter",
		[108263] = "Kriegstreiberin der Teufelsskorn",
		[157356] = "Extraktorin Thelsara",
		[156143] = "Leerenbefallener Koloss",
		[82037] = "Mondsturzrabe",
		[157167] = "Champion Sen-mat",
		[62982] = "Geistbeuger <Злойвинс-ЧерныйШрам>",
		[54920] = "Ewiger Unterdrücker",
		[158703] = "Triefende Fäulnis",
		[151025] = "Kriegsdruide Ko'chus",
		[117095] = "Schreckensklingenvernichter",
		[148664] = "Grunzerin der Mag'har",
		[132086] = "Der schwarzäugige Bartholomäus",
		[122981] = "Aufgebrachter Ghul",
		[157680] = "Exekutor von N'Zoth",
		[162287] = "Akolythin von N'Zoth",
		[140811] = "Schattenschuppenbrutling",
		[151026] = "Mondruferin Mozo'kas",
		[122088] = "Schleicher der Zackenkämme",
		[156145] = "Grabende Gliedmaße",
		[110063] = "Unbekannt <Tindriel-ChamberofAspects>",
		[129788] = "Knochensäger der Eisenfluträuber",
		[133111] = "Hexwaldseherin",
		[162288] = "Hervorrufer des Schwarzen Imperiums",
		[73226] = "Niederer Sha-Tropfen",
		[127600] = "Giftschuppenschlängler",
	},
	["death_recap"] = {
		["enabled"] = true,
		["show_segments"] = false,
		["show_life_percent"] = false,
		["relevance_time"] = 7,
	},
	["spell_pool"] = {
		2, -- [1]
		3, -- [2]
		"Umgebung: (Fallen)", -- [3]
		"Umgebung: (Ertrinken)", -- [4]
		nil, -- [5]
		"Umgebung: (Feuer)", -- [6]
		"Umgebung: (Lava)", -- [7]
		[288217] = "Totenbeschwörermeister",
		[275931] = 6,
		[257775] = "Samtpfote der Bilgeratten",
		[15667] = "Ewiger Assassine",
		[203510] = 10,
		[298458] = "Amniotische Eruption <Zoatroid>",
		[277981] = "Morastpriester Vassz",
		[298459] = "Amniotische Eruption <Niederer Zoatroid>",
		[32612] = 8,
		[302555] = "Wächter von Azeroth <Aylan-Pozzodell'Eternità>",
		[304603] = 9,
		[257777] = "Jes Knurris",
		[298461] = 12,
		[275936] = 12,
		[133889] = "Knochensägerin der Bohrinselflotte",
		[304606] = 12,
		[145152] = 11,
		[114051] = 7,
		[271843] = 2,
		[298465] = "Zoatroid",
		[275940] = "Schluchtjäger",
		[298466] = 12,
		[300514] = "Schamane der Schrottknochen",
		[260852] = "Schwester Dornstrauch",
		[277990] = "Schleicher der Morastlauerer",
		[304611] = 3,
		[314850] = "[*] Ausufernde Finsternis",
		[215802] = 7,
		[277991] = "Visz die stille Klinge",
		[304612] = 3,
		[314851] = "Gryth'ax der Henker",
		[146179] = "Amalgam der Verderbnis",
		[302565] = 2,
		[51399] = 6,
		[119684] = "Xin der Waffenmeister",
		[217851] = "Naraxas",
		[259830] = "Sporenrufer Zancha",
		[298473] = "Grunzling der Schrottknochen",
		[31589] = 8,
		[314856] = "Todeswachenkommandant Vandel",
		[257784] = "Salzschuppe der Bilgeratten",
		[176898] = 11,
		[245498] = 10,
		[312810] = "[*] Alles ist verbunden",
		[290285] = 10,
		[257785] = "Jes Knurris",
		[314859] = "Todeswachenkommandant Vandel",
		[260857] = "Meisterschütze der Verlassenen",
		[60103] = 7,
		[286192] = 7,
		[280049] = 3,
		[202497] = 11,
		[36554] = 4,
		[310766] = "Auge der Tiefe",
		[290289] = 9,
		[267764] = "Sarg <Âlysiâ>",
		[54216] = 3,
		[300529] = "Gedankenschnitzer der K'thir",
		[204546] = 3,
		[280052] = 2,
		[314864] = "Todeswachenkommandant Vandel",
		[300530] = "Gedankenschnitzer der K'thir",
		[227072] = "Xalian Teufelslohe",
		[115080] = 10,
		[224001] = 10,
		[302580] = 8,
		[275960] = "Knochenschuppenwurm",
		[212739] = 6,
		[314869] = "Todeswachenkommandant Vandel",
		[15284] = "Hochfürst Saurfang",
		[280058] = 11,
		[306679] = "Vez'okk der Lichtlose",
		[257791] = "Robbi Knurris <Jes Knurris>",
		[193287] = 4,
		[194311] = 6,
		[302585] = 1,
		[120201] = "Haiyan der Unaufhaltsame",
		[234243] = 10,
		[218885] = "Gigantischer Belagerungsbrecher",
		[32614] = "Akolythin der Mondwache",
		[282110] = "Bogenschütze der Kaldorei <Shindra-Antonidas>",
		[302588] = "[*] Frostmal",
		[292350] = "Oberanführer Mathias Shaw",
		[310780] = "Blinder Beobachter",
		[197385] = 7,
		[288256] = 1,
		[296449] = "Azsharas Glanz",
		[310784] = "Auge der Tiefe",
		[271877] = 4,
		[282116] = "Druide des Zweigs <Quinsy-Blackhand>",
		[199435] = 2,
		[4987] = 2,
		[5019] = 8,
		[235271] = "Wachsame Maid",
		[284165] = "[*] Voltaischer Blitz",
		[269831] = "[*] Toxischer Schlick",
		[5211] = 11,
		[286215] = 7,
		[304645] = 2,
		[314884] = "Massives Eis",
		[284168] = 10,
		[22120] = "Wache",
		[227082] = "Akolythin der Mondwache",
		[308742] = 6,
		[292361] = 7,
		[46028] = "Magierwache der Sonnenklingen",
		[288266] = "Malfurion Sturmgrimm",
		[265741] = "Matrone Brünndel",
		[236298] = 8,
		[286219] = 7,
		[296459] = "Azsharas Glanz",
		[314889] = "Ungeschützte Synapse",
		[236299] = 8,
		[57547] = "Brynja",
		[282126] = "Charg \"der Protzige\"",
		[275983] = "Obsidianwelpe",
		[178963] = 12,
		[280080] = 1,
		[298510] = "Giftweber der Aqir",
		[158486] = 12,
		[52172] = 2,
		[312845] = "Assassine der K'thir",
		[282129] = "Charg \"der Protzige\"",
		[284177] = "Hochtüftler Mekkadrill",
		[237325] = "[*] Toxischer Pollen",
		[288273] = "Malfurion Sturmgrimm",
		[255755] = "Sonnenbringer Firasi",
		[300560] = "Müllschmeißer der Schrottknochen",
		[286226] = 9,
		[226063] = "Maiev Schattensang",
		[265749] = 1,
		[300561] = "Müllschmeißer der Schrottknochen",
		[13877] = 4,
		[267798] = 2,
		[273942] = 2,
		[267799] = 2,
		[57548] = "[*] Berührung der Val'kyr",
		[282134] = "Charg \"der Protzige\"",
		[271896] = 4,
		[259853] = "Rixxa Fluxflamme",
		[34767] = 2,
		[51661] = 9,
		[275993] = "Knochenschuppenspeier",
		[286232] = 2,
		[202517] = 1,
		[252687] = "Schattenklingenpirscher",
		[106898] = 11,
		[273947] = 6,
		[1943] = 4,
		[46030] = "Blutritter der Sonnenklingen",
		[314903] = "Amathet",
		[316951] = "Ätzender Verdauer",
		[314904] = "Amathet",
		[259856] = "Rixxa Fluxflamme",
		[292380] = 11,
		[196376] = "Erzdruide Glaidalis",
		[82326] = 2,
		[265760] = "Matrone Brünndel",
		[2094] = 4,
		[314907] = "Amathet",
		[267809] = "Vergessener Bewohner",
		[207640] = 11,
		[52174] = 1,
		[288288] = 1,
		[314909] = "Amathet",
		[204569] = 3,
		[273955] = 1,
		[191259] = 6,
		[184092] = 2,
		[288290] = "Totenbeschwörermeister",
		[282147] = "Hati <Âlysiâ>",
		[316959] = "Ätzender Verdauer",
		[19434] = 3,
		[288291] = 1,
		[296483] = 12,
		[210714] = 7,
		[312866] = "Todesschwinge",
		[234264] = 10,
		[282151] = "Charg \"der Protzige\"",
		[282152] = "Charg \"der Protzige\"",
		[267818] = "Sturmbeschwörerin Faye",
		[278057] = 11,
		[306726] = "Vez'okk der Lichtlose",
		[209693] = 12,
		[265773] = "Die Goldschlange",
		[204574] = "Eichenherz",
		[47568] = 6,
		[216861] = 2,
		[32361] = "Tavarok",
		[202527] = "Folterer der Inquisition",
		[252697] = 11,
		[253721] = "Zuls Schildträger",
		[296492] = "Leerenkügelchen",
		[57807] = "Verteidiger der Kor'kron",
		[267824] = "Seelenessenz",
		[271920] = 7,
		[306732] = "Ra-den",
		[288303] = "Tyrande Wisperwind",
		[306733] = "Ra-den",
		[183075] = "Akolyth der Mondwache",
		[310829] = "Wahnsinniger Messerdreher",
		[185123] = 12,
		[61391] = 11,
		[288305] = 5,
		[306735] = "Furorion",
		[183076] = "Akolyth der Mondwache",
		[271924] = 7,
		[265781] = "Die Goldschlange",
		[13750] = 4,
		[188196] = 7,
		[267830] = "Sturmbeschwörerin Faye",
		[193316] = 4,
		[273974] = 1,
		[284213] = "Jäger der Kaldorei",
		[310834] = "Wahnsinniger Messerdreher",
		[282167] = "Alchemistin der Verlassenen",
		[310836] = "Wahnsinniger Messerdreher",
		[304693] = 2,
		[273977] = 6,
		[276025] = 10,
		[280121] = 7,
		[276026] = 11,
		[310838] = "Blinder Beobachter",
		[310839] = "Okkulte Schattenheilerin",
		[284219] = "Renormalisiererin von Mechagon",
		[31850] = 2,
		[183081] = "Sirene der Dunkelschuppen",
		[216869] = 2,
		[304698] = 6,
		[282173] = 10,
		[284221] = 9,
		[310842] = "Okkulte Schattenheilerin",
		[115098] = 10,
		[267841] = "Sturmbeschwörerin Faye",
		[204584] = 3,
		[296510] = "Krabbelnde Verderbnis",
		[310845] = "Okkulte Schattenheilerin",
		[36052] = "Akolyth des Schattenmondklans",
		[88990] = 3,
		[197418] = "Illysanna Rabenkrone",
		[306751] = "Furorion",
		[284226] = "Todeswachenkommandant Vandel",
		[257827] = "Jes Knurris",
		[27243] = 9,
		[306752] = "Thrall",
		[255780] = "Sonnenbringer Firasi",
		[308801] = "Zardeth der Schwarzen Klaue",
		[290372] = 2,
		[260900] = "Schwester Solena",
		[5116] = 3,
		[182062] = 6,
		[300612] = 7,
		[257829] = "Blitz",
		[5308] = 1,
		[296518] = "Spazierschock X1",
		[290376] = 9,
		[131894] = 3,
		[45524] = 6,
		[308807] = "Zardeth der Schwarzen Klaue",
		[108446] = 9,
		[304712] = 8,
		[31467] = "Chronolord Deja",
		[269901] = "Zephyr",
		[296522] = "[*] Selbstzerstörung",
		[32235] = 3,
		[32363] = "Nexusprinz Shaffar",
		[298571] = "Mechamotorrad",
		[228140] = 1,
		[32747] = 12,
		[278095] = 7,
		[304716] = 11,
		[302669] = "Leerenschrecken",
		[306765] = "Thrall",
		[257834] = "Peter der Leisetreter",
		[36054] = "Wilder der Zerschmetterten Hand",
		[204593] = 3,
		[288337] = 1,
		[288338] = 1,
		[260907] = "Schwester Solena",
		[6940] = 2,
		[233263] = "Priesterin Lunazenit",
		[280149] = 6,
		[306770] = "Lilliam Spindelfunks",
		[122783] = 10,
		[131900] = 3,
		[248622] = 1,
		[312915] = 1,
		[139068] = 5,
		[288343] = 5,
		[282200] = "Nagtar Wolfsbann",
		[269914] = "Windstoßsoldat",
		[52437] = 1,
		[235313] = 8,
		[298584] = "Bezauberter Fußsoldat",
		[296537] = "Rasender Peiniger",
		[298585] = "Bezauberter Fußsoldat",
		[302681] = "Trixie Teyser",
		[7964] = "Delaryn Sommermond",
		[63956] = 1,
		[276061] = "Zermalmer der Eisenfluträuber",
		[302682] = "Trixie Teyser",
		[32364] = "Nexusprinz Shaffar",
		[282205] = "Hochtüftler Mekkadrill",
		[296540] = "Rasender Peiniger",
		[298588] = "Mechamotorrad",
		[230197] = "[*] Dunkle Wasser",
		[317020] = 2,
		[80807] = "Plattenhaut",
		[114083] = 7,
		[212792] = 8,
		[107428] = 10,
		[304736] = 11,
		[282211] = "Nagtar Wolfsbann",
		[296546] = "Azsharas Glanz",
		[157504] = 7,
		[225080] = 7,
		[280165] = 11,
		[282214] = "Nagtar Wolfsbann",
		[284262] = "Schwester Katharina",
		[216890] = 1,
		[258869] = "Aschenwindflammenschleuderin",
		[284263] = "Goblinernter",
		[196413] = 7,
		[230201] = "Herrin Sassz'ine",
		[314980] = 12,
		[296551] = "Abyssalkommandantin Sivara",
		[44504] = "Getriebene Hülle",
		[317029] = 2,
		[269931] = "Schattengeborener Krieger",
		[280170] = 3,
		[282218] = "Nagtar Wolfsbann",
		[269932] = "[*] Windstoßschlitzer",
		[278124] = 1,
		[298602] = "[*] Rauchwolke",
		[300650] = "Giftschleicher",
		[39897] = 5,
		[121253] = 10,
		[306794] = "Furorion",
		[284269] = "Basiskäpt'n Kurbelknall",
		[269935] = "Unbekannt",
		[282222] = "Nagtar Wolfsbann",
		[284270] = "Basiskäpt'n Kurbelknall",
		[288366] = 1,
		[269937] = 2,
		[282224] = 7,
		[267890] = "[*] Schnelligkeitszauberschutz",
		[280177] = 8,
		[282225] = "Nagtar Wolfsbann",
		[122278] = 10,
		[212800] = 12,
		[106920] = "Regenerierendes Sha",
		[53] = 4,
		[258875] = "Unbekannt <Käpt'n Raoul>",
		[284275] = 7,
		[171846] = 3,
		[288371] = 5,
		[207682] = 12,
		[300659] = "Toxische Monstrosität",
		[278134] = 1,
		[314994] = "Ma'ut",
		[29166] = 11,
		[314995] = "Ma'ut",
		[205636] = 11,
		[207684] = 12,
		[114089] = 7,
		[171849] = 12,
		[314998] = "Schattenformer der Aqir",
		[207685] = 12,
		[46042] = "Hexenmeister der Sonnenklingen",
		[280187] = 10,
		[267901] = "Bruder Eisenkiel",
		[171850] = 2,
		[263806] = 7,
		[315000] = "Schattenformer der Aqir",
		[112042] = "Korrorax <Bêllatrîx-Teldrassil>",
		[233283] = "Goroth",
		[265855] = 12,
		[122281] = 10,
		[171851] = 12,
		[267904] = "[*] Verstärkungszauberschutz",
		[278143] = 12,
		[100780] = 10,
		[282239] = 7,
		[267905] = "Bruder Eisenkiel",
		[278144] = 12,
		[280192] = 2,
		[282240] = 7,
		[278145] = 2,
		[308862] = "Instabiler Diener <Zardeth der Schwarzen Klaue>",
		[130985] = 7,
		[278147] = 2,
		[234310] = "Kil'jaeden",
		[75] = 3,
		[69041] = 9,
		[302721] = 3,
		[222024] = 6,
		[308865] = "Zardeth der Schwarzen Klaue",
		[193356] = 4,
		[282245] = "Hochtüftler Mekkadrill",
		[244550] = 11,
		[106413] = "[*] Feuerball",
		[106925] = "Verzehrendes Sha",
		[306819] = "Ra-den",
		[286342] = 12,
		[125355] = 10,
		[315011] = "Schattenformer der Aqir",
		[222026] = 6,
		[298630] = "Leerengebundene Schildträgerin",
		[278153] = 1,
		[280201] = 4,
		[315013] = "Schattenformer der Aqir",
		[114093] = 7,
		[106414] = "[*] Feuerblume",
		[315014] = 1,
		[207693] = 12,
		[278155] = 11,
		[272012] = "Satyr der Illidari <Рудрапраяг-Гордунни>",
		[282251] = 4,
		[308872] = "Finstere Manifestation <[*] Finstere Manifestation>",
		[278156] = 11,
		[272013] = "Bösartiger Höllenhund <Рудрапраяг-Гордунни>",
		[23920] = 1,
		[280205] = 7,
		[274062] = 10,
		[317065] = 2,
		[280206] = 12,
		[182098] = "Wichtlingplünderer",
		[276111] = 2,
		[33758] = 1,
		[258889] = "Mechanischer Wachhund",
		[99] = 11,
		[308876] = "Unbekannt <Zardeth der Schwarzen Klaue>",
		[204624] = 4,
		[280208] = 9,
		[282256] = 10,
		[300687] = "Toxische Monstrosität",
		[222031] = 12,
		[265876] = "Matrone Alma",
		[269972] = "Schattengeborener Hexendoktor",
		[117679] = 11,
		[101809] = "Echo von Jaina",
		[269973] = "Schattengeborener Hexendoktor",
		[272021] = "Lache der Dunkelheit",
		[267926] = 7,
		[28272] = 8,
		[265879] = "[*] Schreckensmal",
		[300691] = 2,
		[106929] = "Verzehrendes Sha",
		[265880] = "Matrone Alma",
		[269976] = "Schattengeborener Champion",
		[227153] = "Illidan Sturmgrimm <Shâolîn>",
		[300693] = 11,
		[116] = 8,
		[265882] = "Matrone Alma",
		[256846] = "Dinomantin Kish'o",
		[257870] = "Bukanier der Eisenfluträuber",
		[227154] = "Illidan Sturmgrimm <Shâolîn>",
		[300695] = 2,
		[120] = 8,
		[83381] = "Katze <Zerix-DunMorogh>",
		[257871] = "Bukanier der Eisenfluträuber",
		[288410] = "Hochtüftler Mekkadrill",
		[282267] = 2,
		[276124] = 7,
		[255824] = "Moloch der Dazar'ai",
		[276125] = 7,
		[32240] = 2,
		[298651] = "Mechamotorrad",
		[252753] = 11,
		[263840] = "Floki <Madocks-DunMorogh>",
		[57821] = 8,
		[276127] = 7,
		[133] = 8,
		[265889] = "Brandstifter der Schwarzzahnvandalen",
		[276128] = 7,
		[136] = 3,
		[276129] = 9,
		[282273] = 2,
		[276130] = 9,
		[229206] = 3,
		[282274] = 10,
		[276131] = 7,
		[46047] = "Heiler der Sonnenklingen",
		[2383] = 8,
		[300705] = "Abyssalkommandantin Sivara",
		[290467] = 10,
		[300706] = "Toxische Monstrosität",
		[290468] = 7,
		[106421] = "Shado-Pan-Wächterin",
		[106933] = "Bomber Ga'dok",
		[274087] = "Zekhan",
		[207707] = "Unbekannt",
		[278183] = "Celestra Mondschein",
		[274088] = "Croz Blutzorn",
		[93623] = 8,
		[274089] = "Croz Blutzorn",
		[240472] = 10,
		[172] = 9,
		[80313] = 11,
		[30449] = 8,
		[240473] = 10,
		[263853] = "Dzeko <Reaaz-Silvermoon>",
		[211805] = 6,
		[196447] = 9,
		[282284] = 9,
		[300714] = 2,
		[257880] = "Klaftar",
		[272046] = "Haihappen",
		[282285] = "Ranah Säbelklaue",
		[196448] = 9,
		[49376] = 11,
		[198496] = "Ularogg Klippenformer",
		[276143] = 9,
		[298669] = "Trixie Teyser",
		[308908] = "[*] Finstere Manifestation",
		[261977] = 10,
		[263858] = 10,
		[182115] = "Einfallender Zornwächter",
		[257882] = "Hadal Dunkelgrund",
		[270003] = "Belebter Wächter",
		[238429] = "Kil'jaeden",
		[317102] = "N'Zoth der Verderber",
		[257883] = "Hadal Dunkelgrund",
		[304816] = 11,
		[76732] = "Kelsey Stahlfunken",
		[101817] = "Zeitlinienversetzter Fußsoldat",
		[302769] = 12,
		[238430] = "Kil'jaeden",
		[306865] = "Ra-den",
		[263863] = "Naffissatou <Ddlasaumure-LesSentinelles>",
		[306866] = "Ra-den",
		[81340] = 6,
		[3583] = "Vhell",
		[313010] = 10,
		[92091] = 3,
		[50401] = 6,
		[308916] = "Finstere Manifestation <[*] Finstere Manifestation>",
		[261981] = 12,
		[265914] = "[*] Geschmolzenes Gold",
		[302774] = 12,
		[263867] = 10,
		[227170] = 12,
		[276154] = 11,
		[286393] = 2,
		[197478] = "Illysanna Rabenkrone",
		[165738] = "Jesibelle",
		[267964] = "Kiz-amal <Bangonologie-Aegwynn>",
		[313015] = 10,
		[290490] = "Sonnenläufer Ordel",
		[77758] = 11,
		[165739] = "Jesibelle",
		[317112] = "N'Zoth der Verderber",
		[200551] = "Dargrul",
		[306874] = "Knisternder Pirscher <Ra-den>",
		[106427] = "Shado-Pan-Novize",
		[33508] = "Dunkelzauberer des Schattenmondklans",
		[270016] = "Belebter Wächter",
		[306876] = "Dunkle Inquisitorin Xanesh",
		[267969] = "Tempelbediensteter",
		[256866] = "Springflutschredder",
		[265923] = "Die Goldschlange",
		[267971] = "Dämonischer Tyrann <Bangonologie-Aegwynn>",
		[106428] = "Shado-Pan-Novize",
		[315070] = "Seuchenwachenhauptmann Thedric",
		[116155] = "Hefiger Braubierlementar",
		[202602] = 1,
		[267973] = "Tempelbediensteter",
		[306881] = "Leerenjäger <Ra-den>",
		[315073] = "Seuchenwachenhauptmann Thedric",
		[244582] = "[*] Krachender Komet",
		[272071] = 7,
		[5246] = 1,
		[258917] = "Aschenwindpriesterin",
		[300741] = 11,
		[5374] = 4,
		[288455] = 1,
		[30451] = 8,
		[106942] = "Zerstörendes Sha",
		[190319] = 8,
		[284362] = "Bruder Joseph",
		[282315] = "Ranah Säbelklaue",
		[179057] = 12,
		[77762] = 7,
		[370] = 7,
		[282316] = "Ranah Säbelklaue",
		[258920] = 12,
		[315081] = "Seuchenwachenhauptmann Thedric",
		[228204] = "Garstiger Pirscher",
		[298700] = 3,
		[116670] = 10,
		[258921] = 12,
		[243563] = "Gezeitenkrabbler",
		[302797] = 7,
		[308941] = "Drest'agath",
		[408] = 4,
		[263891] = "Herzbannrankenwinderin",
		[298703] = 2,
		[284369] = "[*] Meeressturm",
		[106944] = "Zerstörendes Sha",
		[257899] = "Verheererin der Eisenfluträuber",
		[313039] = "Zorn von N'Zoth",
		[210801] = 7,
		[13819] = 2,
		[313040] = "Zorn von N'Zoth",
		[308945] = "Gedankenentstellertentakel",
		[313041] = "Zorn von N'Zoth",
		[252781] = "Hexendoktorin der Zanchuli",
		[106433] = "Meister Schneewehe",
		[308947] = "Drest'agath",
		[278231] = 6,
		[242543] = 5,
		[210803] = 10,
		[304853] = 12,
		[298710] = 5,
		[308949] = 10,
		[257902] = "[*] Panzerpraller",
		[263899] = "Herzbannrankenwinderin",
		[114113] = 11,
		[106434] = "Meister Schneewehe",
		[288473] = "Großmeister Ulrich",
		[276187] = 7,
		[280283] = 1,
		[7870] = 10,
		[300761] = 11,
		[498] = 2,
		[300762] = 7,
		[39911] = 10,
		[315097] = "Il'gynoth",
		[276190] = 7,
		[280286] = 11,
		[115650] = "Schaumiger Bierlementar",
		[300764] = "Schleimelementar",
		[528] = 5,
		[296669] = "Alx'kov der Befallene",
		[315099] = "Seuchenwachenhauptmann Thedric",
		[300765] = 5,
		[69576] = "Diener der Todessprecher",
		[238452] = 9,
		[265954] = 3,
		[256882] = "Monzumi",
		[317149] = "[*] Verdauungsflüssigkeiten",
		[205689] = "Jägerin der Zanj'ir",
		[302816] = "Rasender Erdwüter",
		[209785] = 2,
		[204666] = "Eichenherz",
		[19574] = 3,
		[298722] = 1,
		[199547] = 12,
		[257908] = "Offizierin der Eisenfluträuber",
		[308962] = "Gedankenentstellertentakel",
		[196476] = 8,
		[205691] = 3,
		[173951] = 7,
		[276199] = 7,
		[242551] = 2,
		[179071] = 5,
		[102342] = 11,
		[313060] = 10,
		[248695] = "[*] Lied des Meeres",
		[278249] = 10,
		[217979] = 9,
		[44520] = "Hexenmeister der Sonnenklingen",
		[11196] = 8,
		[196478] = 8,
		[308967] = "Gefallene Zuchtmeisterin",
		[311015] = "Monströses Ungetüm",
		[258935] = "Aschenwindpriesterin",
		[317159] = 3,
		[147333] = "Gequälter Initiand",
		[740] = 11,
		[190336] = 8,
		[292587] = "Wächterin M'sheke",
		[278253] = 8,
		[106439] = "Shado-Pan-Novize",
		[106951] = 11,
		[276207] = 10,
		[311019] = "Williges Opfer",
		[34026] = 3,
		[276208] = 10,
		[188290] = 6,
		[288495] = 3,
		[173956] = 11,
		[207744] = 12,
		[296688] = "Lady Aschenwind",
		[282354] = "Ranah Säbelklaue",
		[276211] = 6,
		[311023] = "Williges Opfer",
		[306928] = "Shad'har der Unersättliche",
		[276212] = "Mogul Ratztunk",
		[173958] = 11,
		[296691] = "Koloss der Schreckensnattern",
		[306930] = "Shad'har der Unersättliche",
		[203651] = 11,
		[173959] = 3,
		[256893] = 2,
		[208771] = 5,
		[296693] = "Lady Aschenwind",
		[306932] = "[*] Giftiger Panzer",
		[308980] = "Verderbnistumor",
		[197509] = "Blutwurm <Nymphelia-DasSyndikat>",
		[198533] = "Statue der Jadeschlange <Ranyel-Aegwynn>",
		[208772] = 5,
		[306934] = "Shad'har der Unersättliche",
		[268027] = "Lebendige Strömung",
		[268028] = "Lebendige Strömung",
		[278267] = 9,
		[980] = 9,
		[228227] = "Guarm",
		[256896] = 3,
		[79822] = "Erbarmungslose Gladiatorin Saifu",
		[272126] = 2,
		[161676] = 5,
		[228228] = "Guarm",
		[313082] = 7,
		[276223] = 7,
		[50410] = "Eisfaust",
		[51690] = 4,
		[306942] = "Shad'har der Unersättliche",
		[302847] = 10,
		[1160] = 1,
		[282370] = "Ranah Säbelklaue",
		[292609] = "Kriegsdruide Ko'chus",
		[270084] = "Wachoffizier Atu",
		[280323] = "Bürger von Theramore",
		[292610] = "Kriegsdruide Ko'chus",
		[229255] = "Odyn",
		[313088] = 1,
		[292611] = "Kriegsdruide Ko'chus",
		[200587] = 9,
		[313089] = 1,
		[105421] = 2,
		[245638] = 11,
		[308995] = "Tentakel von Drest'agath",
		[186254] = 3,
		[308996] = "N'Zoth der Verderber",
		[205708] = 8,
		[300806] = 9,
		[200589] = "Eiterpelzgrizzly",
		[44268] = "Kriegsherr Salaris",
		[30455] = 8,
		[308998] = "Gefallene Zuchtmeisterin",
		[311046] = "Umbraseherin",
		[234378] = "Gefräßiger Teufelsjäger",
		[259975] = "Die Sandkönigin",
		[1464] = 1,
		[102351] = 11,
		[157588] = 10,
		[248713] = "Gepeinigte Seele",
		[241546] = "Brauerin der Brauerei Sturmbräu <Shâolîn>",
		[288524] = "Lanara Mondschatten",
		[227212] = "Maiev Schattensang",
		[319241] = 10,
		[186258] = 3,
		[195473] = "Splittschleimschnecke",
		[102352] = 11,
		[296718] = "Gesichtsloser Willensbrecher",
		[300814] = 2,
		[286480] = "Funkenbot",
		[292624] = "Kriegsdruide Ko'chus",
		[115151] = 10,
		[1680] = 1,
		[300816] = "Schleimelementar",
		[210833] = 8,
		[292626] = "Kriegsdruide Ko'chus",
		[19577] = 3,
		[190356] = 8,
		[1752] = 4,
		[79828] = "Schreckenspfote",
		[263959] = "Seelenbetörerin des Herzbanns",
		[1776] = 4,
		[1784] = 4,
		[73685] = 7,
		[190357] = 8,
		[263961] = "Seelenbetörerin des Herzbanns",
		[202644] = 12,
		[236432] = "Wachsame Maid",
		[1856] = 4,
		[313108] = 4,
		[274201] = 5,
		[234385] = "Gefräßiger Teufelsjäger",
		[186263] = 5,
		[317205] = 2,
		[31224] = 4,
		[272156] = "Schrecken der Leere <Mester-Antonidas>",
		[210837] = 8,
		[268062] = 2,
		[208790] = 12,
		[313113] = 1,
		[186265] = 3,
		[306971] = "Zorn von N'Zoth",
		[116178] = "Schaumiger Bierlementar",
		[294685] = 2,
		[42223] = 9,
		[286495] = "[*] Verlockendes Lied",
		[266018] = 11,
		[2336] = 4,
		[300832] = 7,
		[288546] = "Magus der Toten <Liondria-Ulduar>",
		[298785] = 7,
		[270117] = 3,
		[274213] = "Sporenrufer Zancha",
		[80344] = "Wichtel",
		[306978] = "Zorn von N'Zoth",
		[147362] = 3,
		[272167] = "Eiterplage <Рудрапраяг-Гордунни>",
		[282406] = "Funkenbot",
		[263977] = "Mahna Flammenwisper",
		[186270] = 3,
		[223130] = "Eisenzwerg",
		[79833] = "Anenga",
		[263979] = "Mahna Flammenwisper",
		[306982] = 12,
		[276266] = "Spiritualistin der Gezeitenweisen",
		[106966] = "Unstete Energie",
		[255895] = "Toxischer Saurid",
		[263981] = "Mahna Flammenwisper",
		[236442] = "Hauptmann Yathae Mondstreich",
		[102359] = 11,
		[296746] = "Arkane Bombe",
		[306985] = "Zorn von N'Zoth",
		[311081] = "Wahnsinniger Rekrut",
		[313129] = "Drohne der Aqir",
		[306986] = "Zorn von N'Zoth",
		[254873] = 3,
		[268080] = "[*] Aura der Gleichgültigkeit",
		[33778] = 11,
		[315179] = 7,
		[147367] = 1,
		[240540] = "Schnellflosse der Reißmäuler",
		[257946] = 3,
		[234397] = "Schrecklicher Hundemeister",
		[306990] = "Zorn von N'Zoth",
		[311086] = "Wahnsinniger Rekrut",
		[45297] = 7,
		[266036] = "Distelakolythin",
		[92122] = "[*] Kristallsplitter",
		[272180] = "Grotesker Schrecken",
		[227231] = "Illidan Sturmgrimm <Shâolîn>",
		[292659] = "Mondruferin Mozo'kas",
		[225184] = "Maiev Schattensang",
		[227232] = "Illidan Sturmgrimm <Shâolîn>",
		[278326] = 12,
		[272183] = "Gefallener Todessprecher",
		[306995] = "Furorion",
		[268088] = "Schwester Gebrecht",
		[311091] = "Eifrige Anhängerin",
		[280375] = 2,
		[306996] = "Leerenaszendent",
		[44274] = "Zelfan",
		[15230] = 9,
		[276282] = "Sturmbeschwörerlehrling",
		[148396] = 4,
		[165802] = 5,
		[22907] = "Hexe der Echsennarbe",
		[101339] = "Echo von Jaina",
		[311097] = "[*] Kondensierende Leere",
		[210854] = 7,
		[228260] = 5,
		[311098] = "Eifrige Anhängerin",
		[288573] = 3,
		[57841] = 4,
		[191401] = "Schützin der Valarjar",
		[102364] = 11,
		[313148] = 11,
		[280385] = 4,
		[44531] = "Tiefenlichtküstenläufer",
		[61425] = 2,
		[197546] = "Illysanna Rabenkrone",
		[307008] = "Blick des Wahnsinns",
		[38644] = "Nethermagier der Grauherzen",
		[292675] = 11,
		[160688] = 2,
		[57330] = 6,
		[197548] = 5,
		[255909] = 4,
		[200620] = "Rasende Nachtkralle",
		[307012] = "Blick des Wahnsinns",
		[294726] = "Abyssalkommandantin Sivara",
		[266058] = 7,
		[276297] = "Tiefseeritualist",
		[176048] = "Krieger der Hassnattern",
		[234409] = "Großinquisitor",
		[298823] = 5,
		[11327] = 4,
		[116189] = 10,
		[193455] = 3,
		[54771] = "Knochensensenverheerer",
		[206766] = 1,
		[286540] = "Wipfelpirscher",
		[193456] = 12,
		[186289] = 3,
		[196528] = 6,
		[313162] = 11,
		[199600] = 4,
		[307020] = "Vexiona",
		[292686] = 12,
		[311116] = "Stacheliges Tentakel",
		[280400] = 4,
		[317260] = 5,
		[52212] = 6,
		[44533] = "Getriebener Schleicher",
		[189363] = 2,
		[286546] = "Hakenzahn",
		[84963] = 2,
		[280404] = 3,
		[199603] = 4,
		[317265] = 3,
		[311122] = "Stacheliges Tentakel",
		[264024] = "Seelenbetörerin des Herzbanns",
		[298836] = 11,
		[284502] = 7,
		[302932] = 11,
		[274264] = 9,
		[195509] = 8,
		[313172] = 1,
		[15039] = "Geomantin des Irdenen Rings",
		[217011] = "Verärgerte Menge",
		[218035] = "Brauerin der Brauerei Sturmbräu <Shâolîn>",
		[298839] = 2,
		[302935] = 2,
		[61684] = "Elektro <Mandrasal-Blackmoore>",
		[15487] = 5,
		[200630] = "Gebrochener Kreischer",
		[298841] = 1,
		[38647] = "Nethermagier der Grauherzen",
		[280412] = 9,
		[268126] = "Schwester Dornstrauch",
		[260016] = "Summende Drohne",
		[292700] = "Mondruferin Mozo'kas",
		[106979] = "Shado-Pan-Feuerbogenschütze",
		[286558] = "Bruder Joseph",
		[202680] = "Serpentrix",
		[268129] = "Snackverkäuferin",
		[197561] = 2,
		[201657] = 2,
		[44535] = 12,
		[262066] = "Mechanisierter Friedensbewahrer",
		[298849] = "Trixie Teyser",
		[126434] = 11,
		[286563] = "Bruder Joseph",
		[264038] = "Dornformerin des Zirkels",
		[307041] = "Furorion",
		[256948] = 8,
		[79848] = "Twirhp",
		[307042] = "Fleischverschmelzung",
		[49143] = 6,
		[288613] = 3,
		[57846] = "Jarud",
		[307044] = "Unbekannt",
		[244663] = 8,
		[278376] = 12,
		[197565] = 10,
		[198589] = 12,
		[292711] = "Mondruferin Mozo'kas",
		[200637] = "Dargrul",
		[274282] = 11,
		[106470] = "[*] Feuerball",
		[274283] = 11,
		[302952] = 11,
		[235450] = 8,
		[244665] = "Glut von Azzinoth <Malvi-Sylvanas>",
		[196543] = "Fenryr",
		[266095] = "Schläger der Zanj'ir",
		[300907] = 7,
		[147398] = "Gefallener Beckenhüter",
		[33786] = 11,
		[307052] = "Zorn von N'Zoth",
		[317291] = 4,
		[196545] = 6,
		[264050] = "Dornformerin des Zirkels",
		[307053] = "[*] Lavapfützen",
		[317292] = "N'Zoth der Verderber",
		[280433] = 8,
		[313198] = 12,
		[274291] = 7,
		[256955] = "Kürassier Valyri",
		[302960] = 5,
		[54520] = "Erbarmungslose Gladiatorin Saifu",
		[274292] = 7,
		[228287] = 10,
		[307057] = "Vexiona",
		[79340] = "Hohepriesterin Azil",
		[241598] = "Zerstörer der Teufelswache",
		[296819] = 9,
		[307058] = "Myzelzyste",
		[286581] = 4,
		[296820] = 9,
		[256957] = "Wellenformerin der Eisenfluträuber",
		[302964] = "Ma'haat der Unbeugsame",
		[264057] = 9,
		[251838] = 2,
		[300917] = 9,
		[266106] = "Wilder Blutschwärmer",
		[251839] = 2,
		[317301] = "Leerrufer der K'thir",
		[22911] = "Astraler Grufträuber",
		[31230] = 4,
		[266109] = "Wilder Blutschwärmer",
		[286587] = 10,
		[205766] = 8,
		[157644] = 8,
		[288636] = 10,
		[282493] = 12,
		[164812] = 11,
		[255937] = 2,
		[282495] = 9,
		[292734] = "Mondruferin Mozo'kas",
		[190410] = "Sira Mondhüter",
		[79855] = "Twirhp",
		[313213] = "Ra-den",
		[82415] = "Corborus",
		[307071] = "Synthesegeschwür",
		[302976] = "Königin Azshara",
		[272260] = 5,
		[282499] = 9,
		[196555] = 12,
		[164815] = 11,
		[87023] = 8,
		[79856] = "Twirhp",
		[288644] = 1,
		[315265] = "Unbekannt",
		[255941] = 2,
		[5217] = 11,
		[266121] = "Flammenschuppenhydra",
		[266122] = "Frostschuppenhydra",
		[79345] = "Hohepriesterin Azil",
		[79857] = "Twirhp",
		[113645] = 10,
		[115181] = 10,
		[282506] = 9,
		[284554] = 3,
		[282507] = 12,
		[311176] = "N'Zoth der Verderber",
		[254920] = "Giftschuppenhydra",
		[31999] = "Leerenentstellter Eindringling",
		[121837] = 12,
		[228300] = "Helya",
		[288653] = 1,
		[150486] = 3,
		[313227] = "Ra-den",
		[266129] = "Giftpriester der Dorrzweige",
		[268177] = "Windsprecherin Heldis",
		[188370] = 2,
		[313228] = "[*] Leerenberührt",
		[78835] = "Ozruk",
		[268178] = 12,
		[121838] = 8,
		[45053] = 3,
		[123886] = 7,
		[256971] = "Knurrender Dockhund",
		[272276] = 2,
		[298897] = "Trixie Teyser",
		[236494] = "Gefallener Avatar",
		[254924] = "Flammenschuppenhydra",
		[298898] = "Naeno Megarumms",
		[121839] = 3,
		[268183] = 2,
		[262092] = "Benebelter Rohling",
		[266136] = 9,
		[268184] = "Windsprecherin Heldis",
		[270232] = 8,
		[307092] = "Zorn von N'Zoth",
		[228305] = "Uralter Knochenknecht",
		[260046] = "Ehrenwache der Zanj'ir",
		[268187] = "Windsprecherin Heldis",
		[262094] = 3,
		[268188] = "Windsprecherin Heldis",
		[233426] = "Atrigan",
		[313239] = "Prophet Skitra",
		[153564] = 8,
		[31616] = 7,
		[311192] = 9,
		[254928] = "Frostschuppenhydra",
		[255952] = "Himmelskäpt'n Kragg",
		[256976] = "Kürassier Valyri",
		[303003] = 12,
		[315291] = "[*] Verschlungener Abgrund",
		[270241] = "Brennende Glutwache",
		[232405] = 3,
		[296863] = 3,
		[45055] = 8,
		[230358] = "Herrin Sassz'ine",
		[256979] = "Käpt'n Eudora",
		[233430] = 10,
		[264101] = "Aqu'sirr",
		[145377] = "Verseuchter Tropfen",
		[236502] = 7,
		[288675] = 7,
		[300962] = "[*] Septischer Boden",
		[270246] = "Entfesseltes Inferno",
		[40192] = 3,
		[311202] = 4,
		[264104] = "[*] Runenmal",
		[240599] = "Seeruferin der Gezeitenschuppen",
		[311203] = 12,
		[2641] = 3,
		[264106] = 9,
		[268202] = "Unbekannt",
		[185311] = 4,
		[266155] = "Frostschuppenbrutmutter",
		[268203] = "Unbekannt",
		[230362] = "Zitterqualle",
		[300968] = 8,
		[303017] = 9,
		[264110] = "Gezeichnete Schwester",
		[247769] = 11,
		[11970] = "Unterworfener Feuerteufel",
		[303018] = 7,
		[264111] = "Gezeichnete Schwester",
		[202719] = 12,
		[24450] = "Katze <Thálestris-Blackmoore>",
		[313258] = "Dunkle Inquisitorin Xanesh",
		[247770] = 11,
		[232412] = 9,
		[25602] = "Manasauger",
		[43265] = 6,
		[264115] = "Sonnenläufer Ordel",
		[220127] = "Donnerschuppendrache",
		[115191] = 4,
		[231390] = 3,
		[268212] = 1,
		[3409] = 4,
		[315311] = "Verheerer der Aqir",
		[264118] = "Geistwandlerin Quura",
		[274357] = 3,
		[95738] = 1,
		[79868] = "Krapfenkerl",
		[264119] = 9,
		[113656] = 10,
		[188389] = 7,
		[115192] = 4,
		[199652] = "König Haldor",
		[270264] = "Entfesseltes Inferno",
		[317363] = 8,
		[278456] = "Verschlingende Made",
		[14914] = 5,
		[255966] = "Himmelskäpt'n Kragg",
		[233441] = "Atrigan",
		[282553] = 6,
		[162794] = 12,
		[66047] = "Schwarzer Champion",
		[264125] = "Geistwandlerin Quura",
		[79358] = "[*] Machtgriff",
		[311226] = 6,
		[298940] = "Naeno Megarumms",
		[240611] = "Seeruferin der Gezeitenschuppen",
		[233444] = "Atrigan",
		[300989] = 8,
		[25603] = "Astraler Zauberer",
		[296894] = "Azsharas Glanz",
		[51714] = 6,
		[79871] = "Oku",
		[44291] = "Priesterin Delrissa",
		[44547] = "Schwester der Qual",
		[317373] = 12,
		[199658] = 1,
		[278467] = "Rummy Mancomb",
		[290754] = 11,
		[236518] = "Priesterin Lunazenit",
		[118779] = 1,
		[296898] = "Unendliche Verderbnis",
		[298946] = "Naeno Megarumms",
		[268230] = "Aschenwinddeckmatrose",
		[288708] = "Hochtüftler Mekkadrill",
		[298947] = "Naeno Megarumms",
		[236519] = "[*] Mondbrand",
		[20484] = 11,
		[298948] = 5,
		[303044] = 1,
		[313283] = "Vexiona",
		[268233] = "Wächterelementar",
		[69634] = "Hochfürst Saurfang",
		[59650] = 2,
		[298950] = 2,
		[268234] = "Gallschlammling",
		[294855] = "Unscheinbare Pflanze",
		[288712] = 12,
		[294856] = "[*] Instabile Mischung",
		[264140] = "Rauer Hund",
		[270284] = "Läuterungskonstrukt",
		[270285] = "Obsidiandrache",
		[11971] = "Kariel",
		[266191] = "[*] Wirbelnde Axt",
		[268239] = "Wächterelementar",
		[294860] = "Unscheinbare Pflanze",
		[264144] = "Aqu'sirr",
		[274383] = "Ungezieferfänger",
		[12675] = "Ewige Chronomantin",
		[101888] = "Zeitlinienversetzte Seuchenbestie",
		[303053] = 6,
		[51460] = 6,
		[268242] = "Wächterelementar",
		[294863] = "Unscheinbare Pflanze",
		[296911] = "Unendliche Verderbnis",
		[288721] = 12,
		[274387] = "[*] In Dunkelheit gezogen",
		[224239] = 2,
		[226287] = "Ekelsplitterbrocken",
		[290770] = "Donnerschuppenjungtier",
		[102401] = 11,
		[264150] = "Dornwächter",
		[266198] = 1,
		[199667] = 1,
		[311249] = 12,
		[311250] = 5,
		[214002] = "Auferstandener Lanzer",
		[91139] = 10,
		[303060] = 6,
		[264153] = "Verschlingende Made",
		[266201] = "Reanimierter Wächter",
		[35079] = 3,
		[264155] = "Aqu'sirr",
		[153595] = 8,
		[236529] = "Jägerin Kasparian",
		[274395] = 2,
		[153596] = 8,
		[101891] = "Zeitlinienversetzte Seuchenbestie",
		[266206] = "Kula die Schlächterin",
		[201719] = "Wyrmzungenextraktor",
		[292828] = "Terrortentakel",
		[274399] = 11,
		[274400] = "Duellantin der Schwertwasserkorsaren",
		[197625] = 11,
		[290783] = "Ivan der Wahnsinnige",
		[278497] = 1,
		[193530] = 3,
		[164862] = 11,
		[307167] = "Orgozoa",
		[178173] = 10,
		[102405] = "Zeitlinienversetzter Priester",
		[264166] = "Aqualing",
		[95750] = 9,
		[288740] = 12,
		[244726] = 8,
		[294884] = "Defekter Schrottbot",
		[238583] = "Teufelsfäulnispirscher",
		[315362] = 12,
		[311267] = "Schattenklinge der Kultisten",
		[250870] = 8,
		[251894] = "Kolossale Steinhaut",
		[278504] = "Runenjüngerin",
		[222202] = 8,
		[30213] = "Kiz-amal <Bangonologie-Aegwynn>",
		[250871] = 7,
		[237561] = "Jägerin Kasparian",
		[290793] = 5,
		[264173] = 9,
		[294890] = "Defekter Schrottbot",
		[238586] = "Gloth",
		[307177] = "Bezauberte Ritualistin",
		[11972] = "Champion der Zerschmetterten Hand",
		["DEBUFF"] = 7,
		[32645] = 4,
		[196608] = 10,
		[66060] = "Vhell",
		[266225] = "Gorak Tul",
		[268273] = "Vollstrecker der Gezeitenweisen",
		[294894] = "Defekter Schrottbot",
		[264178] = 9,
		[78859] = "Ozruk",
		[317420] = 1,
		[193538] = 4,
		[315373] = "Avatar des Leidens",
		[252923] = "Hexendoktorin der Zanchuli",
		[270323] = 3,
		[296944] = "[*] Überspringendes Azerit",
		[209921] = "Dargrul",
		[274420] = 9,
		[102409] = "Zeitlinienversetzter Priester",
		[255996] = 7,
		[268278] = "Lady Kronsteig",
		[79884] = "Zor Einbaum",
		[272374] = "Käpt'n Jolli",
		[266231] = "Kula die Schlächterin",
		[236543] = "Domatrax",
		[229376] = 8,
		[20615] = "Kriegsherr Salaris",
		[268280] = "Vollstrecker der Gezeitenweisen",
		[250878] = 2,
		[229377] = 5,
		[240640] = 10,
		[60424] = 1,
		[234497] = "Gerissene Ausgeburt",
		[30470] = "Wilder der Zerschmetterten Hand",
		[228354] = 8,
		[270332] = 3,
		[266237] = "Aka'ali die Bezwingerin",
		[203782] = 12,
		[278524] = 2,
		[305145] = 12,
		[270334] = "Inselettin",
		[32390] = 9,
		[315385] = 11,
		[195592] = 7,
		[270335] = 3,
		[231428] = 1,
		[224261] = "Kariel",
		[294909] = 11,
		[290814] = 6,
		[34828] = "Schamane des Kriegshymnenklans",
		[59913] = 1,
		[270338] = 3,
		[274434] = "Sturmbeschwörerlehrling",
		[228358] = 8,
		[270339] = 3,
		[272388] = "Zuls Schatten",
		[274436] = 11,
		[317439] = 3,
		[296962] = 8,
		[274437] = "Sturmbeschwörerlehrling",
		[257028] = "Kürassier Valyri",
		[274438] = "[*] Sturmgewitter",
		[228360] = 5,
		[270343] = 3,
		[305155] = "Grabende Gliedmaße",
		[256005] = "Haihappen",
		[286726] = "Seuchenkatapult der Verlassenen",
		[280583] = 2,
		[1329] = 4,
		[301061] = "Wächterin M'sheke",
		[229385] = 10,
		[51723] = 4,
		[224266] = 2,
		[30471] = "Häscher der Zerschmetterten Hand",
		[317445] = 3,
		[229386] = 3,
		[288777] = 2,
		[274443] = 3,
		[270348] = "Lavarok",
		[1449] = 8,
		[260103] = "[*] Treibgasbrand",
		[228363] = "Geistfetzer der Kvaldir",
		[237578] = "Höllenglutseelenheiler",
		[313352] = 8,
		[231435] = 2,
		[167955] = 5,
		[296971] = 8,
		[203791] = 2,
		[286733] = "Seuchenwachenhauptmann Thedric",
		[274447] = 3,
		[278543] = 6,
		[294926] = 11,
		[266258] = "Drust Slaver Summoning Portal",
		[268306] = "Lady Kronsteig",
		[88082] = "Marciene-DerRatvonDalaran <Marciene-DerRatvonDalaran>",
		[288784] = 2,
		[186387] = 3,
		[188435] = "Terga Erdenbrecher",
		[13445] = "Wellenbrecher der Sashj'tar",
		[268308] = "Lady Kronsteig",
		[294929] = "K.U.-J.0.",
		[242701] = "Verteidiger der Legionsrichter",
		[202770] = 11,
		[268309] = "Tiefseeritualist",
		[188436] = "Terga Erdenbrecher",
		[119311] = "[*] Klingenfluss",
		[307217] = "Flitzer der Aqir",
		[257036] = "Rottenkommandantin der Dockhunde",
		[200723] = "Dargrul",
		[242702] = "Verteidiger der Legionsrichter",
		[307218] = "Vexiona",
		[228368] = "Helhund",
		[237583] = "[*] Brennende Schnelligkeit",
		[313362] = "Zorn von N'Zoth",
		[278551] = "Dornformerin des Zirkels",
		[1833] = 4,
		[266265] = "Gefallener Todessprecher",
		[203796] = 12,
		[313364] = "Zorn von N'Zoth",
		[266266] = "Gorak Tul",
		[268314] = 3,
		[88084] = "Scarlét-Aman'thul <Scarlét-Aman'thul>",
		[30472] = "Legionär der Zerschmetterten Hand",
		[203797] = 2,
		[280602] = "Mechjockey",
		[274459] = 11,
		[233490] = 9,
		[272412] = "Harpunier der Schwertwasserkorsaren",
		[307224] = "Orgozoa",
		[228371] = "[*] Atem der Angst",
		[280604] = "Snackverkäuferin",
		[256016] = "[*] Übler Überzug",
		[257040] = 8,
		[311321] = "Henkerin der Kultisten",
		[280605] = "Snackverkäuferin",
		[2050] = 5,
		[239635] = 5,
		[2098] = 4,
		[311323] = "Henkerin der Kultisten",
		[228373] = "Riffbeschwörer der Kvaldir",
		[239636] = 5,
		[268322] = "Ertrunkener Tiefenbringer",
		[288800] = 8,
		[228374] = "Riffbeschwörer der Kvaldir",
		[188443] = 7,
		[189467] = "Sira Mondhüter",
		[301088] = "Bombenpanzer",
		[201754] = "Katze <Zerix-DunMorogh>",
		[307232] = "Tek'ris",
		[9734] = "Erbarmungslose Gladiatorin Saifu",
		[307233] = 12,
		[257044] = 3,
		[278565] = 3,
		[259092] = "Sturmruferin der Eisenfluträuber",
		[189469] = "Sira Mondhüter",
		[257045] = 3,
		[233496] = 9,
		[280615] = 7,
		[178207] = 6,
		[29577] = "Langhalsgrasfresser",
		[86040] = 9,
		[246807] = 2,
		[233497] = 9,
		[272426] = "[*] Artillerieaufklärer",
		[284713] = "Sirene der Dunkelschuppen",
		[2818] = 4,
		[107030] = "[*] Spritzen",
		[233498] = 9,
		[272428] = 2,
		[307240] = "Lebendiges Miasma",
		[294954] = "[*] Selbststutzende Hecke",
		[266286] = "Morastschnauzenaufspießer",
		[158756] = 10,
		[233499] = 9,
		[72219] = "Fauldarm",
		[282669] = 1,
		[236571] = "Verderbte Klinge",
		[12294] = 1,
		[266288] = "Morastschnauzendornrücken",
		[272432] = "Zornwächter <Рудрапраяг-Гордунни>",
		[274480] = "Auferstandener Ravasaurus <Raiderer-Malfurion>",
		[195617] = 6,
		[35346] = "BlueBlinki <Olga-DunMorogh>",
		[194594] = 3,
		[238621] = "Gewittersturm",
		[225311] = 2,
		[313391] = 11,
		[153640] = 8,
		[222240] = 5,
		[157736] = 9,
		[96794] = "Magister Umbric",
		[307250] = "Vexiona",
		[237599] = "Höllenglutteufelsbringer",
		[238623] = "Teufelsfledermaus",
		[268344] = 1,
		[92187] = 10,
		[313395] = "Vitaessenz <Ra-den>",
		[203812] = 4,
		[3714] = 6,
		[272441] = "Kolossale Steinhaut",
		[272442] = 12,
		[30474] = "Heidnischer Wächter",
		[268347] = "Lord Sturmsang",
		[313398] = "Leerenessenz <Ra-den>",
		[268348] = "Kolossales Tentakel",
		[258079] = "Kanalisationszangenkiefer",
		[177193] = 1,
		[118297] = "Urfeuerelementar <Peyotl-Antonidas>",
		[188456] = 2,
		[313400] = "Verderbertentakel",
		[282684] = 3,
		[280637] = "Schattenjäger Ju'loa",
		[309307] = 2,
		[184362] = 1,
		[282687] = 12,
		[157742] = 10,
		[290880] = 8,
		[81439] = "Millhaus Manasturm",
		[184364] = 1,
		[195627] = 4,
		[148529] = 7,
		[157744] = 10,
		[241702] = "Schattenseele",
		[72737] = "Todesbringer Saurfang",
		[203819] = 12,
		[204843] = 12,
		[264265] = "Hati <Brummbär>",
		[101406] = "Todesbringer Saurfang",
		[309316] = "Ma'ut",
		[272457] = "Sporenrufer Zancha",
		[256038] = "Aufseher Korgus",
		[268362] = "Zerstörungswütige Pionierin",
		[303174] = "Präsentationssockel: Mechagon <Salimor-Ysera>",
		[195630] = 10,
		[311366] = "[*] Leerenstrahl",
		[274507] = "Deckschrubber der Bilgeratten",
		[257063] = "Wellenformerin der Eisenfluträuber",
		[225323] = 10,
		[226347] = "Steinklauenlarvenmeister",
		[228395] = "Seelenbinder der Knochensprecher",
		[297034] = 2,
		[311369] = "[*] Qual",
		[297035] = 12,
		[81442] = "Millhaus Manasturm",
		[280654] = 6,
		[176179] = 1,
		[209967] = "Alphabasilisk <Sternw-Uldaman>",
		[313420] = "Ätzender Aqir",
		[257066] = "Yazma",
		[311373] = "Lichtjäger des SI:7",
		[297039] = 2,
		[270419] = "Steingebundener Erdweber",
		[297040] = 2,
		[6788] = 5,
		[38166] = "Sha der Gewalt",
		[274516] = 2,
		[309328] = 7,
		[286803] = "Seuchenwachenhauptmann Thedric",
		[272469] = "Abyssische Reichweite",
		[307281] = 3,
		[216113] = 10,
		[280661] = 12,
		[268375] = "Abgrundkultist",
		[286805] = "Seuchenwachenhauptmann Thedric",
		[246830] = 11,
		[7268] = 8,
		[116768] = 10,
		[305236] = "Giftweber der Aqir",
		[307284] = "Vexiona",
		[228401] = 5,
		[303189] = "Orakel der Azsh'ari",
		[132157] = 5,
		[233521] = "Brauerin Almai",
		[305238] = "Giftweber der Aqir",
		[299095] = "Orgozoa",
		[311382] = "Deresh aus dem Nichts",
		[238641] = "Klingenwirker der Zornwächter",
		[200758] = 4,
		[218164] = 10,
		[101411] = "Echo von Sylvanas",
		[301145] = "Ma'haat der Unbeugsame",
		[31884] = 2,
		[157756] = 10,
		[301146] = "Ma'haat der Unbeugsame",
		[290908] = 2,
		[270431] = "Steinmaschinist Nu-Xin",
		[101412] = "Echo von Sylvanas",
		[236596] = "Hauptmann Yathae Mondstreich",
		[196665] = "Lightning Stalker",
		[282720] = 3,
		[258098] = "Hexendoktorin Unbugu",
		[305246] = "Niederer Zoatroid",
		[194618] = 2,
		[268387] = "Lord Kronsteig",
		[197690] = 1,
		[257075] = "Käpt'n Grünbauch",
		[258099] = "Hexendoktorin Unbugu",
		[234550] = "Atrigan",
		[305249] = 3,
		[307297] = "Vexiona",
		[268391] = "Abgrundkultist",
		[311394] = "Sanguimar",
		[256053] = "Dürstender Blutsauger",
		[257077] = "Käpt'n Grünbauch",
		[226361] = "Steingebundener Prassler",
		[290918] = 8,
		[203836] = 8,
		[240696] = "Il'ruxx",
		[79913] = "Terga Erdenbrecher",
		[107046] = "Durchtränkter Ho-zen-Raufbold",
		[30989] = "Zelot der Zerschmetterten Hand",
		[311399] = "Waffenmeisterin Terenson",
		[101927] = "Echo von Jaina",
		[311400] = "Waffenmeisterin Terenson",
		[11976] = "Unbekannt",
		[303210] = 5,
		[250937] = 1,
		[307306] = "Zorn von N'Zoth",
		[303211] = 7,
		[107047] = "Bomber Ga'dok",
		[115750] = 2,
		[303212] = 7,
		[250938] = 1,
		[194625] = 2,
		[42777] = 10,
		[132169] = 1,
		[256058] = "Hakenzahn",
		[219199] = 3,
		[268403] = "König Dazar",
		[278642] = 2,
		[238653] = "Dul'zak",
		[258107] = "Hexendoktorin Unbugu",
		[288882] = 12,
		[229439] = 3,
		[70189] = "Bastionsgargoyle",
		[198723] = "Moderherzdryade",
		[158792] = 11,
		[286836] = 6,
		[200772] = 1,
		[237632] = "Priesterin Lunazenit",
		[238656] = "[*] Schattenwelle",
		[165961] = 11,
		[120360] = 3,
		[249919] = "Yazma",
		[44314] = "Selin Feuerherz",
		[186439] = 5,
		[212036] = 5,
		[237633] = "[*] Spektralgleve",
		[15496] = "Ewiger Henker",
		[286842] = "Geoaktiver Azersplitter",
		[187464] = 5,
		[270461] = "Edelsteinsplitterkoloss",
		[70191] = "Rasende Monstrosität",
		[120361] = 3,
		[194632] = 12,
		[255041] = "Fressender Himmelskreischer",
		[92205] = 2,
		[196681] = 3,
		[246851] = 3,
		[215111] = "Unbekannt <Bangonologie-Aegwynn>",
		[309373] = "Magister Umbric",
		[286848] = "Azeritriese",
		[212040] = 11,
		[246852] = 3,
		[199754] = 4,
		[282755] = "[*] Verteidigungsbeschuss",
		[246853] = 3,
		[257092] = "Die Sandkönigin",
		[280709] = 12,
		[188493] = "Naraxas",
		[246854] = 3,
		[5221] = 11,
		[280711] = 5,
		[194637] = 8,
		[126507] = 4,
		[295046] = 1,
		[223306] = 2,
		[258118] = "Berserkerin Zar'ri",
		[250951] = 1,
		[30479] = "Akolyth des Schattenmondklans",
		[244808] = "Dunstschuppenhamsterer",
		[30735] = "Großhexenmeister Nethekurse",
		[148564] = 2,
		[30991] = "Auftragsmörder der Zerschmetterten Hand",
		[280715] = 1,
		[268429] = 7,
		[295050] = 12,
		[297098] = 2,
		[274573] = 7,
		[249929] = "Soulrend Add",
		[305290] = 9,
		[130092] = 4,
		[274575] = 9,
		[200784] = "Wyrmzungenplünderer",
		[272528] = "Aschenwindheckenschütze",
		[244811] = "Salzpelzstockschmeißer",
		[270481] = "Dämonischer Tyrann <Bangonologie-Aegwynn>",
		[270482] = "Spektrale Berserkerin",
		[113199] = 11,
		[235597] = "Gefallener Avatar",
		[244812] = "Salzpelz-Ho-zen",
		[188499] = 12,
		[197714] = "Mitternachtsstampfer",
		[307343] = "Vexiona",
		[6789] = 9,
		[259147] = "[*] Seelenmahl",
		[299153] = "Trixie Teyser",
		[244813] = 8,
		[270485] = "Spektrale Berserkerin",
		[206930] = 6,
		[272534] = "Beutefanatiker",
		[268439] = 4,
		[188501] = 12,
		[297108] = 6,
		[206931] = 6,
		[268440] = "Kunstschütze der Eisenfluträuber",
		[210003] = 12,
		[260173] = 5,
		[204884] = "Teufelshund",
		[51485] = 7,
		[79925] = "Schlachti",
		[299159] = 9,
		[253007] = 5,
		[204885] = "Teufelshund",
		[238673] = "Knallpeitscher",
		[30992] = "Auftragsmörder der Zerschmetterten Hand",
		[270492] = "Spektraler Hexpriester",
		[270493] = "Spektraler Hexpriester",
		[197719] = "Windsog",
		[111666] = 10,
		[317592] = 12,
		[258128] = "Schläger der Eisenfluträuber",
		[272542] = "Aschenwindheckenschütze",
		[155741] = 2,
		[197720] = "Windsog",
		[299164] = "Mechamotorrad",
		[233556] = "Eindämmungspylon",
		[280735] = 1,
		[227413] = 10,
		[270497] = "Spektrale Hexendoktorin",
		[297118] = 2,
		[78903] = "Ozruk",
		[71736] = "Sinistrer Blutritter",
		[307358] = "Shad'har der Unersättliche",
		[81463] = "Erdformer des Steinernen Kerns",
		[270499] = "Spektrale Hexendoktorin",
		[307359] = "Vexiona",
		[270500] = "Skelettjagdraptor",
		[311456] = "Waffenmeisterin Terenson",
		[111668] = "Raigonn",
		[270502] = "Skelettjagdraptor",
		[274598] = 8,
		[203867] = 4,
		[270503] = "Skelettjagdraptor",
		[199772] = "Champion der Valarjar",
		[258133] = "Plünderer der Bilgeratten",
		[185438] = 4,
		[270505] = "Königin Patlaa",
		[297126] = 6,
		[258134] = "Plünderer der Bilgeratten",
		[297127] = "Verteidigungsbot Mk. III",
		[293032] = 5,
		[270507] = "Spektrale Bestienmeisterin",
		[297128] = "Verteidigungsbot Mk. III",
		[107574] = 1,
		[240729] = 12,
		[199775] = "Naraxas",
		[12042] = 8,
		[202847] = 5,
		[49184] = 6,
		[307371] = "Vexiona",
		[303276] = "Gebundener Sturm",
		[193633] = "Auferstandene Bogenschützin",
		[270513] = "Aufgebrachter Azersplitter",
		[270514] = "Spektraler Schläger",
		[282801] = "Unbekannt",
		[268467] = 8,
		[270515] = "Entfesseltes Azerit",
		[115767] = 1,
		[191587] = 6,
		[258139] = "Wahrsager der Sandskalpe",
		[288946] = 11,
		[244829] = "Jubelblatt",
		[278708] = 2,
		[216161] = 10,
		[286900] = "Azerjuwelenkristallrücken",
		[193636] = "Salzmeertropfen",
		[20243] = 1,
		[244830] = "Jubelblatt",
		[286901] = "Azerjuwelenkristallrücken",
		[288949] = "Schreddermeister Blix",
		[198756] = "Chi-Ji <Anjuk-Frostwolf>",
		[303284] = "Gebundener Sturm",
		[288950] = "Schreddermeister Blix",
		[260189] = "Mogul Ratztunk",
		[50977] = 6,
		[180327] = "Lodernder Unhold",
		[264378] = "Wahrsagerin des Zirkels",
		[305334] = 4,
		[260190] = "Mogul Ratztunk",
		[268475] = 8,
		[156779] = 7,
		[257119] = "[*] Sandfalle",
		[200806] = 4,
		[272572] = 2,
		[286907] = "Azerjuwelenkristallrücken",
		[297146] = "Leerengebundener Berserker",
		[183401] = "Ekelsplitterkriecher",
		[97340] = 6,
		[244834] = "Kil'jaeden",
		[264384] = "Wahrsagerin des Zirkels",
		[240739] = 7,
		[193641] = 4,
		[244835] = "Unbekannt",
		[51490] = 7,
		[284864] = "Seele des Gezeitenpriesters",
		[226406] = "Glutpanzerdominator",
		[97341] = 1,
		[244836] = "Alte Rudelmutter",
		[255075] = 3,
		[291009] = 4,
		[199786] = 8,
		[303296] = "Jägerin der Zanj'ir",
		[297153] = "Leerengebundener Verheerer",
		[244837] = "Alte Rudelmutter",
		[280772] = 1,
		[303298] = "Jägerin der Zanj'ir",
		[280773] = 1,
		[113724] = 8,
		[41252] = 12,
		[274631] = "Lehrling von Eisenkiel",
		[307396] = "Finstere Seelenschnitzerin",
		[280776] = 1,
		[274633] = "Lehrling von Eisenkiel",
		[262347] = "Münzbetriebener Meuteverprügler",
		[201837] = "Pestherzbeschwörer",
		[262348] = "Kriechermine",
		[264396] = "Runenjüngerin",
		[198766] = "Chi-Ji <Anjuk-Frostwolf>",
		[37669] = "Astraler Priester",
		[262349] = "Hexendoktorin Unbugu",
		[297161] = "Leerengebundener Verheerer",
		[46628] = 6,
		[317639] = "N'Zoth der Verderber",
		[297162] = 7,
		[201839] = "Pestherzbeschwörer",
		[270543] = "Herbeirufer der Kirin Tor",
		[307403] = "Leerenaszendent",
		[309451] = "Magister Umbric",
		[270544] = "Zwielichtdrakonaar",
		[272592] = "Gesichtsloser Verderber",
		[236652] = "Erzmagier Khadgar",
		[278736] = 12,
		[182387] = 7,
		[60195] = "Vhell",
		[258154] = "Berserkerin Zar'ri",
		[80451] = 8,
		[260202] = "Mogul Ratztunk",
		[244844] = "Klaftar",
		[106560] = "[*] Sprudelndes Bräu",
		[264404] = "Phönixmagierin Ryleia",
		[266452] = "Käpt'n Grünbauch",
		[303312] = "Kanalisiererin der Azsh'ari",
		[201842] = "Pestherzbeschwörer",
		[232559] = 11,
		[264407] = "Gesichtslose Maid",
		[297172] = "Leerengebundene Verheererin",
		[303316] = "Kanalisiererin der Azsh'ari",
		[291030] = 8,
		[237680] = 6,
		[313556] = 7,
		[183415] = 2,
		[303318] = "Kanalisiererin der Azsh'ari",
		[236657] = "Erzmagier Khadgar",
		[147580] = "Bestienherrin der Mag'har",
		[297176] = 3,
		[266460] = "Unbekannt",
		[7814] = 10,
		[201846] = 7,
		[305369] = "Leerengebundene Ehrenwache",
		[206966] = 12,
		[264415] = 1,
		[291036] = 1,
		[266464] = "Dorp",
		[272609] = "Gesichtsloser Verderber",
		[307421] = "Leerenaszendent",
		[264420] = 1,
		[585] = 5,
		[589] = 5,
		[295137] = 5,
		[259187] = "Yazma",
		[55078] = 6,
		[268518] = 5,
		[135299] = 3,
		[210042] = 12,
		[633] = 2,
		[268519] = 3,
		[155777] = 11,
		[173183] = 7,
		[268520] = 6,
		[262377] = "Kriechermine",
		[313571] = 11,
		[117828] = 9,
		[213115] = 8,
		[288999] = 12,
		[199805] = "Sturmgeschmiedeter Wächter",
		[30485] = "Legionär der Zerschmetterten Hand",
		[317669] = "Il'gynoth",
		[268524] = 5,
		[286954] = 6,
		[272620] = "Angreifer der Schwertwasserkorsaren",
		[299241] = "Naeno Megarumms",
		[268525] = 3,
		[305385] = 3,
		[317672] = "Blut von Ny'alotha",
		[262383] = "Kriegsmaschine der Venture Co.",
		[107079] = 10,
		[268528] = 2,
		[270576] = 1,
		[228477] = 12,
		[278769] = 12,
		[234621] = "[*] Verschlingender Schlund",
		[228478] = 12,
		[268532] = 1,
		[303344] = 6,
		[853] = 2,
		[266486] = 1,
		[268534] = 11,
		[143498] = "Sha-Tropfen",
		[301299] = "[*] Schmelzofenflammen",
		[297204] = 10,
		[266488] = 1,
		[268536] = 1,
		[179335] = 6,
		[286967] = 7,
		[297206] = "Lady Aschenwind",
		[266490] = 1,
		[303350] = 1,
		[179336] = 5,
		[196742] = 10,
		[116297] = "[*] Bombenlauf",
		[295161] = "Niederer Zoatroid",
		[210053] = 11,
		[202886] = 7,
		[318976] = "[*] Verblüffendes Starren",
		[311544] = "Sanguimar",
		[247750] = 8,
		[111690] = 4,
		[183433] = "Teerspuckerlauerer",
		[262399] = 7,
		[132119] = 1,
		[313564] = "Überwuchertes Tentakel",
		[309498] = "[*] Magie verschlingen",
		[262400] = 7,
		[8269] = 9,
		[266496] = 1,
		[301308] = 11,
		[311547] = "Sanguimar",
		[1066] = 11,
		[257774] = "Samtpfote der Bilgeratten",
		[250904] = 1,
		[270593] = "Verseuchtes Übel",
		[114165] = 2,
		[307453] = "Vexiona",
		[254702] = 10,
		[1122] = 9,
		[283422] = "Gnominator G-800",
		[219271] = 7,
		[268547] = 12,
		[295168] = "Rumsatron X-80",
		[268059] = "Spiritualistin der Gezeitenweisen",
		[300818] = "Gnomfressender Schleim",
		[183436] = 2,
		[311551] = "Dunkle Inquisitorin Xanesh",
		[109132] = 10,
		[255886] = "Phönixmagier Rhydras",
		[212105] = 12,
		[311552] = "Jesh'ra",
		[186269] = "Pestsplitterformer",
		[255372] = "Rezan",
		[269065] = 6,
		[278789] = "[*] Fäulniswelle",
		[264455] = 9,
		[246152] = 3,
		[212106] = 12,
		[277249] = "Quälendes Tentakel",
		[264456] = "Wahnsinnige Schützin",
		[257410] = 6,
		[284934] = 3,
		[258181] = "Zermalmer der Eisenfluträuber",
		[276204] = 10,
		[274696] = 4,
		[34605] = "Nexusprinz Shaffar",
		[303365] = 5,
		[43308] = 8,
		[224127] = 7,
		[204598] = 12,
		[78807] = "Ozruk",
		[688] = 9,
		[97359] = 12,
		[248780] = "Seuchenkatapult der Verlassenen",
		[262412] = "Mechanisierter Friedensbewahrer",
		[180612] = 6,
		[282890] = "Glevenschleuder der Kaldorei",
		[261488] = "Lanzerin der Verlassenen",
		[258183] = "Berserkerin Zar'ri",
		[18562] = 11,
		[260231] = 3,
		[309512] = "Finstere Manifestation <[*] Finstere Manifestation>",
		[263637] = "Benebelter Rohling",
		[264462] = 9,
		[1490] = 12,
		[268558] = 1,
		[258184] = "Berserkerin Zar'ri",
		[313609] = 2,
		[300919] = 9,
		[309514] = "Finstere Manifestation <[*] Finstere Manifestation>",
		[116095] = 10,
		[313610] = "N'Zoth der Verderber",
		[274703] = "Ertrunkener Tiefenbringer",
		[48108] = 8,
		[262417] = 7,
		[313611] = 2,
		[6343] = 1,
		[312782] = "N'Zoth der Verderber",
		[37605] = "Aeonus",
		[119374] = "[*] Wirbelwind",
		[256138] = "Ehrenwache der Dazar'ai",
		[191634] = 7,
		[79955] = "Skarabäusfürst Ahzesh",
		[80467] = "Ozruk",
		[269889] = 10,
		[114255] = 5,
		[35054] = "Fürst der Zeitenrisse",
		[269904] = 12,
		[307471] = "Shad'har der Unersättliche",
		[132463] = 10,
		[256884] = "Monzumi",
		[1706] = 5,
		[307472] = "Shad'har der Unersättliche",
		[262804] = "Genie der Venture Co.",
		[295186] = 3,
		[280852] = 11,
		[255814] = "Reanimierte Ehrenwache",
		[71253] = "Jägerin der Ymirjar",
		[79956] = "Nisstyr",
		[272662] = "Eisenfluträuber",
		[201594] = 3,
		[314847] = "Gryth'ax der Henker",
		[311570] = "Oberanführer Mathias Shaw",
		[278148] = 12,
		[282902] = "Seuchenkatapult der Verlassenen",
		[210764] = 6,
		[303380] = 2,
		[264473] = 9,
		[307476] = "Shad'har der Unersättliche",
		[293142] = 2,
		[233196] = "Mephistroth",
		[272665] = "Obsidianbannschuppe",
		[282904] = "Seuchenkatapult der Verlassenen",
		[259395] = 3,
		[275966] = "Ätzender Gräber",
		[267838] = "[*] Gegenwind",
		[307478] = "Shad'har der Unersättliche",
		[244880] = "Marodeur der Nebelskorn",
		[311574] = "Jesh'ra",
		[280858] = 2,
		[61996] = 1,
		[194384] = 5,
		[275918] = 6,
		[272668] = "Brennende Seele",
		[307821] = "Ma'ut",
		[244881] = "Eisenschuppe der Zackenkämme",
		[311576] = "Jesh'ra",
		[272669] = "Brennende Seele",
		[64044] = 5,
		[257168] = "Marodeur der Eisenfluträuber",
		[279152] = 4,
		[280861] = 9,
		[211094] = 7,
		[244882] = "Guuru der Bergbrecher",
		[251837] = 2,
		[280862] = 9,
		[268274] = "Beutefanatiker",
		[276767] = "Abgrundkultist",
		[79849] = "Twirhp",
		[3600] = "Unbekannt <Seachebs-Silvermoon>",
		[274720] = "Abgrundaal",
		[261265] = "Schwester Dornstrauch",
		[303389] = 12,
		[281195] = 3,
		[224576] = 3,
		[282220] = "Nagtar Wolfsbann",
		[303390] = 3,
		[44335] = 1,
		[260242] = 3,
		[61229] = 2,
		[122962] = "Qilenwächter",
		[280866] = 3,
		[123986] = 10,
		[145205] = 11,
		[210873] = 7,
		[280867] = 2,
		[275915] = 2,
		[236694] = "Hauptmann Yathae Mondstreich",
		[55342] = 8,
		[280868] = 3,
		[256148] = 4,
		[128594] = 3,
		[159904] = 5,
		[272678] = 3,
		[315681] = 5,
		[300802] = 2,
		[205549] = "Naraxas",
		[280870] = 3,
		[232757] = "Herrin Sassz'ine",
		[80308] = "Rissbeschwörer des Steinernen Kerns",
		[266035] = "Distelakolythin",
		[76377] = 7,
		[232756] = "Herrin Sassz'ine",
		[71554] = "Hauptmann Grondel",
		[203720] = 12,
		[264490] = 3,
		[35377] = "Unterworfener Feuerteufel",
		[268586] = "König Dazar",
		[79961] = "Weizi",
		[201885] = "Pestherzscharfschütze",
		[114052] = 7,
		[301351] = "Fliegende Unterdrückungseinheit JK-8",
		[30745] = "Großhexenmeister Nethekurse",
		[264492] = 3,
		[57820] = 6,
		[22938] = "Krapfenkerl",
		[258199] = "Zermalmer der Eisenfluträuber",
		[297257] = "König Gobbamak",
		[260247] = 3,
		[268589] = "König Dazar",
		[2948] = 8,
		[272685] = 6,
		[5215] = 11,
		[268590] = "König Dazar",
		[235267] = "Wachsame Maid",
		[239486] = "Flüchtige Verderbnis",
		[77220] = 9,
		[268591] = "König Dazar",
		[275011] = "Schneepelzalpha",
		[11319] = 8,
		[24858] = 11,
		[267899] = "Bruder Eisenkiel",
		[115129] = 10,
		[313643] = 3,
		[260249] = 3,
		[121836] = 3,
		[131241] = "Shado-Pan-Feuerbogenschütze",
		[297262] = "König Gobbamak",
		[78939] = "Ozruk",
		[267981] = "Schreintempler",
		[271881] = 4,
		[37470] = "Astraler Zauberbinder",
		[193585] = "Steingebundener Fallensteller",
		[215785] = 7,
		[196770] = 6,
		[272016] = "Fleischmoderkabalist",
		[61999] = 6,
		[235232] = "Blutmagierin der Eredar",
		[270644] = 8,
		[71339] = "Axtwerfer der Kor'kron",
		[46031] = "Blutritter der Sonnenklingen",
		[224126] = 7,
		[270645] = 8,
		[276108] = "Bruchschnabelknochenpicker",
		[198819] = 1,
		[293171] = 11,
		[241822] = "[*] --unknown spell--",
		[313208] = "Unbekannt",
		[275907] = "Azerokk",
		[290241] = "Faulkreischer",
		[288301] = "Tyrande Wisperwind",
		[115288] = 10,
		[268050] = "Spiritualistin der Gezeitenweisen",
		[124503] = 10,
		[80038] = "Magmalord des Steinernen Kerns",
		[204065] = 5,
		[262397] = 7,
		[71552] = "Hauptmann Grondel",
		[29722] = 9,
		[51505] = 7,
		[70750] = "Sinistrer Kommandant",
		[315077] = "Seuchenwachenhauptmann Thedric",
		[278841] = 1,
		[72286] = 3,
		[202917] = 8,
		[301367] = 5,
		[180392] = "Zauberin der Rakeeshi",
		[80279] = "Rissbeschwörer des Steinernen Kerns",
		[282128] = "Charg \"der Protzige\"",
		[183585] = "Anachoretin des Lichts",
		[111771] = 9,
		[235236] = "Belac",
		[235682] = "Cenarius",
		[253088] = 2,
		[282299] = "Ranah Säbelklaue",
		[289083] = 8,
		[47666] = 5,
		[183465] = "Teerspuckerlauerer",
		[116888] = 6,
		[115175] = 10,
		[227041] = 6,
		[284989] = "Geheimnisvoller Seuchenbringer",
		[77764] = 11,
		[33076] = 5,
		[123993] = 2,
		[81297] = 2,
		[225445] = "Weizi",
		[234660] = "Schreckenswesir Gra'tork",
		[282943] = "Kolbenkracher",
		[276191] = 7,
		[270657] = 3,
		[32365] = "Nexusprinz Shaffar",
		[274753] = "Harpunierin der Hämeflossen",
		[279997] = 6,
		[278849] = "Dornformerin des Zirkels",
		[192249] = 7,
		[282945] = "Kreissäge",
		[300801] = 3,
		[188587] = "Demolierer des Tiefgesteins",
		[222948] = 10,
		[274755] = "Hexendoktorin der Dorrzweige",
		[199850] = 1,
		[225447] = "Skarabäusfürst Ahzesh",
		[313663] = 9,
		[106646] = "Fliegender Schnee",
		[55090] = 6,
		[270661] = 11,
		[302521] = "Griff des Schreckens",
		[306953] = "Shad'har der Unersättliche",
		[279033] = 7,
		[258212] = "Schattenjäger Ju'loa",
		[297283] = "[*] Einsturz",
		[129934] = 12,
		[73313] = 2,
		[198837] = "Auferstandener Schleicher <Coralyn-Frostwolf>",
		[264520] = "Irrsinniger Überlebenskünstler",
		[115804] = 1,
		[124507] = 10,
		[225449] = "Jesibelle",
		[256735] = 4,
		[315715] = "[*] Verachtung",
		[309572] = "Magister Umbric",
		[5384] = 3,
		[70242] = 2,
		[100] = 1,
		[285000] = "Laminaria",
		[198813] = 12,
		[314853] = "Gryth'ax der Henker",
		[252071] = 11,
		[195457] = 4,
		[303431] = 1,
		[5672] = "Unbekannt <Calinda-Nethersturm>",
		[22812] = 11,
		[199854] = 1,
		[258215] = "Schattenjäger Ju'loa",
		[264525] = "Irrsinniger Überlebenskünstler",
		[70299] = "Sinistre Adlige",
		[276304] = "Zügelloser Partygast",
		[188592] = 7,
		[70243] = 5,
		[291147] = 2,
		[244987] = "Salzpelzzerschmetterer",
		[258216] = "Schlangenzauberschutz <Schattenjäger Ju'loa>",
		[256060] = "Himmelskäpt'n Kragg",
		[282957] = 5,
		[253097] = 9,
		[31403] = "Astraler Grufträuber",
		[305483] = 7,
		[198832] = "Auferstandener Schleicher <Coralyn-Frostwolf>",
		[106872] = "Sha der Gewalt",
		[270210] = "Gezeitenrufer der Schlammflossen",
		[321866] = 7,
		[300701] = "Abyssalkommandantin Sivara",
		[146615] = 1,
		[210659] = 7,
		[272721] = 6,
		[198833] = "Latosius",
		[290936] = 6,
		[278865] = 1,
		[234669] = "Schreckenswesir Gra'tork",
		[257757] = "Bukanier der Bilgeratten",
		[203953] = 11,
		[295248] = 3,
		[272723] = 6,
		[256171] = 4,
		[218967] = "Windsog",
		[250028] = "Yazma",
		[243955] = 12,
		[213846] = "Schuppenscheusal",
		[228597] = 8,
		[193333] = 2,
		[285388] = "Gnominator G-800",
		[6268] = "Leerenentstellter Eindringling",
		[80353] = 8,
		[48181] = 9,
		[32375] = 5,
		[274774] = 10,
		[130654] = 10,
		[256740] = 3,
		[28271] = 8,
		[228251] = "Guarm",
		[46046] = "Heiler der Sonnenklingen",
		[287062] = 10,
		[235230] = "Belac",
		[54861] = 8,
		[93795] = 11,
		[287063] = 10,
		[297302] = "Totem des endlosen Hungers <Leerengebundener Schamane>",
		[207028] = 2,
		[30108] = 9,
		[258222] = "Feuerstacheldominator",
		[296706] = 12,
		[290337] = 5,
		[285017] = "Laminaria",
		[155835] = 11,
		[116616] = 1,
		[198838] = 7,
		[123254] = 5,
		[269747] = 3,
		[305496] = 11,
		[348] = 9,
		[203958] = 11,
		[295258] = 3,
		[272733] = 3,
		[307545] = "Ma'ut",
		[71271] = "Frostbinderin der Ymirjar",
		[101812] = "Zeitlinienversetzte Zauberin",
		[48438] = 11,
		[72807] = 2,
		[228532] = 12,
		[49206] = 6,
		[270457] = "Goldader",
		[282974] = 4,
		[311744] = "Späher der Dunkelschuppen",
		[295261] = 3,
		[198599] = "Donnerrufer der Valarjar",
		[22570] = 11,
		[253106] = 1,
		[282206] = "Stachel",
		[272737] = 7,
		[216303] = 5,
		[238313] = "Fel Rain Invisible Bunny (Medium)",
		[73828] = 11,
		[279983] = 1,
		[307048] = "Zorn von N'Zoth",
		[73320] = 7,
		[266047] = 2,
		[160060] = "Skorpox <Tidèz-Aegwynn>",
		[31464] = 9,
		[302589] = "[*] Toxisches Mal",
		[250036] = "[*] Schattenhafte Überreste",
		[258241] = "Schattenjäger Ju'loa",
		[120692] = 5,
		[244917] = "[*] Dunkles Ableben",
		[8092] = 5,
		[197819] = 10,
		[119907] = 9,
		[297258] = "Unbekannt <Âllandir>",
		[46668] = 5,
		[297315] = "Großer Leerenelementar",
		[40504] = "Aeonus",
		[253109] = 3,
		[147650] = "Alte Rudelmutter",
		[313698] = 1,
		[190653] = 2,
		[304722] = 10,
		[274817] = "Nekrolord Zian",
		[311550] = "Jesh'ra",
		[198892] = "Sturmdrache",
		[228537] = 12,
		[227045] = "Illidan Sturmgrimm <Shâolîn>",
		[272745] = 3,
		[115078] = 10,
		[216251] = 7,
		[71786] = "Hauptmann Rupert",
		[295302] = 5,
		[227514] = "Guarm",
		[285064] = "Zorn der Tiefe",
		[90216] = 10,
		[264556] = "Dornwächter",
		[276132] = 5,
		[257207] = "Käpt'n Grünbauch",
		[107118] = "Raigonn",
		[308903] = "Ma'ut",
		[274796] = "Skelettwächter",
		[55095] = 6,
		[162530] = 10,
		[210652] = 7,
		[119909] = 9,
		[312741] = "Zerfetzte Psyche <[*] Zerfledderte Psyche>",
		[71787] = "Hauptmann Rupert",
		[71546] = "Hauptmann Arnath",
		[260280] = "Mogul Ratztunk",
		[276846] = 3,
		[272817] = 9,
		[264560] = "Aqu'sirr",
		[265642] = "Verstorbener Mastiff",
		[295339] = 2,
		[262513] = "Flugfacklerin der Venture Co.",
		[253654] = "Moloch der Dazar'ai",
		[302651] = 7,
		[288548] = "Magus der Toten <Liondria-Ulduar>",
		[270705] = "Instabiler Taifun",
		[59703] = 2,
		[274801] = "Räuber der Schlammflossen",
		[285040] = "Zorn der Tiefe",
		[278897] = 8,
		[271784] = "Fußbombenrandaliererin",
		[227518] = 12,
		[122470] = 10,
		[278898] = 8,
		[161691] = 5,
		[308643] = "Durchgebrannter Aufziehraketenbot",
		[278962] = 4,
		[262515] = "Flugfacklerin der Venture Co.",
		[234686] = "Zornfürst Akrazar",
		[114548] = "Yan-Zhu der Dekantierte",
		[130418] = "Geifernder Schädelspalter",
		[231363] = "Goroth",
		[281000] = 1,
		[244986] = "Fetza",
		[196819] = 4,
		[204513] = 12,
		[226512] = "[*] Blutiges Sekret",
		[264592] = 3,
		[73325] = 5,
		[38592] = 9,
		[295402] = 12,
		[124007] = "Xuen <Sîlas-Wrathbringer>",
		[191685] = 6,
		[288146] = 4,
		[297333] = "Gebundener Sturm",
		[315763] = 12,
		[278637] = "Tiefenpfuhlzecke",
		[264894] = 8,
		[244787] = "Spiegelpanzertodesschere",
		[239808] = "Ewige Seelenwache",
		[224450] = "Illidan Sturmgrimm <Shâolîn>",
		[193315] = 4,
		[264571] = 9,
		[30494] = "Kriechender Schlammling",
		[236737] = "Einfallender Zornwächter",
		[196834] = 7,
		[264603] = "Älteste Leaxa",
		[315766] = "Tentakel von Drest'agath",
		[276873] = "Mauerbrecher Ha'vik",
		[116841] = 10,
		[93811] = 8,
		[233173] = 10,
		[276892] = "Pfähler der Zara'thik",
		[278908] = 7,
		[262538] = "Lanzerin der Verlassenen",
		[239810] = "Ewige Seelenwache",
		[54729] = 6,
		[278909] = 12,
		[8690] = 3,
		[315769] = "Vexiona",
		[114282] = 11,
		[208086] = 1,
		[198898] = 10,
		[124009] = "Xuen <Sîlas-Wrathbringer>",
		[84342] = 8,
		[250050] = "Yazma",
		[264577] = 3,
		[264510] = "Wahnsinnige Schützin",
		[236740] = "Teufelsfäulnispirscher",
		[295294] = 5,
		[51514] = 7,
		[315772] = "N'Zoth der Verderber",
		[316826] = "Entstellte Gliedmaße <Arandur-ZirkeldesCenarius>",
		[307075] = "Vexiona",
		[272770] = 3,
		[307582] = "Drohne der Aqir",
		[296348] = "Rumsatron X-80",
		[32736] = "Jarud",
		[197834] = 4,
		[5697] = 9,
		[268068] = 2,
		[263583] = "Vorarbeiter Askari",
		[234694] = "Zornfürst Akrazar",
		[225119] = 8,
		[93806] = 7,
		[295290] = 8,
		[197835] = 4,
		[114291] = "Hopfer",
		[257736] = "Sturmruferin der Eisenfluträuber",
		[300961] = "[*] Gefrorener Boden",
		[316823] = 10,
		[65081] = 5,
		[163024] = 3,
		[247677] = 2,
		[115308] = 10,
		[138130] = 10,
		[5225] = 11,
		[278919] = "Verseuchter Schatten",
		[272776] = 5,
		[309665] = "Therum Tiefenschmied",
		[197558] = "Fenryr",
		[278920] = "Verseuchter Schatten",
		[313732] = "Tek'ris",
		[256198] = "Aufseher Korgus",
		[257222] = "Klabauti",
		[196516] = "Binderin Ashioi",
		[255836] = "Priesterin Alun'za",
		[287183] = "[*] Voltaischer Blitz",
		[203981] = 12,
		[262540] = "Technikexperte",
		[264588] = 3,
		[256199] = "Aufseher Korgus",
		[15286] = 5,
		[295305] = 9,
		[278574] = 2,
		[2782] = 11,
		[276876] = "Mauerbrecher Ha'vik",
		[66021] = "Schwarzer Champion",
		[173266] = 6,
		[256200] = "Aufseher Korgus",
		[134359] = 4,
		[268194] = 2,
		[210126] = 8,
		[93622] = 11,
		[101811] = "Zeitlinienversetzter Fußsoldat",
		[295338] = 4,
		[214222] = 2,
		[256201] = "Aufseher Korgus",
		[3408] = 4,
		[7353] = 2,
		[17057] = 11,
		[315787] = 10,
		[25504] = 7,
		[295310] = 3,
		[257221] = "Klabauti",
		[260292] = "Felsschlund der Befallene",
		[300436] = "Schamane der Schrottknochen",
		[200913] = "Wyrmzungenplünderer",
		[272682] = 3,
		[279958] = 12,
		[203975] = 11,
		[198888] = "Sturmdrache",
		[107120] = "Kommandant Ri'mok",
		[282474] = 3,
		[264579] = 3,
		[278931] = 9,
		[313743] = "Abgrundbeobachter",
		[283006] = "Ranah Säbelklaue",
		[285075] = "[*] Gefrierender Gezeitentümpel",
		[303505] = 2,
		[300434] = "Schikanierer der Schrottknochen",
		[274837] = 11,
		[9080] = "Fürst der Zeitenrisse",
		[110960] = 8,
		[272790] = 3,
		[274838] = 11,
		[274815] = "Zwielichtverdammnisrufer",
		[260811] = "Mogul Ratztunk",
		[107121] = "Kommandant Ri'mok",
		[183117] = 2,
		[276887] = "Klingentänzer Zorlak",
		[152280] = 6,
		[259277] = "Katze <Sylu-Lordaeron>",
		[257739] = "Klopper der Schwarzzahnvandalen",
		[309652] = "[*] Illusionärer Blitz",
		[48107] = 8,
		[313748] = "Abgrundbeobachter",
		[223179] = "Garstiger Handlanger",
		[276889] = "Klingentänzer Zorlak",
		[270670] = 8,
		[242896] = 4,
		[30496] = "Großhexenmeister Nethekurse",
		[309654] = "Dunkle Inquisitorin Xanesh",
		[221395] = "Anax",
		[115313] = 10,
		[294288] = "Klauenfuß der Hüpfer",
		[260286] = 3,
		[116849] = 10,
		[111723] = "Raigonn",
		[193234] = "[*] Tanzende Klinge",
		[228563] = 10,
		[199884] = 7,
		[181456] = 5,
		[222926] = "Eisenzwerg",
		[268702] = "Steinzorn",
		[16145] = 9,
		[81530] = "Erdformer des Steinernen Kerns",
		[277904] = 8,
		[212182] = 4,
		[268086] = "[*] Aura des Schreckens",
		[264608] = "Rummy Mancomb",
		[239781] = "Geisterhafte Akolythin",
		[49982] = "Beschützo-Panz 66D",
		[8122] = 5,
		[17767] = "Jhazgrave <Thelá-Antonidas>",
		[201902] = "Pestherzscharfschütze",
		[257793] = "Jes Knurris",
		[270569] = 9,
		[302475] = "Schemenhund",
		[119922] = "Kuai der Grobian",
		[282217] = "Nagtar Wolfsbann",
		[234379] = "Gefräßiger Teufelsjäger",
		[297375] = 7,
		[152277] = 1,
		[195802] = 2,
		[277901] = "Schleicher der Morastlauerer",
		[115315] = 10,
		[81508] = "Erdformer des Steinernen Kerns",
		[263892] = "satoosh <Telemako-Pozzodell'Eternità>",
		[303520] = 2,
		[296330] = 11,
		[277900] = "Schleicher der Zackenkämme",
		[268709] = "Erdformer der Venture Co.",
		[213209] = 3,
		[244979] = 8,
		[106984] = "Gu Wolkenschlag",
		[276901] = "Mantis der Zara'thik",
		[71801] = "Champion der Nerub'ar",
		[185565] = 4,
		[113780] = 4,
		[213243] = 12,
		[295332] = "Abyssalkommandantin Sivara",
		[264616] = 9,
		[315306] = "[*] Verbotenes Mana",
		[276903] = "Klingentänzer Zorlak",
		[300424] = "Schikanierer der Schrottknochen",
		[259285] = 3,
		[309648] = "Magister Umbric",
		[317859] = 8,
		[260279] = "[*] Maschinenkanone",
		[297382] = "Gestohlener Schrottbot",
		[288774] = "Funkenbot",
		[266505] = "Aluriak",
		[303438] = 3,
		[57819] = 1,
		[256897] = "Knurrender Dockhund",
		[199373] = "Armee der Toten <Liondria-Ulduar>",
		[278954] = 2,
		[305575] = "[*] Ritualfeld",
		[297412] = 7,
		[309671] = "Therum Tiefenschmied",
		[295337] = 4,
		[308673] = "Auge des Chaos",
		[274860] = "Vollstrecker der Eisenfluträuber",
		[268717] = "Haihappen",
		[205022] = 8,
		[276890] = "Berngeflügelter Gedankensänger",
		[255890] = "Phönixmagierin Ryleia",
		[303558] = 3,
		[32289] = 7,
		[242906] = "Höllenchaosbringer",
		[260312] = "Felsschlund der Befallene",
		[317865] = 11,
		[245509] = "Kil'jaeden",
		[281036] = 3,
		[316802] = 1,
		[2645] = 7,
		[198931] = "Mystiker der Valarjar",
		[272816] = 9,
		[34370] = "Dunkelwasserkrokilisk",
		[315269] = "Unbekannt",
		[16870] = 11,
		[281008] = "Diener von Thros",
		[299438] = "Schrotterin der Kolbenköppe",
		[268722] = "Erdformer der Venture Co.",
		[295343] = 2,
		[201953] = "Glutpanzerdominator",
		[60991] = "Brynja",
		[195810] = 2,
		[205025] = 8,
		[285020] = "Der Platinprügler",
		[111725] = "Raigonn",
		[232670] = 9,
		[282293] = "Ranah Säbelklaue",
		[311052] = "Wahnsinniger Rekrut",
		[303267] = "Schläger der Zanj'ir",
		[276946] = "Mauerbrecher Ha'vik",
		[319919] = 10,
		[119415] = 8,
		[290134] = 12,
		[250953] = 1,
		[268756] = 12,
		[290464] = 8,
		[93816] = 2,
		[297318] = "Gestohlene Schockspule",
		[192563] = "Läuterer der Valarjar",
		[143459] = "[*] Sha-Rückstände",
		[307635] = "Tek'ris",
		[44224] = "Kael'thas Sonnenwanderer",
		[44614] = 8,
		[273794] = 11,
		[53563] = 2,
		[270674] = 10,
		[300414] = "Häcksler der Schrottknochen",
		[297398] = "Lady Aschenwind",
		[307637] = "Drohne der Aqir",
		[3391] = "Raufbold der Zerschmetterten Hand",
		[15122] = "Arkane Bestie <Astraler Zauberer>",
		[236710] = "Kil'jaeden",
		[260318] = "Mogul Ratztunk",
		[274814] = 11,
		[317915] = "Schrecklicher Blutsturz",
		[93805] = 8,
		[307639] = "Vexiona",
		[309687] = "Zerfetzte Psyche <[*] Zerfledderte Psyche>",
		[234180] = "[*] Sengen",
		[305592] = 7,
		[20589] = 3,
		[199368] = "Rabenkrones Seele",
		[118905] = "Totem der Energiespeicherung <Rekasha-Silvermoon>",
		[152262] = 2,
		[299450] = "Schrotterin der Kolbenköppe",
		[180938] = 5,
		[81008] = "Kristallbrutriese",
		[210150] = "Naraxas",
		[32546] = 5,
		[222897] = "Eisenzwerg",
		[196840] = 7,
		[195757] = 6,
		[239843] = "Spektraler Wächter",
		[285118] = "Laminaria",
		[116858] = 9,
		[119905] = 9,
		[92265] = "Plattenhaut",
		[93821] = 7,
		[205032] = 8,
		[156910] = 2,
		[307645] = "Vexiona",
		[53480] = 3,
		[120954] = 10,
		[210152] = 12,
		[284997] = "Laminaria",
		[118] = 8,
		[287169] = "Schwester Katharina",
		[305599] = 9,
		[303589] = "Geronnener Horror",
		[22883] = "Astraler Priester",
		[125050] = 3,
		[210153] = 12,
		[260323] = "Mogul Ratztunk",
		[228514] = "Helya",
		[188652] = "Distelblattdorntänzer",
		[268552] = 3,
		[241345] = "Defensive Gegenmaßnahmen",
		[300675] = "[*] Toxischer Nebel",
		[236665] = 11,
		[313793] = "Todesschwinge",
		[235751] = "Agronox",
		[285125] = "Laminaria",
		[199663] = "Geisterhafter Berater",
		[197868] = "Lady Hassnatter",
		[299460] = "Knaller der Kolbenköppe",
		[167152] = 8,
		[287174] = "Krächzende Nachtschwinge",
		[210155] = 12,
		[264620] = 9,
		[236776] = 3,
		[295366] = 11,
		[196364] = 9,
		[57842] = 4,
		[257254] = 1,
		[295367] = 9,
		[121468] = "Raigonn",
		[274890] = "[*] Zerschmetterndes Schleudern",
		[309702] = "Schlägertentakel",
		[295368] = 2,
		[313798] = "Abgrundbeobachter",
		[256231] = 7,
		[91776] = "Larvenmalmer <Liondria-Ulduar>",
		[303560] = 3,
		[264531] = "Irrsinniger Überlebenskünstler",
		[302454] = "Vexiona",
		[309704] = "[*] Ätzender Überzug",
		[296733] = "Gesichtsloser Willensbrecher",
		[197871] = 5,
		[300893] = 5,
		[271737] = "Gnomische Gyroingenieurin",
		[278989] = 2,
		[264655] = "Infizierter Arbeiter",
		[315849] = 11,
		[306656] = "Vez'okk der Lichtlose",
		[328136] = 5,
		[225448] = "Darragh",
		[306548] = 10,
		[143625] = 7,
		[303564] = 6,
		[298325] = 11,
		[199844] = 8,
		[236780] = 10,
		[295374] = 2,
		[255228] = "Funkenbot",
		[239852] = "Dämonischer Obelisk",
		[257258] = 1,
		[295375] = 2,
		[123996] = 10,
		[102793] = 11,
		[171253] = 10,
		[311508] = "Sanguimar",
		[50207] = "Unbekannt",
		[291281] = 11,
		[91778] = "Larvenmalmer <Liondria-Ulduar>",
		[303568] = 6,
		[201411] = "Schreckensfeuerwichtel",
		[252140] = "Vulkan",
		[119914] = 9,
		[295378] = 2,
		[86659] = 2,
		[299474] = "Knochenbeißersaurolisk",
		[309713] = "Schlägertentakel",
		[303570] = 6,
		[247456] = 12,
		[299475] = "Schrotthund",
		[204019] = 2,
		[306545] = 11,
		[295417] = "Abyssalkommandantin Sivara",
		[315858] = 12,
		[58180] = 11,
		[303572] = 6,
		[32379] = 5,
		[260333] = "Felsschlund der Befallene",
		[239558] = "Unheilschwinge",
		[276189] = 7,
		[148731] = "Brauerin der Brauerei Sturmbräu <Shâolîn>",
		[201410] = 9,
		[247041] = "Klaftar",
		[280847] = 6,
		[264667] = 3,
		[260334] = "Felsschlund der Befallene",
		[204021] = 12,
		[295384] = 2,
		[289241] = 11,
		[315862] = "Schmettertentakel",
		[280855] = 2,
		[46150] = "Hexe der Echsennarbe",
		[221887] = 2,
		[307017] = "Knisternder Splitter",
		[228030] = "Hyrja",
		[295386] = 8,
		[276229] = "B.U.M.M.B.A.",
		[198903] = "[*] Knisternder Sturm",
		[8042] = 7,
		[32292] = 4,
		[210166] = "[*] Toxinauswurf",
		[121190] = "Qilenwächter",
		[301531] = 7,
		[8212] = 3,
		[208683] = 12,
		[274555] = "Durchnässte Schiffsratte",
		[124506] = 10,
		[303580] = 7,
		[1719] = 1,
		[274912] = 10,
		[268769] = 12,
		[290600] = 1,
		[272679] = 3,
		[274913] = 7,
		[285152] = "Gnominator G-800",
		[135425] = "Bummschussspezialist",
		[193786] = 7,
		[274914] = 7,
		[228598] = 8,
		[303583] = 10,
		[107140] = "Azurschlange",
		[315392] = 12,
		[183548] = "Steinklauenlarvenmeister",
		[46151] = "Hexe der Echsennarbe",
		[201408] = 3,
		[239439] = "Äonischer Verteidiger",
		[282894] = 6,
		[213241] = 12,
		[190145] = "Verdammniswache",
		[19750] = 2,
		[268774] = 10,
		[312682] = "Gesichtsloser Verheerer",
		[196771] = 6,
		[154797] = 5,
		[228600] = 8,
		[265583] = "Königsdornzange",
		[112998] = "Verbleibender Hass",
		[319346] = "[*] Spuren der Ewigkeit",
		[310670] = "Tentakel von Drest'agath",
		[33865] = "Astraler Strauchdieb",
		[46036] = "Magister der Sonnenklingen",
		[138927] = 11,
		[163073] = 12,
		[51271] = 6,
		[272873] = 11,
		[198909] = 10,
		[257270] = "Springflutschredder",
		[184575] = 2,
		[272874] = "Aschenwindkommandant",
		[294250] = 7,
		[276970] = 2,
		[270827] = 8,
		[282263] = "Ranah Säbelklaue",
		[299496] = "Knaller der Kolbenköppe",
		[232698] = 5,
		[1543] = 3,
		[217788] = "[*] Teufelsfeuerbombe",
		[299497] = "Knaller der Kolbenköppe",
		[288359] = "Großmeister Ulrich",
		[118917] = "Verhexer der Glintrok",
		[216331] = 2,
		[299498] = "Mechagonsoldat",
		[257272] = "Haihappen",
		[303594] = "Geronnener Horror",
		[201983] = "Glutpanzerdominator",
		[288300] = "Großmeister Ulrich",
		[204031] = 11,
		[98440] = 4,
		[66188] = 6,
		[221883] = 2,
		[80354] = 1,
		[22568] = 11,
		[264689] = 2,
		[299501] = 2,
		[317931] = 7,
		[86881] = "Corborus",
		[201405] = 6,
		[299502] = "Mechagonsoldat",
		[257274] = "[*] Übler Überzug",
		[63796] = 6,
		[297455] = 10,
		[286979] = 6,
		[203846] = 6,
		[213691] = 3,
		[236282] = 1,
		[311509] = "Sanguimar",
		[46155] = "Selin Feuerherz",
		[46153] = "Selin Feuerherz",
		[272884] = "Käpt'n Raoul",
		[311819] = "Wahnsinniger Kurbelknallingenieur",
		[288433] = "Meisterschütze der Verlassenen",
		[279028] = 7,
		[264694] = "Raal der Unersättliche",
		[254811] = 10,
		[301554] = 2,
		[279029] = 7,
		[193796] = 7,
		[270865] = "König A'akul",
		[204035] = 2,
		[246454] = "[*] Von Qual getrieben",
		[298866] = "Peitschendes Tentakel",
		[40120] = 11,
		[203856] = "Der Affenkönig",
		[88423] = 11,
		[272888] = "Aschenwindzerstörer",
		[290133] = 3,
		[228609] = "Uralter Knochenknecht",
		[228128] = 2,
		[264698] = "Raal der Unersättliche",
		[139546] = 4,
		[257278] = "Harlan der Schmierige",
		[295415] = "Abyssalkommandantin Sivara",
		[257315] = "Grenadier der Eisenfluträuber",
		[30502] = "Großhexenmeister Nethekurse",
		[77472] = 7,
		[262652] = 7,
		[107146] = "Raigonn",
		[240910] = "Kil'jaeden",
		[268796] = "[*] Durchbohrender Speer",
		[92300] = "Plattenhaut",
		[257316] = "Harlan der Schmierige",
		[274226] = 3,
		[270872] = "Blutverschworener Agent",
		[63560] = 6,
		[272893] = 9,
		[70233] = 11,
		[290145] = 3,
		[171828] = 8,
		[215159] = 12,
		[44505] = "Getriebener Schläger",
		[202425] = 11,
		[98444] = 2,
		[289277] = 9,
		[311159] = "Verfluchtes Blut",
		[165146] = "Brauerin Almai",
		[66] = 8,
		[25821] = "Kriegshäuptling Kargath Messerfaust",
		[268544] = 12,
		[264734] = "Raal der Unersättliche",
		[118922] = 3,
		[173184] = 7,
		[119946] = "Mu'Shiba",
		[224518] = "Illidan Sturmgrimm <Shâolîn>",
		[200969] = "König Tor",
		[88718] = 4,
		[266107] = "Wilder Blutschwärmer",
		[263905] = "Runenweberin des Herzbanns",
		[147321] = "[*] Vortex",
		[305663] = "Ma'ut",
		[258321] = "Knochensäger der Eisenfluträuber",
		[79964] = "Weizi",
		[279043] = 4,
		[193803] = "Teerspuckerlarve",
		[186636] = "Grrl",
		[271711] = 3,
		[131347] = 12,
		[236467] = 1,
		[295354] = 5,
		[257284] = 3,
		[80016] = 3,
		[272902] = "Käpt'n Eudora",
		[259760] = 3,
		[201399] = "Schreckensfeuerwichtel",
		[302995] = 7,
		[264712] = "[*] Fauliger Ausstoß",
		[207115] = 10,
		[203832] = 8,
		[282301] = 2,
		[189112] = 12,
		[299525] = "Knaller der Kolbenköppe",
		[317627] = "Zorn von N'Zoth",
		[303621] = 7,
		[119381] = 10,
		[297220] = "Leerengebundener Schamane",
		[268810] = "Versuchsobjekt",
		[160018] = "Grofion <Ddlasaumure-LesSentinelles>",
		[252692] = "Schattenklingenpirscher",
		[263943] = "Runenweberin des Herzbanns",
		[204045] = "Verdammniswache",
		[147732] = 7,
		[282160] = "Charg \"der Protzige\"",
		[316745] = "Vexiona",
		[271707] = "Entfesseltes Azerit",
		[196278] = 9,
		[305672] = "Therum Tiefenschmied",
		[291338] = 7,
		[46924] = 1,
		[102543] = 11,
		[278767] = 10,
		[313461] = "Ka'zir",
		[236726] = 10,
		[258922] = 12,
		[120160] = "Haiyan der Unaufhaltsame",
		[281944] = 6,
		[288087] = 1,
		[311818] = "Wahnsinniger Kurbelknallingenieur",
		[66196] = 6,
		[270572] = 3,
		[224525] = "Schlachti",
		[258313] = "Aschenwindoffizierin",
		[210191] = 2,
		[262022] = 2,
		[251566] = 11,
		[196881] = 7,
		[264003] = "Mahna Flammenwisper",
		[307725] = "Prophet Skitra",
		[240908] = "Kil'jaeden",
		[31771] = 12,
		[187707] = 3,
		[299535] = "Knaller der Kolbenköppe",
		[309774] = 10,
		[57780] = "Geomantin des Irdenen Rings",
		[289297] = "Funkenbot",
		[146739] = 9,
		[224527] = "Anenga",
		[6795] = 11,
		[289298] = 11,
		[1715] = 1,
		[245005] = "Griff des Schreckens",
		[196883] = "Lord Etheldrin Rabenkrone",
		[117313] = 1,
		[87187] = "Rasender Distelbär",
		[257292] = "Spalterin der Eisenfluträuber",
		[282140] = "Charg \"der Protzige\"",
		[64843] = 5,
		[260364] = 6,
		[179478] = 8,
		[196884] = 7,
		[66198] = 6,
		[259756] = 5,
		[257293] = "Wirbelwindsäbel",
		[33871] = "Astraler Strauchdieb",
		[202004] = 7,
		[274968] = "Geist von Zian-Ti",
		[298691] = "Sklavenmeister Ul'rok",
		[287255] = 11,
		[51533] = 7,
		[119952] = 2,
		[297168] = 7,
		[287256] = "Bummschussspezialist",
		[274991] = "Viq'Goth",
		[266779] = 3,
		[183430] = "Teerspuckerlauerer",
		[296779] = 1,
		[281114] = 10,
		[44544] = 8,
		[260779] = "Eroberer der Eidgebundenen",
		[257229] = "Klabauti",
		[288988] = 4,
		[315927] = "N'Zoth der Verderber",
		[257144] = "Käpt'n Grünbauch",
		[254224] = 5,
		[255248] = 9,
		[157980] = 8,
		[257308] = "Harlan der Schmierige",
		[2637] = 11,
		[289308] = 8,
		[264477] = "Aqu'sirr",
		[282483] = 9,
		[185099] = 10,
		[301622] = "Kavallerist von Mechagon",
		[157981] = 8,
		[49998] = 6,
		[160029] = 11,
		[121182] = "Harthakflammensucher",
		[283167] = 7,
		[298306] = "[*] Inkubationsflüssigkeit",
		[275793] = "Feuerstachelkrieger",
		[15290] = 5,
		[315932] = "Vollstrecker mit eisernem Willen",
		[216343] = 2,
		[192794] = "[*] Blitzschlag",
		[197926] = "Wyrmzungenextraktor",
		[51124] = 6,
		[193660] = "Gottkönig Skovald",
		[207076] = 7,
		[165150] = "Brauerin Almai",
		[79351] = "Hohepriesterin Azil",
		[268836] = 2,
		[241511] = "[*] Durchnässt",
		[193819] = "[*] Drachenzorn",
		[305252] = 3,
		[250022] = "Yazma",
		[268865] = "Waffentester",
		[289315] = 11,
		[1330] = 4,
		[114014] = 4,
		[282359] = 6,
		[272934] = 8,
		[260372] = "Flugfacklerin der Venture Co.",
		[89751] = "Kiz-amal <Bangonologie-Aegwynn>",
		[106645] = "Fliegender Schnee",
		[197916] = 10,
		[57934] = 4,
		[279885] = 9,
		[309854] = "Ra-den",
		[9532] = "Orakel der Winterflossen",
		[47540] = 5,
		[292463] = 7,
		[270889] = "König Rahu'ai",
		[31707] = "Elementale dell'Acqua <Aylan-Pozzodell'Eternità>",
		[256959] = "Reanimierte Ehrenwache",
		[258153] = "Seesprecher der Bilgeratten",
		[258925] = 12,
		[81568] = "Berserker des Steinernen Kerns",
		[30505] = "Großhexenmeister Nethekurse",
		[30633] = "Kriegshetzer O'mrogg",
		[270891] = "König Rahu'ai",
		[290961] = 11,
		[38384] = "Yazzai",
		[91800] = "Larvenmalmer <Liondria-Ulduar>",
		[313923] = 8,
		[272940] = 4,
		[293491] = 3,
		[285255] = "Schläger von Kul Tiras",
		[285285] = "Nagtar Wolfsbann",
		[197919] = 10,
		[79002] = "Hohepriesterin Azil",
		[277037] = "Nebelhund",
		[311849] = "Lebendiges Miasma",
		[289324] = 10,
		[194879] = 6,
		[89753] = "Kiz-amal <Bangonologie-Aegwynn>",
		[160941] = 5,
		[292167] = "Schwarzwasserungetüm",
		[198944] = "Schildmaid der Valarjar",
		[195901] = 7,
		[272554] = "[*] Blutige Sauerei",
		[204460] = 3,
		[315947] = "Zorn von N'Zoth",
		[70234] = 10,
		[295470] = "Ma'haat der Unbeugsame",
		[272945] = 9,
		[270925] = 9,
		[277041] = "Seelenschinderin der Kvaldir",
		[287280] = 2,
		[202841] = 12,
		[315087] = "Seuchenwachenhauptmann Thedric",
		[277042] = "Sigrid die Verhüllungsweberin",
		[287281] = "Zertifizierter Sprengstoffexperte",
		[268271] = "Lady Kronsteig",
		[5176] = 11,
		[277043] = "Verdammnisbringer der Kvaldir",
		[296260] = 12,
		[264757] = "Älteste Leaxa",
		[315573] = 3,
		[285266] = "Charg \"der Protzige\"",
		[110744] = 5,
		[19627] = "Flammenwächter",
		[149801] = 7,
		[268854] = 11,
		[300744] = 11,
		[202019] = "Latosius",
		[280212] = 1,
		[277046] = "Nebelhund",
		[287285] = 2,
		[264760] = 12,
		[315954] = "Zorn von N'Zoth",
		[208163] = 10,
		[287286] = 2,
		[264761] = 2,
		[50769] = 11,
		[286902] = "Azerjuwelenkristallrücken",
		[110745] = 5,
		[289335] = 11,
		[108199] = 6,
		[71326] = "Netzweber der Nerub'ar",
		[239270] = 10,
		[72350] = "Der Lichkönig",
		[15254] = "Astrales Leuchtfeuer",
		[264377] = "Phönixmagierin Ryleia",
		[278377] = 2,
		[264764] = 2,
		[258860] = 12,
		[301624] = 9,
		[300751] = 11,
		[234786] = 11,
		[258723] = "[*] Groteske Lache",
		[111728] = "Raigonn",
		[38995] = "Techniker der Grauherzen",
		[258138] = "Wahrsager der Sandskalpe",
		[265540] = "Eitrige Made",
		[258352] = "Käpt'n Eudora",
		[285277] = "Schläger von Kul Tiras",
		[305722] = "Ma'ut",
		[275006] = 8,
		[243576] = 11,
		[106651] = "Uuk-Uuk",
		[222501] = "Marinesoldat der 7. Legion",
		[157997] = 8,
		[309819] = "Alleria Windläufer",
		[311084] = "Wahnsinniger Rekrut",
		[36020] = "Raufbold der Zerschmetterten Hand",
		[8599] = "Astraler Grufträuber",
		[301629] = "Renormalisiererin von Mechagon",
		[201748] = "Verfluchter Schädelhaufen <Wyrmzungenextraktor>",
		[25771] = 2,
		[307773] = "Ma'ut",
		[257314] = "Grenadier der Eisenfluträuber",
		[258338] = "Käpt'n Raoul",
		[311383] = "[*] Qual",
		[275010] = "Rostpelzknurrer",
		[116844] = 10,
		[309853] = "Finstere Manifestation <[*] Finstere Manifestation>",
		[274610] = 8,
		[299584] = "Emorneth",
		[142641] = 3,
		[88742] = 7,
		[264773] = "[*] Erstickendes Meerwasser",
		[268899] = 11,
		[277060] = "Seelenschinderin der Kvaldir",
		[121411] = 4,
		[264774] = 8,
		[275013] = "Gallenspucker der Verlassenen",
		[277061] = "Seelenschinderin der Kvaldir",
		[245686] = 8,
		[289348] = 6,
		[275014] = "Viq'Goth",
		[277062] = "Fluchgängerin der Kvaldir",
		[251188] = "Toxischer Saurid",
		[115356] = 7,
		[299588] = "Mechaniker der Kolbenköppe",
		[91807] = "Skullcaller <Lichgait-Hellfire>",
		[270920] = "Königin Wasi",
		[202028] = 11,
		[6552] = 1,
		[277064] = "Fluchgängerin der Kvaldir",
		[102558] = 11,
		[258883] = 12,
		[277822] = "Wellenrufer der Zackenkämme",
		[192611] = 12,
		[301667] = "Kavallerist von Mechagon",
		[272970] = 8,
		[69188] = 11,
		[81569] = "Berserker des Steinernen Kerns",
		[270923] = "Königin Wasi",
		[115357] = 7,
		[265523] = "Blutverschworener Schänder",
		[5740] = 9,
		[157503] = 7,
		[117405] = 3,
		[268905] = 11,
		[268877] = 3,
		[196911] = 4,
		[227573] = "Guarm",
		[207150] = 6,
		[303185] = "Sturmbinderin der Azsh'ari",
		[270926] = "Mogul Ratztunk",
		[234824] = "Mephistroth",
		[285319] = "Sturmbringer von Kul Tiras",
		[204079] = 2,
		[270927] = "König Timalji",
		[33110] = 5,
		[231724] = 1,
		[33370] = 8,
		[270928] = "König Timalji",
		[264027] = "Bezauberte Wache",
		[227629] = "Odyn",
		[187698] = 3,
		[102560] = 11,
		[197937] = 5,
		[119966] = 5,
		[145735] = "Amalgam der Verderbnis",
		[270930] = "Königin Patlaa",
		[6572] = 1,
		[157355] = "Leerenspuk",
		[288057] = "Strofnir",
		[270931] = "[*] Finsterschuss",
		[272979] = 2,
		[198962] = "Runenmetz der Valarjar",
		[277075] = "Salzflosse",
		[280713] = 8,
		[289362] = 11,
		[212056] = 2,
		[303726] = 3,
		[277123] = "Wegfinderin der Blutgischt",
		[241312] = "Akolyth der Reißmäuler",
		[283960] = "[*] Verbrennen",
		[277077] = "Salzflosse",
		[303698] = 5,
		[297555] = "Auslöschungselementar",
		[239264] = "Priesterin Lunazenit",
		[268887] = 2,
		[303699] = 5,
		[313938] = "Zermalmer der Aqir",
		[295536] = "Fliegende Unterdrückungseinheit JK-8",
		[285270] = "Ranah Säbelklaue",
		[58452] = 1,
		[310580] = "Schlund von Drest'agath",
		[315987] = 2,
		[313966] = "Zuckender Schrecken",
		[306484] = 2,
		[289367] = 9,
		[231729] = "Wogenheiler der Reißmäuler",
		[216371] = 2,
		[287320] = 6,
		[272986] = 12,
		[30508] = "Großhexenmeister Nethekurse",
		[183633] = "Steingebundener Prassler",
		[123040] = 5,
		[281178] = 2,
		[302388] = "Vexiona",
		[108194] = 6,
		[15798] = "Darragh",
		[306973] = "Zorn von N'Zoth",
		[212084] = 12,
		[204086] = "Dämonenversklavter Zornfürst",
		[254256] = "Richterin der Inquisition",
		[295048] = 1,
		[275037] = "Schneepelzknurrer",
		[224564] = "Akolythin der Mondwache",
		[225588] = "Twirhp",
		[313945] = "Zermalmer der Aqir",
		[275038] = "Schneepelzknurrer",
		[204087] = "Teufelsschläger der Zornwächter",
		[219809] = 6,
		[46044] = "Wichtel der Sonnenklingen <Hexenmeister der Sonnenklingen>",
		[316019] = 9,
		[268896] = "Lord Sturmsang",
		[257692] = "[*] Tikiinferno",
		[283956] = "Magmeister Sprengzisch",
		[188494] = "[*] Stinkendes Maul",
		[187727] = 12,
		[127576] = 11,
		[313948] = 9,
		[307805] = "Ma'ut",
		[268898] = 11,
		[233272] = "Goroth",
		[251187] = "Toxischer Saurid",
		[283233] = 3,
		[89766] = "Kiz-amal <Bangonologie-Aegwynn>",
		[311378] = "Deresh aus dem Nichts",
		[17] = 5,
		[283234] = 3,
		[287379] = 1,
		[160063] = "Glubschi <Âlysiâ>",
		[313951] = "Abgrundbeobachter",
		[307808] = "Zorn von N'Zoth",
		[187708] = 3,
		[229687] = 8,
		[276112] = 2,
		[307809] = "Zorn von N'Zoth",
		[71337] = "Tierführer der Frostwächter",
		[259213] = 3,
		[296240] = 12,
		[236507] = "Seelenkönigin Dejahna",
		[81576] = "Erdformer des Steinernen Kerns",
		[279142] = 1,
		[295169] = "Rumsatron X-80",
		[306478] = 3,
		[268904] = 11,
		[30739] = "Kriegshäuptling Kargath Messerfaust",
		[313955] = "Sylvanas Windläufer",
		[126115] = "Shado-Pan-Frostbogenschütze",
		[212283] = 4,
		[285311] = "Sturmbringer von Kul Tiras",
		[297574] = "Auslöschungselementar",
		[215711] = 6,
		[196937] = 4,
		[44120] = "Eramas Leuchtfeuer",
		[148135] = 10,
		[227642] = "Guarm",
		[253239] = "Moloch der Dazar'ai",
		[12058] = "Zekhan",
		[107174] = 2,
		[275051] = "[*] Faule Wasser",
		[285290] = "Nagtar Wolfsbann",
		[287338] = 6,
		[313959] = "[*] Versengende Brandblase",
		[252216] = 11,
		[31661] = 8,
		[180545] = 3,
		[255288] = "Salzpelzraufbold",
		[190784] = 2,
		[285292] = "[*] Frostfluten",
		[287340] = 5,
		[273006] = 7,
		[316009] = "Bezauberte Ritualistin",
		[268911] = 12,
		[287341] = "Zerstörer der Bohrinselflotte",
		[289389] = "Avatar des Leidens",
		[239931] = "Kil'jaeden",
		[257337] = "Münzbetriebener Meuteverprügler",
		[225597] = 3,
		[280655] = 12,
		[316011] = "Extraktorin Thelsara",
		[258114] = "Berserkerin Zar'ri",
		[303725] = 10,
		[273009] = 4,
		[316012] = "[*] Instabile Leere",
		[224574] = 3,
		[279153] = 1,
		[315176] = 2,
		[268932] = "König Dazar",
		[277106] = "Dunstschuppenschilfflechter",
		[279154] = 2,
		[107176] = "Brennender Ho-zen-Muskelprotz",
		[241989] = "Wogenheiler der Reißmäuler",
		[301680] = "Kavallerist von Mechagon",
		[306475] = 7,
		[101033] = 7,
		[101545] = 10,
		[301681] = "Kavallerist von Mechagon",
		[279151] = 8,
		[198959] = "Runenmetz der Valarjar",
		[305794] = "Königin Azshara",
		[277109] = "Dunstschuppenschreckensfinne",
		[196414] = 9,
		[259388] = 3,
		[20271] = 2,
		[154953] = 4,
		[303731] = 2,
		[262268] = "Alchemistin der Venture Co.",
		[204654] = 8,
		[27285] = 9,
		[241983] = "Kil'jaeden",
		[313971] = "Abgründige Brut",
		[307828] = "Vexiona",
		[301685] = 11,
		[157348] = "Ursturmelementar <Rekasha-Silvermoon>",
		[267907] = "[*] Seelendornen",
		[21807] = "Hüter Dagda",
		[71342] = 3,
		[225602] = 8,
		[234817] = "Mephistroth",
		[261446] = "Lady Kronsteig",
		[261438] = "Lord Kronsteig",
		[292138] = "Schwarzwasserungetüm",
		[22703] = 9,
		[283258] = 3,
		[114738] = 7,
		[176457] = 3,
		[259391] = 3,
		[307832] = "Zorn von N'Zoth",
		[301689] = "Anodisierter Spulenträger",
		[605] = 5,
		[272439] = "Ur'zul <Рудрапраяг-Гордунни>",
		[300328] = 10,
		[58867] = "Geisterwolf <Ferynis>",
		[225604] = 3,
		[313977] = "Abgrundbeobachter",
		[256864] = "Dinomantin Kish'o",
		[309882] = "Sklaventreiber der Kultisten",
		[179872] = 8,
		[206151] = 1,
		[93339] = 4,
		[301692] = "Anodisierter Spulenträger",
		[225605] = 8,
		[117418] = 10,
		[198764] = "Chi-Ji <Anjuk-Frostwolf>",
		[212295] = 9,
		[102572] = "Azurschlange",
		[195707] = 1,
		[278310] = 8,
		[8921] = 11,
		[287360] = 5,
		[218439] = "Sturmschnabel",
		[128339] = "Ätherisches Sha",
		[199753] = 4,
		[295552] = "Fliegende Unterdrückungseinheit JK-8",
		[191840] = 10,
		[316030] = "Shad'har der Unersättliche",
		[318078] = "Lebendiges Miasma",
		[258371] = "Splittplattenkristallauge",
		[305792] = "Königin Azshara",
		[316031] = "Shad'har der Unersättliche",
		[318079] = 10,
		[102573] = "Azurschlange",
		[282153] = "Hochtüftler Mekkadrill",
		[275077] = "Todesstachelbrutwächter",
		[232775] = "Guarm",
		[233799] = "Daeth Mondschatten",
		[259396] = 3,
		[275078] = "Todesstachelbrutwächter",
		[300717] = 2,
		[123051] = "Unbekannt <Elereth-Pozzodell'Eternità>",
		[259387] = 3,
		[275079] = "Todesstachelpeitscher",
		[268936] = "König Dazar",
		[236645] = 8,
		[289414] = "Sira Mondhüter",
		[299653] = 8,
		[77489] = 5,
		[262794] = "Genie der Venture Co.",
		[118963] = "Schleicher der Glintrok",
		[240279] = "[*] Teufelsschlag",
		[206491] = 12,
		[270986] = "Machitu der Brutale",
		[259398] = 3,
		[58448] = 11,
		[30639] = "Tollwütiger Kriegshund",
		[237630] = "Hauptmann Yathae Mondstreich",
		[53595] = 2,
		[231754] = "Wogenheiler der Reißmäuler",
		[285322] = "Sturmbringer von Kul Tiras",
		[114250] = 2,
		[259732] = "Sporenrufer Zancha",
		[306828] = "Thrall",
		[261447] = "Lord Kronsteig",
		[23600] = "Kriegsherr Salaris",
		[184662] = 2,
		[119981] = "Ming der Verschlagene",
		[240970] = "Gefallener Avatar",
		[262799] = "Astralitin Visara",
		[267558] = 2,
		[275086] = "Verwilderter Witterer",
		[285344] = "Der Platinprügler",
		[115310] = 10,
		[313994] = "Schmeichler der Kultisten",
		[158037] = 3,
		[100016] = "Leerenentstellter Spruchwirker",
		[37668] = "Astraler Zauberbinder",
		[311143] = "Blut von Ny'alotha",
		[299661] = 12,
		[263648] = 12,
		[118958] = "Eisenhaut der Glintrok",
		[271652] = "Stinkfellhopfling",
		[194526] = 8,
		[277137] = "Verklavter Frostelementar",
		[279185] = "Schreddertechniker",
		[286810] = "Ivan der Wahnsinnige",
		[299663] = 1,
		[270811] = "Dunstschuppenschilfflechter",
		[279186] = "Schreddertechniker",
		[279204] = 2,
		[299664] = 3,
		[310788] = "Organ der Verderbnis",
		[279187] = 7,
		[232746] = "Herrin Sassz'ine",
		[132168] = 1,
		[204114] = "Teufelswache",
		[19505] = "Traanom <Nagash-Zul'jin>",
		[285342] = "Energiesturm",
		[268856] = 11,
		[275745] = "Schreckenszahnotter",
		[227669] = "Guarm",
		[313424] = 10,
		[86949] = 8,
		[268951] = 7,
		[308508] = "Gefallener Risswanderer",
		[299093] = "[*] Gleißende Wut",
		[268846] = "Waffentester",
		[200344] = "Auferstandene Bogenschützin",
		[258381] = "Käpt'n Eudora",
		[21169] = 7,
		[190315] = "Nathanos Pestrufer",
		[268953] = 1,
		[106547] = "Shado-Pan-Novize",
		[115026] = "Instabile Energie",
		[272987] = 12,
		[268954] = 9,
		[262811] = "Egelkugel",
		[267551] = "Münzbetriebener Meuteverprügler",
		[288281] = "Lanara Mondschatten",
		[268955] = 9,
		[279194] = 1,
		[238688] = "Würgerankenpeitscher",
		[200343] = "Auferstandene Bogenschützin",
		[268956] = 9,
		[67767] = "Schwarzer Champion",
		[88625] = 5,
		[109746] = 6,
		[285339] = "Knochensägerin der Bohrinselflotte",
		[277165] = "[*] Flüsternde Finsternis",
		[79923] = "Schinder des Steinernen Kerns",
		[73920] = 7,
		[32176] = 7,
		[280653] = 1,
		[262232] = 1,
		[65116] = 3,
		[130736] = 6,
		[2580] = 6,
		[254813] = 9,
		[256337] = "Territorialer Nadelrücken",
		[108211] = 4,
		[62124] = 2,
		[303059] = 7,
		[299677] = 12,
		[210738] = 6,
		[311367] = "Il'gynoth",
		[278564] = 10,
		[262270] = "Alchemistin der Venture Co.",
		[318108] = 11,
		[201365] = "Gequälter Blutsucher",
		[264476] = "Wahnsinnige Schützin",
		[307870] = 11,
		[270360] = "Nuzoriak der Experimentierer",
		[256039] = "Aufseher Korgus",
		[220519] = "Unbekannt",
		[270058] = 9,
		[238637] = "Klingenwirker der Zornwächter",
		[279203] = 1,
		[697] = 9,
		[201364] = 1,
		[2484] = 7,
		[205146] = 9,
		[300308] = "Brutstättenei",
		[255629] = 9,
		[27827] = 5,
		[225624] = 11,
		[202075] = "Brennende Geode",
		[275110] = "Bruchschnabelknochenpicker",
		[13323] = "Astraler Theurg",
		[974] = 7,
		[314018] = 5,
		[231768] = "[*] Durchtränkendes Wasser",
		[285350] = "Laminaria",
		[303780] = 11,
		[282408] = "Funkenbot",
		[201363] = 1,
		[102598] = "Ewiger Hüter",
		[193659] = "Gottkönig Skovald",
		[170347] = 4,
		[263446] = "Unbekannt <Mhaaris-Azuremyst>",
		[216411] = 2,
		[258390] = "Splittplattenstarrer",
		[20473] = 2,
		[97463] = 1,
		[268971] = 7,
		[2823] = 4,
		[66235] = 2,
		[310830] = "Wahnsinniger Messerdreher",
		[175457] = 11,
		[244776] = "Rasselpanzer",
		[297037] = 12,
		[93368] = 1,
		[260881] = 7,
		[85691] = "Flinkschweifräuber",
		[206967] = 6,
		[2983] = 4,
		[216413] = 2,
		[287404] = 8,
		[251938] = 1,
		[239401] = "Belac",
		[297254] = "König Gobbamak",
		[197995] = 7,
		[294966] = 10,
		[216431] = 3,
		[197721] = 11,
		[273681] = "Rothaken der Häcksler",
		[69972] = "Nekrolythin der Kor'kron",
		[237196] = 10,
		[220510] = 2,
		[311980] = "Furorion",
		[195217] = "Arkanistin der Hassnattern",
		[184367] = 1,
		[17843] = "Priesterin Delrissa",
		[287408] = 8,
		[281265] = 5,
		[772] = 1,
		[213858] = 1,
		[280384] = 4,
		[53600] = 2,
		[311045] = "Shath'Yarschreiberin",
		[250909] = 1,
		[301754] = 11,
		[258075] = "Stechender Parasit",
		[145769] = "Amalgam der Verderbnis",
		[118455] = 3,
		[259720] = "Sporenrufer Zancha",
		[289459] = "Sira Mondhüter",
		[250505] = "Nuzoriak der Experimentierer",
		[71357] = "Tierführer der Frostwächter",
		[288240] = 1,
		[314033] = "Leerrufer der K'thir",
		[1850] = 11,
		[258150] = "Seesprecher der Bilgeratten",
		[256970] = "Kürassier Valyri",
		[268315] = "Abgrundtentakel",
		[207203] = 6,
		[267533] = "Käpt'n Jolli",
		[33891] = 11,
		[72221] = 11,
		[202539] = 1,
		[242622] = 11,
		[300296] = "Häcksler der Schrottknochen",
		[185358] = 3,
		[106830] = 11,
		[261479] = 3,
		[295607] = "Abyssalkommandantin Sivara",
		[1766] = 4,
		[266939] = "Aka'ali die Bezwingerin",
		[253279] = "Moloch der Dazar'ai",
		[266285] = "Zangenkieferkrokilisk",
		[115385] = "Krieger der Hassnattern",
		[266940] = "Aka'ali die Bezwingerin",
		[15578] = "Unbekannt",
		[250208] = "Alter Stachelpanzer",
		[266951] = "Aka'ali die Bezwingerin",
		[288981] = 1,
		[198590] = 9,
		[294946] = 11,
		[314040] = 9,
		[270293] = "Läuterungskonstrukt",
		[277181] = 12,
		[241680] = "Lord Sturmsang",
		[260741] = "Schwester Dornstrauch",
		[299707] = 10,
		[272413] = "Harpunier der Schwertwasserkorsaren",
		[213350] = 2,
		[100686] = "Echo von Sylvanas",
		[67714] = 9,
		[255931] = "Königliche Schreckenswache",
		[225637] = "Mondpriesterin",
		[307213] = "Tek'ris",
		[244067] = 12,
		[212327] = 9,
		[306929] = "Shad'har der Unersättliche",
		[273089] = 6,
		[312873] = "Todesschwinge",
		[277185] = 3,
		[186403] = 3,
		[273090] = 6,
		[235877] = "Verteidiger der Legionsrichter",
		[285377] = "Der Platinprügler",
		[90302] = "Rasender Schleifwurm",
		[132466] = 10,
		[253288] = 11,
		[277187] = 2,
		[300547] = "Müllschmeißer der Schrottknochen",
		[202090] = 10,
		[275140] = "Edelsteinsplitterkoloss",
		[118459] = "Katze <Zerix-DunMorogh>",
		[271045] = 3,
		[132467] = 10,
		[266950] = "Prügler der Schwarzzahnvandalen",
		[268998] = 9,
		[209258] = 12,
		[264903] = "Aqu'sirr",
		[316097] = "Wächter des Anubisath",
		[285381] = 11,
		[73921] = 7,
		[2008] = 7,
		[294935] = 11,
		[285382] = 2,
		[271048] = 3,
		[298242] = "Orgozoa",
		[262145] = "Äscherner Vollstrecker",
		[195949] = 4,
		[271049] = 3,
		[197997] = 7,
		[256358] = "Trothak",
		[280204] = 11,
		[268473] = 8,
		[768] = 11,
		[262161] = 1,
		[253287] = 11,
		[268311] = 3,
		[355] = 1,
		[200732] = "Dargrul",
		[191855] = "Serpentrix",
		[209261] = 12,
		[306431] = 12,
		[260455] = "Blutzecke",
		[269005] = "Ursturmelementar <Rekasha-Silvermoon>",
		[302917] = 11,
		[196718] = 12,
		[30478] = "Höllenorckonvertit",
		[309961] = "Il'gynoth",
		[271054] = 2,
		[379] = 7,
		[257904] = "Ludwig Von Tortollen",
		[114108] = 11,
		[34920] = "Astraler Strauchdieb",
		[153626] = 8,
		[283225] = 3,
		[205448] = 5,
		[283349] = 3,
		[273104] = 1,
		[101568] = 6,
		[313310] = 3,
		[269029] = "Schreckenskapitänin Luebke",
		[403] = 7,
		[44276] = "Zelfan",
		[241004] = "Flüchtige Verderbnis",
		[271058] = 2,
		[318714] = "Unbekannt",
		[275154] = "Runenhufrenner",
		[261482] = 2,
		[121536] = 5,
		[107200] = 11,
		[256363] = "Trothak",
		[134522] = 7,
		[281854] = 12,
		[109248] = 3,
		[48743] = 6,
		[261483] = 3,
		[111129] = "Gu Wolkenschlag",
		[185313] = 4,
		[239785] = "Dämonischer Obelisk",
		[70116] = "Bastionsfrostwyrm",
		[312017] = "Auge des Chaos",
		[203794] = 12,
		[203123] = 11,
		[116680] = 10,
		[196980] = 4,
		[305875] = "Geronnener Horror",
		[190837] = 3,
		[268910] = 12,
		[75973] = 12,
		[210291] = 2,
		[117952] = 10,
		[69967] = "Templerin der Kor'kron",
		[314074] = 7,
		[148859] = 5,
		[316663] = "Schwarmwächter der Aqir",
		[316007] = 11,
		[237573] = "Höllenglutteufelsbringer",
		[475] = 8,
		[283353] = 3,
		[302594] = "Griff des Schreckens",
		[107570] = 1,
		[107202] = "[*] Blitzschlag beschwören",
		[274416] = 7,
		[106826] = "Sha der Gewalt",
		[46182] = "Eramas Leuchtfeuer",
		[286835] = 6,
		[308470] = "[*] Entropische Explosion",
		[38759] = "Pandemonius",
		[129552] = 1,
		[311269] = "Schattenklinge der Kultisten",
		[287471] = 8,
		[198670] = 3,
		[160124] = "DoKo <Nitz-Lordaeron>",
		[205191] = 2,
		[113858] = 9,
		[309978] = "[*] Paranoia",
		[271071] = 11,
		[107203] = 4,
		[227104] = "Illidan Sturmgrimm <Shâolîn>",
		[228127] = "Helya",
		[155447] = 5,
		[77761] = 11,
		[307932] = 8,
		[199050] = "Schildmaid der Valarjar",
		[546] = 7,
		[194310] = 6,
		[299742] = "Klingenkämpfer der Ankoaner",
		[299754] = 11,
		[35944] = "Astraler Priester",
		[264931] = "Raal der Unersättliche",
		[232827] = "Piranhado",
		[213634] = 5,
		[288736] = 9,
		[123586] = 10,
		[299744] = 1,
		[96312] = 11,
		[46183] = "Eramas Leuchtfeuer",
		[273124] = "Aluriak",
		[299745] = 4,
		[38760] = "Pandemonius",
		[127170] = 2,
		[198595] = "Donnerrufer der Valarjar",
		[307937] = "Prophet Skitra",
		[309985] = "Ra-den",
		[88263] = 2,
		[8221] = 1,
		[113860] = 9,
		[269031] = 12,
		[205179] = 9,
		[281318] = "Wahrsager der Sandskalpe",
		[59914] = 5,
		[257397] = "Knochensäger der Eisenfluträuber",
		[236541] = "[*] Zwielichtgleve",
		[305892] = "Geronnener Horror",
		[299749] = "Scharfseher Ori <Âlysiâ>",
		[163201] = 1,
		[205180] = 9,
		[198013] = 12,
		[256374] = 9,
		[686] = 9,
		[871] = 1,
		[250873] = 2,
		[316133] = "Wächter des Anubisath",
		[204157] = 12,
		[261498] = "[*] Schleichende Fäulnis",
		[132118] = 9,
		[281843] = 1,
		[309991] = "N'Zoth der Verderber",
		[46184] = "Zelfan",
		[200700] = "Dargrul",
		[286693] = "Hochtüftler Mekkadrill",
		[38761] = "Tavarok",
		[102599] = "Ewiger Hüter",
		[214397] = 2,
		[79050] = "Hohepriesterin Azil",
		[120517] = 5,
		[279277] = "Glevenschleuder der Kaldorei",
		[259448] = 3,
		[113862] = 8,
		[187777] = "Kohlenbecken des Erwachens <Hartholz-Frostwolf>",
		[102411] = "Zeitlinienversetzter Scharfschütze",
		[774] = 11,
		[299756] = 1,
		[317357] = 5,
		[259452] = 2,
		[259449] = 11,
		[314855] = "Gryth'ax der Henker",
		[318187] = 11,
		[102600] = "Ewiger Unterdrücker",
		[102417] = 11,
		[277245] = "Lebende Verderbnis",
		[277233] = "Shathhoth der Bestrafer",
		[184707] = 1,
		[281329] = "Käpt'n Jolli",
		[316141] = "Wächter des Anubisath",
		[220543] = 5,
		[213376] = 10,
		[163212] = 10,
		[199042] = 1,
		[285426] = "[*] Sturmesheulen",
		[46185] = "Zelfan",
		[280545] = 3,
		[316143] = "Wächter des Anubisath",
		[281007] = "Diener von Thros",
		[102601] = "Ewiger Unterdrücker",
		[289523] = 11,
		[242623] = 11,
		[287482] = "Kurbelknallflammengeschütz",
		[184709] = 1,
		[289524] = 11,
		[219521] = 5,
		[253309] = 3,
		[102216] = 11,
		[256106] = "Himmelskäpt'n Kragg",
		[137619] = 4,
		[310003] = "Ra-den",
		[284316] = "Bruder Joseph",
		[289526] = 2,
		[58984] = 11,
		[128519] = 10,
		[262906] = "Mondsichel Pelani",
		[59752] = 1,
		[256382] = "Weißschwanzhirschkuh",
		[310005] = "Ra-den",
		[287480] = "Kurbelknallflammengeschütz",
		[259454] = 3,
		[36459] = "Hydross der Unstete",
		[197628] = 11,
		[312922] = 2,
		[282360] = 6,
		[205648] = 7,
		[257407] = "Rezan",
		[46186] = "Zelfan",
		[259455] = 8,
		[296910] = "Unendliche Verderbnis",
		[126664] = 1,
		[304824] = 11,
		[198028] = "[*] Kristalliner Boden",
		[316152] = "Wächter des Anubisath",
		[257408] = 7,
		[250241] = "Vol'kaal",
		[259456] = 2,
		[170379] = 7,
		[1022] = 2,
		[271103] = 6,
		[285443] = "[*] \"Versteckte\" Flammenkanone",
		[1044] = 2,
		[703] = 4,
		[47528] = 6,
		[23161] = 9,
		[226385] = "Teerspuckerlauerer",
		[138640] = 8,
		[271105] = 2,
		[270506] = "Spektrale Bestienmeisterin",
		[204883] = 5,
		[285440] = "Hochmaschinist Funkenstrom",
		[303876] = "Abyssalkommandantin Sivara",
		[80913] = "[*] Kristallsplitter",
		[45284] = 7,
		[277250] = "Gesichtsloser Gedankenpeitscher",
		[271107] = 3,
		[301834] = 9,
		[283394] = "Hochtüftler Mekkadrill",
		[310015] = "Ra-den",
		[201098] = 2,
		[302674] = 7,
		[307968] = "Tek'ris",
		[138642] = 8,
		[197003] = 4,
		[198027] = 4,
		[199051] = "Eichenherz",
		[204413] = 3,
		[89808] = "Zigtip <Moorlog-Alexstrasza>",
		[274369] = 5,
		[227720] = "Guarm",
		[278474] = "Dornformerin des Zirkels",
		[279302] = 6,
		[264968] = "Dorp",
		[285452] = 7,
		[310019] = "[*] Geladene Bindung",
		[279303] = 6,
		[275689] = 1,
		[227721] = "Guarm",
		[318211] = 7,
		[34925] = "Nexusschrecken",
		[276110] = "Äscherner Vollstrecker",
		[281357] = 10,
		[5487] = 11,
		[35949] = "Häretiker der Zerschmetterten Hand",
		[25912] = 2,
		[307974] = "Furorion",
		[310022] = "[*] Geladene Bindung",
		[271115] = 8,
		[198030] = 12,
		[198745] = "Sturmgeschmiedeter Wächter",
		[257415] = 3,
		[295689] = 3,
		[283407] = "Oberanführerin Geya'rah",
		[227723] = 11,
		[318219] = 12,
		[294117] = 7,
		[299790] = 11,
		[307977] = "Prophet Skitra",
		[318216] = 3,
		[268419] = "[*] Sturmhieb",
		[234891] = "Wachsame Maid",
		[273992] = 3,
		[204175] = "Teufelswache",
		[81459] = "Erdformer des Steinernen Kerns",
		[107215] = "Mantisausrüstung",
		[299788] = 2,
		[285454] = "Hochmaschinist Funkenstrom",
		[16953] = 11,
		[306988] = "Zorn von N'Zoth",
		[299789] = 3,
		[245131] = "Donnerschock",
		[1604] = "Nexuswandler",
		[206224] = "[*] Brennende Lohe",
		[283408] = "Oberanführerin Geya'rah",
		[257418] = 9,
		[283413] = "Oberanführerin Geya'rah",
		[210320] = 2,
		[271590] = "Lady Kronsteig",
		[201733] = "Latosius",
		[312078] = "Stacheltentakel",
		[255371] = "Rezan",
		[283410] = "Oberanführerin Geya'rah",
		[264082] = "Sonnenläufer Ordel",
		[234896] = "Wachsame Maid",
		[255373] = "Rezan",
		[96979] = 12,
		[27576] = 4,
		[205202] = 2,
		[297746] = "Thrall",
		[283412] = "Oberanführerin Geya'rah",
		[285460] = "Hochmaschinist Funkenstrom",
		[262287] = "Mechjockey",
		[20153] = "Höllenbestie <Gahereth-DieewigeWacht>",
		[203155] = 3,
		[204179] = "Stoßtruppsoldat der Teufelswache",
		[236516] = "[*] Zwielichtsalve",
		[238991] = "Höllenglutverführerin",
		[191894] = 10,
		[200084] = "Geisterhafter Gefolgsmann",
		[228325] = "Geistfetzer der Kvaldir",
		[210323] = 2,
		[211347] = "Furbolg des Schwarzschlunds <Shâolîn>",
		[318227] = 2,
		[256627] = "Vollstrecker der Knochenritzer",
		[247183] = "Blutschmaus",
		[267034] = "Vol'zith der Flüsterer",
		[326419] = 5,
		[35951] = "Geringer Schattenspalt <Großhexenmeister Nethekurse>",
		[210324] = 2,
		[316181] = "Wächter des Anubisath",
		[269083] = 1,
		[262940] = "Unbekannt",
		[190411] = 1,
		[299800] = "Scharfseher Ori <Âlysiâ>",
		[285466] = 7,
		[295705] = "[*] Toxischer Blitz",
		[2120] = 8,
		[283419] = "Oberanführerin Geya'rah",
		[269085] = 11,
		[257424] = 7,
		[258823] = "Flügge Nachtschwinge",
		[199063] = "Würgewurzeln",
		[285468] = "Gnominator G-800",
		[266209] = "Gefallener Todessprecher",
		[298829] = "Zor Einbaum",
		[8143] = 7,
		[310042] = "Schlägertentakel",
		[90325] = "Schläger der Zanj'ir",
		[247186] = "Blutschmaus",
		[291613] = "Lufteinheit R-21/X",
		[285470] = 3,
		[250258] = "Vol'kaal",
		[256969] = "Knurrender Dockhund",
		[264112] = "Sonnenläufer Ordel",
		[257426] = "Vollstrecker der Eisenfluträuber",
		[259474] = "Rixxa Fluxflamme",
		[273185] = "Zuls Schildträger",
		[283424] = "Oberanführerin Geya'rah",
		[269090] = "Geschützspezialist",
		[250259] = "Vol'kaal",
		[26297] = 1,
		[102410] = "Zeitlinienversetzter Scharfschütze",
		[293664] = 9,
		[280409] = 12,
		[257427] = 11,
		[283426] = "Oberanführerin Geya'rah",
		[269092] = "Geschützspezialist",
		[225909] = "Rabenspinnling",
		[202138] = 12,
		[227735] = "Guarm",
		[285475] = 12,
		[19514] = "Schamane von Orgrimmar",
		[70361] = "Bastionsfrostwyrm",
		[256405] = "Trothak",
		[257428] = 3,
		[202140] = 12,
		[289572] = "Kommandant Breitseite",
		[299811] = "Emorneth",
		[245142] = "Klaftar",
		[287525] = "Wahnsinniger Kurbelknallingenieur",
		[2584] = 8,
		[283430] = 4,
		[33649] = 3,
		[269097] = "Lord Sturmsang",
		[265001] = "Aqualing",
		[265002] = "Raal der Unersättliche",
		[301861] = 5,
		[21562] = 5,
		[70362] = "Bastionsfrostwyrm",
		[314149] = "Dunkler Ritualist",
		[293671] = 11,
		[35953] = "Großhexenmeister Nethekurse",
		[105174] = 9,
		[269099] = "Kriegsmaschine der Venture Co.",
		[98007] = 7,
		[90328] = "Hati <Âlysiâ>",
		[269100] = "Kriegsmaschine der Venture Co.",
		[22842] = 11,
		[285482] = 5,
		[46192] = "Heiler der Sonnenklingen",
		[289578] = "Kanonier von Kul Tiras",
		[291626] = "Lufteinheit R-21/X",
		[264122] = "Geistwandlerin Quura",
		[213405] = 12,
		[281388] = "Aschenwindkanonier",
		[286732] = "Seuchenwachenhauptmann Thedric",
		[283868] = "Basiskäpt'n Kurbelknall",
		[81114] = 12,
		[121557] = 5,
		[137639] = 10,
		[98008] = 7,
		[290469] = 2,
		[227381] = "Der Affenkönig",
		[198793] = 12,
		[16827] = "Katze <Zerix-DunMorogh>",
		[312107] = 2,
		[226717] = "Teufelsberster",
		[156070] = 11,
		[277297] = "Firmenproduzent",
		[34930] = "Astraler Dunkelzauberer",
		[285489] = 2,
		[25914] = 2,
		[285488] = "Malfurion Sturmgrimm",
		[15531] = "Ewige Chronomantin",
		[185763] = 4,
		[291632] = 8,
		[61295] = 7,
		[312110] = "Königin Azshara",
		[289585] = "Sturmgebundener Wächter",
		[267060] = "Zanazal der Weise",
		[269108] = 11,
		[46193] = "Priesterin Delrissa",
		[289586] = "Sturmgebundener Wächter",
		[93402] = 11,
		[264923] = "Raal der Unersättliche",
		[115009] = "Shado-Pan-Sturmbringer",
		[289587] = "Kanonier von Kul Tiras",
		[268211] = "Runenmetz Sorn",
		[257436] = "Korsarin der Eisenfluträuber",
		[201123] = "Garststachelblüte",
		[202147] = 1,
		[260508] = "Seelengebundener Goliath",
		[33395] = "Elementale dell'Acqua <Aylan-Pozzodell'Eternità>",
		[156073] = 12,
		[265016] = "Auserwählte Blutmatrone",
		[207267] = 6,
		[257437] = "Korsarin der Eisenfluträuber",
		[596] = 5,
		[202836] = 1,
		[291637] = 11,
		[125439] = 9,
		[188838] = 7,
		[124430] = 5,
		[296150] = "[*] Ventilausstoß",
		[285496] = 9,
		[295735] = 10,
		[265019] = "Auserwählte Blutmatrone",
		[291640] = 2,
		[204197] = 5,
		[305381] = 3,
		[289593] = "Sturmgebundener Wächter",
		[256415] = 1,
		[46194] = "Yazzai",
		[31290] = "Späher der Dunkelschuppen",
		[101186] = 11,
		[59628] = 4,
		[70161] = "Axtwerfer der Kor'kron",
		[303929] = 2,
		[289595] = "Sturmgebundener Wächter",
		[231843] = 2,
		[249249] = "Blutschmaus",
		[312121] = "Alleria Windläufer",
		[305978] = "Furorion",
		[260512] = "Seelengebundener Goliath",
		[2565] = 1,
		[301884] = 7,
		[189865] = "Klaftar",
		[124121] = 2,
		[269120] = 11,
		[213995] = 4,
		[259489] = 3,
		[115203] = 10,
		[77535] = 6,
		[310078] = "Schlund von Drest'agath",
		[289599] = "Auferstandener Schütze",
		[308029] = "Prophet Skitra",
		[301886] = 9,
		[201129] = "Garststachelblüte",
		[185771] = "Dämonensklavenhöllenbestie <Xândrilâ>",
		[198058] = "Odyn",
		[301887] = 4,
		[156079] = 11,
		[239013] = 2,
		[257260] = "Dornwächter",
		[781] = 3,
		[46195] = "Yazzai",
		[259491] = 3,
		[267077] = "Totem der Explosion",
		[202137] = 12,
		[276194] = 7,
		[185773] = "Dämonensklavenhöllenbestie <Xândrilâ>",
		[312130] = 10,
		[236142] = "Das Seelenkonstrukt",
		[271174] = "Bleicher Schlinger",
		[281413] = 8,
		[101185] = 2,
		[310082] = "Schlund von Drest'agath",
		[271175] = "Bleicher Schlinger",
		[8219] = 1,
		[153561] = 8,
		[58875] = 7,
		[46049] = "Schildwache der Sonnenklingen",
		[258864] = "Aschenwindmarinesoldat",
		[205228] = 2,
		[34933] = "Manasauger",
		[164273] = 3,
		[271178] = "Bleicher Schlinger",
		[273226] = "[*] Zersetzende Sporen",
		[128829] = "Spitzel der Krik'thik",
		[287560] = "Kurbelknallblaster",
		[36213] = "Großer Erdelementar <Maihenya-Malygos>",
		[287561] = "Kurbelknallblaster",
		[269131] = "Lord Sturmsang",
		[303943] = 5,
		[115421] = "Windformer der Krik'thik",
		[296566] = "Azsharas Glanz",
		[285514] = 7,
		[259495] = 3,
		[23228] = 8,
		[299849] = 12,
		[285515] = 7,
		[171636] = 1,
		[70371] = "Rasende Monstrosität",
		[291659] = 11,
		[287564] = "Seuchenwagen der Verlassenen",
		[32315] = "Astraler Grufträuber",
		[24252] = 11,
		[291658] = 3,
		[310090] = "Schlund von Drest'agath",
		[205231] = "Dunkelblick <Asrahel-ZirkeldesCenarius>",
		[272903] = 2,
		[299852] = 11,
		[33702] = 8,
		[109791] = 9,
		[202160] = 10,
		[308044] = "Ma'ut",
		[273232] = 12,
		[34934] = "Astrales Gespenst <Astraler Zauberbinder>",
		[314188] = "Leerenschrecken",
		[207778] = 7,
		[101810] = "Echo von Jaina",
		[287568] = 5,
		[47632] = 6,
		[46043] = "Hexenmeister der Sonnenklingen",
		[187827] = 12,
		[114911] = 7,
		[183218] = 2,
		[231854] = "Harjatan",
		[239022] = "Höllenglutwichtel",
		[303952] = "Schweißerbot",
		[54644] = "Tura’aka",
		[256616] = "Schlächter der Knochenritzer",
		[293714] = 11,
		[303953] = 2,
		[306001] = "Leerenbefallener Koloss",
		[106648] = "Rollendes Fass",
		[296138] = 11,
		[316661] = 6,
		[273238] = 12,
		[23380] = "Unbekannt",
		[267997] = "Finsteres Scheusal",
		[5782] = 9,
		[289621] = "Wellenbrecherelementar",
		[108447] = 9,
		[261266] = "Schwester Gebrecht",
		[314196] = "Knirschender Schrecken",
		[202164] = 1,
		[198069] = 5,
		[277706] = 9,
		[295766] = "Myrmidone der Zanj'ir",
		[70374] = "Axtwerfer der Kor'kron",
		[308878] = "Zardeth der Schwarzen Klaue",
		[293719] = "Geheimer Fisch",
		[287576] = "Kurbelknallblaster",
		[44406] = "Hellschuppenwyrm",
		[205237] = 10,
		[204213] = 5,
		[53365] = 6,
		[300971] = 5,
		[107351] = 10,
		[15583] = "Ewiger Assassine",
		[185782] = "Dämonensklavenhöllenbestie <Xândrilâ>",
		[202166] = 1,
		[270460] = "Goldader",
		[205238] = 10,
		[271197] = 4,
		[71769] = "Der Lichkönig",
		[291675] = 11,
		[32316] = "Astraler Zauberbinder",
		[112866] = 9,
		[306010] = "Leerenbefallener Koloss",
		[293724] = "Schildgenerator",
		[204215] = 5,
		[294961] = "[*] Lodernder Biss",
		[277703] = 8,
		[283421] = "Gnominator G-800",
		[288720] = 12,
		[85222] = 2,
		[202168] = 1,
		[299869] = 2,
		[298859] = 2,
		[131521] = "Verderbter Taran Zhu",
		[297822] = "Thrall",
		[256434] = 8,
		[257458] = "Harlan der Schmierige",
		[44151] = 5,
		[81216] = "Millhaus Manasturm",
		[251316] = 4,
		[98021] = "Unbekannt <Rûmburak>",
		[131522] = "Verderbter Taran Zhu",
		[306015] = "Furorion",
		[207289] = 6,
		[293729] = "Mechaniker von Mechagon",
		[287586] = "Kurbelknallblaster",
		[19134] = "Kriegsherr Salaris",
		[224125] = 7,
		[196027] = "Arkanistin der Hassnattern",
		[71489] = "Crok Geißelbann",
		[302763] = 9,
		[119611] = 10,
		[257460] = "[*] Feurige Trümmer",
		[129250] = 5,
		[289636] = "Äscherner Räuber",
		[279397] = 2,
		[196028] = "Arkanistin der Hassnattern",
		[186257] = 3,
		[256044] = "Aufseher Korgus",
		[187837] = 7,
		[296752] = "[*] Schneidende Koralle",
		[267105] = "Totem des Stroms",
		[297237] = "Leerengebundener Schamane",
		[27581] = "Kriegsherr Salaris",
		[296560] = "[*] Haftende Statik",
		[88163] = 1,
		[289639] = 1,
		[70890] = 6,
		[193534] = 3,
		[210536] = "[*] Feuerregen",
		[131474] = 8,
		[71488] = "Crok Geißelbann",
		[261558] = 7,
		[256083] = "Aufseher Korgus",
		[289641] = "Äscherner Räuber",
		[299880] = 3,
		[181867] = 5,
		[198079] = "Stachelfaust der Verhasste",
		[171628] = 1,
		[162243] = 12,
		[46968] = 1,
		[205246] = 9,
		[297834] = "Schmierer",
		[257459] = "Rothaken der Häcksler",
		[194153] = 11,
		[112870] = 9,
		[297835] = "Schmierer",
		[288426] = 6,
		[293740] = "Geheimer Fisch",
		[292576] = "Wächterin M'sheke",
		[115430] = "Wüter der Krik'thik",
		[283502] = 9,
		[41635] = 5,
		[308953] = "Auge von Drest'agath",
		[84714] = 8,
		[257831] = 8,
		[269169] = "Eroberin der Eidgebundenen",
		[270289] = "[*] Läuterungsstrahl",
		[289647] = "Wellenbrecherelementar",
		[295791] = "Abyssalkommandantin Sivara",
		[232893] = 12,
		[129253] = 5,
		[243298] = "Anklägerin Nixa",
		[308078] = 1,
		[204225] = "Teufelswache",
		[114919] = 2,
		[297840] = 3,
		[283506] = 5,
		[249276] = "[*] Explosion",
		[271220] = "Brüchiges Skelett",
		[152173] = 10,
		[273264] = 3,
		[85739] = 1,
		[69869] = "Herbeirufer der Kor'kron",
		[314224] = 10,
		[295779] = "Myrmidone der Zanj'ir",
		[310129] = "Ma'ut",
		[193359] = 4,
		[72429] = "Terenas Menethil",
		[71405] = "Prinz Keleseth",
		[204227] = "Teufelswache",
		[203539] = 2,
		[255421] = "Rezan",
		[316274] = "Dunkle Inquisitorin Xanesh",
		[308408] = "Schmiedewache Hurrul",
		[290819] = 3,
		[265081] = "Auserwählte Blutmatrone",
		[235968] = "Schauriger Knochenwärter",
		[261565] = "Hadal Dunkelgrund",
		[279416] = 2,
		[119528] = "[*] Feuerball",
		[60024] = 11,
		[22719] = 8,
		[287608] = 2,
		[281465] = 2,
		[310455] = "Amathet",
		[310134] = "Psychus",
		[197062] = 4,
		[265084] = "Ergebene Blutpriesterin",
		[256447] = "Dorp",
		[183752] = 12,
		[287610] = 2,
		[234946] = 5,
		[318321] = 8,
		[299896] = 10,
		[240066] = "Wogenheiler der Reißmäuler",
		[297850] = 10,
		[166347] = "Garstiger Pirscher",
		[310135] = "Psychus",
		[308406] = "Schmiedewache Hurrul",
		[281469] = 5,
		[180395] = "Zauberin der Rakeeshi",
		[35395] = 2,
		[303995] = 2,
		[265088] = "Rummy Mancomb",
		[307201] = "Ka'zir",
		[170869] = 2,
		[227781] = "[*] Leuchtendes Fragment",
		[226757] = 8,
		[34428] = 1,
		[212423] = "Auferstandener Schleicher <Coralyn-Frostwolf>",
		[34940] = "Nexuswandler",
		[85690] = "Flinkschweifläufer",
		[44534] = "Getriebener Schläger",
		[258333] = 3,
		[34922] = "Nexusschrecken",
		[315098] = "Ma'ut",
		[113899] = "Unbekannt <Рудрапраяг-Гордунни>",
		[61305] = 8,
		[114923] = 8,
		[265092] = 3,
		[316286] = "Abgrundbeobachter",
		[270495] = "[*] Heilungsflut",
		[274373] = 6,
		[316287] = "Abgrundbeobachter",
		[260547] = "Seelengebundener Goliath",
		[307945] = "[*] Umbraleruption",
		[256452] = 7,
		[273285] = "Instabile Kapsel",
		[120043] = 12,
		[216521] = 10,
		[260700] = "Schwester Gebrecht",
		[273286] = 3,
		[113900] = "Unbekannt <Рудрапраяг-Гордунни>",
		[81441] = "Millhaus Manasturm",
		[246918] = "Schwelendes Skelett",
		[115436] = "Wüter der Krik'thik",
		[275335] = 1,
		[91143] = 11,
		[33917] = 11,
		[202188] = 7,
		[265407] = "Bankettbediensteter",
		[119607] = 10,
		[313737] = "Abgrundbeobachter",
		[273289] = 3,
		[316292] = "Abgrundbeobachter",
		[257478] = "Mastiff der Eisenfluträuber",
		[201336] = 9,
		[32251] = "Wilder Schattenspalt <Großhexenmeister Nethekurse>",
		[130283] = 10,
		[32182] = 7,
		[260551] = "Seelengebundener Goliath",
		[22720] = 4,
		[190927] = 3,
		[207311] = 6,
		[202192] = 7,
		[84721] = 8,
		[275340] = "Nachtschuppenwindnatter",
		[255579] = "Priesterin Alun'za",
		[295818] = "Hexe der Azsh'ari",
		[31935] = 2,
		[275341] = "Nachtschuppenechsenzahn",
		[257480] = 7,
		[176594] = 2,
		[273294] = "[*] Lauffeuer",
		[275342] = "Hellschuppenechsenzahn",
		[49020] = 6,
		[114999] = "Verderbter Taran Zhu",
		[57723] = 1,
		[275343] = "Nachtschuppenechsenzahn",
		[108271] = 7,
		[6673] = 1,
		[218574] = 10,
		[6353] = 9,
		[261577] = 5,
		[34942] = "Astraler Dunkelzauberer",
		[198097] = 4,
		[275345] = "Himmelsviper",
		[260698] = "Schwester Solena",
		[275347] = "Himmelsviper",
		[297871] = 3,
		[275346] = "Nachtschuppenkreischer",
		[279729] = 11,
		[45181] = 4,
		[273299] = 10,
		[256459] = 9,
		[216528] = 7,
		[295825] = "Orgozoa",
		[259531] = "Totem der Wiederbelebung",
		[264352] = 8,
		[204242] = 2,
		[85948] = 6,
		[70460] = "Frost Freeze Trap",
		[256460] = 1,
		[257814] = "Jes Knurris",
		[129262] = "Gekkan",
		[273298] = 10,
		[162264] = 12,
		[178787] = 5,
		[263064] = "Königliche Schreckenswache",
		[96499] = 12,
		[275351] = 12,
		[224721] = "Windruferin Mariah",
		[33919] = "Tavarok",
		[259533] = "[*] Azeritkatalysator",
		[118000] = 1,
		[263345] = "Schwere Kanone",
		[241243] = "Anbeterin von Elune",
		[81141] = 6,
		[128239] = "Gurthanschnellklinge",
		[120560] = "Gurthaneisenschlund",
		[80117] = "Rasender Schleifwurm",
		[306070] = "Ma'ut",
		[244176] = 9,
		[212436] = 3,
		[279450] = 12,
		[45438] = 8,
		[207317] = 6,
		[285594] = 10,
		[265392] = "Bankettbediensteter",
		[312490] = "Furorion",
		[45182] = 4,
		[130356] = 10,
		[304025] = "Vizja'ra",
		[198103] = 7,
		[287638] = 3,
		[269214] = 2,
		[295835] = 5,
		[281501] = 10,
		[128238] = "Gurthanschnellklinge",
		[296673] = "Sturmling <Sturmruferin der Azsh'ari>",
		[304027] = "Arkane Bombe",
		[2643] = 3,
		[298154] = 6,
		[25025] = "Schamane des Kriegshymnenklans",
		[280184] = 10,
		[210391] = 2,
		[283551] = "Omegabrecher",
		[273310] = 5,
		[295838] = 8,
		[97462] = 1,
		[312595] = "Drest'agath",
		[120562] = "Harthaksturmrufer",
		[311160] = 3,
		[61309] = 5,
		[267171] = 9,
		[196058] = "Sklave der Bittergischt",
		[295840] = 8,
		[196059] = "Sklave der Bittergischt",
		[275363] = "Knöchelhauersilberrücken",
		[200154] = "Geschmolzene Kohlhaut <Dargrul>",
		[255575] = "Priesterin Alun'za",
		[243157] = "Domatrax",
		[197214] = 7,
		[69369] = 11,
		[295842] = 2,
		[285603] = 10,
		[231895] = 2,
		[293795] = 11,
		[259191] = "Yazma",
		[288756] = 12,
		[275366] = "Knöchelhauerstampfer",
		[196060] = "Sklave der Bittergischt",
		[287653] = 4,
		[255445] = "Rezan",
		[106807] = "Uuk-Uuk",
		[224729] = "Aqirskarabäus",
		[275368] = "Flinkschweifpirscher",
		[2649] = "Hati <Âlysiâ>",
		[34433] = 5,
		[256816] = 1,
		[304037] = 7,
		[205021] = 8,
		[167105] = 1,
		[213771] = 11,
		[273323] = 7,
		[127220] = 6,
		[275370] = "Knöchelhauerstampfer",
		[198111] = 8,
		[2825] = 7,
		[289705] = "Hochtüftler Mekkadrill",
		[11426] = 8,
		[257495] = "Die Sandkönigin",
		[285613] = "Malfurion Sturmgrimm",
		[273324] = 7,
		[31553] = "Wachposten der Zerschmetterten Hand",
		[310184] = "Psychus",
		[156132] = 12,
		[70395] = "Bastionsdiener",
		[196064] = "Lauerer der Salzschuppen",
		[269230] = "Reban",
		[287660] = 9,
		[281517] = 6,
		[275374] = "Knöchelhauerstampfer",
		[204255] = 12,
		[90361] = "Hati <Âlysiâ>",
		[275375] = "Knöchelhauerstampfer",
		[256473] = "Feuerstacheldominator",
		[269232] = "Reban",
		[279471] = 11,
		[297901] = "Spritzbot",
		[260569] = "[*] Lauffeuer",
		[187874] = 7,
		[275377] = "Knöchelhauersilberrücken",
		[70396] = "Bastionsdiener",
		[256474] = "[*] Herzstoppergift",
		[275378] = 9,
		[295855] = 8,
		[273330] = 8,
		[260570] = "[*] Lauffeuer",
		[125174] = 10,
		[295856] = "Wächter von Azeroth <Aylan-Pozzodell'Eternità>",
		[227807] = "Odyn",
		[80184] = "Haudrauf des Steinernen Kerns",
		[108280] = 7,
		[304048] = "Sak'ja",
		[109304] = 3,
		[13730] = "Jarud",
		[257620] = 3,
		[304049] = "Sak'ja",
		[261440] = "Lord Kronsteig",
		[309698] = "Schlägertentakel",
		[269238] = 3,
		[282249] = "Ranah Säbelklaue",
		[256477] = "Sägezahnhai",
		[235999] = 1,
		[318385] = "Valeera Sanguinar",
		[310195] = 12,
		[265144] = 5,
		[57984] = "Großer Feuerelementar <Zavish-Antonidas>",
		[108281] = 7,
		[312243] = 1,
		[289718] = "Nathanos Pestrufer",
		[275384] = "Funkenelementar <Lecca-Turalyon>",
		[187878] = 7,
		[253562] = "Augur der Dazar'ai",
		[2379] = 6,
		[118699] = 9,
		[30146] = 9,
		[240213] = "Gefallener Avatar",
		[282182] = "Hochtüftler Mekkadrill",
		[269242] = 11,
		[298152] = 7,
		[271194] = 4,
		[22723] = 6,
		[69882] = "Hierophantin der Himmelsbrecher",
		[200166] = 12,
		[304056] = 2,
		[289722] = "Nathanos Pestrufer",
		[199143] = "Latosius",
		[204262] = 7,
		[312248] = 12,
		[257618] = "Peter der Leisetreter",
		[158188] = 4,
		[191976] = "Hyrja",
		[263103] = "Nichtsnutziger Assistent",
		[80638] = "Brühender Felselementar",
		[205472] = 8,
		[204263] = 5,
		[115450] = 10,
		[289725] = "Kommandant Breitseite",
		[275391] = 7,
		[285630] = 3,
		[263105] = "Nichtsnutziger Assistent",
		[278444] = "Verschlingende Made",
		[198121] = 8,
		[118522] = 7,
		[308158] = "Ma'ut",
		[289727] = "Gnomischer Kommandosoldat",
		[265377] = "Fanatischer Kopfjäger",
		[310205] = "Furorion",
		[304063] = "Schockbot",
		[306111] = "Furorion",
		[72960] = "Sinistrer Adliger",
		[310206] = "[*] Essenz entziehen",
		[188907] = "Verdammnisbringer der Schattenteufel",
		[222695] = 4,
		[300188] = "Waffenfähiger Krabbler",
		[231434] = 4,
		[304064] = 11,
		[273348] = 10,
		[267205] = 4,
		[285635] = "Tyrande Wisperwind",
		[304065] = "Sak'ja",
		[273349] = 11,
		[256484] = "Rostpelzknurrer",
		[293827] = "Tüftlerin von Mechagon",
		[265157] = 3,
		[274212] = "Ertrunkener Tiefenbringer",
		[275398] = 9,
		[236115] = "Priesterin Lunazenit",
		[304067] = "Sak'ja",
		[306115] = "Ra-den",
		[155722] = 11,
		[279709] = 11,
		[257616] = "Peter der Leisetreter",
		[281543] = 2,
		[128304] = "Shado-Pan-Schüler",
		[58450] = 6,
		[5394] = 7,
		[314308] = "Urg'roth der Heldenbrecher",
		[273354] = 10,
		[281545] = 10,
		[304070] = "[*] Arkanado",
		[314309] = "Urg'roth der Heldenbrecher",
		[267211] = 9,
		[196078] = "Amalgam der Seelen",
		[264130] = 9,
		[115453] = "Spitzel der Krik'thik",
		[200174] = 5,
		[277451] = "Firmenfeldmesser",
		[308168] = "Ma'ut",
		[289738] = "Brynja",
		[267213] = 9,
		[289737] = "Verteid-o-bot",
		[287691] = "Hochtüftler Mekkadrill",
		[241130] = "[*] Mondfeuer",
		[255567] = "T'lonja",
		[200175] = 12,
		[276945] = "Mauerbrecher Ha'vik",
		[49028] = 6,
		[114942] = "Unbekannt <Rûmburak>",
		[318409] = "Shath'Yarschreiberin",
		[12323] = 1,
		[265168] = "Rummy Mancomb",
		[289741] = "Brynja",
		[285646] = 11,
		[279503] = 6,
		[271903] = "Münzbetriebener Meuteverprügler",
		[308172] = "Gefallene Leerensprecherin",
		[228845] = "Splitterknochenskelett",
		[197105] = "Arkanistin der Hassnattern",
		[306125] = "Valeera Sanguinar",
		[297935] = 5,
		[269266] = "Verwüstender Schrecken",
		[279505] = 7,
		[202225] = 1,
		[278518] = 2,
		[277458] = "Firmenstellvertreterin",
		[82691] = 8,
		[115455] = "Unterbrecher der Krik'thik",
		[296086] = 11,
		[6770] = 4,
		[308177] = "[*] Entropische Ansammlung",
		[316368] = "Wächter des Anubisath",
		[38534] = "Bewahrerin der Zeitrisse",
		[310224] = 12,
		[63619] = "Geistbeuger <Qentins-Blackhand>",
		[132603] = 5,
		[256492] = 1,
		[128766] = "Shado-Pan-Lauerer",
		[190446] = 8,
		[228848] = "Splitterknochenskelett",
		[308178] = "Ka'zir",
		[261612] = "Alchemistin der Verlassenen",
		[20549] = 1,
		[123647] = "Gurthaneisenschlund",
		[278911] = 11,
		[256589] = "Käpt'n Raoul",
		[265368] = "Bezirzter Hauptmann",
		[297941] = 9,
		[197626] = 11,
		[294036] = "Stinkfellklopfer",
		[226943] = 5,
		[123646] = "Gurthaneisenschlund",
		[80180] = "Haudrauf des Steinernen Kerns",
		[127802] = 1,
		[34321] = 8,
		[316609] = "Terrortentakel",
		[200182] = "Schemen von Xavius",
		[314326] = "Zerschmetterndes Tentakel",
		[15587] = "Akolyth des Schattenmondklans",
		[123648] = "Harthaksturmrufer",
		[37511] = "Wachposten der Zerschmetterten Hand",
		[54149] = 2,
		[47750] = 5,
		[202230] = "Steinklauenlarvenmeister",
		[38535] = "Bewahrerin der Zeitrisse",
		[55173] = 12,
		[269279] = 11,
		[103171] = "[*] Verseuchte Pfeile",
		[256496] = 1,
		[200183] = 5,
		[258544] = "Jes Knurris",
		[121601] = "Harthaksturmrufer",
		[299995] = "Oberanführerin Geya'rah",
		[261616] = "Katy Stanzpfeife <Draconus-Ulduar>",
		[8676] = 4,
		[115458] = "[*] Säurebombe",
		[228853] = "Gezeitenhexe der Kvaldir",
		[265364] = "Seuchenkröte",
		[77575] = 6,
		[234996] = 10,
		[308188] = 2,
		[293854] = "Tüftlerin von Mechagon",
		[274389] = "[*] Rattenfallen",
		[277473] = "Firmenstellvertreterin",
		[308189] = 1,
		[269282] = 5,
		[287712] = 11,
		[265187] = 9,
		[72968] = 2,
		[277474] = "Firmenstellvertreterin",
		[263140] = 3,
		[107268] = "Saboteur Kip'tilak",
		[45470] = 6,
		[316384] = "Wächter des Anubisath",
		[64901] = 5,
		[265189] = 3,
		[316383] = "Wächter des Anubisath",
		[302049] = "Amniotische Eruption <Zoatroid>",
		[267410] = 2,
		[70409] = "Sinistre Erzmagierin",
		[275429] = 9,
		[277479] = "Hrolskald der Stinkende",
		[304098] = "Zsal'iss",
		[218617] = 1,
		[283621] = "Schimäre der Kaldorei <Cinammon-DerRatvonDalaran>",
		[59547] = 7,
		[279526] = 11,
		[123651] = "Kargeshrippenbrecher",
		[283623] = "Schimäre der Kaldorei <Dëliriux-Exodar>",
		[293861] = "Antipersoneneichhörnchen <Tüftlerin von Mechagon>",
		[259574] = "Vol'kaal",
		[185854] = "Alptraumreiter",
		[85256] = 2,
		[277480] = "Deuter Brinvulf",
		[69898] = "Primalist der Kor'kron",
		[297958] = "Leerenbefallener Koloss",
		[250360] = "Vyliss",
		[277481] = "Skelettwächter",
		[94472] = 5,
		[289768] = "Verteid-o-bot",
		[283625] = "Schimäre der Kaldorei <Cinammon-DerRatvonDalaran>",
		[310246] = "Drest'agath",
		[188927] = "Verdammnisbringer der Schattenteufel",
		[123652] = "Kargeshrippenbrecher",
		[11428] = "Fürst der Zeitenrisse",
		[277483] = "Mystiker der Blutgischt",
		[287722] = 5,
		[257609] = "Die Sandkönigin",
		[38537] = 9,
		[69387] = "Jünger der Todessprecher",
		[69899] = "Hierophant der Himmelsbrecher",
		[289771] = "Verteid-o-bot",
		[305286] = 11,
		[298124] = "Schmierer",
		[121093] = 10,
		[185857] = "Aschenwindmarinesoldat",
		[195072] = 12,
		[277486] = "Fleischmoderrunenweber",
		[32906] = 10,
		[179183] = 5,
		[29893] = 9,
		[75531] = 7,
		[210824] = 8,
		[277482] = "Kachota der Verbannte",
		[283631] = "Schimäre der Kaldorei <Cinammon-DerRatvonDalaran>",
		[176644] = 2,
		[294027] = 2,
		[265202] = 5,
		[17735] = "Korrorax <Bêllatrîx-Teldrassil>",
		[192002] = 3,
		[279537] = 11,
		[44425] = 8,
		[77066] = "Druide des Zweigs <Quinsy-Blackhand>",
		[298122] = "Abyssalkommandantin Sivara",
		[127230] = 11,
		[123654] = "Ming der Verschlagene",
		[204366] = 7,
		[287995] = "Schwester Katharina",
		[304112] = 1,
		[69901] = "Verteidiger der Kor'kron",
		[38538] = "Chronolord Deja",
		[196099] = 9,
		[287731] = 2,
		[233983] = "Belac",
		[279541] = 11,
		[269302] = "Auftragsmörder",
		[48265] = 6,
		[223819] = 2,
		[198222] = 4,
		[318449] = "N'Zoth der Verderber",
		[221771] = 10,
		[123655] = "Haiyan der Unaufhaltsame",
		[267256] = "Totem des Erdwalls",
		[200196] = 5,
		[192005] = "Arkane Hydrabrut",
		[277495] = "Harpunierin der Blutgischt",
		[162313] = 1,
		[318451] = "N'Zoth der Verderber",
		[69902] = "Beschützer der Himmelsbrecher",
		[198149] = 8,
		[269231] = "Reban",
		[318452] = 7,
		[252550] = 1,
		[277496] = "Harpunierin der Blutgischt",
		[97547] = 11,
		[308357] = "Gefallener Herzdurchbohrer",
		[53385] = 2,
		[155145] = 2,
		[57822] = 9,
		[263165] = 5,
		[279547] = "Rhonin",
		[306168] = "Unbekannt",
		[275452] = "Fleischmoderpesthund",
		[69391] = "Jünger der Todessprecher",
		[69903] = "Beschützer der Himmelsbrecher",
		[250368] = "Vol'kaal",
		[190984] = 11,
		[38539] = "Chronolord Deja",
		[285691] = 9,
		[215558] = 5,
		[48778] = 6,
		[228868] = "Gezeitenhexe der Kvaldir",
		[180746] = 9,
		[107275] = "Umhüller der Krik'thik",
		[158221] = 10,
		[241155] = "Leutnant Silbermacht",
		[304124] = 11,
		[23239] = 7,
		[8613] = 10,
		[269313] = "Zerstörungswütige Pionierin",
		[257537] = 8,
		[225788] = 9,
		[199177] = "Schwarzklauenworg",
		[257538] = 8,
		[294020] = 7,
		[200200] = 5,
		[297152] = "Leerengebundener Berserker",
		[306311] = "Geschundene Seele",
		[213512] = "Vorhut der Legion",
		[306090] = "Unbekannt",
		[38540] = "Chronolord Deja",
		[124682] = 10,
		[279555] = 11,
		[297985] = "Schmierer",
		[227847] = 1,
		[273541] = 7,
		[279684] = 8,
		[289795] = "Unbekannt",
		[199179] = "Schwarzklauenworg",
		[291843] = 11,
		[295939] = "Fliegende Unterdrückungseinheit JK-8",
		[167410] = 5,
		[57994] = 7,
		[258627] = "Erdwüter",
		[135700] = 11,
		[273415] = 1,
		[308227] = "Tek'ris",
		[257541] = 8,
		[58506] = "Schütze der Zerschmetterten Sonne",
		[300160] = "Schwerer Schrottbot",
		[283655] = "Valeera Sanguinar",
		[5171] = 4,
		[271369] = "Zgordo der Metzler",
		[30151] = "Kiz-amal <Bangonologie-Aegwynn>",
		[257542] = 8,
		[310277] = "Drest'agath",
		[120588] = 7,
		[314373] = "Aschenwandererassassine",
		[270187] = "Viq'Goth",
		[204301] = 2,
		[254471] = 2,
		[316422] = 8,
		[199182] = "Schwarzklauenworg",
		[69395] = 3,
		[223814] = 8,
		[306184] = "Ra-den",
		[283659] = "Valeera Sanguinar",
		[31687] = 8,
		[254472] = 2,
		[257544] = "Erdwüter",
		[283660] = "Valeera Sanguinar",
		[285708] = "Massives Eis",
		[271374] = 6,
		[259592] = 5,
		[283661] = "Valeera Sanguinar",
		[304253] = "Schwarzwasserorakel",
		[254473] = 2,
		[107279] = "[*] Umhüllende Winde",
		[310396] = "Auge von Drest'agath",
		[275469] = 2,
		[271376] = 1,
		[259593] = 5,
		[16979] = 11,
		[155158] = 8,
		[17481] = 6,
		[50330] = "Unbekannt",
		[256522] = 4,
		[283658] = "Valeera Sanguinar",
		[279569] = 2,
		[112911] = "Fragment des Hasses",
		[291856] = "Plasmakugel",
		[196111] = "Seegischtkrabbe",
		[1953] = 8,
		[255499] = "Dunstschuppenregenrufer",
		[271371] = "Sicherheitsoffizier Durk",
		[306163] = "Furorion",
		[228869] = "[*] Brandende Wellen",
		[273428] = 1,
		[283667] = "Valeera Sanguinar",
		[1725] = 4,
		[312336] = "Dunkle Inquisitorin Xanesh",
		[254474] = 2,
		[106808] = "Uuk-Uuk",
		[270814] = "Gezeitenherrin Nessa",
		[209426] = 12,
		[281621] = "Mechjockey",
		[276192] = 7,
		[108843] = 8,
		[118988] = "Gekkan",
		[310288] = "Drest'agath",
		[34447] = "Krapfenkerl",
		[101650] = "Fürst Hydraxis",
		[263193] = 6,
		[314387] = "Unbekannt",
		[300053] = 8,
		[209788] = 12,
		[246287] = 5,
		[275382] = "Glutelementar <Petata-AzjolNerub>",
		[275481] = 2,
		[203285] = 8,
		[291865] = "Lufteinheit R-21/X",
		[88852] = 2,
		[195094] = "Krieger der Hassnattern",
		[287771] = 10,
		[287769] = "[*] N'Zoths Aufmerksamkeit",
		[306199] = "Leerenbefallener Koloss",
		[275483] = 2,
		[285722] = 2,
		[263197] = "Schwere Kanone <Liondria-Ulduar>",
		[70423] = "Sinistrer Leutnant",
		[203286] = 8,
		[281721] = 12,
		[69911] = "Häscherin der Kor'kron",
		[314392] = "Bösartiges Geschwür",
		[283676] = "Valeera Sanguinar",
		[142878] = 3,
		[279673] = 9,
		[298011] = 9,
		[308250] = 4,
		[310298] = "Finstere Seelenschnitzerin",
		[238454] = 9,
		[300055] = 8,
		[272783] = 5,
		[304245] = "Abyssischer Speerjäger",
		[59638] = 8,
		[235028] = "Wachsame Maid",
		[300061] = 12,
		[155166] = 6,
		[69912] = "Schreckensklinge der Himmelsbrecher",
		[267385] = "Tentakel",
		[265337] = "Blutverschmiertes Ferkel",
		[279584] = 12,
		[80151] = "Magmalord des Steinernen Kerns",
		[314397] = "Samh'rek der Chaosrufer",
		[267299] = "Vol'zith der Flüsterer",
		[302111] = 11,
		[53390] = 7,
		[277623] = "Azerjuwelenkriecher",
		[306319] = "Dunkle Inquisitorin Xanesh",
		[241173] = "Umbralwache",
		[190456] = 1,
		[306208] = "Dunkle Inquisitorin Xanesh",
		[283683] = "Schimäre der Kaldorei <Cinammon-DerRatvonDalaran>",
		[122128] = 5,
		[283684] = 12,
		[230935] = 10,
		[207386] = 11,
		[114451] = "Hefiger Braubierlementar",
		[273526] = 9,
		[59544] = 5,
		[310385] = "[*] Säureschauer",
		[269351] = "T'zala",
		[196100] = 9,
		[273525] = 9,
		[314400] = "Lebendes Blut",
		[285811] = 7,
		[263209] = "Minenratte",
		[260667] = "Goldene Priesterin",
		[291878] = "Lufteinheit R-21/X",
		[228889] = "Tiefseemonstrosität",
		[271401] = "Sicherheitsoffizier Durk",
		[265258] = 5,
		[283688] = "Schimäre der Kaldorei <Cinammon-DerRatvonDalaran>",
		[30153] = "Kiz-amal <Bangonologie-Aegwynn>",
		[267308] = "Zanazal der Weise",
		[196127] = "Treibsandläufer der Mak'rana",
		[241213] = "Lunarbogenschützin",
		[228890] = "Tiefseemonstrosität",
		[304167] = "Orkanklinge der Azsh'ari",
		[11366] = 8,
		[115989] = 6,
		[310311] = "Finstere Seelenschnitzerin",
		[231998] = "Harjatan",
		[298025] = "Finsterstimmenkultistin",
		[46736] = 2,
		[293930] = "Mechaniker von Mechagon",
		[312360] = "Alleria Windläufer",
		[119573] = "[*] Feuerring",
		[308265] = "Alx'kov der Befallene",
		[267310] = "Manifestation der Tiefe",
		[112918] = "Hasserfüllte Essenz",
		[306289] = "Furorion",
		[97560] = 8,
		[300800] = 1,
		[314406] = "Leerenweber Mal'thir",
		[275499] = "Totem des Wolkenbruchs <Rûmburak>",
		[117526] = 3,
		[118038] = 1,
		[117014] = 7,
		[314411] = "Leerenweber Mal'thir",
		[236060] = 8,
		[269361] = 7,
		[69916] = "Häscher der Kor'kron",
		[239132] = "Gefallener Avatar",
		[275569] = "Dornenfellgraser",
		[70444] = "[*] Explosion",
		[44177] = "Yazzai",
		[60302] = 12,
		[236061] = "Wachsame Maid",
		[271640] = "Zuls Schatten",
		[205345] = 8,
		[83243] = 3,
		[115418] = "Windformer der Krik'thik",
		[83242] = 3,
		[257593] = "Azerokk",
		[298033] = "Dominator der K'thir",
		[316463] = "Gedankenpforte",
		[300140] = 2,
		[69917] = "Häscherin der Kor'kron",
		[283638] = "Seuchenkatapult der Verlassenen",
		[119590] = "Ring aus Feuer",
		[269366] = "Ingenieur von Kul Tiras",
		[234015] = "Belac",
		[194084] = 7,
		[195108] = "Sturmwirkerin der Hassnattern",
		[310322] = "[*] Morast der Verderbnis",
		[279606] = "Armee der Toten <Liondria-Ulduar>",
		[306228] = "Geschundene Seele",
		[296043] = 10,
		[310323] = "Vexiona",
		[202277] = "Xalian Teufelslohe",
		[265273] = 9,
		[211491] = "Magiertöterin der Eredar",
		[310324] = "Vexiona",
		[225852] = 10,
		[273465] = 7,
		[273466] = 7,
		[310325] = "Vexiona",
		[287802] = 7,
		[306230] = 3,
		[308278] = "Alleria Windläufer",
		[239162] = "Wyrmzungenplünderer",
		[263278] = "[*] Deckung",
		[267325] = 3,
		[267324] = "Trunkenbold der Bilgeratten",
		[293945] = 2,
		[152108] = 9,
		[267326] = 3,
		[46738] = 2,
		[310329] = "Drest'agath",
		[304189] = "Sturmruferin der Azsh'ari",
		[157228] = 11,
		[111898] = 9,
		[48018] = 9,
		[80158] = "Kriegshetzer des Steinernen Kerns",
		[273470] = "Schreckenskapitänin Luebke",
		[267327] = 3,
		[267330] = 3,
		[205351] = 5,
		[277569] = "Fleischmodertodeswandler",
		[115994] = 6,
		[310331] = "Geistiges Auge",
		[316477] = "Ysedra die Verdunklerin",
		[212520] = 1,
		[267329] = 3,
		[8679] = 4,
		[69920] = "Pirscherin der Kor'kron",
		[314430] = "[*] Nachwirkendes Blut",
		[207400] = 7,
		[310333] = "Geistiges Auge",
		[287808] = 11,
		[287810] = 11,
		[267331] = 3,
		[318525] = "Shath'Yarschreiberin",
		[260643] = 1,
		[255523] = "Firmenstellvertreterin",
		[112933] = "Verbleibender Hass",
		[308288] = "Alleria Windläufer",
		[46227] = "Kriegsherr Salaris",
		[243237] = "[*] Platzen",
		[46739] = 2,
		[304193] = "Sturmruferin der Azsh'ari",
		[287811] = 11,
		[289859] = "Gnomischer Kommandosoldat",
		[271465] = 9,
		[192044] = "Hyrja",
		[296003] = 10,
		[314433] = "Lebendes Blut",
		[263274] = "Himmelskäpt'n Kragg",
		[277575] = "Kriegsmaid der Blutgischt",
		[275560] = "Obsidianbannschuppe",
		[30283] = 9,
		[275540] = 1,
		[285766] = 3,
		[296008] = "Zinnoberroter Wächter",
		[235048] = "Zornfürst Akrazar",
		[236072] = "Seelenkönigin Dejahna",
		[310340] = "Ka'zir",
		[46740] = 2,
		[273481] = 2,
		[300102] = "Defekter Schrottbot",
		[87840] = 6,
		[143924] = 11,
		[291915] = "[*] Plasmakugel",
		[178740] = 12,
		[178741] = 12,
		[263244] = "Sonnenbringer Firasi",
		[298056] = "Lady Aschenwind",
		[256551] = "Sägezahnhai",
		[318534] = "Umbraltorwächter",
		[17229] = 2,
		[243241] = 5,
		[291914] = "[*] Schneidestrahl",
		[93985] = 11,
		[271462] = 7,
		[70435] = "Sinistrer Leutnant",
		[256552] = "Sägezahnhai",
		[48020] = 9,
		[242218] = 1,
		[60307] = 1,
		[32587] = "Champion der Zerschmetterten Hand",
		[318537] = "Unbekannt",
		[148022] = 8,
		[16589] = 11,
		[256553] = "Sägezahnhai",
		[236077] = 1,
		[106784] = 8,
		[291922] = "K.U.-J.0.",
		[211503] = "Magiertöterin der Eredar",
		[204336] = 7,
		[316496] = "Herzdurchbohrer der Aqir",
		[119582] = 10,
		[215599] = 1,
		[192050] = "Serpentrix",
		[121118] = 3,
		[211513] = "Magiertöterin der Eredar",
		[316493] = 3,
		[44949] = 1,
		[287825] = 7,
		[53652] = 2,
		[277590] = "Deuter Brinvulf",
		[195125] = 3,
		[112929] = "Unbekannt <Verderbter Taran Zhu>",
		[202290] = "Xalian Teufelslohe",
		[236078] = 10,
		[310352] = "Schlund von Drest'agath",
		[287827] = 7,
		[306257] = "[*] Instabile Vita",
		[79140] = 4,
		[257580] = "Die Sandkönigin",
		[291937] = 4,
		[314449] = "Lebendes Blut",
		[267351] = 9,
		[269399] = "Vol'zith der Flüsterer",
		[106785] = 11,
		[302166] = "Fliegende Unterdrückungseinheit JK-8",
		[300116] = 3,
		[100130] = 1,
		[33943] = 11,
		[314451] = "Schröpfender Parasit",
		[308308] = "Gefallener Herzdurchbohrer",
		[279641] = 11,
		[69926] = "Orakel der Kor'kron",
		[314452] = "Schröpfender Parasit",
		[267354] = "Auftragsmörder",
		[257582] = "Erdwüter",
		[193078] = "Lichtjägerin des SI:7",
		[26573] = 2,
		[291928] = "Lufteinheit R-21/X",
		[267357] = "Auftragsmörder",
		[296024] = 1,
		[287835] = 10,
		[211510] = 12,
		[8936] = 11,
		[296025] = "Fliegende Unterdrückungseinheit JK-8",
		[191034] = 11,
		[291930] = "Gepresster Schrott",
		[277596] = "Bodalf der Starke",
		[69927] = "Bezwinger der Kor'kron",
		[316506] = "Herzdurchbohrer der Aqir",
		[267358] = "Trunkenbold der Bilgeratten",
		[310361] = "Drest'agath",
		[287836] = 10,
		[314457] = "Schröpfender Parasit",
		[32588] = "Champion der Zerschmetterten Hand",
		[114466] = "Schaumwall",
		[287837] = 10,
		[271456] = "Mogul Ratztunk",
		[267360] = "Vol'zith der Flüsterer",
		[200248] = "Auferstandener Arkanist",
		[312411] = 4,
		[219697] = "Folterer der Inquisition",
		[273453] = 7,
		[8680] = 4,
		[279648] = 11,
		[257585] = "[*] Kanonensperrfeuer",
		[70952] = "Prinz Valanar",
		[192058] = 7,
		[112931] = "Fragment des Hasses",
		[142910] = 2,
		[263262] = "Schieferbeißer",
		[228918] = "Odyn",
		[205369] = 5,
		[35479] = 11,
		[316510] = "[*] Gespaltene Persönlichkeit",
		[287831] = 10,
		[275544] = 5,
		[277589] = "Deuter Brinvulf",
		[300129] = "Defekter Schrottbot",
		[293986] = "Rumsatron X-80",
		[69929] = "Frostbinderin der Ymirjar",
		[306273] = 2,
		[291939] = "[*] Gigaschock",
		[71465] = "Schwester Svalna",
		[112932] = "Verbleibender Hass",
		[289871] = "Tyrande Wisperwind",
		[310348] = "Tentakel von Drest'agath",
		[291918] = "Fliegende Klaue",
		[296036] = 10,
		[196144] = "Treibsandläufer der Mak'rana",
		[191037] = 11,
		[310343] = "Unbekannt <Ka'zir>",
		[306247] = "[*] Einäscherung",
		[314467] = "Explosiver Skarabäus",
		[85288] = 1,
		[189998] = 2,
		[69930] = "Bezwinger der Kor'kron",
		[239145] = "Wyrmzungenplünderer",
		[59542] = 2,
		[189999] = 2,
		[263275] = "Vorarbeiter Askari",
		[298087] = "Orgozoa",
		[291944] = 2,
		[269419] = "[*] Gähnendes Tor",
		[302143] = 9,
		[306279] = 2,
		[224806] = "Ekelwanst",
		[256546] = "Trothak",
		[271468] = 9,
		[60305] = 1,
		[291946] = "K.U.-J.0.",
		[204350] = 7,
		[31821] = 2,
		[70443] = "[*] Explosion",
		[300087] = "Mechaniker der Kolbenköppe",
		[312568] = "[*] Konzentriertes Toxin",
		[193088] = "König Klafterbart",
		[306229] = 3,
		[48792] = 6,
		[269369] = "T'zala",
		[287797] = "Hochtüftler Mekkadrill",
		[16591] = 11,
		[291949] = "K.U.-J.0.",
		[200256] = "Arkaner Diener",
		[108839] = 8,
		[281711] = 1,
		[275568] = "Dornenfellbulle",
		[113942] = 9,
		[59543] = 3,
		[255546] = 4,
		[300142] = 8,
		[233021] = "[*] Höllenstachel",
		[287790] = 11,
		[281713] = 6,
		[260666] = "Goldene Priesterin",
		[267311] = "Manifestation der Tiefe",
		[24394] = "Unicorn <Véro>",
		[275571] = "Zwielichtdrakonaar",
		[291953] = "Gepresster Schrott",
		[192067] = "Hyrja",
		[263285] = "Phönixmagierin Ryleia",
		[54680] = "Elektro <Mandrasal-Blackmoore>",
		[300145] = 4,
		[269429] = "Kriegsmaschine der Venture Co.",
		[267270] = 2,
		[111400] = 9,
		[275573] = "Dornenfellmoschushirsch",
		[48025] = 8,
		[277505] = "Fleischmodertodeswandler",
		[306290] = "Ma'ut",
		[260668] = "Goldene Priesterin",
		[235027] = 4,
		[69934] = "Bezwinger der Kor'kron",
		[291874] = "Fliegende Klaue",
		[83244] = 3,
		[257597] = "Azerokk",
		[193093] = "König Klafterbart",
		[314483] = "Samh'rek der Chaosrufer",
		[260669] = "Rixxa Fluxflamme",
		[42650] = 6,
		[127271] = 8,
		[263202] = "Erdformer der Venture Co.",
		[316532] = "Williges Opfer",
		[23881] = 1,
		[258622] = "Azerokk",
		[298103] = "Orgozoa",
		[316533] = "Spross von Shad'har",
		[61336] = 11,
		[215572] = 1,
		[306295] = "[*] Verbotenes Mana",
		[256578] = 1,
		[268893] = 2,
		[160331] = 12,
		[306296] = "Ma'ut",
		[242473] = 11,
		[34861] = 5,
		[160597] = 5,
		[281724] = 8,
		[228361] = 5,
		[304113] = 1,
		[296059] = 10,
		[279572] = 5,
		[105771] = 1,
		[114954] = 8,
		[116011] = 8,
		[16592] = "Astraler Dunkelzauberer",
		[316538] = "Spross von Shad'har",
		[267257] = "Totem des Donners",
		[296061] = 6,
		[298109] = 10,
		[50842] = 6,
		[318587] = "Gnominator G-800",
		[59545] = 6,
		[265346] = "Unheilschwingenrabe",
		[70960] = "Die Verdammten",
		[294015] = "Rumsatron X-80",
		[228875] = "Dunkler Seraph",
		[265347] = "Unheilschwingenrabe",
		[300159] = "Schwerer Schrottbot",
		[212552] = 6,
		[205385] = 5,
		[287751] = "Hochtüftler Mekkadrill",
		[240197] = "Käpt'n Grünbauch",
		[10789] = 12,
		[296065] = 2,
		[123904] = 10,
		[38556] = "Speerwerfer der Dunkelspeere",
		[115419] = "Windformer der Krik'thik",
		[205386] = 5,
		[70449] = "Sinistrer Kommandant",
		[70961] = "Die Verdammten",
		[265372] = "Bezauberte Wache",
		[258628] = "[*] Resonantes Erdbeben",
		[202315] = "Sturmschneisenhydra",
		[204226] = 3,
		[310402] = "[*] Verschlingende Raserei",
		[287877] = "Explodierendes Schaf",
		[265352] = "Seuchenkröte",
		[291973] = "K.U.-J.0.",
		[310403] = "[*] Verschlingende Raserei",
		[115360] = 7,
		[260067] = "Robbi Knurris <Jes Knurris>",
		[291974] = "König Mechagon",
		[101643] = 10,
		[304261] = "Schwarzwasserorakel",
		[255558] = "[*] Unreines Blut",
		[267402] = 2,
		[118936] = "Orakel der Glintrok",
		[307317] = "Vexiona",
		[251463] = 12,
		[275594] = "Dornenfellbulle",
		[310406] = "[*] Leerenblick",
		[296072] = 7,
		[239177] = 10,
		[291977] = 3,
		[277643] = "Deuter Brinvulf",
		[62618] = 5,
		[269456] = "Viq'Goth",
		[308360] = "Krabbler der Aqir",
		[285835] = 10,
		[119085] = 10,
		[230987] = 3,
		[275597] = "Dornenfellbulle",
		[257608] = "Die Sandkönigin",
		[183811] = 2,
		[269298] = "Auftragsmörder",
		[300171] = "Schwerer Schrottbot",
		[243299] = "Hexenmeister des Schattenrats",
		[188031] = 5,
		[57755] = 1,
		[116014] = 8,
		[192081] = 11,
		[39049] = "Aeonus",
		[101168] = 1,
		[107270] = 10,
		[237132] = 1,
		[287887] = "Schwester Katharina",
		[281744] = 9,
		[300174] = 4,
		[259572] = "Vol'kaal",
		[258634] = "Aschenwindflammenschleuderin",
		[306146] = 8,
		[308366] = "Inquisitor Dunkelwort",
		[171457] = 3,
		[296080] = "Fliegende Unterdrückungseinheit JK-8",
		[230990] = "Odyn",
		[123649] = "Kargeshrippenbrecher",
		[231442] = 7,
		[234995] = 10,
		[71943] = "Prinz Keleseth",
		[300177] = "Schwerer Schrottbot",
		[237134] = 1,
		[287891] = "[*] Schafschrapnell",
		[265366] = "Aqualing",
		[70965] = "Bruthüter der Nerub'ar",
		[294035] = "Stinkfellrandalierer",
		[112944] = "Hopsallus",
		[316337] = 1,
		[261602] = 6,
		[253517] = "Bekenner der Dazar'ai",
		[6262] = 2,
		[28880] = 1,
		[49821] = 5,
		[294037] = "Stinkfellklopfer",
		[311041] = "Umbraseherin",
		[290461] = 10,
		[260685] = "Älteste Leaxa",
		[315391] = 12,
		[59548] = 8,
		[289745] = "Schildwache der Kaldorei",
		[308373] = "Unbekannt",
		[294039] = 12,
		[112945] = "Hopsallus",
		[265371] = "Bezirzter Hauptmann",
		[275610] = "Dornenfellgraser",
		[312266] = "Aschenwandererassassine",
		[63106] = 9,
		[107314] = "Beschützer der Krik'thik",
		[308375] = "Gefallene Leerensprecherin",
		[67713] = 9,
		[54429] = "Funkenbesprühter Krieger",
		[38533] = "Bewahrerin der Zeitrisse",
		[15785] = "Manasauger",
		[255577] = "Priesterin Alun'za",
		[279490] = 7,
		[298138] = 1,
		[256592] = "Dorp",
		[183897] = "Großverteidigerin",
		[80182] = "Betrunkener Raufbold der Ho-zen",
		[17619] = 11,
		[32592] = 5,
		[212566] = "Gallenspucker der Verlassenen",
		[272382] = "Flinkschweifläufer",
		[265376] = "Fanatischer Kopfjäger",
		[223829] = 6,
		[257617] = "Die Sandkönigin",
		[275394] = 7,
		[2139] = 8,
		[308380] = "Inquisitor Dunkelwort",
		[285855] = "Sira Mondhüter",
		[315161] = "Auge der Verderbnis",
		[314298] = 12,
		[256594] = "Käpt'n Raoul",
		[192090] = 11,
		[128248] = "Shado-Pan-Lauerer",
		[297117] = 7,
		[10444] = 7,
		[285857] = "Sira Mondhüter",
		[23922] = 1,
		[270196] = 11,
		[283810] = 1,
		[8004] = 7,
		[279715] = 8,
		[265725] = "Spinne der Borstenstachler",
		[211545] = 11,
		[269239] = 3,
		[197211] = 7,
		[298146] = 3,
		[315305] = "[*] Verbotenes Mana",
		[56222] = 6,
		[271526] = "Erdwüter",
		[298197] = 2,
		[18499] = 1,
		[294052] = 7,
		[229976] = 2,
		[318378] = 6,
		[316578] = "Dreliana",
		[33697] = 7,
		[108853] = 8,
		[314531] = "Unersättliches Fleischmonster",
		[267433] = "Mechjockey",
		[267179] = 4,
		[285500] = 11,
		[19647] = "Zhaadom <Galladan-Taerar>",
		[270590] = "Verwüstender Schrecken",
		[257622] = 3,
		[273312] = 5,
		[157153] = 7,
		[280869] = 2,
		[22482] = 4,
		[312486] = "Blut von Ny'alotha",
		[115509] = "Shado-Pan-Hüter",
		[187650] = 3,
		[283534] = "Magnetarm",
		[15232] = "Dunkelzauberer des Schattenmondklans",
		[315072] = "Seuchenwachenhauptmann Thedric",
		[198839] = "Unbekannt <Rûmburak>",
		[294058] = "Hochexplosive Rakete",
		[304297] = "Berstender Klippenfisch",
		[214621] = 5,
		[256600] = "Dorp",
		[202761] = 3,
		[287916] = 3,
		[265391] = "Bankettbediensteter",
		[260696] = "Schwester Gebrecht",
		[193864] = 12,
		[229980] = 10,
		[298156] = "Orgozoa",
		[124213] = 6,
		[294061] = "Schreitpanzer",
		[217694] = 8,
		[265393] = "Bankettbediensteter",
		[260697] = "Schwester Dornstrauch",
		[316307] = "Blick des Wahnsinns",
		[263346] = 5,
		[127797] = 11,
		[316588] = "Velinaria",
		[55164] = 3,
		[271538] = 2,
		[27584] = "Kriegsherr Salaris",
		[300207] = "Waffenfähiger Krabbler",
		[294064] = "Schreitpanzer",
		[271539] = 2,
		[3355] = 3,
		[255434] = "Rezan",
		[212431] = 3,
		[275344] = "Hellschuppenkreischer",
		[298161] = 10,
		[260699] = "Schwester Solena",
		[269493] = "Münzbetriebener Meuteverprügler",
		[12542] = "Bewahrerin der Zeitrisse",
		[70461] = "Frost Freeze Trap",
		[284702] = "Späher der Dunkelschuppen",
		[93337] = 11,
		[190925] = 3,
		[243294] = "[*] Teufelsschnitter",
		[300211] = "Waffenfähiger Krabbler",
		[257476] = "Mastiff der Eisenfluträuber",
		[271543] = 11,
		[255581] = "Priesterin Alun'za",
		[299905] = 12,
		[33623] = 9,
		[271544] = 11,
		[243295] = "Ankläger Gnazh",
		[260701] = "Schwester Dornstrauch",
		[294070] = "Gelbzahn",
		[190919] = 11,
		[255582] = "[*] Geschmolzenes Gold",
		[256446] = "Dorp",
		[302262] = 7,
		[234081] = 11,
		[267999] = "Finsteres Scheusal",
		[260702] = "[*] Instabiles Runenmal",
		[302263] = 2,
		[287929] = "Hochtüftler Mekkadrill",
		[298168] = 2,
		[15530] = "Yazzai",
		[294073] = "Schreitpanzer",
		[279739] = 11,
		[316275] = 6,
		[260703] = "Schwester Gebrecht",
		[297845] = 2,
		[274281] = 11,
		[280398] = 5,
		[255586] = 2,
		[270280] = "Hund von Gazzran",
		[271550] = 2,
		[24275] = 2,
		[176151] = 3,
		[198664] = 10,
		[115002] = "Verderbter Taran Zhu",
		[185245] = 12,
		[124217] = 7,
		[154796] = 11,
		[263725] = 8,
		[289982] = 8,
		[260705] = 7,
		[17364] = 7,
		[296126] = 10,
		[265410] = "Feiernder von Kronsteig",
		[268122] = "Schwester Dornstrauch",
		[192106] = 7,
		[152175] = 10,
		[243300] = "Hexenmeister des Schattenrats",
		[267459] = "Vergessener Bewohner",
		[157122] = 2,
		[271555] = "Bestattungskonstrukt",
		[265412] = 9,
		[116027] = "Hopfer",
		[302272] = "Fliegende Unterdrückungseinheit JK-8",
		[38052] = "Teufelsvernichter",
		[210537] = "Garzareth",
		[228321] = "Geistfetzer der Kvaldir",
		[302273] = 8,
		[845] = 1,
		[39332] = "Nexuswandler",
		[292035] = "K.U.-J.0.",
		[302274] = "Panzerknacker Mk. I",
		[171454] = 3,
		[202347] = 11,
		[260708] = 1,
		[215479] = 10,
		[271559] = 2,
		[231016] = "Unbekannt",
		[297261] = "König Gobbamak",
		[192109] = 7,
		[295445] = "Panzerknacker Mk. I",
		[5302] = 1,
		[195181] = 6,
		[304619] = 3,
		[271561] = "Bestattungskonstrukt",
		[201764] = 7,
		[186401] = 9,
		[257455] = 7,
		[271562] = "Bestattungskonstrukt",
		[314565] = "Blut des Verderbers",
		[195182] = 6,
		[302279] = "Panzerknacker Mk. I",
		[271563] = "Balsamierungsflüssigkeit",
		[255591] = "Priesterin Alun'za",
		[314195] = "Knirschender Schrecken",
		[49966] = "Unicorn <Véro>",
		[271564] = "[*] Balsamierungsflüssigkeit",
		[273239] = 12,
		[146037] = "[*] Sha-Vortex",
		[253544] = "Bekenner der Dazar'ai",
		[271565] = "Balsamierungsflüssigkeit",
		[268587] = "König Dazar",
		[215661] = 2,
		[198067] = 7,
		[156000] = 6,
		[298837] = 11,
		[316617] = 11,
		[273935] = 3,
		[260879] = "Älteste Leaxa",
		[247402] = 9,
		[316618] = "Schwarmwächter der Aqir",
		[257641] = "Pulverschütze der Eisenfluträuber",
		[81118] = 12,
		[101184] = 11,
		[96231] = 2,
		[294094] = "Gelbzahn",
		[281420] = "Salzschuppe der Bilgeratten",
		[247403] = "Harjatan",
		[316620] = "Wächter des Anubisath",
		[17877] = 9,
		[80195] = "Haudrauf des Steinernen Kerns",
		[241260] = 2,
		[303941] = "Anodisierter Spulenträger",
		[238455] = "Kil'jaeden",
		[77505] = 7,
		[106447] = "Shado-Pan-Novize",
		[298761] = "[*] Azeritenergie",
		[269104] = "Erwachte Leere",
		[19483] = "Höllenbestie <Gahereth-DieewigeWacht>",
		[161399] = 2,
		[308432] = "Schmiedewache Hurrul",
		[253548] = "Moloch der Dazar'ai",
		[262983] = "Sturmbinderin der Azsh'ari",
		[239214] = "Kil'jaeden",
		[275000] = "Katherine Prachtmeer",
		[257413] = 12,
		[274027] = "Schreddermeister Blix",
		[265431] = "Sonnenbringer Firasi",
		[81220] = "Millhaus Manasturm",
		[289600] = "Wellenbrecherelementar",
		[115008] = 10,
		[298196] = 3,
		[300244] = "[*] Tosende Stromschnellen",
		[241263] = "Hexe der Gezeitenschuppen",
		[209862] = "[*] Vulkaneruption",
		[265433] = "Blutverschworener Schänder",
		[275672] = 1,
		[200685] = 12,
		[69958] = "Orakel der Kor'kron",
		[239216] = "Kil'jaeden",
		[275673] = 10,
		[294103] = "Raketenpanzer",
		[296674] = "Alx'kov der Befallene",
		[101820] = "Zeitlinienversetzter Fußsoldat",
		[290785] = "Celestra Mondschein",
		[116267] = 8,
		[271579] = "Erdformer der Venture Co.",
		[276840] = 3,
		[275675] = "Tiefenlichtlichttiefseher",
		[278176] = "Celestra Mondschein",
		[203858] = "Der Affenkönig",
		[265910] = "Die Goldschlange",
		[268214] = "Runenmetz Sorn",
		[277724] = 4,
		[271581] = 2,
		[130260] = "Ysedra die Verdunklerin",
		[316632] = "Ysedra die Verdunklerin",
		[294107] = "T.Ö.L.3. des Schrottplatzes",
		[258672] = "Kunstschütze der Eisenfluträuber",
		[314585] = 2,
		[283869] = "Basiskäpt'n Kurbelknall",
		[302299] = "Leerenschrecken",
		[115010] = "Erdrückender Hass <Verderbter Taran Zhu>",
		[298204] = 1,
		[293670] = "Werkstattverteidiger",
		[527] = 5,
		[258673] = "Kunstschütze der Eisenfluträuber",
		[238999] = "Kil'jaeden",
		[203163] = "Teufelsgrollunterwerfer",
		[270459] = "Steinmaschinist Nu-Xin",
		[262947] = "Genie der Venture Co.",
		[190074] = 10,
		[48153] = 5,
		[285472] = 1,
		[258674] = "Arbeiter außer Dienst",
		[235125] = "[*] Instabile Seele",
		[201633] = "Totem des irdenen Walls <Rûmburak>",
		[228391] = "Seelenbinder der Knochensprecher",
		[156287] = 1,
		[282381] = "Schildwache der Kaldorei <Valandy-DieewigeWacht>",
		[107844] = 5,
		[277731] = 4,
		[200721] = "Dargrul",
		[265445] = "Stachelpanzerschnappkiefer",
		[115176] = 10,
		[302305] = "Leerenschrecken",
		[257422] = 12,
		[314592] = "Gedankenwundententakel",
		[283876] = "Hochexplosive Bombe",
		[318688] = "Stacheltentakel",
		[104773] = 9,
		[314593] = "Ka'zir",
		[257420] = 5,
		[302307] = 2,
		[272422] = "Aschenwindkundschafterin",
		[298212] = "Schmierer",
		[224276] = "Illidan Sturmgrimm <Shâolîn>",
		[310499] = "Tentakel von Drest'agath",
		[255974] = 11,
		[101401] = "Echo von Sylvanas",
		[316944] = 1,
		[266181] = "Gorak Tul",
		[203859] = "Der Affenkönig",
		[217200] = 3,
		[248439] = 1,
		[193941] = "Glutsplitterskorpion",
		[691] = 9,
		[318065] = 10,
		[194645] = 8,
		[302311] = 2,
		[214001] = "Auferstandener Lanzer",
		[248812] = "Wachsame Maid",
		[317066] = "Gedankenernter",
		[302312] = 2,
		[214003] = "Auferstandener Schwertkämpfer",
		[236524] = "Agronox",
		[77130] = 7,
		[205196] = "Schreckenspirscher <Bangonologie-Aegwynn>",
		[69963] = "Templer der Kor'kron",
		[70475] = "Seuchenmords Falle",
		[205818] = "Teufelswache",
		[204596] = 12,
		[755] = 9,
		[303875] = "Abyssalkommandantin Sivara",
		[260728] = 7,
		[188033] = 3,
		[274472] = 8,
		[49576] = 6,
		[308459] = "Zardeth der Schwarzen Klaue",
		[783] = 11,
		[262115] = 1,
		[298221] = 3,
		[229388] = 1,
		[188034] = 2,
		[281209] = 6,
		[313935] = "Schwärmer der Aqir <Schwarmwächter der Aqir>",
		[316652] = "Ysedra die Verdunklerin",
		[50206] = "Kochender Geist",
		[279793] = 11,
		[44457] = 8,
		[283889] = "Todeswachenkommandant Vandel",
		[294128] = "Raketenpanzer",
		[270444] = "Edelsteinsplitterkoloss",
		[982] = 3,
		[275699] = 6,
		[75596] = 8,
		[225919] = 12,
		[298225] = 1,
		[126476] = 8,
		[238674] = "Knallpeitscher",
		[69965] = "Beschützer der Himmelsbrecher",
		[273653] = "Düsterschrecken",
		[283892] = "Froststachel",
		[79896] = "Todeswachenkommandant Vandel",
		[883] = 3,
		[280746] = 1,
		[79886] = "Zor Einbaum",
		[113746] = 10,
		[312562] = 1,
		[81574] = "Berserker des Steinernen Kerns",
		[182285] = "Teufelswache",
		[101908] = "Spukwurf",
		[225921] = 12,
		[298229] = "Schmierer",
		[257886] = "[*] Salzige Lache",
		[270329] = 3,
		[304373] = 2,
		[273657] = "Düsterschrecken",
		[300278] = 7,
		[241280] = "Einfallende Teufelswache",
		[244645] = 8,
		[273658] = "Düsterschrecken",
		[260734] = 7,
		[278523] = 2,
		[296184] = 11,
		[265468] = "Blutverschworener Schänder",
		[256639] = "Schwarzteerbomber",
		[207230] = 6,
		[234114] = 10,
		[259711] = "Blockwärter",
		[118089] = 2,
		[182145] = "Wichtlingplünderer",
		[320759] = "Dezimierer Shiq'voth",
		[45334] = 11,
		[256640] = "Schwarzteerbomber",
		[203795] = 12,
		[221562] = 6,
		[221322] = 6,
		[252545] = 1,
		[642] = 2,
		[106827] = "Sha der Gewalt",
		[306427] = 12,
		[272397] = "[*] Schnitterstrudel",
		[16856] = "Gladiator der Zerschmetterten Hand",
		[274426] = 11,
		[273664] = "Berserker der Dorrzweige",
		[155625] = 11,
		[258058] = "Schlickkrabbe",
		[69968] = "Primalist der Kor'kron",
		[288853] = 6,
		[267522] = "Käpt'n Jolli",
		[294143] = 9,
		[250499] = "Steinmaschinist Nu-Xin",
		[259714] = "[*] Zersetzende Sporen",
		[267523] = "Käpt'n Jolli",
		[269571] = 2,
		[279810] = 3,
		[231046] = 4,
		[199552] = 12,
		[302336] = "Leerenentstellter Eindringling",
		[317001] = "[*] Umbralabneigung",
		[256128] = "Aufseher Korgus",
		[38572] = "Ehrenwache der Vashj'ir",
		[251836] = 3,
		[69969] = "Beschwörerin der Himmelsbrecher",
		[255620] = "Reanimierte Ehrenwache",
		[308481] = "Gefallene Risswanderin",
		[81440] = "Millhaus Manasturm",
		[290328] = 3,
		[196725] = 10,
		[300291] = 11,
		[310530] = 5,
		[5143] = 8,
		[303041] = 2,
		[272418] = "Aschenwindkundschafterin",
		[269576] = 3,
		[296197] = 11,
		[272402] = "Messerwerferin der Schwertwasserkorsaren",
		[283911] = "Asithra Düstersang",
		[285959] = 10,
		[69970] = "Orakel der Kor'kron",
		[46029] = "Blutritter der Sonnenklingen",
		[132404] = 1,
		[114050] = 7,
		[191858] = "[*] Toxische Pfütze",
		[259718] = "Sporenrufer Zancha",
		[316677] = "Schwarmwächter der Aqir",
		[236547] = "Jägerin Kasparian",
		[213644] = 2,
		[157331] = "Ursturmelementar <Rekasha-Silvermoon>",
		[316678] = "Schwarmwächter der Aqir",
		[108366] = 9,
		[308956] = "Auge von Drest'agath",
		[194509] = 5,
		[219788] = 6,
		[196354] = "Erzdruide Glaidalis",
		[312584] = "Giftweber der Aqir",
		[78674] = 11,
		[47788] = 5,
		[241290] = "Hexe der Gezeitenschuppen",
		[121165] = "Harthakflammensucher",
		[265487] = "Blutverschworener Schänder",
		[157858] = 10,
		[47585] = 5,
		[89792] = "Unbekannt <Jaleene-Blackmoore>",
		[123725] = 10,
		[283918] = "Asithra Düstersang",
		[50092] = "Scharfschütze der 7. Legion",
		[339] = 11,
		[311401] = "Il'gynoth",
		[267537] = 11,
		[261769] = 10,
		[296206] = 3,
		[78675] = 11,
		[120142] = "[*] Pfeilgeschoss",
		[257674] = "Peter der Leisetreter",
		[201361] = "Gequälter Blutsucher",
		[44461] = 8,
		[283921] = "Lanzerkommandantin Blaer",
		[245388] = 4,
		[143286] = "Immerseus",
		[306447] = "Shad'har der Unersättliche",
		[300525] = "Müllschmeißer der Schrottknochen",
		[200338] = "Dargrul",
		[6807] = 11,
		[306448] = "Shad'har der Unersättliche",
		[192565] = "Läuterer der Valarjar",
		[245389] = 4,
		[69973] = "Nekrolythin der Kor'kron",
		[273685] = 7,
		[266120] = "Giftschuppenhydra",
		[48045] = 5,
		[296211] = 5,
		[298259] = "Schmierer",
		[105809] = 2,
		[277179] = 10,
		[296212] = 5,
		[132764] = 3,
		[316690] = "Müllschmeißer der Schrottknochen",
		[1822] = 11,
		[33967] = "Unbekannt",
		[311362] = "[*] Wachsende Hitze",
		[59052] = 6,
		[269928] = "Schattengeborener Champion",
		[69974] = "Heckenschütze der Kor'kron",
		[201573] = 9,
		[267546] = "Zügelloser Partygast",
		[295047] = 1,
		[288024] = 12,
		[292653] = 11,
		[283929] = "Lanzerkommandantin Blaer",
		[253583] = "Augur der Dazar'ai",
		[213652] = 2,
		[265881] = "Matrone Alma",
		[37551] = "Scharfschütze der Zerschmetterten Hand",
		[79922] = "Schinder des Steinernen Kerns",
		[203533] = 11,
		[1966] = 4,
		[298429] = 6,
		[310552] = "Auge von Drest'agath",
		[69975] = "Heckenschütze der Kor'kron",
		[267874] = "[*] Brennender Boden",
		[2006] = 5,
		[32216] = 1,
		[271646] = 12,
		[299090] = 7,
		[275742] = "Schreckenszahnotter",
		[35942] = "Tollwütiger Kriegshund",
		[2060] = 5,
		[34914] = 5,
		[275743] = "Riesenschreckenszahn",
		[302364] = "Leerenschrecken",
		[228645] = 6,
		[281887] = 12,
		[275744] = "Riesenschreckenszahn",
		[240539] = "Schnellflosse der Reißmäuler",
		[212801] = 8,
		[92231] = 1,
		[51886] = 7,
		[200345] = "Auferstandene Bogenschützin",
		[106546] = "Aufgeblähter Braubierlementar",
		[67631] = 2,
		[296975] = "Gesichtsloser Schattenrufer",
		[81751] = 5,
		[46302] = 1,
		[268287] = "Beutefanatiker",
		[286741] = "Seuchenwachenhauptmann Thedric",
		[191847] = "Serpentrix",
		[38064] = "Astraler Theurg",
		[241721] = "[*] Illidans blinder Blick",
		[316703] = 6,
		[27609] = "Priesterin Delrissa",
		[198817] = 1,
		[264390] = "Runenjüngerin",
		[316704] = 2,
		[282331] = "Ranah Säbelklaue",
		[225944] = "Glevenschleuder",
		[265511] = "Totem des Geistentzugs <Blutverschworener Schänder>",
		[196782] = 6,
		[294180] = "T.Ö.L.3. des Schrottplatzes",
		[246422] = 11,
		[198300] = 7,
		[267560] = 1,
		[310563] = "Schlund von Drest'agath",
		[258709] = "[*] Verderbtes Gold",
		[117588] = "Urfeuerelementar <Laurah-Antonidas>",
		[228162] = "Hyrja",
		[255035] = 11,
		[197277] = 2,
		[265514] = 4,
		[275753] = "Riesenschreckenszahn",
		[310565] = 2,
		[271658] = 12,
		[235314] = 8,
		[292136] = 1,
		[122708] = 6,
		[288041] = "Hochtüftler Mekkadrill",
		[288839] = 8,
		[256663] = "[*] Brennender Teer",
		[241305] = "Akolyth der Reißmäuler",
		[38065] = "Nexusschrecken",
		[2908] = 11,
		[316711] = "Psychus",
		[292575] = "Wächterin M'sheke",
		[267891] = "Sturmbeschwörerin Faye",
		[47536] = 5,
		[248473] = 8,
		[241306] = "Akolyth der Reißmäuler",
		[121173] = "Kargeshhochwache",
		[306474] = 7,
		[203961] = 11,
		[286840] = "Geronnenes Azerit",
		[106839] = 11,
		[198304] = 1,
		[232519] = 1,
		[165988] = 5,
		[276286] = "[*] Schneidender Orkan",
		[12654] = 8,
		[282253] = 2,
		[12782] = "Champion der Zerschmetterten Hand",
		[279856] = 8,
		[33763] = 11,
		[283952] = "Magmeister Sprengzisch",
		[211881] = 12,
		[121174] = "Harthakflammensucher",
		[273714] = 7,
		[275762] = "[*] Azerit",
		[253595] = 6,
		[205473] = 8,
		[306479] = 6,
		[301177] = "Fliegende Unterdrückungseinheit JK-8",
		[302384] = "Spazierschock X1",
		[278878] = 6,
		[306480] = 1,
		[193695] = 5,
		[212641] = 2,
		[300809] = 5,
		[264103] = "Sonnenläufer Ordel",
		[275765] = 3,
		[294195] = "Verteidigungsbot Mk. I",
		[299624] = 7,
		[27545] = "Schreckenspfote",
		[283957] = "Explodierendes Magmit",
		[253597] = 6,
		[271671] = 9,
		[247454] = 12,
		[265759] = "Matrone Brünndel",
		[294197] = 1,
		[271672] = 3,
		[259741] = 9,
		[38621] = "Leerenentstellter Himmelsstürmer",
		[188070] = 7,
		[228519] = "Schmutzfürst",
		[247455] = 12,
		[128343] = "Leerenhaftes Sha",
		[302390] = "Vexiona",
		[226076] = "Erbarmungslose Gladiatorin Saifu",
		[212743] = 4,
		[283961] = "Explodierendes Magmit",
		[270487] = "Spektrale Berserkerin",
		[271675] = 11,
		[255647] = 2,
		[275998] = "Gesichtsloser",
		[276188] = 7,
		[196941] = 2,
		[265533] = "Tiefenpfuhlzecke",
		[228003] = "Hymdall",
		[310584] = "Schlund von Drest'agath",
		[3716] = "Zuramotos <Meghanne>",
		[246867] = 2,
		[275773] = 2,
		[256163] = "Azeritfußbombe",
		[210065] = 11,
		[264353] = 8,
		[228004] = "Hymdall",
		[302395] = "Leerenschwarm",
		[203538] = 2,
		[115546] = 10,
		[265761] = "Matrone Brünndel",
		[270501] = 5,
		[296662] = "Lady Aschenwind",
		[116182] = "Schaumiger Bierlementar <Schaumiger Bierlementar>",
		[302775] = 9,
		[277824] = "Prophet der Zackenkämme",
		[169291] = 8,
		[34477] = 3,
		[292159] = "Schwarzwasserungetüm",
		[277825] = "[*] Arktische Kugel",
		[271682] = 5,
		[36276] = "Bewahrerin der Zeitrisse",
		[300351] = "Dezimierer Shiq'voth",
		[281210] = 6,
		[285305] = "Gezeitenwirkerin von Kul Tiras",
		[107356] = "Verderbter Taran Zhu",
		[275779] = 2,
		[277827] = "Prophet der Zackenkämme",
		[271684] = "[*] Dunkle Offenbarung",
		[297133] = "Verteidigungsbot Mk. III",
		[228007] = "[*] Tanzende Klinge",
		[310592] = 12,
		[271685] = 1,
		[265542] = "Eitrige Made",
		[300354] = "Dezimierer Shiq'voth",
		[175790] = 10,
		[271686] = 1,
		[98727] = 3,
		[265888] = 3,
		[318785] = "Unbekannt",
		[20572] = 3,
		[107357] = "Verderbter Taran Zhu",
		[266158] = "Frostschuppenbrutmutter",
		[310595] = 12,
		[285280] = "Gezeitenwirkerin von Kul Tiras",
		[297256] = "König Gobbamak",
		[260773] = "Schwester Solena",
		[163505] = 11,
		[256101] = "Aufseher Korgus",
		[272581] = "Orkan der Bilgeratten",
		[256678] = "Käpt'n Grünbauch",
		[318788] = "Unbekannt",
		[234153] = 9,
		[109128] = 1,
		[315830] = "Wächter des Anubisath",
		[292625] = "Kriegsdruide Ko'chus",
		[233582] = 9,
		[290121] = 4,
		[204092] = "Legionär der Teufelswache",
		[69203] = "Buchtdrescher",
		[288074] = 2,
		[194223] = 11,
		[102383] = 11,
		[212653] = 8,
		[288075] = 12,
		[298314] = "[*] Inkubationsflüssigkeit",
		[316744] = 7,
		[121820] = 10,
		[121181] = "Harthakflammensucher",
		[44503] = "Getriebene Hülle",
		[228012] = "Hymdall",
		[179091] = "Magistrix von Nar'thalas",
		[126389] = 2,
		[33206] = 5,
		[17140] = "Jesibelle",
		[268030] = "Spiritualistin der Gezeitenweisen",
		[35546] = 4,
		[298317] = 3,
		[199804] = 4,
		[310604] = 2,
		[59571] = 2,
		[298318] = 2,
		[12975] = 1,
		[195452] = 4,
		[296271] = 7,
		[268077] = "Schwester Solena",
		[261947] = 10,
		[269651] = 8,
		[213680] = 11,
		[193357] = 4,
		[245723] = 3,
		[257707] = 7,
		[296273] = 7,
		[298321] = 1,
		[38582] = "Priesterin des Echsenkessels",
		[265757] = "Matrone Brünndel",
		[69989] = "Heckenschütze der Kor'kron",
		[47541] = 6,
		[292669] = "Mondruferin Mozo'kas",
		[201858] = "Scharfschützenköder <Pestherzscharfschütze>",
		[112992] = "Hopsallus",
		[290132] = 3,
		[195750] = 6,
		[196741] = 10,
		[80983] = "Wache",
		[298324] = 5,
		[265931] = 9,
		[310611] = 11,
		[305378] = "Leerengebundene Ehrenwache",
		[50613] = 6,
		[7384] = 1,
		[196277] = 9,
		[110945] = "Gu Wolkenschlag",
		[51637] = 4,
		[35511] = "Scharfschütze der Zerschmetterten Hand",
		[270248] = "Brennende Glutwache",
		[112993] = "Hopsallus",
		[171847] = 3,
		[267611] = 2,
		[204469] = "Seuchenverbreiter der Verlassenen",
		[15407] = 5,
		[122959] = "Xin der Waffenmeister",
		[267612] = 1,
		[107087] = 11,
		[252666] = "Schattenklingenpirscher",
		[281947] = 6,
		[282484] = 9,
		[235423] = "Teufelskanone <Shâolîn>",
		[288091] = 1,
		[290139] = 3,
		[79206] = 7,
		[233139] = "[*] Sturmgebraut",
		[121185] = "Kargeshhochwache",
		[290140] = 3,
		[114018] = 4,
		[188089] = 7,
		[279902] = 12,
		[290141] = 3,
		[100784] = 10,
		[277921] = "Wilde Mondruferin",
		[201400] = "Schreckensfeuerwichtel",
		[306524] = "[*] Brennende Sohlen",
		[303351] = "Wächter von Azeroth <Aylan-Pozzodell'Eternità>",
		[44538] = "Schmuggler des Astraleums",
		[271713] = "Instabiles Azerit",
		[290143] = 3,
		[267618] = "Mchimba der Balsamierer",
		[270603] = "Gezeitenbinderin der Hämeflossen",
		[201872] = "Gesichtsloser Gedankenpeitscher",
		[290144] = 3,
		[1079] = 11,
		[228649] = 10,
		[278785] = 2,
		[157375] = "Ursturmelementar <Rekasha-Silvermoon>",
		[308575] = "Gefallener Risswanderer",
		[266030] = 9,
		[125282] = 9,
		[101221] = "[*] Zermürbender Schmerz",
		[132403] = 2,
		[286051] = "Hochtüftler Mekkadrill",
		[167898] = 1,
		[315197] = "Ding aus dem Jenseits",
		[276743] = 8,
		[257310] = "Kanone der Eisenfluträuber",
		[304482] = 7,
		[280200] = 4,
		[81256] = 6,
		[277862] = "Schleicher der Zackenkämme",
		[106853] = "Meister Schneewehe",
		[270606] = "Instabiler Taifun",
		[300388] = "Dezimierer Shiq'voth",
		[183998] = 2,
		[70244] = 11,
		[298341] = "Strompirscher",
		[265946] = 1,
		[23214] = 2,
		[164545] = 11,
		[59830] = 1,
		[270613] = "Gezeitenwoger",
		[96103] = 1,
		[279913] = 9,
		[298343] = 8,
		[272664] = "Obsidianbannschuppe",
		[294248] = 8,
		[312678] = 8,
		[243512] = 9,
		[278826] = 1,
		[268317] = "Ertrunkener Tiefenbringer",
		[312679] = "Leerrufer der K'thir",
		[265581] = "Tiefseezwingzange",
		[215969] = 6,
		[204478] = "Seuchenverbreiter der Verlassenen",
		[164547] = 11,
		[265582] = "Tiefseezwingzange",
		[276268] = "Schreintempler",
		[256660] = "Schwarzteerbomber",
		[152261] = 2,
		[314729] = 1,
		[228028] = "Hyrja",
		[277870] = "Nassa der Kaltblütige",
		[221885] = 2,
		[90985] = 5,
		[132409] = 9,
		[256661] = "Dorp",
		[263537] = 2,
		[298705] = 11,
		[260793] = "Felsschlund der Befallene",
		[302445] = 2,
		[221886] = 2,
		[198337] = 1,
		[284406] = "Verlockende Sirene",
		[300777] = "Schleimelementar",
		[112999] = "Verbleibender Hass",
		[194242] = 10,
		[275826] = "Aschenwindkommandant",
		[196290] = "Sturmschneisenhydra",
		[271731] = "Gnomische Gyroingenieurin",
		[3110] = "Kupnar <Gahereth-DieewigeWacht>",
		[277038] = "Verdammnisbringer der Kvaldir",
		[272090] = 7,
		[312687] = "Gesichtsloser Verheerer",
		[194243] = 10,
		[34366] = "Schwarzfangtarantel",
		[267977] = "Schreintempler",
		[289349] = 6,
		[314736] = "[*] Schäumender Ausbruch",
		[120167] = "Haiyan der Unaufhaltsame",
		[120679] = 3,
		[64695] = 7,
		[80800] = "Lavafelsspalt",
		[267639] = "Mchimba der Balsamierer",
		[122] = 8,
		[225446] = "Twirhp",
		[231589] = 2,
		[15615] = "Legionär der Zerschmetterten Hand",
		[285250] = "Schläger von Kul Tiras",
		[276193] = 7,
		[298357] = 2,
		[236224] = "Priesterin Lunazenit",
		[196293] = "Sturmschneisenhydra",
		[279928] = 5,
		[194844] = 6,
		[106854] = "Meister Schneewehe",
		[200389] = 11,
		[313652] = "Ka'zir",
		[130] = 8,
		[260798] = 1,
		[236712] = "Priesterin Lunazenit",
		[45242] = 5,
		[139] = 5,
		[275835] = "Aschenwindeindringling",
		[302456] = "Vexiona",
		[32242] = 7,
		[17962] = 9,
		[275836] = "Aschenwindeindringling",
		[264040] = "[*] Entwurzelte Dornen",
		[114074] = 7,
		[202420] = "Richterin der Inquisition",
		[19236] = 5,
		[271698] = "Azerokk",
		[91797] = "Larvenmalmer <Liondria-Ulduar>",
		[264526] = "Unbekannt",
		[81262] = "Erblühen <Kindras-Antonidas>",
		[196296] = "Sturmschneisenhydra",
		[312698] = "Furorion",
		[274105] = 6,
		[300412] = "[*] Dezimierer",
		[302460] = "[*] Evakuierungsprotokoll",
		[288126] = 8,
		[194249] = 5,
		[205644] = "Unbekannt <Tsutey-Arygos>",
		[70771] = 7,
		[278225] = 7,
		[276126] = 7,
		[256706] = "Trothak",
		[294271] = "Klauenfuß der Hüpfer",
		[313672] = "[*] Säurepfütze",
		[44475] = "Magierwache der Sonnenklingen",
		[307061] = "Zorn von N'Zoth",
		[212680] = 3,
		[263556] = 2,
		[261264] = "Schwester Solena",
		[71029] = "Diener des Throns",
		[108396] = 9,
		[263557] = 2,
		[276868] = "Mantis der Zara'thik",
		[214202] = 2,
		[204490] = 12,
		[258317] = "Aschenwindkerkermeister",
		[197908] = 10,
		[56641] = 3,
		[257732] = "Prügler der Schwarzzahnvandalen",
		[80240] = 9,
		[273798] = 3,
		[316801] = 3,
		[224528] = "Jesibelle",
		[288133] = "[*] Kugelblitz",
		[314754] = "Umbraseherin",
		[256709] = "Springflutschredderin",
		[276888] = "Berngeflügelter Gedankensänger",
		[119910] = 9,
		[98204] = 12,
		[260805] = "Schwester Dornstrauch",
		[69490] = "Hohepriester der Todessprecher",
		[288654] = 1,
		[137427] = "Dunkle Waldläuferin der Kaldorei",
		[256710] = "[*] Brennendes Arsenal",
		[60346] = 8,
		[276884] = "Schlachtsänger der Zara'thik",
		[196496] = "Fenryr",
		[288306] = "Großmeister Ulrich",
		[253639] = 10,
		[213708] = 11,
		[61882] = 7,
		[256711] = "Käpt'n Grünbauch",
		[277899] = "Schleicher der Zackenkämme",
		[116847] = 10,
		[145109] = 11,
		[93326] = 3,
		[69491] = "Hohepriester der Todessprecher",
		[213709] = 11,
		[310614] = "Tentakel von Drest'agath",
		[300426] = "Dezimierer Shiq'voth",
		[302474] = "Schemenhund",
		[296331] = "[*] Schneidestrahl",
		[145110] = 11,
		[300427] = "Schikanierer der Schrottknochen",
		[294284] = "Klauenfuß der Hüpfer",
		[288403] = "Auferstandener Schütze",
		[6201] = 9,
		[65917] = 2,
		[257737] = "Sturmrufer der Eisenfluträuber",
		[294286] = "Klauenfuß der Hüpfer",
		[1459] = 8,
		[48707] = 6,
		[302477] = "Leerenspuk",
		[110959] = 8,
		[149207] = "Anhaltende Verderbnis",
		[267666] = 3,
		[257738] = "Peter der Leisetreter",
		[152279] = 6,
		[270235] = 1,
		[292240] = 8,
		[106352] = "Meister Schneewehe",
		[272055] = "Haihappen",
		[315762] = "Vexiona",
		[316814] = 11,
		[277907] = "Schläger der Morastlauerer",
		[193235] = "Hymdall",
		[235214] = "[*] Lichtinfusion",
		[284051] = "Dunkle Waldläuferin der Kaldorei",
		[294290] = "Müllverarbeitungseinheit",
		[279956] = 2,
		[149209] = "[*] Verderbte Berührung",
		[284052] = "Dunkle Waldläuferin der Kaldorei",
		[294291] = "Müllverarbeitungseinheit",
		[201427] = 12,
		[264630] = 9,
		[284053] = "Dunkle Waldläuferin der Kaldorei",
		[211793] = 6,
		[205523] = 10,
		[70541] = "Der Lichkönig",
		[275863] = 4,
		[277911] = "Gelegewächter der Morastlauerer",
		[201428] = 12,
		[210643] = 7,
		[260813] = "Mogul Ratztunk",
		[264585] = 3,
		[148187] = 10,
		[307586] = "[*] Verschlungener Abgrund",
		[292247] = "Schwarzwasserungetüm",
		[257742] = "Peter der Leisetreter",
		[24423] = "Ji-Kun <Lyné>",
		[118903] = "Verhexer der Glintrok",
		[81269] = 11,
		[286105] = 1,
		[106866] = "Bombardierer der Krik'thik",
		[255695] = 10,
		[15537] = "Dunkler Totenbeschwörer",
		[247675] = 2,
		[201430] = 3,
		[15253] = "Arkane Bestie <Astraler Zauberer>",
		[275868] = 2,
		[204502] = "Schemen von Xavius",
		[294289] = "Klauenfuß der Hüpfer",
		[11641] = "Bwemba",
		[195805] = 11,
		[79249] = "[*] Gravitationsbrunnen",
		[288156] = 2,
		[235219] = 8,
		[280984] = 1,
		[302491] = 2,
		[2061] = 5,
		[228055] = "Helya",
		[124273] = 10,
		[104318] = "Wildwichtel <Bangonologie-Aegwynn>",
		[288158] = 4,
		[50622] = 1,
		[296421] = "[*] Arkanado",
		[277920] = "Wilde Sternruferin",
		[263586] = "Vorarbeiter Askari",
		[85384] = 1,
		[260894] = "Älteste Leaxa",
		[302494] = "Griff des Schreckens",
		[22273] = "Astraler Zauberer",
		[315878] = "Zorn von N'Zoth",
		[115652] = "Aufgeblähter Braubierlementar",
		[277922] = "Wächter der Morastlauerer",
		[110117] = "Ätherisches Sha",
		[276898] = "Berngeflügelter Gedankensänger",
		[124274] = 10,
		[257747] = "Schläger der Schwarzzahnvandalen",
		[297241] = 5,
		[235222] = "Blutmagierin der Eredar",
		[267685] = 11,
		[421] = 7,
		[201959] = "Glutpanzerdominator",
		[54049] = "Fzuulum <Jonasataniel-ArgentDawn>",
		[296777] = 1,
		[257748] = "Peter der Leisetreter",
		[20066] = 2,
		[262019] = "Mechjockey",
		[195292] = 6,
		[310690] = 3,
		[284383] = "Bruder Joseph",
		[258777] = "Ruderer der Eisenfluträuber",
		[124275] = 10,
		[236777] = 3,
		[258773] = "Himmelskäpt'n Kragg",
		[135416] = 2,
		[316835] = "Entstellte Gliedmaße <Arandur-ZirkeldesCenarius>",
		[220890] = 6,
		[86392] = 4,
		[222938] = 10,
		[308645] = "Umprogrammierter Kriegsbot",
		[192222] = 7,
		[36033] = "Raufbold der Zerschmetterten Hand",
		[227034] = 11,
		[292264] = "Omegabrecher",
		[52042] = "Unbekannt <Calinda-Nethersturm>",
		[258926] = 12,
		[142073] = 3,
		[77451] = 7,
		[116633] = "Saboteur der Krik'thik",
		[271788] = 3,
		[273836] = 2,
		[38593] = 9,
		[204011] = 2,
		[280210] = 1,
		[12472] = 8,
		[292267] = "Omegabrecher",
		[250214] = "Alter Stachelpanzer",
		[250585] = "[*] Toxische Lache",
		[296764] = 12,
		[311201] = 11,
		[49088] = 6,
		[106871] = "Sha der Gewalt",
		[306603] = "Ra-den",
		[16739] = 12,
		[192225] = 5,
		[263601] = "Vorarbeiter Askari",
		[284365] = "Bruder Joseph",
		[292270] = "Schwarzwasserungetüm",
		[237276] = "Dreschzahn der Spöttische",
		[264105] = "Gezeichnete Schwester",
		[586] = 5,
		[12051] = 8,
		[120694] = 10,
		[260402] = 3,
		[273842] = 7,
		[198605] = "Donnerrufer der Valarjar",
		[229086] = 1,
		[263604] = "Diener von Thros",
		[273843] = 7,
		[5277] = 4,
		[156438] = 8,
		[258779] = "Ruderer der Eisenfluträuber",
		[210657] = 7,
		[69070] = 5,
		[295373] = 2,
		[225606] = 2,
		[101816] = "Zeitlinienversetzte Zauberin",
		[267702] = "Mchimba der Balsamierer",
		[257756] = "Bukanier der Bilgeratten",
		[313460] = "Tek'ris",
		[210658] = 7,
		[41425] = 8,
		[294324] = "Müllverarbeitungseinheit",
		[278999] = 1,
		[20707] = 9,
		[64844] = 5,
		[277943] = 7,
		[298512] = 2,
		[314803] = "Amathet",
		[109945] = "Zeitlinienversetzter Spuk",
		[165132] = "Brauerin Almai",
		[111759] = 5,
		[222946] = 10,
		[292279] = "Schwarzwasserungetüm",
		[120696] = 5,
		[44226] = "[*] Gravitationsverlust",
		[210660] = 7,
		[260830] = "Todeswache der Verlassenen",
		[109714] = 12,
		[264693] = "Raal der Unersättliche",
		[50259] = 11,
		[124280] = 10,
		[280389] = "Schreckenskapitänin Luebke",
		[80801] = "Lavafelsspalt",
		[31458] = 9,
		[308664] = "Craggle Schlingerkreisel",
		[55233] = 6,
		[271805] = "Käpt'n Rez'okun",
		[306617] = "Vez'okk der Lichtlose",
		[1064] = 7,
		[276234] = "B.U.M.M.B.A.",
		[288188] = "Funkenbot",
		[157982] = 11,
		[224526] = "Anenga",
		[305497] = 11,
		[200914] = "Wyrmzungenplünderer",
		[283143] = "Magnetarm",
		[296725] = "Lady Aschenwind",
		[302524] = "Leerenschrecken",
		[243982] = "Kil'jaeden",
		[265665] = "Lebendige Fäulnis",
		[68992] = 6,
		[253666] = "Moloch der Dazar'ai",
		[305248] = "Amniotische Eruption <Niederer Zoatroid>",
		[264735] = 3,
		[308669] = "Auge des Chaos",
		[104316] = 9,
		[77478] = 7,
		[298431] = 7,
		[260834] = "Todeswache der Verlassenen",
		[226078] = "Schlachti",
		[218912] = "Priesterin Sommerblatt",
		[265668] = "Lebendige Fäulnis",
		[256739] = 10,
		[32175] = 7,
		[217832] = 12,
		[53209] = 3,
		[197564] = 10,
		[237286] = 8,
		[286976] = 7,
		[279977] = 3,
		[275909] = 11,
		[46035] = "Magister der Sonnenklingen",
		[113020] = "Rudiment des Hasses",
		[2479] = 3,
		[101542] = 8,
		[296737] = "Azsharas Glanz",
		[106877] = "Sha der Gewalt",
		[114852] = 2,
		[264086] = "Sonnenläufer Ordel",
		[277959] = 3,
		[273988] = 2,
		[101546] = 10,
		[116705] = 10,
		[277960] = 7,
		[225586] = "Krapfenkerl",
		[227255] = 12,
		[44640] = "Schwester der Qual",
		[286152] = 5,
		[113021] = "Rudiment des Hasses",
		[100015] = "Leerenentstellter Spruchwirker",
		[260838] = "[*] Zielsuchrakete",
		[102063] = "Zeitlinienversetzte Seuchenbestie",
		[263628] = "Mechanisierter Friedensbewahrer",
		[282286] = "Ranah Säbelklaue",
		[284106] = "Schwester Katharina",
		[102066] = "Zeitlinienversetzter Spuk",
		[274346] = 12,
		[239932] = "Kil'jaeden",
		[316871] = 11,
		[204526] = 3,
		[172786] = 10,
		[256314] = "Territorialer Nadelrücken",
		[266091] = 9,
		[101348] = "Echo von Sylvanas",
		[113022] = "Rudiment des Hasses",
		[306634] = "[*] Instabile Leere",
		[308682] = "Furorion",
		[193358] = 4,
		[261439] = "Lord Kronsteig",
		[319237] = 12,
		[256745] = 3,
		[294349] = "Lebender Müll",
		[150879] = "Blutjägerin Dazal'ai",
		[243435] = 10,
		[17253] = "Elektro <Mandrasal-Blackmoore>",
		[212799] = 8,
		[200025] = 2,
		[306637] = "[*] Instabiler Leerenstoß",
		[191837] = 10,
		[277969] = 3,
		[119996] = 10,
		[191848] = "Serpentrix",
		[225635] = "Lunarbogenschützin",
		[184689] = 2,
		[263636] = "Benebelter Rohling",
		[289467] = 4,
		[166646] = 10,
		[108416] = 9,
		[288210] = "Totenbeschwörerjünger",
		[281302] = 4,
		[109952] = "Zeitlinienversetzter Spuk",
		[147193] = 5,
		[276292] = "Lehrling von Eisenkiel",
		[108238] = 11,
		[265953] = 3,
		[299746] = "Scharfseher Ori <Âlysiâ>",
		[257402] = "Harlan der Schmierige",
		[307950] = "Prophet Skitra",
		[284117] = "Schwester Katharina",
		[277974] = "Flussrufer der Morastlauerer",
		[115072] = 10,
		[298452] = 8,
		[275927] = "Markbohr",
		[277975] = "Morastpriester Vassz",
		[289555] = 8,
		[298453] = 3,
		[203508] = 10,
		[277976] = "Prophet der Zackenkämme",
		[263642] = 12,
		[240559] = "[*] Schreckliche Wunde",
		[87024] = 8,
		[277977] = "Sumpfpriester der Morastlauerer",
		[200642] = "Verheerer der Schreckensseele",
		[114158] = 2,
		[284121] = "Schwester Katharina",
		[138213] = 4,
	},
	["encounter_spell_pool"] = {
		{
			2329, -- [1]
			"Furorion", -- [2]
		}, -- [1]
		[306985] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[297262] = {
			2290, -- [1]
			"König Gobbamak", -- [2]
		},
		[198079] = {
			1834, -- [1]
			"Stachelfaust der Verhasste", -- [2]
		},
		[306986] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[256163] = {
			2105, -- [1]
			"Azeritfußbombe", -- [2]
		},
		[69902] = {
			1100, -- [1]
			"Verteidiger der Kor'kron", -- [2]
		},
		[296752] = {
			2304, -- [1]
			"[*] Schneidende Koralle", -- [2]
		},
		[316711] = {
			2344, -- [1]
			"Psychus", -- [2]
		},
		[306988] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[294195] = {
			2260, -- [1]
			"Verteidigungsbot Mk. III", -- [2]
		},
		[183752] = {
			2096, -- [1]
			"Arishaa-Thrall", -- [2]
		},
		[302384] = {
			2291, -- [1]
			"Spazierschock X1", -- [2]
		},
		[306990] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[118903] = {
			2129, -- [1]
			"Verhexer der Glintrok", -- [2]
		},
		[106877] = {
			1305, -- [1]
			"Sha der Gewalt", -- [2]
		},
		[38166] = {
			1305, -- [1]
			"Sha der Gewalt", -- [2]
		},
		[239022] = {
			2053, -- [1]
			"Höllenglutwichtel", -- [2]
		},
		[78859] = {
			1058, -- [1]
			"Ozruk", -- [2]
		},
		[312110] = {
			2328, -- [1]
			"Königin Azshara", -- [2]
		},
		[267077] = {
			2140, -- [1]
			"Totem der Explosion", -- [2]
		},
		[240559] = {
			2111, -- [1]
			"[*] Schreckliche Wunde", -- [2]
		},
		[278849] = {
			2114, -- [1]
			"Dornformerin des Zirkels", -- [2]
		},
		[306996] = {
			2336, -- [1]
			"Leerenaszendent", -- [2]
		},
		[271174] = {
			2115, -- [1]
			"Bleicher Schlinger", -- [2]
		},
		[282945] = {
			2257, -- [1]
			"Kreissäge", -- [2]
		},
		[271175] = {
			2115, -- [1]
			"Bleicher Schlinger", -- [2]
		},
		[310580] = {
			2343, -- [1]
			"Schlund von Drest'agath", -- [2]
		},
		[118905] = {
			2345, -- [1]
			"Totem der Energiespeicherung <Rûmburak>", -- [2]
		},
		[46227] = {
			1895, -- [1]
			"Kriegsherr Salaris", -- [2]
		},
		[32365] = {
			1899, -- [1]
			"Nexusprinz Shaffar", -- [2]
		},
		[70161] = {
			1099, -- [1]
			"Axtwerfer der Kor'kron", -- [2]
		},
		[313652] = {
			2333, -- [1]
			"Ka'zir", -- [2]
		},
		[292159] = {
			2289, -- [1]
			"Schwarzwasserungetüm", -- [2]
		},
		[280389] = {
			2109, -- [1]
			"Schreckenskapitänin Luebke", -- [2]
		},
		[271178] = {
			2115, -- [1]
			"Bleicher Schlinger", -- [2]
		},
		[264526] = {
			2130, -- [1]
			"Unbekannt", -- [2]
		},
		[305978] = {
			2329, -- [1]
			"Furorion", -- [2]
		},
		[310584] = {
			2343, -- [1]
			"Schlund von Drest'agath", -- [2]
		},
		[284997] = {
			2280, -- [1]
			"Laminaria", -- [2]
		},
		[312121] = {
			2338, -- [1]
			"Alleria Windläufer", -- [2]
		},
		[227514] = {
			1962, -- [1]
			"Guarm", -- [2]
		},
		[285000] = {
			2280, -- [1]
			"Laminaria", -- [2]
		},
		[308029] = {
			2334, -- [1]
			"Prophet Skitra", -- [2]
		},
		[298306] = {
			2303, -- [1]
			"[*] Inkubationsflüssigkeit", -- [2]
		},
		[297283] = {
			2290, -- [1]
			"[*] Einsturz", -- [2]
		},
		[310078] = {
			2343, -- [1]
			"Schlund von Drest'agath", -- [2]
		},
		[292167] = {
			2289, -- [1]
			"Schwarzwasserungetüm", -- [2]
		},
		[294726] = {
			2298, -- [1]
			"Abyssalkommandantin Sivara", -- [2]
		},
		[271698] = {
			2106, -- [1]
			"Azerokk", -- [2]
		},
		[315197] = {
			2327, -- [1]
			"Ding aus dem Jenseits", -- [2]
		},
		[114942] = {
			2115, -- [1]
			"Totem der Heilungsflut <Rûmburak>", -- [2]
		},
		[209862] = {
			2113, -- [1]
			"[*] Vulkaneruption", -- [2]
		},
		[310082] = {
			2343, -- [1]
			"Schlund von Drest'agath", -- [2]
		},
		[57807] = {
			1099, -- [1]
			"Verteidiger der Kor'kron", -- [2]
		},
		[307012] = {
			2337, -- [1]
			"Blick des Wahnsinns", -- [2]
		},
		[228030] = {
			1958, -- [1]
			"Hyrja", -- [2]
		},
		[309572] = {
			2377, -- [1]
			"Magister Umbric", -- [2]
		},
		[298314] = {
			2303, -- [1]
			"[*] Inkubationsflüssigkeit", -- [2]
		},
		[250036] = {
			2087, -- [1]
			"[*] Schattenhafte Überreste", -- [2]
		},
		[246454] = {
			2048, -- [1]
			"[*] Von Qual getrieben", -- [2]
		},
		[268122] = {
			2113, -- [1]
			"Schwester Dornstrauch", -- [2]
		},
		[315715] = {
			2344, -- [1]
			"[*] Verachtung", -- [2]
		},
		[115455] = {
			1405, -- [1]
			"Unterbrecher der Krik'thik", -- [2]
		},
		[260016] = {
			2101, -- [1]
			"Summende Drohne", -- [2]
		},
		[79249] = {
			1057, -- [1]
			"[*] Gravitationsbrunnen", -- [2]
		},
		[307017] = {
			2329, -- [1]
			"Knisternder Splitter", -- [2]
		},
		[257458] = {
			2096, -- [1]
			"Harlan der Schmierige", -- [2]
		},
		[193234] = {
			1805, -- [1]
			"[*] Tanzende Klinge", -- [2]
		},
		[268126] = {
			2113, -- [1]
			"Schwester Dornstrauch", -- [2]
		},
		[107140] = {
			1303, -- [1]
			"Azurschlange", -- [2]
		},
		[107268] = {
			1397, -- [1]
			"Saboteur Kip'tilak", -- [2]
		},
		[30991] = {
			1938, -- [1]
			"Auftragsmörder der Zerschmetterten Hand", -- [2]
		},
		[308044] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
		[193235] = {
			1805, -- [1]
			"Hymdall", -- [2]
		},
		[257460] = {
			2096, -- [1]
			"[*] Feurige Trümmer", -- [2]
		},
		[92300] = {
			1059, -- [1]
			"Plattenhaut", -- [2]
		},
		[69911] = {
			1100, -- [1]
			"Häscherin der Kor'kron", -- [2]
		},
		[267618] = {
			2142, -- [1]
			"Mchimba der Balsamierer", -- [2]
		},
		[44503] = {
			1897, -- [1]
			"Getriebene Hülle", -- [2]
		},
		[295766] = {
			2303, -- [1]
			"Myrmidone der Zanj'ir", -- [2]
		},
		[236224] = {
			2050, -- [1]
			"Priesterin Lunazenit", -- [2]
		},
		[264038] = {
			2114, -- [1]
			"Dornformerin des Zirkels", -- [2]
		},
		[285020] = {
			2257, -- [1]
			"Der Platinprügler", -- [2]
		},
		[231363] = {
			2032, -- [1]
			"Goroth", -- [2]
		},
		[227781] = {
			1958, -- [1]
			"[*] Leuchtendes Fragment", -- [2]
		},
		[115458] = {
			1405, -- [1]
			"[*] Säurebombe", -- [2]
		},
		[286558] = {
			2280, -- [1]
			"Bruder Joseph", -- [2]
		},
		[260279] = {
			2108, -- [1]
			"[*] Maschinenkanone", -- [2]
		},
		[234180] = {
			2038, -- [1]
			"[*] Sengen", -- [2]
		},
		[310614] = {
			2343, -- [1]
			"Tentakel von Drest'agath", -- [2]
		},
		[260280] = {
			2108, -- [1]
			"Mogul Ratztunk", -- [2]
		},
		[240066] = {
			2036, -- [1]
			"Wogenheiler der Reißmäuler", -- [2]
		},
		[286051] = {
			2276, -- [1]
			"Hochtüftler Mekkadrill", -- [2]
		},
		[286563] = {
			2280, -- [1]
			"Bruder Joseph", -- [2]
		},
		[307545] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
		[297822] = {
			2332, -- [1]
			"Thrall", -- [2]
		},
		[260793] = {
			2118, -- [1]
			"Felsschlund der Befallene", -- [2]
		},
		[256955] = {
			2103, -- [1]
			"Kürassier Valyri", -- [2]
		},
		[264560] = {
			2130, -- [1]
			"Aqu'sirr", -- [2]
		},
		[306524] = {
			2372, -- [1]
			"[*] Brennende Sohlen", -- [2]
		},
		[30992] = {
			1938, -- [1]
			"Auftragsmörder der Zerschmetterten Hand", -- [2]
		},
		[298849] = {
			2312, -- [1]
			"Trixie Teyser", -- [2]
		},
		[262515] = {
			2108, -- [1]
			"Flugfacklerin der Venture Co.", -- [2]
		},
		[295779] = {
			2303, -- [1]
			"Myrmidone der Zanj'ir", -- [2]
		},
		[204502] = {
			1839, -- [1]
			"Schemen von Xavius", -- [2]
		},
		[306015] = {
			2329, -- [1]
			"Furorion", -- [2]
		},
		[38556] = {
			1106, -- [1]
			"Speerwerfer der Dunkelspeere", -- [2]
		},
		[228300] = {
			2008, -- [1]
			"Helya", -- [2]
		},
		[200154] = {
			1793, -- [1]
			"Geschmolzene Kohlhaut <Dargrul>", -- [2]
		},
		[307042] = {
			2337, -- [1]
			"Alptraumantigen", -- [2]
		},
		[250050] = {
			2087, -- [1]
			"Yazma", -- [2]
		},
		[69916] = {
			1099, -- [1]
			"Häscher der Kor'kron", -- [2]
		},
		[72219] = {
			1097, -- [1]
			"Fauldarm", -- [2]
		},
		[107146] = {
			1419, -- [1]
			"Raigonn", -- [2]
		},
		[261565] = {
			2099, -- [1]
			"Hadal Dunkelgrund", -- [2]
		},
		[119684] = {
			1441, -- [1]
			"Xin der Waffenmeister", -- [2]
		},
		[307044] = {
			2337, -- [1]
			"Alptraumantigen", -- [2]
		},
		[285040] = {
			2280, -- [1]
			"Zorn der Tiefe", -- [2]
		},
		[297834] = {
			2292, -- [1]
			"Schmierer", -- [2]
		},
		[118917] = {
			2129, -- [1]
			"Verhexer der Glintrok", -- [2]
		},
		[69917] = {
			1100, -- [1]
			"Häscherin der Kor'kron", -- [2]
		},
		[44314] = {
			1897, -- [1]
			"Selin Feuerherz", -- [2]
		},
		[107275] = {
			1419, -- [1]
			"Umhüller der Krik'thik", -- [2]
		},
		[307048] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[256706] = {
			2095, -- [1]
			"Trothak", -- [2]
		},
		[311143] = {
			2345, -- [1]
			"Blut von Ny'alotha", -- [2]
		},
		[295791] = {
			2298, -- [1]
			"Abyssalkommandantin Sivara", -- [2]
		},
		[265088] = {
			2094, -- [1]
			"Rummy Mancomb", -- [2]
		},
		[235214] = {
			2052, -- [1]
			"[*] Lichtinfusion", -- [2]
		},
		[307052] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[79002] = {
			1057, -- [1]
			"Hohepriesterin Azil", -- [2]
		},
		[307053] = {
			2329, -- [1]
			"[*] Lavapfützen", -- [2]
		},
		[16856] = {
			1935, -- [1]
			"Gladiator der Zerschmetterten Hand", -- [2]
		},
		[298866] = {
			2375, -- [1]
			"Peitschendes Tentakel", -- [2]
		},
		[260547] = {
			2114, -- [1]
			"Seelengebundener Goliath", -- [2]
		},
		[72350] = {
			1106, -- [1]
			"Der Lichkönig", -- [2]
		},
		[12654] = {
			2345, -- [1]
			"Il'gynoth", -- [2]
		},
		[297333] = {
			2304, -- [1]
			"Lady Aschenwind", -- [2]
		},
		[256710] = {
			2103, -- [1]
			"[*] Brennendes Arsenal", -- [2]
		},
		[317292] = {
			2344, -- [1]
			"N'Zoth der Verderber", -- [2]
		},
		[201953] = {
			1793, -- [1]
			"Glutpanzerdominator", -- [2]
		},
		[12782] = {
			1938, -- [1]
			"Champion der Zerschmetterten Hand", -- [2]
		},
		[233426] = {
			2048, -- [1]
			"Atrigan", -- [2]
		},
		[256199] = {
			2104, -- [1]
			"Aufseher Korgus", -- [2]
		},
		[310129] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
		[260805] = {
			2113, -- [1]
			"Schwester Dornstrauch", -- [2]
		},
		[123654] = {
			1442, -- [1]
			"Ming der Verschlagene", -- [2]
		},
		[314736] = {
			2335, -- [1]
			"[*] Schäumender Ausbruch", -- [2]
		},
		[256200] = {
			2104, -- [1]
			"Aufseher Korgus", -- [2]
		},
		[273285] = {
			2112, -- [1]
			"Instabile Kapsel", -- [2]
		},
		[307061] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[256201] = {
			2104, -- [1]
			"Aufseher Korgus", -- [2]
		},
		[316274] = {
			2328, -- [1]
			"Dunkle Inquisitorin Xanesh", -- [2]
		},
		[228055] = {
			2008, -- [1]
			"Helya", -- [2]
		},
		[230358] = {
			2037, -- [1]
			"Herrin Sassz'ine", -- [2]
		},
		[107279] = {
			1419, -- [1]
			"[*] Umhüllende Winde", -- [2]
		},
		[319346] = {
			2344, -- [1]
			"[*] Spuren der Ewigkeit", -- [2]
		},
		[310135] = {
			2344, -- [1]
			"Psychus", -- [2]
		},
		[120201] = {
			1442, -- [1]
			"Haiyan der Unaufhaltsame", -- [2]
		},
		[311159] = {
			2345, -- [1]
			"Verfluchtes Blut", -- [2]
		},
		[200166] = {
			2113, -- [1]
			12, -- [2]
		},
		[315766] = {
			2343, -- [1]
			"Tentakel von Drest'agath", -- [2]
		},
		[199143] = {
			1835, -- [1]
			"Latosius", -- [2]
		},
		[313208] = {
			2334, -- [1]
			"Unbekannt", -- [2]
		},
		[72737] = {
			1096, -- [1]
			"Todesbringer Saurfang", -- [2]
		},
		[119946] = {
			1442, -- [1]
			"Mu'Shiba", -- [2]
		},
		[312698] = {
			2329, -- [1]
			"Furorion", -- [2]
		},
		[315769] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[273294] = {
			2113, -- [1]
			"[*] Lauffeuer", -- [2]
		},
		[307582] = {
			2333, -- [1]
			"Drohne der Aqir", -- [2]
		},
		[260811] = {
			2108, -- [1]
			"Mogul Ratztunk", -- [2]
		},
		[307071] = {
			2337, -- [1]
			"Synthesegeschwür", -- [2]
		},
		[313213] = {
			2331, -- [1]
			"Ra-den", -- [2]
		},
		[315772] = {
			2344, -- [1]
			"N'Zoth der Verderber", -- [2]
		},
		[259533] = {
			2107, -- [1]
			"[*] Azeritkatalysator", -- [2]
		},
		[307586] = {
			2327, -- [1]
			"[*] Verschlungener Abgrund", -- [2]
		},
		[283534] = {
			2260, -- [1]
			"Magnetarm", -- [2]
		},
		[260813] = {
			2108, -- [1]
			"Mogul Ratztunk", -- [2]
		},
		[307075] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[210150] = {
			1792, -- [1]
			"Naraxas", -- [2]
		},
		[255952] = {
			2093, -- [1]
			"Himmelskäpt'n Kragg", -- [2]
		},
		[256976] = {
			2103, -- [1]
			"Kürassier Valyri", -- [2]
		},
		[196078] = {
			1832, -- [1]
			"Amalgam der Seelen", -- [2]
		},
		[296331] = {
			2260, -- [1]
			"[*] Schneidestrahl", -- [2]
		},
		[264603] = {
			2111, -- [1]
			"Älteste Leaxa", -- [2]
		},
		[236507] = {
			2054, -- [1]
			"Seelenkönigin Dejahna", -- [2]
		},
		[313732] = {
			2333, -- [1]
			"Tek'ris", -- [2]
		},
		[80800] = {
			1059, -- [1]
			"Lavafelsspalt", -- [2]
		},
		[285075] = {
			2280, -- [1]
			"[*] Gefrierender Gezeitentümpel", -- [2]
		},
		[315269] = {
			2331, -- [1]
			"Unbekannt", -- [2]
		},
		[210153] = {
			2113, -- [1]
			12, -- [2]
		},
		[237276] = {
			2057, -- [1]
			"Dreschzahn der Spöttische", -- [2]
		},
		[311176] = {
			2344, -- [1]
			"N'Zoth der Verderber", -- [2]
		},
		[69926] = {
			1099, -- [1]
			"Orakel der Kor'kron", -- [2]
		},
		[256979] = {
			2094, -- [1]
			"Käpt'n Eudora", -- [2]
		},
		[268702] = {
			2105, -- [1]
			"Steinzorn", -- [2]
		},
		[295825] = {
			2303, -- [1]
			"Orgozoa", -- [2]
		},
		[80801] = {
			1059, -- [1]
			"Lavafelsspalt", -- [2]
		},
		[205549] = {
			1792, -- [1]
			"Naraxas", -- [2]
		},
		[298897] = {
			2312, -- [1]
			"Trixie Teyser", -- [2]
		},
		[255445] = {
			2086, -- [1]
			"Rezan", -- [2]
		},
		[313227] = {
			2331, -- [1]
			"Ra-den", -- [2]
		},
		[69927] = {
			1100, -- [1]
			"Bezwinger der Kor'kron", -- [2]
		},
		[96794] = {
			2377, -- [1]
			"Magister Umbric", -- [2]
		},
		[310670] = {
			2343, -- [1]
			"Tentakel von Drest'agath", -- [2]
		},
		[233441] = {
			2048, -- [1]
			"Atrigan", -- [2]
		},
		[250585] = {
			2085, -- [1]
			"[*] Toxische Lache", -- [2]
		},
		[309648] = {
			2377, -- [1]
			"Magister Umbric", -- [2]
		},
		[283551] = {
			2260, -- [1]
			"Omegabrecher", -- [2]
		},
		[101401] = {
			1882, -- [1]
			"Echo von Sylvanas", -- [2]
		},
		[70952] = {
			1095, -- [1]
			"Prinz Valanar", -- [2]
		},
		[183548] = {
			1792, -- [1]
			"Steinklauenlarvenmeister", -- [2]
		},
		[306070] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
		[233444] = {
			2048, -- [1]
			"Atrigan", -- [2]
		},
		[271784] = {
			2105, -- [1]
			"Fußbombenrandaliererin", -- [2]
		},
		[268202] = {
			2117, -- [1]
			"Unbekannt", -- [2]
		},
		[309654] = {
			2328, -- [1]
			"Dunkle Inquisitorin Xanesh", -- [2]
		},
		[316307] = {
			2337, -- [1]
			"Blick des Wahnsinns", -- [2]
		},
		[235236] = {
			2048, -- [1]
			"Belac", -- [2]
		},
		[268203] = {
			2117, -- [1]
			"Unbekannt", -- [2]
		},
		[260312] = {
			2118, -- [1]
			"Felsschlund der Befallene", -- [2]
		},
		[236516] = {
			2050, -- [1]
			"[*] Zwielichtsalve", -- [2]
		},
		[71465] = {
			1095, -- [1]
			"Schwester Svalna", -- [2]
		},
		[2818] = {
			2345, -- [1]
			"Il'gynoth", -- [2]
		},
		[313239] = {
			2334, -- [1]
			"Prophet Skitra", -- [2]
		},
		[268717] = {
			2093, -- [1]
			"Haihappen", -- [2]
		},
		[260569] = {
			2114, -- [1]
			"[*] Lauffeuer", -- [2]
		},
		[202230] = {
			1792, -- [1]
			"Steinklauenlarvenmeister", -- [2]
		},
		[269231] = {
			2143, -- [1]
			"Reban", -- [2]
		},
		[236518] = {
			2050, -- [1]
			"Priesterin Lunazenit", -- [2]
		},
		[269232] = {
			2143, -- [1]
			"Reban", -- [2]
		},
		[278444] = {
			2115, -- [1]
			"Verschlingende Made", -- [2]
		},
		[295332] = {
			2298, -- [1]
			"Abyssalkommandantin Sivara", -- [2]
		},
		[256477] = {
			2095, -- [1]
			"Sägezahnhai", -- [2]
		},
		[315291] = {
			2327, -- [1]
			"[*] Verschlungener Abgrund", -- [2]
		},
		[70443] = {
			1099, -- [1]
			"[*] Explosion", -- [2]
		},
		[255966] = {
			2093, -- [1]
			"Himmelskäpt'n Kragg", -- [2]
		},
		[289705] = {
			2276, -- [1]
			"Hochtüftler Mekkadrill", -- [2]
		},
		[292264] = {
			2260, -- [1]
			"Omegabrecher", -- [2]
		},
		[214003] = {
			1835, -- [1]
			"Auferstandener Schwertkämpfer", -- [2]
		},
		[71339] = {
			1099, -- [1]
			"Axtwerfer der Kor'kron", -- [2]
		},
		[309665] = {
			2374, -- [1]
			"Therum Tiefenschmied", -- [2]
		},
		[267702] = {
			2142, -- [1]
			"Mchimba der Balsamierer", -- [2]
		},
		[210166] = {
			1792, -- [1]
			"[*] Toxinauswurf", -- [2]
		},
		[70444] = {
			1099, -- [1]
			"[*] Explosion", -- [2]
		},
		[80807] = {
			1059, -- [1]
			"Plattenhaut", -- [2]
		},
		[260318] = {
			2108, -- [1]
			"Mogul Ratztunk", -- [2]
		},
		[37605] = {
			1919, -- [1]
			"Aeonus", -- [2]
		},
		[233196] = {
			2039, -- [1]
			"Mephistroth", -- [2]
		},
		[200700] = {
			1793, -- [1]
			"Dargrul", -- [2]
		},
		[305575] = {
			2328, -- [1]
			"[*] Ritualfeld", -- [2]
		},
		[292270] = {
			2289, -- [1]
			"Schwarzwasserungetüm", -- [2]
		},
		[70189] = {
			1100, -- [1]
			"Bastionsgargoyle", -- [2]
		},
		[119573] = {
			1441, -- [1]
			"[*] Feuerring", -- [2]
		},
		[312741] = {
			2334, -- [1]
			"Zerfetzte Psyche <[*] Zerfledderte Psyche>", -- [2]
		},
		[30485] = {
			1938, -- [1]
			"Heidnischer Wächter", -- [2]
		},
		[309671] = {
			2374, -- [1]
			"Therum Tiefenschmied", -- [2]
		},
		[236524] = {
			2055, -- [1]
			"Agronox", -- [2]
		},
		[310184] = {
			2344, -- [1]
			"Psychus", -- [2]
		},
		[278456] = {
			2115, -- [1]
			"Verschlingende Made", -- [2]
		},
		[69934] = {
			1100, -- [1]
			"Bezwinger der Kor'kron", -- [2]
		},
		[306603] = {
			2331, -- [1]
			"Ra-den", -- [2]
		},
		[3110] = {
			2327, -- [1]
			"Garrin", -- [2]
		},
		[239852] = {
			2051, -- [1]
			"Dämonischer Obelisk", -- [2]
		},
		[315305] = {
			2327, -- [1]
			"[*] Verbotenes Mana", -- [2]
		},
		[201983] = {
			1793, -- [1]
			"Glutpanzerdominator", -- [2]
		},
		[196354] = {
			1836, -- [1]
			"Erzdruide Glaidalis", -- [2]
		},
		[315306] = {
			2327, -- [1]
			"[*] Verbotenes Mana", -- [2]
		},
		[260323] = {
			2108, -- [1]
			"Mogul Ratztunk", -- [2]
		},
		[70191] = {
			1100, -- [1]
			"Rasende Monstrosität", -- [2]
		},
		[192005] = {
			1813, -- [1]
			"Arkane Hydrabrut", -- [2]
		},
		[292279] = {
			2289, -- [1]
			"Schwarzwasserungetüm", -- [2]
		},
		[266181] = {
			2117, -- [1]
			"Gorak Tul", -- [2]
		},
		[297398] = {
			2304, -- [1]
			"Lady Aschenwind", -- [2]
		},
		[116633] = {
			1406, -- [1]
			"Saboteur der Krik'thik", -- [2]
		},
		[227573] = {
			1962, -- [1]
			"Guarm", -- [2]
		},
		[288188] = {
			2276, -- [1]
			"Funkenbot", -- [2]
		},
		[268230] = {
			2109, -- [1]
			"Aschenwinddeckmatrose", -- [2]
		},
		[307635] = {
			2333, -- [1]
			"Tek'ris", -- [2]
		},
		[275907] = {
			2106, -- [1]
			"Azerokk", -- [2]
		},
		[260838] = {
			2108, -- [1]
			"[*] Zielsuchrakete", -- [2]
		},
		[248812] = {
			2052, -- [1]
			"Wachsame Maid", -- [2]
		},
		[307637] = {
			2333, -- [1]
			"Drohne der Aqir", -- [2]
		},
		[268234] = {
			2115, -- [1]
			"Gallschlammling", -- [2]
		},
		[287169] = {
			2280, -- [1]
			"Schwester Katharina", -- [2]
		},
		[298940] = {
			2312, -- [1]
			"Naeno Megarumms", -- [2]
		},
		[309687] = {
			2334, -- [1]
			"Zerfetzte Psyche <[*] Zerfledderte Psyche>", -- [2]
		},
		[306617] = {
			2373, -- [1]
			"Vez'okk der Lichtlose", -- [2]
		},
		[296894] = {
			2305, -- [1]
			"Azsharas Glanz", -- [2]
		},
		[38759] = {
			1900, -- [1]
			"Pandemonius", -- [2]
		},
		[285125] = {
			2280, -- [1]
			"Laminaria", -- [2]
		},
		[264144] = {
			2130, -- [1]
			"Aqu'sirr", -- [2]
		},
		[265168] = {
			2094, -- [1]
			"Rummy Mancomb", -- [2]
		},
		[101411] = {
			1882, -- [1]
			"Echo von Sylvanas", -- [2]
		},
		[307645] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[286152] = {
			2276, -- [1]
			"Funkenbot", -- [2]
		},
		[298946] = {
			2312, -- [1]
			"Naeno Megarumms", -- [2]
		},
		[310205] = {
			2329, -- [1]
			"Furorion", -- [2]
		},
		[284106] = {
			2280, -- [1]
			"Schwester Katharina", -- [2]
		},
		[298947] = {
			2312, -- [1]
			"Naeno Megarumms", -- [2]
		},
		[269266] = {
			2100, -- [1]
			"Verwüstender Schrecken", -- [2]
		},
		[101412] = {
			1882, -- [1]
			"Echo von Sylvanas", -- [2]
		},
		[294855] = {
			2259, -- [1]
			"Unscheinbare Pflanze", -- [2]
		},
		[295367] = {
			2345, -- [1]
			"Il'gynoth", -- [2]
		},
		[287691] = {
			2276, -- [1]
			"Hochtüftler Mekkadrill", -- [2]
		},
		[308673] = {
			2376, -- [1]
			"Auge des Chaos", -- [2]
		},
		[294856] = {
			2298, -- [1]
			"[*] Instabile Mischung", -- [2]
		},
		[260333] = {
			2118, -- [1]
			"Felsschlund der Befallene", -- [2]
		},
		[306115] = {
			2331, -- [1]
			"Ra-den", -- [2]
		},
		[309698] = {
			2344, -- [1]
			"Schlägertentakel", -- [2]
		},
		[237561] = {
			2050, -- [1]
			"Jägerin Kasparian", -- [2]
		},
		[313793] = {
			2344, -- [1]
			"Todesschwinge", -- [2]
		},
		[287183] = {
			2280, -- [1]
			"[*] Voltaischer Blitz", -- [2]
		},
		[264155] = {
			2130, -- [1]
			"Aqu'sirr", -- [2]
		},
		[258544] = {
			2102, -- [1]
			"Jes Knurris", -- [2]
		},
		[309702] = {
			2344, -- [1]
			"Schlägertentakel", -- [2]
		},
		[196111] = {
			1813, -- [1]
			"Seegischtkrabbe", -- [2]
		},
		[257777] = {
			2102, -- [1]
			"Jes Knurris", -- [2]
		},
		[199182] = {
			1807, -- [1]
			"Schwarzklauenworg", -- [2]
		},
		[294863] = {
			2259, -- [1]
			"Unscheinbare Pflanze", -- [2]
		},
		[309704] = {
			2335, -- [1]
			"[*] Ätzender Überzug", -- [2]
		},
		[284117] = {
			2280, -- [1]
			"Schwester Katharina", -- [2]
		},
		[266206] = {
			2140, -- [1]
			"Kula die Schlächterin", -- [2]
		},
		[67767] = {
			1106, -- [1]
			"Ritter der Schwarzen Klinge", -- [2]
		},
		[112929] = {
			1306, -- [1]
			"Unbekannt <Verderbter Taran Zhu>", -- [2]
		},
		[308682] = {
			2329, -- [1]
			"Furorion", -- [2]
		},
		[236541] = {
			2050, -- [1]
			"[*] Zwielichtgleve", -- [2]
		},
		[233983] = {
			2048, -- [1]
			"Belac", -- [2]
		},
		[22907] = {
			1935, -- [1]
			"Bogenschütze der Zerschmetterten Hand", -- [2]
		},
		[101927] = {
			1883, -- [1]
			"Echo von Jaina", -- [2]
		},
		[284121] = {
			2280, -- [1]
			"Schwester Katharina", -- [2]
		},
		[46182] = {
			1895, -- [1]
			"Eramas Leuchtfeuer", -- [2]
		},
		[236543] = {
			2053, -- [1]
			"Domatrax", -- [2]
		},
		[259572] = {
			2085, -- [1]
			"Vol'kaal", -- [2]
		},
		[200721] = {
			1793, -- [1]
			"Dargrul", -- [2]
		},
		[260852] = {
			2113, -- [1]
			"Schwester Dornstrauch", -- [2]
		},
		[264166] = {
			2130, -- [1]
			"Aqualing", -- [2]
		},
		[114466] = {
			1414, -- [1]
			"Schaumwall", -- [2]
		},
		[309713] = {
			2344, -- [1]
			"Schlägertentakel", -- [2]
		},
		[308178] = {
			2333, -- [1]
			"Ka'zir", -- [2]
		},
		[259574] = {
			2085, -- [1]
			"Vol'kaal", -- [2]
		},
		[259830] = {
			2112, -- [1]
			"Sporenrufer Zancha", -- [2]
		},
		[200723] = {
			1793, -- [1]
			"Dargrul", -- [2]
		},
		[285152] = {
			2257, -- [1]
			"Gnominator G-800", -- [2]
		},
		[235267] = {
			2052, -- [1]
			"Wachsame Maid", -- [2]
		},
		[46183] = {
			1895, -- [1]
			"Eramas Leuchtfeuer", -- [2]
		},
		[236547] = {
			2050, -- [1]
			"Jägerin Kasparian", -- [2]
		},
		[257785] = {
			2102, -- [1]
			"Jes Knurris", -- [2]
		},
		[34605] = {
			1899, -- [1]
			"Nexusprinz Shaffar", -- [2]
		},
		[196376] = {
			1836, -- [1]
			"Erzdruide Glaidalis", -- [2]
		},
		[278504] = {
			2113, -- [1]
			"Runenjüngerin", -- [2]
		},
		[192794] = {
			1814, -- [1]
			"[*] Blitzschlag", -- [2]
		},
		[286693] = {
			2276, -- [1]
			"Hochtüftler Mekkadrill", -- [2]
		},
		[255228] = {
			2276, -- [1]
			"Funkenbot", -- [2]
		},
		[268271] = {
			2116, -- [1]
			"Lady Kronsteig", -- [2]
		},
		[298465] = {
			2303, -- [1]
			"Zoatroid", -- [2]
		},
		[266225] = {
			2117, -- [1]
			"Gorak Tul", -- [2]
		},
		[235271] = {
			2052, -- [1]
			"Wachsame Maid", -- [2]
		},
		[46184] = {
			1895, -- [1]
			"Zelfan", -- [2]
		},
		[250368] = {
			2085, -- [1]
			"Vol'kaal", -- [2]
		},
		[100780] = {
			2337, -- [1]
			10, -- [2]
		},
		[307167] = {
			2303, -- [1]
			"Orgozoa", -- [2]
		},
		[19134] = {
			1895, -- [1]
			"Kriegsherr Salaris", -- [2]
		},
		[306656] = {
			2373, -- [1]
			"Vez'okk der Lichtlose", -- [2]
		},
		[78903] = {
			1058, -- [1]
			"Ozruk", -- [2]
		},
		[264693] = {
			2115, -- [1]
			"Raal der Unersättliche", -- [2]
		},
		[264694] = {
			2115, -- [1]
			"Raal der Unersättliche", -- [2]
		},
		[102572] = {
			1303, -- [1]
			"Azurschlange", -- [2]
		},
		[266231] = {
			2140, -- [1]
			"Kula die Schlächterin", -- [2]
		},
		[70460] = {
			1098, -- [1]
			"Frost Freeze Trap", -- [2]
		},
		[257791] = {
			2102, -- [1]
			"Robbi Knurris <Jes Knurris>", -- [2]
		},
		[267256] = {
			2140, -- [1]
			"Totem des Erdwalls", -- [2]
		},
		[298473] = {
			2290, -- [1]
			"Grunzling der Schrottknochen", -- [2]
		},
		[272374] = {
			2094, -- [1]
			"Käpt'n Jolli", -- [2]
		},
		[264698] = {
			2115, -- [1]
			"Raal der Unersättliche", -- [2]
		},
		[267257] = {
			2140, -- [1]
			"Totem des Donners", -- [2]
		},
		[286192] = {
			2276, -- [1]
			"Funkenbot", -- [2]
		},
		[200732] = {
			1793, -- [1]
			"Dargrul", -- [2]
		},
		[46185] = {
			1895, -- [1]
			"Zelfan", -- [2]
		},
		[272888] = {
			2100, -- [1]
			"Aschenwindzerstörer", -- [2]
		},
		[310246] = {
			2343, -- [1]
			"Drest'agath", -- [2]
		},
		[257793] = {
			2102, -- [1]
			"Jes Knurris", -- [2]
		},
		[294894] = {
			2291, -- [1]
			"Fliegende Unterdrückungseinheit JK-8", -- [2]
		},
		[307177] = {
			2336, -- [1]
			"Bezauberte Ritualistin", -- [2]
		},
		[268796] = {
			2143, -- [1]
			"[*] Durchbohrender Speer", -- [2]
		},
		[315878] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[296944] = {
			2304, -- [1]
			"[*] Überspringendes Azerit", -- [2]
		},
		[119590] = {
			1441, -- [1]
			"Ring aus Feuer", -- [2]
		},
		[312810] = {
			2337, -- [1]
			"[*] Alles ist verbunden", -- [2]
		},
		[257028] = {
			2103, -- [1]
			"Kürassier Valyri", -- [2]
		},
		[240908] = {
			2051, -- [1]
			"Kil'jaeden", -- [2]
		},
		[204574] = {
			1837, -- [1]
			"Eichenherz", -- [2]
		},
		[256005] = {
			2093, -- [1]
			"Haihappen", -- [2]
		},
		[46186] = {
			1895, -- [1]
			"Zelfan", -- [2]
		},
		[100784] = {
			2337, -- [1]
			10, -- [2]
		},
		[240910] = {
			2051, -- [1]
			"Kil'jaeden", -- [2]
		},
		[306163] = {
			2329, -- [1]
			"Furorion", -- [2]
		},
		[295417] = {
			2298, -- [1]
			"Abyssalkommandantin Sivara", -- [2]
		},
		[243982] = {
			2051, -- [1]
			"Kil'jaeden", -- [2]
		},
		[101809] = {
			1883, -- [1]
			"Echo von Jaina", -- [2]
		},
		[202019] = {
			1835, -- [1]
			"Latosius", -- [2]
		},
		[71488] = {
			1098, -- [1]
			"Crok Geißelbann", -- [2]
		},
		[241680] = {
			2130, -- [1]
			"Lord Sturmsang", -- [2]
		},
		[318449] = {
			2344, -- [1]
			"N'Zoth der Verderber", -- [2]
		},
		[44268] = {
			1895, -- [1]
			"Kriegsherr Salaris", -- [2]
		},
		[117418] = {
			2337, -- [1]
			10, -- [2]
		},
		[235028] = {
			2052, -- [1]
			"Wachsame Maid", -- [2]
		},
		[318451] = {
			2344, -- [1]
			"N'Zoth der Verderber", -- [2]
		},
		[101810] = {
			1883, -- [1]
			"Echo von Jaina", -- [2]
		},
		[302588] = {
			2298, -- [1]
			"[*] Frostmal", -- [2]
		},
		[258058] = {
			2101, -- [1]
			"Schlickkrabbe", -- [2]
		},
		[289795] = {
			2280, -- [1]
			"Unbekannt", -- [2]
		},
		[302589] = {
			2298, -- [1]
			"[*] Toxisches Mal", -- [2]
		},
		[283143] = {
			2260, -- [1]
			"Magnetarm", -- [2]
		},
		[296449] = {
			2305, -- [1]
			"Azsharas Glanz", -- [2]
		},
		[272397] = {
			2094, -- [1]
			"[*] Schnitterstrudel", -- [2]
		},
		[297985] = {
			2292, -- [1]
			"Schmierer", -- [2]
		},
		[288774] = {
			2276, -- [1]
			"Funkenbot", -- [2]
		},
		[257292] = {
			2098, -- [1]
			"Spalterin der Eisenfluträuber", -- [2]
		},
		[295939] = {
			2291, -- [1]
			"Fliegende Unterdrückungseinheit JK-8", -- [2]
		},
		[266258] = {
			2117, -- [1]
			"Drust Slaver Summoning Portal", -- [2]
		},
		[305663] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
		[38064] = {
			1899, -- [1]
			"Astraler Theurg", -- [2]
		},
		[197418] = {
			1833, -- [1]
			"Illysanna Rabenkrone", -- [2]
		},
		[268306] = {
			2116, -- [1]
			"Lady Kronsteig", -- [2]
		},
		[257293] = {
			2096, -- [1]
			"Wirbelwindsäbel", -- [2]
		},
		[38384] = {
			1895, -- [1]
			"Yazzai", -- [2]
		},
		[101812] = {
			1883, -- [1]
			"Echo von Jaina", -- [2]
		},
		[307201] = {
			2333, -- [1]
			"Ka'zir", -- [2]
		},
		[259853] = {
			2107, -- [1]
			"Rixxa Fluxflamme", -- [2]
		},
		[106546] = {
			1414, -- [1]
			"Yan-Zhu der Dekantierte", -- [2]
		},
		[34930] = {
			1901, -- [1]
			"Astraler Dunkelzauberer", -- [2]
		},
		[25821] = {
			1938, -- [1]
			"Kriegshäuptling Kargath Messerfaust", -- [2]
		},
		[256016] = {
			2093, -- [1]
			"[*] Übler Überzug", -- [2]
		},
		[318976] = {
			2344, -- [1]
			"[*] Verblüffendes Starren", -- [2]
		},
		[266266] = {
			2117, -- [1]
			"Gorak Tul", -- [2]
		},
		[123051] = {
			2334, -- [1]
			"Geistbeuger <Elereth-Pozzodell'Eternità>", -- [2]
		},
		[38065] = {
			1901, -- [1]
			"Nexusschrecken", -- [2]
		},
		[260879] = {
			2111, -- [1]
			"Älteste Leaxa", -- [2]
		},
		[236571] = {
			2038, -- [1]
			"Verderbte Klinge", -- [2]
		},
		[305672] = {
			2374, -- [1]
			"Therum Tiefenschmied", -- [2]
		},
		[306184] = {
			2331, -- [1]
			"Ra-den", -- [2]
		},
		[259856] = {
			2107, -- [1]
			"Rixxa Fluxflamme", -- [2]
		},
		[119981] = {
			1442, -- [1]
			"Ming der Verschlagene", -- [2]
		},
		[291856] = {
			2260, -- [1]
			"Plasmakugel", -- [2]
		},
		[193585] = {
			1793, -- [1]
			"Steingebundener Fallensteller", -- [2]
		},
		[264734] = {
			2115, -- [1]
			"Raal der Unersättliche", -- [2]
		},
		[192050] = {
			1813, -- [1]
			"Serpentrix", -- [2]
		},
		[112945] = {
			1413, -- [1]
			"Hopsallus", -- [2]
		},
		[294929] = {
			2258, -- [1]
			"K.U.-J.0.", -- [2]
		},
		[239132] = {
			2038, -- [1]
			"Gefallener Avatar", -- [2]
		},
		[234015] = {
			2048, -- [1]
			"Belac", -- [2]
		},
		[314889] = {
			2344, -- [1]
			"Ungeschützte Synapse", -- [2]
		},
		[307213] = {
			2333, -- [1]
			"Tek'ris", -- [2]
		},
		[307725] = {
			2334, -- [1]
			"Prophet Skitra", -- [2]
		},
		[271903] = {
			2105, -- [1]
			"Münzbetriebener Meuteverprügler", -- [2]
		},
		[106933] = {
			1405, -- [1]
			"Bomber Ga'dok", -- [2]
		},
		[259092] = {
			2096, -- [1]
			"Sturmrufer der Eisenfluträuber", -- [2]
		},
		[295445] = {
			2291, -- [1]
			"Panzerknacker Mk. I", -- [2]
		},
		[267299] = {
			2133, -- [1]
			"Vol'zith der Flüsterer", -- [2]
		},
		[260372] = {
			2108, -- [1]
			"Flugfacklerin der Venture Co.", -- [2]
		},
		[307217] = {
			2333, -- [1]
			"Flitzer der Aqir", -- [2]
		},
		[27581] = {
			1895, -- [1]
			"Kriegsherr Salaris", -- [2]
		},
		[31707] = {
			2337, -- [1]
			8, -- [2]
		},
		[257814] = {
			2102, -- [1]
			"Jes Knurris", -- [2]
		},
		[307218] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[312336] = {
			2328, -- [1]
			"Dunkle Inquisitorin Xanesh", -- [2]
		},
		[111668] = {
			1406, -- [1]
			"Raigonn", -- [2]
		},
		[269351] = {
			2143, -- [1]
			"T'zala", -- [2]
		},
		[313362] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[32315] = {
			1900, -- [1]
			"Astraler Grufträuber", -- [2]
		},
		[106807] = {
			1412, -- [1]
			"Uuk-Uuk", -- [2]
		},
		[267818] = {
			2131, -- [1]
			"Sturmbeschwörerin Faye", -- [2]
		},
		[313364] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[307224] = {
			2303, -- [1]
			"Orgozoa", -- [2]
		},
		[267308] = {
			2140, -- [1]
			"Zanazal der Weise", -- [2]
		},
		[265773] = {
			2139, -- [1]
			"Die Goldschlange", -- [2]
		},
		[34933] = {
			1899, -- [1]
			"Manasauger", -- [2]
		},
		[267310] = {
			2133, -- [1]
			"Manifestation der Tiefe", -- [2]
		},
		[315927] = {
			2344, -- [1]
			"N'Zoth der Verderber", -- [2]
		},
		[275499] = {
			2327, -- [1]
			"Totem des heilenden Flusses <Calinda-Nethersturm>", -- [2]
		},
		[196665] = {
			1814, -- [1]
			"Lightning Stalker", -- [2]
		},
		[282153] = {
			2276, -- [1]
			"Hochtüftler Mekkadrill", -- [2]
		},
		[226347] = {
			1792, -- [1]
			"Steinklauenlarvenmeister", -- [2]
		},
		[257308] = {
			2096, -- [1]
			"Harlan der Schmierige", -- [2]
		},
		[46192] = {
			1895, -- [1]
			"Priesterin Delrissa", -- [2]
		},
		[69963] = {
			1099, -- [1]
			"Templerin der Kor'kron", -- [2]
		},
		[36213] = {
			2331, -- [1]
			"Unbekannt", -- [2]
		},
		[306208] = {
			2328, -- [1]
			"Dunkle Inquisitorin Xanesh", -- [2]
		},
		[307232] = {
			2333, -- [1]
			"Tek'ris", -- [2]
		},
		[264757] = {
			2111, -- [1]
			"Älteste Leaxa", -- [2]
		},
		[236072] = {
			2054, -- [1]
			"Seelenkönigin Dejahna", -- [2]
		},
		[38644] = {
			625, -- [1]
			"Nethermagier der Grauherzen", -- [2]
		},
		[232746] = {
			2037, -- [1]
			"Herrin Sassz'ine", -- [2]
		},
		[243237] = {
			2102, -- [1]
			"[*] Platzen", -- [2]
		},
		[241702] = {
			2051, -- [1]
			"Schattenseele", -- [2]
		},
		[34934] = {
			1899, -- [1]
			"Astrales Gespenst <Astraler Zauberbinder>", -- [2]
		},
		[267830] = {
			2131, -- [1]
			"Sturmbeschwörerin Faye", -- [2]
		},
		[294954] = {
			2259, -- [1]
			"[*] Selbststutzende Hecke", -- [2]
		},
		[260894] = {
			2111, -- [1]
			"Älteste Leaxa", -- [2]
		},
		[306726] = {
			2373, -- [1]
			"Vez'okk der Lichtlose", -- [2]
		},
		[46193] = {
			1895, -- [1]
			"Priesterin Delrissa", -- [2]
		},
		[193088] = {
			1812, -- [1]
			"König Klafterbart", -- [2]
		},
		[44274] = {
			1895, -- [1]
			"Zelfan", -- [2]
		},
		[22273] = {
			1900, -- [1]
			"Astraler Zauberer", -- [2]
		},
		[268347] = {
			2132, -- [1]
			"Lord Sturmsang", -- [2]
		},
		[310311] = {
			2336, -- [1]
			"Finsterer Seelenschnitzer", -- [2]
		},
		[257314] = {
			2096, -- [1]
			"Grenadier der Eisenfluträuber", -- [2]
		},
		[258338] = {
			2094, -- [1]
			"Käpt'n Raoul", -- [2]
		},
		[312360] = {
			2338, -- [1]
			"Alleria Windläufer", -- [2]
		},
		[267838] = {
			2131, -- [1]
			"[*] Gegenwind", -- [2]
		},
		[294961] = {
			2258, -- [1]
			"[*] Lodernder Biss", -- [2]
		},
		[311849] = {
			2335, -- [1]
			"Lebendiges Miasma", -- [2]
		},
		[287797] = {
			2276, -- [1]
			"Hochtüftler Mekkadrill", -- [2]
		},
		[312873] = {
			2344, -- [1]
			"Todesschwinge", -- [2]
		},
		[79050] = {
			1057, -- [1]
			"Hohepriesterin Azil", -- [2]
		},
		[306733] = {
			2331, -- [1]
			"Ra-den", -- [2]
		},
		[257316] = {
			2096, -- [1]
			"Harlan der Schmierige", -- [2]
		},
		[273470] = {
			2109, -- [1]
			"Schreckenskapitänin Luebke", -- [2]
		},
		[267841] = {
			2131, -- [1]
			"Sturmbeschwörerin Faye", -- [2]
		},
		[46194] = {
			1895, -- [1]
			"Yazzai", -- [2]
		},
		[69967] = {
			1100, -- [1]
			"Templerin der Kor'kron", -- [2]
		},
		[306735] = {
			2329, -- [1]
			"Furorion", -- [2]
		},
		[315947] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[256038] = {
			2104, -- [1]
			"Aufseher Korgus", -- [2]
		},
		[264773] = {
			2130, -- [1]
			"[*] Erstickendes Meerwasser", -- [2]
		},
		[193093] = {
			1812, -- [1]
			"König Klafterbart", -- [2]
		},
		[260900] = {
			2113, -- [1]
			"Schwester Solena", -- [2]
		},
		[1604] = {
			1100, -- [1]
			"Nekrolythin der Kor'kron", -- [2]
		},
		[115002] = {
			1306, -- [1]
			"Verderbter Taran Zhu", -- [2]
		},
		[316463] = {
			2344, -- [1]
			"Gedankenpforte", -- [2]
		},
		[310323] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[230197] = {
			2008, -- [1]
			"[*] Dunkle Wasser", -- [2]
		},
		[232756] = {
			2037, -- [1]
			"Herrin Sassz'ine", -- [2]
		},
		[310324] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[313395] = {
			2331, -- [1]
			"Vitaessenz <Ra-den>", -- [2]
		},
		[315954] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[310325] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[44276] = {
			1895, -- [1]
			"Zelfan", -- [2]
		},
		[268362] = {
			2105, -- [1]
			"Zerstörungswütige Pionierin", -- [2]
		},
		[232757] = {
			2037, -- [1]
			"Herrin Sassz'ine", -- [2]
		},
		[30494] = {
			1936, -- [1]
			"Kriechender Schlammling", -- [2]
		},
		[116027] = {
			1413, -- [1]
			"Hopfer", -- [2]
		},
		[38647] = {
			625, -- [1]
			"Nethermagier der Grauherzen", -- [2]
		},
		[313398] = {
			2331, -- [1]
			"Leerenessenz <Ra-den>", -- [2]
		},
		[305722] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
		[282182] = {
			2276, -- [1]
			"Hochtüftler Mekkadrill", -- [2]
		},
		[106560] = {
			1414, -- [1]
			"[*] Sprudelndes Bräu", -- [2]
		},
		[310329] = {
			2343, -- [1]
			"Drest'agath", -- [2]
		},
		[313400] = {
			2344, -- [1]
			"Verderbertentakel", -- [2]
		},
		[314411] = {
			2096, -- [1]
			"Leerenweber Mal'thir", -- [2]
		},
		[107270] = {
			2344, -- [1]
			10, -- [2]
		},
		[188493] = {
			1792, -- [1]
			"Naraxas", -- [2]
		},
		[227642] = {
			1962, -- [1]
			"Guarm", -- [2]
		},
		[310331] = {
			2344, -- [1]
			"Geistiges Auge", -- [2]
		},
		[230201] = {
			2037, -- [1]
			"Herrin Sassz'ine", -- [2]
		},
		[69203] = {
			2096, -- [1]
			"Buchtdrescher", -- [2]
		},
		[307773] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
		[257580] = {
			2101, -- [1]
			"Die Sandkönigin", -- [2]
		},
		[106433] = {
			1304, -- [1]
			"Meister Schneewehe", -- [2]
		},
		[188494] = {
			1792, -- [1]
			"[*] Stinkendes Maul", -- [2]
		},
		[231854] = {
			2036, -- [1]
			"Harjatan", -- [2]
		},
		[310333] = {
			2344, -- [1]
			"Geistiges Auge", -- [2]
		},
		[306751] = {
			2329, -- [1]
			"Furorion", -- [2]
		},
		[292267] = {
			2260, -- [1]
			"Omegabrecher", -- [2]
		},
		[183633] = {
			1793, -- [1]
			"Steingebundener Fallensteller", -- [2]
		},
		[200637] = {
			1793, -- [1]
			"Dargrul", -- [2]
		},
		[306752] = {
			2332, -- [1]
			"Thrall", -- [2]
		},
		[292247] = {
			2289, -- [1]
			"Schwarzwasserungetüm", -- [2]
		},
		[114999] = {
			1306, -- [1]
			"Verderbter Taran Zhu", -- [2]
		},
		[308288] = {
			2338, -- [1]
			"Alleria Windläufer", -- [2]
		},
		[296518] = {
			2291, -- [1]
			"Spazierschock X1", -- [2]
		},
		[285064] = {
			2280, -- [1]
			"Zorn der Tiefe", -- [2]
		},
		[27584] = {
			1895, -- [1]
			"Kriegsherr Salaris", -- [2]
		},
		[257582] = {
			2106, -- [1]
			"Erdwüter", -- [2]
		},
		[106434] = {
			1304, -- [1]
			"Meister Schneewehe", -- [2]
		},
		[236529] = {
			2050, -- [1]
			"Jägerin Kasparian", -- [2]
		},
		[236519] = {
			2050, -- [1]
			"[*] Mondbrand", -- [2]
		},
		[291914] = {
			2260, -- [1]
			"[*] Schneidestrahl", -- [2]
		},
		[264608] = {
			2094, -- [1]
			"Rummy Mancomb", -- [2]
		},
		[112944] = {
			1413, -- [1]
			"Hopsallus", -- [2]
		},
		[107202] = {
			1303, -- [1]
			"[*] Blitzschlag beschwören", -- [2]
		},
		[291915] = {
			2260, -- [1]
			"[*] Plasmakugel", -- [2]
		},
		[307058] = {
			2337, -- [1]
			"Myzelzyste", -- [2]
		},
		[311362] = {
			2329, -- [1]
			"[*] Wachsende Hitze", -- [2]
		},
		[15230] = {
			1921, -- [1]
			"Ewige Chronomantin", -- [2]
		},
		[269399] = {
			2133, -- [1]
			"Vol'zith der Flüsterer", -- [2]
		},
		[296522] = {
			2291, -- [1]
			"[*] Selbstzerstörung", -- [2]
		},
		[309316] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
		[199179] = {
			1807, -- [1]
			"Schwarzklauenworg", -- [2]
		},
		[310340] = {
			2333, -- [1]
			"Ka'zir", -- [2]
		},
		[235751] = {
			2055, -- [1]
			"Agronox", -- [2]
		},
		[296746] = {
			2305, -- [1]
			"Arkane Bombe", -- [2]
		},
		[258352] = {
			2094, -- [1]
			"Käpt'n Eudora", -- [2]
		},
		[69973] = {
			1100, -- [1]
			"Nekrolythin der Kor'kron", -- [2]
		},
		[298571] = {
			2312, -- [1]
			"Mechamotorrad", -- [2]
		},
		[217851] = {
			1792, -- [1]
			"Naraxas", -- [2]
		},
		[259531] = {
			2085, -- [1]
			"Totem der Wiederbelebung", -- [2]
		},
		[257585] = {
			2098, -- [1]
			"[*] Kanonensperrfeuer", -- [2]
		},
		[297257] = {
			2290, -- [1]
			"König Gobbamak", -- [2]
		},
		[241721] = {
			2051, -- [1]
			"[*] Illidans blinder Blick", -- [2]
		},
		[240970] = {
			2038, -- [1]
			"Gefallener Avatar", -- [2]
		},
		[310343] = {
			2333, -- [1]
			"Unbekannt <Ka'zir>", -- [2]
		},
		[312782] = {
			2344, -- [1]
			"N'Zoth der Verderber", -- [2]
		},
		[311367] = {
			2345, -- [1]
			"Il'gynoth", -- [2]
		},
		[209921] = {
			1793, -- [1]
			"Dargrul", -- [2]
		},
		[295536] = {
			2291, -- [1]
			"Fliegende Unterdrückungseinheit JK-8", -- [2]
		},
		[193803] = {
			1792, -- [1]
			"Teerspuckerlarve", -- [2]
		},
		[318078] = {
			2335, -- [1]
			"Lebendiges Miasma", -- [2]
		},
		[239931] = {
			2051, -- [1]
			"Kil'jaeden", -- [2]
		},
		[291922] = {
			2258, -- [1]
			"K.U.-J.0.", -- [2]
		},
		[234817] = {
			2039, -- [1]
			"Mephistroth", -- [2]
		},
		[311369] = {
			2328, -- [1]
			"[*] Qual", -- [2]
		},
		[260551] = {
			2114, -- [1]
			"Seelengebundener Goliath", -- [2]
		},
		[261446] = {
			2116, -- [1]
			"Lady Kronsteig", -- [2]
		},
		[306637] = {
			2331, -- [1]
			"[*] Instabiler Leerenstoß", -- [2]
		},
		[69972] = {
			1100, -- [1]
			"Nekrolythin der Kor'kron", -- [2]
		},
		[239932] = {
			2051, -- [1]
			"Kil'jaeden", -- [2]
		},
		[267360] = {
			2133, -- [1]
			"Vol'zith der Flüsterer", -- [2]
		},
		[306765] = {
			2332, -- [1]
			"Thrall", -- [2]
		},
		[236712] = {
			2050, -- [1]
			"Priesterin Lunazenit", -- [2]
		},
		[268896] = {
			2132, -- [1]
			"Lord Sturmsang", -- [2]
		},
		[310348] = {
			2343, -- [1]
			"Tentakel von Drest'agath", -- [2]
		},
		[317001] = {
			2343, -- [1]
			"[*] Umbralabneigung", -- [2]
		},
		[237630] = {
			2050, -- [1]
			"Hauptmann Yathae Mondstreich", -- [2]
		},
		[297555] = {
			2372, -- [1]
			"Auslöschungselementar", -- [2]
		},
		[69975] = {
			1100, -- [1]
			"Heckenschütze der Kor'kron", -- [2]
		},
		[267874] = {
			2142, -- [1]
			"[*] Brennender Boden", -- [2]
		},
		[311373] = {
			2376, -- [1]
			"Lichtjäger des SI:7", -- [2]
		},
		[145735] = {
			1624, -- [1]
			"Amalgam der Verderbnis", -- [2]
		},
		[291946] = {
			2258, -- [1]
			"K.U.-J.0.", -- [2]
		},
		[260508] = {
			2114, -- [1]
			"Seelengebundener Goliath", -- [2]
		},
		[8599] = {
			1900, -- [1]
			"Astraler Grufträuber", -- [2]
		},
		[258773] = {
			2093, -- [1]
			"Himmelskäpt'n Kragg", -- [2]
		},
		[306257] = {
			2331, -- [1]
			"[*] Instabile Vita", -- [2]
		},
		[282205] = {
			2276, -- [1]
			"Hochtüftler Mekkadrill", -- [2]
		},
		[299093] = {
			2305, -- [1]
			"[*] Gleißende Wut", -- [2]
		},
		[132467] = {
			2337, -- [1]
			10, -- [2]
		},
		[310352] = {
			2343, -- [1]
			"Schlund von Drest'agath", -- [2]
		},
		[25602] = {
			1899, -- [1]
			"Manasauger", -- [2]
		},
		[237632] = {
			2050, -- [1]
			"Priesterin Lunazenit", -- [2]
		},
		[202680] = {
			1813, -- [1]
			"Serpentrix", -- [2]
		},
		[115010] = {
			1306, -- [1]
			"Erdrückender Hass <Verderbter Taran Zhu>", -- [2]
		},
		[245509] = {
			2051, -- [1]
			"Kil'jaeden", -- [2]
		},
		[80467] = {
			1058, -- [1]
			"Ozruk", -- [2]
		},
		[267639] = {
			2142, -- [1]
			"Mchimba der Balsamierer", -- [2]
		},
		[296025] = {
			2291, -- [1]
			"Fliegende Unterdrückungseinheit JK-8", -- [2]
		},
		[233283] = {
			2032, -- [1]
			"Goroth", -- [2]
		},
		[307284] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[241983] = {
			2051, -- [1]
			"Kil'jaeden", -- [2]
		},
		[308308] = {
			2374, -- [1]
			"Gefallener Herzdurchbohrer", -- [2]
		},
		[69912] = {
			1099, -- [1]
			"Häscher der Kor'kron", -- [2]
		},
		[300961] = {
			2298, -- [1]
			"[*] Gefrorener Boden", -- [2]
		},
		[306247] = {
			2329, -- [1]
			"[*] Einäscherung", -- [2]
		},
		[263275] = {
			2105, -- [1]
			"Vorarbeiter Askari", -- [2]
		},
		[69899] = {
			1099, -- [1]
			"Primalist der Kor'kron", -- [2]
		},
		[275051] = {
			2100, -- [1]
			"[*] Faule Wasser", -- [2]
		},
		[188927] = {
			2096, -- [1]
			"Verdammnisbringer der Schattenteufel", -- [2]
		},
		[264050] = {
			2114, -- [1]
			"Dornformerin des Zirkels", -- [2]
		},
		[302681] = {
			2312, -- [1]
			"Trixie Teyser", -- [2]
		},
		[197478] = {
			1833, -- [1]
			"Illysanna Rabenkrone", -- [2]
		},
		[70361] = {
			1100, -- [1]
			"Bastionsfrostwyrm", -- [2]
		},
		[257593] = {
			2106, -- [1]
			"Azerokk", -- [2]
		},
		[302682] = {
			2312, -- [1]
			"Trixie Teyser", -- [2]
		},
		[30496] = {
			1936, -- [1]
			"Großhexenmeister Nethekurse", -- [2]
		},
		[200182] = {
			1839, -- [1]
			"Schemen von Xavius", -- [2]
		},
		[269419] = {
			2133, -- [1]
			"[*] Gähnendes Tor", -- [2]
		},
		[315161] = {
			2329, -- [1]
			"Auge der Verderbnis", -- [2]
		},
		[311383] = {
			2328, -- [1]
			"[*] Qual", -- [2]
		},
		[257337] = {
			2105, -- [1]
			"Münzbetriebener Meuteverprügler", -- [2]
		},
		[258875] = {
			2094, -- [1]
			"Unbekannt <Käpt'n Raoul>", -- [2]
		},
		[268591] = {
			2143, -- [1]
			"König Dazar", -- [2]
		},
		[71769] = {
			1106, -- [1]
			"Der Lichkönig", -- [2]
		},
		[296737] = {
			2305, -- [1]
			"Azsharas Glanz", -- [2]
		},
		[310361] = {
			2343, -- [1]
			"Drest'agath", -- [2]
		},
		[234310] = {
			2051, -- [1]
			"Kil'jaeden", -- [2]
		},
		[268403] = {
			2143, -- [1]
			"König Dazar", -- [2]
		},
		[232775] = {
			1962, -- [1]
			"Guarm", -- [2]
		},
		[291939] = {
			2260, -- [1]
			"[*] Gigaschock", -- [2]
		},
		[268387] = {
			2116, -- [1]
			"Lord Kronsteig", -- [2]
		},
		[256060] = {
			2093, -- [1]
			"Himmelskäpt'n Kragg", -- [2]
		},
		[224729] = {
			2329, -- [1]
			"Aschenwandererassassine", -- [2]
		},
		[306971] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[296546] = {
			2305, -- [1]
			"Azsharas Glanz", -- [2]
		},
		[185854] = {
			2096, -- [1]
			"Alptraumreiter", -- [2]
		},
		[307805] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
		[234824] = {
			2039, -- [1]
			"Mephistroth", -- [2]
		},
		[241989] = {
			2036, -- [1]
			"Wogenheiler der Reißmäuler", -- [2]
		},
		[13323] = {
			1895, -- [1]
			"Yazzai", -- [2]
		},
		[309853] = {
			2327, -- [1]
			"Finstere Manifestation <[*] Finstere Manifestation>", -- [2]
		},
		[114548] = {
			1414, -- [1]
			"Yan-Zhu der Dekantierte", -- [2]
		},
		[267890] = {
			2131, -- [1]
			"[*] Schnelligkeitszauberschutz", -- [2]
		},
		[278637] = {
			2118, -- [1]
			"Blutzecke", -- [2]
		},
		[309854] = {
			2331, -- [1]
			"Ra-den", -- [2]
		},
		[257597] = {
			2106, -- [1]
			"Azerokk", -- [2]
		},
		[78807] = {
			1058, -- [1]
			"Ozruk", -- [2]
		},
		[305249] = {
			2113, -- [1]
			"Schwester Solena", -- [2]
		},
		[231754] = {
			2036, -- [1]
			"Wogenheiler der Reißmäuler", -- [2]
		},
		[274991] = {
			2100, -- [1]
			"Viq'Goth", -- [2]
		},
		[313672] = {
			2333, -- [1]
			"[*] Säurepfütze", -- [2]
		},
		[307297] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[307809] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[269131] = {
			2132, -- [1]
			"Lord Sturmsang", -- [2]
		},
		[296551] = {
			2298, -- [1]
			"Abyssalkommandantin Sivara", -- [2]
		},
		[201959] = {
			1793, -- [1]
			"Glutpanzerdominator", -- [2]
		},
		[34942] = {
			1901, -- [1]
			"Astraler Dunkelzauberer", -- [2]
		},
		[298087] = {
			2303, -- [1]
			"Orgozoa", -- [2]
		},
		[257459] = {
			2098, -- [1]
			"Rothaken der Häcksler", -- [2]
		},
		[268587] = {
			2143, -- [1]
			"König Dazar", -- [2]
		},
		[234550] = {
			2048, -- [1]
			"Atrigan", -- [2]
		},
		[313955] = {
			2344, -- [1]
			"Sylvanas Windläufer", -- [2]
		},
		[106827] = {
			1305, -- [1]
			"Sha der Gewalt", -- [2]
		},
		[228519] = {
			2008, -- [1]
			"Schmutzfürst", -- [2]
		},
		[306732] = {
			2331, -- [1]
			"Ra-den", -- [2]
		},
		[265337] = {
			2115, -- [1]
			"Blutverschmiertes Ferkel", -- [2]
		},
		[32363] = {
			1899, -- [1]
			"Nexusprinz Shaffar", -- [2]
		},
		[230362] = {
			2037, -- [1]
			"Zitterqualle", -- [2]
		},
		[261438] = {
			2116, -- [1]
			"Lord Kronsteig", -- [2]
		},
		[291949] = {
			2258, -- [1]
			"K.U.-J.0.", -- [2]
		},
		[298602] = {
			2312, -- [1]
			"[*] Rauchwolke", -- [2]
		},
		[22911] = {
			1900, -- [1]
			"Astraler Grufträuber", -- [2]
		},
		[33919] = {
			1901, -- [1]
			"Tavarok", -- [2]
		},
		[306279] = {
			2331, -- [1]
			"Instabiler Leerenpirscher", -- [2]
		},
		[237633] = {
			2050, -- [1]
			"[*] Spektralgleve", -- [2]
		},
		[241312] = {
			2036, -- [1]
			"Akolyth der Reißmäuler", -- [2]
		},
		[261439] = {
			2116, -- [1]
			"Lord Kronsteig", -- [2]
		},
		[291613] = {
			2260, -- [1]
			"Lufteinheit R-21/X", -- [2]
		},
		[267899] = {
			2131, -- [1]
			"Bruder Eisenkiel", -- [2]
		},
		[269369] = {
			2143, -- [1]
			"T'zala", -- [2]
		},
		[274213] = {
			2112, -- [1]
			"Sporenrufer Zancha", -- [2]
		},
		[291878] = {
			2260, -- [1]
			"Lufteinheit R-21/X", -- [2]
		},
		[106808] = {
			1412, -- [1]
			"Uuk-Uuk", -- [2]
		},
		[226385] = {
			1792, -- [1]
			"Teerspuckerlauerer", -- [2]
		},
		[261440] = {
			2116, -- [1]
			"Lord Kronsteig", -- [2]
		},
		[291953] = {
			2258, -- [1]
			"Gepresster Schrott", -- [2]
		},
		[306794] = {
			2329, -- [1]
			"Furorion", -- [2]
		},
		[307306] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[313959] = {
			2329, -- [1]
			"[*] Versengende Brandblase", -- [2]
		},
		[311570] = {
			2376, -- [1]
			"Oberanführer Mathias Shaw", -- [2]
		},
		[296560] = {
			2291, -- [1]
			"[*] Haftende Statik", -- [2]
		},
		[311401] = {
			2345, -- [1]
			"Il'gynoth", -- [2]
		},
		[260570] = {
			2113, -- [1]
			"[*] Lauffeuer", -- [2]
		},
		[310298] = {
			2336, -- [1]
			"Finsterer Seelenschnitzer", -- [2]
		},
		[198496] = {
			1791, -- [1]
			"Ularogg Klippenformer", -- [2]
		},
		[192611] = {
			2096, -- [1]
			12, -- [2]
		},
		[262513] = {
			2108, -- [1]
			"Flugfacklerin der Venture Co.", -- [2]
		},
		[281721] = {
			2345, -- [1]
			"Il'gynoth", -- [2]
		},
		[258883] = {
			2113, -- [1]
			12, -- [2]
		},
		[257092] = {
			2101, -- [1]
			"Die Sandkönigin", -- [2]
		},
		[307821] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
		[270187] = {
			2100, -- [1]
			"Viq'Goth", -- [2]
		},
		[267905] = {
			2131, -- [1]
			"Bruder Eisenkiel", -- [2]
		},
		[308168] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
		[268419] = {
			2143, -- [1]
			"[*] Sturmhieb", -- [2]
		},
		[258628] = {
			2106, -- [1]
			"[*] Resonantes Erdbeben", -- [2]
		},
		[283422] = {
			2257, -- [1]
			"Gnominator G-800", -- [2]
		},
		[188907] = {
			2096, -- [1]
			"Verdammnisbringer der Schattenteufel", -- [2]
		},
		[102573] = {
			1303, -- [1]
			"Azurschlange", -- [2]
		},
		[255558] = {
			2084, -- [1]
			"[*] Unreines Blut", -- [2]
		},
		[267907] = {
			2114, -- [1]
			"[*] Seelendornen", -- [2]
		},
		[78939] = {
			1058, -- [1]
			"Ozruk", -- [2]
		},
		[316012] = {
			2331, -- [1]
			"[*] Instabile Leere", -- [2]
		},
		[306289] = {
			2329, -- [1]
			"Furorion", -- [2]
		},
		[296566] = {
			2305, -- [1]
			"Azsharas Glanz", -- [2]
		},
		[116297] = {
			1405, -- [1]
			"[*] Bombenlauf", -- [2]
		},
		[268932] = {
			2143, -- [1]
			"König Dazar", -- [2]
		},
		[306290] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
		[239439] = {
			2052, -- [1]
			"Äonischer Verteidiger", -- [2]
		},
		[260334] = {
			2118, -- [1]
			"Felsschlund der Befallene", -- [2]
		},
		[227669] = {
			1962, -- [1]
			"Guarm", -- [2]
		},
		[298103] = {
			2303, -- [1]
			"Orgozoa", -- [2]
		},
		[283421] = {
			2257, -- [1]
			"Gnominator G-800", -- [2]
		},
		[54771] = {
			1106, -- [1]
			"Knochensensenverheerer", -- [2]
		},
		[191847] = {
			1813, -- [1]
			"Serpentrix", -- [2]
		},
		[265352] = {
			2113, -- [1]
			"Seuchenkröte", -- [2]
		},
		[236115] = {
			2050, -- [1]
			"Priesterin Lunazenit", -- [2]
		},
		[228004] = {
			1958, -- [1]
			"Hymdall", -- [2]
		},
		[307828] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[256551] = {
			2095, -- [1]
			"Sägezahnhai", -- [2]
		},
		[231998] = {
			2036, -- [1]
			"Harjatan", -- [2]
		},
		[307317] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[268936] = {
			2143, -- [1]
			"König Dazar", -- [2]
		},
		[257608] = {
			2101, -- [1]
			"Die Sandkönigin", -- [2]
		},
		[314994] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
		[301177] = {
			2291, -- [1]
			"Fliegende Unterdrückungseinheit JK-8", -- [2]
		},
		[256039] = {
			2104, -- [1]
			"Aufseher Korgus", -- [2]
		},
		[306295] = {
			2327, -- [1]
			"[*] Verbotenes Mana", -- [2]
		},
		[314995] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
		[313460] = {
			2333, -- [1]
			"Tek'ris", -- [2]
		},
		[107215] = {
			1397, -- [1]
			"Mantismunition", -- [2]
		},
		[306296] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
		[31467] = {
			1920, -- [1]
			"Chronolord Deja", -- [2]
		},
		[313461] = {
			2333, -- [1]
			"Ka'zir", -- [2]
		},
		[307832] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[118963] = {
			2129, -- [1]
			"Schleicher der Glintrok", -- [2]
		},
		[282245] = {
			2276, -- [1]
			"Hochtüftler Mekkadrill", -- [2]
		},
		[262287] = {
			2108, -- [1]
			"Flugfacklerin der Venture Co.", -- [2]
		},
		[307471] = {
			2335, -- [1]
			"Shad'har der Unersättliche", -- [2]
		},
		[289297] = {
			2276, -- [1]
			"Funkenbot", -- [2]
		},
		[228003] = {
			1958, -- [1]
			"Hymdall", -- [2]
		},
		[256405] = {
			2095, -- [1]
			"Trothak", -- [2]
		},
		[295552] = {
			2291, -- [1]
			"Fliegende Unterdrückungseinheit JK-8", -- [2]
		},
		[179057] = {
			2113, -- [1]
			12, -- [2]
		},
		[20615] = {
			1895, -- [1]
			"Kriegsherr Salaris", -- [2]
		},
		[310396] = {
			2343, -- [1]
			"Auge von Drest'agath", -- [2]
		},
		[256552] = {
			2095, -- [1]
			"Sägezahnhai", -- [2]
		},
		[287877] = {
			2276, -- [1]
			"Explodierendes Schaf", -- [2]
		},
		[200551] = {
			1793, -- [1]
			"Dargrul", -- [2]
		},
		[272457] = {
			2112, -- [1]
			"Sporenrufer Zancha", -- [2]
		},
		[231768] = {
			2036, -- [1]
			"[*] Durchtränkendes Wasser", -- [2]
		},
		[228514] = {
			2008, -- [1]
			"Helya", -- [2]
		},
		[256589] = {
			2094, -- [1]
			"Käpt'n Raoul", -- [2]
		},
		[259147] = {
			2087, -- [1]
			"[*] Seelenmahl", -- [2]
		},
		[70362] = {
			1100, -- [1]
			"Bastionsfrostwyrm", -- [2]
		},
		[269456] = {
			2100, -- [1]
			"Viq'Goth", -- [2]
		},
		[305792] = {
			2328, -- [1]
			"Königin Azshara", -- [2]
		},
		[309373] = {
			2377, -- [1]
			"Magister Umbric", -- [2]
		},
		[158221] = {
			2337, -- [1]
			10, -- [2]
		},
		[240213] = {
			2038, -- [1]
			"Gefallener Avatar", -- [2]
		},
		[66021] = {
			1106, -- [1]
			"Ritter der Schwarzen Klinge", -- [2]
		},
		[193633] = {
			1833, -- [1]
			"Auferstandene Bogenschützin", -- [2]
		},
		[70371] = {
			1099, -- [1]
			"Rasende Monstrosität", -- [2]
		},
		[31458] = {
			1921, -- [1]
			9, -- [2]
		},
		[267311] = {
			2133, -- [1]
			"Manifestation der Tiefe", -- [2]
		},
		[265781] = {
			2139, -- [1]
			"Die Goldschlange", -- [2]
		},
		[258381] = {
			2094, -- [1]
			"Käpt'n Eudora", -- [2]
		},
		[318587] = {
			2257, -- [1]
			"Gnominator G-800", -- [2]
		},
		[272668] = {
			2114, -- [1]
			"Brennende Seele", -- [2]
		},
		[235230] = {
			2048, -- [1]
			"Belac", -- [2]
		},
		[305794] = {
			2328, -- [1]
			"Königin Azshara", -- [2]
		},
		[265366] = {
			2130, -- [1]
			"Aqualing", -- [2]
		},
		[191855] = {
			1813, -- [1]
			"Serpentrix", -- [2]
		},
		[288708] = {
			2276, -- [1]
			"Hochtüftler Mekkadrill", -- [2]
		},
		[316030] = {
			2335, -- [1]
			"Shad'har der Unersättliche", -- [2]
		},
		[260685] = {
			2111, -- [1]
			"Älteste Leaxa", -- [2]
		},
		[306819] = {
			2331, -- [1]
			"Ra-den", -- [2]
		},
		[291865] = {
			2260, -- [1]
			"Lufteinheit R-21/X", -- [2]
		},
		[316031] = {
			2335, -- [1]
			"Shad'har der Unersättliche", -- [2]
		},
		[310402] = {
			2333, -- [1]
			"[*] Verschlingende Raserei", -- [2]
		},
		[287887] = {
			2280, -- [1]
			"Schwester Katharina", -- [2]
		},
		[259491] = {
			2113, -- [1]
			"Schwester Solena", -- [2]
		},
		[285460] = {
			2259, -- [1]
			"Hochmaschinist Funkenstrom", -- [2]
		},
		[310403] = {
			2333, -- [1]
			"[*] Verschlingende Raserei", -- [2]
		},
		[261264] = {
			2113, -- [1]
			"Schwester Solena", -- [2]
		},
		[306953] = {
			2335, -- [1]
			"Shad'har der Unersättliche", -- [2]
		},
		[282943] = {
			2257, -- [1]
			"Kolbenkracher", -- [2]
		},
		[298122] = {
			2298, -- [1]
			"Abyssalkommandantin Sivara", -- [2]
		},
		[92122] = {
			1056, -- [1]
			"[*] Kristallsplitter", -- [2]
		},
		[287751] = {
			2276, -- [1]
			"Hochtüftler Mekkadrill", -- [2]
		},
		[38593] = {
			1921, -- [1]
			9, -- [2]
		},
		[69989] = {
			1100, -- [1]
			"Heckenschütze der Kor'kron", -- [2]
		},
		[260907] = {
			2113, -- [1]
			"Schwester Solena", -- [2]
		},
		[107047] = {
			1405, -- [1]
			"Bomber Ga'dok", -- [2]
		},
		[236494] = {
			2038, -- [1]
			"Gefallener Avatar", -- [2]
		},
		[310406] = {
			2343, -- [1]
			"[*] Leerenblick", -- [2]
		},
		[100686] = {
			1882, -- [1]
			"Echo von Sylvanas", -- [2]
		},
		[256594] = {
			2094, -- [1]
			"Käpt'n Raoul", -- [2]
		},
		[191848] = {
			1813, -- [1]
			"Serpentrix", -- [2]
		},
		[308360] = {
			2333, -- [1]
			"Drohne der Aqir", -- [2]
		},
		[308872] = {
			2327, -- [1]
			"Finstere Manifestation <[*] Finstere Manifestation>", -- [2]
		},
		[307974] = {
			2329, -- [1]
			"Furorion", -- [2]
		},
		[191858] = {
			1813, -- [1]
			"[*] Toxische Pfütze", -- [2]
		},
		[287891] = {
			2276, -- [1]
			"[*] Schafschrapnell", -- [2]
		},
		[239401] = {
			2048, -- [1]
			"Belac", -- [2]
		},
		[143498] = {
			1602, -- [1]
			"Sha-Tropfen", -- [2]
		},
		[257495] = {
			2101, -- [1]
			"Die Sandkönigin", -- [2]
		},
		[296080] = {
			2291, -- [1]
			"Fliegende Unterdrückungseinheit JK-8", -- [2]
		},
		[296459] = {
			2305, -- [1]
			"Azsharas Glanz", -- [2]
		},
		[119374] = {
			1441, -- [1]
			"[*] Wirbelwind", -- [2]
		},
		[70374] = {
			1099, -- [1]
			"Axtwerfer der Kor'kron", -- [2]
		},
		[270926] = {
			2108, -- [1]
			"Mogul Ratztunk", -- [2]
		},
		[306828] = {
			2332, -- [1]
			"Thrall", -- [2]
		},
		[313129] = {
			2333, -- [1]
			"Drohne der Aqir", -- [2]
		},
		[236442] = {
			2050, -- [1]
			"Hauptmann Yathae Mondstreich", -- [2]
		},
		[120142] = {
			1441, -- [1]
			"[*] Pfeilgeschoss", -- [2]
		},
		[238429] = {
			2051, -- [1]
			"Kil'jaeden", -- [2]
		},
		[272542] = {
			2100, -- [1]
			"Aschenwindheckenschützin", -- [2]
		},
		[207707] = {
			1807, -- [1]
			"Unbekannt", -- [2]
		},
		[250259] = {
			2085, -- [1]
			"Vol'kaal", -- [2]
		},
		[288410] = {
			2276, -- [1]
			"Hochtüftler Mekkadrill", -- [2]
		},
		[257066] = {
			2087, -- [1]
			"Yazma", -- [2]
		},
		[69958] = {
			1099, -- [1]
			"Orakel der Kor'kron", -- [2]
		},
		[306319] = {
			2328, -- [1]
			"Dunkle Inquisitorin Xanesh", -- [2]
		},
		[317066] = {
			2344, -- [1]
			"Gedankenernter", -- [2]
		},
		[307343] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[220519] = {
			1837, -- [1]
			"Unbekannt", -- [2]
		},
		[231729] = {
			2036, -- [1]
			"Wogenheiler der Reißmäuler", -- [2]
		},
		[25603] = {
			1900, -- [1]
			"Astraler Zauberer", -- [2]
		},
		[3391] = {
			1935, -- [1]
			"Raufbold der Zerschmetterten Hand", -- [2]
		},
		[260669] = {
			2107, -- [1]
			"Rixxa Fluxflamme", -- [2]
		},
		[303876] = {
			2298, -- [1]
			"Abyssalkommandantin Sivara", -- [2]
		},
		[284316] = {
			2280, -- [1]
			"Bruder Joseph", -- [2]
		},
		[71271] = {
			1098, -- [1]
			"Frostbinderin der Ymirjar", -- [2]
		},
		[145769] = {
			1624, -- [1]
			"Amalgam der Verderbnis", -- [2]
		},
		[255575] = {
			2084, -- [1]
			"Priesterin Alun'za", -- [2]
		},
		[306168] = {
			2331, -- [1]
			"Unbekannt", -- [2]
		},
		[258709] = {
			2084, -- [1]
			"[*] Verderbtes Gold", -- [2]
		},
		[238999] = {
			2051, -- [1]
			"Kil'jaeden", -- [2]
		},
		[278467] = {
			2094, -- [1]
			"Rummy Mancomb", -- [2]
		},
		[106966] = {
			1305, -- [1]
			"Geringe unstete Energie <Sha der Gewalt>", -- [2]
		},
		[226406] = {
			1793, -- [1]
			"Glutpanzerdominator", -- [2]
		},
		[285342] = {
			2280, -- [1]
			"Energiesturm", -- [2]
		},
		[199177] = {
			1807, -- [1]
			"Schwarzklauenworg", -- [2]
		},
		[250028] = {
			2087, -- [1]
			"Yazma", -- [2]
		},
		[310015] = {
			2331, -- [1]
			"Ra-den", -- [2]
		},
		[307041] = {
			2329, -- [1]
			"Furorion", -- [2]
		},
		[271526] = {
			2106, -- [1]
			"Erdwüter", -- [2]
		},
		[138130] = {
			2337, -- [1]
			10, -- [2]
		},
		[69920] = {
			1100, -- [1]
			"Pirscherin der Kor'kron", -- [2]
		},
		[285344] = {
			2257, -- [1]
			"Der Platinprügler", -- [2]
		},
		[255577] = {
			2084, -- [1]
			"Priesterin Alun'za", -- [2]
		},
		[106826] = {
			1305, -- [1]
			"Sha der Gewalt", -- [2]
		},
		[122959] = {
			1441, -- [1]
			"Xin der Waffenmeister", -- [2]
		},
		[310090] = {
			2343, -- [1]
			"Schlund von Drest'agath", -- [2]
		},
		[44224] = {
			1894, -- [1]
			"Kael'thas Sonnenwanderer", -- [2]
		},
		[298651] = {
			2312, -- [1]
			"Mechamotorrad", -- [2]
		},
		[270505] = {
			2374, -- [1]
			"Gefallener Herzdurchbohrer", -- [2]
		},
		[233021] = {
			2032, -- [1]
			"[*] Höllenstachel", -- [2]
		},
		[86881] = {
			1056, -- [1]
			"Corborus", -- [2]
		},
		[228251] = {
			1962, -- [1]
			"Guarm", -- [2]
		},
		[15254] = {
			1899, -- [1]
			"Astrales Leuchtfeuer", -- [2]
		},
		[257882] = {
			2099, -- [1]
			"Hadal Dunkelgrund", -- [2]
		},
		[260696] = {
			2113, -- [1]
			"Schwester Gebrecht", -- [2]
		},
		[306995] = {
			2329, -- [1]
			"Furorion", -- [2]
		},
		[272554] = {
			2095, -- [1]
			"[*] Blutige Sauerei", -- [2]
		},
		[198723] = {
			1837, -- [1]
			"Moderherzdryade", -- [2]
		},
		[255579] = {
			2084, -- [1]
			"Priesterin Alun'za", -- [2]
		},
		[300701] = {
			2298, -- [1]
			"Abyssalkommandantin Sivara", -- [2]
		},
		[32316] = {
			1899, -- [1]
			"Astraler Zauberbinder", -- [2]
		},
		[309652] = {
			2334, -- [1]
			"[*] Illusionärer Blitz", -- [2]
		},
		[260697] = {
			2113, -- [1]
			"Schwester Dornstrauch", -- [2]
		},
		[118297] = {
			2334, -- [1]
			"Urfeuerelementar", -- [2]
		},
		[236694] = {
			2050, -- [1]
			"Hauptmann Yathae Mondstreich", -- [2]
		},
		[285350] = {
			2280, -- [1]
			"Laminaria", -- [2]
		},
		[265392] = {
			2115, -- [1]
			"Bankettbediensteter", -- [2]
		},
		[257883] = {
			2099, -- [1]
			"Hadal Dunkelgrund", -- [2]
		},
		[58506] = {
			1894, -- [1]
			"Schütze der Zerschmetterten Sonne", -- [2]
		},
		[111129] = {
			1303, -- [1]
			"Gu Wolkenschlag", -- [2]
		},
		[260698] = {
			2113, -- [1]
			"Schwester Solena", -- [2]
		},
		[272046] = {
			2093, -- [1]
			"Haihappen", -- [2]
		},
		[244834] = {
			2051, -- [1]
			"Kil'jaeden", -- [2]
		},
		[298056] = {
			2304, -- [1]
			"Lady Aschenwind", -- [2]
		},
		[255581] = {
			2084, -- [1]
			"Priesterin Alun'za", -- [2]
		},
		[300705] = {
			2298, -- [1]
			"Abyssalkommandantin Sivara", -- [2]
		},
		[307358] = {
			2335, -- [1]
			"Shad'har der Unersättliche", -- [2]
		},
		[307359] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[64695] = {
			2345, -- [1]
			"Totem des Erdgriffs <Seachebs-Silvermoon>", -- [2]
		},
		[316835] = {
			2344, -- [1]
			"Entstellte Gliedmaße <Asrahel-ZirkeldesCenarius>", -- [2]
		},
		[193660] = {
			1808, -- [1]
			"Gottkönig Skovald", -- [2]
		},
		[260292] = {
			2118, -- [1]
			"Felsschlund der Befallene", -- [2]
		},
		[255582] = {
			2084, -- [1]
			"[*] Geschmolzenes Gold", -- [2]
		},
		[255372] = {
			2086, -- [1]
			"Rezan", -- [2]
		},
		[235597] = {
			2038, -- [1]
			"Gefallener Avatar", -- [2]
		},
		[255814] = {
			2085, -- [1]
			"Reanimierte Ehrenwache", -- [2]
		},
		[260700] = {
			2113, -- [1]
			"Schwester Gebrecht", -- [2]
		},
		[69969] = {
			1100, -- [1]
			"Nekrolythin der Kor'kron", -- [2]
		},
		[265910] = {
			2139, -- [1]
			"Die Goldschlange", -- [2]
		},
		[269493] = {
			2105, -- [1]
			"Münzbetriebener Meuteverprügler", -- [2]
		},
		[69930] = {
			1100, -- [1]
			"Bezwinger der Kor'kron", -- [2]
		},
		[257886] = {
			2099, -- [1]
			"[*] Salzige Lache", -- [2]
		},
		[260189] = {
			2108, -- [1]
			"Mogul Ratztunk", -- [2]
		},
		[267533] = {
			2094, -- [1]
			"Käpt'n Jolli", -- [2]
		},
		[260701] = {
			2113, -- [1]
			"Schwester Dornstrauch", -- [2]
		},
		[199547] = {
			2113, -- [1]
			12, -- [2]
		},
		[257119] = {
			2101, -- [1]
			"[*] Sandfalle", -- [2]
		},
		[44226] = {
			1894, -- [1]
			"[*] Gravitationsverlust", -- [2]
		},
		[15785] = {
			1899, -- [1]
			"Manasauger", -- [2]
		},
		[241511] = {
			2036, -- [1]
			"[*] Durchnässt", -- [2]
		},
		[260190] = {
			2108, -- [1]
			"Mogul Ratztunk", -- [2]
		},
		[228007] = {
			1958, -- [1]
			"[*] Tanzende Klinge", -- [2]
		},
		[260702] = {
			2113, -- [1]
			"[*] Instabiles Runenmal", -- [2]
		},
		[244582] = {
			2032, -- [1]
			"[*] Krachender Komet", -- [2]
		},
		[264378] = {
			2116, -- [1]
			"Wahrsagerin des Zirkels", -- [2]
		},
		[265914] = {
			2139, -- [1]
			"[*] Geschmolzenes Gold", -- [2]
		},
		[106651] = {
			1412, -- [1]
			"Uuk-Uuk", -- [2]
		},
		[204666] = {
			1837, -- [1]
			"Eichenherz", -- [2]
		},
		[114451] = {
			1414, -- [1]
			"Hefiger Braubierlementar", -- [2]
		},
		[69869] = {
			1100, -- [1]
			"Herbeirufer der Kor'kron", -- [2]
		},
		[260703] = {
			2113, -- [1]
			"Schwester Gebrecht", -- [2]
		},
		[315862] = {
			2337, -- [1]
			"Schmettertentakel", -- [2]
		},
		[69974] = {
			1100, -- [1]
			"Heckenschütze der Kor'kron", -- [2]
		},
		[266939] = {
			2140, -- [1]
			"Aka'ali die Bezwingerin", -- [2]
		},
		[298156] = {
			2303, -- [1]
			"Orgozoa", -- [2]
		},
		[308903] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
		[118936] = {
			2129, -- [1]
			"Orakel der Glintrok", -- [2]
		},
		[266940] = {
			2140, -- [1]
			"Aka'ali die Bezwingerin", -- [2]
		},
		[312486] = {
			2345, -- [1]
			"Blut von Ny'alotha", -- [2]
		},
		[298669] = {
			2312, -- [1]
			"Trixie Teyser", -- [2]
		},
		[183430] = {
			1792, -- [1]
			"Teerspuckerlauerer", -- [2]
		},
		[71405] = {
			1095, -- [1]
			"Prinz Keleseth", -- [2]
		},
		[157331] = {
			2139, -- [1]
			"Ursturmelementar", -- [2]
		},
		[11972] = {
			1938, -- [1]
			"Champion der Zerschmetterten Hand", -- [2]
		},
		[258627] = {
			2106, -- [1]
			"Erdwüter", -- [2]
		},
		[308470] = {
			2335, -- [1]
			"[*] Entropische Explosion", -- [2]
		},
		[265407] = {
			2115, -- [1]
			"Bankettbediensteter", -- [2]
		},
		[227735] = {
			1962, -- [1]
			"Guarm", -- [2]
		},
		[307371] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[315265] = {
			2331, -- [1]
			"Unbekannt", -- [2]
		},
		[107356] = {
			1306, -- [1]
			"Verderbter Taran Zhu", -- [2]
		},
		[276229] = {
			2108, -- [1]
			"B.U.M.M.B.A.", -- [2]
		},
		[266191] = {
			2140, -- [1]
			"[*] Wirbelnde Axt", -- [2]
		},
		[256970] = {
			2103, -- [1]
			"Kürassier Valyri", -- [2]
		},
		[236142] = {
			2054, -- [1]
			"Das Seelenkonstrukt", -- [2]
		},
		[308908] = {
			2327, -- [1]
			"[*] Finstere Manifestation", -- [2]
		},
		[193659] = {
			1808, -- [1]
			"Gottkönig Skovald", -- [2]
		},
		[241004] = {
			2052, -- [1]
			"Flüchtige Verderbnis", -- [2]
		},
		[265410] = {
			2115, -- [1]
			"Feiernder von Kronsteig", -- [2]
		},
		[312490] = {
			2329, -- [1]
			"Furorion", -- [2]
		},
		[256101] = {
			2104, -- [1]
			"Aufseher Korgus", -- [2]
		},
		[311980] = {
			2337, -- [1]
			"Furorion", -- [2]
		},
		[44291] = {
			1895, -- [1]
			"Priesterin Delrissa", -- [2]
		},
		[265923] = {
			2139, -- [1]
			"Die Goldschlange", -- [2]
		},
		[183433] = {
			1792, -- [1]
			"Teerspuckerlauerer", -- [2]
		},
		[201123] = {
			1837, -- [1]
			"Garststachelblüte", -- [2]
		},
		[287929] = {
			2276, -- [1]
			"Hochtüftler Mekkadrill", -- [2]
		},
		[313228] = {
			2328, -- [1]
			"[*] Leerenberührt", -- [2]
		},
		[306090] = {
			2331, -- [1]
			"Unbekannt", -- [2]
		},
		[256358] = {
			2095, -- [1]
			"Trothak", -- [2]
		},
		[298458] = {
			2303, -- [1]
			"Amniotische Eruption <Zoatroid>", -- [2]
		},
		[306865] = {
			2331, -- [1]
			"Ra-den", -- [2]
		},
		[264390] = {
			2113, -- [1]
			"Runenjüngerin", -- [2]
		},
		[295607] = {
			2298, -- [1]
			"Abyssalkommandantin Sivara", -- [2]
		},
		[247403] = {
			2036, -- [1]
			"Harjatan", -- [2]
		},
		[306866] = {
			2331, -- [1]
			"Ra-den", -- [2]
		},
		[267385] = {
			2133, -- [1]
			"Tentakel", -- [2]
		},
		[264903] = {
			2130, -- [1]
			"Aqu'sirr", -- [2]
		},
		[241263] = {
			2036, -- [1]
			"Hexe der Gezeitenschuppen", -- [2]
		},
		[317102] = {
			2344, -- [1]
			"N'Zoth der Verderber", -- [2]
		},
		[201858] = {
			1839, -- [1]
			"Scharfschützenköder <Pestherzscharfschütze>", -- [2]
		},
		[266951] = {
			2140, -- [1]
			"Aka'ali die Bezwingerin", -- [2]
		},
		[239216] = {
			2051, -- [1]
			"Kil'jaeden", -- [2]
		},
		[267459] = {
			2133, -- [1]
			"Vergessener Bewohner", -- [2]
		},
		[255591] = {
			2084, -- [1]
			"Priesterin Alun'za", -- [2]
		},
		[315311] = {
			2333, -- [1]
			"Verheerer der Aqir", -- [2]
		},
		[287769] = {
			2375, -- [1]
			"[*] N'Zoths Aufmerksamkeit", -- [2]
		},
		[79340] = {
			1057, -- [1]
			"Hohepriesterin Azil", -- [2]
		},
		[284864] = {
			2280, -- [1]
			"Seele des Gezeitenpriesters", -- [2]
		},
		[306930] = {
			2335, -- [1]
			"Shad'har der Unersättliche", -- [2]
		},
		[119311] = {
			1441, -- [1]
			"[*] Klingenfluss", -- [2]
		},
		[260455] = {
			2118, -- [1]
			"Blutzecke", -- [2]
		},
		[33865] = {
			1900, -- [1]
			"Astraler Strauchdieb", -- [2]
		},
		[285377] = {
			2257, -- [1]
			"Der Platinprügler", -- [2]
		},
		[308406] = {
			2374, -- [1]
			"Schmiedewache Hurrul", -- [2]
		},
		[30502] = {
			1936, -- [1]
			"Großhexenmeister Nethekurse", -- [2]
		},
		[201633] = {
			2344, -- [1]
			"Totem des irdenen Walls <Rûmburak>", -- [2]
		},
		[115419] = {
			1406, -- [1]
			"Windformer der Krik'thik", -- [2]
		},
		[257641] = {
			2098, -- [1]
			"Pulverschütze der Eisenfluträuber", -- [2]
		},
		[30470] = {
			1935, -- [1]
			"Wilder der Zerschmetterten Hand", -- [2]
		},
		[256106] = {
			2093, -- [1]
			"Himmelskäpt'n Kragg", -- [2]
		},
		[298229] = {
			2292, -- [1]
			"Schmierer", -- [2]
		},
		[310455] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
		[258921] = {
			2113, -- [1]
			12, -- [2]
		},
		[308408] = {
			2374, -- [1]
			"Schmiedewache Hurrul", -- [2]
		},
		[111723] = {
			1419, -- [1]
			"Raigonn", -- [2]
		},
		[235125] = {
			2052, -- [1]
			"[*] Instabile Seele", -- [2]
		},
		[306874] = {
			2331, -- [1]
			"Knisternder Pirscher <Ra-den>", -- [2]
		},
		[296693] = {
			2304, -- [1]
			"Lady Aschenwind", -- [2]
		},
		[256363] = {
			2095, -- [1]
			"Trothak", -- [2]
		},
		[313420] = {
			2333, -- [1]
			"Ätzender Aqir", -- [2]
		},
		[258922] = {
			2113, -- [1]
			12, -- [2]
		},
		[291930] = {
			2258, -- [1]
			"Gepresster Schrott", -- [2]
		},
		[264712] = {
			2115, -- [1]
			"[*] Fauliger Ausstoß", -- [2]
		},
		[292035] = {
			2258, -- [1]
			"K.U.-J.0.", -- [2]
		},
		[306876] = {
			2328, -- [1]
			"Dunkle Inquisitorin Xanesh", -- [2]
		},
		[260202] = {
			2108, -- [1]
			"Mogul Ratztunk", -- [2]
		},
		[272055] = {
			2093, -- [1]
			"Haihappen", -- [2]
		},
		[236432] = {
			2052, -- [1]
			"Wachsame Maid", -- [2]
		},
		[317112] = {
			2344, -- [1]
			"N'Zoth der Verderber", -- [2]
		},
		[307950] = {
			2334, -- [1]
			"Prophet Skitra", -- [2]
		},
		[98021] = {
			2113, -- [1]
			"Unbekannt <Xândrilâ>", -- [2]
		},
		[302272] = {
			2291, -- [1]
			"Fliegende Unterdrückungseinheit JK-8", -- [2]
		},
		[25025] = {
			1106, -- [1]
			"Schamane des Kriegshymnenklans", -- [2]
		},
		[107314] = {
			1419, -- [1]
			"Beschützer der Krik'thik", -- [2]
		},
		[263274] = {
			2093, -- [1]
			"Himmelskäpt'n Kragg", -- [2]
		},
		[296421] = {
			2305, -- [1]
			"[*] Arkanado", -- [2]
		},
		[298691] = {
			2375, -- [1]
			"Sklavenmeister Ul'rok", -- [2]
		},
		[268544] = {
			2113, -- [1]
			12, -- [2]
		},
		[115421] = {
			1406, -- [1]
			"Windformer der Krik'thik", -- [2]
		},
		[302274] = {
			2291, -- [1]
			"Panzerknacker Mk. I", -- [2]
		},
		[101348] = {
			1882, -- [1]
			"Echo von Sylvanas", -- [2]
		},
		[317627] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[284362] = {
			2280, -- [1]
			"Bruder Joseph", -- [2]
		},
		[81262] = {
			2337, -- [1]
			"Erblühen <Ekhera-Pozzodell'Eternità>", -- [2]
		},
		[306881] = {
			2331, -- [1]
			"Leerenjäger <Ra-den>", -- [2]
		},
		[295415] = {
			2298, -- [1]
			"Abyssalkommandantin Sivara", -- [2]
		},
		[285388] = {
			2257, -- [1]
			"Gnominator G-800", -- [2]
		},
		[199552] = {
			2113, -- [1]
			12, -- [2]
		},
		[284365] = {
			2280, -- [1]
			"Bruder Joseph", -- [2]
		},
		[92265] = {
			1059, -- [1]
			"Plattenhaut", -- [2]
		},
		[199051] = {
			1837, -- [1]
			"Eichenherz", -- [2]
		},
		[256044] = {
			2104, -- [1]
			"Aufseher Korgus", -- [2]
		},
		[107357] = {
			1306, -- [1]
			"Verderbter Taran Zhu", -- [2]
		},
		[297835] = {
			2292, -- [1]
			"Schmierer", -- [2]
		},
		[232827] = {
			2037, -- [1]
			"Piranhado", -- [2]
		},
		[101221] = {
			1882, -- [1]
			"[*] Zermürbender Schmerz", -- [2]
		},
		[294860] = {
			2259, -- [1]
			"Unscheinbare Pflanze", -- [2]
		},
		[307396] = {
			2336, -- [1]
			"Finsterer Seelenschnitzer", -- [2]
		},
		[202347] = {
			2113, -- [1]
			"Schwester Solena", -- [2]
		},
		[302279] = {
			2291, -- [1]
			"Panzerknacker Mk. I", -- [2]
		},
		[296688] = {
			2304, -- [1]
			"Lady Aschenwind", -- [2]
		},
		[281621] = {
			2108, -- [1]
			"Flugfacklerin der Venture Co.", -- [2]
		},
		[106413] = {
			1304, -- [1]
			"[*] Feuerball", -- [2]
		},
		[308278] = {
			2338, -- [1]
			"Alleria Windläufer", -- [2]
		},
		[284369] = {
			2280, -- [1]
			"[*] Meeressturm", -- [2]
		},
		[267904] = {
			2131, -- [1]
			"[*] Verstärkungszauberschutz", -- [2]
		},
		[264923] = {
			2115, -- [1]
			"Raal der Unersättliche", -- [2]
		},
		[110945] = {
			1303, -- [1]
			"Gu Wolkenschlag", -- [2]
		},
		[82415] = {
			1056, -- [1]
			"Corborus", -- [2]
		},
		[241290] = {
			2036, -- [1]
			"Hexe der Gezeitenschuppen", -- [2]
		},
		[198030] = {
			2113, -- [1]
			12, -- [2]
		},
		[143924] = {
			2375, -- [1]
			"Wasserelementar <Deusa>", -- [2]
		},
		[267105] = {
			2140, -- [1]
			"Totem des Stroms", -- [2]
		},
		[266460] = {
			2117, -- [1]
			"Unbekannt", -- [2]
		},
		[265393] = {
			2115, -- [1]
			"Bankettbediensteter", -- [2]
		},
		[299095] = {
			2303, -- [1]
			"Orgozoa", -- [2]
		},
		[79345] = {
			1057, -- [1]
			"Hohepriesterin Azil", -- [2]
		},
		[234621] = {
			2037, -- [1]
			"[*] Verschlingender Schlund", -- [2]
		},
		[275673] = {
			2337, -- [1]
			10, -- [2]
		},
		[271579] = {
			2105, -- [1]
			"Erdformer der Venture Co.", -- [2]
		},
		[196496] = {
			1807, -- [1]
			"Fenryr", -- [2]
		},
		[39049] = {
			1919, -- [1]
			"Aeonus", -- [2]
		},
		[309961] = {
			2345, -- [1]
			"Il'gynoth", -- [2]
		},
		[112993] = {
			1413, -- [1]
			"Hopsallus", -- [2]
		},
		[27609] = {
			1895, -- [1]
			"Priesterin Delrissa", -- [2]
		},
		[307403] = {
			2336, -- [1]
			"Leerenaszendent", -- [2]
		},
		[30739] = {
			1938, -- [1]
			"Kriegshäuptling Kargath Messerfaust", -- [2]
		},
		[309451] = {
			2377, -- [1]
			"Magister Umbric", -- [2]
		},
		[263905] = {
			2113, -- [1]
			"Runenjüngerin", -- [2]
		},
		[317639] = {
			2344, -- [1]
			"N'Zoth der Verderber", -- [2]
		},
		[267891] = {
			2131, -- [1]
			"Sturmbeschwörerin Faye", -- [2]
		},
		[299153] = {
			2312, -- [1]
			"Trixie Teyser", -- [2]
		},
		[307057] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[259187] = {
			2087, -- [1]
			"Yazma", -- [2]
		},
		[30989] = {
			1935, -- [1]
			"Zelot der Zerschmetterten Hand", -- [2]
		},
		[33871] = {
			1900, -- [1]
			"Astraler Strauchdieb", -- [2]
		},
		[308941] = {
			2343, -- [1]
			"Drest'agath", -- [2]
		},
		[268278] = {
			2116, -- [1]
			"Lady Kronsteig", -- [2]
		},
		[264931] = {
			2115, -- [1]
			"Raal der Unersättliche", -- [2]
		},
		[106853] = {
			1304, -- [1]
			"Meister Schneewehe", -- [2]
		},
		[228227] = {
			1962, -- [1]
			"Guarm", -- [2]
		},
		[318688] = {
			2344, -- [1]
			"Stacheltentakel", -- [2]
		},
		[300244] = {
			2303, -- [1]
			"[*] Tosende Stromschnellen", -- [2]
		},
		[201361] = {
			1839, -- [1]
			"Gequälter Blutsucher", -- [2]
		},
		[239486] = {
			2052, -- [1]
			"Flüchtige Verderbnis", -- [2]
		},
		[296662] = {
			2304, -- [1]
			"Lady Aschenwind", -- [2]
		},
		[38538] = {
			1920, -- [1]
			"Chronolord Deja", -- [2]
		},
		[296150] = {
			2291, -- [1]
			"[*] Ventilausstoß", -- [2]
		},
		[228228] = {
			1962, -- [1]
			"Guarm", -- [2]
		},
		[310499] = {
			2343, -- [1]
			"Tentakel von Drest'agath", -- [2]
		},
		[34828] = {
			1106, -- [1]
			"Schamane des Kriegshymnenklans", -- [2]
		},
		[200338] = {
			1793, -- [1]
			"Dargrul", -- [2]
		},
		[313039] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[306311] = {
			2328, -- [1]
			"Geschundene Seele", -- [2]
		},
		[269029] = {
			2109, -- [1]
			"Schreckenskapitänin Luebke", -- [2]
		},
		[106854] = {
			1304, -- [1]
			"Meister Schneewehe", -- [2]
		},
		[313040] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[257315] = {
			2096, -- [1]
			"Grenadier der Eisenfluträuber", -- [2]
		},
		[312017] = {
			2376, -- [1]
			"Auge des Chaos", -- [2]
		},
		[280286] = {
			2345, -- [1]
			"Il'gynoth", -- [2]
		},
		[284383] = {
			2280, -- [1]
			"Bruder Joseph", -- [2]
		},
		[257407] = {
			2086, -- [1]
			"Rezan", -- [2]
		},
		[70461] = {
			1096, -- [1]
			"Frost Freeze Trap", -- [2]
		},
		[120160] = {
			1442, -- [1]
			"Haiyan der Unaufhaltsame", -- [2]
		},
		[261265] = {
			2113, -- [1]
			"Schwester Dornstrauch", -- [2]
		},
		[259191] = {
			2087, -- [1]
			"Yazma", -- [2]
		},
		[106470] = {
			1304, -- [1]
			"[*] Feuerball", -- [2]
		},
		[313041] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[257617] = {
			2101, -- [1]
			"Die Sandkönigin", -- [2]
		},
		[261447] = {
			2116, -- [1]
			"Lord Kronsteig", -- [2]
		},
		[262347] = {
			2105, -- [1]
			"Münzbetriebener Meuteverprügler", -- [2]
		},
		[271456] = {
			2108, -- [1]
			"Mogul Ratztunk", -- [2]
		},
		[307250] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[308916] = {
			2327, -- [1]
			"Finstere Manifestation <[*] Finstere Manifestation>", -- [2]
		},
		[257278] = {
			2096, -- [1]
			"Harlan der Schmierige", -- [2]
		},
		[38540] = {
			1920, -- [1]
			"Chronolord Deja", -- [2]
		},
		[310277] = {
			2343, -- [1]
			"Drest'agath", -- [2]
		},
		[38539] = {
			1920, -- [1]
			"Chronolord Deja", -- [2]
		},
		[227720] = {
			1962, -- [1]
			"Guarm", -- [2]
		},
		[201365] = {
			1839, -- [1]
			"Gequälter Blutsucher", -- [2]
		},
		[78835] = {
			1058, -- [1]
			"Ozruk", -- [2]
		},
		[268865] = {
			2105, -- [1]
			"Waffentester", -- [2]
		},
		[257402] = {
			2096, -- [1]
			"Harlan der Schmierige", -- [2]
		},
		[297574] = {
			2372, -- [1]
			"Auslöschungselementar", -- [2]
		},
		[308953] = {
			2343, -- [1]
			"Auge von Drest'agath", -- [2]
		},
		[69882] = {
			1099, -- [1]
			"Primalist der Kor'kron", -- [2]
		},
		[199063] = {
			1837, -- [1]
			"Würgewurzeln", -- [2]
		},
		[291973] = {
			2258, -- [1]
			"K.U.-J.0.", -- [2]
		},
		[106984] = {
			1303, -- [1]
			"Gu Wolkenschlag", -- [2]
		},
		[259975] = {
			2101, -- [1]
			"Die Sandkönigin", -- [2]
		},
		[309978] = {
			2344, -- [1]
			"[*] Paranoia", -- [2]
		},
		[306228] = {
			2328, -- [1]
			"Geschundene Seele", -- [2]
		},
		[15496] = {
			1921, -- [1]
			"Ewiger Henker", -- [2]
		},
		[310322] = {
			2345, -- [1]
			"[*] Morast der Verderbnis", -- [2]
		},
		[123655] = {
			1442, -- [1]
			"Haiyan der Unaufhaltsame", -- [2]
		},
		[308956] = {
			2343, -- [1]
			"Auge von Drest'agath", -- [2]
		},
		[315097] = {
			2345, -- [1]
			"Il'gynoth", -- [2]
		},
		[307421] = {
			2336, -- [1]
			"Leerenaszendent", -- [2]
		},
		[261498] = {
			2111, -- [1]
			"[*] Schleichende Fäulnis", -- [2]
		},
		[308669] = {
			2376, -- [1]
			"Auge des Chaos", -- [2]
		},
		[315098] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
		[257544] = {
			2106, -- [1]
			"Erdwüter", -- [2]
		},
		[260699] = {
			2113, -- [1]
			"Schwester Solena", -- [2]
		},
		[284165] = {
			2280, -- [1]
			"[*] Voltaischer Blitz", -- [2]
		},
		[227721] = {
			1962, -- [1]
			"Guarm", -- [2]
		},
		[313564] = {
			2337, -- [1]
			"Überwuchertes Tentakel", -- [2]
		},
		[70395] = {
			1100, -- [1]
			"Bastionsdiener", -- [2]
		},
		[31464] = {
			1921, -- [1]
			9, -- [2]
		},
		[118988] = {
			2129, -- [1]
			"Gekkan", -- [2]
		},
		[313283] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[250241] = {
			2085, -- [1]
			"Vol'kaal", -- [2]
		},
		[271590] = {
			2116, -- [1]
			"Lady Kronsteig", -- [2]
		},
		[79351] = {
			1057, -- [1]
			"Hohepriesterin Azil", -- [2]
		},
		[268308] = {
			2116, -- [1]
			"Lady Kronsteig", -- [2]
		},
		[307937] = {
			2334, -- [1]
			"Prophet Skitra", -- [2]
		},
		[228127] = {
			2008, -- [1]
			"Helya", -- [2]
		},
		[143286] = {
			1602, -- [1]
			"Immerseus", -- [2]
		},
		[310385] = {
			2333, -- [1]
			"[*] Säureschauer", -- [2]
		},
		[309985] = {
			2331, -- [1]
			"Ra-den", -- [2]
		},
		[198028] = {
			1790, -- [1]
			"[*] Kristalliner Boden", -- [2]
		},
		[112918] = {
			1306, -- [1]
			"Erdrückender Hass <Verderbter Taran Zhu>", -- [2]
		},
		[116155] = {
			1414, -- [1]
			"Hefiger Braubierlementar", -- [2]
		},
		[115430] = {
			1406, -- [1]
			"Wüter der Krik'thik", -- [2]
		},
		[308947] = {
			2343, -- [1]
			"Drest'agath", -- [2]
		},
		[307008] = {
			2337, -- [1]
			"Blick des Wahnsinns", -- [2]
		},
		[256128] = {
			2104, -- [1]
			"Aufseher Korgus", -- [2]
		},
		[259732] = {
			2112, -- [1]
			"Sporenrufer Zancha", -- [2]
		},
		[314593] = {
			2333, -- [1]
			"Ka'zir", -- [2]
		},
		[276212] = {
			2108, -- [1]
			"Mogul Ratztunk", -- [2]
		},
		[299241] = {
			2312, -- [1]
			"Naeno Megarumms", -- [2]
		},
		[234891] = {
			2052, -- [1]
			"Wachsame Maid", -- [2]
		},
		[259711] = {
			2101, -- [1]
			"Blockwärter", -- [2]
		},
		[266237] = {
			2140, -- [1]
			"Aka'ali die Bezwingerin", -- [2]
		},
		[46153] = {
			1897, -- [1]
			"Selin Feuerherz", -- [2]
		},
		[35951] = {
			1936, -- [1]
			"Geringer Schattenspalt <Großhexenmeister Nethekurse>", -- [2]
		},
		[239214] = {
			2051, -- [1]
			"Kil'jaeden", -- [2]
		},
		[66047] = {
			1106, -- [1]
			"Ritter der Schwarzen Klinge", -- [2]
		},
		[300962] = {
			2298, -- [1]
			"[*] Septischer Boden", -- [2]
		},
		[285426] = {
			2280, -- [1]
			"[*] Sturmesheulen", -- [2]
		},
		[268077] = {
			2113, -- [1]
			"Schwester Solena", -- [2]
		},
		[44504] = {
			1897, -- [1]
			"Getriebene Hülle", -- [2]
		},
		[30505] = {
			1936, -- [1]
			"Großhexenmeister Nethekurse", -- [2]
		},
		[309991] = {
			2344, -- [1]
			"N'Zoth der Verderber", -- [2]
		},
		[273657] = {
			2117, -- [1]
			"Unbekannt", -- [2]
		},
		[35953] = {
			1936, -- [1]
			"Großhexenmeister Nethekurse", -- [2]
		},
		[30633] = {
			1937, -- [1]
			"Kriegshetzer O'mrogg", -- [2]
		},
		[307945] = {
			2335, -- [1]
			"[*] Umbraleruption", -- [2]
		},
		[273658] = {
			2117, -- [1]
			"Unbekannt", -- [2]
		},
		[112992] = {
			1413, -- [1]
			"Hopsallus", -- [2]
		},
		[317669] = {
			2345, -- [1]
			"Il'gynoth", -- [2]
		},
		[285017] = {
			2280, -- [1]
			"Laminaria", -- [2]
		},
		[250022] = {
			2087, -- [1]
			"Yazma", -- [2]
		},
		[284406] = {
			2280, -- [1]
			"Verlockende Sirene", -- [2]
		},
		[238455] = {
			2051, -- [1]
			"Kil'jaeden", -- [2]
		},
		[291918] = {
			2258, -- [1]
			"Fliegende Klaue", -- [2]
		},
		[259714] = {
			2112, -- [1]
			"[*] Zersetzende Sporen", -- [2]
		},
		[309819] = {
			2338, -- [1]
			"Alleria Windläufer", -- [2]
		},
		[270590] = {
			2100, -- [1]
			"Verwüstender Schrecken", -- [2]
		},
		[131521] = {
			1306, -- [1]
			"Verderbter Taran Zhu", -- [2]
		},
		[256083] = {
			2104, -- [1]
			"Aufseher Korgus", -- [2]
		},
		[307968] = {
			2333, -- [1]
			"Tek'ris", -- [2]
		},
		[317672] = {
			2345, -- [1]
			"Blut von Ny'alotha", -- [2]
		},
		[310005] = {
			2331, -- [1]
			"Ra-den", -- [2]
		},
		[46195] = {
			1895, -- [1]
			"Yazzai", -- [2]
		},
		[296691] = {
			2303, -- [1]
			"Koloss der Schreckensnattern", -- [2]
		},
		[260103] = {
			2107, -- [1]
			"[*] Treibgasbrand", -- [2]
		},
		[131522] = {
			1306, -- [1]
			"Verderbter Taran Zhu", -- [2]
		},
		[267522] = {
			2094, -- [1]
			"Käpt'n Jolli", -- [2]
		},
		[248713] = {
			2048, -- [1]
			"Gepeinigte Seele", -- [2]
		},
		[298588] = {
			2312, -- [1]
			"Mechamotorrad", -- [2]
		},
		[234896] = {
			2052, -- [1]
			"Wachsame Maid", -- [2]
		},
		[267523] = {
			2094, -- [1]
			"Käpt'n Jolli", -- [2]
		},
		[306928] = {
			2335, -- [1]
			"Shad'har der Unersättliche", -- [2]
		},
		[301299] = {
			2258, -- [1]
			"[*] Schmelzofenflammen", -- [2]
		},
		[69970] = {
			1100, -- [1]
			"Orakel der Kor'kron", -- [2]
		},
		[120167] = {
			1442, -- [1]
			"Haiyan der Unaufhaltsame", -- [2]
		},
		[306929] = {
			2335, -- [1]
			"Shad'har der Unersättliche", -- [2]
		},
		[297206] = {
			2304, -- [1]
			"Lady Aschenwind", -- [2]
		},
		[298124] = {
			2292, -- [1]
			"Schmierer", -- [2]
		},
		[287995] = {
			2280, -- [1]
			"Schwester Katharina", -- [2]
		},
		[263943] = {
			2113, -- [1]
			"Runenjüngerin", -- [2]
		},
		[302049] = {
			2303, -- [1]
			"Amniotische Eruption <Zoatroid>", -- [2]
		},
		[40504] = {
			1919, -- [1]
			"Aeonus", -- [2]
		},
		[260741] = {
			2113, -- [1]
			"Schwester Dornstrauch", -- [2]
		},
		[256546] = {
			2095, -- [1]
			"Trothak", -- [2]
		},
		[295161] = {
			2303, -- [1]
			"Zoatroid", -- [2]
		},
		[119528] = {
			1441, -- [1]
			"[*] Feuerball", -- [2]
		},
		[259718] = {
			2112, -- [1]
			"Sporenrufer Zancha", -- [2]
		},
		[306932] = {
			2335, -- [1]
			"[*] Giftiger Panzer", -- [2]
		},
		[308177] = {
			2335, -- [1]
			"[*] Entropische Ansammlung", -- [2]
		},
		[310003] = {
			2331, -- [1]
			"Ra-den", -- [2]
		},
		[201733] = {
			1835, -- [1]
			"Latosius", -- [2]
		},
		[313258] = {
			2328, -- [1]
			"Dunkle Inquisitorin Xanesh", -- [2]
		},
		[101406] = {
			1096, -- [1]
			"Todesbringer Saurfang", -- [2]
		},
		[285440] = {
			2259, -- [1]
			"Hochmaschinist Funkenstrom", -- [2]
		},
		[260067] = {
			2102, -- [1]
			"Robbi Knurris <Jes Knurris>", -- [2]
		},
		[306934] = {
			2335, -- [1]
			"Shad'har der Unersättliche", -- [2]
		},
		[46155] = {
			1897, -- [1]
			"Selin Feuerherz", -- [2]
		},
		[283394] = {
			2276, -- [1]
			"Hochtüftler Mekkadrill", -- [2]
		},
		[32361] = {
			1901, -- [1]
			"Tavarok", -- [2]
		},
		[191401] = {
			1807, -- [1]
			"Schützin der Valarjar", -- [2]
		},
		[310224] = {
			2336, -- [1]
			"Leerenaszendent", -- [2]
		},
		[9080] = {
			1921, -- [1]
			"Ewiger Henker", -- [2]
		},
		[259720] = {
			2112, -- [1]
			"Sporenrufer Zancha", -- [2]
		},
		[30474] = {
			1938, -- [1]
			"Heidnischer Wächter", -- [2]
		},
		[111725] = {
			1419, -- [1]
			"Raigonn", -- [2]
		},
		[285443] = {
			2259, -- [1]
			"[*] \"Versteckte\" Flammenkanone", -- [2]
		},
		[263345] = {
			2104, -- [1]
			"Schwere Kanone", -- [2]
		},
		[38761] = {
			1901, -- [1]
			"Tavarok", -- [2]
		},
		[291928] = {
			2260, -- [1]
			"Lufteinheit R-21/X", -- [2]
		},
		[255371] = {
			2086, -- [1]
			"Rezan", -- [2]
		},
		[106352] = {
			1304, -- [1]
			"Meister Schneewehe", -- [2]
		},
		[69634] = {
			1099, -- [1]
			"Hochfürst Saurfang", -- [2]
		},
		[11976] = {
			1106, -- [1]
			"Champion des Kriegshymnenklans", -- [2]
		},
		[315762] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[317915] = {
			2337, -- [1]
			"Schrecklicher Blutsturz", -- [2]
		},
		[276234] = {
			2108, -- [1]
			"B.U.M.M.B.A.", -- [2]
		},
		[107120] = {
			1406, -- [1]
			"Kommandant Ri'mok", -- [2]
		},
		[115436] = {
			1406, -- [1]
			"Wüter der Krik'thik", -- [2]
		},
		[284177] = {
			2276, -- [1]
			"Hochtüftler Mekkadrill", -- [2]
		},
		[37668] = {
			1899, -- [1]
			"Astraler Zauberbinder", -- [2]
		},
		[307639] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[306634] = {
			2331, -- [1]
			"[*] Instabile Leere", -- [2]
		},
		[44120] = {
			1895, -- [1]
			"Eramas Leuchtfeuer", -- [2]
		},
		[79358] = {
			1057, -- [1]
			"[*] Machtgriff", -- [2]
		},
		[307453] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[255373] = {
			2086, -- [1]
			"Rezan", -- [2]
		},
		[298242] = {
			2303, -- [1]
			"Orgozoa", -- [2]
		},
		[306942] = {
			2335, -- [1]
			"Shad'har der Unersättliche", -- [2]
		},
		[214001] = {
			1835, -- [1]
			"Auferstandener Lanzer", -- [2]
		},
		[90361] = {
			2333, -- [1]
			"Hati", -- [2]
		},
		[37470] = {
			1899, -- [1]
			"Astraler Zauberbinder", -- [2]
		},
		[197546] = {
			1833, -- [1]
			"Illysanna Rabenkrone", -- [2]
		},
		[107121] = {
			1406, -- [1]
			"Kommandant Ri'mok", -- [2]
		},
		[306679] = {
			2373, -- [1]
			"Vez'okk der Lichtlose", -- [2]
		},
		[318714] = {
			2344, -- [1]
			"Unbekannt", -- [2]
		},
		[265391] = {
			2115, -- [1]
			"Bankettbediensteter", -- [2]
		},
		[264153] = {
			2115, -- [1]
			"Verschlingende Made", -- [2]
		},
		[201129] = {
			1837, -- [1]
			"Garststachelblüte", -- [2]
		},
		[273681] = {
			2098, -- [1]
			"Rothaken der Häcksler", -- [2]
		},
		[249929] = {
			2087, -- [1]
			"Soulrend Add", -- [2]
		},
		[311551] = {
			2328, -- [1]
			"Dunkle Inquisitorin Xanesh", -- [2]
		},
		[303875] = {
			2298, -- [1]
			"Abyssalkommandantin Sivara", -- [2]
		},
		[261266] = {
			2113, -- [1]
			"Schwester Gebrecht", -- [2]
		},
		[243157] = {
			2053, -- [1]
			"Domatrax", -- [2]
		},
		[146179] = {
			1624, -- [1]
			"Amalgam der Verderbnis", -- [2]
		},
		[250258] = {
			2085, -- [1]
			"Vol'kaal", -- [2]
		},
		[106866] = {
			1405, -- [1]
			"Bombardierer der Krik'thik", -- [2]
		},
		[233263] = {
			2050, -- [1]
			"Priesterin Lunazenit", -- [2]
		},
		[265761] = {
			2114, -- [1]
			"Matrone Brünndel", -- [2]
		},
		[285454] = {
			2259, -- [1]
			"Hochmaschinist Funkenstrom", -- [2]
		},
		[233272] = {
			2032, -- [1]
			"Goroth", -- [2]
		},
		[308995] = {
			2343, -- [1]
			"Tentakel von Drest'agath", -- [2]
		},
		[111728] = {
			1419, -- [1]
			"Raigonn", -- [2]
		},
		[310019] = {
			2331, -- [1]
			"[*] Geladene Bindung", -- [2]
		},
		[296510] = {
			2373, -- [1]
			"Krabbelnde Verderbnis <Vez'okk der Lichtlose>", -- [2]
		},
		[308996] = {
			2344, -- [1]
			"N'Zoth der Verderber", -- [2]
		},
		[52042] = {
			2329, -- [1]
			"Unbekannt <Calinda-Nethersturm>", -- [2]
		},
		[235968] = {
			2054, -- [1]
			"Schauriger Knochenwärter", -- [2]
		},
		[312866] = {
			2344, -- [1]
			"Todesschwinge", -- [2]
		},
		[286480] = {
			2276, -- [1]
			"Funkenbot", -- [2]
		},
		[264101] = {
			2130, -- [1]
			"Aqu'sirr", -- [2]
		},
		[267034] = {
			2133, -- [1]
			"Vol'zith der Flüsterer", -- [2]
		},
		[236596] = {
			2050, -- [1]
			"Hauptmann Yathae Mondstreich", -- [2]
		},
		[308227] = {
			2333, -- [1]
			"Tek'ris", -- [2]
		},
		[201428] = {
			2113, -- [1]
			12, -- [2]
		},
		[310022] = {
			2331, -- [1]
			"[*] Geladene Bindung", -- [2]
		},
		[241305] = {
			2036, -- [1]
			"Akolyth der Reißmäuler", -- [2]
		},
		[256553] = {
			2095, -- [1]
			"Sägezahnhai", -- [2]
		},
		[264477] = {
			2130, -- [1]
			"Aqu'sirr", -- [2]
		},
		[307092] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[228028] = {
			1958, -- [1]
			"Hyrja", -- [2]
		},
		[296718] = {
			2374, -- [1]
			"Gesichtsloser Willensbrecher", -- [2]
		},
		[309512] = {
			2327, -- [1]
			"Finstere Manifestation <[*] Finstere Manifestation>", -- [2]
		},
		[307977] = {
			2334, -- [1]
			"Prophet Skitra", -- [2]
		},
		[241306] = {
			2036, -- [1]
			"Akolyth der Reißmäuler", -- [2]
		},
		[238430] = {
			2051, -- [1]
			"Kil'jaeden", -- [2]
		},
		[275014] = {
			2100, -- [1]
			"Viq'Goth", -- [2]
		},
		[273226] = {
			2112, -- [1]
			"[*] Zersetzende Sporen", -- [2]
		},
		[129262] = {
			2129, -- [1]
			"Gekkan", -- [2]
		},
		[314373] = {
			2329, -- [1]
			"Aschenwandererassassine", -- [2]
		},
		[309514] = {
			2327, -- [1]
			"Finstere Manifestation <[*] Finstere Manifestation>", -- [2]
		},
		[259474] = {
			2107, -- [1]
			"Rixxa Fluxflamme", -- [2]
		},
		[256198] = {
			2104, -- [1]
			"Aufseher Korgus", -- [2]
		},
		[310288] = {
			2343, -- [1]
			"Drest'agath", -- [2]
		},
		[272669] = {
			2114, -- [1]
			"Brennende Seele", -- [2]
		},
		[285118] = {
			2280, -- [1]
			"Laminaria", -- [2]
		},
		[249919] = {
			2087, -- [1]
			"Yazma", -- [2]
		},
		[257827] = {
			2102, -- [1]
			"Jes Knurris", -- [2]
		},
		[313610] = {
			2344, -- [1]
			"N'Zoth der Verderber", -- [2]
		},
		[297746] = {
			2332, -- [1]
			"Thrall", -- [2]
		},
		[291874] = {
			2258, -- [1]
			"Fliegende Klaue", -- [2]
		},
		[269230] = {
			2143, -- [1]
			"Reban", -- [2]
		},
		[198833] = {
			1835, -- [1]
			"Latosius", -- [2]
		},
		[162243] = {
			2113, -- [1]
			12, -- [2]
		},
		[298259] = {
			2292, -- [1]
			"Schmierer", -- [2]
		},
		[299164] = {
			2312, -- [1]
			"Mechamotorrad", -- [2]
		},
		[31403] = {
			1900, -- [1]
			"Astraler Grufträuber", -- [2]
		},
		[228162] = {
			1958, -- [1]
			"Hyrja", -- [2]
		},
		[306448] = {
			2335, -- [1]
			"Shad'har der Unersättliche", -- [2]
		},
		[296725] = {
			2304, -- [1]
			"Lady Aschenwind", -- [2]
		},
		[307472] = {
			2335, -- [1]
			"Shad'har der Unersättliche", -- [2]
		},
		[312078] = {
			2344, -- [1]
			"Stacheltentakel", -- [2]
		},
		[300308] = {
			2303, -- [1]
			"Brutstättenei", -- [2]
		},
		[307240] = {
			2335, -- [1]
			"Lebendiges Miasma", -- [2]
		},
		[69965] = {
			1100, -- [1]
			"Verteidiger der Kor'kron", -- [2]
		},
		[285468] = {
			2257, -- [1]
			"Gnominator G-800", -- [2]
		},
		[103171] = {
			1882, -- [1]
			"[*] Verseuchte Pfeile", -- [2]
		},
		[260512] = {
			2114, -- [1]
			"Seelengebundener Goliath", -- [2]
		},
		[241822] = {
			2051, -- [1]
			"[*] --unknown spell--", -- [2]
		},
		[71943] = {
			1095, -- [1]
			"Prinz Keleseth", -- [2]
		},
		[310788] = {
			2345, -- [1]
			"Organ der Verderbnis", -- [2]
		},
		[236061] = {
			2052, -- [1]
			"Wachsame Maid", -- [2]
		},
		[214002] = {
			1835, -- [1]
			"Auferstandener Lanzer", -- [2]
		},
		[295705] = {
			2298, -- [1]
			"[*] Toxischer Blitz", -- [2]
		},
		[239264] = {
			2050, -- [1]
			"Priesterin Lunazenit", -- [2]
		},
		[34920] = {
			1900, -- [1]
			"Astraler Strauchdieb", -- [2]
		},
		[307476] = {
			2335, -- [1]
			"Shad'har der Unersättliche", -- [2]
		},
		[265001] = {
			2130, -- [1]
			"Aqualing", -- [2]
		},
		[69968] = {
			1100, -- [1]
			"Primalist der Kor'kron", -- [2]
		},
		[286495] = {
			2280, -- [1]
			"[*] Verlockendes Lied", -- [2]
		},
		[114291] = {
			1413, -- [1]
			"Hopfer", -- [2]
		},
		[265002] = {
			2115, -- [1]
			"Raal der Unersättliche", -- [2]
		},
		[312595] = {
			2343, -- [1]
			"Drest'agath", -- [2]
		},
		[101339] = {
			1883, -- [1]
			"Echo von Jaina", -- [2]
		},
		[307478] = {
			2335, -- [1]
			"Shad'har der Unersättliche", -- [2]
		},
		[269097] = {
			2132, -- [1]
			"Lord Sturmsang", -- [2]
		},
		[106871] = {
			1305, -- [1]
			"Sha der Gewalt", -- [2]
		},
		[197558] = {
			1807, -- [1]
			"Fenryr", -- [2]
		},
		[268586] = {
			2143, -- [1]
			"König Dazar", -- [2]
		},
		[38592] = {
			1921, -- [1]
			9, -- [2]
		},
		[263278] = {
			2105, -- [1]
			"[*] Deckung", -- [2]
		},
		[15284] = {
			1099, -- [1]
			"Hochfürst Saurfang", -- [2]
		},
		[30508] = {
			1936, -- [1]
			"Großhexenmeister Nethekurse", -- [2]
		},
		[32587] = {
			1938, -- [1]
			"Champion der Zerschmetterten Hand", -- [2]
		},
		[291974] = {
			2260, -- [1]
			"König Mechagon", -- [2]
		},
		[263262] = {
			2105, -- [1]
			"Schieferbeißer", -- [2]
		},
		[143459] = {
			1602, -- [1]
			"[*] Sha-Rückstände", -- [2]
		},
		[34922] = {
			1901, -- [1]
			"Nexusschrecken", -- [2]
		},
		[310552] = {
			2343, -- [1]
			"Auge von Drest'agath", -- [2]
		},
		[282406] = {
			2276, -- [1]
			"Funkenbot", -- [2]
		},
		[268589] = {
			2143, -- [1]
			"König Dazar", -- [2]
		},
		[69898] = {
			1099, -- [1]
			"Primalist der Kor'kron", -- [2]
		},
		[106872] = {
			1305, -- [1]
			"Sha der Gewalt", -- [2]
		},
		[5672] = {
			2345, -- [1]
			"Totem des heilenden Flusses <Alîna-Khaz'goroth>", -- [2]
		},
		[268590] = {
			2143, -- [1]
			"König Dazar", -- [2]
		},
		[310042] = {
			2344, -- [1]
			"Schlägertentakel", -- [2]
		},
		[38760] = {
			1900, -- [1]
			"Pandemonius", -- [2]
		},
		[282408] = {
			2276, -- [1]
			"Funkenbot", -- [2]
		},
		[119922] = {
			1442, -- [1]
			"Kuai der Grobian", -- [2]
		},
		[15530] = {
			1895, -- [1]
			"Yazzai", -- [2]
		},
		[233556] = {
			2038, -- [1]
			"Eindämmungspylon", -- [2]
		},
		[306973] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[236710] = {
			2051, -- [1]
			"Kil'jaeden", -- [2]
		},
		[269104] = {
			2132, -- [1]
			"Erwachte Leere", -- [2]
		},
		[294180] = {
			2258, -- [1]
			"T.Ö.L.3. des Schrottplatzes", -- [2]
		},
		[258622] = {
			2106, -- [1]
			"Azerokk", -- [2]
		},
		[307020] = {
			2336, -- [1]
			"Vexiona", -- [2]
		},
		[44177] = {
			1895, -- [1]
			"Yazzai", -- [2]
		},
		[34925] = {
			1899, -- [1]
			"Nexusschrecken", -- [2]
		},
		[266035] = {
			2113, -- [1]
			"Distelakolythin", -- [2]
		},
		[284262] = {
			2280, -- [1]
			"Schwester Katharina", -- [2]
		},
		[281388] = {
			2109, -- [1]
			"Aschenwindkanonier", -- [2]
		},
		[288041] = {
			2276, -- [1]
			"Hochtüftler Mekkadrill", -- [2]
		},
		[266036] = {
			2113, -- [1]
			"Distelakolythin", -- [2]
		},
		[185099] = {
			2337, -- [1]
			10, -- [2]
		},
		[267060] = {
			2140, -- [1]
			"Zanazal der Weise", -- [2]
		},
		[228012] = {
			1958, -- [1]
			"Hymdall", -- [2]
		},
		[267901] = {
			2131, -- [1]
			"Bruder Eisenkiel", -- [2]
		},
		[297254] = {
			2290, -- [1]
			"König Gobbamak", -- [2]
		},
		[255434] = {
			2086, -- [1]
			"Rezan", -- [2]
		},
		[257609] = {
			2101, -- [1]
			"Die Sandkönigin", -- [2]
		},
		[306978] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[23600] = {
			1895, -- [1]
			"Kriegsherr Salaris", -- [2]
		},
		[291626] = {
			2260, -- [1]
			"Lufteinheit R-21/X", -- [2]
		},
		[292138] = {
			2289, -- [1]
			"Schwarzwasserungetüm", -- [2]
		},
		[268086] = {
			2113, -- [1]
			"[*] Aura des Schreckens", -- [2]
		},
		[297256] = {
			2290, -- [1]
			"König Gobbamak", -- [2]
		},
		[199775] = {
			1792, -- [1]
			"Naraxas", -- [2]
		},
		[231016] = {
			1958, -- [1]
			"Unbekannt", -- [2]
		},
		[217011] = {
			1792, -- [1]
			"Verärgerte Menge", -- [2]
		},
		[301351] = {
			2291, -- [1]
			"Fliegende Unterdrückungseinheit JK-8", -- [2]
		},
		[298898] = {
			2312, -- [1]
			"Naeno Megarumms", -- [2]
		},
		[310563] = {
			2343, -- [1]
			"Schlund von Drest'agath", -- [2]
		},
		[268088] = {
			2113, -- [1]
			"Schwester Gebrecht", -- [2]
		},
		[17843] = {
			1895, -- [1]
			"Priesterin Delrissa", -- [2]
		},
		[255421] = {
			2086, -- [1]
			"Rezan", -- [2]
		},
		[307808] = {
			2337, -- [1]
			"Zorn von N'Zoth", -- [2]
		},
		[70116] = {
			1100, -- [1]
			"Bastionsfrostwyrm", -- [2]
		},
		[239785] = {
			2051, -- [1]
			"Dämonischer Obelisk", -- [2]
		},
		[310134] = {
			2344, -- [1]
			"Psychus", -- [2]
		},
		[32364] = {
			1899, -- [1]
			"Nexusprinz Shaffar", -- [2]
		},
		[257310] = {
			2096, -- [1]
			"Kanone der Eisenfluträuber", -- [2]
		},
		[255836] = {
			2084, -- [1]
			"Priesterin Alun'za", -- [2]
		},
		[312266] = {
			2329, -- [1]
			"Aschenwandererassassine", -- [2]
		},
		[70541] = {
			1106, -- [1]
			"Der Lichkönig", -- [2]
		},
		[196543] = {
			1807, -- [1]
			"Fenryr", -- [2]
		},
		[297261] = {
			2290, -- [1]
			"König Gobbamak", -- [2]
		},
		[32588] = {
			1938, -- [1]
			"Champion der Zerschmetterten Hand", -- [2]
		},
		[306111] = {
			2329, -- [1]
			"Furorion", -- [2]
		},
		[308158] = {
			2327, -- [1]
			"Ma'ut", -- [2]
		},
	},
	["dungeon_data"] = {
	},
	["got_first_run"] = true,
	["report_pos"] = {
		1, -- [1]
		1, -- [2]
	},
	["latest_report_table"] = {
	},
	["__profiles"] = {
		["AlysiaUI"] = {
			["show_arena_role_icon"] = false,
			["capture_real"] = {
				["heal"] = true,
				["spellcast"] = true,
				["miscdata"] = true,
				["aura"] = true,
				["energy"] = true,
				["damage"] = true,
			},
			["row_fade_in"] = {
				"in", -- [1]
				0.2, -- [2]
			},
			["streamer_config"] = {
				["faster_updates"] = false,
				["quick_detection"] = true,
				["reset_spec_cache"] = false,
				["no_alerts"] = true,
				["use_animation_accel"] = true,
				["disable_mythic_dungeon"] = false,
			},
			["all_players_are_group"] = false,
			["use_row_animations"] = false,
			["report_heal_links"] = false,
			["remove_realm_from_name"] = true,
			["minimum_overall_combat_time"] = 10,
			["event_tracker"] = {
				["enabled"] = false,
				["font_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["line_height"] = 16,
				["line_color"] = {
					0.1, -- [1]
					0.1, -- [2]
					0.1, -- [3]
					0.3, -- [4]
				},
				["font_shadow"] = "NONE",
				["font_size"] = 10,
				["font_face"] = "Friz Quadrata TT",
				["frame"] = {
					["show_title"] = true,
					["strata"] = "LOW",
					["backdrop_color"] = {
						0.16, -- [1]
						0.16, -- [2]
						0.16, -- [3]
						0.47, -- [4]
					},
					["locked"] = false,
					["height"] = 300,
					["width"] = 250,
				},
				["line_texture"] = "Details Serenity",
				["options_frame"] = {
				},
			},
			["report_to_who"] = "",
			["class_specs_coords"] = {
				[62] = {
					0.251953125, -- [1]
					0.375, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[63] = {
					0.375, -- [1]
					0.5, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[250] = {
					0, -- [1]
					0.125, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[251] = {
					0.125, -- [1]
					0.25, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[252] = {
					0.25, -- [1]
					0.375, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[253] = {
					0.875, -- [1]
					1, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[254] = {
					0, -- [1]
					0.125, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[255] = {
					0.125, -- [1]
					0.25, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[66] = {
					0.125, -- [1]
					0.25, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[257] = {
					0.5, -- [1]
					0.625, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[258] = {
					0.6328125, -- [1]
					0.75, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[259] = {
					0.75, -- [1]
					0.875, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[260] = {
					0.875, -- [1]
					1, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[577] = {
					0.25, -- [1]
					0.375, -- [2]
					0.5, -- [3]
					0.625, -- [4]
				},
				[262] = {
					0.125, -- [1]
					0.25, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[581] = {
					0.375, -- [1]
					0.5, -- [2]
					0.5, -- [3]
					0.625, -- [4]
				},
				[264] = {
					0.375, -- [1]
					0.5, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[265] = {
					0.5, -- [1]
					0.625, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[266] = {
					0.625, -- [1]
					0.75, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[267] = {
					0.75, -- [1]
					0.875, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[268] = {
					0.625, -- [1]
					0.75, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[269] = {
					0.875, -- [1]
					1, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[270] = {
					0.75, -- [1]
					0.875, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[70] = {
					0.251953125, -- [1]
					0.375, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[102] = {
					0.375, -- [1]
					0.5, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[71] = {
					0.875, -- [1]
					1, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[103] = {
					0.5, -- [1]
					0.625, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[72] = {
					0, -- [1]
					0.125, -- [2]
					0.5, -- [3]
					0.625, -- [4]
				},
				[104] = {
					0.625, -- [1]
					0.75, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[73] = {
					0.125, -- [1]
					0.25, -- [2]
					0.5, -- [3]
					0.625, -- [4]
				},
				[64] = {
					0.5, -- [1]
					0.625, -- [2]
					0.125, -- [3]
					0.25, -- [4]
				},
				[105] = {
					0.75, -- [1]
					0.875, -- [2]
					0, -- [3]
					0.125, -- [4]
				},
				[65] = {
					0, -- [1]
					0.125, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[256] = {
					0.375, -- [1]
					0.5, -- [2]
					0.25, -- [3]
					0.375, -- [4]
				},
				[261] = {
					0, -- [1]
					0.125, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
				[263] = {
					0.25, -- [1]
					0.375, -- [2]
					0.375, -- [3]
					0.5, -- [4]
				},
			},
			["profile_save_pos"] = true,
			["tooltip"] = {
				["header_statusbar"] = {
					0.3, -- [1]
					0.3, -- [2]
					0.3, -- [3]
					0.8, -- [4]
					false, -- [5]
					false, -- [6]
					"WorldState Score", -- [7]
				},
				["fontcolor_right"] = {
					1, -- [1]
					0.6901960784313725, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["line_height"] = 17,
				["tooltip_max_targets"] = 2,
				["icon_size"] = {
					["W"] = 17,
					["H"] = 17,
				},
				["tooltip_max_pets"] = 2,
				["anchor_relative"] = "top",
				["abbreviation"] = 3,
				["anchored_to"] = 1,
				["show_amount"] = false,
				["header_text_color"] = {
					0.8470588235294118, -- [1]
					0.7215686274509804, -- [2]
					0.4784313725490196, -- [3]
					1, -- [4]
				},
				["fontsize"] = 13,
				["background"] = {
					0.196078431372549, -- [1]
					0.196078431372549, -- [2]
					0.196078431372549, -- [3]
					0.8, -- [4]
				},
				["submenu_wallpaper"] = true,
				["fontsize_title"] = 12,
				["icon_border_texcoord"] = {
					["B"] = 0.921875,
					["L"] = 0.078125,
					["T"] = 0.078125,
					["R"] = 0.921875,
				},
				["commands"] = {
				},
				["tooltip_max_abilities"] = 6,
				["fontface"] = "Expressway",
				["border_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0, -- [4]
				},
				["border_texture"] = "None",
				["anchor_offset"] = {
					0, -- [1]
					0, -- [2]
				},
				["fontshadow"] = true,
				["menus_bg_texture"] = "Interface\\SPELLBOOK\\Spellbook-Page-1",
				["border_size"] = 16,
				["maximize_method"] = 1,
				["anchor_screen_pos"] = {
					507.7, -- [1]
					-350.5, -- [2]
				},
				["anchor_point"] = "bottom",
				["menus_bg_coords"] = {
					0.31, -- [1]
					0.924000015258789, -- [2]
					0.2130000114440918, -- [3]
					0.279000015258789, -- [4]
				},
				["fontcolor"] = {
					0.788235294117647, -- [1]
					0.788235294117647, -- [2]
					0.788235294117647, -- [3]
					1, -- [4]
				},
				["menus_bg_color"] = {
					0.7999982237815857, -- [1]
					0.7999982237815857, -- [2]
					0.7999982237815857, -- [3]
					0.2000000178813934, -- [4]
				},
			},
			["ps_abbreviation"] = 3,
			["world_combat_is_trash"] = false,
			["update_speed"] = 0.05000000074505806,
			["bookmark_text_size"] = 11,
			["animation_speed_mintravel"] = 0.45,
			["track_item_level"] = true,
			["windows_fade_in"] = {
				"in", -- [1]
				0.2, -- [2]
			},
			["instances_menu_click_to_open"] = false,
			["overall_clear_newchallenge"] = true,
			["current_dps_meter"] = {
				["enabled"] = false,
				["font_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["arena_enabled"] = true,
				["font_shadow"] = "NONE",
				["font_size"] = 18,
				["mythic_dungeon_enabled"] = true,
				["sample_size"] = 5,
				["font_face"] = "Friz Quadrata TT",
				["frame"] = {
					["show_title"] = false,
					["strata"] = "LOW",
					["backdrop_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0.2, -- [4]
					},
					["locked"] = false,
					["height"] = 65,
					["width"] = 220,
				},
				["update_interval"] = 0.3,
				["options_frame"] = {
				},
			},
			["data_cleanup_logout"] = false,
			["instances_disable_bar_highlight"] = false,
			["trash_concatenate"] = false,
			["color_by_arena_team"] = true,
			["animation_speed"] = 33,
			["disable_stretch_from_toolbar"] = false,
			["disable_lock_ungroup_buttons"] = true,
			["memory_ram"] = 64,
			["disable_window_groups"] = false,
			["instances_suppress_trash"] = 0,
			["options_window"] = {
				["scale"] = 1,
			},
			["animation_speed_maxtravel"] = 3,
			["time_type_original"] = 2,
			["default_bg_alpha"] = 0.5,
			["font_faces"] = {
				["menus"] = "Expressway",
			},
			["time_type"] = 2,
			["death_tooltip_width"] = 350,
			["animate_scroll"] = false,
			["segments_amount"] = 12,
			["report_lines"] = 5,
			["clear_ungrouped"] = true,
			["class_icons_small"] = "Interface\\AddOns\\Details\\images\\classes_small",
			["skin"] = "ElvUI Frame Style",
			["override_spellids"] = true,
			["pvp_as_group"] = true,
			["force_activity_time_pvp"] = true,
			["numerical_system"] = 1,
			["player_details_window"] = {
				["scale"] = 1,
				["bar_texture"] = "Skyline",
				["skin"] = "ElvUI",
			},
			["minimum_combat_time"] = 5,
			["chat_tab_embed"] = {
				["enabled"] = false,
				["y_offset"] = 0,
				["x_offset"] = 0,
				["w1_pos"] = {
					["point"] = "BOTTOMRIGHT",
					["x_legacy"] = 818.3115234375,
					["pos_table"] = true,
					["w"] = 199.9999542236328,
					["y"] = 27.6229362487793,
					["h"] = 139.1257171630859,
					["y_legacy"] = -532.3223876953125,
					["x"] = -200.814208984375,
					["scale"] = 1,
				},
				["w2_pos"] = {
					["point"] = "BOTTOMRIGHT",
					["x_legacy"] = 1014.907104492188,
					["pos_table"] = true,
					["w"] = 193.1911926269531,
					["y"] = 27.6229362487793,
					["h"] = 139.1257171630859,
					["y_legacy"] = -532.3223876953125,
					["x"] = -7.623046875,
					["scale"] = 1,
				},
				["tab_name"] = "",
				["single_window"] = false,
			},
			["cloud_capture"] = true,
			["damage_taken_everything"] = false,
			["scroll_speed"] = 2,
			["new_window_size"] = {
				["height"] = 155,
				["width"] = 320,
			},
			["memory_threshold"] = 3,
			["deadlog_events"] = 32,
			["window_clamp"] = {
				-8, -- [1]
				0, -- [2]
				21, -- [3]
				-14, -- [4]
			},
			["close_shields"] = false,
			["class_coords"] = {
				["HUNTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["WARRIOR"] = {
					0, -- [1]
					0.25, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["ROGUE"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["MAGE"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["PET"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["DRUID"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["MONK"] = {
					0.5, -- [1]
					0.73828125, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["DEATHKNIGHT"] = {
					0.25, -- [1]
					0.5, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["MONSTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["UNKNOW"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["PRIEST"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["SHAMAN"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["Alliance"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["ENEMY"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["DEMONHUNTER"] = {
					0.73828126, -- [1]
					1, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["Horde"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["PALADIN"] = {
					0, -- [1]
					0.25, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["UNGROUPPLAYER"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["WARLOCK"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
			},
			["overall_flag"] = 5,
			["disable_alldisplays_window"] = false,
			["numerical_system_symbols"] = "auto",
			["class_colors"] = {
				["HUNTER"] = {
					0.67, -- [1]
					0.83, -- [2]
					0.45, -- [3]
				},
				["WARRIOR"] = {
					0.78, -- [1]
					0.61, -- [2]
					0.43, -- [3]
				},
				["PALADIN"] = {
					0.96, -- [1]
					0.55, -- [2]
					0.73, -- [3]
				},
				["MAGE"] = {
					0.41, -- [1]
					0.8, -- [2]
					0.94, -- [3]
				},
				["ARENA_YELLOW"] = {
					0.9, -- [1]
					0.9, -- [2]
					0, -- [3]
				},
				["UNGROUPPLAYER"] = {
					0.4, -- [1]
					0.4, -- [2]
					0.4, -- [3]
				},
				["DRUID"] = {
					1, -- [1]
					0.49, -- [2]
					0.04, -- [3]
				},
				["MONK"] = {
					0, -- [1]
					1, -- [2]
					0.59, -- [3]
				},
				["DEATHKNIGHT"] = {
					0.77, -- [1]
					0.12, -- [2]
					0.23, -- [3]
				},
				["ENEMY"] = {
					0.94117, -- [1]
					0, -- [2]
					0.0196, -- [3]
					1, -- [4]
				},
				["UNKNOW"] = {
					0.2, -- [1]
					0.2, -- [2]
					0.2, -- [3]
				},
				["PRIEST"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["SHAMAN"] = {
					0, -- [1]
					0.44, -- [2]
					0.87, -- [3]
				},
				["PET"] = {
					0.3, -- [1]
					0.4, -- [2]
					0.5, -- [3]
				},
				["WARLOCK"] = {
					0.58, -- [1]
					0.51, -- [2]
					0.79, -- [3]
				},
				["DEMONHUNTER"] = {
					0.64, -- [1]
					0.19, -- [2]
					0.79, -- [3]
				},
				["version"] = 1,
				["NEUTRAL"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["ROGUE"] = {
					1, -- [1]
					0.96, -- [2]
					0.41, -- [3]
				},
				["ARENA_GREEN"] = {
					0.1, -- [1]
					0.85, -- [2]
					0.1, -- [3]
				},
			},
			["hotcorner_topleft"] = {
				["hide"] = false,
			},
			["broadcaster_enabled"] = false,
			["clear_graphic"] = true,
			["total_abbreviation"] = 2,
			["segments_auto_erase"] = 1,
			["options_group_edit"] = true,
			["segments_amount_to_save"] = 5,
			["minimap"] = {
				["onclick_what_todo"] = 1,
				["radius"] = 160,
				["text_type"] = 1,
				["minimapPos"] = 220,
				["text_format"] = 3,
				["hide"] = false,
			},
			["instances_amount"] = 2,
			["max_window_size"] = {
				["height"] = 450,
				["width"] = 480,
			},
			["default_bg_color"] = 0.0941,
			["only_pvp_frags"] = false,
			["disable_stretch_button"] = true,
			["deny_score_messages"] = false,
			["animation_speed_triggertravel"] = 5,
			["trash_auto_remove"] = true,
			["segments_panic_mode"] = false,
			["standard_skin"] = {
				["show_statusbar"] = false,
				["clickthrough_window"] = false,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["menu_anchor"] = {
					16, -- [1]
					2, -- [2]
					["side"] = 2,
				},
				["bars_inverted"] = false,
				["bg_r"] = 0.3294117647058824,
				["name"] = "",
				["bg_alpha"] = 0.4405028223991394,
				["skin"] = "ElvUI Frame Style",
				["row_info"] = {
					["textR_outline"] = false,
					["spec_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal_alpha",
					["textL_outline"] = false,
					["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
					["textL_outline_small"] = true,
					["percent_type"] = 1,
					["fixed_text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
					},
					["space"] = {
						["right"] = 0,
						["left"] = 0,
						["between"] = 2,
					},
					["texture_background_class_color"] = false,
					["start_after_icon"] = false,
					["font_face_file"] = "Interface\\AddOns\\ElvUI\\Media\\Fonts\\Expressway.ttf",
					["textL_custom_text"] = "{data1}. {data3}{data2}",
					["models"] = {
						["upper_model"] = "Spells\\AcidBreath_SuperGreen.M2",
						["lower_model"] = "World\\EXPANSION02\\DOODADS\\Coldarra\\COLDARRALOCUS.m2",
						["upper_alpha"] = 0.5,
						["lower_enabled"] = false,
						["lower_alpha"] = 0.1,
						["upper_enabled"] = false,
					},
					["textL_translit_text"] = false,
					["texture_custom_file"] = "Interface\\",
					["texture_file"] = "Interface\\AddOns\\ElvUI_KlixUI\\media\\textures\\Klix.tga",
					["height"] = 16,
					["use_spec_icons"] = true,
					["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small_alpha",
					["icon_grayscale"] = false,
					["font_size"] = 11,
					["texture_background_file"] = "Interface\\AddOns\\ElvUI_KlixUI\\media\\textures\\Empty.tga",
					["textR_enable_custom_text"] = false,
					["textL_outline_small_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["fixed_texture_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
					},
					["textL_show_number"] = true,
					["fixed_texture_background_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0.339636147022247, -- [4]
					},
					["texture_custom"] = "",
					["textR_custom_text"] = "{data1} ({data2}, {data3}%)",
					["texture"] = "Klix",
					["textR_show_data"] = {
						false, -- [1]
						true, -- [2]
						true, -- [3]
					},
					["textL_enable_custom_text"] = false,
					["textL_class_colors"] = false,
					["alpha"] = 0.8,
					["textR_class_colors"] = false,
					["texture_background"] = "Empty",
					["textR_outline_small_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["no_icon"] = false,
					["icon_offset"] = {
						0, -- [1]
						0, -- [2]
					},
					["textR_outline_small"] = true,
					["font_face"] = "Expressway",
					["texture_class_colors"] = true,
					["backdrop"] = {
						["enabled"] = false,
						["texture"] = "Details BarBorder 2",
						["color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["size"] = 4,
					},
					["fast_ps_update"] = false,
					["textR_separator"] = ",",
					["textR_bracket"] = "(",
				},
				["following"] = {
					["bar_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
					},
					["enabled"] = false,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
					},
				},
				["color_buttons"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["toolbar_icon_file"] = "Interface\\AddOns\\Details\\images\\toolbar_icons",
				["bars_sort_direction"] = 1,
				["stretch_button_side"] = 1,
				["skin_custom"] = "",
				["hide_out_of_combat"] = false,
				["desaturated_menu"] = true,
				["tooltip"] = {
					["n_abilities"] = 3,
					["n_enemies"] = 3,
				},
				["auto_hide_menu"] = {
					["left"] = true,
					["right"] = false,
				},
				["switch_healer_in_combat"] = false,
				["switch_all_roles_in_combat"] = false,
				["switch_tank_in_combat"] = false,
				["version"] = 3,
				["attribute_text"] = {
					["show_timer"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
					["shadow"] = true,
					["side"] = 1,
					["text_size"] = 12,
					["custom_text"] = "{name}",
					["text_face"] = "Expressway",
					["anchor"] = {
						-18, -- [1]
						3, -- [2]
					},
					["enabled"] = true,
					["enable_custom_text"] = false,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0.7, -- [4]
					},
				},
				["hide_in_combat_type"] = 1,
				["menu_alpha"] = {
					["enabled"] = false,
					["onleave"] = 1,
					["ignorebars"] = false,
					["iconstoo"] = true,
					["onenter"] = 1,
				},
				["switch_all_roles_after_wipe"] = false,
				["switch_damager"] = false,
				["micro_displays_side"] = 2,
				["strata"] = "LOW",
				["clickthrough_incombatonly"] = true,
				["menu_anchor_down"] = {
					16, -- [1]
					-2, -- [2]
				},
				["switch_tank"] = false,
				["hide_in_combat_alpha"] = 0,
				["plugins_grow_direction"] = 1,
				["menu_icons"] = {
					true, -- [1]
					true, -- [2]
					true, -- [3]
					true, -- [4]
					true, -- [5]
					false, -- [6]
					["space"] = -2,
					["shadow"] = true,
				},
				["libwindow"] = {
					["y"] = 27.6229362487793,
					["x"] = -200.814208984375,
					["point"] = "BOTTOMRIGHT",
					["scale"] = 1,
				},
				["show_sidebars"] = false,
				["bars_grow_direction"] = 1,
				["row_show_animation"] = {
					["anim"] = "Fade",
					["options"] = {
					},
				},
				["grab_on_top"] = false,
				["instance_button_anchor"] = {
					-27, -- [1]
					1, -- [2]
				},
				["clickthrough_rows"] = false,
				["switch_damager_in_combat"] = false,
				["hide_icon"] = true,
				["window_scale"] = 1,
				["auto_current"] = true,
				["toolbar_side"] = 1,
				["bg_g"] = 0.3294117647058824,
				["ignore_mass_showhide"] = false,
				["hide_in_combat"] = false,
				["statusbar_info"] = {
					["alpha"] = 1,
					["overlay"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
					},
				},
				["micro_displays_locked"] = true,
				["switch_healer"] = false,
				["wallpaper"] = {
					["overlay"] = {
						0.999997794628143, -- [1]
						0.999997794628143, -- [2]
						0.999997794628143, -- [3]
						0.799998223781586, -- [4]
					},
					["width"] = 266.000061035156,
					["texcoord"] = {
						0.0480000019073486, -- [1]
						0.298000011444092, -- [2]
						0.630999984741211, -- [3]
						0.755999984741211, -- [4]
					},
					["enabled"] = false,
					["anchor"] = "all",
					["height"] = 225.999984741211,
					["alpha"] = 0.800000071525574,
					["texture"] = "Interface\\AddOns\\Details\\images\\skins\\elvui",
				},
				["total_bar"] = {
					["enabled"] = false,
					["only_in_group"] = true,
					["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
					["color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
					},
				},
				["clickthrough_toolbaricons"] = false,
				["backdrop_texture"] = "None",
				["menu_icons_size"] = 0.899999976158142,
				["bg_b"] = 0.3294117647058824,
			},
			["windows_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["row_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["font_sizes"] = {
				["menus"] = 11,
			},
			["overall_clear_logout"] = false,
			["overall_clear_newboss"] = true,
			["report_schema"] = 1,
			["use_scroll"] = false,
			["use_battleground_server_parser"] = true,
			["disable_reset_button"] = false,
			["data_broker_text"] = "",
			["instances"] = {
				{
					["__pos"] = {
						["normal"] = {
							["y"] = -513.4365005493164,
							["x"] = 773.362548828125,
							["w"] = 204.9999694824219,
							["h"] = 133.0740814208984,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["show_statusbar"] = false,
					["clickthrough_window"] = false,
					["menu_anchor"] = {
						17, -- [1]
						2, -- [2]
						["side"] = 2,
					},
					["bg_r"] = 0.1333333333333333,
					["hide_out_of_combat"] = false,
					["color_buttons"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["toolbar_icon_file"] = "Interface\\AddOns\\Details\\images\\toolbar_icons",
					["micro_displays_locked"] = true,
					["tooltip"] = {
						["n_abilities"] = 3,
						["n_enemies"] = 3,
					},
					["switch_all_roles_in_combat"] = false,
					["clickthrough_toolbaricons"] = false,
					["clickthrough_rows"] = false,
					["switch_tank"] = false,
					["switch_all_roles_after_wipe"] = false,
					["menu_icons"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
						true, -- [4]
						true, -- [5]
						false, -- [6]
						["space"] = -2,
						["shadow"] = true,
					},
					["switch_damager"] = false,
					["auto_hide_menu"] = {
						["left"] = true,
						["right"] = false,
					},
					["window_scale"] = 1,
					["hide_icon"] = true,
					["toolbar_side"] = 1,
					["bg_g"] = 0.1333333333333333,
					["bg_b"] = 0.1333333333333333,
					["switch_healer_in_combat"] = false,
					["color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0, -- [4]
					},
					["skin"] = "ElvUI Style II",
					["following"] = {
						["enabled"] = false,
						["bar_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["switch_healer"] = false,
					["StatusBarSaved"] = {
						["center"] = "DETAILS_STATUSBAR_PLUGIN_CLOCK",
						["right"] = "DETAILS_STATUSBAR_PLUGIN_PDPS",
						["options"] = {
							["DETAILS_STATUSBAR_PLUGIN_PDPS"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									0.7, -- [4]
								},
								["textXMod"] = 0,
								["textFace"] = "FORCED SQUARE",
								["textStyle"] = 2,
								["textAlign"] = 0,
								["textSize"] = 10,
								["textYMod"] = 1,
							},
							["DETAILS_STATUSBAR_PLUGIN_PSEGMENT"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									0.7, -- [4]
								},
								["segmentType"] = 2,
								["textFace"] = "FORCED SQUARE",
								["textXMod"] = 0,
								["textAlign"] = 0,
								["textStyle"] = 2,
								["textSize"] = 10,
								["textYMod"] = 1,
							},
							["DETAILS_STATUSBAR_PLUGIN_CLOCK"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									0.7, -- [4]
								},
								["textStyle"] = 2,
								["textXMod"] = 6,
								["textAlign"] = 0,
								["textFace"] = "FORCED SQUARE",
								["timeType"] = 1,
								["textSize"] = 10,
								["textYMod"] = 1,
							},
						},
						["left"] = "DETAILS_STATUSBAR_PLUGIN_PSEGMENT",
					},
					["instance_button_anchor"] = {
						-27, -- [1]
						1, -- [2]
					},
					["bg_alpha"] = 0,
					["__snapV"] = false,
					["__locked"] = true,
					["menu_alpha"] = {
						["enabled"] = false,
						["onenter"] = 1,
						["iconstoo"] = true,
						["ignorebars"] = false,
						["onleave"] = 1,
					},
					["__snapH"] = false,
					["hide_in_combat_type"] = 1,
					["__was_opened"] = true,
					["strata"] = "LOW",
					["clickthrough_incombatonly"] = true,
					["__snap"] = {
						[3] = 2,
					},
					["menu_icons_size"] = 0.8500000238418579,
					["hide_in_combat_alpha"] = 0,
					["menu_anchor_down"] = {
						16, -- [1]
						-2, -- [2]
					},
					["stretch_button_side"] = 1,
					["libwindow"] = {
						["y"] = 29.55026435852051,
						["x"] = -207.7352294921875,
						["point"] = "BOTTOMRIGHT",
						["scale"] = 1,
					},
					["statusbar_info"] = {
						["alpha"] = 0,
						["overlay"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
						},
					},
					["grab_on_top"] = false,
					["row_show_animation"] = {
						["anim"] = "Fade",
						["options"] = {
						},
					},
					["show_sidebars"] = true,
					["skin_custom"] = "",
					["backdrop_texture"] = "Details Ground",
					["switch_damager_in_combat"] = false,
					["switch_tank_in_combat"] = false,
					["bars_sort_direction"] = 1,
					["auto_current"] = true,
					["version"] = 3,
					["attribute_text"] = {
						["show_timer"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
						},
						["shadow"] = true,
						["side"] = 1,
						["text_color"] = {
							0.8627450980392157, -- [1]
							0.8627450980392157, -- [2]
							0.8627450980392157, -- [3]
							0.7000000178813934, -- [4]
						},
						["custom_text"] = "{name}",
						["text_face"] = "Expressway",
						["anchor"] = {
							-18, -- [1]
							5, -- [2]
						},
						["enabled"] = true,
						["enable_custom_text"] = false,
						["text_size"] = 11,
					},
					["bars_inverted"] = false,
					["hide_in_combat"] = false,
					["posicao"] = {
						["normal"] = {
							["y"] = -513.4365005493164,
							["x"] = 773.362548828125,
							["w"] = 204.9999694824219,
							["h"] = 133.0740814208984,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["row_info"] = {
						["textR_outline"] = true,
						["spec_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal_alpha",
						["textL_outline"] = true,
						["textR_outline_small"] = true,
						["textR_show_data"] = {
							true, -- [1]
							true, -- [2]
							false, -- [3]
						},
						["percent_type"] = 1,
						["fixed_text_color"] = {
							0.8627450980392157, -- [1]
							0.8627450980392157, -- [2]
							0.8627450980392157, -- [3]
							1, -- [4]
						},
						["space"] = {
							["right_noborder"] = -3,
							["between"] = 1,
							["right"] = -3,
							["left"] = 1,
							["left_noborder"] = 1,
						},
						["texture_background_class_color"] = false,
						["textL_outline_small_color"] = {
							0.1098039215686275, -- [1]
							0.1098039215686275, -- [2]
							0.1098039215686275, -- [3]
							1, -- [4]
						},
						["font_face_file"] = "Interface\\AddOns\\ElvUI\\Media\\Fonts\\Expressway.ttf",
						["backdrop"] = {
							["enabled"] = false,
							["texture"] = "None",
							["color"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["size"] = 4,
						},
						["models"] = {
							["upper_model"] = "Spells\\AcidBreath_SuperGreen.M2",
							["lower_model"] = "World\\EXPANSION02\\DOODADS\\Coldarra\\COLDARRALOCUS.m2",
							["upper_alpha"] = 0.5,
							["lower_enabled"] = false,
							["lower_alpha"] = 0.1,
							["upper_enabled"] = false,
						},
						["textL_translit_text"] = false,
						["texture_custom_file"] = "Interface\\",
						["texture_file"] = "Interface\\AddOns\\ElvUI_AlysiaUI\\media\\textures\\MaUI1.tga",
						["textR_bracket"] = "(",
						["font_size"] = 11,
						["icon_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal",
						["icon_grayscale"] = false,
						["textL_custom_text"] = "{data1}. {data3}{data2}",
						["use_spec_icons"] = true,
						["textR_enable_custom_text"] = false,
						["textL_enable_custom_text"] = false,
						["fixed_texture_color"] = {
							0.1137254901960784, -- [1]
							0.1137254901960784, -- [2]
							0.1137254901960784, -- [3]
							0.4557313919067383, -- [4]
						},
						["textL_show_number"] = true,
						["texture_custom"] = "",
						["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
						["textR_custom_text"] = "{data1} ({data2}, {data3}%)",
						["texture"] = "MaUI 1",
						["start_after_icon"] = false,
						["texture_background_file"] = "Interface\\AddOns\\ElvUI_AlysiaUI\\media\\textures\\MaUI1.tga",
						["textL_class_colors"] = false,
						["alpha"] = 0.4557313919067383,
						["texture_background"] = "MaUI 1",
						["textR_class_colors"] = false,
						["textR_outline_small_color"] = {
							0.1098039215686275, -- [1]
							0.1098039215686275, -- [2]
							0.1098039215686275, -- [3]
							1, -- [4]
						},
						["no_icon"] = false,
						["icon_offset"] = {
							0, -- [1]
							0, -- [2]
						},
						["fixed_texture_background_color"] = {
							0.1098039215686275, -- [1]
							0.1098039215686275, -- [2]
							0.1098039215686275, -- [3]
							0, -- [4]
						},
						["font_face"] = "Expressway",
						["texture_class_colors"] = true,
						["textL_outline_small"] = true,
						["fast_ps_update"] = false,
						["textR_separator"] = "NONE",
						["height"] = 21,
					},
					["bars_grow_direction"] = 1,
					["wallpaper"] = {
						["enabled"] = false,
						["width"] = 265.999979475717,
						["texcoord"] = {
							0.0480000019073486, -- [1]
							0.298000011444092, -- [2]
							0.630999984741211, -- [3]
							0.755999984741211, -- [4]
						},
						["overlay"] = {
							0.999997794628143, -- [1]
							0.999997794628143, -- [2]
							0.999997794628143, -- [3]
							0.799998223781586, -- [4]
						},
						["anchor"] = "all",
						["height"] = 226.000007591173,
						["alpha"] = 0.800000071525574,
						["texture"] = "Interface\\AddOns\\Details\\images\\skins\\elvui",
					},
					["total_bar"] = {
						["enabled"] = false,
						["only_in_group"] = true,
						["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
						["color"] = {
							0.8666666666666667, -- [1]
							0.8666666666666667, -- [2]
							0.8666666666666667, -- [3]
						},
					},
					["micro_displays_side"] = 2,
					["ignore_mass_showhide"] = false,
					["plugins_grow_direction"] = 1,
					["desaturated_menu"] = true,
				}, -- [1]
				{
					["__pos"] = {
						["normal"] = {
							["y"] = -513.4365005493164,
							["x"] = 975.960205078125,
							["w"] = 200.1959381103516,
							["h"] = 133.0740814208984,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["hide_in_combat_type"] = 1,
					["clickthrough_window"] = false,
					["menu_anchor"] = {
						17, -- [1]
						2, -- [2]
						["side"] = 2,
					},
					["bg_r"] = 0.1333333333333333,
					["hide_out_of_combat"] = false,
					["color_buttons"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["toolbar_icon_file"] = "Interface\\AddOns\\Details\\images\\toolbar_icons",
					["micro_displays_locked"] = true,
					["tooltip"] = {
						["n_abilities"] = 3,
						["n_enemies"] = 3,
					},
					["switch_all_roles_in_combat"] = false,
					["clickthrough_toolbaricons"] = false,
					["clickthrough_rows"] = false,
					["ignore_mass_showhide"] = false,
					["switch_all_roles_after_wipe"] = false,
					["menu_icons"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
						true, -- [4]
						true, -- [5]
						false, -- [6]
						["space"] = -2,
						["shadow"] = true,
					},
					["switch_damager"] = false,
					["auto_hide_menu"] = {
						["left"] = true,
						["right"] = false,
					},
					["window_scale"] = 1,
					["hide_icon"] = true,
					["toolbar_side"] = 1,
					["bg_g"] = 0.1333333333333333,
					["bg_b"] = 0.1333333333333333,
					["backdrop_texture"] = "Details Ground",
					["color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0, -- [4]
					},
					["skin"] = "ElvUI Style II",
					["following"] = {
						["bar_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["enabled"] = false,
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["switch_healer"] = false,
					["StatusBarSaved"] = {
						["center"] = "DETAILS_STATUSBAR_PLUGIN_CLOCK",
						["right"] = "DETAILS_STATUSBAR_PLUGIN_PDPS",
						["options"] = {
							["DETAILS_STATUSBAR_PLUGIN_PDPS"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									0.7, -- [4]
								},
								["textXMod"] = 0,
								["textFace"] = "FORCED SQUARE",
								["textStyle"] = 2,
								["textAlign"] = 0,
								["textSize"] = 10,
								["textYMod"] = 1,
							},
							["DETAILS_STATUSBAR_PLUGIN_PSEGMENT"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									0.7, -- [4]
								},
								["segmentType"] = 2,
								["textXMod"] = 0,
								["textFace"] = "FORCED SQUARE",
								["textAlign"] = 0,
								["textStyle"] = 2,
								["textSize"] = 10,
								["textYMod"] = 1,
							},
							["DETAILS_STATUSBAR_PLUGIN_CLOCK"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									0.7, -- [4]
								},
								["textStyle"] = 2,
								["textXMod"] = 6,
								["textAlign"] = 0,
								["textFace"] = "FORCED SQUARE",
								["timeType"] = 1,
								["textSize"] = 10,
								["textYMod"] = 1,
							},
						},
						["left"] = "DETAILS_STATUSBAR_PLUGIN_PSEGMENT",
					},
					["switch_tank_in_combat"] = false,
					["bg_alpha"] = 0,
					["__snapV"] = false,
					["__locked"] = true,
					["menu_alpha"] = {
						["enabled"] = false,
						["onenter"] = 1,
						["iconstoo"] = true,
						["ignorebars"] = false,
						["onleave"] = 1,
					},
					["__snapH"] = false,
					["show_statusbar"] = false,
					["__was_opened"] = true,
					["strata"] = "LOW",
					["clickthrough_incombatonly"] = true,
					["__snap"] = {
						1, -- [1]
					},
					["menu_icons_size"] = 0.850000023841858,
					["hide_in_combat_alpha"] = 0,
					["instance_button_anchor"] = {
						-27, -- [1]
						1, -- [2]
					},
					["stretch_button_side"] = 1,
					["libwindow"] = {
						["y"] = 29.55026435852051,
						["x"] = -7.53955078125,
						["point"] = "BOTTOMRIGHT",
						["scale"] = 1,
					},
					["statusbar_info"] = {
						["alpha"] = 0,
						["overlay"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
						},
					},
					["switch_damager_in_combat"] = false,
					["row_show_animation"] = {
						["anim"] = "Fade",
						["options"] = {
						},
					},
					["menu_anchor_down"] = {
						16, -- [1]
						-2, -- [2]
					},
					["skin_custom"] = "",
					["row_info"] = {
						["textR_outline"] = true,
						["spec_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal_alpha",
						["textL_outline"] = true,
						["textR_outline_small"] = true,
						["textR_show_data"] = {
							true, -- [1]
							true, -- [2]
							false, -- [3]
						},
						["percent_type"] = 1,
						["fixed_text_color"] = {
							0.8627450980392157, -- [1]
							0.8627450980392157, -- [2]
							0.8627450980392157, -- [3]
							1, -- [4]
						},
						["space"] = {
							["right_noborder"] = -3,
							["between"] = 1,
							["right"] = -3,
							["left"] = 1,
							["left_noborder"] = 1,
						},
						["texture_background_class_color"] = false,
						["textL_outline_small_color"] = {
							0.1098039215686275, -- [1]
							0.1098039215686275, -- [2]
							0.1098039215686275, -- [3]
							1, -- [4]
						},
						["font_face_file"] = "Interface\\AddOns\\ElvUI\\Media\\Fonts\\Expressway.ttf",
						["backdrop"] = {
							["enabled"] = false,
							["texture"] = "None",
							["color"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["size"] = 4,
						},
						["models"] = {
							["upper_model"] = "Spells\\AcidBreath_SuperGreen.M2",
							["lower_model"] = "World\\EXPANSION02\\DOODADS\\Coldarra\\COLDARRALOCUS.m2",
							["upper_alpha"] = 0.5,
							["lower_enabled"] = false,
							["lower_alpha"] = 0.1,
							["upper_enabled"] = false,
						},
						["textL_translit_text"] = false,
						["texture_custom_file"] = "Interface\\",
						["texture_file"] = "Interface\\AddOns\\ElvUI_AlysiaUI\\media\\textures\\MaUI1.tga",
						["textR_bracket"] = "(",
						["font_size"] = 11,
						["icon_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal",
						["icon_grayscale"] = false,
						["textL_custom_text"] = "{data1}. {data3}{data2}",
						["use_spec_icons"] = true,
						["textR_enable_custom_text"] = false,
						["textL_enable_custom_text"] = false,
						["fixed_texture_color"] = {
							0.1137254901960784, -- [1]
							0.1137254901960784, -- [2]
							0.1137254901960784, -- [3]
							0.4557313919067383, -- [4]
						},
						["textL_show_number"] = true,
						["texture_custom"] = "",
						["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
						["textR_custom_text"] = "{data1} ({data2}, {data3}%)",
						["texture"] = "MaUI 1",
						["start_after_icon"] = false,
						["texture_background_file"] = "Interface\\AddOns\\ElvUI_AlysiaUI\\media\\textures\\MaUI1.tga",
						["textL_class_colors"] = false,
						["alpha"] = 0.4557313919067383,
						["texture_background"] = "MaUI 1",
						["textR_class_colors"] = false,
						["textR_outline_small_color"] = {
							0.1098039215686275, -- [1]
							0.1098039215686275, -- [2]
							0.1098039215686275, -- [3]
							1, -- [4]
						},
						["no_icon"] = false,
						["icon_offset"] = {
							0, -- [1]
							0, -- [2]
						},
						["fixed_texture_background_color"] = {
							0.1098039215686275, -- [1]
							0.1098039215686275, -- [2]
							0.1098039215686275, -- [3]
							0, -- [4]
						},
						["font_face"] = "Expressway",
						["texture_class_colors"] = true,
						["textL_outline_small"] = true,
						["fast_ps_update"] = false,
						["textR_separator"] = "NONE",
						["height"] = 21,
					},
					["grab_on_top"] = false,
					["bars_grow_direction"] = 1,
					["switch_healer_in_combat"] = false,
					["auto_current"] = true,
					["version"] = 3,
					["attribute_text"] = {
						["show_timer"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
						},
						["shadow"] = true,
						["side"] = 1,
						["text_color"] = {
							0.8627450980392157, -- [1]
							0.8627450980392157, -- [2]
							0.8627450980392157, -- [3]
							0.7000000178813934, -- [4]
						},
						["custom_text"] = "{name}",
						["text_face"] = "Expressway",
						["anchor"] = {
							-18, -- [1]
							5, -- [2]
						},
						["enabled"] = true,
						["enable_custom_text"] = false,
						["text_size"] = 11,
					},
					["plugins_grow_direction"] = 1,
					["hide_in_combat"] = false,
					["posicao"] = {
						["normal"] = {
							["y"] = -513.4365005493164,
							["x"] = 975.960205078125,
							["w"] = 200.1959381103516,
							["h"] = 133.0740814208984,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["micro_displays_side"] = 2,
					["desaturated_menu"] = true,
					["wallpaper"] = {
						["enabled"] = false,
						["width"] = 265.999979475717,
						["texcoord"] = {
							0.0480000019073486, -- [1]
							0.298000011444092, -- [2]
							0.630999984741211, -- [3]
							0.755999984741211, -- [4]
						},
						["overlay"] = {
							0.999997794628143, -- [1]
							0.999997794628143, -- [2]
							0.999997794628143, -- [3]
							0.799998223781586, -- [4]
						},
						["anchor"] = "all",
						["height"] = 226.000007591173,
						["alpha"] = 0.800000071525574,
						["texture"] = "Interface\\AddOns\\Details\\images\\skins\\elvui",
					},
					["total_bar"] = {
						["enabled"] = false,
						["only_in_group"] = true,
						["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
						["color"] = {
							0.8666666666666667, -- [1]
							0.8666666666666667, -- [2]
							0.8666666666666667, -- [3]
						},
					},
					["switch_tank"] = false,
					["show_sidebars"] = true,
					["bars_sort_direction"] = 1,
					["bars_inverted"] = false,
				}, -- [2]
			},
			["instances_no_libwindow"] = false,
			["deadlog_limit"] = 16,
			["instances_segments_locked"] = false,
		},
	},
	["boss_mods_timers"] = {
		["encounter_timers_bw"] = {
		},
		["encounter_timers_dbm"] = {
			["297822"] = {
				"297822", -- [1]
				"Timer297822cd", -- [2]
				"~Wogende Dunkelheit", -- [3]
				11.1, -- [4]
				1022950, -- [5]
				"cd", -- [6]
				297822, -- [7]
				3, -- [8]
				"d1995", -- [9]
				["id"] = 2332,
			},
			["309819"] = {
				"309819", -- [1]
				"Timer309819cd", -- [2]
				"~Leereneruption", -- [3]
				20.5, -- [4]
				1386548, -- [5]
				"cd", -- [6]
				309819, -- [7]
				2, -- [8]
				"d1993", -- [9]
				["id"] = 2338,
			},
			["297324"] = {
				"297324", -- [1]
				"Timer297324cdcount	3", -- [2]
				"~Salzblase (3)", -- [3]
				13.9, -- [4]
				893777, -- [5]
				"cdcount", -- [6]
				297324, -- [7]
				3, -- [8]
				"2354", -- [9]
				["id"] = 2304,
			},
			["306736"] = {
				"306736", -- [1]
				"Timer306736cd", -- [2]
				"~Schlickatem", -- [3]
				26.1, -- [4]
				1029007, -- [5]
				"cd", -- [6]
				306736, -- [7]
				3, -- [8]
				"2367", -- [9]
				["id"] = 2335,
			},
			["143309"] = {
				"143309", -- [1]
				"Timer143309cd", -- [2]
				"~Wirbel", -- [3]
				20, -- [4]
				135861, -- [5]
				"cd", -- [6]
				143309, -- [7]
				2, -- [8]
				"852", -- [9]
				["id"] = 1602,
			},
			["228633"] = {
				"228633", -- [1]
				"Timer228633next	Creature-0-1463-1648-25771-114809-00001A0D5D", -- [2]
				"Schonungslos", -- [3]
				7, -- [4]
				132337, -- [5]
				"next", -- [6]
				228633, -- [7]
				3, -- [8]
				"1829", -- [9]
				["id"] = 2008,
			},
			["268932"] = {
				"268932", -- [1]
				"Timer268932cd", -- [2]
				"~Bebensprung", -- [3]
				12, -- [4]
				878213, -- [5]
				"cd", -- [6]
				268932, -- [7]
				3, -- [8]
				"2172", -- [9]
				["id"] = 2143,
			},
			["197478"] = {
				"197478", -- [1]
				"Timer197478cd", -- [2]
				"~Dunkler Ansturm", -- [3]
				12.1, -- [4]
				1247261, -- [5]
				"cd", -- [6]
				197478, -- [7]
				3, -- [8]
				"1653", -- [9]
				["id"] = 1833,
			},
			["295445"] = {
				"295445", -- [1]
				"Timer295445cd", -- [2]
				"~Demolieren", -- [3]
				15.7, -- [4]
				132358, -- [5]
				"cd", -- [6]
				295445, -- [7]
				5, -- [8]
				"2355", -- [9]
				["id"] = 2291,
			},
			["19702"] = {
				"19702", -- [1]
				"Timer19702cd", -- [2]
				"~Drohende Verdammnis", -- [3]
				7, -- [4]
				136179, -- [5]
				"cd", -- [6]
				19702, -- [7]
				3, -- [8]
				"Lucifron", -- [9]
				["id"] = 663,
			},
			["318449"] = {
				"318449", -- [1]
				"Timer318449nextcount	1", -- [2]
				"Qual (1)", -- [3]
				35.3, -- [4]
				237567, -- [5]
				"nextcount", -- [6]
				318449, -- [7]
				2, -- [8]
				"2375", -- [9]
				["id"] = 2344,
			},
			["259718"] = {
				"259718", -- [1]
				"Timer259718cd", -- [2]
				"~Emporstoßen", -- [3]
				17, -- [4]
				236188, -- [5]
				"cd", -- [6]
				259718, -- [7]
				3, -- [8]
				"2130", -- [9]
				["id"] = 2112,
			},
			["233206"] = {
				"233206", -- [1]
				"Timer233206cd", -- [2]
				"~Schattenverblassen", -- [3]
				40, -- [4]
				132095, -- [5]
				"cd", -- [6]
				233206, -- [7]
				6, -- [8]
				"1878", -- [9]
				["id"] = 2039,
			},
			["228730"] = {
				"228730", -- [1]
				"Timer228730nextcount	1", -- [2]
				"Tentakelhieb (1)", -- [3]
				53, -- [4]
				254105, -- [5]
				"nextcount", -- [6]
				228730, -- [7]
				5, -- [8]
				"1829", -- [9]
				["id"] = 2008,
			},
			["266225"] = {
				"266225", -- [1]
				"Timer266225cd", -- [2]
				"~Finsterer Blitz", -- [3]
				8, -- [4]
				1385911, -- [5]
				"cd", -- [6]
				266225, -- [7]
				4, -- [8]
				"2129", -- [9]
				["id"] = 2117,
			},
			["296080"] = {
				"296080", -- [1]
				"Timer296080active", -- [2]
				"Durchgebrannt endet", -- [3]
				30, -- [4]
				896469, -- [5]
				"active", -- [6]
				296080, -- [7]
				6, -- [8]
				"2355", -- [9]
				["id"] = 2291,
			},
			["291946"] = {
				"291946", -- [1]
				"Timer291946cd", -- [2]
				"~Flammen ablassen", -- [3]
				15.5, -- [4]
				629054, -- [5]
				"cd", -- [6]
				291946, -- [7]
				2, -- [8]
				"2339", -- [9]
				["id"] = 2258,
			},
			["313040"] = {
				"313040", -- [1]
				"Timer313040cdcount	1", -- [2]
				"~Unendliche Finsternis (1)", -- [3]
				54, -- [4]
				1386548, -- [5]
				"cdcount", -- [6]
				313040, -- [7]
				2, -- [8]
				"2366", -- [9]
				["id"] = 2337,
			},
			["309985"] = {
				"309985", -- [1]
				"Timer309985cdcount	1", -- [2]
				"~Energie verschlingen (1)", -- [3]
				25.8, -- [4]
				1022945, -- [5]
				"cdcount", -- [6]
				309985, -- [7]
				6, -- [8]
				"2364", -- [9]
				["id"] = 2331,
			},
			["261563"] = {
				"261563", -- [1]
				"Timer261563cd", -- [2]
				"~Hereinbrechende Flut", -- [3]
				13.1, -- [4]
				1385912, -- [5]
				"cd", -- [6]
				261563, -- [7]
				5, -- [8]
				"2134", -- [9]
				["id"] = 2099,
			},
			["260703"] = {
				"260703", -- [1]
				"Timer260703next", -- [2]
				"Instabiles Runenmal", -- [3]
				8.5, -- [4]
				633004, -- [5]
				"next", -- [6]
				260703, -- [7]
				3, -- [8]
				"2125", -- [9]
				["id"] = 2113,
			},
			["315772"] = {
				"315772", -- [1]
				"Timer315772next", -- [2]
				"Gedankengriff", -- [3]
				7.5, -- [4]
				237566, -- [5]
				"next", -- [6]
				315772, -- [7]
				3, -- [8]
				"2375", -- [9]
				["id"] = 2344,
			},
			["267522"] = {
				"267522", -- [1]
				"Timer267522cd", -- [2]
				"~Schneidende Woge", -- [3]
				4.1, -- [4]
				965900, -- [5]
				"cd", -- [6]
				267522, -- [7]
				3, -- [8]
				"2093", -- [9]
				["id"] = 2094,
			},
			["267891"] = {
				"267891", -- [1]
				"Timer267891cd", -- [2]
				"~Schnelligkeitszauberschutz", -- [3]
				16.1, -- [4]
				1589500, -- [5]
				"cd", -- [6]
				267891, -- [7]
				5, -- [8]
				"2154", -- [9]
				["id"] = 2131,
			},
			["107120"] = {
				"107120", -- [1]
				"Timer107120next", -- [2]
				"Rasender Angriff", -- [3]
				6, -- [4]
				132152, -- [5]
				"next", -- [6]
				107120, -- [7]
				5, -- [8]
				"676", -- [9]
				["id"] = 1406,
			},
			["260811"] = {
				"260811", -- [1]
				"Timer260811cd", -- [2]
				"~Zielsuchrakete", -- [3]
				4.9, -- [4]
				369278, -- [5]
				"cd", -- [6]
				260811, -- [7]
				3, -- [8]
				"2116", -- [9]
				["id"] = 2108,
			},
			["200243"] = {
				"200243", -- [1]
				"Timer200243cd", -- [2]
				"~Wandelnder Alptraum", -- [3]
				6, -- [4]
				1357795, -- [5]
				"cd", -- [6]
				200243, -- [7]
				3, -- [8]
				"1657", -- [9]
				["id"] = 1839,
			},
			["ej5081"] = {
				"ej5081", -- [1]
				"Timerej5081cd", -- [2]
				"~Teufelskristall", -- [3]
				15, -- [4]
				136170, -- [5]
				"cd", -- [6]
				"ej5081", -- [7]
				1, -- [8]
				"530", -- [9]
				["id"] = 1897,
			},
			["234295"] = {
				"234295", -- [1]
				"Timer234295cast", -- [2]
				"Armageddonregen ", -- [3]
				9, -- [4]
				136186, -- [5]
				"cast", -- [6]
				234295, -- [7]
				2, -- [8]
				"1898", -- [9]
				["id"] = 2051,
			},
			["307218"] = {
				"307218", -- [1]
				"Timer307218nextcount	1", -- [2]
				"Tiefer Atem (1)", -- [3]
				89.7, -- [4]
				132291, -- [5]
				"nextcount", -- [6]
				307218, -- [7]
				3, -- [8]
				"2370", -- [9]
				["id"] = 2336,
			},
			["310358"] = {
				"310358", -- [1]
				"Timer310358cd", -- [2]
				"~Gemurmel des Wahnsinns", -- [3]
				30.1, -- [4]
				136131, -- [5]
				"cd", -- [6]
				310358, -- [7]
				3, -- [8]
				"2373", -- [9]
				["id"] = 2343,
			},
			["19713"] = {
				"19713", -- [1]
				"Timer19713cd", -- [2]
				"~Shazzrahs Fluch", -- [3]
				6, -- [4]
				136121, -- [5]
				"cd", -- [6]
				19713, -- [7]
				3, -- [8]
				"Shazzrah", -- [9]
				["id"] = 667,
			},
			["292270"] = {
				"292270", -- [1]
				"Timer292270nextcount	1", -- [2]
				"Schockimpuls (1)", -- [3]
				21.9, -- [4]
				136050, -- [5]
				"nextcount", -- [6]
				292270, -- [7]
				2, -- [8]
				"2347", -- [9]
				["id"] = 2289,
			},
			["307639"] = {
				"307639", -- [1]
				"Timer307639cdcount	1", -- [2]
				"~Das Herz der Dunkelheit (1)", -- [3]
				21.5, -- [4]
				1711336, -- [5]
				"cdcount", -- [6]
				307639, -- [7]
				2, -- [8]
				"2370", -- [9]
				["id"] = 2336,
			},
			["268347"] = {
				"268347", -- [1]
				"Timer268347cd", -- [2]
				"~Leerenblitz", -- [3]
				7.3, -- [4]
				132886, -- [5]
				"cd", -- [6]
				268347, -- [7]
				4, -- [8]
				"2155", -- [9]
				["id"] = 2132,
			},
			["193597"] = {
				"193597", -- [1]
				"Timer193597cd", -- [2]
				"~Statische Nova", -- [3]
				10.5, -- [4]
				237587, -- [5]
				"cd", -- [6]
				193597, -- [7]
				2, -- [8]
				"1490", -- [9]
				["id"] = 1811,
			},
			["298055"] = {
				"298055", -- [1]
				"Timer298055cdcount	1", -- [2]
				"~Aufwogen (1)", -- [3]
				9, -- [4]
				893779, -- [5]
				"cdcount", -- [6]
				298055, -- [7]
				3, -- [8]
				"2354", -- [9]
				["id"] = 2304,
			},
			["70123"] = {
				"70123", -- [1]
				"Timer70123cd", -- [2]
				"~Mörderische Kälte", -- [3]
				33, -- [4]
				135854, -- [5]
				"cd", -- [6]
				70123, -- [7]
				2, -- [8]
				"Sindragosa", -- [9]
				["id"] = 1105,
			},
			["234015"] = {
				"234015", -- [1]
				"Timer234015cdcount	2", -- [2]
				"~Quälender Ausbruch (2)", -- [3]
				17, -- [4]
				136123, -- [5]
				"cdcount", -- [6]
				234015, -- [7]
				2, -- [8]
				"1867", -- [9]
				["id"] = 2048,
			},
			["197961"] = {
				"197961", -- [1]
				"Timer197961cdcount", -- [2]
				"~Runenbrandmal (unbekannt", -- [3]
				44, -- [4]
				442743, -- [5]
				"cdcount", -- [6]
				197961, -- [7]
				3, -- [8]
				"1489", -- [9]
				["id"] = 1809,
			},
			["199193"] = {
				"199193", -- [1]
				"Timer199193cd", -- [2]
				"~Arglist des Schreckenslords", -- [3]
				24, -- [4]
				840942, -- [5]
				"cd", -- [6]
				199193, -- [7]
				6, -- [8]
				"1672", -- [9]
				["id"] = 1835,
			},
			["69705"] = {
				"69705", -- [1]
				"Timer69705next", -- [2]
				"Unter Null", -- [3]
				3.2, -- [4]
				135841, -- [5]
				"next", -- [6]
				69705, -- [7]
				5, -- [8]
				"GunshipBattle", -- [9]
				["id"] = 1099,
			},
			["232722"] = {
				"232722", -- [1]
				"Timer232722cdcount	1", -- [2]
				"~Schneidender Tornado (1)", -- [3]
				36, -- [4]
				999952, -- [5]
				"cdcount", -- [6]
				232722, -- [7]
				3, -- [8]
				"1861", -- [9]
				["id"] = 2037,
			},
			["310329"] = {
				"310329", -- [1]
				"Timer310329cd", -- [2]
				"~Entropischer Einsturz", -- [3]
				15.5, -- [4]
				1022950, -- [5]
				"cd", -- [6]
				310329, -- [7]
				2, -- [8]
				"2373", -- [9]
				["id"] = 2343,
			},
			["276068"] = {
				"276068", -- [1]
				"Timer276068cd", -- [2]
				"~Gezeitenwoge", -- [3]
				24.1, -- [4]
				237590, -- [5]
				"cd", -- [6]
				276068, -- [7]
				2, -- [8]
				"2134", -- [9]
				["id"] = 2099,
			},
			["ej5934"] = {
				"ej5934", -- [1]
				"Timerej5934next", -- [2]
				"Scharfschützenwächter", -- [3]
				21, -- [4]
				970886, -- [5]
				"next", -- [6]
				"ej5934", -- [7]
				1, -- [8]
				"569", -- [9]
				["id"] = 1938,
			},
			["256198"] = {
				"256198", -- [1]
				"Timer256198cd", -- [2]
				"~Azeritgeschosse: Brand", -- [3]
				5.1, -- [4]
				514016, -- [5]
				"cd", -- [6]
				256198, -- [7]
				3, -- [8]
				"2096", -- [9]
				["id"] = 2104,
			},
			["193826"] = {
				"193826", -- [1]
				"Timer193826cd", -- [2]
				"~Apokalypse", -- [3]
				11, -- [4]
				135799, -- [5]
				"cd", -- [6]
				193826, -- [7]
				2, -- [8]
				"1488", -- [9]
				["id"] = 1808,
			},
			["296650"] = {
				"296650", -- [1]
				"Timer296650cd", -- [2]
				"~Gehärteter Panzer", -- [3]
				70.5, -- [4]
				134970, -- [5]
				"cd", -- [6]
				296650, -- [7]
				6, -- [8]
				"2354", -- [9]
				["id"] = 2304,
			},
			["100686"] = {
				"100686", -- [1]
				"Timer100686next", -- [2]
				"Ruf der Hochgeborenen", -- [3]
				40, -- [4]
				136201, -- [5]
				"next", -- [6]
				100686, -- [7]
				1, -- [8]
				"323", -- [9]
				["id"] = 1882,
			},
			["307403"] = {
				"307403", -- [1]
				"Timer307403cd	Creature-0-1461-2217-12978-157467-0000503F74", -- [2]
				"~Vernichtung", -- [3]
				14.6, -- [4]
				1386551, -- [5]
				"cd", -- [6]
				307403, -- [7]
				3, -- [8]
				"2370", -- [9]
				["id"] = 2336,
			},
			["238999"] = {
				"238999", -- [1]
				"Timer238999cdcount	2", -- [2]
				"~Dunkelheit der tausend Seelen (2)", -- [3]
				89.7, -- [4]
				136123, -- [5]
				"cdcount", -- [6]
				238999, -- [7]
				2, -- [8]
				"1898", -- [9]
				["id"] = 2051,
			},
			["119922"] = {
				"119922", -- [1]
				"Timer119922next", -- [2]
				"Schockwelle", -- [3]
				19, -- [4]
				451165, -- [5]
				"next", -- [6]
				119922, -- [7]
				3, -- [8]
				"708", -- [9]
				["id"] = 1442,
			},
			["271456"] = {
				"271456", -- [1]
				"Timer271456cd", -- [2]
				"~Schmetterbohrer", -- [3]
				22.4, -- [4]
				892833, -- [5]
				"cd", -- [6]
				271456, -- [7]
				3, -- [8]
				"2116", -- [9]
				["id"] = 2108,
			},
			["233272"] = {
				"233272", -- [1]
				"Timer233272nextcount	1", -- [2]
				"Zerschmetternder Stern (1)", -- [3]
				24, -- [4]
				517112, -- [5]
				"nextcount", -- [6]
				233272, -- [7]
				3, -- [8]
				"1862", -- [9]
				["id"] = 2032,
			},
			["283565"] = {
				"283565", -- [1]
				"Timer283565cd", -- [2]
				"~Maximaler Schub", -- [3]
				45.8, -- [4]
				648208, -- [5]
				"cd", -- [6]
				283565, -- [7]
				3, -- [8]
				"2336", -- [9]
				["id"] = 2257,
			},
			["256970"] = {
				"256970", -- [1]
				"Timer256970cd", -- [2]
				"~Zündung", -- [3]
				6.1, -- [4]
				236215, -- [5]
				"cd", -- [6]
				256970, -- [7]
				5, -- [8]
				"2099", -- [9]
				["id"] = 2103,
			},
			["317874"] = {
				"317874", -- [1]
				"Timer317874nextcount2	1R", -- [2]
				"Starren (1R)", -- [3]
				40.5, -- [4]
				1386551, -- [5]
				"nextcount", -- [6]
				317874, -- [7]
				3, -- [8]
				"2375", -- [9]
				["id"] = 2344,
			},
			["260280"] = {
				"260280", -- [1]
				"Timer260280cd", -- [2]
				"~Maschinenkanone", -- [3]
				14.9, -- [4]
				249177, -- [5]
				"cd", -- [6]
				260280, -- [7]
				3, -- [8]
				"2116", -- [9]
				["id"] = 2108,
			},
			["313960"] = {
				"313960", -- [1]
				"Timer313960nextcount	1", -- [2]
				"Schwarze Salve (1)", -- [3]
				21, -- [4]
				132323, -- [5]
				"nextcount", -- [6]
				313960, -- [7]
				2, -- [8]
				"2375", -- [9]
				["id"] = 2344,
			},
			["258622"] = {
				"258622", -- [1]
				"Timer258622cd", -- [2]
				"~Resonanter Impuls", -- [3]
				10.6, -- [4]
				451165, -- [5]
				"cd", -- [6]
				258622, -- [7]
				2, -- [8]
				"2114", -- [9]
				["id"] = 2106,
			},
			["310361"] = {
				"310361", -- [1]
				"Timer310361cast", -- [2]
				"Entfesselter Wahnsinn ", -- [3]
				5, -- [4]
				136194, -- [5]
				"cast", -- [6]
				310361, -- [7]
				3, -- [8]
				"2373", -- [9]
				["id"] = 2343,
			},
			["20566"] = {
				"20566", -- [1]
				"Timer20566cd", -- [2]
				"~Zorn des Ragnaros", -- [3]
				26.7, -- [4]
				135827, -- [5]
				"cd", -- [6]
				20566, -- [7]
				2, -- [8]
				"Ragnaros-Classic", -- [9]
				["id"] = 672,
			},
			["236305"] = {
				"236305", -- [1]
				"Timer236305nextcount	1", -- [2]
				"Körperloser Schuss (1)", -- [3]
				48, -- [4]
				959793, -- [5]
				"nextcount", -- [6]
				236305, -- [7]
				3, -- [8]
				"1903", -- [9]
				["id"] = 2050,
			},
			["123655"] = {
				"123655", -- [1]
				"Timer123655target	Leonora-Mal'Ganis", -- [2]
				"Traumatischer Schlag: Leonora-Mal'Ganis", -- [3]
				5, -- [4]
				132355, -- [5]
				"target", -- [6]
				123655, -- [7]
				0, -- [8]
				"708", -- [9]
				["id"] = 1442,
			},
			["307232"] = {
				"307232", -- [1]
				"Timer307232nextcount	1", -- [2]
				"Widerhallende Leere (1)", -- [3]
				35.7, -- [4]
				1022950, -- [5]
				"nextcount", -- [6]
				307232, -- [7]
				2, -- [8]
				"2372", -- [9]
				["id"] = 2333,
			},
			["235230"] = {
				"235230", -- [1]
				"Timer235230cdcount	1", -- [2]
				"~Teufelsböe (1)", -- [3]
				35, -- [4]
				841219, -- [5]
				"cdcount", -- [6]
				235230, -- [7]
				2, -- [8]
				"1867", -- [9]
				["id"] = 2048,
			},
			["256955"] = {
				"256955", -- [1]
				"Timer256955cd", -- [2]
				"~Glutflamme", -- [3]
				18.2, -- [4]
				524795, -- [5]
				"cd", -- [6]
				256955, -- [7]
				3, -- [8]
				"2099", -- [9]
				["id"] = 2103,
			},
			["70358"] = {
				"70358", -- [1]
				"Timer70358next", -- [2]
				"Ghulsklave beschwören", -- [3]
				10, -- [4]
				237524, -- [5]
				"next", -- [6]
				70358, -- [7]
				1, -- [8]
				"LichKing", -- [9]
				["id"] = 1106,
			},
			["284262"] = {
				"284262", -- [1]
				"Timer284262cd", -- [2]
				"~Voltaischer Blitz", -- [3]
				20, -- [4]
				839983, -- [5]
				"cd", -- [6]
				284262, -- [7]
				3, -- [8]
				"2337", -- [9]
				["id"] = 2280,
			},
			["115002"] = {
				"115002", -- [1]
				"Timer115002next", -- [2]
				"Erdrückenden Hass beschwören", -- [3]
				45.5, -- [4]
				134335, -- [5]
				"next", -- [6]
				115002, -- [7]
				1, -- [8]
				"686", -- [9]
				["id"] = 1306,
			},
			["297746"] = {
				"297746", -- [1]
				"Timer297746cd", -- [2]
				"~Seismischer Schlag", -- [3]
				4.6, -- [4]
				1016245, -- [5]
				"cd", -- [6]
				297746, -- [7]
				3, -- [8]
				"d1995", -- [9]
				["id"] = 2332,
			},
			["20475"] = {
				"20475", -- [1]
				"Timer20475cd", -- [2]
				"~Lebende Bombe", -- [3]
				11, -- [4]
				132863, -- [5]
				"cd", -- [6]
				20475, -- [7]
				3, -- [8]
				"Geddon", -- [9]
				["id"] = 668,
			},
			["200359"] = {
				"200359", -- [1]
				"Timer200359cd", -- [2]
				"~Eingeflüsterte Paranoia", -- [3]
				19, -- [4]
				460691, -- [5]
				"cd", -- [6]
				200359, -- [7]
				3, -- [8]
				"1657", -- [9]
				["id"] = 1839,
			},
			["112992"] = {
				"112992", -- [1]
				"Timer112992next", -- [2]
				"Zwirbelwind", -- [3]
				15, -- [4]
				132369, -- [5]
				"next", -- [6]
				112992, -- [7]
				2, -- [8]
				"669", -- [9]
				["id"] = 1413,
			},
			["317066"] = {
				"317066", -- [1]
				"Timer317066cd	Creature-0-3111-2217-13555-162933-00001CB378", -- [2]
				"~Gedanken ernten", -- [3]
				8.2, -- [4]
				136125, -- [5]
				"cd", -- [6]
				317066, -- [7]
				3, -- [8]
				"2375", -- [9]
				["id"] = 2344,
			},
			["283143"] = {
				"283143", -- [1]
				"Timer283143cd", -- [2]
				"~Magnetarm", -- [3]
				34, -- [4]
				892830, -- [5]
				"cd", -- [6]
				283143, -- [7]
				2, -- [8]
				"2331", -- [9]
				["id"] = 2260,
			},
			["228187"] = {
				"228187", -- [1]
				"Timer228187cdcount	1", -- [2]
				"~Odem des Wächters (1)", -- [3]
				11, -- [4]
				988195, -- [5]
				"cdcount", -- [6]
				228187, -- [7]
				5, -- [8]
				"1830", -- [9]
				["id"] = 1962,
			},
			["193682"] = {
				"193682", -- [1]
				"Timer193682cd", -- [2]
				"~Sturm herbeilocken", -- [3]
				19, -- [4]
				135861, -- [5]
				"cd", -- [6]
				193682, -- [7]
				1, -- [8]
				"1490", -- [9]
				["id"] = 1811,
			},
			["227503"] = {
				"227503", -- [1]
				"Timer227503next", -- [2]
				"Macht sammeln", -- [3]
				45, -- [4]
				236247, -- [5]
				"next", -- [6]
				227503, -- [7]
				6, -- [8]
				"1819", -- [9]
				["id"] = 1958,
			},
			["260292"] = {
				"260292", -- [1]
				"Timer260292cd", -- [2]
				"~Ansturm", -- [3]
				8.3, -- [4]
				2011119, -- [5]
				"cd", -- [6]
				260292, -- [7]
				3, -- [8]
				"2131", -- [9]
				["id"] = 2118,
			},
			["256038"] = {
				"256038", -- [1]
				"Timer256038cd", -- [2]
				"~Zielwasser", -- [3]
				23.3, -- [4]
				132385, -- [5]
				"cd", -- [6]
				256038, -- [7]
				3, -- [8]
				"2096", -- [9]
				["id"] = 2104,
			},
			["306111"] = {
				"306111", -- [1]
				"Timer306111cdcount	1", -- [2]
				"~Einäscherung (1)", -- [3]
				9.1, -- [4]
				1035051, -- [5]
				"cdcount", -- [6]
				306111, -- [7]
				3, -- [8]
				"2368", -- [9]
				["id"] = 2329,
			},
			["317292"] = {
				"317292", -- [1]
				"Timer317292cast", -- [2]
				"Kollabierende Gedankenwelt ", -- [3]
				20, -- [4]
				1386548, -- [5]
				"cast", -- [6]
				317292, -- [7]
				6, -- [8]
				"2375", -- [9]
				["id"] = 2344,
			},
			["194956"] = {
				"194956", -- [1]
				"Timer194956next", -- [2]
				"Seele ernten", -- [3]
				20, -- [4]
				237507, -- [5]
				"next", -- [6]
				194956, -- [7]
				5, -- [8]
				"1518", -- [9]
				["id"] = 1832,
			},
			["144400"] = {
				"144400", -- [1]
				"Timer144400nextcount	1", -- [2]
				"Wachsender Stolz (1)", -- [3]
				75.5, -- [4]
				895888, -- [5]
				"nextcount", -- [6]
				144400, -- [7]
				2, -- [8]
				"867", -- [9]
				["id"] = 1604,
			},
			["291613"] = {
				"291613", -- [1]
				"Timer291613cd", -- [2]
				"~Abflug!", -- [3]
				30.2, -- [4]
				133029, -- [5]
				"cd", -- [6]
				291613, -- [7]
				6, -- [8]
				"2331", -- [9]
				["id"] = 2260,
			},
			["285017"] = {
				"285017", -- [1]
				"Timer285017cd", -- [2]
				"~Zorn der Tiefe", -- [3]
				7, -- [4]
				135862, -- [5]
				"cd", -- [6]
				285017, -- [7]
				5, -- [8]
				"2337", -- [9]
				["id"] = 2280,
			},
			["285350"] = {
				"285350", -- [1]
				"Timer285350cd", -- [2]
				"~Sturmesheulen", -- [3]
				16.7, -- [4]
				136050, -- [5]
				"cd", -- [6]
				285350, -- [7]
				3, -- [8]
				"2337", -- [9]
				["id"] = 2280,
			},
			["257092"] = {
				"257092", -- [1]
				"Timer257092cd", -- [2]
				"~Sandfalle", -- [3]
				8.5, -- [4]
				796634, -- [5]
				"cd", -- [6]
				257092, -- [7]
				3, -- [8]
				"2097", -- [9]
				["id"] = 2101,
			},
			["292083"] = {
				"292083", -- [1]
				"Timer292083cast", -- [2]
				"Kavitation ", -- [3]
				32, -- [4]
				893777, -- [5]
				"cast", -- [6]
				292083, -- [7]
				4, -- [8]
				"2347", -- [9]
				["id"] = 2289,
			},
			["193051"] = {
				"193051", -- [1]
				"Timer193051next", -- [2]
				"Gezeiten rufen", -- [3]
				20, -- [4]
				135861, -- [5]
				"next", -- [6]
				193051, -- [7]
				2, -- [8]
				"1491", -- [9]
				["id"] = 1812,
			},
			["306448"] = {
				"306448", -- [1]
				"Timer306448nextcount	2", -- [2]
				"Umbralpanzer (2)", -- [3]
				20, -- [4]
				132291, -- [5]
				"nextcount", -- [6]
				306448, -- [7]
				2, -- [8]
				"2367", -- [9]
				["id"] = 2335,
			},
			["236072"] = {
				"236072", -- [1]
				"Timer236072nextcount	1", -- [2]
				"Klagende Seelen (1)", -- [3]
				59.4, -- [4]
				136194, -- [5]
				"nextcount", -- [6]
				236072, -- [7]
				2, -- [8]
				"1896", -- [9]
				["id"] = 2054,
			},
			["260333"] = {
				"260333", -- [1]
				"Timer260333cd", -- [2]
				"~Tobsuchtsanfall", -- [3]
				37.6, -- [4]
				1694232, -- [5]
				"cd", -- [6]
				260333, -- [7]
				2, -- [8]
				"2131", -- [9]
				["id"] = 2118,
			},
			["257316"] = {
				"257316", -- [1]
				"Timer257316cd", -- [2]
				"~Über die Planke!", -- [3]
				10.4, -- [4]
				463515, -- [5]
				"cd", -- [6]
				257316, -- [7]
				3, -- [8]
				"2095", -- [9]
				["id"] = 2096,
			},
			["266951"] = {
				"266951", -- [1]
				"Timer266951cd", -- [2]
				"~Durchstürmen", -- [3]
				23.1, -- [4]
				628134, -- [5]
				"cd", -- [6]
				266951, -- [7]
				3, -- [8]
				"2170", -- [9]
				["id"] = 2140,
			},
			["230920"] = {
				"230920", -- [1]
				"Timer230920cd", -- [2]
				"~Zehrender Hunger", -- [3]
				20, -- [4]
				237395, -- [5]
				"cd", -- [6]
				230920, -- [7]
				1, -- [8]
				"1861", -- [9]
				["id"] = 2037,
			},
			["265923"] = {
				"265923", -- [1]
				"Timer265923cd", -- [2]
				"~Ruf des Mammons", -- [3]
				41.2, -- [4]
				135950, -- [5]
				"cd", -- [6]
				265923, -- [7]
				3, -- [8]
				"2165", -- [9]
				["id"] = 2139,
			},
			["227697"] = {
				"227697", -- [1]
				"Timer227697next", -- [2]
				"Lichtspeer", -- [3]
				13, -- [4]
				136243, -- [5]
				"next", -- [6]
				227697, -- [7]
				3, -- [8]
				"1819", -- [9]
				["id"] = 1958,
			},
			["233062"] = {
				"233062", -- [1]
				"Timer233062next", -- [2]
				"Höllisches Brennen", -- [3]
				54, -- [4]
				135802, -- [5]
				"next", -- [6]
				233062, -- [7]
				2, -- [8]
				"1862", -- [9]
				["id"] = 2032,
			},
			["297254"] = {
				"297254", -- [1]
				"Timer297254next", -- [2]
				"Geladenes Schmettern", -- [3]
				24.7, -- [4]
				132314, -- [5]
				"next", -- [6]
				297254, -- [7]
				5, -- [8]
				"2357", -- [9]
				["id"] = 2290,
			},
			["194966"] = {
				"194966", -- [1]
				"Timer194966next", -- [2]
				"Seelenechos", -- [3]
				15.5, -- [4]
				463284, -- [5]
				"next", -- [6]
				194966, -- [7]
				3, -- [8]
				"1518", -- [9]
				["id"] = 1832,
			},
			["200404"] = {
				"200404", -- [1]
				"Timer200404cd", -- [2]
				"~Magmawelle", -- [3]
				65, -- [4]
				237583, -- [5]
				"cd", -- [6]
				200404, -- [7]
				2, -- [8]
				"1687", -- [9]
				["id"] = 1793,
			},
			["308157"] = {
				"308157", -- [1]
				"Timer308157next", -- [2]
				"Umbraleruption", -- [3]
				10, -- [4]
				136201, -- [5]
				"next", -- [6]
				308157, -- [7]
				3, -- [8]
				"2367", -- [9]
				["id"] = 2335,
			},
			["272457"] = {
				"272457", -- [1]
				"Timer272457cd", -- [2]
				"~Schockwelle", -- [3]
				10, -- [4]
				451165, -- [5]
				"cd", -- [6]
				272457, -- [7]
				5, -- [8]
				"2130", -- [9]
				["id"] = 2112,
			},
			["228390"] = {
				"228390", -- [1]
				"Timer228390cd	Creature-0-1463-1648-25771-114709-00001A0D5D", -- [2]
				"~Schlicknova", -- [3]
				17.5, -- [4]
				1500940, -- [5]
				"cd", -- [6]
				228390, -- [7]
				2, -- [8]
				"1829", -- [9]
				["id"] = 2008,
			},
			["106877"] = {
				"106877", -- [1]
				"Timer106877next", -- [2]
				"Sha-Dorn", -- [3]
				9, -- [4]
				628268, -- [5]
				"next", -- [6]
				106877, -- [7]
				0, -- [8]
				"685", -- [9]
				["id"] = 1305,
			},
			["306973"] = {
				"306973", -- [1]
				"Timer306973cdcount	1", -- [2]
				"~Eruption des Wahnsinns (1)", -- [3]
				5.8, -- [4]
				136173, -- [5]
				"cdcount", -- [6]
				306973, -- [7]
				3, -- [8]
				"2366", -- [9]
				["id"] = 2337,
			},
			["313652"] = {
				"313652", -- [1]
				"Timer313652nextcount	1", -- [2]
				"Nova (1)", -- [3]
				15.9, -- [4]
				348565, -- [5]
				"nextcount", -- [6]
				313652, -- [7]
				4, -- [8]
				"2372", -- [9]
				["id"] = 2333,
			},
			["296944"] = {
				"296944", -- [1]
				"Timer296944cdcount	1", -- [2]
				"~Überspringendes Azerit (1)", -- [3]
				20.5, -- [4]
				2065558, -- [5]
				"cdcount", -- [6]
				296944, -- [7]
				3, -- [8]
				"2354", -- [9]
				["id"] = 2304,
			},
			["107140"] = {
				"107140", -- [1]
				"Timer107140cd", -- [2]
				"~Magnethülle", -- [3]
				20, -- [4]
				132488, -- [5]
				"cd", -- [6]
				107140, -- [7]
				0, -- [8]
				"673", -- [9]
				["id"] = 1303,
			},
			["257617"] = {
				"257617", -- [1]
				"Timer257617cd", -- [2]
				"~Emporstoßen", -- [3]
				20.5, -- [4]
				136025, -- [5]
				"cd", -- [6]
				257617, -- [7]
				3, -- [8]
				"2097", -- [9]
				["id"] = 2101,
			},
			["307201"] = {
				"307201", -- [1]
				"Timer307201next", -- [2]
				"Ka'zirs Schwarmbewusstseinskontrolle", -- [3]
				98.7, -- [4]
				2914898, -- [5]
				"next", -- [6]
				307201, -- [7]
				6, -- [8]
				"2372", -- [9]
				["id"] = 2333,
			},
			["313184"] = {
				"313184", -- [1]
				"Timer313184active", -- [2]
				"Synaptischer Schock endet", -- [3]
				30, -- [4]
				237552, -- [5]
				"active", -- [6]
				313184, -- [7]
				5, -- [8]
				"2375", -- [9]
				["id"] = 2344,
			},
			["307569"] = {
				"307569", -- [1]
				"Timer307569next", -- [2]
				"Dunkle Rekonstitution", -- [3]
				10, -- [4]
				2433897, -- [5]
				"next", -- [6]
				307569, -- [7]
				5, -- [8]
				"2372", -- [9]
				["id"] = 2333,
			},
			["308903"] = {
				"308903", -- [1]
				"Timer308903cdcount", -- [2]
				"~Finstere Manifestation (unbekannt", -- [3]
				12, -- [4]
				136221, -- [5]
				"cdcount", -- [6]
				308903, -- [7]
				1, -- [8]
				"2365", -- [9]
				["id"] = 2327,
			},
			["267618"] = {
				"267618", -- [1]
				"Timer267618cd", -- [2]
				"~Flüssigkeiten entziehen", -- [3]
				17.6, -- [4]
				463570, -- [5]
				"cd", -- [6]
				267618, -- [7]
				3, -- [8]
				"2171", -- [9]
				["id"] = 2142,
			},
			["294954"] = {
				"294954", -- [1]
				"Timer294954cd", -- [2]
				"~Selbststutzende Hecke", -- [3]
				3.4, -- [4]
				134427, -- [5]
				"cd", -- [6]
				294954, -- [7]
				3, -- [8]
				"2348", -- [9]
				["id"] = 2259,
			},
			["265773"] = {
				"265773", -- [1]
				"Timer265773cd	1", -- [2]
				"~Gold speien", -- [3]
				8.3, -- [4]
				646669, -- [5]
				"cd", -- [6]
				265773, -- [7]
				3, -- [8]
				"2165", -- [9]
				["id"] = 2139,
			},
			["297835"] = {
				"297835", -- [1]
				"Timer297835cd", -- [2]
				"~Vereinigen", -- [3]
				20.6, -- [4]
				840190, -- [5]
				"cd", -- [6]
				297835, -- [7]
				3, -- [8]
				"2358", -- [9]
				["id"] = 2292,
			},
			["264560"] = {
				"264560", -- [1]
				"Timer264560cd", -- [2]
				"~Erstickendes Meerwasser", -- [3]
				10.5, -- [4]
				893779, -- [5]
				"cd", -- [6]
				264560, -- [7]
				5, -- [8]
				"2153", -- [9]
				["id"] = 2130,
			},
			["204658"] = {
				"204658", -- [1]
				"Timer204658cd", -- [2]
				"~Zerquetschender Griff", -- [3]
				29, -- [4]
				236316, -- [5]
				"cd", -- [6]
				204658, -- [7]
				3, -- [8]
				"1655", -- [9]
				["id"] = 1837,
			},
			["286558"] = {
				"286558", -- [1]
				"Timer286558cd", -- [2]
				"~Gezeitenhülle", -- [3]
				36.5, -- [4]
				132315, -- [5]
				"cd", -- [6]
				286558, -- [7]
				4, -- [8]
				"2337", -- [9]
				["id"] = 2280,
			},
			["70946"] = {
				"70946", -- [1]
				"Timer70946next", -- [2]
				"Vampirbiss", -- [3]
				15, -- [4]
				134298, -- [5]
				"next", -- [6]
				70946, -- [7]
				5, -- [8]
				"Lanathel", -- [9]
				["id"] = 1103,
			},
			["287995"] = {
				"287995", -- [1]
				"Timer287995cd", -- [2]
				"~Elektrische Umhüllung", -- [3]
				34, -- [4]
				136051, -- [5]
				"cd", -- [6]
				287995, -- [7]
				4, -- [8]
				"2337", -- [9]
				["id"] = 2280,
			},
			["227967"] = {
				"227967", -- [1]
				"Timer227967nextcount	1", -- [2]
				"Atem (1)", -- [3]
				13.3, -- [4]
				132104, -- [5]
				"nextcount", -- [6]
				227967, -- [7]
				5, -- [8]
				"1829", -- [9]
				["id"] = 2008,
			},
			["285454"] = {
				"285454", -- [1]
				"Timer285454next", -- [2]
				"Diskom-BOMB-ulator", -- [3]
				8.3, -- [4]
				1778228, -- [5]
				"next", -- [6]
				285454, -- [7]
				3, -- [8]
				"2348", -- [9]
				["id"] = 2259,
			},
			["228003"] = {
				"228003", -- [1]
				"Timer228003next", -- [2]
				"Tanzende Klinge", -- [3]
				20, -- [4]
				135408, -- [5]
				"next", -- [6]
				228003, -- [7]
				3, -- [8]
				"1819", -- [9]
				["id"] = 1958,
			},
			["256105"] = {
				"256105", -- [1]
				"Timer256105cd", -- [2]
				"~Explosive Eruption", -- [3]
				11.5, -- [4]
				878211, -- [5]
				"cd", -- [6]
				256105, -- [7]
				3, -- [8]
				"2096", -- [9]
				["id"] = 2104,
			},
			["232249"] = {
				"232249", -- [1]
				"Timer232249cd", -- [2]
				"~Krachender Komet", -- [3]
				8.5, -- [4]
				135797, -- [5]
				"cd", -- [6]
				232249, -- [7]
				3, -- [8]
				"1862", -- [9]
				["id"] = 2032,
			},
			["232913"] = {
				"232913", -- [1]
				"Timer232913cd", -- [2]
				"~Besudelnde Tinte", -- [3]
				11.6, -- [4]
				1500933, -- [5]
				"cd", -- [6]
				232913, -- [7]
				3, -- [8]
				"1861", -- [9]
				["id"] = 2037,
			},
			["230358"] = {
				"230358", -- [1]
				"Timer230358cd", -- [2]
				"~Donnernder Schock", -- [3]
				10, -- [4]
				839974, -- [5]
				"cd", -- [6]
				230358, -- [7]
				3, -- [8]
				"1861", -- [9]
				["id"] = 2037,
			},
			["271784"] = {
				"271784", -- [1]
				"Timer271784cd", -- [2]
				"~Münzen werfen", -- [3]
				18, -- [4]
				237281, -- [5]
				"cd", -- [6]
				271784, -- [7]
				3, -- [8]
				"2109", -- [9]
				["id"] = 2105,
			},
			["310184"] = {
				"310184", -- [1]
				"Timer310184next2", -- [2]
				"Schleichende Seelenpein", -- [3]
				12, -- [4]
				136195, -- [5]
				"next", -- [6]
				310184, -- [7]
				5, -- [8]
				"2375", -- [9]
				["id"] = 2344,
			},
			["308872"] = {
				"308872", -- [1]
				"Timer308872nextcount	1	Creature-0-1469-2217-32516-156650-00005037D9", -- [2]
				"Dunkle Opfergabe (1)", -- [3]
				10, -- [4]
				615099, -- [5]
				"nextcount", -- [6]
				308872, -- [7]
				5, -- [8]
				"2365", -- [9]
				["id"] = 2327,
			},
			["250368"] = {
				"250368", -- [1]
				"Timer250368cd", -- [2]
				"~Toxischer Gestank", -- [3]
				6, -- [4]
				132108, -- [5]
				"cd", -- [6]
				250368, -- [7]
				4, -- [8]
				"2036", -- [9]
				["id"] = 2085,
			},
			["234621"] = {
				"234621", -- [1]
				"Timer234621cdcount	1", -- [2]
				"~Verschlingender Schlund (1)", -- [3]
				40, -- [4]
				463487, -- [5]
				"cdcount", -- [6]
				234621, -- [7]
				3, -- [8]
				"1861", -- [9]
				["id"] = 2037,
			},
			["101927"] = {
				"101927", -- [1]
				"Timer101927cd", -- [2]
				"~Flammenkern", -- [3]
				16, -- [4]
				451164, -- [5]
				"cd", -- [6]
				101927, -- [7]
				5, -- [8]
				"285", -- [9]
				["id"] = 1883,
			},
			["70341"] = {
				"70341", -- [1]
				"Timer70341cd", -- [2]
				"~Schleimpfütze", -- [3]
				10, -- [4]
				132104, -- [5]
				"cd", -- [6]
				70341, -- [7]
				5, -- [8]
				"Putricide", -- [9]
				["id"] = 1102,
			},
			["298946"] = {
				"298946", -- [1]
				"Timer298946cd", -- [2]
				"~Das Gesetz der Straße", -- [3]
				31.6, -- [4]
				1887733, -- [5]
				"cd", -- [6]
				298946, -- [7]
				3, -- [8]
				"2360", -- [9]
				["id"] = 2312,
			},
			["32358"] = {
				"32358", -- [1]
				"Timer32358active", -- [2]
				"Dunkle Hülle endet", -- [3]
				7, -- [4]
				136121, -- [5]
				"active", -- [6]
				32358, -- [7]
				5, -- [8]
				"534", -- [9]
				["id"] = 1900,
			},
			["296725"] = {
				"296725", -- [1]
				"Timer296725cdcount	1", -- [2]
				"~Seepockenschlag (1)", -- [3]
				8, -- [4]
				1498835, -- [5]
				"cdcount", -- [6]
				296725, -- [7]
				5, -- [8]
				"2354", -- [9]
				["id"] = 2304,
			},
			["249923"] = {
				"249923", -- [1]
				"Timer249923cd", -- [2]
				"~Seelenzerfetzer", -- [3]
				10, -- [4]
				1354410, -- [5]
				"cd", -- [6]
				249923, -- [7]
				3, -- [8]
				"2030", -- [9]
				["id"] = 2087,
			},
			["285440"] = {
				"285440", -- [1]
				"Timer285440cd", -- [2]
				"~\"Versteckte\" Flammenkanone", -- [3]
				13.1, -- [4]
				524795, -- [5]
				"cd", -- [6]
				285440, -- [7]
				2, -- [8]
				"2348", -- [9]
				["id"] = 2259,
			},
			["266181"] = {
				"266181", -- [1]
				"Timer266181cd", -- [2]
				"~Schreckensessenz", -- [3]
				25, -- [4]
				1778230, -- [5]
				"cd", -- [6]
				266181, -- [7]
				2, -- [8]
				"2129", -- [9]
				["id"] = 2117,
			},
			["144359"] = {
				"144359", -- [1]
				"Timer144359next", -- [2]
				"Gabe der Titanen", -- [3]
				7.5, -- [4]
				254117, -- [5]
				"next", -- [6]
				144359, -- [7]
				3, -- [8]
				"867", -- [9]
				["id"] = 1604,
			},
			["291972"] = {
				"291972", -- [1]
				"Timer291972cd", -- [2]
				"~Explosiver Sprung", -- [3]
				38.6, -- [4]
				1029718, -- [5]
				"cd", -- [6]
				291972, -- [7]
				3, -- [8]
				"2339", -- [9]
				["id"] = 2258,
			},
			["268306"] = {
				"268306", -- [1]
				"Timer268306cd", -- [2]
				"~Disharmonisches Solo", -- [3]
				15.5, -- [4]
				463569, -- [5]
				"cd", -- [6]
				268306, -- [7]
				3, -- [8]
				"2128", -- [9]
				["id"] = 2116,
			},
			["119981"] = {
				"119981", -- [1]
				"Timer119981cd", -- [2]
				"~Wirbelnder Derwisch", -- [3]
				22, -- [4]
				132845, -- [5]
				"cd", -- [6]
				119981, -- [7]
				0, -- [8]
				"708", -- [9]
				["id"] = 1442,
			},
			["19492"] = {
				"19492", -- [1]
				"Timer19492cd", -- [2]
				"~Antimagiepuls", -- [3]
				10, -- [4]
				135894, -- [5]
				"cd", -- [6]
				19492, -- [7]
				2, -- [8]
				"Garr-Classic", -- [9]
				["id"] = 666,
			},
			["260907"] = {
				"260907", -- [1]
				"Timer260907next", -- [2]
				"Seelenmanipulation", -- [3]
				11.3, -- [4]
				892448, -- [5]
				"next", -- [6]
				260907, -- [7]
				3, -- [8]
				"2125", -- [9]
				["id"] = 2113,
			},
			["92265"] = {
				"92265", -- [1]
				"Timer92265active", -- [2]
				"Kristallsturm endet", -- [3]
				8.5, -- [4]
				132774, -- [5]
				"active", -- [6]
				92265, -- [7]
				2, -- [8]
				"111", -- [9]
				["id"] = 1059,
			},
			["268586"] = {
				"268586", -- [1]
				"Timer268586cd", -- [2]
				"~Klingenkata", -- [3]
				18, -- [4]
				1035036, -- [5]
				"cd", -- [6]
				268586, -- [7]
				5, -- [8]
				"2172", -- [9]
				["id"] = 2143,
			},
			["198820"] = {
				"198820", -- [1]
				"Timer198820cd", -- [2]
				"~Dunkler Schlag", -- [3]
				10, -- [4]
				136141, -- [5]
				"cd", -- [6]
				198820, -- [7]
				3, -- [8]
				"1672", -- [9]
				["id"] = 1835,
			},
			["272884"] = {
				"272884", -- [1]
				"Timer272884next", -- [2]
				"Angezapftes Fass", -- [3]
				12.2, -- [4]
				132621, -- [5]
				"next", -- [6]
				272884, -- [7]
				5, -- [8]
				"2093", -- [9]
				["id"] = 2094,
			},
			["107268"] = {
				"107268", -- [1]
				"Timer107268target	Kinderjoint-Aegwynn", -- [2]
				"Sabotage: Kinderjoint-Aegwynn", -- [3]
				5, -- [4]
				133713, -- [5]
				"target", -- [6]
				107268, -- [7]
				0, -- [8]
				"655", -- [9]
				["id"] = 1397,
			},
			["234107"] = {
				"234107", -- [1]
				"Timer234107cd", -- [2]
				"~Chaotische Energie", -- [3]
				32.5, -- [4]
				135799, -- [5]
				"cd", -- [6]
				234107, -- [7]
				2, -- [8]
				"1904", -- [9]
				["id"] = 2053,
			},
			["295346"] = {
				"295346", -- [1]
				"Timer295346cd", -- [2]
				"~Ausbruch", -- [3]
				15.7, -- [4]
				1357798, -- [5]
				"cd", -- [6]
				295346, -- [7]
				3, -- [8]
				"2352", -- [9]
				["id"] = 2298,
			},
			["239132"] = {
				"239132", -- [1]
				"Timer239132cdcount	1", -- [2]
				"~Realitätsfraktur (1)", -- [3]
				31, -- [4]
				135801, -- [5]
				"cdcount", -- [6]
				239132, -- [7]
				2, -- [8]
				"1873", -- [9]
				["id"] = 2038,
			},
			["232192"] = {
				"232192", -- [1]
				"Timer232192next", -- [2]
				"Befehlsgebrüll", -- [3]
				17.3, -- [4]
				642418, -- [5]
				"next", -- [6]
				232192, -- [7]
				1, -- [8]
				"1856", -- [9]
				["id"] = 2036,
			},
			["310003"] = {
				"310003", -- [1]
				"Timer310003cdcount	1", -- [2]
				"~Leereneruption (1)", -- [3]
				22.1, -- [4]
				537022, -- [5]
				"cdcount", -- [6]
				310003, -- [7]
				2, -- [8]
				"2364", -- [9]
				["id"] = 2331,
			},
			["198079"] = {
				"198079", -- [1]
				"Timer198079cd", -- [2]
				"~Hasserfüllter Blick", -- [3]
				5, -- [4]
				132284, -- [5]
				"cd", -- [6]
				198079, -- [7]
				3, -- [8]
				"1664", -- [9]
				["id"] = 1834,
			},
			["310406"] = {
				"310406", -- [1]
				"Timer310406cd", -- [2]
				"~Leerenblick", -- [3]
				45.2, -- [4]
				136215, -- [5]
				"cd", -- [6]
				310406, -- [7]
				3, -- [8]
				"2373", -- [9]
				["id"] = 2343,
			},
			["69279"] = {
				"69279", -- [1]
				"Timer69279next", -- [2]
				"Gasspore", -- [3]
				20, -- [4]
				136134, -- [5]
				"next", -- [6]
				69279, -- [7]
				3, -- [8]
				"Festergut", -- [9]
				["id"] = 1097,
			},
			["307057"] = {
				"307057", -- [1]
				"Timer307057cdcount	1", -- [2]
				"~Dunkler Durchgang (1)", -- [3]
				32.9, -- [4]
				136194, -- [5]
				"cdcount", -- [6]
				307057, -- [7]
				1, -- [8]
				"2370", -- [9]
				["id"] = 2336,
			},
			["239785"] = {
				"239785", -- [1]
				"Timer239785cdcount	1", -- [2]
				"~Dämonischer Obelisk (1)", -- [3]
				25, -- [4]
				135799, -- [5]
				"cdcount", -- [6]
				239785, -- [7]
				3, -- [8]
				"1898", -- [9]
				["id"] = 2051,
			},
			["307805"] = {
				"307805", -- [1]
				"Timer307805cd", -- [2]
				"~Magie verschlingen", -- [3]
				11.5, -- [4]
				3086045, -- [5]
				"cd", -- [6]
				307805, -- [7]
				3, -- [8]
				"2365", -- [9]
				["id"] = 2327,
			},
			["307314"] = {
				"307314", -- [1]
				"Timer307314cd", -- [2]
				"~Wuchernde Schatten", -- [3]
				14.8, -- [4]
				132886, -- [5]
				"cd", -- [6]
				307314, -- [7]
				3, -- [8]
				"2370", -- [9]
				["id"] = 2336,
			},
			["236596"] = {
				"236596", -- [1]
				"Timer236596cd", -- [2]
				"~Flinkschuss", -- [3]
				15.8, -- [4]
				1035040, -- [5]
				"cd", -- [6]
				236596, -- [7]
				3, -- [8]
				"1903", -- [9]
				["id"] = 2050,
			},
			["106923"] = {
				"106923", -- [1]
				"Timer106923next", -- [2]
				"Statisches Feld", -- [3]
				18, -- [4]
				136050, -- [5]
				"next", -- [6]
				106923, -- [7]
				3, -- [8]
				"673", -- [9]
				["id"] = 1303,
			},
			["237276"] = {
				"237276", -- [1]
				"Timer237276cd", -- [2]
				"~Pulverisierender Knüppel", -- [3]
				6, -- [4]
				132340, -- [5]
				"cd", -- [6]
				237276, -- [7]
				2, -- [8]
				"1906", -- [9]
				["id"] = 2057,
			},
			["236442"] = {
				"236442", -- [1]
				"Timer236442cd", -- [2]
				"~Zwielichtsalve", -- [3]
				15.5, -- [4]
				1391677, -- [5]
				"cd", -- [6]
				236442, -- [7]
				2, -- [8]
				"1903", -- [9]
				["id"] = 2050,
			},
			["233963"] = {
				"233963", -- [1]
				"Timer233963cd", -- [2]
				"~Dämonischer Aufruhr", -- [3]
				3.2, -- [4]
				1118739, -- [5]
				"cd", -- [6]
				233963, -- [7]
				3, -- [8]
				"1878", -- [9]
				["id"] = 2039,
			},
			["257495"] = {
				"257495", -- [1]
				"Timer257495cd", -- [2]
				"~Sandsturm", -- [3]
				30.3, -- [4]
				796638, -- [5]
				"cd", -- [6]
				257495, -- [7]
				2, -- [8]
				"2097", -- [9]
				["id"] = 2101,
			},
			["101348"] = {
				"101348", -- [1]
				"Timer101348next", -- [2]
				"Opferung", -- [3]
				30, -- [4]
				136202, -- [5]
				"next", -- [6]
				101348, -- [7]
				3, -- [8]
				"323", -- [9]
				["id"] = 1882,
			},
			["268896"] = {
				"268896", -- [1]
				"Timer268896cd", -- [2]
				"~Gedankenwunde", -- [3]
				16, -- [4]
				136125, -- [5]
				"cd", -- [6]
				268896, -- [7]
				3, -- [8]
				"2155", -- [9]
				["id"] = 2132,
			},
			["311401"] = {
				"311401", -- [1]
				"Timer311401cdcount	1", -- [2]
				"~Berührung des Verderbers (1)", -- [3]
				50.7, -- [4]
				1413868, -- [5]
				"cdcount", -- [6]
				311401, -- [7]
				3, -- [8]
				"2374", -- [9]
				["id"] = 2345,
			},
			["250258"] = {
				"250258", -- [1]
				"Timer250258cd", -- [2]
				"~Toxischer Sprung", -- [3]
				2, -- [4]
				132301, -- [5]
				"cd", -- [6]
				250258, -- [7]
				3, -- [8]
				"2036", -- [9]
				["id"] = 2085,
			},
			["32361"] = {
				"32361", -- [1]
				"Timer32361target	Zoraia-Antonidas", -- [2]
				"Kristallgefängnis: Zoraia-Antonidas", -- [3]
				5, -- [4]
				135988, -- [5]
				"target", -- [6]
				32361, -- [7]
				3, -- [8]
				"535", -- [9]
				["id"] = 1901,
			},
			["ej20546"] = {
				"ej20546", -- [1]
				"Timerej20546next", -- [2]
				"Knisternder Pirscher", -- [3]
				5.8, -- [4]
				237587, -- [5]
				"next", -- [6]
				"ej20546", -- [7]
				1, -- [8]
				"2364", -- [9]
				["id"] = 2331,
			},
			["269369"] = {
				"269369", -- [1]
				"Timer269369cd", -- [2]
				"~Tödliches Brüllen", -- [3]
				8, -- [4]
				236175, -- [5]
				"cd", -- [6]
				269369, -- [7]
				2, -- [8]
				"2172", -- [9]
				["id"] = 2143,
			},
			["310319"] = {
				"310319", -- [1]
				"Timer310319cdcount	1", -- [2]
				"~Strahl (1)", -- [3]
				12.2, -- [4]
				236407, -- [5]
				"cdcount", -- [6]
				310319, -- [7]
				3, -- [8]
				"2374", -- [9]
				["id"] = 2345,
			},
			["69076"] = {
				"69076", -- [1]
				"Timer69076cd", -- [2]
				"~Knochensturm", -- [3]
				45, -- [4]
				132119, -- [5]
				"cd", -- [6]
				69076, -- [7]
				2, -- [8]
				"LordMarrowgar", -- [9]
				["id"] = 1101,
			},
			["256083"] = {
				"256083", -- [1]
				"Timer256083cd", -- [2]
				"~Kreuzzündung", -- [3]
				16, -- [4]
				460952, -- [5]
				"cd", -- [6]
				256083, -- [7]
				2, -- [8]
				"2096", -- [9]
				["id"] = 2104,
			},
			["234817"] = {
				"234817", -- [1]
				"Timer234817cd", -- [2]
				"~Düstere Einsamkeit", -- [3]
				8.1, -- [4]
				458229, -- [5]
				"cd", -- [6]
				234817, -- [7]
				3, -- [8]
				"1878", -- [9]
				["id"] = 2039,
			},
			["307359"] = {
				"307359", -- [1]
				"Timer307359cd", -- [2]
				"~Verzweiflung", -- [3]
				10.1, -- [4]
				237552, -- [5]
				"cd", -- [6]
				307359, -- [7]
				5, -- [8]
				"2370", -- [9]
				["id"] = 2336,
			},
			["ej5973"] = {
				"ej5973", -- [1]
				"Timerej5973cd", -- [2]
				"~Kreis der Flamme", -- [3]
				8, -- [4]
				236216, -- [5]
				"cd", -- [6]
				"ej5973", -- [7]
				3, -- [8]
				"698", -- [9]
				["id"] = 1441,
			},
			["295332"] = {
				"295332", -- [1]
				"Timer295332cd", -- [2]
				"~Vernichtender Widerhall", -- [3]
				10.6, -- [4]
				136025, -- [5]
				"cd", -- [6]
				295332, -- [7]
				5, -- [8]
				"2352", -- [9]
				["id"] = 2298,
			},
			["71266"] = {
				"71266", -- [1]
				"Timer71266next", -- [2]
				"Schwärmende Schatten", -- [3]
				30.5, -- [4]
				236279, -- [5]
				"next", -- [6]
				71266, -- [7]
				3, -- [8]
				"Lanathel", -- [9]
				["id"] = 1103,
			},
			["263345"] = {
				"263345", -- [1]
				"Timer263345cd", -- [2]
				"~Gewaltiger Schuss", -- [3]
				17, -- [4]
				1373903, -- [5]
				"cd", -- [6]
				263345, -- [7]
				3, -- [8]
				"2096", -- [9]
				["id"] = 2104,
			},
			["269493"] = {
				"269493", -- [1]
				"Timer269493cd", -- [2]
				"~Fußbombenwerfer", -- [3]
				9.4, -- [4]
				660531, -- [5]
				"cd", -- [6]
				269493, -- [7]
				5, -- [8]
				"2109", -- [9]
				["id"] = 2105,
			},
			["294853"] = {
				"294853", -- [1]
				"Timer294853cd", -- [2]
				"~Pflanze aktivieren", -- [3]
				5.9, -- [4]
				136243, -- [5]
				"cd", -- [6]
				294853, -- [7]
				1, -- [8]
				"2348", -- [9]
				["id"] = 2259,
			},
			["259853"] = {
				"259853", -- [1]
				"Timer259853cd2", -- [2]
				"~Verätzung", -- [3]
				12, -- [4]
				132100, -- [5]
				"cd", -- [6]
				259853, -- [7]
				5, -- [8]
				"2115", -- [9]
				["id"] = 2107,
			},
			["200551"] = {
				"200551", -- [1]
				"Timer200551cd", -- [2]
				"~Kristallstacheln", -- [3]
				21.5, -- [4]
				132780, -- [5]
				"cd", -- [6]
				200551, -- [7]
				3, -- [8]
				"1687", -- [9]
				["id"] = 1793,
			},
			["197556"] = {
				"197556", -- [1]
				"Timer197556cd", -- [2]
				"~Gieriger Sprung", -- [3]
				12, -- [4]
				1029718, -- [5]
				"cd", -- [6]
				197556, -- [7]
				3, -- [8]
				"1487", -- [9]
				["id"] = 1807,
			},
			["256405"] = {
				"256405", -- [1]
				"Timer256405cd", -- [2]
				"~Haitornado", -- [3]
				20.4, -- [4]
				463487, -- [5]
				"cd", -- [6]
				256405, -- [7]
				3, -- [8]
				"2094", -- [9]
				["id"] = 2095,
			},
			["196346"] = {
				"196346", -- [1]
				"Timer196346cd", -- [2]
				"~Schmerzhafter Sprung", -- [3]
				5.9, -- [4]
				132133, -- [5]
				"cd", -- [6]
				196346, -- [7]
				3, -- [8]
				"1654", -- [9]
				["id"] = 1836,
			},
			["236712"] = {
				"236712", -- [1]
				"Timer236712cd", -- [2]
				"~Lunarleuchtfeuer", -- [3]
				18, -- [4]
				429383, -- [5]
				"cd", -- [6]
				236712, -- [7]
				3, -- [8]
				"1903", -- [9]
				["id"] = 2050,
			},
			["119684"] = {
				"119684", -- [1]
				"Timer119684cd", -- [2]
				"~Erde erschüttern", -- [3]
				9.5, -- [4]
				451165, -- [5]
				"cd", -- [6]
				119684, -- [7]
				3, -- [8]
				"698", -- [9]
				["id"] = 1441,
			},
			["264605"] = {
				"264605", -- [1]
				"Timer264605next", -- [2]
				"Bedienen", -- [3]
				8, -- [4]
				644384, -- [5]
				"next", -- [6]
				264605, -- [7]
				3, -- [8]
				"2093", -- [9]
				["id"] = 2094,
			},
			["306874"] = {
				"306874", -- [1]
				"Timer306874cd	Creature-0-3892-2217-11058-157365-000052DF99", -- [2]
				"~Kettenblitzschlag", -- [3]
				4.8, -- [4]
				135990, -- [5]
				"cd", -- [6]
				306874, -- [7]
				3, -- [8]
				"2364", -- [9]
				["id"] = 2331,
			},
			["30496"] = {
				"30496", -- [1]
				"Timer30496next", -- [2]
				"Geringer Schattenspalt", -- [3]
				8.3, -- [4]
				136160, -- [5]
				"next", -- [6]
				30496, -- [7]
				3, -- [8]
				"566", -- [9]
				["id"] = 1936,
			},
			["188114"] = {
				"188114", -- [1]
				"Timer188114cd", -- [2]
				"~Zertrümmern", -- [3]
				20, -- [4]
				451165, -- [5]
				"cd", -- [6]
				188114, -- [7]
				2, -- [8]
				"1662", -- [9]
				["id"] = 1790,
			},
			["295791"] = {
				"295791", -- [1]
				"Timer295791cd", -- [2]
				"~Inversion", -- [3]
				70, -- [4]
				413591, -- [5]
				"cd", -- [6]
				295791, -- [7]
				2, -- [8]
				"2352", -- [9]
				["id"] = 2298,
			},
			["260741"] = {
				"260741", -- [1]
				"Timer260741next", -- [2]
				"Spitze Nesseln", -- [3]
				13.3, -- [4]
				959837, -- [5]
				"next", -- [6]
				260741, -- [7]
				5, -- [8]
				"2125", -- [9]
				["id"] = 2113,
			},
			["227807"] = {
				"227807", -- [1]
				"Timer227807next", -- [2]
				"Sturm der Gerechtigkeit", -- [3]
				4, -- [4]
				839983, -- [5]
				"next", -- [6]
				227807, -- [7]
				3, -- [8]
				"1819", -- [9]
				["id"] = 1958,
			},
			["265781"] = {
				"265781", -- [1]
				"Timer265781cd", -- [2]
				"~Schlangenböe", -- [3]
				13.1, -- [4]
				1029585, -- [5]
				"cd", -- [6]
				265781, -- [7]
				2, -- [8]
				"2165", -- [9]
				["id"] = 2139,
			},
			["294929"] = {
				"294929", -- [1]
				"Timer294929cd", -- [2]
				"~Lodernder Biss", -- [3]
				10.7, -- [4]
				1530249, -- [5]
				"cd", -- [6]
				294929, -- [7]
				5, -- [8]
				"2339", -- [9]
				["id"] = 2258,
			},
			["312336"] = {
				"312336", -- [1]
				"Timer312336nextcount	1", -- [2]
				"Leerenritual (1)", -- [3]
				61.8, -- [4]
				1728724, -- [5]
				"nextcount", -- [6]
				312336, -- [7]
				5, -- [8]
				"2377", -- [9]
				["id"] = 2328,
			},
			["257882"] = {
				"257882", -- [1]
				"Timer257882cd", -- [2]
				"~Wasserausbruch", -- [3]
				7.1, -- [4]
				135861, -- [5]
				"cd", -- [6]
				257882, -- [7]
				3, -- [8]
				"2134", -- [9]
				["id"] = 2099,
			},
			["198073"] = {
				"198073", -- [1]
				"Timer198073cd", -- [2]
				"~Erderschütterndes Stampfen", -- [3]
				12, -- [4]
				132368, -- [5]
				"cd", -- [6]
				198073, -- [7]
				2, -- [8]
				"1664", -- [9]
				["id"] = 1834,
			},
			["204574"] = {
				"204574", -- [1]
				"Timer204574cd", -- [2]
				"~Würgewurzeln", -- [3]
				12, -- [4]
				458176, -- [5]
				"cd", -- [6]
				204574, -- [7]
				3, -- [8]
				"1655", -- [9]
				["id"] = 1837,
			},
			["306319"] = {
				"306319", -- [1]
				"Timer306319cd", -- [2]
				"~Seelenschinden", -- [3]
				18.5, -- [4]
				1354410, -- [5]
				"cd", -- [6]
				306319, -- [7]
				3, -- [8]
				"2377", -- [9]
				["id"] = 2328,
			},
			["291930"] = {
				"291930", -- [1]
				"Timer291930next", -- [2]
				"Fallschirmabwurf", -- [3]
				7.2, -- [4]
				132763, -- [5]
				"next", -- [6]
				291930, -- [7]
				3, -- [8]
				"2339", -- [9]
				["id"] = 2258,
			},
			["264101"] = {
				"264101", -- [1]
				"Timer264101cd", -- [2]
				"~Anschwellender Ansturm", -- [3]
				17, -- [4]
				237590, -- [5]
				"cd", -- [6]
				264101, -- [7]
				3, -- [8]
				"2153", -- [9]
				["id"] = 2130,
			},
			["267299"] = {
				"267299", -- [1]
				"Timer267299next", -- [2]
				"Abgrund rufen", -- [3]
				5.5, -- [4]
				1305154, -- [5]
				"next", -- [6]
				267299, -- [7]
				5, -- [8]
				"2156", -- [9]
				["id"] = 2133,
			},
			["228028"] = {
				"228028", -- [1]
				"Timer228028next", -- [2]
				"Licht ausstoßen", -- [3]
				40, -- [4]
				237541, -- [5]
				"next", -- [6]
				228028, -- [7]
				3, -- [8]
				"1819", -- [9]
				["id"] = 1958,
			},
			["267533"] = {
				"267533", -- [1]
				"Timer267533cd", -- [2]
				"~Schnitterstrudel", -- [3]
				9.8, -- [4]
				1500963, -- [5]
				"cd", -- [6]
				267533, -- [7]
				3, -- [8]
				"2093", -- [9]
				["id"] = 2094,
			},
			["285388"] = {
				"285388", -- [1]
				"Timer285388cd", -- [2]
				"~Düsenstrahl", -- [3]
				22.8, -- [4]
				133407, -- [5]
				"cd", -- [6]
				285388, -- [7]
				2, -- [8]
				"2336", -- [9]
				["id"] = 2257,
			},
			["235267"] = {
				"235267", -- [1]
				"Timer235267nextcount	2", -- [2]
				"Masseninstabilität (2)", -- [3]
				5.9, -- [4]
				535593, -- [5]
				"nextcount", -- [6]
				235267, -- [7]
				3, -- [8]
				"1897", -- [9]
				["id"] = 2052,
			},
			["266237"] = {
				"266237", -- [1]
				"Timer266237cd", -- [2]
				"~Entkräftende Rückhand", -- [3]
				24.3, -- [4]
				134919, -- [5]
				"cd", -- [6]
				266237, -- [7]
				5, -- [8]
				"2170", -- [9]
				["id"] = 2140,
			},
			["298548"] = {
				"298548", -- [1]
				"Timer298548cast", -- [2]
				"Gewaltiger Inkubator ", -- [3]
				35, -- [4]
				1029747, -- [5]
				"cast", -- [6]
				298548, -- [7]
				4, -- [8]
				"2351", -- [9]
				["id"] = 2303,
			},
			["ej20549"] = {
				"ej20549", -- [1]
				"Timerej20549next", -- [2]
				"Leerenjäger", -- [3]
				6.9, -- [4]
				136221, -- [5]
				"next", -- [6]
				"ej20549", -- [7]
				1, -- [8]
				"2364", -- [9]
				["id"] = 2331,
			},
			["255952"] = {
				"255952", -- [1]
				"Timer255952cd", -- [2]
				"~Klar zum Entern", -- [3]
				4.7, -- [4]
				1716281, -- [5]
				"cd", -- [6]
				255952, -- [7]
				3, -- [8]
				"2102", -- [9]
				["id"] = 2093,
			},
			["71340"] = {
				"71340", -- [1]
				"Timer71340next", -- [2]
				"Pakt der Sinistren", -- [3]
				15, -- [4]
				136151, -- [5]
				"next", -- [6]
				71340, -- [7]
				3, -- [8]
				"Lanathel", -- [9]
				["id"] = 1103,
			},
			["144574"] = {
				"144574", -- [1]
				"Timer144574next", -- [2]
				"Verderbtes Gefängnis", -- [3]
				53, -- [4]
				895886, -- [5]
				"next", -- [6]
				144574, -- [7]
				3, -- [8]
				"867", -- [9]
				["id"] = 1604,
			},
			["112944"] = {
				"112944", -- [1]
				"Timer112944next", -- [2]
				"Karottenatem", -- [3]
				18, -- [4]
				134010, -- [5]
				"next", -- [6]
				112944, -- [7]
				0, -- [8]
				"669", -- [9]
				["id"] = 1413,
			},
			["201733"] = {
				"201733", -- [1]
				"Timer201733cd", -- [2]
				"~Stechender Schwarm", -- [3]
				9, -- [4]
				538518, -- [5]
				"cd", -- [6]
				201733, -- [7]
				3, -- [8]
				"1672", -- [9]
				["id"] = 1835,
			},
			["297985"] = {
				"297985", -- [1]
				"Timer297985cd", -- [2]
				"~Verspritzen", -- [3]
				8.7, -- [4]
				136016, -- [5]
				"cd", -- [6]
				297985, -- [7]
				3, -- [8]
				"2358", -- [9]
				["id"] = 2292,
			},
			["298465"] = {
				"298465", -- [1]
				"Timer298465cast	Creature-0-3111-2164-5530-153692-000011058A", -- [2]
				"Amniotische Spritzer ", -- [3]
				5, -- [4]
				136243, -- [5]
				"cast", -- [6]
				298465, -- [7]
				2, -- [8]
				"2351", -- [9]
				["id"] = 2303,
			},
			["19716"] = {
				"19716", -- [1]
				"Timer19716cd", -- [2]
				"~Gehennas' Fluch", -- [3]
				6, -- [4]
				136160, -- [5]
				"cd", -- [6]
				19716, -- [7]
				3, -- [8]
				"Gehennas", -- [9]
				["id"] = 665,
			},
			["237722"] = {
				"237722", -- [1]
				"Timer237722next", -- [2]
				"Rückstoß", -- [3]
				47, -- [4]
				236256, -- [5]
				"next", -- [6]
				237722, -- [7]
				6, -- [8]
				"1897", -- [9]
				["id"] = 2052,
			},
			["264144"] = {
				"264144", -- [1]
				"Timer264144cd", -- [2]
				"~Tiefensog", -- [3]
				30, -- [4]
				893778, -- [5]
				"cd", -- [6]
				264144, -- [7]
				3, -- [8]
				"2153", -- [9]
				["id"] = 2130,
			},
			["313239"] = {
				"313239", -- [1]
				"Timer313239cd", -- [2]
				"~Abbilder beschwören", -- [3]
				30.5, -- [4]
				136056, -- [5]
				"cd", -- [6]
				313239, -- [7]
				1, -- [8]
				"2369", -- [9]
				["id"] = 2334,
			},
			["192706"] = {
				"192706", -- [1]
				"Timer192706cd", -- [2]
				"~Arkane Bombe", -- [3]
				23, -- [4]
				132861, -- [5]
				"cd", -- [6]
				192706, -- [7]
				3, -- [8]
				"1492", -- [9]
				["id"] = 1814,
			},
			["295825"] = {
				"295825", -- [1]
				"Timer295825cdcount	1", -- [2]
				"~Überspringender Strom (1)", -- [3]
				41, -- [4]
				839977, -- [5]
				"cdcount", -- [6]
				295825, -- [7]
				3, -- [8]
				"2351", -- [9]
				["id"] = 2303,
			},
			["296430"] = {
				"296430", -- [1]
				"Timer296430nextcount	1", -- [2]
				"Arkanadoexplosion (1)", -- [3]
				6, -- [4]
				1020351, -- [5]
				"nextcount", -- [6]
				296430, -- [7]
				3, -- [8]
				"2353", -- [9]
				["id"] = 2305,
			},
			["282205"] = {
				"282205", -- [1]
				"Timer282205nextcount	1", -- [2]
				"Abschuss (1)", -- [3]
				37, -- [4]
				133031, -- [5]
				"nextcount", -- [6]
				282205, -- [7]
				2, -- [8]
				"2334", -- [9]
				["id"] = 2276,
			},
			["120195"] = {
				"120195", -- [1]
				"Timer120195next", -- [2]
				"Meteor", -- [3]
				42, -- [4]
				135821, -- [5]
				"next", -- [6]
				120195, -- [7]
				3, -- [8]
				"708", -- [9]
				["id"] = 1442,
			},
			["198077"] = {
				"198077", -- [1]
				"Timer198077cd", -- [2]
				"~Speere zertrümmern", -- [3]
				40, -- [4]
				612968, -- [5]
				"cd", -- [6]
				198077, -- [7]
				2, -- [8]
				"1489", -- [9]
				["id"] = 1809,
			},
			["111668"] = {
				"111668", -- [1]
				"Timer111668next", -- [2]
				"Rammender Kopfstoß", -- [3]
				33, -- [4]
				236195, -- [5]
				"next", -- [6]
				111668, -- [7]
				0, -- [8]
				"649", -- [9]
				["id"] = 1419,
			},
			["195254"] = {
				"195254", -- [1]
				"Timer195254cd", -- [2]
				"~Wirbelnde Sense", -- [3]
				8, -- [4]
				1060569, -- [5]
				"cd", -- [6]
				195254, -- [7]
				3, -- [8]
				"1518", -- [9]
				["id"] = 1832,
			},
			["256005"] = {
				"256005", -- [1]
				"Timer256005cd", -- [2]
				"~Übles Bombardement", -- [3]
				6.2, -- [4]
				1500941, -- [5]
				"cd", -- [6]
				256005, -- [7]
				3, -- [8]
				"2102", -- [9]
				["id"] = 2093,
			},
			["257028"] = {
				"257028", -- [1]
				"Timer257028cd", -- [2]
				"~Luntenzünder", -- [3]
				14.2, -- [4]
				132093, -- [5]
				"cd", -- [6]
				257028, -- [7]
				3, -- [8]
				"2099", -- [9]
				["id"] = 2103,
			},
			["268403"] = {
				"268403", -- [1]
				"Timer268403cd", -- [2]
				"~Sturmhieb", -- [3]
				8.4, -- [4]
				1029585, -- [5]
				"cd", -- [6]
				268403, -- [7]
				3, -- [8]
				"2172", -- [9]
				["id"] = 2143,
			},
			["308278"] = {
				"308278", -- [1]
				"Timer308278cd", -- [2]
				"~Verdunkelter Himmel", -- [3]
				4.9, -- [4]
				132323, -- [5]
				"cd", -- [6]
				308278, -- [7]
				3, -- [8]
				"d1993", -- [9]
				["id"] = 2338,
			},
			["193018"] = {
				"193018", -- [1]
				"Timer193018next", -- [2]
				"Gasige Blasen", -- [3]
				10, -- [4]
				893778, -- [5]
				"next", -- [6]
				193018, -- [7]
				3, -- [8]
				"1491", -- [9]
				["id"] = 1812,
			},
			["19703"] = {
				"19703", -- [1]
				"Timer19703cd", -- [2]
				"~Lucifrons Fluch", -- [3]
				12, -- [4]
				136123, -- [5]
				"cd", -- [6]
				19703, -- [7]
				3, -- [8]
				"Lucifron", -- [9]
				["id"] = 663,
			},
			["197546"] = {
				"197546", -- [1]
				"Timer197546cd", -- [2]
				"~Brutale Gleve", -- [3]
				5.5, -- [4]
				1138466, -- [5]
				"cd", -- [6]
				197546, -- [7]
				3, -- [8]
				"1653", -- [9]
				["id"] = 1833,
			},
			["310325"] = {
				"310325", -- [1]
				"Timer310325cd", -- [2]
				"~Verwüstung", -- [3]
				37.9, -- [4]
				425955, -- [5]
				"cd", -- [6]
				310325, -- [7]
				3, -- [8]
				"2370", -- [9]
				["id"] = 2336,
			},
			["267899"] = {
				"267899", -- [1]
				"Timer267899cd", -- [2]
				"~Hinderndes Spalten", -- [3]
				5.8, -- [4]
				460959, -- [5]
				"cd", -- [6]
				267899, -- [7]
				5, -- [8]
				"2154", -- [9]
				["id"] = 2131,
			},
			["264603"] = {
				"264603", -- [1]
				"Timer264603cd", -- [2]
				"~Blutspiegel", -- [3]
				15.8, -- [4]
				1726347, -- [5]
				"cd", -- [6]
				264603, -- [7]
				1, -- [8]
				"2157", -- [9]
				["id"] = 2111,
			},
			["111728"] = {
				"111728", -- [1]
				"Timer111728nextcount	1", -- [2]
				"Stampfen (1)", -- [3]
				20.5, -- [4]
				132368, -- [5]
				"nextcount", -- [6]
				111728, -- [7]
				2, -- [8]
				"649", -- [9]
				["id"] = 1419,
			},
			["314736"] = {
				"314736", -- [1]
				"Timer314736next", -- [2]
				"Schäumender Ausbruch", -- [3]
				10, -- [4]
				236271, -- [5]
				"next", -- [6]
				314736, -- [7]
				3, -- [8]
				"2367", -- [9]
				["id"] = 2335,
			},
			["228619"] = {
				"228619", -- [1]
				"Timer228619next	Creature-0-1463-1648-25771-114809-00001A0D5D", -- [2]
				"Laterne der Dunkelheit", -- [3]
				30, -- [4]
				134553, -- [5]
				"next", -- [6]
				228619, -- [7]
				2, -- [8]
				"1829", -- [9]
				["id"] = 2008,
			},
			["312868"] = {
				"312868", -- [1]
				"Timer312868nextcount	1", -- [2]
				"Regelmäßig Drohnen beschwören (1)", -- [3]
				21, -- [4]
				136243, -- [5]
				"nextcount", -- [6]
				312868, -- [7]
				1, -- [8]
				"2372", -- [9]
				["id"] = 2333,
			},
			["79351"] = {
				"79351", -- [1]
				"Timer79351target	Alirá", -- [2]
				"Machtgriff: Alirá", -- [3]
				5, -- [4]
				135732, -- [5]
				"target", -- [6]
				79351, -- [7]
				3, -- [8]
				"113", -- [9]
				["id"] = 1057,
			},
			["233264"] = {
				"233264", -- [1]
				"Timer233264nextcount", -- [2]
				"Umarmung der Finsternis (unbekannt", -- [3]
				54, -- [4]
				236152, -- [5]
				"nextcount", -- [6]
				233264, -- [7]
				5, -- [8]
				"1903", -- [9]
				["id"] = 2050,
			},
			["111723"] = {
				"111723", -- [1]
				"Timer111723next", -- [2]
				"Fixieren", -- [3]
				5.5, -- [4]
				136088, -- [5]
				"next", -- [6]
				111723, -- [7]
				3, -- [8]
				"649", -- [9]
				["id"] = 1419,
			},
			["69789"] = {
				"69789", -- [1]
				"Timer69789next", -- [2]
				"Schlammflut", -- [3]
				25, -- [4]
				136182, -- [5]
				"next", -- [6]
				69789, -- [7]
				0, -- [8]
				"Rotface", -- [9]
				["id"] = 1104,
			},
			["306995"] = {
				"306995", -- [1]
				"Timer306995next", -- [2]
				"Schall und Rauch", -- [3]
				155, -- [4]
				132331, -- [5]
				"next", -- [6]
				306995, -- [7]
				6, -- [8]
				"2368", -- [9]
				["id"] = 2329,
			},
			["265910"] = {
				"265910", -- [1]
				"Timer265910cd", -- [2]
				"~Schwanzhieb", -- [3]
				16.8, -- [4]
				132202, -- [5]
				"cd", -- [6]
				265910, -- [7]
				5, -- [8]
				"2165", -- [9]
				["id"] = 2139,
			},
			["106546"] = {
				"106546", -- [1]
				"Timer106546next", -- [2]
				"Aufblähen", -- [3]
				14.5, -- [4]
				135899, -- [5]
				"next", -- [6]
				106546, -- [7]
				3, -- [8]
				"670", -- [9]
				["id"] = 1414,
			},
			["258381"] = {
				"258381", -- [1]
				"Timer258381next", -- [2]
				"Kartätschenschuss", -- [3]
				7.4, -- [4]
				1773651, -- [5]
				"next", -- [6]
				258381, -- [7]
				3, -- [8]
				"2093", -- [9]
				["id"] = 2094,
			},
			["233055"] = {
				"233055", -- [1]
				"Timer233055cd", -- [2]
				"~Höllenstachel", -- [3]
				4, -- [4]
				1118739, -- [5]
				"cd", -- [6]
				233055, -- [7]
				3, -- [8]
				"1862", -- [9]
				["id"] = 2032,
			},
			["296894"] = {
				"296894", -- [1]
				"Timer296894nextcount	1", -- [2]
				"Entfesselte Macht (1)", -- [3]
				10, -- [4]
				135735, -- [5]
				"nextcount", -- [6]
				296894, -- [7]
				2, -- [8]
				"2353", -- [9]
				["id"] = 2305,
			},
			["ej20565"] = {
				"ej20565", -- [1]
				"Timerej20565cdcount	1", -- [2]
				"~Blick des Wahnsinns (1)", -- [3]
				12.1, -- [4]
				1386547, -- [5]
				"cdcount", -- [6]
				"ej20565", -- [7]
				1, -- [8]
				"2366", -- [9]
				["id"] = 2337,
			},
			["200637"] = {
				"200637", -- [1]
				"Timer200637cd", -- [2]
				"~Magmaformer", -- [3]
				7.3, -- [4]
				1016245, -- [5]
				"cd", -- [6]
				200637, -- [7]
				1, -- [8]
				"1687", -- [9]
				["id"] = 1793,
			},
			["69166"] = {
				"69166", -- [1]
				"Timer69166next", -- [2]
				"Eingeatmete Seuche", -- [3]
				34, -- [4]
				342913, -- [5]
				"next", -- [6]
				69166, -- [7]
				6, -- [8]
				"Festergut", -- [9]
				["id"] = 1097,
			},
			["199817"] = {
				"199817", -- [1]
				"Timer199817cd", -- [2]
				"~Diener rufen", -- [3]
				5.5, -- [4]
				1322281, -- [5]
				"cd", -- [6]
				199817, -- [7]
				1, -- [8]
				"1673", -- [9]
				["id"] = 1792,
			},
			["240910"] = {
				"240910", -- [1]
				"Timer240910cdcount	1", -- [2]
				"~Armageddon (1)", -- [3]
				10, -- [4]
				136186, -- [5]
				"cdcount", -- [6]
				240910, -- [7]
				5, -- [8]
				"1898", -- [9]
				["id"] = 2051,
			},
			["250050"] = {
				"250050", -- [1]
				"Timer250050cd", -- [2]
				"~Echos von Shadra", -- [3]
				16.9, -- [4]
				134321, -- [5]
				"cd", -- [6]
				250050, -- [7]
				3, -- [8]
				"2030", -- [9]
				["id"] = 2087,
			},
			["260793"] = {
				"260793", -- [1]
				"Timer260793cd", -- [2]
				"~Verdauungsstörung", -- [3]
				8.3, -- [4]
				1394887, -- [5]
				"cd", -- [6]
				260793, -- [7]
				5, -- [8]
				"2131", -- [9]
				["id"] = 2118,
			},
			["232061"] = {
				"232061", -- [1]
				"Timer232061next", -- [2]
				"Anziehung", -- [3]
				58, -- [4]
				893777, -- [5]
				"next", -- [6]
				232061, -- [7]
				6, -- [8]
				"1856", -- [9]
				["id"] = 2036,
			},
			["198401"] = {
				"198401", -- [1]
				"Timer198401cd", -- [2]
				"~Einbruch der Nacht", -- [3]
				19, -- [4]
				236168, -- [5]
				"cd", -- [6]
				198401, -- [7]
				3, -- [8]
				"1654", -- [9]
				["id"] = 1836,
			},
			["255371"] = {
				"255371", -- [1]
				"Timer255371cd", -- [2]
				"~Furchterregende Fratze", -- [3]
				12.4, -- [4]
				132111, -- [5]
				"cd", -- [6]
				255371, -- [7]
				2, -- [8]
				"2083", -- [9]
				["id"] = 2086,
			},
			["301351"] = {
				"301351", -- [1]
				"Timer301351cd", -- [2]
				"~Verstärkungsrelais", -- [3]
				19.8, -- [4]
				516796, -- [5]
				"cd", -- [6]
				301351, -- [7]
				1, -- [8]
				"2355", -- [9]
				["id"] = 2291,
			},
			["256493"] = {
				"256493", -- [1]
				"Timer256493fades", -- [2]
				"Loderndes Azerit schwindet", -- [3]
				15, -- [4]
				615339, -- [5]
				"fades", -- [6]
				256493, -- [7]
				5, -- [8]
				"2109", -- [9]
				["id"] = 2105,
			},
			["143019"] = {
				"143019", -- [1]
				"Timer143019cd", -- [2]
				"~Verderbtes Gebräu", -- [3]
				18, -- [4]
				651085, -- [5]
				"cd", -- [6]
				143019, -- [7]
				3, -- [8]
				"849", -- [9]
				["id"] = 1598,
			},
			["236694"] = {
				"236694", -- [1]
				"Timer236694cd", -- [2]
				"~Mondkralle rufen", -- [3]
				8, -- [4]
				132150, -- [5]
				"cd", -- [6]
				236694, -- [7]
				1, -- [8]
				"1903", -- [9]
				["id"] = 2050,
			},
			["236527"] = {
				"236527", -- [1]
				"Timer236527cd", -- [2]
				"~Knallpeitscher", -- [3]
				17.5, -- [4]
				135263, -- [5]
				"cd", -- [6]
				236527, -- [7]
				1, -- [8]
				"1905", -- [9]
				["id"] = 2055,
			},
			["231363"] = {
				"231363", -- [1]
				"Timer231363fades", -- [2]
				"Brennende Rüstung schwindet", -- [3]
				6, -- [4]
				132221, -- [5]
				"fades", -- [6]
				231363, -- [7]
				5, -- [8]
				"1862", -- [9]
				["id"] = 2032,
			},
			["272046"] = {
				"272046", -- [1]
				"Timer272046cd", -- [2]
				"~Sturzbombe", -- [3]
				17.7, -- [4]
				1029584, -- [5]
				"cd", -- [6]
				272046, -- [7]
				3, -- [8]
				"2102", -- [9]
				["id"] = 2093,
			},
			["272902"] = {
				"272902", -- [1]
				"Timer272902ai", -- [2]
				"Kettenschuss KI", -- [3]
				15.86099999997532, -- [4]
				132309, -- [5]
				"ai", -- [6]
				272902, -- [7]
				5, -- [8]
				"2093", -- [9]
				["id"] = 2094,
			},
			["284106"] = {
				"284106", -- [1]
				"Timer284106cd", -- [2]
				"~Knisternder Blitz", -- [3]
				13.7, -- [4]
				136050, -- [5]
				"cd", -- [6]
				284106, -- [7]
				3, -- [8]
				"2337", -- [9]
				["id"] = 2280,
			},
			["72483"] = {
				"72483", -- [1]
				"Timer72483cd", -- [2]
				"~Alptraumportal beschwören", -- [3]
				46.5, -- [4]
				237556, -- [5]
				"cd", -- [6]
				72483, -- [7]
				5, -- [8]
				"Valithria", -- [9]
				["id"] = 1098,
			},
			["241721"] = {
				"241721", -- [1]
				"Timer241721active", -- [2]
				"Illidans blinder Blick endet", -- [3]
				20, -- [4]
				236415, -- [5]
				"active", -- [6]
				241721, -- [7]
				5, -- [8]
				"1898", -- [9]
				["id"] = 2051,
			},
			["239379"] = {
				"239379", -- [1]
				"Timer239379nextcount", -- [2]
				"Glevensturm (unbekannt", -- [3]
				54, -- [4]
				648707, -- [5]
				"nextcount", -- [6]
				239379, -- [7]
				3, -- [8]
				"1903", -- [9]
				["id"] = 2050,
			},
			["306990"] = {
				"306990", -- [1]
				"Timer306990cdcount	1", -- [2]
				"~Adaptive Membran (1)", -- [3]
				19.5, -- [4]
				1378702, -- [5]
				"cdcount", -- [6]
				306990, -- [7]
				5, -- [8]
				"2366", -- [9]
				["id"] = 2337,
			},
			["315820"] = {
				"315820", -- [1]
				"Timer315820cdcount	1", -- [2]
				"~Schmettertentakel (1)", -- [3]
				32, -- [4]
				132154, -- [5]
				"cdcount", -- [6]
				315820, -- [7]
				3, -- [8]
				"2366", -- [9]
				["id"] = 2337,
			},
			["296737"] = {
				"296737", -- [1]
				"Timer296737nextcount	1", -- [2]
				"Arkane Bombe (1)", -- [3]
				7, -- [4]
				132861, -- [5]
				"nextcount", -- [6]
				296737, -- [7]
				3, -- [8]
				"2353", -- [9]
				["id"] = 2305,
			},
			["106984"] = {
				"106984", -- [1]
				"Timer106984next", -- [2]
				"Blitzschlag beschwören", -- [3]
				6, -- [4]
				136050, -- [5]
				"next", -- [6]
				106984, -- [7]
				0, -- [8]
				"673", -- [9]
				["id"] = 1303,
			},
			["269231"] = {
				"269231", -- [1]
				"Timer269231cd", -- [2]
				"~Jagdsprung", -- [3]
				5, -- [4]
				132141, -- [5]
				"cd", -- [6]
				269231, -- [7]
				3, -- [8]
				"2172", -- [9]
				["id"] = 2143,
			},
			["306634"] = {
				"306634", -- [1]
				"Timer306634nextcount	1", -- [2]
				"Instabile Leere (1)", -- [3]
				7, -- [4]
				1386548, -- [5]
				"nextcount", -- [6]
				306634, -- [7]
				5, -- [8]
				"2364", -- [9]
				["id"] = 2331,
			},
			["198263"] = {
				"198263", -- [1]
				"Timer198263cdcount	1", -- [2]
				"~Strahlender Orkan (1)", -- [3]
				8, -- [4]
				236250, -- [5]
				"cdcount", -- [6]
				198263, -- [7]
				2, -- [8]
				"1489", -- [9]
				["id"] = 1809,
			},
			["295916"] = {
				"295916", -- [1]
				"Timer295916next", -- [2]
				"Uralter Sturm", -- [3]
				95.6, -- [4]
				1029585, -- [5]
				"next", -- [6]
				295916, -- [7]
				6, -- [8]
				"2353", -- [9]
				["id"] = 2305,
			},
			["317102"] = {
				"317102", -- [1]
				"Timer317102nextcount	1", -- [2]
				"Seelenpein hervorrufen (1)", -- [3]
				15, -- [4]
				136195, -- [5]
				"nextcount", -- [6]
				317102, -- [7]
				3, -- [8]
				"2375", -- [9]
				["id"] = 2344,
			},
			["306984"] = {
				"306984", -- [1]
				"Timer306984cd", -- [2]
				"~Eruption der Manie", -- [3]
				26.1, -- [4]
				458969, -- [5]
				"cd", -- [6]
				306984, -- [7]
				3, -- [8]
				"2366", -- [9]
				["id"] = 2337,
			},
			["118988"] = {
				"118988", -- [1]
				"Timer118988target	Schleicher der Glintrok", -- [2]
				"Leichtsinnige Inspiration: Schleicher der Glintrok", -- [3]
				20, -- [4]
				236310, -- [5]
				"target", -- [6]
				118988, -- [7]
				0, -- [8]
				"690", -- [9]
				["id"] = 2129,
			},
			["202019"] = {
				"202019", -- [1]
				"Timer202019cd", -- [2]
				"~Schattenblitzsalve", -- [3]
				17.5, -- [4]
				136197, -- [5]
				"cd", -- [6]
				202019, -- [7]
				2, -- [8]
				"1672", -- [9]
				["id"] = 1835,
			},
			["267907"] = {
				"267907", -- [1]
				"Timer267907cd", -- [2]
				"~Seelendornen", -- [3]
				8.1, -- [4]
				1016245, -- [5]
				"cd", -- [6]
				267907, -- [7]
				3, -- [8]
				"2126", -- [9]
				["id"] = 2114,
			},
			["233441"] = {
				"233441", -- [1]
				"Timer233441cdcount	1", -- [2]
				"~Knochensäge (1)", -- [3]
				64.5, -- [4]
				999952, -- [5]
				"cdcount", -- [6]
				233441, -- [7]
				2, -- [8]
				"1867", -- [9]
				["id"] = 2048,
			},
			["102573"] = {
				"102573", -- [1]
				"Timer102573next", -- [2]
				"Blitzatem", -- [3]
				9.7, -- [4]
				135781, -- [5]
				"next", -- [6]
				102573, -- [7]
				5, -- [8]
				"673", -- [9]
				["id"] = 1303,
			},
			["312866"] = {
				"312866", -- [1]
				"Timer312866nextcount	1", -- [2]
				"Kataklysmische Flammen (1)", -- [3]
				19.3, -- [4]
				2175503, -- [5]
				"nextcount", -- [6]
				312866, -- [7]
				3, -- [8]
				"2375", -- [9]
				["id"] = 2344,
			},
			["70541"] = {
				"70541", -- [1]
				"Timer70541next", -- [2]
				"Befallen", -- [3]
				22.5, -- [4]
				132291, -- [5]
				"next", -- [6]
				70541, -- [7]
				5, -- [8]
				"LichKing", -- [9]
				["id"] = 1106,
			},
			["269131"] = {
				"269131", -- [1]
				"Timer269131cd", -- [2]
				"~Uralter Geistbeuger", -- [3]
				19.6, -- [4]
				462324, -- [5]
				"cd", -- [6]
				269131, -- [7]
				3, -- [8]
				"2155", -- [9]
				["id"] = 2132,
			},
			["288696"] = {
				"288696", -- [1]
				"Timer288696cast", -- [2]
				"Katastrophale Fluten ", -- [3]
				15, -- [4]
				971078, -- [5]
				"cast", -- [6]
				288696, -- [7]
				4, -- [8]
				"2337", -- [9]
				["id"] = 2280,
			},
			["257777"] = {
				"257777", -- [1]
				"Timer257777cd", -- [2]
				"~Verkrüppelnde Klinge", -- [3]
				7.2, -- [4]
				132290, -- [5]
				"cd", -- [6]
				257777, -- [7]
				5, -- [8]
				"2098", -- [9]
				["id"] = 2102,
			},
			["191855"] = {
				"191855", -- [1]
				"Timer191855cd", -- [2]
				"~Toxische Wunde", -- [3]
				5, -- [4]
				458736, -- [5]
				"cd", -- [6]
				191855, -- [7]
				3, -- [8]
				"1479", -- [9]
				["id"] = 1813,
			},
			["ej21286"] = {
				"ej21286", -- [1]
				"Timerej21286nextcount	1", -- [2]
				"Schlägertentakel (1)", -- [3]
				23, -- [4]
				319441, -- [5]
				"nextcount", -- [6]
				"ej21286", -- [7]
				1, -- [8]
				"2375", -- [9]
				["id"] = 2344,
			},
			["260894"] = {
				"260894", -- [1]
				"Timer260894next", -- [2]
				"Schleichende Fäulnis", -- [3]
				12.2, -- [4]
				236271, -- [5]
				"next", -- [6]
				260894, -- [7]
				3, -- [8]
				"2157", -- [9]
				["id"] = 2111,
			},
			["82415"] = {
				"82415", -- [1]
				"Timer82415cd", -- [2]
				"~Dämpfende Welle", -- [3]
				10, -- [4]
				135749, -- [5]
				"cd", -- [6]
				82415, -- [7]
				3, -- [8]
				"110", -- [9]
				["id"] = 1056,
			},
			["268260"] = {
				"268260", -- [1]
				"Timer268260cd", -- [2]
				"~Breitseite", -- [3]
				11.3, -- [4]
				252185, -- [5]
				"cd", -- [6]
				268260, -- [7]
				3, -- [8]
				"2173", -- [9]
				["id"] = 2109,
			},
			["302682"] = {
				"302682", -- [1]
				"Timer302682cd", -- [2]
				"~Megatazer", -- [3]
				25.5, -- [4]
				237587, -- [5]
				"cd", -- [6]
				302682, -- [7]
				3, -- [8]
				"2360", -- [9]
				["id"] = 2312,
			},
			["306208"] = {
				"306208", -- [1]
				"Timer306208nextcount	1", -- [2]
				"Qual (1)", -- [3]
				20.3, -- [4]
				236295, -- [5]
				"nextcount", -- [6]
				306208, -- [7]
				3, -- [8]
				"2377", -- [9]
				["id"] = 2328,
			},
			["295601"] = {
				"295601", -- [1]
				"Timer295601cd", -- [2]
				"~Frostschockblitze", -- [3]
				50.8, -- [4]
				1376046, -- [5]
				"cd", -- [6]
				295601, -- [7]
				3, -- [8]
				"2352", -- [9]
				["id"] = 2298,
			},
			["233556"] = {
				"233556", -- [1]
				"Timer233556next", -- [2]
				"Verderbte Matrix", -- [3]
				40, -- [4]
				1097741, -- [5]
				"next", -- [6]
				233556, -- [7]
				5, -- [8]
				"1873", -- [9]
				["id"] = 2038,
			},
			["216290"] = {
				"216290", -- [1]
				"Timer216290cd", -- [2]
				"~Schlag des Berges", -- [3]
				15.8, -- [4]
				136025, -- [5]
				"cd", -- [6]
				216290, -- [7]
				3, -- [8]
				"1665", -- [9]
				["id"] = 1791,
			},
			["228201"] = {
				"228201", -- [1]
				"Timer228201next", -- [2]
				"Von der Leine gelassen", -- [3]
				45, -- [4]
				132507, -- [5]
				"next", -- [6]
				228201, -- [7]
				6, -- [8]
				"1830", -- [9]
				["id"] = 1962,
			},
			["268752"] = {
				"268752", -- [1]
				"Timer268752cd", -- [2]
				"~Zurückziehen", -- [3]
				13.1, -- [4]
				1126431, -- [5]
				"cd", -- [6]
				268752, -- [7]
				6, -- [8]
				"2173", -- [9]
				["id"] = 2109,
			},
			["228270"] = {
				"228270", -- [1]
				"Timer228270nextcount	1", -- [2]
				"Lichtschild (1)", -- [3]
				30, -- [4]
				612968, -- [5]
				"nextcount", -- [6]
				228270, -- [7]
				3, -- [8]
				"1819", -- [9]
				["id"] = 1958,
			},
			["297834"] = {
				"297834", -- [1]
				"Timer297834cd", -- [2]
				"~Giftige Welle", -- [3]
				44.8, -- [4]
				136233, -- [5]
				"cd", -- [6]
				297834, -- [7]
				2, -- [8]
				"2358", -- [9]
				["id"] = 2292,
			},
			["310019"] = {
				"310019", -- [1]
				"Timer310019cdcount	1", -- [2]
				"~Geladene Bindung (1)", -- [3]
				14.7, -- [4]
				1370984, -- [5]
				"cdcount", -- [6]
				310019, -- [7]
				3, -- [8]
				"2364", -- [9]
				["id"] = 2331,
			},
			["131521"] = {
				"131521", -- [1]
				"Timer131521active", -- [2]
				"Ring der Bosheit endet", -- [3]
				15, -- [4]
				136194, -- [5]
				"active", -- [6]
				131521, -- [7]
				0, -- [8]
				"686", -- [9]
				["id"] = 1306,
			},
			["236459"] = {
				"236459", -- [1]
				"Timer236459cdcount	1", -- [2]
				"~Seelenbindung (1)", -- [3]
				14.2, -- [4]
				607854, -- [5]
				"cdcount", -- [6]
				236459, -- [7]
				3, -- [8]
				"1896", -- [9]
				["id"] = 2054,
			},
			["70351"] = {
				"70351", -- [1]
				"Timer70351next", -- [2]
				"Instabiles Experiment", -- [3]
				30, -- [4]
				136226, -- [5]
				"next", -- [6]
				70351, -- [7]
				1, -- [8]
				"Putricide", -- [9]
				["id"] = 1102,
			},
			["307131"] = {
				"307131", -- [1]
				"Timer307131nextcount	1", -- [2]
				"Überwuchertes Tentakel (1)", -- [3]
				36, -- [4]
				132154, -- [5]
				"nextcount", -- [6]
				307131, -- [7]
				1, -- [8]
				"2366", -- [9]
				["id"] = 2337,
			},
			["120201"] = {
				"120201", -- [1]
				"Timer120201cd", -- [2]
				"~Feuersbrunst", -- [3]
				22, -- [4]
				135807, -- [5]
				"cd", -- [6]
				120201, -- [7]
				3, -- [8]
				"708", -- [9]
				["id"] = 1442,
			},
			["238598"] = {
				"238598", -- [1]
				"Timer238598cd", -- [2]
				"~Würgeranken", -- [3]
				24.2, -- [4]
				959842, -- [5]
				"cd", -- [6]
				238598, -- [7]
				3, -- [8]
				"1905", -- [9]
				["id"] = 2055,
			},
			["145226"] = {
				"145226", -- [1]
				"Timer145226next", -- [2]
				"Blinder Hass", -- [3]
				25, -- [4]
				651082, -- [5]
				"next", -- [6]
				145226, -- [7]
				6, -- [8]
				"866", -- [9]
				["id"] = 1624,
			},
			["296691"] = {
				"296691", -- [1]
				"Timer296691cd	Creature-0-3111-2164-5530-152313-00001105E6", -- [2]
				"~Mächtiges Stampfen", -- [3]
				29.1, -- [4]
				132368, -- [5]
				"cd", -- [6]
				296691, -- [7]
				2, -- [8]
				"2351", -- [9]
				["id"] = 2303,
			},
			["269399"] = {
				"269399", -- [1]
				"Timer269399cd", -- [2]
				"~Gähnendes Tor", -- [3]
				13, -- [4]
				1022950, -- [5]
				"cd", -- [6]
				269399, -- [7]
				3, -- [8]
				"2156", -- [9]
				["id"] = 2133,
			},
			["80803"] = {
				"80803", -- [1]
				"Timer80803cd", -- [2]
				"~Lavafelsspalt", -- [3]
				6.2, -- [4]
				135830, -- [5]
				"cd", -- [6]
				80803, -- [7]
				3, -- [8]
				"111", -- [9]
				["id"] = 1059,
			},
			["192072"] = {
				"192072", -- [1]
				"Timer192072cd", -- [2]
				"~Verstärkung rufen", -- [3]
				3, -- [4]
				298644, -- [5]
				"cd", -- [6]
				192072, -- [7]
				1, -- [8]
				"1480", -- [9]
				["id"] = 1810,
			},
			["307092"] = {
				"307092", -- [1]
				"Timer307092cd", -- [2]
				"~Okzipitalexplosion", -- [3]
				6.2, -- [4]
				1386551, -- [5]
				"cd", -- [6]
				307092, -- [7]
				3, -- [8]
				"2366", -- [9]
				["id"] = 2337,
			},
			["270605"] = {
				"270605", -- [1]
				"Timer270605cd", -- [2]
				"~Verwüster beschwören", -- [3]
				19.9, -- [4]
				136243, -- [5]
				"cd", -- [6]
				270605, -- [7]
				1, -- [8]
				"2140", -- [9]
				["id"] = 2100,
			},
			["106872"] = {
				"106872", -- [1]
				"Timer106872cd", -- [2]
				"~Desorientierender Schlag", -- [3]
				13, -- [4]
				136175, -- [5]
				"cd", -- [6]
				106872, -- [7]
				0, -- [8]
				"685", -- [9]
				["id"] = 1305,
			},
			["307048"] = {
				"307048", -- [1]
				"Timer307048cd	1", -- [2]
				"~Ewige Finsternis", -- [3]
				26.2, -- [4]
				1386548, -- [5]
				"cd", -- [6]
				307048, -- [7]
				2, -- [8]
				"2366", -- [9]
				["id"] = 2337,
			},
			["257791"] = {
				"257791", -- [1]
				"Timer257791cd", -- [2]
				"~Heulende Furcht", -- [3]
				8.5, -- [4]
				607852, -- [5]
				"cd", -- [6]
				257791, -- [7]
				4, -- [8]
				"2098", -- [9]
				["id"] = 2102,
			},
			["314993"] = {
				"314993", -- [1]
				"Timer314993cd", -- [2]
				"~Essenz entziehen", -- [3]
				9.7, -- [4]
				3154546, -- [5]
				"cd", -- [6]
				314993, -- [7]
				5, -- [8]
				"2365", -- [9]
				["id"] = 2327,
			},
			["118903"] = {
				"118903", -- [1]
				"Timer118903cd", -- [2]
				"~Verhexung der Lethargie", -- [3]
				9, -- [4]
				237561, -- [5]
				"cd", -- [6]
				118903, -- [7]
				3, -- [8]
				"690", -- [9]
				["id"] = 2129,
			},
			["233983"] = {
				"233983", -- [1]
				"Timer233983cd", -- [2]
				"~Hallende Pein", -- [3]
				22.9, -- [4]
				136181, -- [5]
				"cd", -- [6]
				233983, -- [7]
				3, -- [8]
				"1867", -- [9]
				["id"] = 2048,
			},
			["307937"] = {
				"307937", -- [1]
				"Timer307937cd", -- [2]
				"~Zerfledderte Psyche", -- [3]
				12.8, -- [4]
				462324, -- [5]
				"cd", -- [6]
				307937, -- [7]
				3, -- [8]
				"2369", -- [9]
				["id"] = 2334,
			},
			["46165"] = {
				"46165", -- [1]
				"Timer46165next", -- [2]
				"Schockbarriere", -- [3]
				60, -- [4]
				136051, -- [5]
				"next", -- [6]
				46165, -- [7]
				4, -- [8]
				"533", -- [9]
				["id"] = 1894,
			},
			["311159"] = {
				"311159", -- [1]
				"Timer311159nextcount	1", -- [2]
				"Verfluchtes Blut (1)", -- [3]
				3, -- [4]
				237515, -- [5]
				"nextcount", -- [6]
				311159, -- [7]
				3, -- [8]
				"2374", -- [9]
				["id"] = 2345,
			},
			["256589"] = {
				"256589", -- [1]
				"Timer256589cd", -- [2]
				"~Fass zerschmettern", -- [3]
				6.1, -- [4]
				132622, -- [5]
				"cd", -- [6]
				256589, -- [7]
				3, -- [8]
				"2093", -- [9]
				["id"] = 2094,
			},
			["143027"] = {
				"143027", -- [1]
				"Timer143027cd", -- [2]
				"~Aufprall", -- [3]
				45, -- [4]
				628134, -- [5]
				"cd", -- [6]
				143027, -- [7]
				3, -- [8]
				"849", -- [9]
				["id"] = 1598,
			},
			["191798"] = {
				"191798", -- [1]
				"Timer191798next", -- [2]
				"Verheerende Winde", -- [3]
				33, -- [4]
				236154, -- [5]
				"next", -- [6]
				191798, -- [7]
				2, -- [8]
				"1479", -- [9]
				["id"] = 1813,
			},
			["296688"] = {
				"296688", -- [1]
				"Timer296688cdcount	1", -- [2]
				"~Kräuselnde Welle (1)", -- [3]
				15, -- [4]
				237590, -- [5]
				"cdcount", -- [6]
				296688, -- [7]
				3, -- [8]
				"2354", -- [9]
				["id"] = 2304,
			},
			["267360"] = {
				"267360", -- [1]
				"Timer267360next", -- [2]
				"Umklammerung der Versunkenen Stadt", -- [3]
				20.5, -- [4]
				136194, -- [5]
				"next", -- [6]
				267360, -- [7]
				6, -- [8]
				"2156", -- [9]
				["id"] = 2133,
			},
			["257407"] = {
				"257407", -- [1]
				"Timer257407next", -- [2]
				"Verfolgung", -- [3]
				21.8, -- [4]
				236192, -- [5]
				"next", -- [6]
				257407, -- [7]
				3, -- [8]
				"2083", -- [9]
				["id"] = 2086,
			},
			["256199"] = {
				"256199", -- [1]
				"Timer256199cd", -- [2]
				"~Azeritgeschosse: Explosiv", -- [3]
				22.2, -- [4]
				133584, -- [5]
				"cd", -- [6]
				256199, -- [7]
				3, -- [8]
				"2096", -- [9]
				["id"] = 2104,
			},
			["230227"] = {
				"230227", -- [1]
				"Timer230227cd", -- [2]
				"~Aus der Tiefe", -- [3]
				18, -- [4]
				133898, -- [5]
				"cd", -- [6]
				230227, -- [7]
				1, -- [8]
				"1861", -- [9]
				["id"] = 2037,
			},
			["310333"] = {
				"310333", -- [1]
				"Timer310333cd", -- [2]
				"~Leerenblick", -- [3]
				14.7, -- [4]
				3004126, -- [5]
				"cd", -- [6]
				310333, -- [7]
				2, -- [8]
				"2375", -- [9]
				["id"] = 2344,
			},
			["243124"] = {
				"243124", -- [1]
				"Timer243124cd", -- [2]
				"~Knüppelschwung", -- [3]
				15.5, -- [4]
				1084435, -- [5]
				"cd", -- [6]
				243124, -- [7]
				3, -- [8]
				"1906", -- [9]
				["id"] = 2057,
			},
			["302274"] = {
				"302274", -- [1]
				"Timer302274cd", -- [2]
				"~Fulminanter Schock", -- [3]
				8.4, -- [4]
				571554, -- [5]
				"cd", -- [6]
				302274, -- [7]
				3, -- [8]
				"2355", -- [9]
				["id"] = 2291,
			},
			["193659"] = {
				"193659", -- [1]
				"Timer193659cd", -- [2]
				"~Teufelsfeuerrausch", -- [3]
				7.1, -- [4]
				1096201, -- [5]
				"cd", -- [6]
				193659, -- [7]
				3, -- [8]
				"1488", -- [9]
				["id"] = 1808,
			},
			["259022"] = {
				"259022", -- [1]
				"Timer259022cd", -- [2]
				"~Azeritkatalysator", -- [3]
				4, -- [4]
				135789, -- [5]
				"cd", -- [6]
				259022, -- [7]
				3, -- [8]
				"2115", -- [9]
				["id"] = 2107,
			},
			["291626"] = {
				"291626", -- [1]
				"Timer291626cast", -- [2]
				"Schneidestrahl ", -- [3]
				6, -- [4]
				839983, -- [5]
				"cast", -- [6]
				291626, -- [7]
				3, -- [8]
				"2331", -- [9]
				["id"] = 2260,
			},
			["255577"] = {
				"255577", -- [1]
				"Timer255577next", -- [2]
				"Transfusion", -- [3]
				25, -- [4]
				135949, -- [5]
				"next", -- [6]
				255577, -- [7]
				5, -- [8]
				"2082", -- [9]
				["id"] = 2084,
			},
			["306257"] = {
				"306257", -- [1]
				"Timer306257target	Rosanhi-Malygos", -- [2]
				"Instabile Vita: Rosanhi-Malygos", -- [3]
				7, -- [4]
				136049, -- [5]
				"target", -- [6]
				306257, -- [7]
				5, -- [8]
				"2364", -- [9]
				["id"] = 2331,
			},
			["287929"] = {
				"287929", -- [1]
				"Timer287929nextcount	1", -- [2]
				"Explodierendes Schaf (1)", -- [3]
				12.8, -- [4]
				1384364, -- [5]
				"nextcount", -- [6]
				287929, -- [7]
				3, -- [8]
				"2334", -- [9]
				["id"] = 2276,
			},
			["237726"] = {
				"237726", -- [1]
				"Timer237726cd", -- [2]
				"~Spöttischer Blick", -- [3]
				26.7, -- [4]
				132284, -- [5]
				"cd", -- [6]
				237726, -- [7]
				3, -- [8]
				"1906", -- [9]
				["id"] = 2057,
			},
			["236524"] = {
				"236524", -- [1]
				"Timer236524cd", -- [2]
				"~Giftige Sporen", -- [3]
				12, -- [4]
				132371, -- [5]
				"cd", -- [6]
				236524, -- [7]
				2, -- [8]
				"1905", -- [9]
				["id"] = 2055,
			},
			["264694"] = {
				"264694", -- [1]
				"Timer264694cd", -- [2]
				"~Fauliger Ausstoß", -- [3]
				5, -- [4]
				132098, -- [5]
				"cd", -- [6]
				264694, -- [7]
				3, -- [8]
				"2127", -- [9]
				["id"] = 2115,
			},
			["72173"] = {
				"72173", -- [1]
				"Timer72173next", -- [2]
				"Blutbestie rufen", -- [3]
				40, -- [4]
				252272, -- [5]
				"next", -- [6]
				72173, -- [7]
				1, -- [8]
				"Deathbringer", -- [9]
				["id"] = 1096,
			},
			["287797"] = {
				"287797", -- [1]
				"Timer287797cast", -- [2]
				"Herunterstürzen ", -- [3]
				4.5, -- [4]
				133031, -- [5]
				"cast", -- [6]
				287797, -- [7]
				3, -- [8]
				"2334", -- [9]
				["id"] = 2276,
			},
			["267702"] = {
				"267702", -- [1]
				"Timer267702cd", -- [2]
				"~Bestatten", -- [3]
				26.5, -- [4]
				236399, -- [5]
				"cd", -- [6]
				267702, -- [7]
				3, -- [8]
				"2171", -- [9]
				["id"] = 2142,
			},
			["238570"] = {
				"238570", -- [1]
				"Timer238570nextcount	1", -- [2]
				"Schmerzensschreie (1)", -- [3]
				119, -- [4]
				463286, -- [5]
				"nextcount", -- [6]
				238570, -- [7]
				6, -- [8]
				"1896", -- [9]
				["id"] = 2054,
			},
			["234059"] = {
				"234059", -- [1]
				"Timer234059cdcount	1", -- [2]
				"~Entfesseltes Chaos (1)", -- [3]
				7, -- [4]
				135795, -- [5]
				"cdcount", -- [6]
				234059, -- [7]
				3, -- [8]
				"1873", -- [9]
				["id"] = 2038,
			},
			["257785"] = {
				"257785", -- [1]
				"Timer257785cd", -- [2]
				"~Blitzende Dolche", -- [3]
				12.1, -- [4]
				236273, -- [5]
				"cd", -- [6]
				257785, -- [7]
				2, -- [8]
				"2098", -- [9]
				["id"] = 2102,
			},
			["267905"] = {
				"267905", -- [1]
				"Timer267905cd", -- [2]
				"~Verstärkungszauberschutz", -- [3]
				30.1, -- [4]
				1589501, -- [5]
				"cd", -- [6]
				267905, -- [7]
				5, -- [8]
				"2154", -- [9]
				["id"] = 2131,
			},
			["257593"] = {
				"257593", -- [1]
				"Timer257593nextcount	1", -- [2]
				"Erdwüter rufen (1)", -- [3]
				60, -- [4]
				136024, -- [5]
				"nextcount", -- [6]
				257593, -- [7]
				1, -- [8]
				"2114", -- [9]
				["id"] = 2106,
			},
			["288049"] = {
				"288049", -- [1]
				"Timer288049nextcount	1", -- [2]
				"Weltvergrößerer (1)", -- [3]
				75, -- [4]
				667398, -- [5]
				"nextcount", -- [6]
				288049, -- [7]
				3, -- [8]
				"2334", -- [9]
				["id"] = 2276,
			},
			["73070"] = {
				"73070", -- [1]
				"Timer73070next", -- [2]
				"Schrecken entfachen", -- [3]
				127, -- [4]
				136147, -- [5]
				"next", -- [6]
				73070, -- [7]
				6, -- [8]
				"Lanathel", -- [9]
				["id"] = 1103,
			},
			["282153"] = {
				"282153", -- [1]
				"Timer282153nextcount	1", -- [2]
				"Kanone (1)", -- [3]
				13, -- [4]
				1717108, -- [5]
				"nextcount", -- [6]
				282153, -- [7]
				3, -- [8]
				"2334", -- [9]
				["id"] = 2276,
			},
			["288410"] = {
				"288410", -- [1]
				"Timer288410nextcount	1", -- [2]
				"Funkenbot anfordern (1)", -- [3]
				5, -- [4]
				135815, -- [5]
				"nextcount", -- [6]
				288410, -- [7]
				1, -- [8]
				"2334", -- [9]
				["id"] = 2276,
			},
			["193152"] = {
				"193152", -- [1]
				"Timer193152cd", -- [2]
				"~Beben", -- [3]
				15, -- [4]
				136025, -- [5]
				"cd", -- [6]
				193152, -- [7]
				2, -- [8]
				"1491", -- [9]
				["id"] = 1812,
			},
			["305663"] = {
				"305663", -- [1]
				"Timer305663cd", -- [2]
				"~Schwarze Schwingen", -- [3]
				18.1, -- [4]
				2103869, -- [5]
				"cd", -- [6]
				305663, -- [7]
				3, -- [8]
				"2365", -- [9]
				["id"] = 2327,
			},
			["119946"] = {
				"119946", -- [1]
				"Timer119946cd", -- [2]
				"~Verheeren", -- [3]
				26, -- [4]
				132142, -- [5]
				"cd", -- [6]
				119946, -- [7]
				3, -- [8]
				"708", -- [9]
				["id"] = 1442,
			},
			["291865"] = {
				"291865", -- [1]
				"Timer291865cd", -- [2]
				"~Rekalibrieren", -- [3]
				5.9, -- [4]
				648208, -- [5]
				"cd", -- [6]
				291865, -- [7]
				3, -- [8]
				"2331", -- [9]
				["id"] = 2260,
			},
			["266266"] = {
				"266266", -- [1]
				"Timer266266cd", -- [2]
				"~Sklaventreiber beschwören", -- [3]
				13, -- [4]
				136194, -- [5]
				"cd", -- [6]
				266266, -- [7]
				1, -- [8]
				"2129", -- [9]
				["id"] = 2117,
			},
			["309980"] = {
				"309980", -- [1]
				"Timer309980nextcount	1", -- [2]
				"Paranoia (1)", -- [3]
				50, -- [4]
				135740, -- [5]
				"nextcount", -- [6]
				309980, -- [7]
				3, -- [8]
				"2375", -- [9]
				["id"] = 2344,
			},
			["295779"] = {
				"295779", -- [1]
				"Timer295779cd	Creature-0-3111-2164-5530-152311-00001105E7", -- [2]
				"~Aqualanze", -- [3]
				25.5, -- [4]
				132218, -- [5]
				"cd", -- [6]
				295779, -- [7]
				3, -- [8]
				"2351", -- [9]
				["id"] = 2303,
			},
			["306881"] = {
				"306881", -- [1]
				"Timer306881next	Creature-0-3892-2217-11058-157366-000052DF5E", -- [2]
				"Leerenkollaps", -- [3]
				5, -- [4]
				607865, -- [5]
				"next", -- [6]
				306881, -- [7]
				3, -- [8]
				"2364", -- [9]
				["id"] = 2331,
			},
			["78939"] = {
				"78939", -- [1]
				"Timer78939active", -- [2]
				"Elementiumbollwerk endet", -- [3]
				10, -- [4]
				132361, -- [5]
				"active", -- [6]
				78939, -- [7]
				5, -- [8]
				"112", -- [9]
				["id"] = 1058,
			},
			["236710"] = {
				"236710", -- [1]
				"Timer236710cd", -- [2]
				"~Eruptive Reflexion", -- [3]
				12, -- [4]
				1357814, -- [5]
				"cd", -- [6]
				236710, -- [7]
				3, -- [8]
				"1898", -- [9]
				["id"] = 2051,
			},
			["257117"] = {
				"257117", -- [1]
				"Timer257117next", -- [2]
				"Glückszahl Sieben", -- [3]
				9.8, -- [4]
				1373910, -- [5]
				"next", -- [6]
				257117, -- [7]
				5, -- [8]
				"2093", -- [9]
				["id"] = 2094,
			},
			["106434"] = {
				"106434", -- [1]
				"Timer106434cd", -- [2]
				"~Tornadotritt", -- [3]
				32, -- [4]
				136022, -- [5]
				"cd", -- [6]
				106434, -- [7]
				0, -- [8]
				"657", -- [9]
				["id"] = 1304,
			},
			["306290"] = {
				"306290", -- [1]
				"Timer306290cdcount	1", -- [2]
				"~Verbotenes Ritual (1)", -- [3]
				4.1, -- [4]
				1778225, -- [5]
				"cdcount", -- [6]
				306290, -- [7]
				5, -- [8]
				"2365", -- [9]
				["id"] = 2327,
			},
			["262347"] = {
				"262347", -- [1]
				"Timer262347cd", -- [2]
				"~Statikimpuls", -- [3]
				5.7, -- [4]
				136050, -- [5]
				"cd", -- [6]
				262347, -- [7]
				2, -- [8]
				"2109", -- [9]
				["id"] = 2105,
			},
			["285118"] = {
				"285118", -- [1]
				"Timer285118cd", -- [2]
				"~Meeresflut", -- [3]
				5.3, -- [4]
				135861, -- [5]
				"cd", -- [6]
				285118, -- [7]
				3, -- [8]
				"2337", -- [9]
				["id"] = 2280,
			},
			["228565"] = {
				"228565", -- [1]
				"Timer228565cdcount	1", -- [2]
				"~Atem (1)", -- [3]
				40, -- [4]
				136195, -- [5]
				"cdcount", -- [6]
				228565, -- [7]
				5, -- [8]
				"1829", -- [9]
				["id"] = 2008,
			},
			["307583"] = {
				"307583", -- [1]
				"Timer307583nextcount	1", -- [2]
				"Eruption (1)", -- [3]
				110, -- [4]
				237521, -- [5]
				"nextcount", -- [6]
				307583, -- [7]
				3, -- [8]
				"2372", -- [9]
				["id"] = 2333,
			},
			["266206"] = {
				"266206", -- [1]
				"Timer266206cd", -- [2]
				"~Wirbelnde Äxte", -- [3]
				8, -- [4]
				999952, -- [5]
				"cd", -- [6]
				266206, -- [7]
				3, -- [8]
				"2170", -- [9]
				["id"] = 2140,
			},
			["230267"] = {
				"230267", -- [1]
				"Timer230267next	1	Distanz", -- [2]
				"Nächste Kugeln (1-Distanz)", -- [3]
				11, -- [4]
				1097741, -- [5]
				"next", -- [6]
				230267, -- [7]
				3, -- [8]
				"1829", -- [9]
				["id"] = 2008,
			},
			["256489"] = {
				"256489", -- [1]
				"Timer256489cd", -- [2]
				"~Frischer Fisch", -- [3]
				43.5, -- [4]
				136225, -- [5]
				"cd", -- [6]
				256489, -- [7]
				3, -- [8]
				"2094", -- [9]
				["id"] = 2095,
			},
			["284383"] = {
				"284383", -- [1]
				"Timer284383cdcount	1", -- [2]
				"~Versuchung des Meeres (1)", -- [3]
				12.1, -- [4]
				1391616, -- [5]
				"cdcount", -- [6]
				284383, -- [7]
				1, -- [8]
				"2337", -- [9]
				["id"] = 2280,
			},
			["313364"] = {
				"313364", -- [1]
				"Timer313364cd", -- [2]
				"~Geistiger Verfall", -- [3]
				14.8, -- [4]
				136174, -- [5]
				"cd", -- [6]
				313364, -- [7]
				3, -- [8]
				"2366", -- [9]
				["id"] = 2337,
			},
			["308177"] = {
				"308177", -- [1]
				"Timer308177next", -- [2]
				"Entropische Ansammlung", -- [3]
				4, -- [4]
				132851, -- [5]
				"next", -- [6]
				308177, -- [7]
				5, -- [8]
				"2367", -- [9]
				["id"] = 2335,
			},
			["119374"] = {
				"119374", -- [1]
				"Timer119374next", -- [2]
				"Wirbelwind", -- [3]
				15, -- [4]
				132369, -- [5]
				"next", -- [6]
				119374, -- [7]
				3, -- [8]
				"698", -- [9]
				["id"] = 1441,
			},
			["228012"] = {
				"228012", -- [1]
				"Timer228012nextcount	1", -- [2]
				"Horn der Ehre (1)", -- [3]
				10, -- [4]
				134229, -- [5]
				"nextcount", -- [6]
				228012, -- [7]
				2, -- [8]
				"1819", -- [9]
				["id"] = 1958,
			},
			["307213"] = {
				"307213", -- [1]
				"Timer307213next", -- [2]
				"Tek'ris' Schwarmbewusstseinskontrolle", -- [3]
				98.7, -- [4]
				3194606, -- [5]
				"next", -- [6]
				307213, -- [7]
				6, -- [8]
				"2372", -- [9]
				["id"] = 2333,
			},
			["204666"] = {
				"204666", -- [1]
				"Timer204666cd", -- [2]
				"~Zerschmetterte Erde", -- [3]
				6, -- [4]
				132368, -- [5]
				"cd", -- [6]
				204666, -- [7]
				2, -- [8]
				"1655", -- [9]
				["id"] = 1837,
			},
			["69057"] = {
				"69057", -- [1]
				"Timer69057cd", -- [2]
				"~Knochenstachelfriedhof", -- [3]
				15, -- [4]
				236946, -- [5]
				"cd", -- [6]
				69057, -- [7]
				1, -- [8]
				"LordMarrowgar", -- [9]
				["id"] = 1101,
			},
			["292264"] = {
				"292264", -- [1]
				"Timer292264cd", -- [2]
				"~Gigaschock", -- [3]
				8.3, -- [4]
				896468, -- [5]
				"cd", -- [6]
				292264, -- [7]
				3, -- [8]
				"2331", -- [9]
				["id"] = 2260,
			},
			["167910"] = {
				"167910", -- [1]
				"Timer167910next", -- [2]
				"Kvaldirlangboot", -- [3]
				14, -- [4]
				627487, -- [5]
				"next", -- [6]
				167910, -- [7]
				1, -- [8]
				"1829", -- [9]
				["id"] = 2008,
			},
			["71289"] = {
				"71289", -- [1]
				"Timer71289cd", -- [2]
				"~Gedankenkontrolle", -- [3]
				30, -- [4]
				132507, -- [5]
				"cd", -- [6]
				71289, -- [7]
				3, -- [8]
				"Deathwhisper", -- [9]
				["id"] = 1100,
			},
			["236519"] = {
				"236519", -- [1]
				"Timer236519cd", -- [2]
				"~Mondbrand", -- [3]
				9.1, -- [4]
				136057, -- [5]
				"cd", -- [6]
				236519, -- [7]
				3, -- [8]
				"1903", -- [9]
				["id"] = 2050,
			},
			["101339"] = {
				"101339", -- [1]
				"Timer101339next", -- [2]
				"Frostklingen", -- [3]
				21, -- [4]
				135855, -- [5]
				"next", -- [6]
				101339, -- [7]
				0, -- [8]
				"285", -- [9]
				["id"] = 1883,
			},
			["298103"] = {
				"298103", -- [1]
				"Timer298103cdcount	1", -- [2]
				"~Tröpfelndes Sekret (1)", -- [3]
				28.9, -- [4]
				576309, -- [5]
				"cdcount", -- [6]
				298103, -- [7]
				1, -- [8]
				"2351", -- [9]
				["id"] = 2303,
			},
			["ej12600"] = {
				"ej12600", -- [1]
				"Timerej12600cd", -- [2]
				"~Schwarzklauenworg", -- [3]
				35, -- [4]
				132224, -- [5]
				"cd", -- [6]
				"ej12600", -- [7]
				1, -- [8]
				"1487", -- [9]
				["id"] = 1807,
			},
			["306091"] = {
				"306091", -- [1]
				"Timer306091nextcount", -- [2]
				"Orbs", -- [3]
				10, -- [4]
				839911, -- [5]
				"nextcount", -- [6]
				306091, -- [7]
				1, -- [8]
				"2364", -- [9]
				["id"] = 2331,
			},
			["199143"] = {
				"199143", -- [1]
				"Timer199143cd", -- [2]
				"~Hypnosewolke", -- [3]
				11.5, -- [4]
				136182, -- [5]
				"cd", -- [6]
				199143, -- [7]
				3, -- [8]
				"1672", -- [9]
				["id"] = 1835,
			},
			["192094"] = {
				"192094", -- [1]
				"Timer192094cd", -- [2]
				"~Durchbohrender Speer", -- [3]
				28, -- [4]
				135130, -- [5]
				"cd", -- [6]
				192094, -- [7]
				3, -- [8]
				"1480", -- [9]
				["id"] = 1810,
			},
			["261440"] = {
				"261440", -- [1]
				"Timer261440cd", -- [2]
				"~Virulenter Erreger", -- [3]
				10.5, -- [4]
				132104, -- [5]
				"cd", -- [6]
				261440, -- [7]
				3, -- [8]
				"2128", -- [9]
				["id"] = 2116,
			},
			["256106"] = {
				"256106", -- [1]
				"Timer256106cd", -- [2]
				"~Azeritpulverschuss", -- [3]
				7.3, -- [4]
				134536, -- [5]
				"cd", -- [6]
				256106, -- [7]
				3, -- [8]
				"2102", -- [9]
				["id"] = 2093,
			},
			["306289"] = {
				"306289", -- [1]
				"Timer306289cdcount	1", -- [2]
				"~Orkanschlag (1)", -- [3]
				45, -- [4]
				642418, -- [5]
				"cdcount", -- [6]
				306289, -- [7]
				2, -- [8]
				"2368", -- [9]
				["id"] = 2329,
			},
			["285351"] = {
				"285351", -- [1]
				"Timer285351cd", -- [2]
				"~Mine legen", -- [3]
				15.5, -- [4]
				133710, -- [5]
				"cd", -- [6]
				285351, -- [7]
				3, -- [8]
				"2336", -- [9]
				["id"] = 2257,
			},
			["259732"] = {
				"259732", -- [1]
				"Timer259732cd", -- [2]
				"~Verfaulende Ernte", -- [3]
				34.9, -- [4]
				237521, -- [5]
				"cd", -- [6]
				259732, -- [7]
				2, -- [8]
				"2130", -- [9]
				["id"] = 2112,
			},
			["319015"] = {
				"319015", -- [1]
				"Timer319015active", -- [2]
				"Kollabiertes Ego endet", -- [3]
				30, -- [4]
				132094, -- [5]
				"active", -- [6]
				319015, -- [7]
				6, -- [8]
				"2375", -- [9]
				["id"] = 2344,
			},
			["297261"] = {
				"297261", -- [1]
				"Timer297261cd", -- [2]
				"~Beben", -- [3]
				8.3, -- [4]
				451165, -- [5]
				"cd", -- [6]
				297261, -- [7]
				2, -- [8]
				"2357", -- [9]
				["id"] = 2290,
			},
			["nil"] = {
				"nil", -- [1]
				"%s	Pull in", -- [2]
				"Pull in", -- [3]
				7, -- [4]
				132349, -- [5]
				nil, -- [6]
				nil, -- [7]
				0, -- [8]
				"PullTimerCountdownDummy", -- [9]
				["id"] = 2327,
			},
			["266231"] = {
				"266231", -- [1]
				"Timer266231cd", -- [2]
				"~Abspalteraxt", -- [3]
				22.2, -- [4]
				132215, -- [5]
				"cd", -- [6]
				266231, -- [7]
				3, -- [8]
				"2170", -- [9]
				["id"] = 2140,
			},
			["257305"] = {
				"257305", -- [1]
				"Timer257305cd", -- [2]
				"~Kanonensperrfeuer", -- [3]
				20, -- [4]
				252185, -- [5]
				"cd", -- [6]
				257305, -- [7]
				3, -- [8]
				"2095", -- [9]
				["id"] = 2096,
			},
			["ej5927"] = {
				"ej5927", -- [1]
				"Timerej5927next", -- [2]
				"Heidnischer Wächter", -- [3]
				27.5, -- [4]
				970886, -- [5]
				"next", -- [6]
				"ej5927", -- [7]
				1, -- [8]
				"569", -- [9]
				["id"] = 1938,
			},
			["ej21308"] = {
				"ej21308", -- [1]
				"Timerej21308cdcount	1", -- [2]
				"~Gedankenernter (1)", -- [3]
				15, -- [4]
				254105, -- [5]
				"cdcount", -- [6]
				"ej21308", -- [7]
				1, -- [8]
				"2375", -- [9]
				["id"] = 2344,
			},
			["30739"] = {
				"30739", -- [1]
				"Timer30739cd", -- [2]
				"~Klingentanz", -- [3]
				72, -- [4]
				132350, -- [5]
				"cd", -- [6]
				30739, -- [7]
				2, -- [8]
				"569", -- [9]
				["id"] = 1938,
			},
			["307371"] = {
				"307371", -- [1]
				"Timer307371target	Felôk", -- [2]
				"Gebrochene Entschlossenheit: Felôk", -- [3]
				6, -- [4]
				3163621, -- [5]
				"target", -- [6]
				307371, -- [7]
				3, -- [8]
				"2370", -- [9]
				["id"] = 2336,
			},
			["ej5930"] = {
				"ej5930", -- [1]
				"Timerej5930next", -- [2]
				"Häscherwächter", -- [3]
				21, -- [4]
				970886, -- [5]
				"next", -- [6]
				"ej5930", -- [7]
				1, -- [8]
				"569", -- [9]
				["id"] = 1938,
			},
			["118958"] = {
				"118958", -- [1]
				"Timer118958target	Eisenhaut der Glintrok", -- [2]
				"Eiserner Beschützer: Eisenhaut der Glintrok", -- [3]
				15, -- [4]
				134951, -- [5]
				"target", -- [6]
				118958, -- [7]
				0, -- [8]
				"690", -- [9]
				["id"] = 2129,
			},
			["233431"] = {
				"233431", -- [1]
				"Timer233431cd", -- [2]
				"~Verknöcherte Stacheln", -- [3]
				4, -- [4]
				1029749, -- [5]
				"cd", -- [6]
				233431, -- [7]
				3, -- [8]
				"1867", -- [9]
				["id"] = 2048,
			},
			["306735"] = {
				"306735", -- [1]
				"Timer306735cdcount	1", -- [2]
				"~Kataklysmus (1)", -- [3]
				59.7, -- [4]
				575535, -- [5]
				"cdcount", -- [6]
				306735, -- [7]
				3, -- [8]
				"2368", -- [9]
				["id"] = 2329,
			},
			["228032"] = {
				"228032", -- [1]
				"Timer228032nextcount	1", -- [2]
				"Zorn des Schlunds (1)", -- [3]
				36.5, -- [4]
				237590, -- [5]
				"nextcount", -- [6]
				228032, -- [7]
				2, -- [8]
				"1829", -- [9]
				["id"] = 2008,
			},
			["231854"] = {
				"231854", -- [1]
				"Timer231854nextcount	1", -- [2]
				"Unkontrollierte Wut (1)", -- [3]
				20, -- [4]
				132344, -- [5]
				"nextcount", -- [6]
				231854, -- [7]
				2, -- [8]
				"1856", -- [9]
				["id"] = 2036,
			},
			["306726"] = {
				"306726", -- [1]
				"Timer306726cd", -- [2]
				"~Geschändeter Boden", -- [3]
				3.4, -- [4]
				136201, -- [5]
				"cd", -- [6]
				306726, -- [7]
				3, -- [8]
				"d1995", -- [9]
				["id"] = 2373,
			},
			["275907"] = {
				"275907", -- [1]
				"Timer275907cd", -- [2]
				"~Tektonisches Schmettern", -- [3]
				5, -- [4]
				136025, -- [5]
				"cd", -- [6]
				275907, -- [7]
				3, -- [8]
				"2114", -- [9]
				["id"] = 2106,
			},
			["309046"] = {
				"309046", -- [1]
				"Timer309046next", -- [2]
				"Gedankenpforte", -- [3]
				68, -- [4]
				878214, -- [5]
				"next", -- [6]
				309046, -- [7]
				1, -- [8]
				"2375", -- [9]
				["id"] = 2344,
			},
			["264757"] = {
				"264757", -- [1]
				"Timer264757next", -- [2]
				"Bluttriefendes Festmahl", -- [3]
				6.8, -- [4]
				1394887, -- [5]
				"next", -- [6]
				264757, -- [7]
				3, -- [8]
				"2157", -- [9]
				["id"] = 2111,
			},
			["243982"] = {
				"243982", -- [1]
				"Timer243982cdcount	1", -- [2]
				"~Riss öffnen (1)", -- [3]
				14, -- [4]
				1394890, -- [5]
				"cdcount", -- [6]
				243982, -- [7]
				3, -- [8]
				"1898", -- [9]
				["id"] = 2051,
			},
			["310340"] = {
				"310340", -- [1]
				"Timer310340nextcount	1", -- [2]
				"Ätzenden Aqir beschwören (1)", -- [3]
				59.6, -- [4]
				656595, -- [5]
				"nextcount", -- [6]
				310340, -- [7]
				3, -- [8]
				"2372", -- [9]
				["id"] = 2333,
			},
			["228088"] = {
				"228088", -- [1]
				"Timer228088cd", -- [2]
				"~Verseuchung des Meeres", -- [3]
				12.4, -- [4]
				136030, -- [5]
				"cd", -- [6]
				228088, -- [7]
				3, -- [8]
				"1829", -- [9]
				["id"] = 2008,
			},
			["106853"] = {
				"106853", -- [1]
				"Timer106853cd", -- [2]
				"~Furorfäuste", -- [3]
				23, -- [4]
				305703, -- [5]
				"cd", -- [6]
				106853, -- [7]
				0, -- [8]
				"657", -- [9]
				["id"] = 1304,
			},
			["307260"] = {
				"307260", -- [1]
				"Timer307260cdcount	1", -- [2]
				"~Fixieren (1)", -- [3]
				31, -- [4]
				841383, -- [5]
				"cdcount", -- [6]
				307260, -- [7]
				3, -- [8]
				"2367", -- [9]
				["id"] = 2335,
			},
			["193367"] = {
				"193367", -- [1]
				"Timer193367cd	Creature-0-3110-1648-25422-114709-0000136FB9", -- [2]
				"~Eitrige Fäulnis", -- [3]
				7, -- [4]
				132100, -- [5]
				"cd", -- [6]
				193367, -- [7]
				3, -- [8]
				"1829", -- [9]
				["id"] = 2008,
			},
			["312710"] = {
				"312710", -- [1]
				"Timer312710nextcount	1", -- [2]
				"Flugschwarm rufen (1)", -- [3]
				67.6, -- [4]
				136243, -- [5]
				"nextcount", -- [6]
				312710, -- [7]
				1, -- [8]
				"2372", -- [9]
				["id"] = 2333,
			},
			["296551"] = {
				"296551", -- [1]
				"Timer296551cd", -- [2]
				"~Überwältigendes Sperrfeuer", -- [3]
				40.1, -- [4]
				1412208, -- [5]
				"cd", -- [6]
				296551, -- [7]
				2, -- [8]
				"2352", -- [9]
				["id"] = 2298,
			},
			["260879"] = {
				"260879", -- [1]
				"Timer260879cd", -- [2]
				"~Blutblitz", -- [3]
				6.1, -- [4]
				538040, -- [5]
				"cd", -- [6]
				260879, -- [7]
				4, -- [8]
				"2157", -- [9]
				["id"] = 2111,
			},
			["308044"] = {
				"308044", -- [1]
				"Timer308044cd", -- [2]
				"~Vernichtung", -- [3]
				40.2, -- [4]
				463286, -- [5]
				"cd", -- [6]
				308044, -- [7]
				2, -- [8]
				"2365", -- [9]
				["id"] = 2327,
			},
			["229119"] = {
				"229119", -- [1]
				"Timer229119next	1	Distanz", -- [2]
				"Nächste Kugeln (1-Distanz)", -- [3]
				18, -- [4]
				1097742, -- [5]
				"next", -- [6]
				229119, -- [7]
				3, -- [8]
				"1829", -- [9]
				["id"] = 2008,
			},
			["236571"] = {
				"236571", -- [1]
				"Timer236571cd", -- [2]
				"~Schattenhafte Klingen", -- [3]
				27, -- [4]
				1035040, -- [5]
				"cd", -- [6]
				236571, -- [7]
				3, -- [8]
				"1873", -- [9]
				["id"] = 2038,
			},
			["20534"] = {
				"20534", -- [1]
				"Timer20534cd", -- [2]
				"~Teleportieren", -- [3]
				19.4, -- [4]
				135736, -- [5]
				"cd", -- [6]
				20534, -- [7]
				5, -- [8]
				"Majordomo", -- [9]
				["id"] = 671,
			},
			["239739"] = {
				"239739", -- [1]
				"Timer239739nextcount	1", -- [2]
				"Dunkles Mal (1)", -- [3]
				21, -- [4]
				633004, -- [5]
				"nextcount", -- [6]
				239739, -- [7]
				3, -- [8]
				"1873", -- [9]
				["id"] = 2038,
			},
			["106933"] = {
				"106933", -- [1]
				"Timer106933target	Gnomico", -- [2]
				"Beutezeit: Gnomico", -- [3]
				5, -- [4]
				132278, -- [5]
				"target", -- [6]
				106933, -- [7]
				5, -- [8]
				"675", -- [9]
				["id"] = 1405,
			},
			["238430"] = {
				"238430", -- [1]
				"Timer238430cdcount	1", -- [2]
				"~Berstende Schreckensflamme (1)", -- [3]
				7.7, -- [4]
				460698, -- [5]
				"cdcount", -- [6]
				238430, -- [7]
				3, -- [8]
				"1898", -- [9]
				["id"] = 2051,
			},
			["70372"] = {
				"70372", -- [1]
				"Timer70372next", -- [2]
				"Torkelnden Schrecken beschwören", -- [3]
				20, -- [4]
				237524, -- [5]
				"next", -- [6]
				70372, -- [7]
				1, -- [8]
				"LichKing", -- [9]
				["id"] = 1106,
			},
			["235271"] = {
				"235271", -- [1]
				"Timer235271nextcount	1", -- [2]
				"Infusion (1)", -- [3]
				40, -- [4]
				1122135, -- [5]
				"nextcount", -- [6]
				235271, -- [7]
				3, -- [8]
				"1897", -- [9]
				["id"] = 2052,
			},
			["258338"] = {
				"258338", -- [1]
				"Timer258338cd", -- [2]
				"~Betäubendes Fass", -- [3]
				20.7, -- [4]
				132620, -- [5]
				"cd", -- [6]
				258338, -- [7]
				3, -- [8]
				"2093", -- [9]
				["id"] = 2094,
			},
			["284360"] = {
				"284360", -- [1]
				"Timer284360cd", -- [2]
				"~Meeressturm", -- [3]
				6, -- [4]
				135857, -- [5]
				"cd", -- [6]
				284360, -- [7]
				3, -- [8]
				"2337", -- [9]
				["id"] = 2280,
			},
			["227629"] = {
				"227629", -- [1]
				"Timer227629cast", -- [2]
				"Unfehlbarer Schlag ", -- [3]
				33, -- [4]
				135981, -- [5]
				"cast", -- [6]
				227629, -- [7]
				2, -- [8]
				"1819", -- [9]
				["id"] = 1958,
			},
			["192680"] = {
				"192680", -- [1]
				"Timer192680cd", -- [2]
				"~Mystischer Tornado", -- [3]
				8.5, -- [4]
				606549, -- [5]
				"cd", -- [6]
				192680, -- [7]
				3, -- [8]
				"1492", -- [9]
				["id"] = 1814,
			},
			["144800"] = {
				"144800", -- [1]
				"Timer144800next", -- [2]
				"Selbstreflexion", -- [3]
				25, -- [4]
				895885, -- [5]
				"next", -- [6]
				144800, -- [7]
				1, -- [8]
				"867", -- [9]
				["id"] = 1604,
			},
			["256060"] = {
				"256060", -- [1]
				"Timer256060cd", -- [2]
				"~Belebendes Gebräu", -- [3]
				20.6, -- [4]
				132800, -- [5]
				"cd", -- [6]
				256060, -- [7]
				4, -- [8]
				"2102", -- [9]
				["id"] = 2093,
			},
			["ej8262"] = {
				"ej8262", -- [1]
				"Timerej8262next", -- [2]
				"Manifestation des Stolzes", -- [3]
				60, -- [4]
				627685, -- [5]
				"next", -- [6]
				"ej8262", -- [7]
				1, -- [8]
				"867", -- [9]
				["id"] = 1604,
			},
			["275014"] = {
				"275014", -- [1]
				"Timer275014cd", -- [2]
				"~Faule Wasser", -- [3]
				3.4, -- [4]
				463570, -- [5]
				"cd", -- [6]
				275014, -- [7]
				5, -- [8]
				"2140", -- [9]
				["id"] = 2100,
			},
			["306953"] = {
				"306953", -- [1]
				"Timer306953cd", -- [2]
				"~Spucken", -- [3]
				10.1, -- [4]
				132107, -- [5]
				"cd", -- [6]
				306953, -- [7]
				5, -- [8]
				"2367", -- [9]
				["id"] = 2335,
			},
			["298242"] = {
				"298242", -- [1]
				"Timer298242cd", -- [2]
				"~Inkubationsflüssigkeit", -- [3]
				18.6, -- [4]
				893779, -- [5]
				"cd", -- [6]
				298242, -- [7]
				3, -- [8]
				"2351", -- [9]
				["id"] = 2303,
			},
			["273271"] = {
				"273271", -- [1]
				"Timer273271cd", -- [2]
				"~Instabile Kapseln", -- [3]
				20.4, -- [4]
				620828, -- [5]
				"cd", -- [6]
				273271, -- [7]
				3, -- [8]
				"2130", -- [9]
				["id"] = 2112,
			},
			["313334"] = {
				"313334", -- [1]
				"Timer313334fades", -- [2]
				"N'Zoths Geschenk schwindet", -- [3]
				20, -- [4]
				136204, -- [5]
				"fades", -- [6]
				313334, -- [7]
				5, -- [8]
				"2366", -- [9]
				["id"] = 2337,
			},
			["118961"] = {
				"118961", -- [1]
				"Timer118961target	Gnomico", -- [2]
				"Jagen: Gnomico", -- [3]
				11, -- [4]
				461121, -- [5]
				"target", -- [6]
				118961, -- [7]
				0, -- [8]
				"657", -- [9]
				["id"] = 1304,
			},
			["232827"] = {
				"232827", -- [1]
				"Timer232827cdcount	1", -- [2]
				"~Brechende Welle (1)", -- [3]
				30, -- [4]
				135861, -- [5]
				"cdcount", -- [6]
				232827, -- [7]
				3, -- [8]
				"1861", -- [9]
				["id"] = 2037,
			},
			["72378"] = {
				"72378", -- [1]
				"Timer72378next", -- [2]
				"Blutnova", -- [3]
				20, -- [4]
				237513, -- [5]
				"next", -- [6]
				72378, -- [7]
				2, -- [8]
				"Deathbringer", -- [9]
				["id"] = 1096,
			},
			["298651"] = {
				"298651", -- [1]
				"Timer298651cd", -- [2]
				"~Gas geben", -- [3]
				4.4, -- [4]
				2115321, -- [5]
				"cd", -- [6]
				298651, -- [7]
				3, -- [8]
				"2360", -- [9]
				["id"] = 2312,
			},
			["307637"] = {
				"307637", -- [1]
				"Timer307637nextcount	1", -- [2]
				"Evolution (1)", -- [3]
				19.6, -- [4]
				236302, -- [5]
				"nextcount", -- [6]
				307637, -- [7]
				3, -- [8]
				"2372", -- [9]
				["id"] = 2333,
			},
			["107047"] = {
				"107047", -- [1]
				"Timer107047next", -- [2]
				"Durchbohrender Stoß", -- [3]
				30, -- [4]
				132105, -- [5]
				"next", -- [6]
				107047, -- [7]
				0, -- [8]
				"675", -- [9]
				["id"] = 1405,
			},
			["250096"] = {
				"250096", -- [1]
				"Timer250096cd", -- [2]
				"~Zermürbender Schmerz", -- [3]
				3.5, -- [4]
				236300, -- [5]
				"cd", -- [6]
				250096, -- [7]
				4, -- [8]
				"2030", -- [9]
				["id"] = 2087,
			},
			["255591"] = {
				"255591", -- [1]
				"Timer255591next", -- [2]
				"Geschmolzenes Gold", -- [3]
				16.5, -- [4]
				135903, -- [5]
				"next", -- [6]
				255591, -- [7]
				3, -- [8]
				"2082", -- [9]
				["id"] = 2084,
			},
		},
	},
	["spell_school_cache"] = {
		["Kataklysmische Flammen"] = 4,
		["Arkanbeschuss"] = 64,
		["Dunkles Geschoss"] = 32,
		["Prankenhieb"] = 1,
		["Selbstverblendung"] = 32,
		["Teufelslohenkugel"] = 4,
		["Arkane Bombe"] = 64,
		["Unendliche Sterne"] = 64,
		["Seismischer Splitter"] = 1,
		["Verschlingende Schatten"] = 32,
		["Explosivschuss"] = 4,
		["Gebrochene Entschlossenheit"] = 32,
		["Diskom-BOMB-ulator"] = 8,
		["Morast der Verderbnis"] = 32,
		["Ätzender Überzug"] = 32,
		["Lavapfützen"] = 4,
		["Dunkler Durchgang"] = 32,
		["Instabiles Gebrechen"] = 32,
		["Gebet der Heilung"] = 2,
		["Zwielichtdezimierer"] = 32,
		["Umhüllung der Trauer"] = 32,
		["Arktische Kühle"] = 16,
		["Blütenschuss"] = 8,
		["Dunkle Wasser"] = 32,
		["Gedankenbenebelndes Toxin"] = 8,
		["Frostaura"] = 16,
		["Runenrückwirkung"] = 40,
		["Tiefe Wunden"] = 1,
		["Teufelsböe"] = 4,
		["Folterblitz"] = 32,
		["Schlagkräftig"] = 1,
		["Übergreifender Sturm"] = 8,
		["Brennende Sohlen"] = 4,
		["Meeressturm"] = 16,
		["Würgewurzeln"] = 8,
		["Schmettertentakel"] = 8,
		["Zerlegungsprotokoll"] = 1,
		["Magenblähung"] = 40,
		["Geschmolzenes Gold"] = 4,
		["Schattenwunden"] = 32,
		["Kanonenfeuer"] = 4,
		["Mondbrand"] = 64,
		["Gotteshymne"] = 2,
		["Chaotische Eruption"] = 4,
		["Wachsende Hitze"] = 4,
		["Seuchenschlag"] = 8,
		["Toxischer Stachel"] = 8,
		["Fallendes Fleisch"] = 32,
		["Entfesselte Leere"] = 32,
		["Phönixflammen"] = 4,
		["Entropische Ansammlung"] = 32,
		["Fokussierter Azeritstrahl"] = 4,
		["Wiederkehrender Alptraum"] = 32,
		["Heldenhafter Sprung"] = 1,
		["Fluch der Verdammnis"] = 32,
		["Schmelzofenflammen"] = 4,
		["Endlose Leere"] = 32,
		["Septische Besudelung"] = 8,
		["Aura der Gleichgültigkeit"] = 1,
		["Säureschauer"] = 8,
		["Frostblitz"] = 16,
		["Lodernder Biss"] = 4,
		["Arkanadoexplosion"] = 16,
		["Werfen"] = 1,
		["Feuerbrand"] = 4,
		["Seetangwickel"] = 8,
		["Übler Überzug"] = 8,
		["Zwielichtatem"] = 32,
		["Frostmal"] = 16,
		["Lodernde Barriere"] = 4,
		["Brennendes Schrapnell"] = 4,
		["Tanzende Klinge"] = 1,
		["Schreckenssalve"] = 64,
		["Explosion"] = 4,
		["Dunkler Wirbel"] = 1,
		["Kristallsplitter"] = 8,
		["Spur des Ruins"] = 124,
		["Diener von N'Zoth"] = 32,
		["Schaumwall"] = 16,
		["Zündung"] = 4,
		["Knochensäge"] = 1,
		["Gleißende Wut"] = 64,
		["Fieser Trick"] = 1,
		["Gezackte Scheibe"] = 1,
		["Überspringendes Azerit"] = 64,
		["Schneidendes Eis"] = 16,
		["Gravitationsbrunnen"] = 32,
		["Blutsauger"] = 32,
		["Üble Galle"] = 8,
		["Boshaftes Zerfleischen"] = 1,
		["Auge der Verderbnis"] = 32,
		["Feuerball"] = 4,
		["Schneidende Koralle"] = 8,
		["Säurepfütze"] = 8,
		["Umarmung der Finsternis"] = 64,
		["Seelenzerfetzer"] = 32,
		["Disharmonisches Solo"] = 32,
		["Flammen ablassen"] = 4,
		["Salzige Lache"] = 16,
		["Toxische Pfütze"] = 8,
		["Kristallstacheln"] = 8,
		["Verderbnis"] = 32,
		["Eruption"] = 4,
		["Entropischer Panzer"] = 32,
		["Seele fragmentieren"] = 32,
		["Verwüsten"] = 1,
		["Tiro-Autom�tico"] = 1,
		["Überwältigen"] = 1,
		["Wirbelwindsäbel"] = 8,
		["Giftiger Panzer"] = 8,
		["Zielsuchrakete"] = 4,
		["Qual"] = 32,
		["Faule Wasser"] = 16,
		["Tobsuchtsanfall"] = 1,
		["Aufgedecktes Azerit"] = 64,
		["Arkanfäuste des Rächers"] = 64,
		["Feuerring"] = 4,
		["Obsidianhaut"] = 64,
		["Alptraumbombe"] = 32,
		["Leerenberührt"] = 32,
		["Wasserschild"] = 16,
		["Fressattacke"] = 1,
		["Aura der Dornen"] = 1,
		["Gefrorener Sturm"] = 16,
		["Haftende Statik"] = 8,
		["Verhängnis des Gladiators"] = 32,
		["Blitze schleudern"] = 8,
		["Wuchernde Schatten"] = 32,
		["Verzerrungsbombe"] = 64,
		["Ventilausstoß"] = 8,
		["Schreckensinferno"] = 4,
		["Siechende Übelkeit"] = 8,
		["Fass zerschmettern"] = 1,
		["Verblüffendes Starren"] = 32,
		["Leerenblick"] = 32,
		["Roter Nebel"] = 8,
		["Schattenschock"] = 32,
		["Resonantes Erdbeben"] = 1,
		["Verwandelt"] = 64,
		["Flammenschock"] = 4,
		["Wasserspritzer"] = 16,
		["Zermürbender Blitz"] = 32,
		["Karottenatem"] = 1,
		["Apokalyptischer Alptraum"] = 4,
		["Überwuchertes Tentakel"] = 8,
		["Magnetarm"] = 8,
		["Kristallsturm"] = 8,
		["Vitalitätsverbindung"] = 8,
		["Säurebombe"] = 8,
		["Seelenmahl"] = 32,
		["Klingenfluss"] = 1,
		["Umschlingende Schatten"] = 32,
		["Meteorbrand"] = 4,
		["Neustartendes Bitband"] = 8,
		["Unendliche Finsternis"] = 32,
		["Paranoia"] = 32,
		["Teufelsschlag"] = 4,
		["Gift"] = 8,
		["Pyroschlag"] = 4,
		["Leuchtfeuer"] = 4,
		["Instabile Vita"] = 8,
		["Unkontrollierte Wut"] = 1,
		["Instabile Explosion"] = 32,
		["Sturmesheulen"] = 8,
		["Anschwellender Ansturm"] = 16,
		["Heldenhafter Wurf"] = 1,
		["Ansteckende Überreste"] = 8,
		["Sprengkanone"] = 8,
		["Leerenpeitsche"] = 32,
		["Haitornado"] = 1,
		["Heiliger Zorn"] = 2,
		["Schreckliche Wunde"] = 1,
		["Dämonenbiss"] = 1,
		["Automatischer Schuss"] = 1,
		["Toxischer Blitz"] = 8,
		["Emporstoßen"] = 1,
		["Machtgriff"] = 1,
		["Zorn der Schöpfer"] = 4,
		["Illusionärer Blitz"] = 32,
		["Dämpfende Welle"] = 32,
		["Dunkles Starren"] = 32,
		["Bombenlauf"] = 4,
		["Arkblitz"] = 8,
		["Zorn der Tiefe"] = 16,
		["Dornenblitz"] = 1,
		["Verderbtes Gold"] = 4,
		["Korrosion"] = 8,
		["Spinnlingtoxin"] = 8,
		["Vernichtender Schlag"] = 1,
		["Schäumender Ausbruch"] = 8,
		["Wurzeleruption"] = 1,
		["Fermentierung"] = 1,
		["Karmaberührung"] = 8,
		["Heiliger Schild"] = 2,
		["Chaosblitz"] = 124,
		["Knochensplitter"] = 1,
		["Schrottbombe"] = 4,
		["Ermächtigter Schmiedeatem"] = 4,
		["Bodenhämmern"] = 1,
		["Erdbeben"] = 1,
		["Eingeschleimt"] = 40,
		["Instabiles Runenmal"] = 32,
		["Gift spucken"] = 8,
		["Explosive Eruption"] = 4,
		["Verderbendes Geschwür"] = 32,
		["Seismische Welle"] = 1,
		["Blitzatem"] = 8,
		["Tornadotritt"] = 1,
		["Schattenhafte Überreste"] = 32,
		["Realitätsriss"] = 32,
		["Heilige Pein"] = 2,
		["Vernichtung"] = 32,
		["Klaue"] = 1,
		["Bioelektrische Fühler"] = 8,
		["Manifestierter Wahnsinn"] = 32,
		["Lavaeruption"] = 4,
		["Blutige Sauerei"] = 1,
		["Gefrorene Kugel"] = 16,
		["Überladene Seele"] = 8,
		["Verätzung"] = 8,
		["Manisches Gegacker"] = 32,
		["Magie verschlingen"] = 32,
		["Blutsturzexplosion"] = 32,
		["Bombardement"] = 4,
		["Entwurzeln"] = 8,
		["Obsidianklaue"] = 32,
		["Pein"] = 32,
		["Donnernder Knall"] = 8,
		["Leerenverzauberte Waffe"] = 32,
		["Schattenblitz"] = 32,
		["Strom"] = 16,
		["Schnappdrachentoxin"] = 8,
		["Blitzschlag"] = 8,
		["Versengende Brandblase"] = 4,
		["Schildstachel"] = 1,
		["Brandgeschosse"] = 4,
		["Azeritsalve"] = 5,
		["Furorfäuste (Schlag)"] = 4,
		["Herunterstürzen"] = 1,
		["Entfesselte Vita"] = 8,
		["Wirbelwind"] = 1,
		["Zielwasser"] = 1,
		["Überspringender Stromschlag"] = 8,
		["Überwältigendes Toxin"] = 8,
		["Azeritschuss"] = 65,
		["Verschlingende Raserei"] = 8,
		["Lavateich"] = 4,
		["Toxischer Schlick"] = 8,
		["Klingenkata"] = 1,
		["Krankheitswolke"] = 8,
		["Verbotenes Mana"] = 64,
		["Schlangengift"] = 8,
		["Drakonische Ermächtigung"] = 1,
		["Leerenverderbnis"] = 32,
		["Brennendes Gestrüpp"] = 4,
		["Ewige Qualen"] = 32,
		["Seelenfluch"] = 32,
		["Schmetterbohrer"] = 1,
		["Feuersbrunst"] = 4,
		["Geistiger Verfall"] = 32,
		["Azeritkatalysator"] = 4,
		["Frostfeuerblitz"] = 20,
		["Licht ausstoßen"] = 2,
		["Raubtierhiebe"] = 1,
		["Ausbrechende Kälte"] = 16,
		["Ranziger Schlamm"] = 8,
		["Kettenblitzschlag"] = 8,
		["Brocken werfen"] = 1,
		["Gemurmel von Verrat"] = 1,
		["Boshafter Angriff"] = 32,
		["Verderbte Eingeweide"] = 32,
		["Einäscherung"] = 4,
		["Schreckensschlag"] = 32,
		["Instabile Verderbnis"] = 32,
		["Biss"] = 1,
		["Entropische Umarmung"] = 48,
		["Spuren der Ewigkeit"] = 32,
		["Frischer Fisch"] = 1,
		["Auslöschen (Schildhand)"] = 1,
		["Sprudelndes Bräu"] = 16,
		["Chaosstoß"] = 127,
		["Feuerschlag"] = 4,
		["Zerschmettern"] = 1,
		["Spalten"] = 1,
		["Riesiger Insektenschwarm"] = 1,
		["Wirbelnde Axt"] = 1,
		["Ring der Bosheit"] = 32,
		["Kräuselnde Welle"] = 16,
		["Schneidestrahl"] = 8,
		["Donnerknall"] = 8,
		["Seelenpein"] = 32,
		["Fleischrandale"] = 1,
		["Alphakanone"] = 4,
		["Strahlende Biomasse"] = 8,
		["Magnethülle"] = 8,
		["Verfall"] = 8,
		["Lichtschimmer"] = 2,
		["Brennender Ansturm"] = 1,
		["Echos von Shadra"] = 32,
		["Verstärkungszauberschutz"] = 8,
		["Entropische Explosion"] = 32,
		["Gewitter"] = 8,
		["Vergiftete Klauen"] = 8,
		["Nullifikation"] = 32,
		["Reißendes Zermalmen"] = 1,
		["Suchen und zerstören"] = 32,
		["Infizierter Dorn"] = 8,
		["Arkanado"] = 16,
		["Blizzard"] = 16,
		["Deckung"] = 1,
		["Sengende Rüstung"] = 4,
		["Seelenspalter"] = 1,
		["Berstende Schreckensflamme"] = 4,
		["Elektroschockschlag"] = 8,
		["Tröpfelndes Sekret"] = 8,
		["Auslöschen"] = 1,
		["Mondfeuer"] = 64,
		["Zurechtweisung"] = 1,
		["Sturmkraft"] = 8,
		["Erdrutsch"] = 8,
		["Rasender Angriff"] = 1,
		["Zwirbelwind"] = 1,
		["Infernoeinschlag"] = 4,
		["Eiszapfen"] = 16,
		["Frostfieber"] = 16,
		["Arkaner Schuss"] = 64,
		["Aufspießen"] = 1,
		["Pyroklastischer Fluss"] = 4,
		["Umbraleruption"] = 32,
		["Meeresflut"] = 16,
		["Gegenwind"] = 8,
		["Wasserausbruch"] = 16,
		["Zermürbender Schmerz"] = 32,
		["Kanonensperrfeuer"] = 4,
		["Reiffrost"] = 16,
		["Stoß"] = 1,
		["Gieriger Sprung"] = 1,
		["Rauchwolke"] = 8,
		["Feurige Trümmer"] = 4,
		["Unreines Blut"] = 32,
		["Demolieren"] = 1,
		["Anker der Bindung"] = 16,
		["Zersetzende Sporen"] = 40,
		["Exitus"] = 32,
		["Kettenblitzüberladung"] = 8,
		["Myzelgeschwür"] = 8,
		["Verbrennen"] = 4,
		["Wilder Spalter"] = 1,
		["Spucken"] = 8,
		["K.4.M.P.F.-Mine"] = 1,
		["Das Herz der Dunkelheit"] = 32,
		["Sengendes Reagenz"] = 4,
		["Schuppen von Furorion"] = 4,
		["Goblindrachengewehr"] = 4,
		["Adaptive Membran"] = 32,
		["Toxische Dämpfe"] = 40,
		["Blutegel"] = 1,
		["Vernichtungsimpuls"] = 8,
		["Gähnendes Tor"] = 32,
		["Dolch im Rücken"] = 1,
		["Überwältigender Frost"] = 16,
		["Antimanipulationsschock"] = 8,
		["Abfangen"] = 1,
		["Abscheren"] = 1,
		["Seelenbombe"] = 4,
		["Eisensalve"] = 1,
		["Flinkschuss"] = 32,
		["Speer werfen"] = 1,
		["Schmerzhafter Riss"] = 1,
		["Zwielichtgleve"] = 32,
		["Kristalliner Boden"] = 8,
		["Sha-Vortex"] = 32,
		["Epidemie"] = 32,
		["Schwarze Narbe"] = 32,
		["Umbralpanzer"] = 32,
		["Gezackte Abreibung"] = 1,
		["Stechendes Gift"] = 8,
		["Strahlende Inkandeszenz"] = 2,
		["G'huuns Verderbnis"] = 32,
		["Sturmangriff"] = 1,
		["Leuchtendes Fragment"] = 2,
		["Azeritbeschuss"] = 2,
		["Getriebener Feuerball"] = 4,
		["Verschlingen"] = 1,
		["Zorn"] = 8,
		["Abrechnung des Sturms"] = 8,
		["Dornensperrfeuer"] = 1,
		["Beben"] = 1,
		["Schnitterstrudel"] = 8,
		["Erschütterungsgranate"] = 4,
		["Verzehrende Schatten"] = 32,
		["Zappelhai"] = 1,
		["Verlockendes Lied"] = 8,
		["Verfluchtes Blut"] = 32,
		["Auflodern des Großbrands"] = 4,
		["Geschmolzene Eruption"] = 4,
		["Seelenverbindung"] = 1,
		["Mehrköpfig"] = 1,
		["Flammen des Wahnsinns"] = 4,
		["Stachelpfeil"] = 1,
		["Zubeißen"] = 1,
		["Durchstoßen"] = 1,
		["Vulkaneruption"] = 4,
		["Hagel"] = 16,
		["Klingenwirbel"] = 1,
		["Wirbelnder Kranichtritt"] = 1,
		["Finstere Manifestation"] = 32,
		["Schweres Schlitzen"] = 1,
		["Drohruf"] = 1,
		["Schmähen"] = 32,
		["Zerschmetternde Nova"] = 4,
		["Rundumschlag"] = 1,
		["Verderbte Berührung"] = 32,
		["Umbralabneigung"] = 32,
		["Durchbohrender Speer"] = 1,
		["Stechender Schwarm"] = 1,
		["Tödliches Gift"] = 8,
		["Tödliche Hiebe"] = 4,
		["Eruption der Manie"] = 32,
		["Pulverschuss"] = 1,
		["Düsenstrahl"] = 4,
		["Toxisches Mal"] = 8,
		["Segenswort: Züchtigung"] = 2,
		["Toxische Lache"] = 8,
		["Flammende Ablehnung"] = 4,
		["Stampfen"] = 1,
		["Hereinbrechende Flut"] = 16,
		["Sandsturm"] = 8,
		["Zermalmen"] = 1,
		["Gigaschock"] = 8,
		["Leerengefängnis"] = 32,
		["Ritualfeld"] = 32,
		["Stinkendes Maul"] = 8,
		["Erstickendes Meerwasser"] = 16,
		["Erschütternder Schuss"] = 1,
		["Klaffende Wunde"] = 1,
		["Übler Gestank des großen Wurms"] = 1,
		["Okzipitalexplosion"] = 32,
		["Megatazer"] = 8,
		["Entfesselter Wahnsinn"] = 32,
		["Entsetzlicher Blitz"] = 32,
		["Leerenblitz"] = 32,
		["Septischer Boden"] = 8,
		["Infizieren"] = 8,
		["Instabiler Leerenstoß"] = 32,
		["Pistolenschuss"] = 4,
		["Flammenschlabbern"] = 4,
		["Säurespritzer"] = 8,
		["Umhüllende Winde"] = 8,
		["Entkräftender Speichel"] = 8,
		["Tosende Stromschnellen"] = 8,
		["Kobraschuss"] = 1,
		["Dunkler Kollaps"] = 32,
		["Leerendurchsetztes Sekret"] = 1,
		["Explosivmunition"] = 4,
		["Aquäusausbruch"] = 16,
		["Lauffeuer"] = 8,
		["Sternenbrand"] = 4,
		["Verachtung"] = 16,
		["Kristallbeschuss"] = 1,
		["Schmerzenswindungen"] = 8,
		["Schnellfeuer"] = 1,
		["Das Gesetz der Straße"] = 1,
		["Explosiver Sprung"] = 4,
		["Frostatem"] = 16,
		["Augenstrahl"] = 124,
		["Heiliger Schock"] = 2,
		["Gedankenschinden"] = 32,
		["Trennender Schlag"] = 1,
		["Sha-Dorn"] = 32,
		["Düstere Einsamkeit"] = 32,
		["Feuerblitz"] = 4,
		["Essenz entziehen"] = 32,
		["Schattenwort: Schmerz"] = 32,
		["Geschmolzenes Schmettern"] = 8,
		["Totem der Verbrennung"] = 4,
		["Herbeirufung des Blutes"] = 1,
		["Schild des Rächers"] = 2,
		["Azeritherzsucher"] = 1,
		["Teufelsrausch"] = 127,
		["Anodisierte Deflexion"] = 1,
		["Siegesrausch"] = 1,
		["Sengen"] = 4,
		["Heimtückischer Biss"] = 1,
		["Verrottende Wunde"] = 32,
		["Feuerbrandaura"] = 4,
		["Heimsuchung"] = 32,
		["Durchtränkendes Wasser"] = 16,
		["Sickerndes Sha"] = 32,
		["Spektralgleve"] = 96,
		["Dunkelheit der tausend Seelen"] = 32,
		["Zersetzen"] = 8,
		["Erde erschüttern"] = 1,
		["Schrecklicher Blutsturz"] = 32,
		["Aura des Schreckens"] = 32,
		["Tötungsbefehl"] = 1,
		["Herzstoppergift"] = 1,
		["Instabile Mischung"] = 8,
		["Seelenpein hervorrufen"] = 32,
		["Zeichen der Flamme"] = 4,
		["Schlickausbruch"] = 32,
		["Leerenritual"] = 32,
		["Frostnova"] = 16,
		["Gelassenheit"] = 8,
		["Zorn des Schlunds"] = 16,
		["Lichtinfusion"] = 2,
		["Zerlegen"] = 1,
		["Ergreifende Flammen"] = 4,
		["Fehlfunktionsfunken"] = 4,
		["Feuerregen"] = 4,
		["Sterneneruption"] = 72,
		["Eiplosion"] = 8,
		["Ruf der Tiefe"] = 16,
		["Kolbenkracher"] = 1,
		["Giftdurchwobenes Netz"] = 8,
		["Tödlicher Stoß"] = 1,
		["Entfesselte Qual"] = 32,
		["Verdunkelter Himmel"] = 32,
		["Tikiinferno"] = 4,
		["Flammenstoß"] = 4,
		["Transfusion"] = 32,
		["Uralte Flamme"] = 4,
		["Solarzorn"] = 8,
		["Leerenmiasma"] = 1,
		["Schockimpuls"] = 8,
		["Viq'Goths Zorn"] = 16,
		["Krachender Komet"] = 4,
		["Schneidender Ausbruch"] = 8,
		["Metallkiefer"] = 1,
		["Fleisch zerreißen"] = 1,
		["Corpo-a-Corpo"] = 1,
		["Gefrierender Gezeitentümpel"] = 16,
		["Erstickender Schatten"] = 32,
		["Mantismunitionsexplosion"] = 4,
		["Agonie"] = 32,
		["Stachelausbruch"] = 1,
		["Chaosflammen"] = 124,
		["Arkane Explosion"] = 64,
		["Blenden"] = 1,
		["Orkanschlag"] = 4,
		["Entzug der Dunkelseele"] = 8,
		["Schleichende Fäulnis"] = 8,
		["Klebriger Schlamm"] = 8,
		["Weihe"] = 2,
		["Schießen"] = 1,
		["Brennendes Arsenal"] = 4,
		["Knisternder Blitz"] = 8,
		["Drachenodem"] = 4,
		["Turboboost"] = 8,
		["Brennender Boden"] = 4,
		["Schattenschlag"] = 32,
		["Dezimierung"] = 32,
		["Toben"] = 1,
		["Toxinauswurf"] = 8,
		["Benommen"] = 1,
		["Mehrfachschuss"] = 1,
		["Chaosbrandmal"] = 125,
		["Schmerzhafter Sprung"] = 1,
		["Nierenhieb"] = 1,
		["Schattenklinge"] = 32,
		["Amniotische Spritzer"] = 8,
		["Kanonenschuss"] = 8,
		["Giftdolch"] = 1,
		["Blutseuche"] = 32,
		["Fauliger Ausstoß"] = 8,
		["Hydrakopf"] = 1,
		["Magische Resonanz"] = 64,
		["Schnelligkeitszauberschutz"] = 8,
		["Loderndes Azerit"] = 4,
		["Ansengen"] = 1,
		["Nahkampf"] = 1,
		["Entzünden"] = 4,
		["Sturmhieb"] = 8,
		["Maschinenkanone"] = 1,
		["Magmabrecher"] = 4,
		["Sandfalle"] = 8,
		["Alptraumantikörper"] = 32,
		["Geladene Bindung"] = 8,
		["Psychischer Nachhall"] = 32,
		["Platzen"] = 32,
		["Wasserfontäne"] = 8,
		["Finsterer Stoß"] = 1,
		["Seelenschinden"] = 32,
		["Zwielichtsalve"] = 32,
		["Bestrafen"] = 1,
		["Sha-Rückstände"] = 32,
		["Einkerkern"] = 32,
		["Erbrechen"] = 8,
		["Kniesehne"] = 1,
		["Schafschrapnell"] = 4,
		["Einsturz"] = 1,
		["Azeritkugeln"] = 4,
		["Trennende Schläge"] = 1,
		["Blitzschlag beschwören"] = 8,
		["Schattenhafte Klingen"] = 32,
		["Schattenpfütze"] = 32,
		["Jagdsprung"] = 1,
		["Illidans blinder Blick"] = 4,
		["Ausbrechendes Toxin"] = 8,
		["Ewige Finsternis"] = 32,
		["Innere Verbrennung"] = 4,
		["Verwüstung"] = 32,
		["Klingentanz"] = 1,
		["Giftiger Biss"] = 1,
		["Coldflame Trap"] = 16,
		["Selbststutzende Hecke"] = 1,
		["Konzentrierte Flamme"] = 4,
		["Uralter Geistbeuger"] = 32,
		["Verzweiflung"] = 32,
		["Aasschwarm"] = 32,
		["Dämonischer Obelisk"] = 4,
		["Funkensalve"] = 8,
		["Tornadoschlag"] = 1,
		["Eruption des Wahnsinns"] = 32,
		["Massenumschlingung"] = 8,
		["Brennender Kataklysmus"] = 4,
		["Obsidianexplosion"] = 32,
		["Armageddonverwüstung"] = 4,
		["Brennende Fäuste"] = 4,
		["Zusammenstoßen"] = 1,
		["Unerträgliche Eruption"] = 32,
		["Gieriger Ansturm"] = 1,
		["Instabile Leere"] = 32,
		["Verzehrung"] = 32,
		["Verseuchte Pfeile"] = 32,
		["Armageddonregen"] = 4,
		["Elementiumstachelschild"] = 64,
		["\"Versteckte\" Flammenkanone"] = 4,
		["Heulende Böe"] = 16,
		["Der Quell des Seins"] = 8,
		["Stygische Vernichtung"] = 32,
		["Schnappschuss"] = 1,
		["Inkubationsflüssigkeit"] = 8,
		["Hyperantriebsentladung"] = 8,
		["Schattenbiss"] = 32,
		["Verschlingender Schlund"] = 16,
		["Gletschereinschlag"] = 16,
		["Vergoldete Krallen"] = 1,
		["Seelendornen"] = 1,
		["Wogende Dunkelheit"] = 32,
		["Toxischer Gestank"] = 8,
		["Pfeilgeschoss"] = 1,
		["Gravitationsverlust"] = 64,
		["Plasmakugel"] = 8,
		["Mikroraketen"] = 4,
		["Überschüssige Energie"] = 8,
		["Alles ist verbunden"] = 1,
		["Schwarze Salve"] = 32,
		["Verderbnis entfesseln"] = 32,
		["Ansturm"] = 1,
		["Ruin"] = 40,
		["Salzblase"] = 8,
		["Griff aus den Tiefen"] = 48,
		["Gezackter Schnitt"] = 1,
		["Durchnässt"] = 16,
		["Verwegener Schlitzer"] = 1,
		["Berührung der Pein"] = 1,
		["Gefrorener Boden"] = 16,
		["Todeslinse"] = 32,
		["Wahnsinnsanstachelung"] = 32,
		["Rüstung zerreißen"] = 1,
		["Explosive Leere"] = 32,
		["Sturmgewitter"] = 8,
		["Seelenmanipulation"] = 32,
		["Kreissäge"] = 1,
		["Klingensturm"] = 1,
		["Schattenklauen"] = 1,
		["Knisternder Jadeblitz"] = 8,
		["Schattenhafte Rückstände"] = 32,
		["Verschlungener Abgrund"] = 32,
		["Zustoßen"] = 1,
		["Hört meinen Ruf"] = 8,
		["Leereneruption"] = 32,
		["Hauen"] = 1,
		["Wasserblitz"] = 16,
		["Höllenstachel"] = 4,
		["Instabile Seele"] = 4,
		["Treibgasbrand"] = 8,
	},
	["deathlog_healingdone_min"] = 1,
	["plater"] = {
		["realtime_dps_enabled"] = false,
		["damage_taken_anchor"] = {
			["y"] = 0,
			["x"] = 0,
			["side"] = 7,
		},
		["realtime_dps_player_shadow"] = true,
		["damage_taken_enabled"] = false,
		["realtime_dps_player_size"] = 12,
		["damage_taken_size"] = 12,
		["realtime_dps_color"] = {
			1, -- [1]
			1, -- [2]
			0, -- [3]
			1, -- [4]
		},
		["realtime_dps_anchor"] = {
			["y"] = 0,
			["x"] = 0,
			["side"] = 7,
		},
		["realtime_dps_size"] = 12,
		["damage_taken_shadow"] = true,
		["damage_taken_color"] = {
			1, -- [1]
			1, -- [2]
			0, -- [3]
			1, -- [4]
		},
		["realtime_dps_player_color"] = {
			1, -- [1]
			1, -- [2]
			0, -- [3]
			1, -- [4]
		},
		["realtime_dps_player_anchor"] = {
			["y"] = 0,
			["x"] = 0,
			["side"] = 7,
		},
		["realtime_dps_player_enabled"] = false,
		["realtime_dps_shadow"] = true,
	},
	["run_code"] = {
		["on_specchanged"] = "\n-- run when the player changes its spec",
		["on_zonechanged"] = "\n-- when the player changes zone, this code will run",
		["on_init"] = "\n-- code to run when Details! initializes, put here code which only will run once\n-- this also will run then the profile is changed\n\n--size of the death log tooltip in the Deaths display (default 350)\nDetails.death_tooltip_width = 350;\n\n--when in arena or battleground, details! silently switch to activity time (goes back to the old setting on leaving, default true)\nDetails.force_activity_time_pvp = true;\n\n--speed of the bar animations (default 33)\nDetails.animation_speed = 33;\n\n--threshold to trigger slow or fast speed (default 0.45)\nDetails.animation_speed_mintravel = 0.45;\n\n--call to update animations\nDetails:RefreshAnimationFunctions();\n\n--max window size, does require a /reload to work (default 480 x 450)\nDetails.max_window_size.width = 480;\nDetails.max_window_size.height = 450;\n\n--use the arena team color as the class color (default true)\nDetails.color_by_arena_team = true;\n\n--use the role icon in the player bar when inside an arena (default false)\nDetails.show_arena_role_icon = false;\n\n--how much time the update warning is shown (default 10)\nDetails.update_warning_timeout = 10;",
		["on_groupchange"] = "\n-- this code runs when the player enter or leave a group",
		["on_leavecombat"] = "\n-- this code runs when the player leave combat",
		["on_entercombat"] = "\n-- this code runs when the player enters in combat",
	},
	["always_use_profile"] = true,
	["exit_errors"] = {
		"v8.3.0.7282 Interface\\AddOns\\Details\\functions\\savedata.lua:53: attempt to index local 'cprofile' (a boolean value)", -- [1]
	},
	["item_level_pool"] = {
	},
	["realm_sync"] = true,
	["createauraframe"] = {
	},
	["global_plugin_database"] = {
		["DETAILS_PLUGIN_ENCOUNTER_DETAILS"] = {
			["encounter_timers_bw"] = {
			},
			["encounter_timers_dbm"] = {
			},
		},
	},
	["report_where"] = "SAY",
	["savedCustomSpells"] = {
		{
			2, -- [1]
			"Automatische Angriffe", -- [2]
			"Interface\\ICONS\\INV_Weapon_Bow_07", -- [3]
		}, -- [1]
		{
			3, -- [1]
			"Umgebung: (Fallen)", -- [2]
			"Interface\\ICONS\\Spell_Magic_FeatherFall", -- [3]
		}, -- [2]
		{
			55090, -- [1]
			"Geißelstoß (Physical)", -- [2]
			237530, -- [3]
		}, -- [3]
		{
			4, -- [1]
			"Umgebung: (Ertrinken)", -- [2]
			"Interface\\ICONS\\Ability_Suffocate", -- [3]
		}, -- [4]
		{
			5, -- [1]
			"Umgebung: (Erschöpfung)", -- [2]
			"Interface\\ICONS\\Spell_Arcane_MindMastery", -- [3]
		}, -- [5]
		{
			6, -- [1]
			"Umgebung: (Feuer)", -- [2]
			"Interface\\ICONS\\INV_SummerFest_FireSpirit", -- [3]
		}, -- [6]
		{
			7, -- [1]
			"Umgebung: (Lava)", -- [2]
			"Interface\\ICONS\\Ability_Rhyolith_Volcano", -- [3]
		}, -- [7]
		{
			8, -- [1]
			"Umgebung: (Schleim)", -- [2]
			"Interface\\ICONS\\Ability_Creature_Poison_02", -- [3]
		}, -- [8]
		{
			59638, -- [1]
			"Frostblitz (Bilder spiegeln)", -- [2]
			135846, -- [3]
		}, -- [9]
		{
			49184, -- [1]
			"Heulende Böe (Main Target)", -- [2]
			135833, -- [3]
		}, -- [10]
		{
			44461, -- [1]
			"Lebende Bombe (Explosion)", -- [2]
			236220, -- [3]
		}, -- [11]
		{
			278227, -- [1]
			"Borkenstacheln (Trinket)", -- [2]
			134439, -- [3]
		}, -- [12]
		{
			268998, -- [1]
			"Entflammte Seele (Trinket)", -- [2]
			651093, -- [3]
		}, -- [13]
		{
			196917, -- [1]
			"Licht des Märtyrers (Schaden)", -- [2]
			135938, -- [3]
		}, -- [14]
		{
			120761, -- [1]
			"Glevenwurf (Glaive #2)", -- [2]
			132330, -- [3]
		}, -- [15]
		{
			278812, -- [1]
			"Anmut des Löwen (Trinket)", -- [2]
			464140, -- [3]
		}, -- [16]
		{
			270827, -- [1]
			"Seelenedelstein des Netzwebers (Trinket)", -- [2]
			237431, -- [3]
		}, -- [17]
		{
			212739, -- [1]
			"Epidemie (Main Target)", -- [2]
			136066, -- [3]
		}, -- [18]
		{
			279664, -- [1]
			"Blutgalle (Trinket)", -- [2]
			136007, -- [3]
		}, -- [19]
		{
			237680, -- [1]
			"Heulende Böe (AoE)", -- [2]
			135833, -- [3]
		}, -- [20]
		{
			215969, -- [1]
			"Epidemie (AoE)", -- [2]
			136066, -- [3]
		}, -- [21]
		{
			278359, -- [1]
			"Bluthass (Trinket)", -- [2]
			132175, -- [3]
		}, -- [22]
		{
			278155, -- [1]
			"Verbleibende Macht von Xalzaix (Trinket)", -- [2]
			254105, -- [3]
		}, -- [23]
		{
			271115, -- [1]
			"Zünder der Brandmagierin (Trinket)", -- [2]
			1119937, -- [3]
		}, -- [24]
		{
			277179, -- [1]
			"Medaillon des Gladiators (Trinket)", -- [2]
			252267, -- [3]
		}, -- [25]
		{
			70890, -- [1]
			"Geißelstoß (Shadow)", -- [2]
			237530, -- [3]
		}, -- [26]
		{
			278057, -- [1]
			"Flüchtige Blutexplosion (Trinket)", -- [2]
			538040, -- [3]
		}, -- [27]
		{
			277185, -- [1]
			"Abzeichen des Gladiators (Trinket)", -- [2]
			135884, -- [3]
		}, -- [28]
		{
			228649, -- [1]
			"Blackout-Tritt (Passive)", -- [2]
			574575, -- [3]
		}, -- [29]
		{
			121414, -- [1]
			"Glevenwurf (Glaive #1)", -- [2]
			132330, -- [3]
		}, -- [30]
		{
			94472, -- [1]
			"Abbitte (kritisch)", -- [2]
			135887, -- [3]
		}, -- [31]
		{
			277187, -- [1]
			"Emblem des Gladiators (Trinket)", -- [2]
			132344, -- [3]
		}, -- [32]
		{
			277181, -- [1]
			"Insigne des Gladiators (Trinket)", -- [2]
			134501, -- [3]
		}, -- [33]
		{
			278862, -- [1]
			"Kälte der Runen (Trinket)", -- [2]
			252270, -- [3]
		}, -- [34]
		{
			271462, -- [1]
			"Vermoderte Voodoopuppe (Trinket)", -- [2]
			1716867, -- [3]
		}, -- [35]
		{
			270925, -- [1]
			"Wasserfontäne (Trinket)", -- [2]
			1698701, -- [3]
		}, -- [36]
		{
			271071, -- [1]
			"Muschel des dunklen Flüsterns (Trinket)", -- [2]
			1498840, -- [3]
		}, -- [37]
		{
			271465, -- [1]
			"Vermoderte Voodoopuppe (Trinket)", -- [2]
			1716867, -- [3]
		}, -- [38]
		{
			33778, -- [1]
			"Blühendes Leben (Bloom)", -- [2]
			134206, -- [3]
		}, -- [39]
		{
			88082, -- [1]
			"Feuerball (Bilder spiegeln)", -- [2]
			135812, -- [3]
		}, -- [40]
		{
			1, -- [1]
			"Nahkampf", -- [2]
			"Interface\\ICONS\\INV_Sword_04", -- [3]
		}, -- [41]
		{
			278383, -- [1]
			"Peitschendes Gewitter (Trinket)", -- [2]
			2103829, -- [3]
		}, -- [42]
		{
			271671, -- [1]
			"Dissonanter Akkord (Trinket)", -- [2]
			454048, -- [3]
		}, -- [43]
		{
			98021, -- [1]
			"Lebenspunkte-Austausch", -- [2]
			237586, -- [3]
		}, -- [44]
	},
	["update_warning_timeout"] = 10,
	["show_totalhitdamage_on_overkill"] = false,
	["raid_data"] = {
	},
	["tutorial"] = {
		["unlock_button"] = 4,
		["main_help_button"] = 551,
		["ATTRIBUTE_SELECT_TUTORIAL1"] = true,
		["logons"] = 551,
		["ENCOUNTER_BREAKDOWN_CHART"] = true,
		["ctrl_click_close_tutorial"] = false,
		["DISABLE_ONDEATH_PANEL"] = true,
		["STREAMER_PLUGIN_FIRSTRUN"] = true,
		["DETAILS_INFO_TUTORIAL1"] = true,
		["alert_frames"] = {
			false, -- [1]
			false, -- [2]
			false, -- [3]
			false, -- [4]
			false, -- [5]
			false, -- [6]
		},
		["ENCOUNTER_BREAKDOWN_SPELLAURAS"] = true,
		["bookmark_tutorial"] = false,
		["OPTIONS_PANEL_OPENED"] = true,
		["ENCOUNTER_BREAKDOWN_EMOTES"] = true,
		["ENCOUNTER_DETAILS_BALLON_TUTORIAL1"] = true,
		["version_announce"] = 0,
		["MIN_COMBAT_TIME"] = true,
	},
	["always_use_profile_name"] = "AlysiaUI",
	["savedStyles"] = {
	},
	["always_use_profile_exception"] = {
	},
	["details_auras"] = {
	},
	["plugin_window_pos"] = {
		["y"] = 86.34927368164062,
		["x"] = 9.312225341796875,
		["point"] = "CENTER",
		["scale"] = 1,
	},
	["savedTimeCaptures"] = {
	},
	["latest_news_saw"] = "",
	["custom"] = {
		{
			["source"] = false,
			["author"] = "Details!",
			["desc"] = "Zeigt, wer im Schlachtzug einen Trank benutzt hat.",
			["tooltip"] = "			--init:\n			local player, combat, instance = ...\n			\n			--get the debuff container for potion of focus\n			local debuff_uptime_container = player.debuff_uptime and player.debuff_uptime_spells and player.debuff_uptime_spells._ActorTable\n			if (debuff_uptime_container) then\n				local focus_potion = debuff_uptime_container [DETAILS_FOCUS_POTION_ID]\n				if (focus_potion) then\n				local name, _, icon = GetSpellInfo (DETAILS_FOCUS_POTION_ID)\n				GameCooltip:AddLine (name, 1) --> can use only 1 focus potion (can't be pre-potion)\n				_detalhes:AddTooltipBackgroundStatusbar()\n				GameCooltip:AddIcon (icon, 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height)\n				end\n			end\n			\n			--get the misc actor container\n			local buff_uptime_container = player.buff_uptime and player.buff_uptime_spells and player.buff_uptime_spells._ActorTable\n			if (buff_uptime_container) then\n				for spellId, _ in pairs (DetailsFramework.PotionIDs) do\n					local potionUsed = buff_uptime_container [spellId]\n			\n					if (potionUsed) then\n						local name, _, icon = GetSpellInfo (spellId)\n						GameCooltip:AddLine (name, potionUsed.activedamt)\n						_detalhes:AddTooltipBackgroundStatusbar()\n						GameCooltip:AddIcon (icon, 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height)\n					end\n				end\n			end\n			",
			["attribute"] = false,
			["name"] = "Benutzte Tränke",
			["script"] = "				--init:\n				local combat, instance_container, instance = ...\n				local total, top, amount = 0, 0, 0\n				\n				--get the misc actor container\n				local misc_container = combat:GetActorList ( DETAILS_ATTRIBUTE_MISC )\n				\n				--do the loop:\n				for _, player in ipairs ( misc_container ) do \n					\n					--only player in group\n					if (player:IsGroupPlayer()) then\n						\n						local found_potion = false\n						\n						--get the spell debuff uptime container\n						local debuff_uptime_container = player.debuff_uptime and player.debuff_uptime_spells and player.debuff_uptime_spells._ActorTable\n						if (debuff_uptime_container) then\n							--potion of focus (can't use as pre-potion, so, its amount is always 1\n							local focus_potion = debuff_uptime_container [DETAILS_FOCUS_POTION_ID]\n							\n							if (focus_potion) then\n								total = total + 1\n								found_potion = true\n								if (top < 1) then\n									top = 1\n								end\n								--add amount to the player \n								instance_container:AddValue (player, 1)\n							end\n						end\n						\n						--get the spell buff uptime container\n						local buff_uptime_container = player.buff_uptime and player.buff_uptime_spells and player.buff_uptime_spells._ActorTable\n						if (buff_uptime_container) then\n							for spellId, _ in pairs (DetailsFramework.PotionIDs) do\n								local potionUsed = buff_uptime_container [spellId]\n				\n								if (potionUsed) then\n									local used = potionUsed.activedamt\n									if (used and used > 0) then\n										total = total + used\n										found_potion = true\n										if (used > top) then\n											top = used\n										end\n				\n										--add amount to the player \n										instance_container:AddValue (player, used)\n									end\n								end\n							end\n						end\n						\n						if (found_potion) then\n							amount = amount + 1\n						end    \n					end\n				end\n				\n				--return:\n				return total, top, amount\n				",
			["target"] = false,
			["spellid"] = false,
			["icon"] = "Interface\\ICONS\\INV_Potion_03",
			["script_version"] = 6,
		}, -- [1]
		{
			["source"] = false,
			["desc"] = "Zeigt, wer im Schlachtzug den Gesundheitsstein oder einen Heiltrank benutzt hat.",
			["author"] = "Details! Team",
			["percent_script"] = false,
			["total_script"] = false,
			["attribute"] = false,
			["tooltip"] = "			--get the parameters passed\n			local actor, combat, instance = ...\n			\n			--get the cooltip object (we dont use the convencional GameTooltip here)\n			local GameCooltip = GameCooltip\n			local R, G, B, A = 0, 0, 0, 0.75\n			\n			local hs = actor:GetSpell (6262)\n			if (hs) then\n				GameCooltip:AddLine (select (1, GetSpellInfo(6262)),  _detalhes:ToK(hs.total))\n				GameCooltip:AddIcon (select (3, GetSpellInfo (6262)), 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height)\n				GameCooltip:AddStatusBar (100, 1, R, G, B, A)\n			end\n			\n			local pot = actor:GetSpell (DETAILS_HEALTH_POTION_ID)\n			if (pot) then\n				GameCooltip:AddLine (select (1, GetSpellInfo(DETAILS_HEALTH_POTION_ID)),  _detalhes:ToK(pot.total))\n				GameCooltip:AddIcon (select (3, GetSpellInfo (DETAILS_HEALTH_POTION_ID)), 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height)\n				GameCooltip:AddStatusBar (100, 1, R, G, B, A)\n			end\n			\n			local pot = actor:GetSpell (DETAILS_REJU_POTION_ID)\n			if (pot) then\n				GameCooltip:AddLine (select (1, GetSpellInfo(DETAILS_REJU_POTION_ID)),  _detalhes:ToK(pot.total))\n				GameCooltip:AddIcon (select (3, GetSpellInfo (DETAILS_REJU_POTION_ID)), 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height)\n				GameCooltip:AddStatusBar (100, 1, R, G, B, A)\n			end\n\n			--Cooltip code\n			",
			["name"] = "Benutzte Heiltränke & Gesundheitssteine",
			["script"] = "			--get the parameters passed\n			local combat, instance_container, instance = ...\n			--declade the values to return\n			local total, top, amount = 0, 0, 0\n			\n			--do the loop\n			local AllHealCharacters = combat:GetActorList (DETAILS_ATTRIBUTE_HEAL)\n			for index, character in ipairs (AllHealCharacters) do\n				local AllSpells = character:GetSpellList()\n				local found = false\n				for spellid, spell in pairs (AllSpells) do\n					if (DETAILS_HEALTH_POTION_LIST [spellid]) then\n						instance_container:AddValue (character, spell.total)\n						total = total + spell.total\n						if (top < spell.total) then\n							top = spell.total\n						end\n						found = true\n					end\n				end\n			\n				if (found) then\n					amount = amount + 1\n				end\n			end\n			--loop end\n			--return the values\n			return total, top, amount\n			",
			["target"] = false,
			["spellid"] = false,
			["icon"] = "Interface\\ICONS\\INV_Stone_04",
			["script_version"] = 15,
		}, -- [2]
		{
			["source"] = false,
			["tooltip"] = "				\n			",
			["author"] = "Details!",
			["percent_script"] = "				local value, top, total, combat, instance = ...\n				return string.format (\"%.1f\", value/top*100)\n			",
			["desc"] = "Zeigt für jeden Charakter die Zeit, in der aktiv Schaden verursacht wurde.",
			["attribute"] = false,
			["total_script"] = "				local value, top, total, combat, instance = ...\n				local minutos, segundos = math.floor (value/60), math.floor (value%60)\n				return minutos .. \"m \" .. segundos .. \"s\"\n			",
			["name"] = "Aktive Schadenzeit",
			["script"] = "				--init:\n				local combat, instance_container, instance = ...\n				local total, amount = 0, 0\n\n				--get the misc actor container\n				local damage_container = combat:GetActorList ( DETAILS_ATTRIBUTE_DAMAGE )\n				\n				--do the loop:\n				for _, player in ipairs ( damage_container ) do \n					if (player.grupo) then\n						local activity = player:Tempo()\n						total = total + activity\n						amount = amount + 1\n						--add amount to the player \n						instance_container:AddValue (player, activity)\n					end\n				end\n				\n				--return:\n				return total, combat:GetCombatTime(), amount\n			",
			["target"] = false,
			["spellid"] = false,
			["icon"] = "Interface\\Buttons\\UI-MicroStream-Red",
			["script_version"] = 3,
		}, -- [3]
		{
			["source"] = false,
			["tooltip"] = "				\n			",
			["author"] = "Details!",
			["percent_script"] = "				local value, top, total, combat, instance = ...\n				return string.format (\"%.1f\", value/top*100)\n			",
			["desc"] = "Zeigt für jeden Charakter die Zeit, in der aktiv Heilung gewirkt wurde.",
			["attribute"] = false,
			["total_script"] = "				local value, top, total, combat, instance = ...\n				local minutos, segundos = math.floor (value/60), math.floor (value%60)\n				return minutos .. \"m \" .. segundos .. \"s\"\n			",
			["name"] = "Aktive Heilzeit",
			["script"] = "				--init:\n				local combat, instance_container, instance = ...\n				local total, top, amount = 0, 0, 0\n\n				--get the misc actor container\n				local damage_container = combat:GetActorList ( DETAILS_ATTRIBUTE_HEAL )\n				\n				--do the loop:\n				for _, player in ipairs ( damage_container ) do \n					if (player.grupo) then\n						local activity = player:Tempo()\n						total = total + activity\n						amount = amount + 1\n						--add amount to the player \n						instance_container:AddValue (player, activity)\n					end\n				end\n				\n				--return:\n				return total, combat:GetCombatTime(), amount\n			",
			["target"] = false,
			["spellid"] = false,
			["icon"] = "Interface\\Buttons\\UI-MicroStream-Green",
			["script_version"] = 2,
		}, -- [4]
		{
			["source"] = false,
			["author"] = "Details!",
			["total_script"] = "				local value, top, total, combat, instance = ...\n				return floor (value)\n			",
			["desc"] = "Show the crowd control amount for each player.",
			["attribute"] = false,
			["script"] = "				local combat, instance_container, instance = ...\n				local total, top, amount = 0, 0, 0\n\n				local misc_actors = combat:GetActorList (DETAILS_ATTRIBUTE_MISC)\n\n				for index, character in ipairs (misc_actors) do\n					if (character.cc_done and character:IsPlayer()) then\n						local cc_done = floor (character.cc_done)\n						instance_container:AddValue (character, cc_done)\n						total = total + cc_done\n						if (cc_done > top) then\n							top = cc_done\n						end\n						amount = amount + 1\n					end\n				end\n\n				return total, top, amount\n			",
			["name"] = "Verursachte Massenkontrolle",
			["tooltip"] = "				local actor, combat, instance = ...\n				local spells = {}\n				for spellid, spell in pairs (actor.cc_done_spells._ActorTable) do\n				    tinsert (spells, {spellid, spell.counter})\n				end\n\n				table.sort (spells, _detalhes.Sort2)\n\n				for index, spell in ipairs (spells) do\n				    local name, _, icon = GetSpellInfo (spell [1])\n				    GameCooltip:AddLine (name, spell [2])\n				    _detalhes:AddTooltipBackgroundStatusbar()\n				    GameCooltip:AddIcon (icon, 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height)\n				end\n\n				local targets = {}\n				for playername, amount in pairs (actor.cc_done_targets) do\n				    tinsert (targets, {playername, amount})\n				end\n\n				table.sort (targets, _detalhes.Sort2)\n\n				_detalhes:AddTooltipSpellHeaderText (\"Targets\", \"yellow\", #targets)\n				local class, _, _, _, _, r, g, b = _detalhes:GetClass (actor.nome)\n				_detalhes:AddTooltipHeaderStatusbar (1, 1, 1, 0.6)\n\n				for index, target in ipairs (targets) do\n				    GameCooltip:AddLine (target[1], target [2])\n				    _detalhes:AddTooltipBackgroundStatusbar()\n				    \n				    local class, _, _, _, _, r, g, b = _detalhes:GetClass (target [1])\n				    if (class and class ~= \"UNKNOW\") then\n					local texture, l, r, t, b = _detalhes:GetClassIcon (class)\n					GameCooltip:AddIcon (\"Interface\\\\AddOns\\\\Details\\\\images\\\\classes_small_alpha\", 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height, l, r, t, b)\n				    else\n					GameCooltip:AddIcon (\"Interface\\\\GossipFrame\\\\IncompleteQuestIcon\", 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height)\n				    end\n				    --\n				end\n			",
			["target"] = false,
			["spellid"] = false,
			["icon"] = "Interface\\ICONS\\Spell_Frost_FreezingBreath",
			["script_version"] = 11,
		}, -- [5]
		{
			["source"] = false,
			["author"] = "Details!",
			["total_script"] = "				local value, top, total, combat, instance = ...\n				return floor (value)\n			",
			["desc"] = "Show the amount of crowd control received for each player.",
			["attribute"] = false,
			["script"] = "				local combat, instance_container, instance = ...\n				local total, top, amt = 0, 0, 0\n\n				local misc_actors = combat:GetActorList (DETAILS_ATTRIBUTE_MISC)\n				DETAILS_CUSTOM_CC_RECEIVED_CACHE = DETAILS_CUSTOM_CC_RECEIVED_CACHE or {}\n				wipe (DETAILS_CUSTOM_CC_RECEIVED_CACHE)\n\n				for index, character in ipairs (misc_actors) do\n				    if (character.cc_done and character:IsPlayer()) then\n					\n					for player_name, amount in pairs (character.cc_done_targets) do\n					    local target = combat (1, player_name) or combat (2, player_name)\n					    if (target and target:IsPlayer()) then\n						instance_container:AddValue (target, amount)\n						total = total + amount\n						if (amount > top) then\n						    top = amount\n						end\n						if (not DETAILS_CUSTOM_CC_RECEIVED_CACHE [player_name]) then\n						    DETAILS_CUSTOM_CC_RECEIVED_CACHE [player_name] = true\n						    amt = amt + 1\n						end\n					    end\n					end\n					\n				    end\n				end\n\n				return total, top, amt\n			",
			["name"] = "Erhaltene Massenkontrolle",
			["tooltip"] = "				local actor, combat, instance = ...\n				local name = actor:name()\n				local spells, from = {}, {}\n				local misc_actors = combat:GetActorList (DETAILS_ATTRIBUTE_MISC)\n\n				for index, character in ipairs (misc_actors) do\n				    if (character.cc_done and character:IsPlayer()) then\n					local on_actor = character.cc_done_targets [name]\n					if (on_actor) then\n					    tinsert (from, {character:name(), on_actor})\n					    \n					    for spellid, spell in pairs (character.cc_done_spells._ActorTable) do\n						\n						local spell_on_actor = spell.targets [name]\n						if (spell_on_actor) then\n						    local has_spell\n						    for index, spell_table in ipairs (spells) do\n							if (spell_table [1] == spellid) then\n							    spell_table [2] = spell_table [2] + spell_on_actor\n							    has_spell = true\n							end\n						    end\n						    if (not has_spell) then\n							tinsert (spells, {spellid, spell_on_actor}) \n						    end\n						end\n						\n					    end            \n					end\n				    end\n				end\n\n				table.sort (from, _detalhes.Sort2)\n				table.sort (spells, _detalhes.Sort2)\n\n				for index, spell in ipairs (spells) do\n				    local name, _, icon = GetSpellInfo (spell [1])\n				    GameCooltip:AddLine (name, spell [2])\n				    _detalhes:AddTooltipBackgroundStatusbar()\n				    GameCooltip:AddIcon (icon, 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height)    \n				end\n\n				_detalhes:AddTooltipSpellHeaderText (\"From\", \"yellow\", #from)\n				_detalhes:AddTooltipHeaderStatusbar (1, 1, 1, 0.6)\n\n				for index, t in ipairs (from) do\n				    GameCooltip:AddLine (t[1], t[2])\n				    _detalhes:AddTooltipBackgroundStatusbar()\n				    \n				    local class, _, _, _, _, r, g, b = _detalhes:GetClass (t [1])\n				    if (class and class ~= \"UNKNOW\") then\n					local texture, l, r, t, b = _detalhes:GetClassIcon (class)\n					GameCooltip:AddIcon (\"Interface\\\\AddOns\\\\Details\\\\images\\\\classes_small_alpha\", 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height, l, r, t, b)\n				    else\n					GameCooltip:AddIcon (\"Interface\\\\GossipFrame\\\\IncompleteQuestIcon\", 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height)\n				    end     \n				    \n				end\n			",
			["target"] = false,
			["spellid"] = false,
			["icon"] = "Interface\\ICONS\\Spell_Frost_ChainsOfIce",
			["script_version"] = 3,
		}, -- [6]
		{
			["source"] = false,
			["author"] = "Details!",
			["percent_script"] = "				local value, top, total, combat, instance = ...\n				local dps = _detalhes:ToK (floor (value) / combat:GetCombatTime())\n				local percent = string.format (\"%.1f\", value/total*100)\n				return dps .. \", \" .. percent\n			",
			["desc"] = "Zeigt deine Zauber im Fenster.",
			["tooltip"] = "			--config:\n			--Background RBG and Alpha:\n			local R, G, B, A = 0, 0, 0, 0.75\n			local R, G, B, A = 0.1960, 0.1960, 0.1960, 0.8697\n\n			--get the parameters passed\n			local spell, combat, instance = ...\n\n			--get the cooltip object (we dont use the convencional GameTooltip here)\n			local GC = GameCooltip\n			GC:SetOption (\"YSpacingMod\", 0)\n\n			local role = DetailsFramework.UnitGroupRolesAssigned (\"player\")\n\n			if (spell.n_dmg) then\n			    \n			    local spellschool, schooltext = spell.spellschool, \"\"\n			    if (spellschool) then\n				local t = _detalhes.spells_school [spellschool]\n				if (t and t.name) then\n				    schooltext = t.formated\n				end\n			    end\n			    \n			    local total_hits = spell.counter\n			    local combat_time = instance.showing:GetCombatTime()\n			    \n			    local debuff_uptime_total, cast_string = \"\", \"\"\n			    local misc_actor = instance.showing (4, _detalhes.playername)\n			    if (misc_actor) then\n				local debuff_uptime = misc_actor.debuff_uptime_spells and misc_actor.debuff_uptime_spells._ActorTable [spell.id] and misc_actor.debuff_uptime_spells._ActorTable [spell.id].uptime\n				if (debuff_uptime) then\n				    debuff_uptime_total = floor (debuff_uptime / instance.showing:GetCombatTime() * 100)\n				end\n				\n				local spell_cast = misc_actor.spell_cast and misc_actor.spell_cast [spell.id]\n				\n				if (not spell_cast and misc_actor.spell_cast) then\n				    local spellname = GetSpellInfo (spell.id)\n				    for casted_spellid, amount in pairs (misc_actor.spell_cast) do\n					local casted_spellname = GetSpellInfo (casted_spellid)\n					if (casted_spellname == spellname) then\n					    spell_cast = amount .. \" (|cFFFFFF00?|r)\"\n					end\n				    end\n				end\n				if (not spell_cast) then\n				    spell_cast = \"(|cFFFFFF00?|r)\"\n				end\n				cast_string = cast_string .. spell_cast\n			    end\n			    \n			    --Cooltip code\n			    GC:AddLine (\"Casts:\", cast_string or \"?\")\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    if (debuff_uptime_total ~= \"\") then\n				GC:AddLine (\"Uptime:\", (debuff_uptime_total or \"?\") .. \"%\")\n				GC:AddStatusBar (100, 1, R, G, B, A)\n			    end\n			    \n			    GC:AddLine (\"Hits:\", spell.counter)\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    local average = spell.total / total_hits\n			    GC:AddLine (\"Average:\", _detalhes:ToK (average))\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    GC:AddLine (\"E-Dps:\", _detalhes:ToK (spell.total / combat_time))\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    GC:AddLine (\"School:\", schooltext)\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    --GC:AddLine (\" \")\n			    \n			    GC:AddLine (\"Normal Hits: \", spell.n_amt .. \" (\" ..floor ( spell.n_amt/total_hits*100) .. \"%)\")\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    local n_average = spell.n_dmg / spell.n_amt\n			    local T = (combat_time*spell.n_dmg)/spell.total\n			    local P = average/n_average*100\n			    T = P*T/100\n			    \n			    GC:AddLine (\"Average / E-Dps: \",  _detalhes:ToK (n_average) .. \" / \" .. format (\"%.1f\",spell.n_dmg / T ))\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    --GC:AddLine (\" \")\n			    \n			    GC:AddLine (\"Critical Hits: \", spell.c_amt .. \" (\" ..floor ( spell.c_amt/total_hits*100) .. \"%)\")\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    if (spell.c_amt > 0) then\n				local c_average = spell.c_dmg/spell.c_amt\n				local T = (combat_time*spell.c_dmg)/spell.total\n				local P = average/c_average*100\n				T = P*T/100\n				local crit_dps = spell.c_dmg / T\n				\n				GC:AddLine (\"Average / E-Dps: \",  _detalhes:ToK (c_average) .. \" / \" .. _detalhes:comma_value (crit_dps))\n			    else\n				GC:AddLine (\"Average / E-Dps: \",  \"0 / 0\")    \n			    end\n			    \n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    --GC:AddLine (\" \")\n			    \n			    GC:AddLine (\"Multistrike: \", spell.m_amt .. \" (\" ..floor ( spell.m_amt/total_hits*100) .. \"%)\")\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    GC:AddLine (\"On Normal / On Critical:\", spell.m_amt - spell.m_crit .. \"  / \" .. spell.m_crit)\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			elseif (spell.n_curado) then\n			    \n			    local spellschool, schooltext = spell.spellschool, \"\"\n			    if (spellschool) then\n				local t = _detalhes.spells_school [spellschool]\n				if (t and t.name) then\n				    schooltext = t.formated\n				end\n			    end\n			    \n			    local total_hits = spell.counter\n			    local combat_time = instance.showing:GetCombatTime()\n			    \n			    --Cooltip code\n			    GC:AddLine (\"Hits:\", spell.counter)\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    local average = spell.total / total_hits\n			    GC:AddLine (\"Average:\", _detalhes:ToK (average))\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    GC:AddLine (\"E-Hps:\", _detalhes:ToK (spell.total / combat_time))\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    GC:AddLine (\"School:\", schooltext)\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    --GC:AddLine (\" \")\n			    \n			    GC:AddLine (\"Normal Hits: \", spell.n_amt .. \" (\" ..floor ( spell.n_amt/total_hits*100) .. \"%)\")\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    local n_average = spell.n_curado / spell.n_amt\n			    local T = (combat_time*spell.n_curado)/spell.total\n			    local P = average/n_average*100\n			    T = P*T/100\n			    \n			    GC:AddLine (\"Average / E-Dps: \",  _detalhes:ToK (n_average) .. \" / \" .. format (\"%.1f\",spell.n_curado / T ))\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    --GC:AddLine (\" \")\n			    \n			    GC:AddLine (\"Critical Hits: \", spell.c_amt .. \" (\" ..floor ( spell.c_amt/total_hits*100) .. \"%)\")\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    if (spell.c_amt > 0) then\n				local c_average = spell.c_curado/spell.c_amt\n				local T = (combat_time*spell.c_curado)/spell.total\n				local P = average/c_average*100\n				T = P*T/100\n				local crit_dps = spell.c_curado / T\n				\n				GC:AddLine (\"Average / E-Hps: \",  _detalhes:ToK (c_average) .. \" / \" .. _detalhes:comma_value (crit_dps))\n			    else\n				GC:AddLine (\"Average / E-Hps: \",  \"0 / 0\")    \n			    end\n			    \n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    --GC:AddLine (\" \")\n			    \n			    GC:AddLine (\"Multistrike: \", spell.m_amt .. \" (\" ..floor ( spell.m_amt/total_hits*100) .. \"%)\")\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			    \n			    GC:AddLine (\"On Normal / On Critical:\", spell.m_amt - spell.m_crit .. \"  / \" .. spell.m_crit)\n			    GC:AddStatusBar (100, 1, R, G, B, A)\n			end\n			",
			["attribute"] = false,
			["name"] = "Meine Zauber",
			["script"] = "				--get the parameters passed\n				local combat, instance_container, instance = ...\n				--declade the values to return\n				local total, top, amount = 0, 0, 0\n\n				local player\n				local pet_attribute\n				\n				local role = DetailsFramework.UnitGroupRolesAssigned (\"player\")\n				local spec = DetailsFramework.GetSpecialization()\n				role = spec and DetailsFramework.GetSpecializationRole (spec) or role\n\n				if (role == \"DAMAGER\") then\n					player = combat (DETAILS_ATTRIBUTE_DAMAGE, _detalhes.playername)\n					pet_attribute = DETAILS_ATTRIBUTE_DAMAGE\n				elseif (role == \"HEALER\") then    \n					player = combat (DETAILS_ATTRIBUTE_HEAL, _detalhes.playername)\n					pet_attribute = DETAILS_ATTRIBUTE_HEAL\n				else\n					player = combat (DETAILS_ATTRIBUTE_DAMAGE, _detalhes.playername)\n					pet_attribute = DETAILS_ATTRIBUTE_DAMAGE\n				end\n\n				--do the loop\n\n				if (player) then\n					local spells = player:GetSpellList()\n					for spellid, spell in pairs (spells) do\n						instance_container:AddValue (spell, spell.total)\n						total = total + spell.total\n						if (top < spell.total) then\n							top = spell.total\n						end\n						amount = amount + 1\n					end\n				    \n					for _, PetName in ipairs (player.pets) do\n						local pet = combat (pet_attribute, PetName)\n						if (pet) then\n							for spellid, spell in pairs (pet:GetSpellList()) do\n								instance_container:AddValue (spell, spell.total, nil, \" (\" .. PetName:gsub ((\" <.*\"), \"\") .. \")\")\n								total = total + spell.total\n								if (top < spell.total) then\n									top = spell.total\n								end\n								amount = amount + 1\n							end\n						end\n					end\n				end\n\n				--return the values\n				return total, top, amount\n			",
			["target"] = false,
			["spellid"] = false,
			["icon"] = "Interface\\CHATFRAME\\UI-ChatIcon-Battlenet",
			["script_version"] = 7,
		}, -- [7]
		{
			["source"] = false,
			["author"] = "Details!",
			["desc"] = "Zeigt den Schaden, der mit Totenkopf markierten Zielen zugefügt wurde",
			["tooltip"] = "				--get the parameters passed\n				local actor, combat, instance = ...\n\n				--get the cooltip object (we dont use the convencional GameTooltip here)\n				local GameCooltip = GameCooltip\n\n				--Cooltip code\n				local format_func = Details:GetCurrentToKFunction()\n\n				--Cooltip code\n				local RaidTargets = actor.raid_targets\n\n				local DamageOnStar = RaidTargets [128]\n				if (DamageOnStar) then\n				    --RAID_TARGET_8 is the built-in localized word for 'Skull'.\n				    GameCooltip:AddLine (RAID_TARGET_8 .. \":\", format_func (_, DamageOnStar))\n				    GameCooltip:AddIcon (\"Interface\\\\TARGETINGFRAME\\\\UI-RaidTargetingIcon_8\", 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height)\n				    Details:AddTooltipBackgroundStatusbar()\n				end\n			",
			["attribute"] = false,
			["name"] = "Schaden auf mit dem Totenschädel markierte Ziele",
			["script"] = "				--get the parameters passed\n				local Combat, CustomContainer, Instance = ...\n				--declade the values to return\n				local total, top, amount = 0, 0, 0\n				\n				--raid target flags: \n				-- 128: skull \n				-- 64: cross\n				-- 32: square\n				-- 16: moon\n				-- 8: triangle\n				-- 4: diamond\n				-- 2: circle\n				-- 1: star\n				\n				--do the loop\n				for _, actor in ipairs (Combat:GetActorList (DETAILS_ATTRIBUTE_DAMAGE)) do\n				    if (actor:IsPlayer()) then\n					if (actor.raid_targets [128]) then\n					    CustomContainer:AddValue (actor, actor.raid_targets [128])\n					end        \n				    end\n				end\n\n				--if not managed inside the loop, get the values of total, top and amount\n				total, top = CustomContainer:GetTotalAndHighestValue()\n				amount = CustomContainer:GetNumActors()\n\n				--return the values\n				return total, top, amount\n			",
			["target"] = false,
			["spellid"] = false,
			["icon"] = "Interface\\TARGETINGFRAME\\UI-RaidTargetingIcon_8",
			["script_version"] = 3,
		}, -- [8]
		{
			["source"] = false,
			["author"] = "Details!",
			["desc"] = "Zeigt den Schaden, der anderweitig markierten Zielen zugefügt wurde.",
			["tooltip"] = "				--get the parameters passed\n				local actor, combat, instance = ...\n\n				--get the cooltip object\n				local GameCooltip = GameCooltip\n\n				local format_func = Details:GetCurrentToKFunction()\n\n				--Cooltip code\n				local RaidTargets = actor.raid_targets\n\n				local DamageOnStar = RaidTargets [1]\n				if (DamageOnStar) then\n				    GameCooltip:AddLine (RAID_TARGET_1 .. \":\", format_func (_, DamageOnStar))\n				    GameCooltip:AddIcon (\"Interface\\\\TARGETINGFRAME\\\\UI-RaidTargetingIcon_1\", 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height)\n				    Details:AddTooltipBackgroundStatusbar()\n				end\n\n				local DamageOnCircle = RaidTargets [2]\n				if (DamageOnCircle) then\n				    GameCooltip:AddLine (RAID_TARGET_2 .. \":\", format_func (_, DamageOnCircle))\n				    GameCooltip:AddIcon (\"Interface\\\\TARGETINGFRAME\\\\UI-RaidTargetingIcon_2\", 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height)\n				    Details:AddTooltipBackgroundStatusbar()\n				end\n\n				local DamageOnDiamond = RaidTargets [4]\n				if (DamageOnDiamond) then\n				    GameCooltip:AddLine (RAID_TARGET_3 .. \":\", format_func (_, DamageOnDiamond))\n				    GameCooltip:AddIcon (\"Interface\\\\TARGETINGFRAME\\\\UI-RaidTargetingIcon_3\", 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height)\n				    Details:AddTooltipBackgroundStatusbar()\n				end\n\n				local DamageOnTriangle = RaidTargets [8]\n				if (DamageOnTriangle) then\n				    GameCooltip:AddLine (RAID_TARGET_4 .. \":\", format_func (_, DamageOnTriangle))\n				    GameCooltip:AddIcon (\"Interface\\\\TARGETINGFRAME\\\\UI-RaidTargetingIcon_4\", 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height)\n				    Details:AddTooltipBackgroundStatusbar()\n				end\n\n				local DamageOnMoon = RaidTargets [16]\n				if (DamageOnMoon) then\n				    GameCooltip:AddLine (RAID_TARGET_5 .. \":\", format_func (_, DamageOnMoon))\n				    GameCooltip:AddIcon (\"Interface\\\\TARGETINGFRAME\\\\UI-RaidTargetingIcon_5\", 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height)\n				    Details:AddTooltipBackgroundStatusbar()\n				end\n\n				local DamageOnSquare = RaidTargets [32]\n				if (DamageOnSquare) then\n				    GameCooltip:AddLine (RAID_TARGET_6 .. \":\", format_func (_, DamageOnSquare))\n				    GameCooltip:AddIcon (\"Interface\\\\TARGETINGFRAME\\\\UI-RaidTargetingIcon_6\", 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height)\n				    Details:AddTooltipBackgroundStatusbar()\n				end\n\n				local DamageOnCross = RaidTargets [64]\n				if (DamageOnCross) then\n				    GameCooltip:AddLine (RAID_TARGET_7 .. \":\", format_func (_, DamageOnCross))\n				    GameCooltip:AddIcon (\"Interface\\\\TARGETINGFRAME\\\\UI-RaidTargetingIcon_7\", 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height)\n				    Details:AddTooltipBackgroundStatusbar()\n				end\n			",
			["attribute"] = false,
			["name"] = "Schaden auf anderweitig markierte Ziele",
			["script"] = "				--get the parameters passed\n				local Combat, CustomContainer, Instance = ...\n				--declade the values to return\n				local total, top, amount = 0, 0, 0\n\n				--do the loop\n				for _, actor in ipairs (Combat:GetActorList (DETAILS_ATTRIBUTE_DAMAGE)) do\n				    if (actor:IsPlayer()) then\n					local total = (actor.raid_targets [1] or 0) --star\n					total = total + (actor.raid_targets [2] or 0) --circle\n					total = total + (actor.raid_targets [4] or 0) --diamond\n					total = total + (actor.raid_targets [8] or 0) --tiangle\n					total = total + (actor.raid_targets [16] or 0) --moon\n					total = total + (actor.raid_targets [32] or 0) --square\n					total = total + (actor.raid_targets [64] or 0) --cross\n					\n					if (total > 0) then\n					    CustomContainer:AddValue (actor, total)\n					end\n				    end\n				end\n\n				--if not managed inside the loop, get the values of total, top and amount\n				total, top = CustomContainer:GetTotalAndHighestValue()\n				amount = CustomContainer:GetNumActors()\n\n				--return the values\n				return total, top, amount\n			",
			["target"] = false,
			["spellid"] = false,
			["icon"] = "Interface\\TARGETINGFRAME\\UI-RaidTargetingIcon_5",
			["script_version"] = 3,
		}, -- [9]
		{
			["source"] = false,
			["author"] = "Details!",
			["total_script"] = "				local value, top, total, combat, instance = ...\n\n				--get the time of overall combat\n				local OverallCombatTime = Details:GetCombat (-1):GetCombatTime()\n\n				--get the time of current combat if the player is in combat\n				if (Details.in_combat) then\n				    local CurrentCombatTime = Details:GetCombat (0):GetCombatTime()\n				    OverallCombatTime = OverallCombatTime + CurrentCombatTime\n				end\n\n				--build the string\n				local ToK = Details:GetCurrentToKFunction()\n				local s = ToK (_, value / OverallCombatTime)\n				\n				if (instance.row_info.textR_show_data[3]) then\n				    s = ToK (_, value) .. \" (\" .. s .. \", \"\n				else\n				    s = ToK (_, value) .. \" (\" .. s\n				end\n\n				return s\n			",
			["desc"] = "Show overall damage done on the fly.",
			["attribute"] = false,
			["script"] = "				--init:\n				local combat, instance_container, instance = ...\n				local total, top, amount = 0, 0, 0\n\n				--get the overall combat\n				local OverallCombat = Details:GetCombat (-1)\n				--get the current combat\n				local CurrentCombat = Details:GetCombat (0)\n\n				if (not OverallCombat.GetActorList or not CurrentCombat.GetActorList) then\n				    return 0, 0, 0\n				end\n\n				--get the damage actor container for overall\n				local damage_container_overall = OverallCombat:GetActorList ( DETAILS_ATTRIBUTE_DAMAGE )\n				--get the damage actor container for current\n				local damage_container_current = CurrentCombat:GetActorList ( DETAILS_ATTRIBUTE_DAMAGE )\n\n				--do the loop:\n				for _, player in ipairs ( damage_container_overall ) do \n				    --only player in group\n				    if (player:IsGroupPlayer()) then\n					instance_container:AddValue (player, player.total)\n				    end\n				end\n\n				if (Details.in_combat) then\n				    for _, player in ipairs ( damage_container_current ) do \n					--only player in group\n					if (player:IsGroupPlayer()) then\n					    instance_container:AddValue (player, player.total)        \n					end\n				    end\n				end\n\n				total, top =  instance_container:GetTotalAndHighestValue()\n				amount =  instance_container:GetNumActors()\n\n				--return:\n				return total, top, amount\n			",
			["name"] = "Dynamischer Gesamtschaden",
			["tooltip"] = "				--get the parameters passed\n				local actor, combat, instance = ...\n\n				--get the cooltip object (we dont use the convencional GameTooltip here)\n				local GameCooltip = GameCooltip2\n\n				--Cooltip code\n				--get the overall combat\n				local OverallCombat = Details:GetCombat (-1)\n				--get the current combat\n				local CurrentCombat = Details:GetCombat (0)\n\n				local AllSpells = {}\n\n				--overall\n				local player = OverallCombat [1]:GetActor (actor.nome)\n				local playerSpells = player:GetSpellList()\n				for spellID, spellTable in pairs (playerSpells) do\n				    AllSpells [spellID] = spellTable.total\n				end\n\n				--current\n				local player = CurrentCombat [1]:GetActor (actor.nome)\n				if (player) then\n					local playerSpells = player:GetSpellList()\n					for spellID, spellTable in pairs (playerSpells) do\n						AllSpells [spellID] = (AllSpells [spellID] or 0) + (spellTable.total or 0)\n					end\n				end\n\n				local sortedList = {}\n				for spellID, total in pairs (AllSpells) do\n				    tinsert (sortedList, {spellID, total})\n				end\n				table.sort (sortedList, Details.Sort2)\n\n				local format_func = Details:GetCurrentToKFunction()\n\n				--build the tooltip\n				for i, t in ipairs (sortedList) do\n				    local spellID, total = unpack (t)\n				    if (total > 1) then\n					local spellName, _, spellIcon = Details.GetSpellInfo (spellID)\n					\n					GameCooltip:AddLine (spellName, format_func (_, total))\n					Details:AddTooltipBackgroundStatusbar()\n					GameCooltip:AddIcon (spellIcon, 1, 1, _detalhes.tooltip.line_height, _detalhes.tooltip.line_height)\n				    end\n				end\n			",
			["target"] = false,
			["spellid"] = false,
			["icon"] = "Interface\\Buttons\\Spell-Reset",
			["script_version"] = 5,
		}, -- [10]
		{
			["source"] = false,
			["author"] = "Details!",
			["desc"] = "Damage done to shields",
			["tooltip"] = "				--get the parameters passed\n				local actor, Combat, instance = ...\n\n				--get the cooltip object (we dont use the convencional GameTooltip here)\n				local GameCooltip = GameCooltip\n\n				--Cooltip code\n				--get the actor total damage absorbed\n				local totalAbsorb = actor.totalabsorbed\n				local format_func = Details:GetCurrentToKFunction()\n\n				--get the damage absorbed by all the actor pets\n				for petIndex, petName in ipairs (actor.pets) do\n				    local pet = Combat :GetActor (1, petName)\n				    if (pet) then\n					totalAbsorb = totalAbsorb + pet.totalabsorbed\n				    end\n				end\n\n				GameCooltip:AddLine (actor:Name(), format_func (_, actor.totalabsorbed))\n				Details:AddTooltipBackgroundStatusbar()\n\n				for petIndex, petName in ipairs (actor.pets) do\n				    local pet = Combat :GetActor (1, petName)\n				    if (pet) then\n					totalAbsorb = totalAbsorb + pet.totalabsorbed\n					\n					GameCooltip:AddLine (petName, format_func (_, pet.totalabsorbed))\n					Details:AddTooltipBackgroundStatusbar()        \n					\n				    end\n				end\n			",
			["attribute"] = false,
			["name"] = "Schaden auf Schilde",
			["script"] = "				--get the parameters passed\n				local Combat, CustomContainer, Instance = ...\n				--declade the values to return\n				local total, top, amount = 0, 0, 0\n\n				--do the loop\n				for index, actor in ipairs (Combat:GetActorList(1)) do\n				    if (actor:IsPlayer()) then\n					\n					--get the actor total damage absorbed\n					local totalAbsorb = actor.totalabsorbed\n					\n					--get the damage absorbed by all the actor pets\n					for petIndex, petName in ipairs (actor.pets) do\n					    local pet = Combat :GetActor (1, petName)\n					    if (pet) then\n						totalAbsorb = totalAbsorb + pet.totalabsorbed\n					    end\n					end\n					\n					--add the value to the actor on the custom container\n					CustomContainer:AddValue (actor, totalAbsorb)        \n					\n				    end\n				end\n				--loop end\n\n				--if not managed inside the loop, get the values of total, top and amount\n				total, top = CustomContainer:GetTotalAndHighestValue()\n				amount = CustomContainer:GetNumActors()\n\n				--return the values\n				return total, top, amount\n			",
			["target"] = false,
			["spellid"] = false,
			["icon"] = "Interface\\ICONS\\Spell_Holy_PowerWordShield",
			["script_version"] = 1,
		}, -- [11]
	},
	["performance_profiles"] = {
		["Dungeon"] = {
			["enabled"] = false,
			["update_speed"] = 1,
			["miscdata"] = true,
			["aura"] = true,
			["heal"] = true,
			["use_row_animations"] = false,
			["energy"] = false,
			["damage"] = true,
		},
		["RaidFinder"] = {
			["enabled"] = false,
			["update_speed"] = 1,
			["miscdata"] = true,
			["aura"] = true,
			["heal"] = true,
			["use_row_animations"] = false,
			["energy"] = false,
			["damage"] = true,
		},
		["Battleground15"] = {
			["enabled"] = false,
			["update_speed"] = 1,
			["miscdata"] = true,
			["aura"] = true,
			["heal"] = true,
			["use_row_animations"] = false,
			["energy"] = false,
			["damage"] = true,
		},
		["Battleground40"] = {
			["enabled"] = false,
			["update_speed"] = 1,
			["miscdata"] = true,
			["aura"] = true,
			["heal"] = true,
			["use_row_animations"] = false,
			["energy"] = false,
			["damage"] = true,
		},
		["Mythic"] = {
			["enabled"] = false,
			["update_speed"] = 1,
			["miscdata"] = true,
			["aura"] = true,
			["heal"] = true,
			["use_row_animations"] = false,
			["energy"] = false,
			["damage"] = true,
		},
		["Arena"] = {
			["enabled"] = false,
			["update_speed"] = 1,
			["miscdata"] = true,
			["aura"] = true,
			["heal"] = true,
			["use_row_animations"] = false,
			["energy"] = false,
			["damage"] = true,
		},
		["Raid30"] = {
			["enabled"] = false,
			["update_speed"] = 1,
			["miscdata"] = true,
			["aura"] = true,
			["heal"] = true,
			["use_row_animations"] = false,
			["energy"] = false,
			["damage"] = true,
		},
		["Raid15"] = {
			["enabled"] = false,
			["update_speed"] = 1,
			["miscdata"] = true,
			["aura"] = true,
			["heal"] = true,
			["use_row_animations"] = false,
			["energy"] = false,
			["damage"] = true,
		},
	},
	["exit_log"] = {
		"1 - Closing Janela Info.", -- [1]
		"2 - Clearing user place from instances.", -- [2]
		"4 - Reversing switches.", -- [3]
		"6 - Saving Config.", -- [4]
		"7 - Saving Profiles.", -- [5]
		"8 - Saving nicktag cache.", -- [6]
	},
	["switchSaved"] = {
		["slots"] = 14,
		["table"] = {
			{
				["atributo"] = 1,
				["sub_atributo"] = 1,
			}, -- [1]
			{
				["atributo"] = 2,
				["sub_atributo"] = 1,
			}, -- [2]
			{
				["atributo"] = 1,
				["sub_atributo"] = 6,
			}, -- [3]
			{
				["atributo"] = 4,
				["sub_atributo"] = 5,
			}, -- [4]
			{
			}, -- [5]
			{
			}, -- [6]
			{
			}, -- [7]
			{
			}, -- [8]
			{
			}, -- [9]
			{
			}, -- [10]
			{
			}, -- [11]
			{
			}, -- [12]
			{
			}, -- [13]
			{
			}, -- [14]
		},
	},
	["lastUpdateWarning"] = 0,
	["mythic_plus"] = {
		["make_overall_boss_only"] = false,
		["mythicrun_chart_frame"] = {
			["y"] = 0,
			["x"] = -1.52587890625e-05,
			["point"] = "CENTER",
			["scale"] = 1,
		},
		["merge_boss_trash"] = true,
		["delay_to_show_graphic"] = 5,
		["always_in_combat"] = false,
		["make_overall_when_done"] = true,
		["delete_trash_after_merge"] = true,
		["show_damage_graphic"] = false,
		["mythicrun_chart_frame_ready"] = {
			["y"] = 198.8697509765625,
			["x"] = -486.3272705078125,
			["point"] = "CENTER",
			["scale"] = 1,
		},
		["boss_dedicated_segment"] = true,
		["mythicrun_chart_frame_minimized"] = {
			["y"] = 0,
			["x"] = 0,
			["point"] = "CENTER",
			["scale"] = 1,
		},
		["last_mythicrun_chart"] = {
		},
	},
}


end