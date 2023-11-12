Vector2             =   require("Engine/Tools/Vector2")
Rectangle           =   require("Engine/Tools/Rectangle")

Player = {}
Player.__index = Player

function Player.new(params)
    local o = setmetatable({}, Player)
    o.pos = params.pos
    o.width = params.width
    o.height = params.height
    o.speed = params.speed
    o.color = params.color

    return o
end

function Player:draw()
    love.graphics.setColor(self.color)
    love.graphics.rectangle("fill", self.pos.x, self.pos.y, self.width, self.height)
end

function Player:update(dt)
    if love.keyboard.isDown("d") then
        self.pos.x = self.pos.x + self.speed * dt
    elseif love.keyboard.isDown("a") then
        self.pos.x = self.pos.x - self.speed * dt
    end

    player.pos.y = player.pos.y + 200 * dt

    if player.pos.y >= 500 then 
        player.pos.y = 500
    end
end

return Player