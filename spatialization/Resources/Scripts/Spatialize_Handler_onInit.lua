--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Spatialize.onInit (  )
--------------------------------------------------------------------------------
	
	application.setCurrentUserScene ( "scene" )
    this.hBox ( scene.createRuntimeObject ( application.getCurrentUserScene ( ), "box" ) )
    object.setTranslation ( this.hBox ( ), 10, 0, 0, object.kGlobalSpace )
	
    user.sendEvent ( this.getUser ( ), "DebugHUD", "onRegisterObjectModifier", this.hBox( ), "BoxAI", "nAudioDistance", "Audio Distance", 0, 30, 0.5 )
    user.sendEvent ( this.getUser ( ), "DebugHUD", "onRegisterObjectModifier", this.hBox( ), "BoxAI", "nAudioRolloff", "Audio Rolloff", 0, 30, 0.5 )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
