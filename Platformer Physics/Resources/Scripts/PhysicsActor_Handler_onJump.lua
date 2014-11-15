--------------------------------------------------------------------------------
--  Handler.......... : onJump
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function PhysicsActor.onJump ( bJump )
--------------------------------------------------------------------------------
	
	--
    -- Only set the jumping state if we aren't jumping
    --
    if(not this.bJumping ( ) and bJump) then
        this.bJumping ( true )
        this.nVelocityY ( this.kJumpVelocityInitial ( ) )
        this.Jumping ( )
    elseif(not bJump) then
        -- Early jump termination
        if(this.nVelocityY ( ) > 0 and this.kJumpVelocityTermination ( ) >= 0) then
            this.nVelocityY ( math.min ( this.kJumpVelocityTermination ( ), this.nVelocityY ( ) ) )
        end
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
