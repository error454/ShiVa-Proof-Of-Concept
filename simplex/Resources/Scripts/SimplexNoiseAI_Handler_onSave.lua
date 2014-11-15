--------------------------------------------------------------------------------
--  Handler.......... : onSave
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function SimplexNoiseAI.onSave (  )
--------------------------------------------------------------------------------
	
    --local hMap = pixelmap.getResourceHandle ( "pixel1024" ) or pixelmap.getResourceHandle ( "pixel2048" )
    local hMap = pixelmap.getResourceHandle ( "pixel2048" )
    local hMapStars = pixelmap.getResourceHandle ( "pixel1024Stars" )
	this.saveMap ( hMap, "nebulas.tga" )
	this.saveMap ( hMapStars, "stars.tga" )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
