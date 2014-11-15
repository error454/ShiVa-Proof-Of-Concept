--------------------------------------------------------------------------------
--  Function......... : createWheelFromSlices
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function User.createWheelFromSlices ( nSegments )
--------------------------------------------------------------------------------
    
    local hUser = this.getUser ( )
    local hScene = application.getCurrentUserScene ( )
    local length = 5
    -- circumference of segment = 2 * pi * length / nSegments
    local radius = 2 * math.kPi * length / nSegments * 0.5
    
    -- the fewer the segments, the higher the fudge
    --local nRadiusFudge = 2.1768 * math.pow ( 2.7182, -0.302 * nSegments )
    local nRadiusFudge = -0.01
    
    --
    -- Base Board
    --
    local hBoard = scene.createRuntimeObject ( hScene, "board" )
    this.hBoard ( hBoard )
    object.setScale ( hBoard, length * 1.05, 0.1, length * 1.05 )
    object.setTranslation ( hBoard, 0, -0.15, 0, object.kGlobalSpace )
    scene.setObjectTag ( hScene, hBoard, "board" )
    
    --
    -- Pointer
    --
    local hPointer = scene.createRuntimeObject ( hScene, "test" )
    object.setRotation ( hPointer, 0, -90, 0, object.kGlobalSpace )
    object.setScale ( hPointer, 0.363, 0.001, 0.654 )
    object.setTranslation ( hPointer, 0, 0.05, -4.7, object.kGlobalSpace )
    
    --
    -- Green center
    --
    local hGreen = scene.createRuntimeObject ( hScene, "board" )
    object.setScale ( hGreen, length / 4, 0.1, length / 4)
    object.setParent ( hGreen, hBoard, true )   
    object.rotate ( hGreen, 180, 180, 0, object.kLocalSpace )
    object.setTranslation ( hGreen, 0, 2.5, 0, object.kParentSpace )
     
    shape.overrideMeshMaterialEmissive ( hGreen, 0, 0, 0, 255 )
    
    --[[
    hud.newComponent ( hUser, hud.kComponentTypeLabel, "wheel.spinValue" )
    local hComponent = hud.getComponent ( hUser, "wheel.spinValue" )
    
    hud.setLabelText ( hComponent, "15" )
    hud.setLabelTextHeight ( hComponent, 50 )
    hud.setComponentForegroundColor ( hComponent, 0, 0, 0, 255 )
    hud.setComponentBackgroundColor ( hComponent, 127, 127, 127, 255 )
    hud.setComponentBorderColor ( hComponent, 0, 0, 0, 0 )
    hud.setDefaultFont ( hUser, "DefaultFont" )
    hud.setLabelTextAlignment ( hComponent, hud.kAlignCenter, hud.kAlignCenter )
    hud.setComponentSize ( hComponent, 100, 100 )
    
    hud.setComponentOffscreenOutput ( hComponent, "spinValue" )
    shape.overrideMeshMaterialEffectMap0 ( hGreen, "spinValue", shape.kMapTypeRenderMap )
    ]]
    --
    -- Segments
    --
    for i = 0, nSegments - 1 do
        local hSlice = scene.createRuntimeObject ( hScene, "test" )
        
        -- z is vertical radius
        -- x is length
        object.setScale ( hSlice, length, 0.001, radius + nRadiusFudge )
        object.setRotation ( hSlice, 0, i * 360 / nSegments, 0, object.kGlobalSpace )
        object.setParent ( hSlice, hBoard, true )
        shape.overrideMeshMaterialEmissive ( hSlice, math.random ( 0, 0.5 ), math.random ( 0, 0.5 ), math.random ( 0, 0.5 ), 255 )
        
        -- create hud
        hud.newComponent ( hUser, hud.kComponentTypeLabel, "wheel." .. i )
        local hComponent = hud.getComponent ( hUser, "wheel." .. i )
        
        local text = "".. table.getAt ( this.tValues ( ), i )
        local newText = ""
        if(string.getLength ( text ) > 1) then
            for i = 0, string.getLength ( text ) - 1 do
                newText = newText .. string.getSubString ( text, i, 1 ) .. "\n"
            end
        else
            newText = text
        end
        
        hud.setLabelText ( hComponent, newText )
        hud.setLabelTextHeight ( hComponent, 25 )
        hud.setComponentForegroundColor ( hComponent, 0, 0, 0, 255 )
        hud.setComponentBackgroundColor ( hComponent, 127, 127, 127, 255 )
        hud.setComponentBorderColor ( hComponent, 0, 0, 0, 0 )
        hud.setDefaultFont ( hUser, "DefaultFont" )
        hud.setLabelTextAlignment ( hComponent, hud.kAlignCenter, hud.kAlignTop )
        hud.setComponentSize ( hComponent, 100, 100 )
        hud.setComponentRotation ( hComponent, 90 )
        
        -- set offscreen output to material
        hud.setComponentOffscreenOutput ( hComponent, "map" .. i )
        
        -- set pixelmap to texture
        shape.overrideMeshMaterialEffectMap0 ( hSlice, "map" .. i, shape.kMapTypeRenderMap )
    end    
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
