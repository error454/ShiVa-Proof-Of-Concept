--------------------------------------------------------------------------------
--  Handler.......... : onMouseButtonUp
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function User.onMouseButtonUp ( nButton, nPointX, nPointY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
--------------------------------------------------------------------------------
	
    if(user.getAIState ( this.getUser ( ), "User" ) == "Dragging") then
        if(nButton == 0 and this.bDragging ( )) then
            this.bDragging ( false )
            --log.message ( "accel of: " .. this.nLastAccel ( ) )
            this.Spinning ( )
        end
	end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
