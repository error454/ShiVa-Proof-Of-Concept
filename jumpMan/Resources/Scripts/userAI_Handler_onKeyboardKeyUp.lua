--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyUp
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function userAI.onKeyboardKeyUp ( kKeyCode )
--------------------------------------------------------------------------------
	
	if(kKeyCode == input.kKeyRight)
    then
        object.sendEvent ( this.hPlayer ( ), "jumpManAI", "onMoveRight", false )
        local hRight = hud.getComponent ( this.getUser ( ), "hud.rightStatus" )
        hud.setComponentBackgroundColor ( hRight, 0, 127, 0, 0 )
    elseif(kKeyCode == input.kKeyLeft)
    then
        object.sendEvent ( this.hPlayer ( ), "jumpManAI", "onMoveLeft", false )
        local hLeft = hud.getComponent ( this.getUser ( ), "hud.leftStatus" )
        hud.setComponentBackgroundColor ( hLeft, 0, 127, 0, 0 )
    end
    
    if(kKeyCode == input.kKeySpace)
    then
        object.sendEvent ( this.hPlayer ( ), "jumpManAI", "onJump", false )
        local hJump = hud.getComponent ( this.getUser ( ), "hud.jumpStatus" )
        hud.setComponentBackgroundColor ( hJump, 0, 127, 0, 0 )
    end
    	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
