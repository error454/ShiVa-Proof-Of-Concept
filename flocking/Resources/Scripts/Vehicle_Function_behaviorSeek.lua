--------------------------------------------------------------------------------
--  Function......... : behaviorSeek
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Vehicle.behaviorSeek ( )
--------------------------------------------------------------------------------
	
    local o = this.getObject ( )
    
    -- Get the current location and the destination location
    local currentX, currentY, currentZ = object.getTranslation ( o, object.kGlobalSpace )
    local destX, destY, destZ = object.getTranslation ( this.hTarget ( ), object.kGlobalSpace )
	
    -- Get vector to desired location, clamp to max velocity
    local desiredX, desiredY, desiredZ = math.vectorSubtract ( destX, destY, destZ, currentX, currentY, currentZ )
    desiredX, desiredY, desiredZ  = math.vectorSetLength ( desiredX, desiredY, desiredZ, this.kMaxVelocity ( ) )
    debug.drawLine ( currentX, currentY, currentZ, currentX + desiredX, currentY + desiredY, currentZ + desiredZ, 0, 0, 1, 1 )
    
    -- Calculate steering force, clamp to max steering force and apply to object
    local velX, velY, velZ = dynamics.getLinearVelocity ( o, object.kGlobalSpace )
    object.lookAt ( o, currentX + velX, currentY + velY, currentZ + velZ, object.kGlobalSpace, 1 )
    debug.drawLine ( currentX, currentY, currentZ, currentX + velX, currentY + velY, currentZ + velZ, 1, 0, 0, 1 )
    
    local steerX, steerY, steerZ = math.vectorSubtract ( desiredX, desiredY, desiredZ, velX, velY, velZ )
    steerX, steerY, steerZ = math.vectorSetLength ( steerX, steerY, steerZ, this.kMaxForce ( ) )
    if(math.vectorLength ( steerX, steerY, steerZ ) > this.kMaxForce ( )) then
       
    end
    debug.drawLine ( currentX, currentY, currentZ, currentX + steerX, currentY + steerY, currentZ + steerZ, 0, 1, 0, 1 )
    dynamics.addForce ( o, steerX, steerY, steerZ, object.kGlobalSpace )
    
    --velX, velY, velZ = dynamics.getLinearVelocity ( o, object.kGlobalSpace )
    
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
