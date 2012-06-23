--------------------------------------------------------------------------------
--  State............ : Jumping
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function jumpManAI.Jumping_onLoop ( )
--------------------------------------------------------------------------------
	
    local at = application.getAverageFrameTime ( )
    
	--Get the current time
    local time = application.getTotalFrameTime ( )
    
    local jumpDoneTime = this.nJumpTimer ( ) + this.nSimulationJumpTime ( ) + this.nSimulationHangTime ( )
    local jumpImpulseDoneTime = this.nJumpTimer ( ) + this.nSimulationJumpTime ( )
    
    --This may look like an odd set of statements.  It's just a simple way to perform certain events
    --after an elapsed time period.  You need to order events such that the event that happens last
    --is listed first.
    if(time >= jumpDoneTime or time + at >= jumpDoneTime)
    then
        --this is hit after the hang time is over
        --exit to falling state
        this.Idle ( )
        this.bStateFalling ( true ) 
    elseif(time >= jumpImpulseDoneTime or time + at >= jumpImpulseDoneTime)
    then
        --this is hit after the initial jump time, this is where we apply hang time
        --or bail out of the jump if the user isn't holding jump
        
        --only allow the player to bail out of the jump after the initial impulse
        if(not this.bControlJump ( ))
        then
            this.Idle ( )
        end
        
        --apply hang time force
        dynamics.addForce ( this.getObject ( ), 0, this.nSimulationHangForce ( ), 0, object.kLocalSpace )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
