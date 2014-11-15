--------------------------------------------------------------------------------
--  State............ : TrackLocation
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function CameraFX.TrackLocation_onLoop ( )
--------------------------------------------------------------------------------
	
	local dt = application.getLastFrameTime ( )
	local x, y, z = table.getRangeAt ( this.tTranslation ( ), 0, 3 )
    object.translateTo ( application.getCurrentUserActiveCamera ( ), x, y, z, object.kGlobalSpace, dt * this.nTrackingSpeed ( ))
    object.rotateTo ( application.getCurrentUserActiveCamera ( ), 0, 0, 0, object.kGlobalSpace, dt * this.nTrackingSpeed ( ) )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
