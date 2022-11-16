local bresenham = require 'bresenham'
function love.load()
    
end


function love.draw()
    mX,mY = love.mouse.getPosition()
    if mX == nil then mX = 0 end
    if mY == nil then mY = 0 end
    bresenham.los(0,0,mX,mY, function(mX,mY)
        
        love.graphics.circle('fill',mX,mY, 10)
        return true
    end)
end
