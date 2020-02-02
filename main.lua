-- Questa riga mostra le tracce nella console durante l'esecuzione
io.stdout:setvbuf('no')

-- Impedisce a Love di filtrare i contorni delle immagini quando vengono ridimensionate
-- Indispensabile per la pixel art
love.graphics.setDefaultFilter("nearest")

-- Questa riga ti consente di eseguire il debug passo dopo passo in ZeroBraneStudio
if arg[#arg] == "-debug" then require("mobdebug").start() end

-- LOAD
function love.load()
  height = love.graphics.getHeight()
  width = love.graphics.getWidth()
end -- END LOAD

-- UPDATE
function love.update(dt)

end -- END UPDATE

-- DRAW
function love.draw()
    
end -- END DRAW

-- KEY PRESSED
function love.keypressed(key)
  print(key)
end -- END KEY PRESSED