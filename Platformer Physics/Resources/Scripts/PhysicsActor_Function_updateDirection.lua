--------------------------------------------------------------------------------
--  Function......... : updateDirection
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function PhysicsActor.updateDirection ( )
--------------------------------------------------------------------------------
	
    local time = application.getLastFrameTime ( )
    local newVelocity
    local direction
    local nAccel = time * 8
    
	if(this.bRight ( )) then
        direction = 1
        newVelocity = math.min ( this.kHorizontalVelocity ( ), this.nVelocityX ( ) + nAccel )
    elseif(this.bLeft ( )) then
        direction = -1
        newVelocity = math.max ( -this.kHorizontalVelocity ( ), this.nVelocityX ( ) - nAccel )
    else
        if(this.nVelocityX ( ) > 0) then
            newVelocity = math.max ( 0, this.nVelocityX ( ) - nAccel )
            direction = 1
        elseif(this.nVelocityX ( ) < 0) then
            newVelocity = math.min ( 0, this.nVelocityX ( ) + nAccel )
            direction = -1
        else
            newVelocity = 0
            direction = 0
        end
    end
    
    local deltaX = newVelocity * time
    local castDirection = deltaX > 0 and 1 or -1
    
    local x, y, z = object.getTranslation ( this.getObject ( ), object.kGlobalSpace )
    x, y, z = math.vectorAdd ( x, y, z, castDirection * 0.5 + deltaX, 2.2, 0 )
    
    local hObject, nDist = scene.getFirstHitCollider ( application.getCurrentUserScene ( ), x, y, z, 0, -1, 0, 2 )
    if(not hObject) then
        object.setTranslation ( this.getObject ( ), deltaX, 0, 0, object.kLocalSpace )
    else
        newVelocity = 0
    end
    
    this.nVelocityX ( newVelocity )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
