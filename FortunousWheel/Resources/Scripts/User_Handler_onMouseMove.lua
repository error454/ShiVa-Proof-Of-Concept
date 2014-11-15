--------------------------------------------------------------------------------
--  Handler.......... : onMouseMove
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function User.onMouseMove ( nPointX, nPointY, nDeltaX, nDeltaY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
--------------------------------------------------------------------------------
	
    if(user.getAIState ( this.getUser ( ), "User" ) == "Dragging") then
        if(this.bDragging ( )) then
            local naspect = application.getCurrentUserViewportAspectRatio ( )
            object.rotate ( this.hBoard ( ), 0, -nDeltaX * 60 , 0, object.kLocalSpace )
            this.nLastAccel ( nDeltaX )
        end
	end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
