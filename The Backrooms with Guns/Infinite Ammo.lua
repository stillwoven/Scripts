for _, obj in ipairs(getgc(true)) do
    if type(obj) == "table" then
        for k, v in pairs(obj) do
            if (k == "AmmoPerMag" or k == "CurrentAmmo" or k == "MaxAmmo" or k == "Ammo" or k == "Magazine" or v == 17) and type(v) == "number" then
                if k == "AmmoPerMag" or k == "CurrentAmmo" or k == "MaxAmmo" or v == 17 then
                    obj[k] = 9999 -- could be math.huge
                end
            end
        end
    end
end
