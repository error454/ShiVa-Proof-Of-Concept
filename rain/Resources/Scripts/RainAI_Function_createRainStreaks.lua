--------------------------------------------------------------------------------
--  Function......... : createRainStreaks
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function RainAI.createRainStreaks ( )
--------------------------------------------------------------------------------
	local hScene = application.getCurrentUserScene ( )
    
	table.empty ( this.tRain ( ) )
    for streak = 1, this.nMaxStreaks ( )
    do
        local hStreak = scene.createRuntimeObject ( hScene, "rainstreak" )
        table.add ( this.tRain ( ), hStreak )
        
        object.setRotation ( hStreak, 0, 0, this.nAngle ( ), object.kLocalSpace )
        this.resetStreak ( hStreak, 0)        
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
