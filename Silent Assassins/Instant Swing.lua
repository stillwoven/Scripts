if _G.a then
if typeof(_G.a) == "RBXScriptConnection" then
_G.a:Disconnect()
elseif typeof(_G.a) == "thread" then
task.cancel(_G.a)
end
_G.a = nil
end
_G.a = task.spawn(function()
while true do
task.wait(0.1)
for _, b in ipairs(getgc(true)) do
if type(b) == "table" and rawget(b, "nextAttackTime") then
b.nextAttackTime = 0
if rawget(b, "_onCooldown") then
b._onCooldown = function() return false end
end
end
end
end
end)
