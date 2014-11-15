--------------------------------------------------------------------------------
--  Handler.......... : onMouseMove
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HorseTest.onMouseMove ( nPointX, nPointY, nDeltaX, nDeltaY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
--------------------------------------------------------------------------------
	
    --[[
	if this.hHorse ( ) then
        local hCamera = application.getCurrentUserActiveCamera ( )
        local x, y, z = object.getTranslation ( this.hHorse ( ), object.kGlobalSpace )
        object.rotateAround ( hCamera, x, y, z, 0, nDeltaX * 100, 0, object.kGlobalSpace )
        object.lookAt ( hCamera, x, y, z, object.kGlobalSpace, 1 )
    end
    ]]
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
