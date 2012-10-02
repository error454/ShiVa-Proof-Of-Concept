--------------------------------------------------------------------------------
--  Function......... : getKeyLatched
--  Author........... : 
--  Description...... : Returns true if the latched key state is the state specified
--                      nPlayer - the player number (starts from 0)
--                      sKey - the key to look up
--                      bState - the state to latch, true means latch on true meaning this function will only
--                               return true when the key has gone through a false->true transition
--                      bBooleanReturnType - true if the return type you are expecting is a boolean, false otherwise.
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function GameAI.getKeyLatched ( nPlayer, sKey, bState, bBooleanReturnType )
--------------------------------------------------------------------------------
	
    user.sendEventImmediate ( this.getUser ( ), "InputAI", "onGetKeyLatched", nPlayer, sKey, bState, bBooleanReturnType )
    return this.getInputAIReturnValue ( bBooleanReturnType )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
