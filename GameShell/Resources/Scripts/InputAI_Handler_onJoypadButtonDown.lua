--------------------------------------------------------------------------------
--  Handler.......... : onJoypadButtonDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function InputAI.onJoypadButtonDown ( nJoypad, nButton )
--------------------------------------------------------------------------------
	
	local hash
    if(nJoypad == 0)
    then
        hash = this.htPlayer1Keys ( )
        hashtable.copy ( this.htPlayer1LastKeys ( ), this.htPlayer1Keys ( ) )
    elseif(nJoypad == 1)
    then
        hash = this.htPlayer2Keys ( )
        hashtable.copy ( this.htPlayer2LastKeys ( ), this.htPlayer2Keys ( ) )
    end
    
    if    (nButton == 0)  then hashtable.set ( hash, "joyA", true ) 
    elseif(nButton == 1)  then hashtable.set ( hash, "joyB", true )
    elseif(nButton == 2)  then hashtable.set ( hash, "joyX", true )
    elseif(nButton == 3)  then hashtable.set ( hash, "joyY", true )
    elseif(nButton == 4)  then hashtable.set ( hash, "LB", true )
    elseif(nButton == 5)  then hashtable.set ( hash, "RB", true )
    elseif(nButton == 6)  then hashtable.set ( hash, "back", true )
    elseif(nButton == 7)  then hashtable.set ( hash, "start", true )
    elseif(nButton == 8)  then hashtable.set ( hash, "lStick", true )
    elseif(nButton == 9)  then hashtable.set ( hash, "rStick", true )
    elseif(nButton == 28) then hashtable.set ( hash, "dUp", true )
    elseif(nButton == 29) then hashtable.set ( hash, "dDown", true )
    elseif(nButton == 30) then hashtable.set ( hash, "dLeft", true )
    elseif(nButton == 31) then hashtable.set ( hash, "dRight", true )end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
