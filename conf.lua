-- Configurazione Love2D
-- Questo file viene eseguito PRIMA di love.load()

function love.conf(t)
    -- Identita del gioco (usata per la cartella di salvataggio)
    t.identity = "mygame"
    t.version = "11.4"                  -- Versione Love2D target
    t.console = true                     -- Console di debug (Windows)

    -- Configurazione finestra
    t.window.title = "Love2D Game"
    t.window.icon = nil                  -- Percorso icona (es. "assets/icon.png")
    t.window.width = 800
    t.window.height = 600
    t.window.borderless = false
    t.window.resizable = false
    t.window.minwidth = 1
    t.window.minheight = 1
    t.window.fullscreen = false
    t.window.fullscreentype = "desktop"
    t.window.vsync = 1                   -- 1 = vsync on, 0 = off
    t.window.msaa = 0                    -- Anti-aliasing
    t.window.depth = nil
    t.window.stencil = nil
    t.window.display = 1                 -- Monitor da usare
    t.window.highdpi = false
    t.window.x = nil                     -- Posizione finestra (nil = centrata)
    t.window.y = nil

    -- Moduli Love2D (disabilita quelli non usati per performance)
    t.modules.audio = true
    t.modules.data = true
    t.modules.event = true
    t.modules.font = true
    t.modules.graphics = true
    t.modules.image = true
    t.modules.joystick = true
    t.modules.keyboard = true
    t.modules.math = true
    t.modules.mouse = true
    t.modules.physics = true
    t.modules.sound = true
    t.modules.system = true
    t.modules.thread = true
    t.modules.timer = true
    t.modules.touch = true
    t.modules.video = true
    t.modules.window = true
end
