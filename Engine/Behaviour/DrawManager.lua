DrawManager = {}
DrawManager.__index = DrawManager

NUM_OF_LAYERS=7
--{layers = {"Bg1", "Bg2", "Bg3", "Tiles", "Instances", "Hud", "Gui"}}

function DrawManager.new()
    local o = setmetatable({}, DrawManager)
    o.layers = {}
    for i = 1,NUM_OF_LAYERS do
        o.layers[i] = {}
    end
    return o
end
function DrawManager:draw()
    for layer = 1,#self.layers do
        for item = 1,#self.layers[layer] do
            obj = self.layers[layer][item]
            if obj ~= nil then
                obj:draw()
            end
        end
    end
end

function DrawManager:add(params)
    table.insert(self.layers[params.layer], params.indexPos, params.value)
end

function DrawManager:addLast(params)
    table.insert(self.layers[params.layer], params.value)
end

function DrawManager:addFirst(params)
    table.insert(self.layers[params.layer], 1, params.value)
end

function DrawManager:remove(params)
    for i = 1,#self.layers[params.layer] do
        if self.layers[params.layer][i] == params.value then
            table.remove(self.layers[params.layer], i)
            break
        end
    end
end

function DrawManager:removeLast(params)
    table.remove(self.layers[params.layer], #self.layers[params.layer])
end

function DrawManager:removeFirst(params)
    table.remove(self.layers[params.layer], 1)
end

return DrawManager