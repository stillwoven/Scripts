pcall(function()
for _, a in ipairs(getgc(true)) do
if type(a) == "table" then
local b = getmetatable(a)
if b and type(b) == "table" and b.__index then
local c = b.__index
if type(c) == "table" and rawget(c, "_buildWeaponData") and not rawget(c, "_separateHitboxHooked") then
rawset(c, "_separateHitboxHooked", true)
local d = c._buildWeaponData
c._buildWeaponData = function(e, f)
local g = d(e, f)
if g and g.hitboxSize then
g.hitboxSize = Vector3.new(25, 25, 25)
end
return g
end
break
end
end
end
end
end)
