local player = game.Players.LocalPlayer
_G.AutoGrabEnabled = true
task.spawn(function()
  while _G.AutoGrabEnabled do
    task.wait(0.2)
   local char = player.Character
    local events = char and char:FindFirstChild("Events")
   local grab = events and events:FindFirstChild("Grab")
   if grab then
      grab:FireServer(false, false, false)
    end
  end
end)
