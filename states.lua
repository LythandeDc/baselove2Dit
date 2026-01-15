-- Gestore Stati di Gioco
-- Sistema semplice per gestire menu, gameplay, pause, etc.

local States = {}

States.current = nil
States.list = {}

-- Registra un nuovo stato
function States.add(name, state)
    States.list[name] = state
end

-- Cambia stato corrente
function States.switch(name, ...)
    local newState = States.list[name]
    if not newState then
        error("Stato non trovato: " .. tostring(name))
    end

    -- Chiama exit sullo stato precedente
    if States.current and States.current.exit then
        States.current:exit()
    end

    States.current = newState

    -- Chiama enter sul nuovo stato
    if States.current.enter then
        States.current:enter(...)
    end
end

-- Callback Love2D - inoltrati allo stato corrente
function States.update(dt)
    if States.current and States.current.update then
        States.current:update(dt)
    end
end

function States.draw()
    if States.current and States.current.draw then
        States.current:draw()
    end
end

function States.keypressed(key)
    if States.current and States.current.keypressed then
        States.current:keypressed(key)
    end
end

function States.keyreleased(key)
    if States.current and States.current.keyreleased then
        States.current:keyreleased(key)
    end
end

function States.mousepressed(x, y, button)
    if States.current and States.current.mousepressed then
        States.current:mousepressed(x, y, button)
    end
end

function States.mousereleased(x, y, button)
    if States.current and States.current.mousereleased then
        States.current:mousereleased(x, y, button)
    end
end

return States
