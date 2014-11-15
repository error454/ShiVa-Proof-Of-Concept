--------------------------------------------------------------------------------
--  Function......... : pixelmapToScreenSpace
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function User.pixelmapToScreenSpace ( x, y )
--------------------------------------------------------------------------------
	
	local hWheel = application.getCurrentUserSceneTaggedObject ( "board" )
    
    local xMax, yMax, zMax = object.getBoundingBoxMax ( hWheel )
    local xMin, yMin, zMin = object.getBoundingBoxMin ( hWheel )
    
    local x1, y1 = camera.projectPoint ( application.getCurrentUserActiveCamera ( ), xMax, yMax, zMax )
    local x2, y2 = camera.projectPoint ( application.getCurrentUserActiveCamera ( ), xMin, yMin, zMin )
    
    local newX = math.interpolate ( x2, x1, x / 1024 )
    local newY = math.interpolate ( y2, y1, y / 1024 )
    
    return newX * 50 + 50, newY * 50 + 50
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
