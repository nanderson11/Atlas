AtlasAchievementEntryMixin = {}

function AtlasAchievementEntryMixin:Init(data)
	Atlas:GetAchievementName(self, data.data)
end

function AtlasAchievementEntryMixin:OnClick()
	Atlas:OpenAchievement(self.info.data)
end

function AtlasAchievementEntryMixin:OnEnter()
	GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
	GameTooltip:SetHyperlink(GetAchievementLink(self.info.data))
	GameTooltip:Show()
end

function AtlasAchievementEntryMixin:OnLeave()
	GameTooltip:Hide()
end

--------------------------------------------------------------------------------------------

AtlasBossEntryMixin = {}

function AtlasBossEntryMixin:Init(data)
	self.Text:SetText(data.data[1])
end

function AtlasBossEntryMixin:OnClick()

end

function AtlasBossEntryMixin:OnEnter()

end

function AtlasBossEntryMixin:OnLeave()
	GameTooltip:Hide()
end

--------------------------------------------------------------------------------------------

AtlasItemEntryMixin = {}

function AtlasItemEntryMixin:Init(data)
	local itemName = C_Item.GetItemInfo(data.data[2])
	itemName = itemName or C_Item.GetItemInfo(data.data[2]) or data.data[3] or ""
	self.Text:SetText(data.data[1]..itemName)
end

function AtlasItemEntryMixin:OnClick()

end

function AtlasItemEntryMixin:OnEnter()
	GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
	GameTooltip:SetHyperlink("item:"..self.info.data[2])
	GameTooltip:Show()
end

function AtlasItemEntryMixin:OnLeave()
	GameTooltip:Hide()
end

--------------------------------------------------------------------------------------------

AtlasStringEntryMixin = {}

function AtlasStringEntryMixin:Init(data)
	self.Text:SetText(data.data)
end
