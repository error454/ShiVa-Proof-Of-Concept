--------------------------------------------------------------------------------
--  Function......... : cameraFit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function RandomNumber.cameraFit ( )
--------------------------------------------------------------------------------
	
    local finalXmin, finalYmin, finalZmin = math.kInfinity, math.kInfinity, math.kInfinity
    local finalXmax, finalYmax, finalZmax = -math.kInfinity, -math.kInfinity, -math.kInfinity
    
    for i = 1, this.nBars ( ) do
        local hBar = application.getCurrentUserSceneTaggedObject ( "bar" .. i )
        local minX, minY, minZ = object.getBoundingBoxMin ( hBar )
        local maxX, maxY, maxZ = object.getBoundingBoxMax ( hBar )
        
        --local x, y, z = object.getBoundingSphereCenter ( hBar )
        --local r = object.getBoundingSphereRadius ( hBar )
        
        if(minX < finalXmin) then finalXmin = minX end
        if(minY < finalYmin) then finalYmin = minY end
        if(minZ < finalZmin) then finalZmin = minZ end
        if(maxX > finalXmax) then finalXmax = maxX end
        if(maxY > finalYmax) then finalYmax = maxY end
        if(maxZ > finalZmax) then finalZmax = maxZ end
    end
    
    local hCamera = application.getCurrentUserActiveCamera ( )
    --log.message ( (finalXmax - finalXmin) )
    object.setTranslation ( hCamera, 0, (finalYmax - finalYmin) * 0.5, 55, object.kGlobalSpace )
    object.lookAt ( hCamera, 0, (finalYmax - finalYmin) * 0.5, 0, object.kGlobalSpace, 1 )
    
	
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
