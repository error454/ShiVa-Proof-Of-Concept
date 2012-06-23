--------------------------------------------------------------------------------
--  Handler.......... : onDebugChangeHangTime
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function userAI.onDebugChangeHangTime ( up )
--------------------------------------------------------------------------------
	
	--I only do this for debug, don't use these functions for anything else they make
    --your code brittle.
    
    local hangTime = object.getAIVariable ( this.hPlayer ( ), "jumpManAI", "nSimulationHangTime" )
    
	if(up)
    then
        hangTime = hangTime + 0.05
    else
        hangTime = hangTime - 0.05
    end
    
    object.setAIVariable ( this.hPlayer ( ), "jumpManAI", "nSimulationHangTime", hangTime )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
