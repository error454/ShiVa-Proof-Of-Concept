--------------------------------------------------------------------------------
--  Function......... : drawCircle
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function User.drawCircle ( hPixMap, nRadius, nCenterX, nCenterY, nStep, r, g, b, a )
--------------------------------------------------------------------------------
	
	local math_sin = math.sin
    local math_cos = math.cos
    
    -- draw a circle whose center is at w/2, h/2
    for theta = 0, 360, nStep do
        local x = nRadius * math_cos ( theta ) + nCenterX
        local y = nRadius * math_sin ( theta ) + nCenterY
        
        pixelmap.setPixel ( hPixMap, x, y, r, g, b, a )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
