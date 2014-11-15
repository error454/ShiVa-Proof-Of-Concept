--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Pong.onInit (  )
--------------------------------------------------------------------------------
	
    -- Load Scene
	application.setCurrentUserScene ( "Pong" )
    
    -- Set Camera
    local hCamera = application.getCurrentUserSceneTaggedObject ( "GameCamera" )
    application.setCurrentUserActiveCamera ( hCamera )
	
    -- Create Players
    local hScene = application.getCurrentUserScene ( )
    for i = 1, 2 do
        local hPlayerStart = application.getCurrentUserSceneTaggedObject ( "Player" .. i .. "Start")
        local hPlayer = scene.createRuntimeObject ( hScene, "Paddle" )
        object.matchTranslation ( hPlayer, hPlayerStart, object.kGlobalSpace )
        scene.setObjectTag ( hScene, hPlayer, "Player" .. i )
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
