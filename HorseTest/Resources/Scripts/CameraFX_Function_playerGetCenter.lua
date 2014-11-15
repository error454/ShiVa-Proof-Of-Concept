--------------------------------------------------------------------------------
--  Function......... : playerGetCenter
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function CameraFX.playerGetCenter ( tPlayers )
--------------------------------------------------------------------------------
	
    -- Get the center X, Y, Z of all players
    local tGet = table.getAt
    local centerX, centerY, centerZ = 0, 0, 0
    local inf = math.kInfinity
    local minX, minY, minZ = inf, inf, inf
    local maxX, maxY, maxZ = -inf, -inf, -inf
    local nCount = 0
    local object_getTranslation = object.getTranslation
    local object_getAI = object.getAIState
    local min = math.min
    local max = math.max
    
    local bogus = true
	for i = 0, table.getSize ( tPlayers ) - 1 do
        local hPlayer = tGet ( tPlayers, i )
        if(hPlayer) then
            if(object_getAI(hPlayer, "PlayerAI") ~= "Ragdoll") then
                local x, y, z = object_getTranslation ( hPlayer, object.kGlobalSpace )
                
                minX = min ( x, minX )
                minY = min ( y, minY )
                minZ = min ( z, minZ )
                maxX = max ( x, maxX )
                maxY = max ( y, maxY )
                maxZ = max ( z, maxZ )
                
                bogus = false
            end
        end
    end
    
    local vx, vy, vz = math.vectorSubtract ( maxX, maxY, maxZ, minX, minY, minZ )
    local radius = math.vectorLength ( vx, vy, vz )
    vx, vy, vz = math.vectorSetLength ( vx, vy, vz, radius * 0.5 )
    local fx, fy, fz = math.vectorAdd ( minX, minY, minZ, vx, vy, vz )
    
    local ySpread = maxY - minY
    
    if(bogus) then
        return nil
    end
    
    return fx, fy, fz, radius, ySpread
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
