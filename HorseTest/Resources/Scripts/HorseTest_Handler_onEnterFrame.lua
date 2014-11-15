--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HorseTest.onEnterFrame (  )
--------------------------------------------------------------------------------
	
    local dt = application.getLastFrameTime ( )
    
    object.translate ( this.hHorse ( ), 0, 0, this.nVelocity ( ) * dt, object.kLocalSpace )
    
    local bLeft = object.getAIVariable( this.hHorse ( ), "HorseController", "bTurnLEft" )
    local bRight = object.getAIVariable( this.hHorse ( ), "HorseController", "bTurnRight" )
    
    if bLeft then
        object.rotate ( this.hHorse ( ), 0, 100 * dt, 0, object.kGlobalSpace )
    elseif bRight then
        object.rotate ( this.hHorse ( ), 0, -100 * dt, 0, object.kGlobalSpace )
    end
    
    --
    -- Snap to ground
    --
    local hScene = application.getCurrentUserScene ( )
    local x, y, z = object.getTranslation ( this.hHorse ( ), object.kGlobalSpace )
    if not scene.getTerrainHeight ( hScene, x, z ) then
        object.setTranslation ( this.hHorse ( ), 0, 5, 0, object.kGlobalSpace )
        return 0
    end
    
    local nTerrainHeight = scene.getTerrainHeight ( hScene, x, z )
    local nOceanHeight = scene.getOceanHeight ( hScene, x, z )
    object.setTranslation ( this.hHorse ( ), x, nTerrainHeight, z, object.kGlobalSpace )

    --
    -- Align the up vector of the horse with the terrain normal
    --
    local i, j, k = scene.getTerrainNormal ( hScene, x, z )
    local upX, upY, upZ = object.getYAxis ( this.hHorse ( ), object.kGlobalSpace )
    local dx, dy, dz = math.vectorCrossProduct ( upX, upY, upZ, i, j, k )
    
    -- Since A . B = |AB| cos (theta)
    -- A and B are unit vectors so |AB| is just 1 and goes away.
    -- We know then that the angle to rotate to align the 2 vectors is
    -- acos ( A . B  )
    local rot = math.acos ( math.vectorDotProduct ( upX, upY, upZ, i, j, k ) )
    object.rotateAxisAngle ( this.hHorse ( ), dx, 0, dz, rot, object.kGlobalSpace )
	
    if this.bVelocityDecrease ( ) then
        this.nVelocity ( math.clamp ( this.nVelocity ( ) - 1, 0, 30 ) )
        object.sendEvent ( this.hHorse ( ), "HorseController", "onSetVelocity", this.nVelocity ( ) )
    elseif this.bVelocityIncrease ( ) then
        this.nVelocity ( math.clamp ( this.nVelocity ( ) + 1, 0, 30 ) )
        object.sendEvent ( this.hHorse ( ), "HorseController", "onSetVelocity", this.nVelocity ( ) )
    end
    
    local hHud = hud.getComponent ( this.getUser ( ), "Horse.Readout" )
    hud.setLabelText ( hHud, "Velocity: " .. this.nVelocity ( ) .. "\nTerrain: " .. ((nOceanHeight > nTerrainHeight) and "Water" or "Land") )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
