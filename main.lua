
function love.load()
    bresenham = require 'bresenham' 
end


function love.draw()
    if love.mouse.isDown(1) then
        initial_mX, initial_mY = love.mouse.getPosition()
    end
    if not(initial_mX == nil) and not(initial_mY == nil) then
        mX,mY = love.mouse.getPosition()
        if mX == nil then mX = 0 end
        if mY == nil then mY = 0 end
        bresenham.los(initial_mX,initial_mY,mX,mY, function(mX,mY)
            
            love.graphics.circle('fill',mX,mY, 10)
            return true
        end)
    end
end
