--------------------------------------------------------------------------------
--  Function......... : initPlayerInput
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function GameAI.initPlayerInput ( hash )
--------------------------------------------------------------------------------
	
	--Keyboard keys
	hashtable.add ( hash, "w", false )
    hashtable.add ( hash, "a", false )
    hashtable.add ( hash, "s", false )
    hashtable.add ( hash, "d", false )
    hashtable.add ( hash, "space", false )
    hashtable.add ( hash, "c", false )
    hashtable.add ( hash, "shift", false)
    hashtable.add ( hash, "x", false)
    hashtable.add ( hash, "up", false)
    hashtable.add ( hash, "down", false)
    hashtable.add ( hash, "left", false)
    hashtable.add ( hash, "right", false)
    hashtable.add ( hash, "space", false)
    hashtable.add ( hash, "esc", false)
    hashtable.add ( hash, "tab", false)
    hashtable.add ( hash, "control", false)
    
    --Xbox 360 controller
    --hashtable.add ( hash, "RT", false ) 
    --hashtable.add ( hash, "LT", false )
    hashtable.add ( hash, "start", false )
    hashtable.add ( hash, "back", false )
    hashtable.add ( hash, "leftAX", false )
    hashtable.add ( hash, "leftAY", false )
    hashtable.add ( hash, "rightAX", false ) 
    hashtable.add ( hash, "rightAY", false ) 
    hashtable.add ( hash, "LB", false )
    hashtable.add ( hash, "RB", false )
    hashtable.add ( hash, "joyA", false )
    hashtable.add ( hash, "joyB", false )
    hashtable.add ( hash, "joyX", false )
    hashtable.add ( hash, "joyY", false )
    hashtable.add ( hash, "dLeft", false )
    hashtable.add ( hash, "dRight", false )
    hashtable.add ( hash, "dUp", false )
    hashtable.add ( hash, "dDown", false )
    hashtable.add ( hash, "lStick", false )
    hashtable.add ( hash, "rStick", false )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
