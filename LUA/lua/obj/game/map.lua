local map = {}

function map.load(name)
    local file = io.open(name, 'r')
    local data = {}

    for line in file:lines() do
        table.insert(data, line)
    end
    return data
end

function map.wall(line)
    return string.gsub(line, '=', 'Muro ')
end

return map

--bY GHABRYEL