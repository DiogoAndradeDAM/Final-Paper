DrawManager = {}
DrawManager.__index = DrawManager

function DrawManager.new(params)
    local o = setmetatable({}, DrawManager)
    o.layers = {}
    for i = 1,#params.layers do
        o.layers[params.layers[i]] = {}
    end
    return o
end

function DrawManager:draw()
    for k,v in pairs(self.layers) do
        for i = 1,#v do
            obj = v[i]
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