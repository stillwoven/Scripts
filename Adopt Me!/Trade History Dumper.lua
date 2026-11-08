local rs = game:GetService("ReplicatedStorage")
local res = rs.API["TradeAPI/GetTradeHistory"]:InvokeServer()

for i, t in ipairs(res) do
    print(string.format("Trade #%d | ID: %s | Type: %s", i, tostring(t.trade_id), tostring(t.trade_type)))
    print(string.format("  %s -> %s", tostring(t.sender_name), tostring(t.recipient_name)))
    for _, role in ipairs({"sender_items", "recipient_items"}) do
        print("   ", role)
        for _, item in ipairs(t[role]) do
            local p = item.properties or {}
            local tags = (p.neon and "Neon " or "") .. (p.mega_neon and "Mega " or "") .. (p.flyable and "Fly " or "") .. (p.rideable and "Ride" or "")
            print("     -", item.kind, tags ~= "" and "[" .. tags:gsub("%s+$", "") .. "]" or "")
        end
    end
end
