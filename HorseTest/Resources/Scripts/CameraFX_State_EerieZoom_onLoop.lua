--------------------------------------------------------------------------------
--  State............ : EerieZoom
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function CameraFX.EerieZoom_onLoop ( )
--------------------------------------------------------------------------------
	
    local hCamera = application.getCurrentUserActiveCamera ( )
    local dt = application.getLastFrameTime ( )
    
    local x, y, z = object.getBoundingSphereCenter ( this.hTrackingTarget ( ) )
    local r = object.getBoundingSphereRadius ( this.hTrackingTarget ( ) )
    local cx, cy, cz = object.getTranslation ( hCamera, object.kGlobalSpace )
    
    local dx, dy, dz = math.vectorSubtract ( cx, cy, cz, x, y, z )
    dx, dy, dz = math.vectorSetLength ( dx, dy, dz, r * 2 )
    
    --local r, s, t = object.getRotation ( this.hTrackingTarget ( ), object.kGlobalSpace )
    
    
    object.translateTo ( hCamera, x + dx, y - dy, z + dz, object.kGlobalSpace, dt )
    object.lookAtWithUp ( hCamera, x, y, z, -0.2, 1, 0, object.kGlobalSpace, dt )
    --object.rotateTo ( hCamera, r, s, t, object.kGlobalSpace, application.getLastFrameTime ( ) * this.nTrackingSpeed ( ) )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
