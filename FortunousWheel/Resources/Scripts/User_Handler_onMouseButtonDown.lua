--------------------------------------------------------------------------------
--  Handler.......... : onMouseButtonDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function User.onMouseButtonDown ( nButton, nPointX, nPointY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
--------------------------------------------------------------------------------
	
    if(user.getAIState ( this.getUser ( ), "User" ) == "Dragging") then
        local hComp = hud.getUnderCursorComponent ( this.getUser ( ) )
        if(not hComp) then
            this.bDragging ( true )
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
