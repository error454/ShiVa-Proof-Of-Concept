--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyUp
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function InputAI.onKeyboardKeyUp ( kKeyCode )
--------------------------------------------------------------------------------
	
	hashtable.copy ( this.htPlayer1LastKeys ( ), this.htPlayer1Keys ( ) )
	if( kKeyCode == input.kKeyW )           then this.setKey ( "w", false ) end
    if( kKeyCode == input.kKeyA )           then this.setKey ( "a", false ) end
    if( kKeyCode == input.kKeyS )           then this.setKey ( "s", false ) end
    if( kKeyCode == input.kKeyD )           then this.setKey ( "d", false ) end
    if( kKeyCode == input.kKeySpace )       then this.setKey ( "space", false ) end
    if( kKeyCode == input.kKeyC )           then this.setKey ( "c", false ) end
    if( kKeyCode == input.kKeyX )           then this.setKey ( "x", false ) end
    if( kKeyCode == input.kKeyUp )          then this.setKey ( "up", false ) end
    if( kKeyCode == input.kKeyDown )        then this.setKey ( "down", false ) end
    if( kKeyCode == input.kKeyLeft )        then this.setKey ( "left", false ) end
    if( kKeyCode == input.kKeyRight )       then this.setKey ( "right", false ) end
    if( kKeyCode == input.kKeySpace )       then this.setKey ( "space", false ) end
    if( kKeyCode == input.kKeyEscape )      then this.setKey ( "esc", false) end
    if( kKeyCode == input.kKeyTab )         then this.setKey ( "tab", false ) end
    if( kKeyCode == input.kKeyLControl )    then this.setKey ( "control", false ) end
	if( kKeyCode == input.kKeyLShift )      then this.setKey ( "shift", false ) end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
