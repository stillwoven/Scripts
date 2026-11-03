--[[ dis one for the treadmill ]] -- 
local p, r = game.Players.LocalPlayer, game:GetService("ReplicatedStorage").Packages.Networker._remotes.Treadmill.RemoteEvent
task.spawn(function() while task.wait(1) do pcall(function() r:FireServer("claimBoost") end) end end)
task.spawn(function() while task.wait(1) do pcall(function() for _,b in ipairs(p.PlayerGui:GetDescendants()) do if (b.Name=="Boost" or b.Name=="SpeedBoostPop") and b:IsA("GuiButton") then for _,c in ipairs(getconnections(b.Activated)) do c:Fire() end end end end) end end)
