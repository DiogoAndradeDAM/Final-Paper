Vector2     =       require("Engine/Tools/Vector2")

local Rectangle = {}
Rectangle.__index = Rectangle

function Rectangle.new(params)
    local o = setmetatable({}, Rectangle)
    o.pos = params.pos or Vector2.zero()
    o.width = params.width or 0
    o.height = params.height or 0

    return o
end

function Rectangle:setPos(pos)
    self.pos = pos
end

function Rectangle:setSize(width, height)
    self.width = width
    self.height = height
end

function Rectangle:setWidth(width)
    self.width = width
end

function Rectangle:setHeight(height)
    self.height = height
end

function Rectangle:getPos()
    return self.pos
end

function Rectangle:getSize()
    return self.width, self.height
end

function Rectangle:getWidth()
    return self.width
end

function Rectangle:getHeight()
    return self.height
end

return Rectangle