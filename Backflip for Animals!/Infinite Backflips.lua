for _, v in ipairs(getgc(true)) do
    if type(v) == "table" then
        if rawget(v, "getJumpsRemaining") then
            for _, func in pairs(v) do
                if type(func) == "function" then
                    for idx, val in ipairs(debug.getupvalues(func)) do
                        if type(val) == "number" then
                            debug.setupvalue(func, idx, 9999)
                        end
                    end
                end
            end
        end
    end
end
