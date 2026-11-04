local gcTable
for _, v in ipairs(getgc(true)) do
if type(v) == "table" and rawget(v, "onJump") then
gcTable = v
break
end
end
if gcTable then
gcTable.onJump = function()
end
else
end
