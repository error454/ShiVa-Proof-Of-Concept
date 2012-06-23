--------------------------------------------------------------------------------
--  State............ : Jumping
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function jumpManAI.Jumping_onEnter ( )
--------------------------------------------------------------------------------
	
    --We're jumping now
	this.bStateJumping ( true )
    
    --Set our initial vertical velocity to 0
    this.zeroVerticalVelocity ( )
    
    --Perform the initial jump
	dynamics.addLinearImpulse ( this.getObject ( ), 0, this.nSimulationJumpImpulse ( ), 0, object.kLocalSpace )
    
    --Set the timer with the current timer, this will be used to control the remainder of the jump
    this.nJumpTimer ( application.getTotalFrameTime ( ) )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
