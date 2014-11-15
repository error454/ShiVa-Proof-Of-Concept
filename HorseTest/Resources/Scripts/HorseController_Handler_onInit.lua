--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HorseController.onInit (  )
--------------------------------------------------------------------------------
	
    local o = this.getObject ( )
	animation.setCurrentClip ( o, 0, 0 )
	animation.setCurrentClip ( o, 1, 1 )
	animation.setCurrentClip ( o, 2, 2 )
    
    animation.setPlaybackLevel ( o, 0, 1 )
    animation.setPlaybackLevel ( o, 1, 0 )
    animation.setPlaybackLevel ( o, 2, 0 )
	
    local hCam = application.getCurrentUserSceneTaggedObject ( "HorseCamera" )
    if hCam then
        this.hHorseCam ( hCam )
    end
    
    this.jiggleInit ( )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
