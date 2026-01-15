-- Modulo Utility Functions
-- Funzioni di uso comune per progetti Love2D

local Utils = {}

-- Collisione AABB tra due rettangoli
function Utils.checkCollision(x1, y1, w1, h1, x2, y2, w2, h2)
    return x1 < x2 + w2 and
           x2 < x1 + w1 and
           y1 < y2 + h2 and
           y2 < y1 + h1
end

-- Collisione punto-rettangolo (utile per mouse/touch)
function Utils.pointInRect(px, py, rx, ry, rw, rh)
    return px >= rx and px <= rx + rw and
           py >= ry and py <= ry + rh
end

-- Distanza tra due punti
function Utils.distance(x1, y1, x2, y2)
    return math.sqrt((x2 - x1)^2 + (y2 - y1)^2)
end

-- Clamp: limita un valore tra min e max
function Utils.clamp(value, min, max)
    return math.max(min, math.min(max, value))
end

-- Lerp: interpolazione lineare
function Utils.lerp(a, b, t)
    return a + (b - a) * t
end

-- Angolo tra due punti (in radianti)
function Utils.angle(x1, y1, x2, y2)
    return math.atan2(y2 - y1, x2 - x1)
end

-- Normalizza un vettore
function Utils.normalize(x, y)
    local len = math.sqrt(x*x + y*y)
    if len == 0 then return 0, 0 end
    return x / len, y / len
end

-- Random float tra min e max
function Utils.randomFloat(min, max)
    return min + math.random() * (max - min)
end

-- Deep copy di una tabella
function Utils.deepCopy(orig)
    local copy
    if type(orig) == 'table' then
        copy = {}
        for k, v in next, orig, nil do
            copy[Utils.deepCopy(k)] = Utils.deepCopy(v)
        end
        setmetatable(copy, Utils.deepCopy(getmetatable(orig)))
    else
        copy = orig
    end
    return copy
end

-- Formatta tempo in MM:SS
function Utils.formatTime(seconds)
    local mins = math.floor(seconds / 60)
    local secs = math.floor(seconds % 60)
    return string.format("%02d:%02d", mins, secs)
end

-- Centra testo orizzontalmente
function Utils.centerX(text, font, screenWidth)
    local textWidth = font:getWidth(text)
    return (screenWidth - textWidth) / 2
end

return Utils
