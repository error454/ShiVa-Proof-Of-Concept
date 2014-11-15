--------------------------------------------------------------------------------
--  State............ : TrackObject
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function CameraFX.TrackObject_onLoop ( )
--------------------------------------------------------------------------------
	
	if(this.hCurrentCamera ( )) then
        local x, y, z = object.getTranslation ( this.hCurrentCamera ( ), object.kGlobalSpace )
        local r, s, t = object.getRotation ( this.hCurrentCamera ( ), object.kGlobalSpace )
        local fov = camera.getFieldOfView ( this.hCurrentCamera ( ) )
        
        local hCamera = application.getCurrentUserActiveCamera ( )
        object.translateTo ( hCamera, x, y, z, object.kGlobalSpace, application.getLastFrameTime ( ) * this.nTrackingSpeed ( ) )
        object.rotateTo ( hCamera, r, s, t, object.kGlobalSpace, application.getLastFrameTime ( ) * this.nTrackingSpeed ( ) )
        camera.setFieldOfView ( hCamera, fov )
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
