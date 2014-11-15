--------------------------------------------------------------------------------
--  Function......... : clearMap
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function SimplexNoiseAI.clearMap ( sMap )
--------------------------------------------------------------------------------
	
    local hMap = pixelmap.getResourceHandle ( sMap )
    
    if(hMap and pixelmap.lock ( hMap ) )    then
        pixelmap.setBlendMode   ( hMap, pixelmap.kBlendModeReplace )        
        pixelmap.setPenMode     ( hMap, pixelmap.kPenModeSolid )       
        pixelmap.setFillMode    ( hMap, pixelmap.kFillModeSolid )            
        pixelmap.setFillColor ( hMap, 0, 0, 0, 0 )
        pixelmap.drawRectangle ( hMap, 0, 0, pixelmap.getWidth ( hMap ), pixelmap.getHeight ( hMap ) )
        
        pixelmap.unlock ( hMap )
	end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
