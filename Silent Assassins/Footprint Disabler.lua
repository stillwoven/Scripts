local rs = game:GetService("ReplicatedStorage")
local fcPath = rs:FindFirstChild("Modules") 
    and rs.Modules:FindFirstChild("ClientGameHandler") 
    and rs.Modules.ClientGameHandler:FindFirstChild("ClientCharacterHandler") 
    and rs.Modules.ClientGameHandler.ClientCharacterHandler:FindFirstChild("FootstepController")

if fcPath then
    local success, fc = pcall(function() return require(fcPath) end)
    if success and type(fc) == "table" then
        for k, v in pairs(fc) do
            if type(v) == "function" then
                fc[k] = function(...) end
            end
        end
    end
end

--[[ for _, p in ipairs(workspace:GetDescendants()) do
    if p:IsA("BasePart") then
        local name = p.Name:lower()
        if name:find("foot") or name:find("print") or name:find("step") then
            p:Destroy()
        end
    end
end ]]-- this js cleans ur existing footprints, it's nothing lol
