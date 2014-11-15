--------------------------------------------------------------------------------
--  Function......... : updateModifiable
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DebugHUD.updateModifiable ( hObject, sAIModel, sVariable, sTitle )
--------------------------------------------------------------------------------
	
    local hUser = this.getUser ( )
	local hTitle = hud.getComponent ( hUser, this.sHUDPrefix ( ) .. "." .. sTitle .. ".Title" )
    local hValue = hud.getComponent ( hUser, this.sHUDPrefix ( ) .. "." .. sTitle .. ".Value" )
    
    local vValue = object.getAIVariable ( hObject, sAIModel, sVariable )
    if(vValue) then
        hud.setLabelText ( hValue, "" .. vValue )
        hud.setLabelText ( hTitle, sTitle )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
