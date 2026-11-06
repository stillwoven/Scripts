for _, obj in ipairs(getgc(true)) do
    if type(obj) == "table" then
        if rawget(obj, "Spread") ~= nil and rawget(obj, "BulletPerShot") ~= nil then
            obj.Spread = 0
            obj.BulletBloom = 0
            obj.BulletPerShot = 1
            if rawget(obj, "SpreadPattern") then
                obj.SpreadPattern = {{0, 0}}
            end
        end
    end
end
-- accidentally published the wrong one
