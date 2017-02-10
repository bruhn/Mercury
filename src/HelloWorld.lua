function HelloWorld()
    local frame = CreateFrame("FRAME", "FooAddonFrame");
    frame:RegisterEvent("AUCTION_ITEM_LIST_UPDATE");
    local function eventHandler(self, event, ...)
        print("Auction items loaded!")
        local name, _, count, _, _, _, _, _, _, buyoutPrice, _, _, _, _, _, _, _, _ = GetAuctionItemInfo("list", 1);
        -- message(name);
        resultList:SetText(name);
        -- resultList:S
    end
    frame:SetScript("OnEvent", eventHandler);

  QueryAuctionItems(searchInput:GetText(), nil, nil, 0, 0, 0, false, false, nil);
end

