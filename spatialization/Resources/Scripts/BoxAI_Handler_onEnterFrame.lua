--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function BoxAI.onEnterFrame (  )
--------------------------------------------------------------------------------
	
	sound.setSpatializationReferenceDistance ( this.getObject ( ), this.nAudioDistance ( ) )
    sound.setSpatializationRolloffFactor ( this.getObject ( ), this.nAudioRolloff ( ) )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
