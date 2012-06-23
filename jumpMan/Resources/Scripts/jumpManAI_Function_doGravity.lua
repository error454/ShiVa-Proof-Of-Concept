--------------------------------------------------------------------------------
--  Function......... : doGravity
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function jumpManAI.doGravity ( )
--------------------------------------------------------------------------------
	    
	if(this.bStateJumping ( ))
    then
        if(this.bSimulationGravityWhenJumping ( ))
        then
            dynamics.addForce ( this.getObject ( ), 0, -this.nSimulationGravityForce ( ), 0, object.kLocalSpace )
        end
    else
        dynamics.addForce ( this.getObject ( ), 0, -this.nSimulationGravityForce ( ), 0, object.kLocalSpace )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
