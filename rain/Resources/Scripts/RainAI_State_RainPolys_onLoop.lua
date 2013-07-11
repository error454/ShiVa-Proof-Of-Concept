--------------------------------------------------------------------------------
--  State............ : RainPolys
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function RainAI.RainPolys_onLoop ( )
--------------------------------------------------------------------------------
	
    local velocity = application.getLastFrameTime ( ) * 25
    
    local size = table.getSize ( this.tRain ( ) ) - 1 
    
	for rain = 0, size
    do
        local hStreak = table.getAt ( this.tRain ( ), rain )
        
        local x, y = object.getTranslation ( hStreak, object.kGlobalSpace )
        
        if(y <= -2)
        then
            this.resetStreak ( hStreak, velocity )
        else
            object.translate ( hStreak, 0, -velocity, 0, object.kLocalSpace )
        end
    end    
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
