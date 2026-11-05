local player = game.Players.LocalPlayer
_G.AutoEatEnabled = true
task.spawn(function()
  while _G.AutoEatEnabled do
    task.wait(0.2)
   local char = player.Character
    local events = char and char:FindFirstChild("Events")
   local eat = events and events:FindFirstChild("Eat")
    if eat then
      eat:FireServer()
    end
  end
end)
