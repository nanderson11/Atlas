--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005 ~ 2010 - Dan Gilbert <dan.b.gilbert at gmail dot com>
	Copyright 2010 - Lothaer <lothayer at gmail dot com>, Atlas Team
	Copyright 2011 ~ 2023 - Arith Hsu, Atlas Team <atlas.addon at gmail dot com>

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

local L = LibStub("AceLocale-3.0"):NewLocale("Atlas", "frFR");

if (GetLocale() == "frFR") then
	-- Define the leading strings to be ignored while sorting
	-- Ex: The Stockade
	AtlasSortIgnore = { "le (.+)", "la (.+)", "les (.+)" };

	-- Syntax: ["real_zone_name"] = "localized map zone name"
	AtlasZoneSubstitutions = {
		["Ahn'Qiraj"] = "Temple d'Ahn'Qiraj",
		["The Temple of Atal'Hakkar"] = "Le temple d'Atal'Hakkar",
		--	["Throne of Tides"] = "The Abyssal Maw: Throne of the Tides";
	};
end

if not L then return end

L[" 1/2"] = "1/2"
L[" 2/2"] = "2/2"
L["%s Dungeons"] = "%s Donjons"
L["%s Instances"] = "Instances de %s"
L["%s Raids"] = "Raids de %s"
L["Adult"] = "Adulte"
L["AKA"] = "AKA"
L["Alexston Chrome <Tavern of Time>"] = "Alexston Chrome <Gargotte du temps>"
L["Alurmi <Keepers of Time Quartermaster>"] = "Alurmi <Intendant des gardiens du Temps>"
L["Anachronos <Keepers of Time>"] = "Anachronos <Les Gardiens du temps>"
L["Andormu <Keepers of Time>"] = "Andormu <Les Gardiens du temps>"
L["Arazmodu <The Scale of Sands>"] = "Arazmodu <La Balance des sables>"
L["Arcane Container"] = "Récipient arcanique"
L["Arms Warrior"] = "Guerrier Armes"
L["ATLAS_CLICK_TO_OPEN"] = "Cliquez pour ouvrir la fenêtre de carte Atlas."
L["ATLAS_CLOSE_ATLASLOOT_WINDOW"] = "Clic-droit pour fermer la fenêtre AtlasLoot."
L["ATLAS_COLLAPSE_BUTTON"] = "Clic pour fermer le panneau Atlas'legend."
L["ATLAS_DDL_CONTINENT"] = "Continent"
L["ATLAS_DDL_CONTINENT_BROKENISLES"] = "Instances Îles Brisées"
L["ATLAS_DDL_CONTINENT_BROKENISLES1"] = "Donjons des Îles Brisées."
L["ATLAS_DDL_CONTINENT_BROKENISLES2"] = "Raids des Îles Brisées."
L["ATLAS_DDL_CONTINENT_DEEPHOLM"] = "Instances du Tréfonds"
L["ATLAS_DDL_CONTINENT_DRAENOR"] = "Instances de Draenor"
L["ATLAS_DDL_CONTINENT_EASTERN"] = "Instances des Royaumes de l'Est"
L["ATLAS_DDL_CONTINENT_KALIMDOR"] = "Instances de Kalimdor"
L["ATLAS_DDL_CONTINENT_KULTIRAS"] = "Instances de Kul Tiras."
L["ATLAS_DDL_CONTINENT_NAZJATAR"] = "Instances de Nazjatar"
L["ATLAS_DDL_CONTINENT_NORTHREND"] = "Instances de Norfendre"
L["ATLAS_DDL_CONTINENT_OUTLAND"] = "Instances de l'Outreterre"
L["ATLAS_DDL_CONTINENT_PANDARIA"] = "Instances de Pandarie"
L["ATLAS_DDL_CONTINENT_ZANDALAR"] = "Instances de Zandalar"
L["ATLAS_DDL_EXPANSION"] = "Extension"
L["ATLAS_DDL_EXPANSION_BC"] = "Instances Burning Crusade"
L["ATLAS_DDL_EXPANSION_BFA"] = "Instances de Bataille pour Azeroth."
L["ATLAS_DDL_EXPANSION_CATA"] = "Instances Cataclysm"
L["ATLAS_DDL_EXPANSION_LEGION"] = "Instances Légion"
L["ATLAS_DDL_EXPANSION_LEGION1"] = "Donjons de Légion."
L["ATLAS_DDL_EXPANSION_LEGION2"] = "Raids de Légions."
L["ATLAS_DDL_EXPANSION_MOP"] = "Instances Mists of Pandaria"
L["ATLAS_DDL_EXPANSION_OLD"] = "Instances du Vieux Monde"
--[[Translation missing --]]
--[[ L["ATLAS_DDL_EXPANSION_SHADOWLANDS"] = "Shadowlands Instances"--]]
L["ATLAS_DDL_EXPANSION_WOD"] = "Instances Warlords of Draenor"
L["ATLAS_DDL_EXPANSION_WOTLK"] = "Instances Wrath of the Lich King"
L["ATLAS_DDL_LEVEL"] = "Niveau"
L["ATLAS_DDL_LEVEL_100PLUS"] = "Instances Niveau 100+"
L["ATLAS_DDL_LEVEL_100TO110"] = "Instances Niveaux 100-110"
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_10TO20"] = "Instances Level 10-20"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_10TO30"] = "Instances Level 10-30"--]]
L["ATLAS_DDL_LEVEL_110PLUS"] = "Instances Niveau 110+"
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_110TO120"] = "Instances Level 110-120"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_120PLUS"] = "Instances Level 120+"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_120TO130"] = "Instances Level 120-130"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_130PLUS"] = "Instances Level 130+"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_20TO40"] = "Instances Level 20-40"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_30TO35"] = "Instances Level 30-35"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_35TO40"] = "Instances Level 35-40"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_40TO45"] = "Instances Level 40-45"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_40TO60"] = "Instances Level 40-60"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_45TO50"] = "Instances Level 45-50"--]]
L["ATLAS_DDL_LEVEL_45TO60"] = "Instances Niveau 45-60"
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_50TO60"] = "Instances Level 50-60"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_60PLUS"] = "Instances Level 60+"--]]
L["ATLAS_DDL_LEVEL_60TO70"] = "Instances Niveau 60-70"
L["ATLAS_DDL_LEVEL_70TO80"] = "Instances Niveau 70-80"
L["ATLAS_DDL_LEVEL_80TO85"] = "Instances Niveau 80-85"
L["ATLAS_DDL_LEVEL_85TO90"] = "Instances Niveau 85-90"
L["ATLAS_DDL_LEVEL_90TO100"] = "Instances Niveau 90-100"
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_UNDER30"] = "Instances Under Level 30"--]]
L["ATLAS_DDL_LEVEL_UNDER45"] = "Instances avant Niveau 45"
L["ATLAS_DDL_PARTYSIZE"] = "Taille de groupe"
L["ATLAS_DDL_PARTYSIZE_10"] = "Instances pour 10 Joueurs"
L["ATLAS_DDL_PARTYSIZE_20TO40"] = "Instances pour 20-40 Joueurs"
L["ATLAS_DDL_PARTYSIZE_5"] = "Instances pour 5 Joueurs"
L["ATLAS_DDL_TYPE"] = "Type"
L["ATLAS_DDL_TYPE_ENTRANCE"] = "Entrées"
L["ATLAS_DDL_TYPE_INSTANCE"] = "Instances"
L["ATLAS_DEP_MSG1"] = "Atlas a détecté un ou plusieurs addon(s) qui ne sont pas à jour."
L["ATLAS_DEP_MSG2"] = "Ils ont été désactivés pour ce personnage."
L["ATLAS_DEP_MSG3"] = "Les supprimer de votre dossier AddOns."
--[[Translation missing --]]
--[[ L["ATLAS_DEP_MSG4"] = [=[Once you have the latest ones installed,
don't forget to enable them from Addon list.]=]--]]
L["ATLAS_ENTRANCE_BUTTON"] = "Entrée"
--[[Translation missing --]]
--[[ L["ATLAS_EXPAND_BUTTON"] = "Click to open Atlas' legend panel."--]]
L["ATLAS_INSTANCE_BUTTON"] = "Instance"
L["ATLAS_LDB_HINT"] = [=[Clic-Gauche pour ouvrir Atlas.
Clic-Milieu pour les options d'Atlas.
Clic-Droit pour le menu d'affichage.]=]
L["ATLAS_OPEN_ADVENTURE"] = "Cliquer pour ouvrir la fenêtre du Guilde de l'aventurier"
--[[Translation missing --]]
--[[ L["ATLAS_OPEN_ATLASLOOT_WINDOW"] = "Click to open AtlasLoot window."--]]
--[[Translation missing --]]
--[[ L["ATLAS_OPEN_WOWMAP_WINDOW"] = "Click to open Adventure Journal Map window."--]]
L["ATLAS_OPTIONS_ACRONYMS"] = "Afficher les acronymes VO/VF"
L["ATLAS_OPTIONS_ACRONYMS_TIP"] = "Afficher les acronymes de l'instance dans les détails de la carte"
L["ATLAS_OPTIONS_AUTOSEL"] = "Sélection automatique de la carte"
L["ATLAS_OPTIONS_AUTOSEL_TIP"] = "Sélection automatique de la carte, Atlas détectera votre localisation pour choisir votre instance à afficher."
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_BOSS_POTRAIT"] = "Show boss potrait when available"--]]
L["ATLAS_OPTIONS_BUTTON"] = "Options"
L["ATLAS_OPTIONS_CATDD"] = "Trier les instances par :"
L["ATLAS_OPTIONS_CLAMPED"] = "Fixer la fenêtre à l'écran"
L["ATLAS_OPTIONS_CLAMPED_TIP"] = "Fixer la fenêtre à l'écran, désactiver pour permettre de déplacer le fenêtre d'Atlas."
L["ATLAS_OPTIONS_COLORINGDROPDOWN"] = "Afficher les donjons de la liste par couleurs de difficulté"
L["ATLAS_OPTIONS_COLORINGDROPDOWN_TIP"] = "Basé sur le niveau minimum recommandé par le donjon et le niveau du joueur, pour afficher le donjon avec des couleurs de difficulté."
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_HEADER_ADDONCONFIG"] = "Addon Configurations"--]]
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_HEADER_DISPLAY"] = "Display Options"--]]
L["ATLAS_OPTIONS_LOCK"] = "Verrouiller la fenêtre d'Atlas"
L["ATLAS_OPTIONS_LOCK_TIP"] = "Verrouiller/déverrouiller la fenêtre d'Atlas"
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_MAXMENUITEMS"] = "Maximum Number of Menu Items"--]]
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_MAXMENUITEMS_TIP"] = "Configure the maximum number of dropdown menu items to be displayed before spliting to another menu category."--]]
L["ATLAS_OPTIONS_RCLICK"] = "Clic droit pour afficher la carte du monde"
L["ATLAS_OPTIONS_RCLICK_TIP"] = "Active le clic droit dans la fenêtre Atlas pour afficher la carte du monde."
L["ATLAS_OPTIONS_SCALE"] = "Échelle"
L["ATLAS_OPTIONS_SHOWBUT"] = "Afficher le bouton sur la mini-carte"
L["ATLAS_OPTIONS_SHOWBUT_TIP"] = "Afficher le bouton Atlas autour de la mini-carte"
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_SHOWWMBUT"] = "Show Button on World Map window."--]]
L["ATLAS_OPTIONS_TRANS"] = "Transparence"
L["ATLAS_OPTIONS_FRAME"] = "Fenêtre Atlas"
L["ATLAS_OPTIONS_FRAME_SMALL"] = "Petite Fenêtre Atlas"
--[[Translation missing --]]
--[[ L["ATLAS_REOPEN_LOOT_AGAIN"] = "Please reopen the loot window to reload."--]]
--[[Translation missing --]]
--[[ L["ATLAS_ROPEN_ATLASLOOT_WINDOW"] = "Right-click to open AtlasLoot window."--]]
L["ATLAS_SLASH"] = "/atlas"
L["ATLAS_SLASH_OPTIONS"] = "options"
L["ATLAS_STRING_LEVELRANGE"] = "Niveau"
L["ATLAS_STRING_LOCATION"] = "Lieu"
--[[Translation missing --]]
--[[ L["ATLAS_STRING_MINGEARLEVEL"] = "Minimum Gear Level"--]]
L["ATLAS_STRING_MINLEVEL"] = "Niveau Minimum"
L["ATLAS_STRING_PLAYERLIMIT"] = "Limite de joueurs"
L["ATLAS_STRING_RECLEVELRANGE"] = "Niveau recommandé"
L["ATLAS_STRING_SELECT_CAT"] = "Choix de la catégorie"
L["ATLAS_STRING_SELECT_MAP"] = "Choix de la carte"
L["ATLAS_TITLE"] = "Atlas"
--[[Translation missing --]]
--[[ L["ATLAS_TOGGLE_LOOT"] = "Right-click to toggle loot panel."--]]
L["Attunement Required"] = "Harmonisation requise"
L["Back"] = "de derrière"
L["Basement"] = "Sous-sol"
L["BINDING_HEADER_ATLAS_TITLE"] = "Atlas"
L["BINDING_NAME_ATLAS_AUTOSEL"] = "Auto-Select"
L["BINDING_NAME_ATLAS_OPTIONS"] = "Options [Ouvrir/Fermer]"
L["BINDING_NAME_ATLAS_TOGGLE"] = "Atlas [Ouvrir/Fermer]"
L["Blacksmithing Plans"] = "Plans de forgeron"
L["Bodley"] = "Bodley"
L["Bortega <Reagents & Poison Supplies>"] = "Bortega <Composants & poisons>"
L["Brewfest"] = "Fête des Brasseurs"
L["Child"] = "Enfant"
L["Colon"] = " : "
L["Comma"] = ", "
L["Connection"] = "Connexion"
L["East"] = "Est"
L["Elevator"] = "Ascenseur"
L["End"] = "Fin"
L["Engineer"] = "Ingénieur"
L["Entrance"] = "Entrée"
L["Event"] = "Evènement"
L["Exalted"] = "Exalté"
L["Exit"] = "Sortie"
L["Fourth Stop"] = "Quatrième arrêt"
L["Front"] = "Principale"
L["Galgrom <Provisioner>"] = "Galgrom <Approvisionneur>"
L["Ghost"] = "Fantôme"
L["Graveyard"] = "Cimetière"
L["Hallow's End"] = "Sanssaint"
L["Heroic"] = "Héroïque"
L["Heroic_Symbol"] = "(H)"
L["Holy Paladin"] = "Paladin Sacré"
L["Holy Priest"] = "Prêtre Sacré"
L["Hyphen"] = "-"
L["Imp"] = "Diablotin"
L["Key"] = "Clé"
L["Lothos Riftwaker"] = "Lothos Ouvrefaille"
L["Love is in the Air"] = "De l'amour dans l'air"
L["Lower"] = "En bas"
L["L-Parenthesis"] = " ("
L["Lunar Festival"] = "Festival lunaire"
L["MapA"] = " [A]"
L["MapB"] = " [B]"
L["MapC"] = " [C]"
L["MapD"] = " [D]"
L["MapE"] = " [E]"
L["MapF"] = " [F]"
L["MapG"] = " [G]"
L["MapH"] = " [H]"
L["MapI"] = " [I]"
L["MapJ"] = " [J]"
L["Meeting Stone"] = "Pierre de rencontre"
L["Middle"] = "Milieu"
L["Midsummer Festival"] = "Solstice d'été : la fête du Feu"
L["Moonwell"] = "Puits de lune"
L["Mythic"] = "Mythique"
L["Mythic_Symbol"] = "(M)"
L["North"] = "Nord"
L["Nozari <Keepers of Time>"] = "Nozari <Les Gardiens du temps>"
L["Optional"] = "Optionel"
L["Orange"] = "Orange"
L["Orb of Command"] = "Orbe de Commandement"
L["Outside"] = "Extérieur"
L["Portal"] = "Portail"
--[[Translation missing --]]
--[[ L["Portal to %s"] = "Portal to %s"--]]
--[[Translation missing --]]
--[[ L["Profile Options"] = "Profile Options"--]]
L["Protection Warrior"] = "Guerrier Protection"
L["Purple"] = "Violet"
L["Random"] = "Aléatoire"
L["Rare"] = "Rare"
L["Repair"] = "Réparation"
L["Retribution Paladin"] = "Paladin Vindicte"
L["R-Parenthesis"] = ") "
--[[Translation missing --]]
--[[ L["Scale and Transparency"] = "Scale and Transparency"--]]
L["Scarshield Quartermaster <Scarshield Legion>"] = "Intendant du Bouclier balafré <Légion du Bouclier balafré>"
L["Second Stop"] = "Deuxième arrêt"
L["Shadow Priest"] = "Prêtre Ombre"
L["Slash"] = "/ "
L["Soridormi <The Scale of Sands>"] = "Soridormi <La Balance des sables>"
L["South"] = "Sud"
L["Spawn Point"] = "Points d'apparition"
--[[Translation missing --]]
--[[ L["Stairs"] = "Stairs"--]]
--[[Translation missing --]]
--[[ L["Stairs to %s"] = "Stairs to %s"--]]
L["Start"] = "Début"
L["Steward of Time <Keepers of Time>"] = "Régisseur du temps <Les Gardiens du temps>"
L["Summon"] = "Invoqué"
L["Teleporter"] = "Téléporteur"
L["Teleporter destination"] = "Destination du téléporteur"
L["The Behemoth"] = "Le Béhémoth"
L["Third Stop"] = "Troisième arrêt"
L["Top"] = "Haut"
L["Transport"] = "Transport"
L["Tunnel"] = "Tunnel"
L["Underwater"] = "Sous l'eau"
L["Upper"] = "En haut"
--[[Translation missing --]]
--[[ L["Upper floor"] = "Upper floor"--]]
L["Varies"] = "Variable"
L["Wanders"] = "Errant"
L["Wave 10"] = "Vague 10"
L["Wave 12"] = "Vague 12"
L["Wave 18"] = "Vague 18"
L["Wave 5"] = "Vague 5"
L["Wave 6"] = "Vague 6"
L["West"] = "Ouest"
L["Yarley <Armorer>"] = "Yarley <Armurier>"
L["Zaladormu"] = "Zaladormu"

L["Find group for this instance"] = "Rechercher un groupe pour cette instance"
L["LFG is unavailable until level 10"] = "LFG n'est pas disponible jusqu'au niveau 10"
