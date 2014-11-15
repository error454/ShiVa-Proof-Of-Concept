--------------------------------------------------------------------------------
--  Handler.......... : onRegisterUserObserver
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DebugHUD.onRegisterUserObserver ( sAIModel, sVariable, sType, sTitle )
--------------------------------------------------------------------------------
	
	local t = this.tUserObservable ( )
    
    table.add ( t, sAIModel )
    table.add ( t, sVariable )
    table.add ( t, sType )
    table.add ( t, sTitle )
	
    local hContainer = this.createObserverHUD ( nil, sAIModel, sVariable, sType, sTitle )
    this.arrangeWindows ( hContainer )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
