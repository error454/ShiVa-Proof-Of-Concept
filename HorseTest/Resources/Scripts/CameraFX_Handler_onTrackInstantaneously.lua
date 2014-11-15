--------------------------------------------------------------------------------
--  Handler.......... : onTrackInstantaneously
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function CameraFX.onTrackInstantaneously (  )
--------------------------------------------------------------------------------
	
	-- move to the camera you're tracking
    object.matchTranslation ( application.getCurrentUserActiveCamera ( ), this.hCurrentCamera ( ), object.kGlobalSpace )
	object.matchRotation ( application.getCurrentUserActiveCamera ( ), this.hCurrentCamera ( ), object.kGlobalSpace )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
