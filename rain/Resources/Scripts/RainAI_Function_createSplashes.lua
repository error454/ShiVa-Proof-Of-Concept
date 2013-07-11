--------------------------------------------------------------------------------
--  Function......... : createSplashes
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function RainAI.createSplashes ( )
--------------------------------------------------------------------------------
	
    local hScene = application.getCurrentUserScene ( )
    local xMin, yMin, xMax, yMax = table.getRangeAt ( this.tRainBounds ( ), 0, 4 )
    
	for splashes = 1, this.nMaxSplashes ( )
    do
        local hSplash = scene.createRuntimeObject ( hScene, "splash" )
        local x = math.random ( xMin, xMax )
        local y = 0
        local z = math.random ( -10, 10 )
        object.setTranslation ( hSplash, x, y, z, object.kGlobalSpace )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
