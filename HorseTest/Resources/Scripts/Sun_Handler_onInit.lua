--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Sun.onInit (  )
--------------------------------------------------------------------------------
	
    hud.newTemplateInstance ( application.getCurrentUser ( ), "hPixmap", "pixmap" )
    local hPix = hud.getComponent ( application.getCurrentUser ( ), "pixmap.Pixmap" )
    
	local hPixMap = hud.getPixelMap ( hPix )
	
    if ( hPixMap and pixelmap.lock ( hPixMap ) ) then
        local w = pixelmap.getWidth  ( hPixMap )        
        local h = pixelmap.getHeight ( hPixMap )         
        
        if ( pixelmap.createBrushFromTexture ( hPixMap, "myBrush10", "skygradient" ) )        then
            local bsx = pixelmap.getBrushWidth  ( hPixMap, "myBrush10" )            
            local bsy = pixelmap.getBrushHeight ( hPixMap, "myBrush10" )
            
            pixelmap.setPenBrush ( hPixMap, "myBrush10" )
            pixelmap.setPenMode ( hPixMap, pixelmap.kPenModeBrush )
            pixelmap.setBlendMode ( hPixMap, pixelmap.kBlendModeReplace )
            pixelmap.drawPoint( hPixMap, 0, 0  )
        end   
        
        pixelmap.unlock ( hPixMap )
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
