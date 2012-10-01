--------------------------------------------------------------------------------
--  Function......... : getKeyLatched
--  Author........... : 
--  Description...... : Returns true if the latched key state is the state specified
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function GameAI.getKeyLatched ( nPlayer, sKey, bState )
--------------------------------------------------------------------------------
	local ht
    local htPrev
    
    if(nPlayer == 0)
    then
        ht = this.htPlayer1Keys ( )
        htPrev = this.htPlayer1LastKeys ( )
    elseif(nPlayer == 1)
    then
        ht = this.htPlayer2Keys ( )
        htPrev = this.htPlayer2LastKeys ( )
    end
    
    --Retrieve the current and previous state of the specified key
	local bCurrentState = hashtable.get ( ht, sKey )
    local bPreviousState
    if( hashtable.getSize ( htPrev ) > 0 )
    then
        bPreviousState = hashtable.get ( htPrev, sKey )
    else
        return false
    end
    
    --If the states have changed and the current state is the state specified
    if( bCurrentState ~= bPreviousState and bCurrentState == bState )
    then
        --Set the last key state to the current state, we do this because 
        --key states only change when keys are pressed and we only want this
        --state to be triggered when the state of keys changes.
        hashtable.set ( htPrev, sKey, bCurrentState )
        return true
    else
        return false
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
