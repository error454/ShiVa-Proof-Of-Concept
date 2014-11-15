--------------------------------------------------------------------------------
--  Handler.......... : onMouseMove
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Flocking.onMouseMove ( nPointX, nPointY, nDeltaX, nDeltaY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
--------------------------------------------------------------------------------
	
    local sState = user.getAIState ( this.getUser ( ), "Flocking" )
    
    if(sState == "Seek") then
        local x, y, z = math.computeRayPlaneIntersection ( nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ, 100, 0, 1, 0, 0 )
        if(x and this.hTarget ( )) then
            object.setTranslation ( this.hTarget ( ), x, y, z, object.kGlobalSpace )
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
