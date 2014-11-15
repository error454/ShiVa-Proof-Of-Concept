--------------------------------------------------------------------------------
--  Function......... : createWheel
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function User.createWheel ( nSegments )
--------------------------------------------------------------------------------
	
    local math_cos = math.cos
    local math_sin = math.sin
    local hUser = this.getUser ( )
    
    --local w = pixelmap.getWidth ( hPixMap )
    --local h = pixelmap.getHeight ( hPixMap )
    
    local outerGoldRadius = w / 2 - 15
    local outerGreenRadius = w / 8
    
    --
    -- Segments
    --
    local degreesPerSegment = 360 / nSegments
    for i = 0, nSegments - 1 do
        local theta1 = i * degreesPerSegment
        local theta2 = (i + 1) * degreesPerSegment
        
        hud.newComponent ( hUser, hud.kComponentTypeLabel, "wheel." .. i )
        local hComponent = hud.getComponent ( hUser, "wheel." .. i )
        
        local text = ""..(i + 1)
        local newText = ""
        if(string.getLength ( text ) > 1) then
            for i = 0, string.getLength ( text ) - 1 do
                newText = newText .. string.getSubString ( text, i, 1 ) .. "\n"
            end
        else
            newText = text
        end
        
        hud.setLabelText ( hComponent, newText )
        hud.setLabelTextHeight ( hComponent, 40 )
        hud.setComponentForegroundColor ( hComponent, 255, 255, 255, 255 )
        hud.setComponentBackgroundColor ( hComponent, 0, 0, 0, 0 )
        hud.setComponentBorderColor ( hComponent, 0, 0, 0, 0 )
        hud.setDefaultFont ( hUser, "DefaultFont" )
        hud.setLabelTextAlignment ( hComponent, hud.kAlignCenter, hud.kAlignCenter )
        hud.setComponentSize ( hComponent, 15, 20 )
        
        --set rotation
        --local theta = theta1 + 0.5 * theta2
        local theta = theta1 + (theta2 - theta1) * 0.5
        
        --set x,y
        local distance = outerGreenRadius + 0.5 * outerGoldRadius
        local xHud, yHud = distance * math_cos(theta) + w/2, distance * math_sin(theta) + h/2
        
        local newX, newY = this.pixelmapToScreenSpace ( xHud, yHud )
        hud.setComponentRotation ( hComponent, theta + 90 )
        hud.setComponentPosition ( hComponent, newX, newY)
        
    end

    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
