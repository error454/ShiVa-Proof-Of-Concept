--------------------------------------------------------------------------------
--  Handler.......... : onInitializeConstants
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function PhysicsActor.onInitializeConstants ( nGravity, nJumpV0, nJumpVt, nJumpVterminal )
--------------------------------------------------------------------------------
	
	this.kGravity ( nGravity )
    this.kJumpVelocityInitial ( nJumpV0 )
	this.kJumpVelocityTermination ( nJumpVt )
    this.kJumpVelocityTerminal ( nJumpVterminal )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
