--------------------------------------------------------------------------------
--  Function......... : getKey
--  Author........... : 
--  Description...... : Get the state of a given key
--                      nPlayer - the player number (starts from 0)
--                      sKey - the key to look up
--                      bBooleanReturnType - true if the return type you are expecting is a boolean, false otherwise.
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function GameAI.getKey ( nPlayer, sKey, bBooleanReturnType )
--------------------------------------------------------------------------------
	
    user.sendEventImmediate ( this.getUser ( ), "InputAI", "onGetKey", nPlayer, sKey, bBooleanReturnType )
    return this.getInputAIReturnValue ( bBooleanReturnType )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
