--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function CameraFX.onEnterFrame (  )
--------------------------------------------------------------------------------
	
    if(this.bShake ( )) then
        
        local hCamera = application.getCurrentUserActiveCamera ( )
        local t = application.getTotalFrameTime ( )
        local dt = application.getLastFrameTime ( )
        local x, y, z = object.getTranslation ( hCamera, object.kGlobalSpace )
        
        -- this is a good frequency, that is adjusted down as the timer runs out
        local factor = t * 1500 - this.nShakeTimer ( )
        
        -- adjust amplitude based on magnitude
        --local amplitude = math.interpolate ( 0.05, 0.2, (this.nShakeMagnitude ( ) - 4) / 8)
        local amplitude = math.interpolate ( this.nShakeMagnitude ( ), this.nShakeMagnitude ( ) * 0.01, 1.5 - this.nShakeTimer ( ))
        object.setTranslation ( hCamera, x + math.sin ( factor ) * amplitude, y + math.cos(factor * 1.1) * amplitude, z, object.kGlobalSpace )
        
        this.nShakeTimer ( this.nShakeTimer ( ) - dt )
        if(this.nShakeTimer ( ) < 0) then
            this.bShake ( false )
        end
	end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
