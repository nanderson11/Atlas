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

-- Determine WoW TOC Version
local WoWClassicEra, WoWClassic, WoWRetail
local wowversion = select(4, GetBuildInfo())
if wowversion < 20000 then
	WoWClassicEra = true
elseif wowversion > 20000 and wowversion < 90000 then
	WoWClassic = true
elseif wowversion > 90000 then
	WoWRetail = true
end

local FOLDER_NAME, private = ...
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)

function addon:AchievementButtonUpdate(button, achievementID)
	-- WOLTKC starts to introduce achievement system, so we are only skipping this for Classic Era
	if (WoWClassicEra) then return end

	button.achievementID = achievementID
	button.link = GetAchievementLink(achievementID) or nil

	local _, name, _, completed, month, day, year, description, _, icon, _, _, _, earnedBy = GetAchievementInfo(achievementID)
	if (name) then
		button.tooltiptitle = format("|T%d:0:0|t |cFFFFFFFF%s|r", icon, name)
		local tooltiptext = description
		local numCriteria = GetAchievementNumCriteria(achievementID)

		if (numCriteria and numCriteria > 0) then
			for i = 1, numCriteria do
				local criteriaString, criteriaType, criteriaCompleted, quantity, reqQuantity, _, flags, assetID, quantityString = GetAchievementCriteriaInfo(achievementID, i)
				if (criteriaType) then
					if (criteriaType == CRITERIA_TYPE_ACHIEVEMENT and assetID) then
						local _, aname, _, acompleted = GetAchievementInfo(assetID)
						if (acompleted) then
							tooltiptext = tooltiptext.."\n|CFFFFFFFF - "..aname
						else
							tooltiptext = tooltiptext.."\n|CFF808080 - "..aname
						end
					elseif (bit.band(flags, EVALUATION_TREE_FLAG_PROGRESS_BAR) == EVALUATION_TREE_FLAG_PROGRESS_BAR) then
						--elseif (criteriaString == "" or reqQuantity > 1) then
						if (quantity >= reqQuantity) then
							tooltiptext = tooltiptext.."\n|CFFFFFFFF - "..quantityString
						else
							tooltiptext = tooltiptext.."\n|CFF808080 - "..quantityString
						end
					else
						if (criteriaCompleted) then
							tooltiptext = tooltiptext.."\n|CFFFFFFFF - "..criteriaString
						else
							tooltiptext = tooltiptext.."\n|CFF808080 - "..criteriaString
						end
					end
				end
			end
		end

		if (completed) then
			name = format("      |T%d:0:0|t |CFFFFFFFF%s", icon, name)
			tooltiptext = tooltiptext.."\n|CFF00FF00"..format(ACHIEVEMENT_TOOLTIP_COMPLETE, earnedBy, month, day, year)
		else
			name = format("      |T%d:0:0|t |CFF808080%s", icon, name)
		end

		button.Text:SetText(name)
		button.tooltiptext = tooltiptext.."\n|CFF8080FF"..L["ATLAS_OPEN_ACHIEVEMENT"].."|R"
	end
end

function addon:OpenAchievement(achievementID)
	-- WOLTKC starts to introduce achievement system, so we are only skipping this for Classic Era
	if (WoWClassicEra) then return end

	if not achievementID then return end

	if not C_AddOns.IsAddOnLoaded("Blizzard_AchievementUI") then
		C_AddOns.LoadAddOn("Blizzard_AchievementUI")
	end

	HideUIPanel(AchievementFrame)
	ShowUIPanel(AchievementFrame)
	AchievementFrame_SelectAchievement(achievementID, true)
end
