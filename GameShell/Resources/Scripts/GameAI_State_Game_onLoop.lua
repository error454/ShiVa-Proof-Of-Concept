--------------------------------------------------------------------------------
--  State............ : Game
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function GameAI.Game_onLoop ( )
--------------------------------------------------------------------------------
	
	if(this.getKeyLatched ( 0, "esc", true, true ) or this.getKeyLatched ( 0, "start", true, true))
    then    
        this.Pause ( )
    end
    
    --[[
    --example of sending  joystick input to an object
    local leftAX = this.getKey ( 0, "leftAX", false )
    local leftAY = this.getKey ( 0, "leftAY", false )
    local LB = this.getKey ( 0, "LB", true )
    local RB = this.getKey ( 0, "RB", true )
    
    object.sendEvent ( this.hShip ( ), "shipAI", "onUpdateControls", leftAX, leftAY, LB, RB )
    ]]
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
