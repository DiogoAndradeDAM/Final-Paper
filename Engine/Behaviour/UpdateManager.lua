UpdateManager = {}

UpdateManager.__index = UpdateManager

function UpdateManager.new()
    local o = setmetatable({}, UpdateManager)
    o.updateList = {}

    return o
end

function UpdateManager:update(dt)
    for i = 1,#self.updateList do 
        obj = self.updateList[i]
        if obj ~= nil then
            obj:update(dt)
        end
    end
end

function UpdateManager:add(params)
    table.insert(self.updateList, params.indexPos, params.value)
end

function UpdateManager:addFirst(params)
    table.insert(self.updateList, 1, params.value)
end

function UpdateManager:addLast(params)
    table.insert(self.updateList, params.value)
end

function UpdateManager:remove(params)
    for i = 1,#self.updateList do
        if params.value == self.updateList[i] then
            table.remove(self.updateList, i, params.value)
            return
        end
    end
    print("Object not removed")
end

function UpdateManager:removeFirst()
    table.remove(self.updateList, 1)
end

function UpdateManager:removeLast(params)
    table.remove(self.updateList, #self.updateList)
end

return UpdateManager