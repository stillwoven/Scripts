local b = game.Players
if _G.a then
_G.a:Disconnect()
_G.a = nil
end
local c = 0
_G.a = game:GetService"RunService".RenderStepped:Connect(function(d)
c = c + d
if c < 0.1 then return end
c = 0
for _, e in ipairs(b:GetPlayers()) do
local f = e.Character
if e ~= b.LocalPlayer and f then
for _, g in ipairs(f:GetDescendants()) do
if g:IsA("BasePart") then
local h = g.Name
if h == "HumanoidRootPart" or h:sub(1, 9) == "Collision" then
if g.Transparency ~= 1 then g.Transparency = 1 end
elseif g.Parent:IsA("Accessory") or g.Parent:IsA("Hat") then
if g.Transparency ~= 0 then g.Transparency = 0 end
end
end
end
for _, g in ipairs(f:GetChildren()) do
if g:IsA("BasePart") then
local h = g.Name
if h ~= "HumanoidRootPart" and h:sub(1, 9) ~= "Collision" then
if g.Transparency ~= 0 then g.Transparency = 0 end
end
end
end
end
end
end)
