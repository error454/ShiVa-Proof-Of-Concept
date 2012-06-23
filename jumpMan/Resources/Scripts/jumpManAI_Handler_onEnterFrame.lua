--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function jumpManAI.onEnterFrame (  )
--------------------------------------------------------------------------------
	
    --This controls the main logic of the player.  It handles moving the player left/right, 
    --jumping, checking for head and toe collisions to set the falling/jumping state and
    --applying gravity.
    
    --HACK: Make sure that the rotation of the player doesn't change.  An object
    --with a square controller can tend to rotate when standing on edges!
    object.setRotation ( this.getObject ( ), 0, 0, 0, object.kGlobalSpace )
    
	this.doLeftRightMovement ( )
    
    this.checkHeadFootCollisions ( )
    
    this.doJump ( )
        
    this.doGravity ( )
    
    this.updateDebugStates ( )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
