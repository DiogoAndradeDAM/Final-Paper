Scene = {}
Scene.__index = Scene

function Scene.new()
    local o = setmetatable({}, Scene)

    return o
end