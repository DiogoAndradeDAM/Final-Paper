DrawManager         = require("Engine/Behaviour/DrawManager")
Player        = require("Source/Player/Player")

teste = DrawManager.new({layers = {"Bg1", "Bg2", "Bg3", "Tiles", "Instances", "Hud", "Gui"}})
player = Player.new({x=500,y=200, width=50,height=50, speed=10, color={1,0,0,1}})
player2 = Player.new({x=300,y=200, width=50,height=50, speed=10, color={0,1,0,1}})
player3 = Player.new({x=320,y=200, width=50,height=50, speed=10, color={0,0,1,1}})
player4 = Player.new({x=330,y=200, width=50,height=50, speed=10, color={0,1,1,1}})
teste:addFirst({layer="Bg2", value=player3})
teste:addFirst({layer="Bg1", value=player4})
teste:addFirst({layer="Instances", value=player})
teste:addFirst({layer="Gui", value=player2})


function love.load()
end

function love.update(dt)
    if love.keyboard.isDown("d") then
        player.x = player.x + player.speed
    elseif love.keyboard.isDown("a") then
        player.x = player.x - player.speed
    end
    --print(teste.layers["Instances"][1].x)

end

function love.draw()
    love.graphics.setColor({0.5,0.5,0.5,1})
    teste:draw()

    love.graphics.print("FPS: "..tostring(love.timer.getFPS()), 20, 20)

end
