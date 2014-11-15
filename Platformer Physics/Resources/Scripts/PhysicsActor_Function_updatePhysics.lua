--------------------------------------------------------------------------------
--  Function......... : updatePhysics
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function PhysicsActor.updatePhysics ( )
--------------------------------------------------------------------------------
	
    local hScene = application.getCurrentUserScene ( )
    local time = application.getLastFrameTime ( )
    
	-- calculate new velocity and position
    local newVelocity = math.clamp ( this.nVelocityY ( ) - this.kGravity ( ) * time, -this.kJumpVelocityTerminal ( ), this.kJumpVelocityInitial ( ) )
    local deltaPositionY = newVelocity * time
    local directionY = deltaPositionY > 0 and 1 or -1
    
    --
    -- See if we can move in the desired direction
    -- 
    local x, y, z = object.getTranslation ( this.getObject ( ), object.kGlobalSpace )
    local sweepX, sweepY, sweepZ = math.vectorAdd ( x, y, z, -0.5, deltaPositionY, 0 )
    
    local hSweep, nSweepDist = scene.getFirstHitCollider ( hScene, sweepX, sweepY, sweepZ, 1, 0, 0, 1 )
    --debug.drawLine ( sweepX, sweepY, sweepZ, sweepX + 1, sweepY, sweepZ, 1, 0, 0, 1 )
    
    if(hSweep) then
        local hCollision, nDist = scene.getFirstHitCollider ( hScene, x - 0.5 + nSweepDist, y + 0.5, z, 0, directionY, 0, math.abs ( deltaPositionY ) + 0.5 )
        
        -- Did we collide with something?
        if(hCollision) then
            if(directionY == 1) then -- if we were jumping
                newVelocity = 0
            else -- falling
                
                -- Calculate the distance from player to collision surface
                local maxX, maxY, maxZ = object.getBoundingBoxMax ( hCollision )
                deltaPositionY = maxY - y
                
                newVelocity = 0
                this.bJumping ( false )
                this.Standing ( )
            end
        end
    end
    
    object.translate ( this.getObject ( ), 0, deltaPositionY, 0, object.kGlobalSpace )
    this.nVelocityY ( newVelocity )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
