AtlasAchievementEntryMixin = {}

function AtlasAchievementEntryMixin:Init(data)
	Atlas:GetAchievementName(self, data.achievementID)
end

function AtlasAchievementEntryMixin:OnClick()
	if IsShiftKeyDown() then
		local chat = ChatEdit_GetActiveWindow();
		if chat then
			chat:Insert(GetAchievementLink(self.data.achievementID));
		end
	else
		Atlas:OpenAchievement(self.data.achievementID)
	end
end

function AtlasAchievementEntryMixin:OnEnter()
	GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
	GameTooltip:SetHyperlink(GetAchievementLink(self.data.achievementID))
	GameTooltip:Show()
end

function AtlasAchievementEntryMixin:OnLeave()
	GameTooltip:Hide()
end

--------------------------------------------------------------------------------------------

AtlasBossEntryMixin = {}

function AtlasBossEntryMixin:Init(data)
	self.Text:SetText(data.text)
end

function AtlasBossEntryMixin:OnClick()
	if (self.data.instanceID and self.data.encounterID) then
		Atlas:AdventureJournal_EncounterButton_OnClick(self.data.instanceID, self.data.encounterID, true)
	end
end

function AtlasBossEntryMixin:OnEnter()
	local name, description = EJ_GetEncounterInfo(self.data.encounterID)
	if (name) then
		GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
		GameTooltip:SetText(name, 1, 1, 1, 1)
		if (self.tooltiptext) then
			GameTooltip:AddLine(description, nil, nil, nil, 1)
		end
	end
end

function AtlasBossEntryMixin:OnLeave()
	GameTooltip:Hide()
end

--------------------------------------------------------------------------------------------

AtlasItemEntryMixin = {}

function AtlasItemEntryMixin:Init(data)
	local itemName = C_Item.GetItemInfo(data.itemID)
	itemName = itemName or C_Item.GetItemInfo(data.itemID) or data.fallbackName or ""
	self.Text:SetText(data.text..itemName)
end

function AtlasItemEntryMixin:OnClick()
	if IsShiftKeyDown() then
		local chat = ChatEdit_GetActiveWindow();
		if chat then
			-- item should be cached already because it was fetched when displayed
			local _, link = C_Item.GetItemInfo(self.data.itemID);
			chat:Insert(link);
		end
	end
end

function AtlasItemEntryMixin:OnEnter()
	GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
	GameTooltip:SetHyperlink("item:"..self.data.itemID)
	GameTooltip:Show()
end

function AtlasItemEntryMixin:OnLeave()
	GameTooltip:Hide()
end

--------------------------------------------------------------------------------------------

AtlasStringEntryMixin = {}

function AtlasStringEntryMixin:Init(data)
	self.Text:SetText(data.text)
end
