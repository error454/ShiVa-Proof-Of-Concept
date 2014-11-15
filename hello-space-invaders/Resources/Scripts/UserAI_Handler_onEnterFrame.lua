--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function UserAI.onEnterFrame (  )
--------------------------------------------------------------------------------
	
	if(this.bLeft ( ))
    then
        object.translate ( this.hPlayer ( ), -this.nMovementRate ( ) * application.getLastFrameTime ( ), 0, 0, object.kGlobalSpace )
    elseif(this.bRight ( ))
    then
        object.translate ( this.hPlayer ( ), this.nMovementRate ( ) * application.getLastFrameTime ( ), 0, 0, object.kGlobalSpace )
    end
    
    if(this.bFire ( ))
    then
        this.fireMissile ( )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
