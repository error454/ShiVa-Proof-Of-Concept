--------------------------------------------------------------------------------
--  Handler.......... : onModifierChange
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DebugHUD.onModifierChange ( bIncrease, sTitle, sAIModel, sVariable, nMin, nMax, nIncrement )
--------------------------------------------------------------------------------
	
    local hObject = hashtable.get ( this.htModifierObject ( ), sTitle )
    
    --
    -- Get the variable associated with this button
    --
    local nVar = object.getAIVariable ( hObject, sAIModel, sVariable )
    
    if(bIncrease) then
        nVar = math.min ( nMax, nVar + nIncrement )
    else
        nVar = math.max ( nMin, nVar - nIncrement )
    end
    
    --
    -- Change the variable
    --
    object.setAIVariable ( hObject, sAIModel, sVariable, nVar )
    
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
