--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function User.onInit (  )
--------------------------------------------------------------------------------
	
    hud.newTemplateInstance ( this.getUser ( ), "Instructions", "Instructions" )
    hud.newTemplateInstance ( this.getUser ( ), "Result", "Result" )
    
	application.setCurrentUserScene ( "scene" )
    application.setOption ( application.kOptionSwapInterval, 1 )
    this.hSound ( application.getCurrentUserSceneTaggedObject ( "sound" ))
    
    this.nSegments ( 20 )
    this.valuesInit ( )
    this.createWheelFromSlices ( this.nSegments ( ) )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
