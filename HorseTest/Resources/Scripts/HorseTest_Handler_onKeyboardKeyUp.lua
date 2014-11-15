--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyUp
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HorseTest.onKeyboardKeyUp ( kKeyCode )
--------------------------------------------------------------------------------
	
    if kKeyCode == input.kKeyLeft then
        object.sendEvent ( this.hHorse ( ), "HorseController", "onTurnLeft", false )
    elseif kKeyCode == input.kKeyRight then
        object.sendEvent ( this.hHorse ( ), "HorseController", "onTurnRight", false )
    elseif kKeyCode == input.kKeyUp then
        this.bVelocityIncrease ( false )
    elseif kKeyCode == input.kKeyDown then
        this.bVelocityDecrease ( false )
    end
    
    --[[
	if kKeyCode == input.kKey1 then
        object.sendEvent ( this.hHorse ( ), "HorseController", "onIdle" )
	elseif kKeyCode == input.kKey2 then
        object.sendEvent ( this.hHorse ( ), "HorseController", "onWalk" )
	elseif kKeyCode == input.kKey3 then
        object.sendEvent ( this.hHorse ( ), "HorseController", "onRun" )
    else
    elseif kKeyCode == input.kKey4 then
        application.setCurrentUserActiveCamera ( application.getCurrentUserSceneTaggedObject ( "HorseCamera" ) )
    elseif kKeyCode == input.kKey5 then
        application.setCurrentUserActiveCamera ( application.getCurrentUserSceneTaggedObject ( "defaultCamera" ) )
    elseif kKeyCode == input.kKey7 then
        this.nVelocity ( this.nVelocity ( ) - 1 )
        object.sendEvent ( this.hHorse ( ), "HorseController", "onSetVelocity", this.nVelocity ( ) )
        log.message ( "Velocity: ", this.nVelocity ( ) )
    elseif kKeyCode == input.kKey8 then
        this.nVelocity ( this.nVelocity ( ) + 1 )
        object.sendEvent ( this.hHorse ( ), "HorseController", "onSetVelocity", this.nVelocity ( ) )
        log.message ( "Velocity: ", this.nVelocity ( ) )
    end
    ]]
        --[[
    elseif kKeyCode == input.kKey9 then
        local nSpeed = animation.getPlaybackSpeed ( this.hHorse ( ), 2 )
        animation.setPlaybackSpeed ( this.hHorse ( ), 2, nSpeed - 1 )
        log.message ( "Speed: ", (nSpeed - 1) )
    elseif kKeyCode == input.kKey0 then
        local nSpeed = animation.getPlaybackSpeed ( this.hHorse ( ), 2 )
        animation.setPlaybackSpeed ( this.hHorse ( ), 2, nSpeed + 1 )
        log.message ( "Speed: ", (nSpeed + 1) )
    end
    ]]
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
