--------------------------------------------------------------------------------
--  State............ : FollowObject
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function CameraFX.FollowObject_onLoop ( )
--------------------------------------------------------------------------------
	
	local dt = application.getLastFrameTime ( )
	local x, y, z = object.getTranslation ( this.hTrackingTarget ( ), object.kGlobalSpace )
    local dx, dy, dz = object.getDirection ( this.hTrackingTarget ( ), object.kGlobalSpace )

    --object.translateTo ( application.getCurrentUserActiveCamera ( ), x + -dx * 2, y + 10, z + 30, object.kGlobalSpace, dt * this.nTrackingSpeed ( ))
    
    -- feet of horse
    object.translateTo ( application.getCurrentUserActiveCamera ( ), x - 15, 8, z - 15, object.kGlobalSpace, dt * this.nTrackingSpeed ( ))
    object.lookAt ( application.getCurrentUserActiveCamera ( ), x - 6, y + 5, z, object.kGlobalSpace, 1 )
    --object.rotateTo ( application.getCurrentUserActiveCamera ( ), 0, 0, 0, object.kGlobalSpace, dt * this.nTrackingSpeed ( ) )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
