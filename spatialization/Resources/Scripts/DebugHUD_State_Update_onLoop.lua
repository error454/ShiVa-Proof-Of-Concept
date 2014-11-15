--------------------------------------------------------------------------------
--  State............ : Update
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DebugHUD.Update_onLoop ( )
--------------------------------------------------------------------------------
	
	for i = 0, table.getSize ( this.tObjectObserver ( ) ) - 1, 5 do
        local hObject, sAIModel, sVariable, sType, sTitle = table.getRangeAt ( this.tObjectObserver ( ), i, 5 )
        this.updateObservable ( hObject, sAIModel, sVariable, sType, sTitle )
    end
    
    for i = 0, table.getSize ( this.tUserObservable ( ) ) - 1, 4 do
        local sAIModel, sVariable, sType, sTitle = table.getRangeAt ( this.tUserObservable ( ), i, 4 )
        this.updateUserObservable ( sAIModel, sVariable, sType, sTitle )
    end
    
    for i = 0, table.getSize ( this.tObjectModifier ( ) ) - 1, this.kModifierCount ( ) do
        local hObject, sAIModel, sVariable, sTitle = table.getRangeAt ( this.tObjectModifier ( ), i, this.kModifierCount ( ) )
        this.updateModifiable ( hObject, sAIModel, sVariable, sTitle )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
