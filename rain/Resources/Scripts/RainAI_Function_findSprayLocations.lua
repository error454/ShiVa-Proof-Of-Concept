--------------------------------------------------------------------------------
--  Function......... : findSprayLocations
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function RainAI.findSprayLocations ( )
--------------------------------------------------------------------------------
	
    local hScene = application.getCurrentUserScene ( )
    local hCamera = application.getCurrentUserActiveCamera ( )
	
    table.empty ( this.tSpray ( ) )
    
    local camX, camY, camZ = object.getTranslation ( hCamera, object.kGlobalSpace )
    local dirX, dirY, dirZ = object.getDirection ( hCamera, object.kGlobalSpace )
    local xMin, yMin, xMax, yMax = table.getRangeAt ( this.tRainBounds ( ), 0, 4 )
    
    --Cast rays at even increments across the screen looking for objects
    local nMaxRays = 1000
    for sprayI = 1, nMaxRays
    do  
        --local x = xMin + (xMax - xMin) * (math.mod ( sprayI, nRaysPerLine ) / nRaysPerLine)
        --local y = yMin + (yMax - yMin) * (math.mod ( sprayI, nRaysPerLine) / nRaysPerLine)
        local x = math.random ( xMin, xMax )
        local y = math.random ( yMin, yMax )
        local hObject, dc, dc, cX, cY, cZ = scene.getFirstHitColliderEx ( hScene, x, y, camZ, dirX, dirY, dirZ, 100 )
        
        --If we get a hit, create a helper at the hit location and throw it in a table
        if(hObject)
        then
            local hHelper = scene.createRuntimeObject ( hScene, "" )
            
            --The 0.1 translation is so that when we spawn the billboard, it isn't intersecting with the object
            object.setTranslation ( hHelper, cX, cY, cZ + 0.1, object.kGlobalSpace )
            table.add ( this.tSpray ( ), hHelper )
        end
        
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
