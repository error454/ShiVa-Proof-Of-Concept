--------------------------------------------------------------------------------
--  Function......... : easeCamera
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function User.easeCamera ( sDestinationCamera )
--------------------------------------------------------------------------------
	
	local hCamera = application.getCurrentUserActiveCamera ( )
    local hDestination = application.getCurrentUserSceneTaggedObject ( sDestinationCamera )
    local x, y, z = object.getTranslation ( hDestination, object.kGlobalSpace )
    
    object.translateTo ( hCamera, x, y, z, object.kGlobalSpace, application.getLastFrameTime ( )  )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
