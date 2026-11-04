getgenv().a=true
if _G.a then _G.a:Disconnect() end
_G.a=game:GetService"RunService".RenderStepped:Connect(function()
if not getgenv().a then return end
local b,c,d=game.Players.LocalPlayer,nil,nil
c=b.Character
d=c and c:FindFirstChild("HumanoidRootPart")
if not d then return end
for _,e in ipairs(workspace:GetDescendants()) do
if e:IsA("ProximityPrompt") then
local f,g=string.lower(e.ActionText or ""),string.lower(e.ObjectText or "")
if f:find("cuff") or f:find("arrest") or f:find("detain") or g:find("cuff") or g:find("civilian") then
local h=e.Parent
if h and h:IsA("BasePart") and (h.Position-d.Position).Magnitude<=e.MaxActivationDistance+5 then
pcall(function()
fireproximityprompt(e)
end)
end
end
end
end
end)
