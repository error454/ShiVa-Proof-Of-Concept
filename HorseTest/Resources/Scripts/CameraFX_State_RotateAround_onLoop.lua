--------------------------------------------------------------------------------
--  State............ : RotateAround
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function CameraFX.RotateAround_onLoop ( )
--------------------------------------------------------------------------------
	
    local x, y, z = object.getTranslation ( this.hTrackingTarget ( ), object.kGlobalSpace )
    
    local dt = application.getLastFrameTime ( ) * 5
    
    object.rotateAround ( application.getCurrentUserActiveCamera ( ), x, y, z, 0, dt, dt * 1.5, object.kGlobalSpace )
    object.lookAt ( application.getCurrentUserActiveCamera ( ), x + 4, y - 2, z, object.kGlobalSpace, 1 )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
