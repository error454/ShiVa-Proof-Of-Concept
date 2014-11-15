--------------------------------------------------------------------------------
--  Handler.......... : onMouseMove
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Pong.onMouseMove ( nPointX, nPointY, nDeltaX, nDeltaY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
--------------------------------------------------------------------------------
	
    -- nPointX and nPointY are in screen space [1, 1]
	-- Convert to the X value we want
    local hPlayer1 = application.getCurrentUserSceneTaggedObject ( "Player1" )
    local x, y, z = camera.projectPoint ( application.getCurrentUserActiveCamera ( ), object.getTranslation ( hPlayer1, object.kGlobalSpace ) )
    local fx, fy, fz = camera.unprojectPoint ( application.getCurrentUserActiveCamera ( ), nPointX, nPointY, z  )
    
    local sx, sy, sz = object.getTranslation ( hPlayer1, object.kGlobalSpace )
    fz = math.clamp ( fz, -6.9, 6.9 )
    object.setTranslation ( hPlayer1, sx, sy, fz, object.kGlobalSpace )
	--log.message ( fz )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
