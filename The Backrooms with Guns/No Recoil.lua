for _, obj in ipairs(getgc(true)) do
    if type(obj) == "table" then
        for k, v in pairs(obj) do
            local lk = string.lower(tostring(k))
            if string.find(lk, "recoil") or string.find(lk, "camshook") or string.find(lk, "kick") or string.find(lk, "shake") then
                if type(v) == "number" then
                    obj[k] = 0
                elseif type(v) == "table" then
                    for subK, subV in pairs(v) do
                        if type(subV) == "number" then
                            v[subK] = 0
                        end
                    end
                end
            end
        end
    end
end
