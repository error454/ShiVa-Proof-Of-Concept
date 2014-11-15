--------------------------------------------------------------------------------
--  Function......... : makeRandomNebula
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function SimplexNoiseAI.makeRandomNebula ( )
--------------------------------------------------------------------------------
	
	this.clearMap ( "pixel2048" )
    
    --[[
    -- blue storm
    noise.renderNebulaC ( "pixel1024", 
        5, 0.5, 0.002, 255, 0.99, 11,
        5, 0.4, 0.0007, 100, 0.99, 7,
        5, 0.4, 0.0007, 100, 0.99, 7,
        5, 0.4, 0.0006, 160, 0.99, 7)
        
    -- cotton candy
    noise.renderNebulaC ( "pixel1024", 
        5, 0.4, 0.003, 255, 0.99, 1,
        5, 0.6, 0.0005, 200, 0.99, 4,
        0, 0.5, 0.003, 0, 0.99, 10,
        7, 0.5, 0.001, 200, 0.98, 2 )
        
    --
    -- Purple Thunder
    --
    noise.renderNebulaC ( "pixel1024", 
        5, 0.4, 0.003, 255, 0.99, 1,
        5, 0.5, 0.003, 175, 0.99, 2,
        0, 0.5, 0.003, 0, 0.99, 1,
        5, 0.6, 0.003, 175, 0.99, 2 )
    
    -- title
    noise.renderNebulaC ( "pixel2048", 
        5, 0.5, 0.002, 255, 0.99, 19,
        3, 0.4, 0.0004, 140, 0.99, 777,
        3, 0.5, 0.0004, 110, 0.99, 11,
        3, 0.4, 0.0004, 190, 0.99, 77 )
    
    -- redward
    noise.renderNebulaC ( "pixel2048", 
        5, 0.5, 0.002, 255, 0.99, 9,
        5, 0.4, 0.0005, 180, 0.99, 4,
        5, 0.5, 0.0005, 130, 0.99, 4,
        6, 0.5, 0.001, 0, 0.99, 2 )
        
        ]]
    local nOctaves = math.roundToNearestInteger ( math.random ( 0, 7 ) )
    local nPersistence = math.trunc ( math.random ( 0.4, 0.6 ), 1 )
    local nScale = math.trunc ( math.random ( 0.0004, 0.003 ), 4 )
    local nCover = math.roundToNearestInteger ( math.random ( 0, 255 ) )
    local nSharpness = math.trunc ( math.random ( 0.98, 0.99 ), 2 )
    local nSeed = math.roundToNearestInteger ( math.random ( 1, 1000 ) )
    
    local nOctaves1 = math.roundToNearestInteger ( math.random ( 0, 7 ) )
    local nPersistence1 = math.trunc ( math.random ( 0.4, 0.6 ), 1 )
    local nScale1 = math.trunc ( math.random ( 0.0004, 0.003 ), 4 )
    local nCover1 = math.roundToNearestInteger ( math.random ( 0, 255 ) )
    local nSharpness1 = math.trunc ( math.random ( 0.98, 0.99 ), 2 )
    local nSeed1 = math.roundToNearestInteger ( math.random ( 1, 1000 ) )
    
    local nOctaves2 = math.roundToNearestInteger ( math.random ( 0, 7 ) )
    local nPersistence2 = math.trunc ( math.random ( 0.4, 0.6 ), 1 )
    local nScale2 = math.trunc ( math.random ( 0.0004, 0.003 ), 4 )
    local nCover2 = math.roundToNearestInteger ( math.random ( 0, 255 ) )
    local nSharpness2 = math.trunc ( math.random ( 0.98, 0.99 ), 2 )
    local nSeed2 = math.roundToNearestInteger ( math.random ( 1, 1000 ) )
    
    local nOctaves3 = math.roundToNearestInteger ( math.random ( 0, 7 ) )
    local nPersistence3 = math.trunc ( math.random ( 0.4, 0.6 ), 1 )
    local nScale3 = math.trunc ( math.random ( 0.0004, 0.003 ), 4 )
    local nCover3 = math.roundToNearestInteger ( math.random ( 0, 255 ) )
    local nSharpness3 = math.trunc ( math.random ( 0.98, 0.99 ), 2 )
    local nSeed3 = math.roundToNearestInteger ( math.random ( 1, 1000 ) )
            
    noise.renderNebulaC ( "pixel2048", 
        nOctaves, nPersistence, nScale, nCover, nSharpness, nSeed, 
        nOctaves1, nPersistence1, nScale1, nCover1, nSharpness1, nSeed1, 
        nOctaves2, nPersistence2, nScale2, nCover2, nSharpness2, nSeed2, 
        nOctaves3, nPersistence3, nScale3, nCover3, nSharpness3, nSeed3 )
        
    local hMap = pixelmap.getResourceHandle ( "pixel2048" )
	this.saveMap ( hMap, this.sFile ( ) .. this.nNumber ( ) .. ".tga" )
    this.nNumber ( this.nNumber ( ) + 1 )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
