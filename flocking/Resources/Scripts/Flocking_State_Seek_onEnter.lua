--------------------------------------------------------------------------------
--  State............ : Seek
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Flocking.Seek_onEnter ( )
--------------------------------------------------------------------------------
	
	application.setCurrentUserScene ( "scene" )
    local hScene = application.getCurrentUserScene ( )
    
    local hTarget = scene.createRuntimeObject ( hScene, "Target" )
    local hVehicle = scene.createRuntimeObject ( hScene, "Vehicle" )
    
    this.hTarget ( hTarget )
    
    scene.sendEventToAllObjects ( hScene, "Vehicle", "onSetTarget", hTarget )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
