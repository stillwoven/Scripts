task.spawn(function()
local success, grassModule = pcall(function()
return game:GetService("ReplicatedStorage").Modules.ClientGameHandler.ClientInteractableController.ClientInteractable.Grass
end)
if success and grassModule then
local res = require(grassModule)
if res then
res._startLeanCon = function(self, ...)
return
end
res._initTouchEvent = function(self, ...)
return
end
end
end
end)
