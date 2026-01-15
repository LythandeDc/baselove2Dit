--[[
    Love2D Template Standard
    Struttura base per progetti Love2D
]]

-- Debug: output immediato nella console
io.stdout:setvbuf('no')

-- Debug ZeroBraneStudio
if arg[#arg] == "-debug" then require("mobdebug").start() end

-- Moduli
local States = require("states")
local Utils = require("utils")

-- Variabili globali
SCREEN_WIDTH = 0
SCREEN_HEIGHT = 0

-- Pixel art: disabilita filtro bilineare
love.graphics.setDefaultFilter("nearest", "nearest")

-- Stato di esempio: Menu
local MenuState = {}

function MenuState:enter()
    self.title = "Love2D Template"
    self.subtitle = "Premi SPAZIO per iniziare"
end

function MenuState:update(dt)
end

function MenuState:draw()
    love.graphics.setColor(1, 1, 1)
    local font = love.graphics.getFont()
    local titleX = Utils.centerX(self.title, font, SCREEN_WIDTH)
    love.graphics.print(self.title, titleX, SCREEN_HEIGHT / 2 - 40)

    love.graphics.setColor(0.7, 0.7, 0.7)
    local subX = Utils.centerX(self.subtitle, font, SCREEN_WIDTH)
    love.graphics.print(self.subtitle, subX, SCREEN_HEIGHT / 2)
end

function MenuState:keypressed(key)
    if key == "space" then
        States.switch("game")
    end
end

-- Stato di esempio: Game
local GameState = {}

function GameState:enter()
    self.timer = 0
end

function GameState:update(dt)
    self.timer = self.timer + dt
end

function GameState:draw()
    love.graphics.setColor(1, 1, 1)
    love.graphics.print("Game State", 10, 10)
    love.graphics.print("Tempo: " .. Utils.formatTime(self.timer), 10, 30)
    love.graphics.print("Premi ESC per tornare al menu", 10, 60)
end

function GameState:keypressed(key)
    if key == "escape" then
        States.switch("menu")
    end
end

-- LOAD
function love.load()
    SCREEN_WIDTH = love.graphics.getWidth()
    SCREEN_HEIGHT = love.graphics.getHeight()

    -- Registra stati
    States.add("menu", MenuState)
    States.add("game", GameState)

    -- Stato iniziale
    States.switch("menu")
end

-- UPDATE
function love.update(dt)
    States.update(dt)
end

-- DRAW
function love.draw()
    States.draw()
end

-- INPUT
function love.keypressed(key)
    if key == "f11" then
        love.window.setFullscreen(not love.window.getFullscreen())
    end
    States.keypressed(key)
end

function love.keyreleased(key)
    States.keyreleased(key)
end

function love.mousepressed(x, y, button)
    States.mousepressed(x, y, button)
end

function love.mousereleased(x, y, button)
    States.mousereleased(x, y, button)
end