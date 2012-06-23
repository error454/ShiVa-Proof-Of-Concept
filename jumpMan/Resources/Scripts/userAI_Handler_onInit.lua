--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function userAI.onInit (  )
--------------------------------------------------------------------------------
	
	application.setCurrentUserScene ( "level1" )
    
    --create HUD
    hud.newTemplateInstance ( this.getUser ( ), "debugHUD", "hud" )
    
    --Create and store the player
	this.hPlayer ( scene.createRuntimeObject ( application.getCurrentUserScene ( ), "player" ) )
    
    object.setTranslation ( this.hPlayer ( ), 0, 1, 0, object.kGlobalSpace )
    
    --set physics parameters, these were set experimentally to get rid of the bounce
    --on the character when falling from a high distance
    scene.setDynamicsTimeStep ( application.getCurrentUserScene ( ), 1/200 )
    scene.setDynamicsIterationsPerStep ( application.getCurrentUserScene ( ), 9 )
    
    application.setMinFrameTime ( 1 / 60 )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
