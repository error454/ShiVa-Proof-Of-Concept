--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Sun.onEnterFrame (  )
--------------------------------------------------------------------------------
	
	object.lookAt ( this.getObject ( ), 0, 0, 0, object.kGlobalSpace, 1 )
    
    object.rotateAround ( this.getObject ( ), 0, 0, 0, 0, 0, -application.getLastFrameTime ( ) * 2, object.kGlobalSpace )
	
    -- map angle of sun to x position on pixelmap
    -- 0 - 180 is 0, 256
    local x, y, z = object.getTranslation ( this.getObject ( ), object.kGlobalSpace )
    local rot = math.atan2 ( y, x )
    
    local hPix = hud.getComponent ( application.getCurrentUser ( ), "pixmap.Pixmap" )
    local hPixMap = hud.getPixelMap ( hPix )
    
    if rot > 0 then
        local xPixel = math.roundToNearestInteger ( math.interpolate ( 0, pixelmap.getWidth ( hPixMap ) - 1, rot / 180 ) )
        local r, g, b, a = pixelmap.getPixel ( hPixMap, xPixel, 8 )
        
        local hLight = group.getSubObjectAt ( group.getSubObjectAt ( this.getObject ( ), 0 ), 0 )
        light.setColor ( hLight, r / 255, g / 255, b / 255 )
        --scene.setOceanSurfaceColor ( application.getCurrentUserScene ( ), r / 255, g / 255, b / 255 )
        --scene.setBackgroundColor ( application.getCurrentUserScene ( ), r / 255, g / 255, b / 255 )
        
        object.setVisible ( group.getSubObjectAt ( this.getObject ( ), 0 ), true )
    else
        object.setVisible ( group.getSubObjectAt ( this.getObject ( ), 0 ), false )
    end
    
    --local r, g, b = 
    --scene.setSkyBoxColor ( application.getCurrentUserScene ( ), r, g, b )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
