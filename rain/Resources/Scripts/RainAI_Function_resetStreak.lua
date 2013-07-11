--------------------------------------------------------------------------------
--  Function......... : resetStreak
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function RainAI.resetStreak ( hStreak, velocity )
--------------------------------------------------------------------------------
	
	local xMin, yMin, xMax, yMax = table.getRangeAt ( this.tRainBounds ( ), 0, 4 )
    local x = math.random ( xMin, xMax )
    local y = math.random ( 0, yMax + 1)
    local z = math.random ( -10, 10 )
    object.setScale ( hStreak, 2, velocity * 2, 2 )
    object.setTranslation ( hStreak, x, y, z, object.kGlobalSpace )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
