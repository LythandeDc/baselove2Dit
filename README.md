# Love2D Template Standard

![Love2D](https://img.shields.io/badge/Love2D-11.4-pink?style=flat-square&logo=love)
![Lua](https://img.shields.io/badge/Lua-5.1-blue?style=flat-square&logo=lua)
![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)

Un template completo e strutturato per iniziare rapidamente nuovi progetti con **Love2D**.

## Caratteristiche

- **Gestione Stati** - Sistema di game states (menu, gameplay, pause, etc.)
- **Utility Functions** - Funzioni comuni pronte all'uso (collisioni, math, etc.)
- **Configurazione Completa** - `conf.lua` con tutte le opzioni documentate
- **Pixel Art Ready** - Filtro nearest neighbor preconfigurato
- **Debug Support** - Compatibile con ZeroBraneStudio e console debug

## Requisiti

- [Love2D](https://love2d.org/) 11.4 o superiore
- (Opzionale) [ZeroBraneStudio](https://studio.zerobrane.com/) per il debug

## Installazione

1. **Clona il repository**
   ```bash
   git clone https://github.com/LythandeDc/baselove2Dit.git
   cd baselove2Dit
   ```

2. **Avvia il progetto**
   ```bash
   love .
   ```

## Struttura del Progetto

```
baselove2Dit/
├── main.lua      # Entry point e logica principale
├── conf.lua      # Configurazione Love2D
├── states.lua    # Gestore degli stati di gioco
├── utils.lua     # Funzioni utility
└── README.md
```

## Utilizzo

### Gestione Stati

Il template include un semplice sistema di stati:

```lua
local States = require("states")

-- Definisci uno stato
local MyState = {}

function MyState:enter()
    -- Chiamato quando si entra nello stato
end

function MyState:update(dt)
    -- Aggiornamento logica
end

function MyState:draw()
    -- Rendering
end

-- Registra e attiva lo stato
States.add("mystate", MyState)
States.switch("mystate")
```

### Utility Functions

```lua
local Utils = require("utils")

-- Collisione AABB
if Utils.checkCollision(x1, y1, w1, h1, x2, y2, w2, h2) then
    -- Collisione rilevata
end

-- Distanza tra punti
local dist = Utils.distance(x1, y1, x2, y2)

-- Clamp valore
local value = Utils.clamp(input, 0, 100)

-- Interpolazione lineare
local result = Utils.lerp(start, finish, 0.5)
```

### Configurazione

Modifica `conf.lua` per personalizzare:

- Dimensioni finestra
- Titolo del gioco
- Moduli Love2D attivi
- VSync e fullscreen

## Controlli Demo

| Tasto | Azione |
|-------|--------|
| `SPAZIO` | Avvia il gioco |
| `ESC` | Torna al menu |
| `F11` | Fullscreen toggle |

## Risorse Utili

- [Documentazione Love2D](https://love2d.org/wiki/Main_Page)
- [Corso Lua & Love2D - ITAMDE](https://itamde.com/it/corso/lua-love2d-introduzione-alla-programmazione-dei-videogiochi)
- [Love2D Subreddit](https://www.reddit.com/r/love2d/)

## Contribuire

1. Fai un fork del progetto
2. Crea un branch per la feature (`git checkout -b feature/nuova-feature`)
3. Committa le modifiche (`git commit -m 'Aggiunge nuova feature'`)
4. Pusha il branch (`git push origin feature/nuova-feature`)
5. Apri una Pull Request

## Licenza

Questo progetto e rilasciato sotto licenza MIT. Vedi il file [LICENSE](LICENSE) per i dettagli.

---

Creato con :heart: per la community Love2D italiana
