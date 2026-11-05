---- Sample and attempt to create auto parry
local a,b,c=game:GetService"Players",game:GetService"ReplicatedStorage",game:GetService"RunService"
local d=a.LocalPlayer
local e=b:WaitForChild("Remotes"):WaitForChild("BlockEvent")
local f,g,h,i=20,0.3,0.15,0
c.RenderStepped:Connect(function()
local j=d.Character
if not j then return end
local k,l=j:FindFirstChild("HumanoidRootPart"),j:FindFirstChildOfClass("Humanoid")
if not k or not l or l.Health<=0 then return end
local m=tick()
if m-i<h then return end
local n={}
local o=d:GetAttribute("Teammate")
if type(o)=="string" then
for p in o:gmatch("[^,%s]+") do n[p]=true end
end
local q=k.Position
for _,r in ipairs(a:GetPlayers()) do
if r~=d and not n[r.Name] then
local s=r.Character
if s then
local t,u=s:FindFirstChild("HumanoidRootPart"),s:FindFirstChildOfClass("Humanoid")
if t and u and u.Health>0 then
local v=t.Position
local w=(q-v).Magnitude
if w<=f then
local x=s:GetAttribute("SwingAt") or s:GetAttribute("Attacking") or s:GetAttribute("ChargeStart") or s:FindFirstChildOfClass("Tool")~=nil
if x then
local y=t.CFrame.LookVector
local z=(q-v).Unit
local aa=y:Dot(z)
local ab=(t.AssemblyLinearVelocity-k.AssemblyLinearVelocity):Dot(z)>-5
if aa>=g and ab then
i=m
e:FireServer()
break
end
end
end
end
end
end
end
end)
