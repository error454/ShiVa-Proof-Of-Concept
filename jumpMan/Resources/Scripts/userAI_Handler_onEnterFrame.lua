--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function userAI.onEnterFrame (  )
--------------------------------------------------------------------------------
	
	--Have the camera track the x location of the player
    local hCamera = user.getActiveCamera ( this.getUser ( ) )
    local x, DC, DC = object.getTranslation ( this.hPlayer ( ), object.kGlobalSpace )
    
    local xCam, yCam, zCam = object.getTranslation ( hCamera, object.kGlobalSpace )
    
    object.setTranslation ( hCamera, x, yCam, zCam, object.kGlobalSpace )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
