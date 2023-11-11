Player = {}
Player.__index = Player

function Player.new(params)
    local o = setmetatable({}, Player)
    o.x = params.x
    o.y = params.y
    o.width = params.width
    o.height = params.height
    o.speed = params.speed
    o.color = params.color

    return o
end

function Player:draw()
    love.graphics.setColor(self.color)
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

return Player