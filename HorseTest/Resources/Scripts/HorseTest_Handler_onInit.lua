--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HorseTest.onInit (  )
--------------------------------------------------------------------------------
	
    application.setCurrentUserScene ( "scene" )
    
	this.hHorse ( scene.createRuntimeObject ( application.getCurrentUserScene ( ), "Horse" ) )
    object.setTranslation ( this.hHorse ( ), 0, 5, 0, object.kGlobalSpace )
    
    scene.setTerrainLODSwitchThreshold ( application.getCurrentUserScene ( ), 0 )
    
    --user.sendEvent ( this.getUser ( ), "CameraFX", "onFollowObject", this.hHorse ( ), 5 )
    
    hud.newTemplateInstance ( this.getUser ( ), "HorseDebug", "Horse" )
    
    application.setOption ( application.kOptionDynamicShadowsQuality, 4 )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
