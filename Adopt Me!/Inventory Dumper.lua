local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Fsys = require(ReplicatedStorage:WaitForChild("Fsys"))
local ClientData = Fsys.load("ClientData")
local inventory = ClientData.get("inventory")

local pets = inventory and inventory.pets or {}
for uuid, item in pairs(pets) do
    if type(item) == "table" then
        local kind = item.kind or item.id or "unknown"
        local props = item.properties or {}
        local name = props.name or kind
        
        local isRideable = props.rideable or false
        local isFlyable = props.flyable or false
        local status = "normal"
        if isRideable and isFlyable then
            status = "rideable and flyable"
        elseif isRideable then
            status = "rideable"
        elseif isFlyable then
            status = "flyable"
        end
        
        local neon = "non neon"
        if props.neon then
            neon = "neon"
        elseif props.mega_neon then
            neon = "mega neon"
        end
        
        print(string.format("%s | %s | %s | %s | %s", name, kind, status, neon, uuid))
    end
end
