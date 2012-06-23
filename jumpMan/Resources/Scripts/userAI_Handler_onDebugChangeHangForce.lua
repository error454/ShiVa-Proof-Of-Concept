--------------------------------------------------------------------------------
--  Handler.......... : onDebugChangeHangForce
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function userAI.onDebugChangeHangForce ( up )
--------------------------------------------------------------------------------
	
	--I only do this for debug, don't use these functions for anything else they make
    --your code brittle.
    
    local hangForce = object.getAIVariable ( this.hPlayer ( ), "jumpManAI", "nSimulationHangForce" )
    
	if(up)
    then
        hangForce = hangForce + 1
    else
        hangForce = hangForce - 1
    end
    
    object.setAIVariable ( this.hPlayer ( ), "jumpManAI", "nSimulationHangForce", hangForce )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
