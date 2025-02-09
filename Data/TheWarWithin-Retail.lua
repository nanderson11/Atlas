--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2022 - Arith Hsu, Atlas Team <atlas.addon at gmail dot com>

	This file is part of Atlas.

	Atlas is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	Atlas is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with Atlas; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

--]]

local FOLDER_NAME, private = ...

private.addon_name = "Atlas_TheWarWithin"
private.module_name = "TheWarWithin"

local BZ = Atlas_GetLocaleLibBabble("LibBabble-SubZone-3.0")
local ALC = LibStub("AceLocale-3.0"):GetLocale("Atlas")
local Atlas = LibStub("AceAddon-3.0"):GetAddon("Atlas")
local TWW = Atlas:NewModule(private.module_name)

local db = {}
TWW.db = db

local function Atlas_GetBossName(bossname, encounterID, creatureIndex)
	return Atlas:GetBossName(bossname, encounterID, creatureIndex, private.module_name)
end

local BLUE = "|cff6666ff"
local GREN = "|cff66cc33"
local GREY = "|cff999999"
local LBLU = "|cff33cccc"
local _RED = "|cffcc3333"
local ORNG = "|cffcc9933"
local PINK = "|ccfcc33cc"
local PURP = "|cff9900ff"
local WHIT = "|cffffffff"
local YLOW = "|cffcccc33"
local INDENT = "      "

db.AtlasMaps = {
	-- ///////////////////////////////////////
	-- Instances
	TheRookery = {
		ZoneName = { BZ["The Rookery"] },
		Location = { BZ["Dornogal"] },
		DungeonID = 2637,
		DungeonHeroicID = 2658,
		DungeonMythicID = 2717,
		WorldMapID = 2315,
		JournalInstanceID = 1268,
		Module = "Atlas_TheWarWithin",
		{ WHIT.." 1) "..Atlas_GetBossName("Kyrioss", 2566),               2566 },
		{ WHIT.." 2) "..Atlas_GetBossName("Stormguard Gorren", 2567),     2567 },
		{ WHIT.." 3) "..Atlas_GetBossName("Voidstone Monstrosity", 2568), 2568 },
		{ WHIT..INDENT..Atlas_GetBossName("Voidstone Fragment", 2568, 2), 2568 },
		{ WHIT..INDENT..Atlas_GetBossName("Voidstone Awakened", 2568, 3), 2568 },
		{ WHIT..INDENT..Atlas_GetBossName("Stormrider Vokmar", 2568, 4),  2568 },
	},
	TheStonevault = {
		ZoneName = { BZ["The Stonevault"] },
		Location = { BZ["Ringing Deeps"] },
		DungeonID = 2693,
		DungeonHeroicID = 2694,
		DungeonMythicID = 2720,
		WorldMapID = 2341,
		JournalInstanceID = 1269,
		Module = "Atlas_TheWarWithin",
		{ WHIT.." 1) "..Atlas_GetBossName("Kyrioss", 2566), 2566 },
	},
	PrioryoftheSacredFlame = {
		ZoneName = { BZ["Priory of the Sacred Flame"] },
		Location = { BZ["Hallowfall"] },
		DungeonID = 2695,
		DungeonHeroicID = 2696,
		DungeonMythicID = 2697,
		WorldMapID = 2308,
		JournalInstanceID = 1267,
		Module = "Atlas_TheWarWithin",
		{ WHIT.." 1) "..Atlas_GetBossName("Kyrioss", 2566), 2566 },
	},
	AraKaraCityofEchoes = {
		ZoneName = { BZ["Ara-Kara, City of Echoes"] },
		Location = { BZ["Azj-Kahet"] },
		DungeonID = 2604,
		DungeonHeroicID = 2605,
		DungeonMythicID = 2606,
		WorldMapID = 2357,
		JournalInstanceID = 1271,
		Module = "Atlas_TheWarWithin",
		{ WHIT.." 1) "..Atlas_GetBossName("Kyrioss", 2566), 2566 },
	},
	CinderbrewMeadery = {
		ZoneName = { BZ["Cinderbrew Meadery"] },
		Location = { BZ["Isle of Dorn"] },
		DungeonID = 2689,
		DungeonHeroicID = 2690,
		DungeonMythicID = 2691,
		WorldMapID = 2335,
		JournalInstanceID = 1272,
		Module = "Atlas_TheWarWithin",
		{ WHIT.." 1) "..Atlas_GetBossName("Kyrioss", 2566), 2566 },
	},
	DarkflameCleft = {
		ZoneName = { BZ["Darkflame Cleft"] },
		Location = { BZ["Ringing Deeps"] },
		DungeonID = 2518,
		DungeonHeroicID = 2519,
		DungeonMythicID = 2520,
		WorldMapID = 2303,
		JournalInstanceID = 1210,
		Module = "Atlas_TheWarWithin",
		{ WHIT.." 1) "..Atlas_GetBossName("Kyrioss", 2566), 2566 },
	},
	TheDawnbreaker = {
		ZoneName = { BZ["The Dawnbreaker"] },
		Location = { BZ["Hallowfall"] },
		DungeonID = 2523,
		DungeonHeroicID = 2524,
		DungeonMythicID = 2525,
		WorldMapID = 2359,
		JournalInstanceID = 1270,
		Module = "Atlas_TheWarWithin",
		{ WHIT.." 1) "..Atlas_GetBossName("Kyrioss", 2566), 2566 },
	},
	CityofThreads = {
		ZoneName = { BZ["City of Threads"] },
		Location = { BZ["Azj-Kahet"] },
		DungeonID = 2642,
		DungeonHeroicID = 2643,
		DungeonMythicID = 2647,
		WorldMapID = 2343,
		JournalInstanceID = 1274,
		Module = "Atlas_TheWarWithin",
		{ WHIT.." 1) "..Atlas_GetBossName("Kyrioss", 2566), 2566 },
	},
	NerubarPalace = {
		ZoneName = { BZ["Nerub-ar Palace"] },
		Location = { BZ["Azj-Kahet"] },
		DungeonID = 2645,
		--DungeonHeroicID = ,
		--DungeonMythicID = ,
		WorldMapID = 2291,
		JournalInstanceID = 1273,
		Module = "Atlas_TheWarWithin",
		{ WHIT.." 1) "..Atlas_GetBossName("Kyrioss", 2566), 2566 },
	},
}

--[[ /////////////////////////////////////////
 Atlas Map NPC Description Data
 zoneID = {
	{ ID or letter mark, encounterID or customizedID, x, y, x_largeMap, y_largeMap, color of the letter mark };
	{ "A", 10001, 241, 460 };
	{ 1, 1694, 373, 339 };
 };
/////////////////////////////////////////////]]
db.AtlasMaps_NPC_DB = {

}

--[[
	AssocDefaults{}

	Default map to be auto-selected when no SubZone data is available.

	For example, "Dire Maul" has a subzone called "Warpwood Quarter" located in East Dirl Maul, however, there are also
	some areas which have not been named with any subzone, and we would like to pick a proper default map in this condition.

	Define this table entries only when the instance has multiple maps.

	Table index is zone name, it need to be localized value, but we will handle the localization with BabbleSubZone library.
	The table value is map's key-name.
]]
db.AssocDefaults = {
	--	[BZ["Black Rook Hold"]] = 		"BlackRookHoldA",
}

--[[
	SubZoneData{}

	Define SubZone data for default map to be selected for instance which has multiple maps.
	Subzone data should be able to be pulled out from WMOAreaTable for indoor areas, or from AreaTable for outdoor areas.

	Array Syntax:
	["localized zone name"] = {
		["atlas map name"] = {
			["localized subzone name 1"],
			["localized subzone name 2"],
		},
	},
]]
db.SubZoneData = {
	--	[BZ["Trial of Valor"]] = {
	--		["TrialofValorA"] = {
	--
	--		},
	--		["TrialofValorB"] = {
	--
	--		},
	--	},
}

--[[
	OutdoorZoneToAtlas{}

	Maps to auto-select to from outdoor zones.

	Table index is sub-zone name, it need to be localized value, but we will handle
	the localization with BabbleSubZone library.
	The table value is map's key-name.

	Duplicates are commented out.
	Not for localization.
]]
db.OutdoorZoneToAtlas = {
	--	[BZ["Dalaran"]] = 			"AssaultonVioletHold",
}

db.EntToInstMatches = {
	--	["TheNightholdEnt"] = 			{"TheNightholdA", "TheNightholdB", "TheNightholdC", "TheNightholdD", "TheNightholdE", "TheNightholdF", "TheNightholdG" },
}

db.InstToEntMatches = {
	--	["TheArcway"] = 			{"TheArcwayEnt"},
}

db.MapSeries = {

}

db.SubZoneAssoc = {
	--	["BlackRookHoldA"] = 			BZ["Black Rook Hold"],
}

db.DropDownLayouts_Order = {
	[ATLAS_DDL_CONTINENT] = {
		ATLAS_DDL_CONTINENT_KHAZALGAR,
	},
	[ATLAS_DDL_LEVEL] = {
		ATLAS_DDL_LEVEL_70TO80,
	},
	[ATLAS_DDL_EXPANSION] = {
		ATLAS_DDL_EXPANSION_TWW,
	},
	[ATLAS_DDL_PARTYSIZE] = {
		ATLAS_DDL_PARTYSIZE_5,
		ATLAS_DDL_PARTYSIZE_10,
		ATLAS_DDL_PARTYSIZE_20TO40,
	},
	[ATLAS_DDL_TYPE] = {
		ATLAS_DDL_TYPE_INSTANCE,
	},
}
db.DropDownLayouts = {
	[ATLAS_DDL_CONTINENT] = {
		[ATLAS_DDL_CONTINENT_KHAZALGAR] = {
			"TheRookery",
			"TheStonevault",
			"PrioryoftheSacredFlame",
			"AraKaraCityofEchoes",
			"CinderbrewMeadery",
			"DarkflameCleft",
			"TheDawnbreaker",
			"CityofThreads",
			"NerubarPalace",
		}
	},
	[ATLAS_DDL_EXPANSION] = {
		[ATLAS_DDL_EXPANSION_TWW] = {
			"TheRookery",
			"TheStonevault",
			"PrioryoftheSacredFlame",
			"AraKaraCityofEchoes",
			"CinderbrewMeadery",
			"DarkflameCleft",
			"TheDawnbreaker",
			"CityofThreads",
			"NerubarPalace",
		},
	},
	[ATLAS_DDL_LEVEL] = {
		[ATLAS_DDL_LEVEL_60TO70] = {
			"TheRookery",
			"TheStonevault",
			"PrioryoftheSacredFlame",
			"AraKaraCityofEchoes",
			"CinderbrewMeadery",
			"DarkflameCleft",
			"TheDawnbreaker",
			"CityofThreads",
			"NerubarPalace",
		},
	},
	[ATLAS_DDL_PARTYSIZE] = {
		[ATLAS_DDL_PARTYSIZE_5] = {
			"TheRookery",
			"TheStonevault",
			"PrioryoftheSacredFlame",
			"AraKaraCityofEchoes",
			"CinderbrewMeadery",
			"DarkflameCleft",
			"TheDawnbreaker",
			"CityofThreads",
		},
		[ATLAS_DDL_PARTYSIZE_10] = {
			"NerubarPalace",
		},
		[ATLAS_DDL_PARTYSIZE_20TO40] = {
			"NerubarPalace",
		},
	},
	[ATLAS_DDL_TYPE] = {
		[ATLAS_DDL_TYPE_INSTANCE] = {
			"TheRookery",
			"TheStonevault",
			"PrioryoftheSacredFlame",
			"AraKaraCityofEchoes",
			"CinderbrewMeadery",
			"DarkflameCleft",
			"TheDawnbreaker",
			"CityofThreads",
			"NerubarPalace",
		},
	},
}
