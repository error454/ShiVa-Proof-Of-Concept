--------------------------------------------------------------------------------
--  Function......... : getInputAIReturnValue
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function GameAI.getInputAIReturnValue ( bBooleanReturnType )
--------------------------------------------------------------------------------
	
	--This is where things get kind of ugly and we have to break object encapsulation. 
    --sendEventImmediate doesn't return a value, so we call the event and then grab 
    --the value directly from the InputAI, hence the purpose of bBooleanReturnType.
    if(bBooleanReturnType)
    then
        return user.getAIVariable ( this.getUser ( ), "InputAI", "bResult" )
    else
        return user.getAIVariable ( this.getUser ( ), "InputAI", "nResult" )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
