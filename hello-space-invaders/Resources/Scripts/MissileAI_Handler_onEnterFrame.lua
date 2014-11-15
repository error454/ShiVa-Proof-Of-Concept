--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MissileAI.onEnterFrame (  )
--------------------------------------------------------------------------------
	
    local dt = application.getLastFrameTime ( )
	object.translate ( this.getObject ( ), 0, this.nSpeed ( ) * dt, 0, object.kLocalSpace )
    
    if(application.getTotalFrameTime ( ) > this.nSpawnTime ( ) + this.nLifetime ( ))
    then
        scene.destroyRuntimeObject ( application.getCurrentUserScene ( ), this.getObject ( ) )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
