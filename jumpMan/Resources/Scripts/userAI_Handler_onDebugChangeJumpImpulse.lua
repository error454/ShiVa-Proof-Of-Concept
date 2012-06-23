--------------------------------------------------------------------------------
--  Handler.......... : onDebugChangeJumpImpulse
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function userAI.onDebugChangeJumpImpulse ( up )
--------------------------------------------------------------------------------
	
	--I only do this for debug, don't use these functions for anything else they make
    --your code brittle.
    
    local jumpImpulse = object.getAIVariable ( this.hPlayer ( ), "jumpManAI", "nSimulationJumpImpulse" )
    
	if(up)
    then
        jumpImpulse = jumpImpulse + 1
    else
        jumpImpulse = jumpImpulse - 1
    end
    
    object.setAIVariable ( this.hPlayer ( ), "jumpManAI", "nSimulationJumpImpulse", jumpImpulse )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
