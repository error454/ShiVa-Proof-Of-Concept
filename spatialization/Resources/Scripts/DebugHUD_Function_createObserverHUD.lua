--------------------------------------------------------------------------------
--  Function......... : createObserverHUD
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DebugHUD.createObserverHUD ( hObject, sAIModel, sVariable, sType, sTitle )
--------------------------------------------------------------------------------
	
    local hUser = this.getUser ( )
    local prefix = this.sHUDPrefix ( ) .. "." .. sTitle
	hud.newTemplateInstance ( hUser, "DebugHUDObserver",  prefix )
    local hContainer = hud.getComponent ( hUser, prefix .. ".Container" )
	local hLabel = hud.getComponent ( hUser, prefix .. ".Label" )
    
    hud.setLabelText ( hLabel, sTitle )
    
    return hContainer
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
