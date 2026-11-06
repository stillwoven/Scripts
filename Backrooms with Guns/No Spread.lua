local a=game.Players.LocalPlayer

local function ab(c)
local d=c:FindFirstChild("Setting")
if not d then return end
for _,e in ipairs(d:GetChildren()) do
local f,g=pcall(require,e)
if f and type(g)=="table" then
g.Spread=0
g.CrossExpansion=0
if g.SpreadPattern then
g.SpreadPattern={{0,0}}
end
end
end
end

if _G.x then _G.x:Disconnect() end
_G.x=a.CharacterAdded:Connect(function(b)
b.ChildAdded:Connect(function(c)
if c:IsA("Tool") then
task.wait(0.1)
ab(c)
end
end)
end)

local b=a.Character
if b then
b.ChildAdded:Connect(function(c)
if c:IsA("Tool") then
task.wait(0.1)
ab(c)
end
end)
local c=b:FindFirstChildOfClass("Tool")
if c then ab(c) end
end
