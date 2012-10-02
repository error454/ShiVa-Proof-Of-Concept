--------------------------------------------------------------------------------
--  Handler.......... : onGetKeyLatched
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function InputAI.onGetKeyLatched ( nPlayer, sKey, bState, bBooleanReturnType )
--------------------------------------------------------------------------------
	
    --Get the requested key and store it in the specified result object
	local vResult = this.getKeyLatched ( nPlayer, sKey, bState )
	
    if(bBooleanReturnType)
    then    
        this.bResult ( vResult )
    else
        this.nResult ( vResult )
	end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
