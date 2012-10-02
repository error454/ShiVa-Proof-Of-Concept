--------------------------------------------------------------------------------
--  Handler.......... : onGetKey
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function InputAI.onGetKey ( nPlayer, sKey, bBooleanReturnType )
--------------------------------------------------------------------------------
	
    --Get the requested key and store it in the specified result object
    local vResult = this.getKey ( nPlayer, sKey )
    
    if(bBooleanReturnType)
    then    
        this.bResult ( vResult )
    else
        this.nResult ( vResult )
	end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
