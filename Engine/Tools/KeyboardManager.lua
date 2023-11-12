KeyboardManager = {}

local actions = {
    move_left = {"left", "a"},
    move_right = {"right", "d"},
    jump = {"space"}
}

function KeyboardManager.new()
    local o = setmetatable({}, {__index = KeyboardManager})
    o.keyStates = {}
    return o
end

function KeyboardManager:isPressed(k)
    local now = love.keyboard.isDown(k)
    if self.keyStates[k] then
        local last = self.keyStates[k].last
        self.keyStates[k].now = now
        return now and not last
    else
        self.keyStates[k] = {now = now, last = false}
        return now
    end
end

function KeyboardManager:isReleased(k)
    local now = love.keyboard.isDown(k)
    if self.keyStates[k] then
        local last = self.keyStates[k].last
        self.keyStates[k].now = now
        return now and not last
    else
        self.keyStates[k] = {now = now, last = false}
        return now
    end
end

function KeyboardManager:resetKeyStates()
    for k, _ in pairs(self.keyStates) do
        self.keyStates[k].last = self.keyStates.now
    end
end

return KeyboardManager