makefolder("🔑")

return setmetatable({
    get = function(key)
        local file = string.format("🔑/%s.dat", key)
                
        return isfile(file) and readfile(file) or nil
    end,
    set = function(key, value)
        writefile(string.format("🔑/%s.dat", key), value)
    end,
    delete = function(key)
        delfile(string.format("🔑/%s.dat", key))
    end
}, {
    __index = function(self, index)
        return rawget(self, string.lower(index))
    end
})
