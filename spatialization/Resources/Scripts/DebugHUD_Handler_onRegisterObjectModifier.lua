--------------------------------------------------------------------------------
--  Handler.......... : onRegisterObjectModifier
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DebugHUD.onRegisterObjectModifier ( hObject, sAIModel, sVariable, sTitle, nMin, nMax, nIncrement )
--------------------------------------------------------------------------------
	
	local t = this.tObjectModifier ( )
    
    table.add ( t, hObject )
    table.add ( t, sAIModel )
    table.add ( t, sVariable )
    table.add ( t, sTitle )
	
    local hContainer = this.createModifierHUD ( hObject, sAIModel, sVariable, sTitle, nMin, nMax, nIncrement )
    this.arrangeWindows ( hContainer )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
