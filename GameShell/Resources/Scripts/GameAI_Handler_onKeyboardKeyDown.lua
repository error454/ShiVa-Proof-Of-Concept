--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function GameAI.onKeyboardKeyDown ( kKeyCode )
--------------------------------------------------------------------------------
	
	hashtable.copy ( this.htPlayer1LastKeys ( ), this.htPlayer1Keys ( ) )
	if( kKeyCode == input.kKeyW )           then this.setKey ( "w", true ) end
    if( kKeyCode == input.kKeyA )           then this.setKey ( "a", true ) end
    if( kKeyCode == input.kKeyS )           then this.setKey ( "s", true ) end
    if( kKeyCode == input.kKeyD )           then this.setKey ( "d", true ) end
    if( kKeyCode == input.kKeySpace )       then this.setKey ( "space", true ) end
    if( kKeyCode == input.kKeyC )           then this.setKey ( "c", true ) end
    if( kKeyCode == input.kKeyX )           then this.setKey ( "x", true ) end
    if( kKeyCode == input.kKeyUp )          then this.setKey ( "up", true ) end
    if( kKeyCode == input.kKeyDown )        then this.setKey ( "down", true ) end
    if( kKeyCode == input.kKeyLeft )        then this.setKey ( "left", true ) end
    if( kKeyCode == input.kKeyRight )       then this.setKey ( "right", true ) end
    if( kKeyCode == input.kKeySpace )       then this.setKey ( "space", true ) end
    if( kKeyCode == input.kKeyEscape )      then this.setKey ( "esc", true ) end
    if( kKeyCode == input.kKeyTab )         then this.setKey ( "tab", true ) end
    if( kKeyCode == input.kKeyLControl )    then this.setKey ( "control", true ) end
    if( kKeyCode == input.kKeyLShift )      then this.setKey ( "shift", true ) end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
