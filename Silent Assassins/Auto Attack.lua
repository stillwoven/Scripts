getgenv().a = false
task.wait(0.2)
getgenv().a = true
task.spawn(function()
local b = nil
while getgenv().a do
task.wait(0.25)
pcall(function()
if not b or not rawget(b, "_attemptAttack") then
for _, c in ipairs(getgc(true)) do
if type(c) == "table" then
local d = getmetatable(c)
if d and type(d) == "table" and d.__index then
local e = d.__index
if type(e) == "table" and rawget(e, "_attemptAttack") then
b = c
break
end
end
end
end
end
if b then
local f = getmetatable(b)
if f and f.__index and f.__index._attemptAttack then
rawset(b, "nextAttackTime", 0)
f.__index._attemptAttack(b)
end
end
end)
end
end)
