local rs = game:GetService("ReplicatedStorage")
local clientData = require(rs.Fsys).load("ClientData")
local ailments = clientData.get("ailments_manager")

if ailments then
    for category, list in pairs(ailments) do
        print("Category:", category)
        if type(list) == "table" then
            for id, data in pairs(list) do
                print("  Target/ID:", id)
                if type(data) == "table" then
                    for k, v in pairs(data) do
                        print("    ", k, "=", v)
                    end
                end
            end
        end
    end
end
