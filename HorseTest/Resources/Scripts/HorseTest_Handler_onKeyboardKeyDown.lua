--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HorseTest.onKeyboardKeyDown ( kKeyCode )
--------------------------------------------------------------------------------
	
	if kKeyCode == input.kKeyLeft then
        object.sendEvent ( this.hHorse ( ), "HorseController", "onTurnLeft", true)
    elseif kKeyCode == input.kKeyRight then
        object.sendEvent ( this.hHorse ( ), "HorseController", "onTurnRight", true )
    elseif kKeyCode == input.kKeyUp then
        this.bVelocityIncrease ( true )
    elseif kKeyCode == input.kKeyDown then
        this.bVelocityDecrease ( true )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
