--------------------------------------------------------------------------------
--  Function......... : doLeftRightMovement
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function jumpManAI.doLeftRightMovement ( )
--------------------------------------------------------------------------------
	
	--This is where we handle left/right movement 
    --NOTE: The speed at which the player slows is defined by the linear dampening 
    --in the dynamics controller of the object.
    if(this.bControlMoveLeft ( ))
    then
        dynamics.addForce ( this.getObject ( ), -this.nSimulationRunForce ( ), 0, 0, object.kLocalSpace )
    elseif(this.bControlMoveRight ( ))
    then
        dynamics.addForce ( this.getObject ( ), this.nSimulationRunForce ( ), 0, 0, object.kLocalSpace )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
