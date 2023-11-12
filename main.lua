DrawManager         = require("Engine/Behaviour/DrawManager")
UpdateManager         = require("Engine/Behaviour/UpdateManager")
Player              = require("Source/Player/Player")
Vector2             = require("Engine/Tools/Vector2")
Rectangle             = require("Engine/Tools/Rectangle")

teste = DrawManager.new()
teste2 = UpdateManager.new()
player = Player.new({pos=Vector2.new(500, 200), width=50,height=50, speed=200, color={1,0,0,1}})


teste:addFirst({layer=4, value=player})
teste2:addFirst({value=player})


function love.load()

end

function love.update(dt)
    teste2:update(dt)

end

function love.keypressed(key)
    if key == "space" then
        player.pos.y = player.pos.y - 200
    end
end

function love.draw()
    love.graphics.setColor({0.5,0.5,0.5,1})
    teste:draw()

    love.graphics.print("FPS: "..tostring(love.timer.getFPS()), 20, 20)

end
