--------------------------------------------------------------------------------
--  Handler.......... : onRegisterObjectObserver
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DebugHUD.onRegisterObjectObserver ( hObject, sAIModel, sVariable, sType, sTitle )
--------------------------------------------------------------------------------
	
	local t = this.tObjectObserver ( )
    
    table.add ( t, hObject )
    table.add ( t, sAIModel )
    table.add ( t, sVariable )
    table.add ( t, sType )
    table.add ( t, sTitle )
	
    local hContainer = this.createObserverHUD ( hObject, sAIModel, sVariable, sType, sTitle )
    this.arrangeWindows ( hContainer )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
