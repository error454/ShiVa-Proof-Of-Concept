--------------------------------------------------------------------------------
--  Function......... : checkHeadFootCollisions
--  Author........... : 
--  Description...... : Checks for collisions at the top and bottom of the player
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function jumpManAI.checkHeadFootCollisions ( )
--------------------------------------------------------------------------------
	
	if ( dynamics.getLastCollisionContactCount ( this.getObject ( ) ) > 0 )
    then
        local x, y, z = dynamics.getLastCollisionContactNormalAt ( this.getObject ( ), 0 )
        
        if(y == -1)
        then
            --we hit our head! set vertical velocity to zero but don't touch horizontal
            this.zeroVerticalVelocity ( )
            this.Idle ( )
            this.bStateFalling ( true )
        elseif(y == 1)
        then
            --we hit our feet! go to the idle state
            --this.Idle ( )
            this.bStateFalling ( false )
        end
    else
        --There wasn't a collision, set the falling state based on whether we're jumping
        if(not this.bStateJumping ( ))
        then
            this.bStateFalling ( true )
            
        else
            this.bStateFalling ( false )
        end
            
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
