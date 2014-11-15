--------------------------------------------------------------------------------
--  Function......... : updateHeadDirection
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HorseController.updateHeadDirection ( )
--------------------------------------------------------------------------------
	
    local nHeadFactor = this.nHeadTurnFactor ( )
    local nHeadDirection = this.nHeadDirection ( )
    local dt = application.getLastFrameTime ( )
    
    -- Don't use Neck2 otherwise the head swivels in circles, use a neck bone that will always be pointed
    -- in the direction of travel
    local r, s, t = shape.getSkeletonJointRotation ( this.getObject ( ), "Neck1", object.kGlobalSpace )
    
    if this.bTurnLEft ( ) then
        --nHeadDirection = math.interpolate ( nHeadDirection, s + 30, dt * 4 )
        nHeadDirection = math.clamp ( nHeadDirection + dt * 60, -30, 30 )
        nHeadFactor = math.clamp ( nHeadFactor + dt, 0, 1 )
    elseif this.bTurnRight ( ) then
        nHeadDirection = math.clamp ( nHeadDirection - dt * 60, -30, 30 )
        --nHeadDirection = math.interpolate ( nHeadDirection, s - 30, dt * 4 )
        nHeadFactor = math.clamp ( nHeadFactor + dt, 0, 1 )
    else
        nHeadDirection = math.interpolate ( nHeadDirection, 0, dt * 2 )
        nHeadFactor = math.clamp ( nHeadFactor - dt, 0, 1 )
    end
    
    this.nHeadDirection ( nHeadDirection )
    this.nHeadTurnFactor ( nHeadFactor )
    
    --log.message ( s, " ", nHeadDirection )
    shape.overrideSkeletonJointRotation ( this.getObject ( ), "Neck2", 0, s + nHeadDirection, 0, object.kGlobalSpace, nHeadFactor )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
