--------------------------------------------------------------------------------
--  Handler.......... : onJoypadButtonUp
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function GameAI.onJoypadButtonUp ( nJoypad, nButton )
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
    
    if    (nButton == 0)  then hashtable.set ( hash, "joyA", false ) 
    elseif(nButton == 1)  then hashtable.set ( hash, "joyB", false )
    elseif(nButton == 2)  then hashtable.set ( hash, "joyX", false )
    elseif(nButton == 3)  then hashtable.set ( hash, "joyY", false )
    elseif(nButton == 4)  then hashtable.set ( hash, "LB", false )
    elseif(nButton == 5)  then hashtable.set ( hash, "RB", false )
    elseif(nButton == 6)  then hashtable.set ( hash, "back", false )
    elseif(nButton == 7)  then hashtable.set ( hash, "start", false )
    elseif(nButton == 8)  then hashtable.set ( hash, "lStick", false )
    elseif(nButton == 9)  then hashtable.set ( hash, "rStick", false )
    elseif(nButton == 28) then hashtable.set ( hash, "dUp", false )
    elseif(nButton == 29) then hashtable.set ( hash, "dDown", false )
    elseif(nButton == 30) then hashtable.set ( hash, "dLeft", false )
    elseif(nButton == 31) then hashtable.set ( hash, "dRight", false )end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
