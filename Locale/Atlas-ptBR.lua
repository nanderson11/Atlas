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

local L = LibStub("AceLocale-3.0"):NewLocale("Atlas", "ptBR");

if (GetLocale() == "ptBR") then
	-- Define the leading strings to be ignored while sorting
	-- Ex: The Stockade
	--AtlasSortIgnore = {"the (.+)"};

	-- Syntax: ["real_zone_name"] = "localized map zone name"
	AtlasZoneSubstitutions = {
		--	["Ahn'Qiraj"] = "Temple of Ahn'Qiraj";
		--	["The Temple of Atal'Hakkar"] = "Sunken Temple";
		--	["Throne of Tides"] = "The Abyssal Maw: Throne of the Tides";
	};
end

if not L then return end

L[" 1/2"] = "1/2"
L[" 2/2"] = "2/2"
L["%s Dungeons"] = "Masmorras de %s"
L["%s Instances"] = "Instâncias de %s"
L["%s Raids"] = "Raides de %s"
L["Adult"] = "Adulto"
L["AKA"] = "Conhecido como"
--[[Translation missing --]]
--[[ L["Alexston Chrome <Tavern of Time>"] = "Alexston Chrome <Tavern of Time>"--]]
--[[Translation missing --]]
--[[ L["Alurmi <Keepers of Time Quartermaster>"] = "Alurmi <Keepers of Time Quartermaster>"--]]
--[[Translation missing --]]
--[[ L["Anachronos <Keepers of Time>"] = "Anachronos <Keepers of Time>"--]]
--[[Translation missing --]]
--[[ L["Andormu <Keepers of Time>"] = "Andormu <Keepers of Time>"--]]
--[[Translation missing --]]
--[[ L["Arazmodu <The Scale of Sands>"] = "Arazmodu <The Scale of Sands>"--]]
--[[Translation missing --]]
--[[ L["Arcane Container"] = "Arcane Container"--]]
L["Arms Warrior"] = "Guerreiro Armas"
L["ATLAS_CLICK_TO_OPEN"] = "Clique para abrir a janela do mapa do Atlas."
--[[Translation missing --]]
--[[ L["ATLAS_CLOSE_ATLASLOOT_WINDOW"] = "Right-click to close AtlasLoot window."--]]
L["ATLAS_COLLAPSE_BUTTON"] = "Clique para fechar o painel de legendas do Atlas."
L["ATLAS_DDL_CONTINENT"] = "Continente"
--[[Translation missing --]]
--[[ L["ATLAS_DDL_CONTINENT_BROKENISLES"] = "Broken Isles Instances"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_CONTINENT_BROKENISLES1"] = "Broken Isles Dungeons"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_CONTINENT_BROKENISLES2"] = "Broken Isles Raids"--]]
L["ATLAS_DDL_CONTINENT_DEEPHOLM"] = "Masmorras de Geodomo"
L["ATLAS_DDL_CONTINENT_DRAENOR"] = "Instâncias de Draenor"
L["ATLAS_DDL_CONTINENT_EASTERN"] = "Masmorras dos Reinos do Leste"
L["ATLAS_DDL_CONTINENT_KALIMDOR"] = "Masmorras de Kalimdor"
--[[Translation missing --]]
--[[ L["ATLAS_DDL_CONTINENT_KULTIRAS"] = "Kul Tiras Instances"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_CONTINENT_NAZJATAR"] = "Nazjatar Instances"--]]
L["ATLAS_DDL_CONTINENT_NORTHREND"] = "Masmorras de Nortúndria"
L["ATLAS_DDL_CONTINENT_OUTLAND"] = "Masmorras de Terralém"
L["ATLAS_DDL_CONTINENT_PANDARIA"] = "Instâncias de Pandaria"
--[[Translation missing --]]
--[[ L["ATLAS_DDL_CONTINENT_ZANDALAR"] = "Zandalar Instances"--]]
L["ATLAS_DDL_EXPANSION"] = "Expansão"
L["ATLAS_DDL_EXPANSION_BC"] = "Masmorras de Burning Crusade"
--[[Translation missing --]]
--[[ L["ATLAS_DDL_EXPANSION_BFA"] = "Battle for Azeroth Instances"--]]
L["ATLAS_DDL_EXPANSION_CATA"] = "Masmorras do Cataclisma"
--[[Translation missing --]]
--[[ L["ATLAS_DDL_EXPANSION_LEGION"] = "Legion Instances"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_EXPANSION_LEGION1"] = "Legion Dungeons"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_EXPANSION_LEGION2"] = "Legion Raids"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_EXPANSION_MOP"] = "Mists of Pandaria Instances"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_EXPANSION_OLD"] = "Old World Instances"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_EXPANSION_SHADOWLANDS"] = "Shadowlands Instances"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_EXPANSION_WOD"] = "Warlords of Draenor Instances"--]]
L["ATLAS_DDL_EXPANSION_WOTLK"] = "Instância de Wrath of the Lich King"
L["ATLAS_DDL_LEVEL"] = "Nível"
L["ATLAS_DDL_LEVEL_100PLUS"] = "Instâncias de Nível 100+"
L["ATLAS_DDL_LEVEL_100TO110"] = "Instâncias de Nível 100-110"
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_10TO20"] = "Instances Level 10-20"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_10TO30"] = "Instances Level 10-30"--]]
L["ATLAS_DDL_LEVEL_110PLUS"] = "Instâncias de Nível 110+"
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
L["ATLAS_DDL_LEVEL_45TO60"] = "Nível das Instâncias 45-60"
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_50TO60"] = "Instances Level 50-60"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_60PLUS"] = "Instances Level 60+"--]]
L["ATLAS_DDL_LEVEL_60TO70"] = "Nível das Instâncias 60-70"
L["ATLAS_DDL_LEVEL_70TO80"] = "Nível das Instâncias 70-80"
L["ATLAS_DDL_LEVEL_80TO85"] = "Nível das Instâncias 80-85"
L["ATLAS_DDL_LEVEL_85TO90"] = "Instâncias de Nível 85-90"
L["ATLAS_DDL_LEVEL_90TO100"] = "Instâncias de Nível 90-100"
--[[Translation missing --]]
--[[ L["ATLAS_DDL_LEVEL_UNDER30"] = "Instances Under Level 30"--]]
L["ATLAS_DDL_LEVEL_UNDER45"] = "Instâncias abaixo do Nível 45"
L["ATLAS_DDL_PARTYSIZE"] = "Tamanho do Grupo"
--[[Translation missing --]]
--[[ L["ATLAS_DDL_PARTYSIZE_10"] = "Instances for 10 Players"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_PARTYSIZE_20TO40"] = "Instances for 20-40 Players"--]]
--[[Translation missing --]]
--[[ L["ATLAS_DDL_PARTYSIZE_5"] = "Instances for 5 Players"--]]
L["ATLAS_DDL_TYPE"] = "Tipo"
L["ATLAS_DDL_TYPE_ENTRANCE"] = "Entradas"
--[[Translation missing --]]
--[[ L["ATLAS_DDL_TYPE_INSTANCE"] = "Instances"--]]
L["ATLAS_DEP_MSG1"] = "O Atlas detectou módulo(s) desatualizado(s)."
--[[Translation missing --]]
--[[ L["ATLAS_DEP_MSG2"] = "It has / They have been disabled for this character."--]]
--[[Translation missing --]]
--[[ L["ATLAS_DEP_MSG3"] = [=[Delete it/them from your AddOns folder and get the latest one installed.

List of outdated plugin(s)/module(s)/addon(s):]=]--]]
--[[Translation missing --]]
--[[ L["ATLAS_DEP_MSG4"] = [=[Once you have the latest ones installed,
don't forget to enable them from Addon list.]=]--]]
L["ATLAS_ENTRANCE_BUTTON"] = "Entrada"
L["ATLAS_EXPAND_BUTTON"] = "Clique para abrir o painel de legendas do Atlas."
L["ATLAS_INSTANCE_BUTTON"] = "Instância"
L["ATLAS_LDB_HINT"] = [=[Clique com o botão esquerdo para abrir o Atlas.
Clique com o botão direito para abrir as opções do Atlas.]=]
--[[Translation missing --]]
--[[ L["ATLAS_OPEN_ADVENTURE"] = "Click to open Adventure Journal window."--]]
--[[Translation missing --]]
--[[ L["ATLAS_OPEN_ATLASLOOT_WINDOW"] = "Click to open AtlasLoot window."--]]
--[[Translation missing --]]
--[[ L["ATLAS_OPEN_WOWMAP_WINDOW"] = "Click to open Adventure Journal Map window."--]]
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_ACRONYMS"] = "Display Acronyms"--]]
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_ACRONYMS_TIP"] = "Display the instance's acronym in the map details."--]]
L["ATLAS_OPTIONS_AUTOSEL"] = "Selecione automaticamente o Mapa da Instância"
L["ATLAS_OPTIONS_AUTOSEL_TIP"] = "Selecione automaticamente o Mapa da Instância, o Atlas vai detectar a sua localização para escolher o melhor mapa de instância para você."
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_BOSS_POTRAIT"] = "Show boss potrait when available"--]]
L["ATLAS_OPTIONS_BUTTON"] = "Opções"
L["ATLAS_OPTIONS_CATDD"] = "Organize os Mapas de Instâncias por:"
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_CLAMPED"] = "Clamp window to screen"--]]
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_CLAMPED_TIP"] = "Clamp Atlas window to screen, disable to allow Atlas window can be dragged outside the game screen."--]]
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_COLORINGDROPDOWN"] = "Show instance dropdown in colors"--]]
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_COLORINGDROPDOWN_TIP"] = "Based on the instance's recommended minimul level and player's level, to show the instance with difficulty colors."--]]
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_HEADER_ADDONCONFIG"] = "Addon Configurations"--]]
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_HEADER_DISPLAY"] = "Display Options"--]]
L["ATLAS_OPTIONS_LOCK"] = "Travar a janela do Atlas"
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_LOCK_TIP"] = "Toggle lock / unlock of Atlas window."--]]
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_MAXMENUITEMS"] = "Maximum Number of Menu Items"--]]
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_MAXMENUITEMS_TIP"] = "Configure the maximum number of dropdown menu items to be displayed before spliting to another menu category."--]]
L["ATLAS_OPTIONS_RCLICK"] = "Clique com o botão direito para ir para o mapa-múndi"
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_RCLICK_TIP"] = "Enable the Right-Click in Atlas window to switch to WoW World Map."--]]
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_SCALE"] = "Atlas Frame Scale"--]]
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_SHOWBUT"] = "Show Button on Minimap"--]]
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_SHOWBUT_TIP"] = "Show Atlas button around the minimap."--]]
--[[Translation missing --]]
--[[ L["ATLAS_OPTIONS_SHOWWMBUT"] = "Show Button on World Map window."--]]
L["ATLAS_OPTIONS_TRANS"] = "Transparência"
--[[Translation missing --]]
--[[ L["ATLAS_REOPEN_LOOT_AGAIN"] = "Please reopen the loot window to reload."--]]
--[[Translation missing --]]
--[[ L["ATLAS_ROPEN_ATLASLOOT_WINDOW"] = "Right-click to open AtlasLoot window."--]]
L["ATLAS_SLASH"] = "/atlas"
L["ATLAS_SLASH_OPTIONS"] = "opções"
--[[Translation missing --]]
--[[ L["ATLAS_STRING_LEVELRANGE"] = "Level Range"--]]
L["ATLAS_STRING_LOCATION"] = "Localização"
--[[Translation missing --]]
--[[ L["ATLAS_STRING_MINGEARLEVEL"] = "Minimum Gear Level"--]]
L["ATLAS_STRING_MINLEVEL"] = "Nível Mínimo"
L["ATLAS_STRING_PLAYERLIMIT"] = "Limite de Jogadores"
L["ATLAS_STRING_RECLEVELRANGE"] = "Nível Recomendado"
L["ATLAS_STRING_SELECT_CAT"] = "Selecione a Categoria"
L["ATLAS_STRING_SELECT_MAP"] = "Selecione o Mapa"
L["ATLAS_TITLE"] = "Atlas"
--[[Translation missing --]]
--[[ L["ATLAS_TOGGLE_LOOT"] = "Right-click to toggle loot panel."--]]
--[[Translation missing --]]
--[[ L["Attunement Required"] = "Attunement Required"--]]
--[[Translation missing --]]
--[[ L["Back"] = "Back"--]]
L["Basement"] = "Porão"
--[[Translation missing --]]
--[[ L["BINDING_HEADER_ATLAS_TITLE"] = "Atlas Bindings"--]]
--[[Translation missing --]]
--[[ L["BINDING_NAME_ATLAS_AUTOSEL"] = "Auto-Select"--]]
--[[Translation missing --]]
--[[ L["BINDING_NAME_ATLAS_OPTIONS"] = "Toggle Options"--]]
--[[Translation missing --]]
--[[ L["BINDING_NAME_ATLAS_TOGGLE"] = "Toggle Atlas"--]]
L["Blacksmithing Plans"] = "Instruções de Ferraria"
--[[Translation missing --]]
--[[ L["Bodley"] = "Bodley"--]]
--[[Translation missing --]]
--[[ L["Bortega <Reagents & Poison Supplies>"] = "Bortega <Reagents & Poison Supplies>"--]]
--[[Translation missing --]]
--[[ L["Brewfest"] = "Brewfest"--]]
L["Child"] = "Criança"
L["Colon"] = ":"
L["Comma"] = ","
L["Connection"] = "Conexão"
L["East"] = "Leste"
L["Elevator"] = "Elevador"
L["End"] = "Fim"
L["Engineer"] = "Engenheiro"
L["Entrance"] = "Entrada"
L["Event"] = "Evento"
--[[Translation missing --]]
--[[ L["Exalted"] = "Exalted"--]]
L["Exit"] = "Saída"
L["Fourth Stop"] = "Quarta Parada"
--[[Translation missing --]]
--[[ L["Front"] = "Front"--]]
--[[Translation missing --]]
--[[ L["Galgrom <Provisioner>"] = "Galgrom <Provisioner>"--]]
L["Ghost"] = "Fantasma"
L["Graveyard"] = "Cemitério"
--[[Translation missing --]]
--[[ L["Hallow's End"] = "Hallow's End"--]]
L["Heroic"] = "Heróico"
L["Heroic_Symbol"] = "(H)"
L["Holy Paladin"] = "Paladino Sagrado"
L["Holy Priest"] = "Sacerdote Sagrado"
L["Hyphen"] = "-"
--[[Translation missing --]]
--[[ L["Imp"] = "Imp"--]]
L["Key"] = "Chave"
--[[Translation missing --]]
--[[ L["Lothos Riftwaker"] = "Lothos Riftwaker"--]]
--[[Translation missing --]]
--[[ L["Love is in the Air"] = "Love is in the Air"--]]
--[[Translation missing --]]
--[[ L["Lower"] = "Lower"--]]
L["L-Parenthesis"] = " ("
--[[Translation missing --]]
--[[ L["Lunar Festival"] = "Lunar Festival"--]]
L["MapA"] = "[A]"
L["MapB"] = "[B]"
L["MapC"] = "[C]"
L["MapD"] = "[D]"
L["MapE"] = "[E]"
L["MapF"] = "[F]"
L["MapG"] = "[G]"
L["MapH"] = "[H]"
L["MapI"] = "[I]"
L["MapJ"] = "[J]"
--[[Translation missing --]]
--[[ L["Meeting Stone"] = "Meeting Stone"--]]
L["Middle"] = "Meio"
--[[Translation missing --]]
--[[ L["Midsummer Festival"] = "Midsummer Festival"--]]
--[[Translation missing --]]
--[[ L["Moonwell"] = "Moonwell"--]]
L["Mythic"] = "Mítico"
L["Mythic_Symbol"] = "(M)"
L["North"] = "Norte"
--[[Translation missing --]]
--[[ L["Nozari <Keepers of Time>"] = "Nozari <Keepers of Time>"--]]
L["Optional"] = "Opcional"
--[[Translation missing --]]
--[[ L["Orange"] = "Orange"--]]
--[[Translation missing --]]
--[[ L["Orb of Command"] = "Orb of Command"--]]
--[[Translation missing --]]
--[[ L["Outside"] = "Outside"--]]
L["Portal"] = "Portal"
--[[Translation missing --]]
--[[ L["Portal to %s"] = "Portal to %s"--]]
--[[Translation missing --]]
--[[ L["Profile Options"] = "Profile Options"--]]
L["Protection Warrior"] = "Guerreiro Proteção"
--[[Translation missing --]]
--[[ L["Purple"] = "Purple"--]]
L["Random"] = "Aleatório"
L["Rare"] = "Raro"
L["Repair"] = "Reparar"
L["Retribution Paladin"] = "Paladino Retribuição"
L["R-Parenthesis"] = ")"
--[[Translation missing --]]
--[[ L["Scale and Transparency"] = "Scale and Transparency"--]]
--[[Translation missing --]]
--[[ L["Scarshield Quartermaster <Scarshield Legion>"] = "Scarshield Quartermaster <Scarshield Legion>"--]]
L["Second Stop"] = "Segunda Parada"
--[[Translation missing --]]
--[[ L["Shadow Priest"] = "Shadow Priest"--]]
L["Slash"] = "/"
--[[Translation missing --]]
--[[ L["Soridormi <The Scale of Sands>"] = "Soridormi <The Scale of Sands>"--]]
L["South"] = "Sul"
--[[Translation missing --]]
--[[ L["Spawn Point"] = "Spawn Point"--]]
--[[Translation missing --]]
--[[ L["Stairs"] = "Stairs"--]]
--[[Translation missing --]]
--[[ L["Stairs to %s"] = "Stairs to %s"--]]
L["Start"] = "início"
--[[Translation missing --]]
--[[ L["Steward of Time <Keepers of Time>"] = "Steward of Time <Keepers of Time>"--]]
--[[Translation missing --]]
--[[ L["Summon"] = "Summon"--]]
L["Teleporter"] = "Teletransportador"
L["Teleporter destination"] = "Destino do teletransportador"
--[[Translation missing --]]
--[[ L["The Behemoth"] = "The Behemoth"--]]
L["Third Stop"] = "Terceira Parada"
L["Top"] = "Topo"
L["Transport"] = "Transporte"
L["Tunnel"] = "Túnel"
--[[Translation missing --]]
--[[ L["Underwater"] = "Underwater"--]]
--[[Translation missing --]]
--[[ L["Upper"] = "Upper"--]]
--[[Translation missing --]]
--[[ L["Upper floor"] = "Upper floor"--]]
--[[Translation missing --]]
--[[ L["Varies"] = "Varies"--]]
--[[Translation missing --]]
--[[ L["Wanders"] = "Wanders"--]]
--[[Translation missing --]]
--[[ L["Wave 10"] = "Wave 10"--]]
--[[Translation missing --]]
--[[ L["Wave 12"] = "Wave 12"--]]
--[[Translation missing --]]
--[[ L["Wave 18"] = "Wave 18"--]]
--[[Translation missing --]]
--[[ L["Wave 5"] = "Wave 5"--]]
--[[Translation missing --]]
--[[ L["Wave 6"] = "Wave 6"--]]
L["West"] = "Oeste"
L["Yarley <Armorer>"] = "Yarley <Armoraria>"
L["Zaladormu"] = "Zaladormu"

L["Find group for this instance"] = "Procurando grupo para esta instância"
L["LFG is unavailable until level 10"] = "PG não está disponível até o nível 10"
