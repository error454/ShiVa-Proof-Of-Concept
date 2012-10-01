--------------------------------------------------------------------------------
--  Handler.......... : onJoypadStickMove
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function GameAI.onJoypadStickMove ( nJoypad, nStick, nAxisX, nAxisY )
--------------------------------------------------------------------------------
		
    local hash
    if(nJoypad == 0)
    then
        hash = this.htPlayer1Keys ( )
    elseif(nJoypad == 1)
    then
        hash = this.htPlayer2Keys ( )
    end
    
    if(nStick == 0)
    then
        hashtable.set ( hash, "leftAX", nAxisX )
        hashtable.set ( hash, "leftAY", nAxisY )
    elseif(nStick == 1)
    then
        hashtable.set ( hash, "rightAX", nAxisX )
        hashtable.set ( hash, "rightAY", nAxisY )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
