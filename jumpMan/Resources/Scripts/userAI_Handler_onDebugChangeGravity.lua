--------------------------------------------------------------------------------
--  Handler.......... : onDebugChangeGravity
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function userAI.onDebugChangeGravity ( up )
--------------------------------------------------------------------------------
	--I only do this for debug, don't use these functions for anything else they make
    --your code brittle.
    
    local gravity = object.getAIVariable ( this.hPlayer ( ), "jumpManAI", "nSimulationGravityForce" )
    
	if(up)
    then
        gravity = gravity + 1
    else
        gravity = gravity - 1
    end
    
    object.setAIVariable ( this.hPlayer ( ), "jumpManAI", "nSimulationGravityForce", gravity )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
