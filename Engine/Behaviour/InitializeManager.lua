InitializeManager = {}

InitializeManager.__index = InitializeManager

function InitializeManager.new()
    local o = setmetatable({}, InitializeManager)
    o.initializeList = {}

    return o
end

function InitializeManager:update(dt)
    for i = 1,#self.initializeList do 
        obj = self.initializeList[i]
        if obj ~= nil then
            obj:update(dt)
        end
    end
end

function InitializeManager:add(params)
    table.insert(self.initializeList, params.indexPos, params.value)
end

function InitializeManager:addFirst(params)
    table.insert(self.initializeList, 1, params.value)
end

function InitializeManager:addLast(params)
    table.insert(self.initializeList, params.value)
end

function InitializeManager:remove(params)
    for i = 1,#self.initializeList do
        if params.value == self.initializeList[i] then
            table.remove(self.initializeList, i, params.value)
            return
        end
    end
    print("Object not removed")
end

function InitializeManager:removeFirst()
    table.remove(self.initializeList, 1)
end

function InitializeManager:removeLast(params)
    table.remove(self.initializeList, #self.initializeList)
end

return InitializeManager