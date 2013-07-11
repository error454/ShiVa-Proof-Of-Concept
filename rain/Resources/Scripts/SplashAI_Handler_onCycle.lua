--------------------------------------------------------------------------------
--  Handler.......... : onCycle
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function SplashAI.onCycle (  )
--------------------------------------------------------------------------------
	
    local u, v
    local time = 0.08
    
    this.nFrame ( this.nFrame ( ) + 1 )
    if(this.nFrame ( ) > 4) then this.nFrame ( 0 ) end
    
    if(this.nFrame ( ) == 0)
    then
        object.setVisible ( this.getObject ( ), true )
        u = 0
        v = 0.5
    elseif(this.nFrame ( ) == 1)
    then
        u = 0.5
        v = 0.5
    elseif(this.nFrame ( ) == 2)
    then
        u = 0
        v = 0
    elseif(this.nFrame ( ) == 3)
    then
        u = 0.5
        v = 0        
    elseif(this.nFrame ( ) == 4)
    then
        u = 0
        v = 0.5
        
        object.setVisible ( this.getObject ( ), false )
        time = math.random ( 0.4, 1 )
        
        if(object.getModelName ( this.getObject ( ) ) == "splash")
        then
            local tRainBounds = user.getAIVariable ( application.getCurrentUser ( ), "RainAI", "tRainBounds" )
            local xMin, yMin, xMax, yMax = table.getRangeAt ( tRainBounds, 0, 4 )
            local x = math.random ( xMin, xMax )
            local y = 0
            local z = math.random ( -10, 10 )
            object.setTranslation ( this.getObject ( ), x, y, z, object.kGlobalSpace )            
        end
    end
    
    shape.setMeshSubsetMaterialEffectMap0AdditionalUVOffset ( this.getObject ( ), 0, u, v )
	
    this.postEvent ( time, "onCycle" )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
