--------------------------------------------------------------------------------
--  State............ : FollowObjectVelocityZoom
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function CameraFX.FollowObjectVelocityZoom_onLoop ( )
--------------------------------------------------------------------------------
	
	local dt = application.getLastFrameTime ( )
	local x, y, z = object.getTranslation ( this.hTrackingTarget ( ), object.kGlobalSpace )
    local speed = dynamics.getLinearSpeed ( this.hTrackingTarget ( ) )
    local vx, vy, vz = dynamics.getLinearVelocity ( this.hTrackingTarget ( ), object.kGlobalSpace )
    local radius = object.getBoundingSphereRadius ( this.hTrackingTarget ( ) )
    z = 20 + radius + speed * 0.5
    if vy < 0 then
        y = y + vy * 0.7
    elseif vy > 0 then
        y = y + vy
    end
    object.translateTo ( application.getCurrentUserActiveCamera ( ), x + vx, y, z, object.kGlobalSpace, dt * this.nTrackingSpeed ( ))
    --object.rotateTo ( application.getCurrentUserActiveCamera ( ), 0, 0, 0, object.kGlobalSpace, dt * this.nTrackingSpeed ( ) )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
