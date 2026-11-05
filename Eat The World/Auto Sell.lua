local player = game.Players.LocalPlayer
local gui = player.PlayerGui:WaitForChild("ScreenGui")
local sell = gui:WaitForChild("Sell")
local warning = sell:WaitForChild("WarningText")
_G.AutoSellEnabled = true
task.spawn(function()
  while _G.AutoSellEnabled do
   task.wait(0.2)
   if warning.Visible and warning.Text == "MAX SIZE REACHED" then
     local char = player.Character
     local events = char and char:FindFirstChild("Events")
     local event = events and events:FindFirstChild("Sell")
     if event then
      event:FireServer()
     end
   end
  end
end)
