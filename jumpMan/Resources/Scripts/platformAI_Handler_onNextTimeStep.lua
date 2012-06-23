--------------------------------------------------------------------------------
--  Handler.......... : onNextTimeStep
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function platformAI.onNextTimeStep (  )
--------------------------------------------------------------------------------
	
    local x, y
    
    --Set the velocity based on the type of platform this is
    if(this.bMoveLRorUD ( ))
    then
        x = this.nVelocity ( )
        y = 0
    else
        x = 0
        y = this.nVelocity ( )
    end
    
    --Change the direction based on the state of the platform
    if(this.bMoveState ( ))
    then
        x = -x
        y = -y
    end
    
    --Cycle the state
    this.bMoveState ( not this.bMoveState ( ) )
    
    --Set the velocity
    dynamics.setLinearVelocity ( this.getObject ( ), x, y, 0, object.kGlobalSpace )
    
    --Post an event for the next timestep
    this.postEvent ( this.nTimeStep ( ), "onNextTimeStep" )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
