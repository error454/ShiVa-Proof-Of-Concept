--------------------------------------------------------------------------------
--  Handler.......... : onDebugChangeJumpTime
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function userAI.onDebugChangeJumpTime ( up )
--------------------------------------------------------------------------------
	
	--I only do this for debug, don't use these functions for anything else they make
    --your code brittle.
    
    local jumpTime = object.getAIVariable ( this.hPlayer ( ), "jumpManAI", "nSimulationJumpTime" )
    
	if(up)
    then
        jumpTime = jumpTime + 0.05
    else
        jumpTime = jumpTime - 0.05
    end
    
    object.setAIVariable ( this.hPlayer ( ), "jumpManAI", "nSimulationJumpTime", jumpTime )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
