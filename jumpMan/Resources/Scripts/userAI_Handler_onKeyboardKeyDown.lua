--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function userAI.onKeyboardKeyDown ( kKeyCode )
--------------------------------------------------------------------------------
	
    --Send the button state to the jumpManAI and set the debug HUD to green
    
	if(kKeyCode == input.kKeyRight)
    then
        object.sendEvent ( this.hPlayer ( ), "jumpManAI", "onMoveRight", true )
        local hRight = hud.getComponent ( this.getUser ( ), "hud.rightStatus" )
        hud.setComponentBackgroundColor ( hRight, 0, 127, 0, 255 )
    elseif(kKeyCode == input.kKeyLeft)
    then
        object.sendEvent ( this.hPlayer ( ), "jumpManAI", "onMoveLeft", true )
        local hLeft = hud.getComponent ( this.getUser ( ), "hud.leftStatus" )
        hud.setComponentBackgroundColor ( hLeft, 0, 127, 0, 255 )
    elseif(kKeyCode == input.kKeySpace)
    then
        object.sendEvent ( this.hPlayer ( ), "jumpManAI", "onJump", true )
        local hJump = hud.getComponent ( this.getUser ( ), "hud.jumpStatus" )
        hud.setComponentBackgroundColor ( hJump, 0, 127, 0, 255 )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
