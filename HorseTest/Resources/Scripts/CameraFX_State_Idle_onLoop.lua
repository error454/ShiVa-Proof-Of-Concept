--------------------------------------------------------------------------------
--  State............ : Idle
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function CameraFX.Idle_onLoop ( )
--------------------------------------------------------------------------------

    --[[
    if(this.hCurrentCamera ( )) then
        local x, y, z = object.getTranslation ( this.hCurrentCamera ( ), object.kGlobalSpace )
        local r, s, t = object.getRotation ( this.hCurrentCamera ( ), object.kGlobalSpace )
        
        local hCamera = application.getCurrentUserActiveCamera ( )
        object.translateTo ( hCamera, x, y, z, object.kGlobalSpace, application.getLastFrameTime ( ) * this.nTrackingSpeed ( ) )
        object.rotateTo ( hCamera, r, s, t, object.kGlobalSpace, application.getLastFrameTime ( ) * this.nTrackingSpeed ( ) )
    end
    ]]
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
