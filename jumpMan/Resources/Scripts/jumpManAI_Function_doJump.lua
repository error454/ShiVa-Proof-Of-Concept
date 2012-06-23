--------------------------------------------------------------------------------
--  Function......... : doJump
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function jumpManAI.doJump ( )
--------------------------------------------------------------------------------
	
	if(not this.bStateJumping ( ) and not this.bStateFalling ( ) and not this.bControlJump ( ))
    then
        this.bJumpLatch ( false )
    end
    
    --Check the jump state and the player's desire to jump, jump if allowable
    if(this.bControlJump ( ) and not this.bStateFalling ( ) and not this.bJumpLatch ( ))
    then
        this.bJumpLatch ( true )
        this.Jumping ( )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
