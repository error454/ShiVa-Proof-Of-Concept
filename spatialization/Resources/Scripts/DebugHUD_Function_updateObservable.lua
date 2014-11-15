--------------------------------------------------------------------------------
--  Function......... : updateObservable
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DebugHUD.updateObservable ( hObject, sAIModel, sVariable, sType, sTitle )
--------------------------------------------------------------------------------
	
    local hUser = this.getUser ( )
	local hLabel = hud.getComponent ( hUser, this.sHUDPrefix ( ) .. "." .. sTitle .. ".Label" )
    
    if(not hObject) then return 0 end
    
    local vValue = object.getAIVariable ( hObject, sAIModel, sVariable )
    
    if(sType == "b") then
        if(vValue) then
            hud.setComponentBackgroundColor ( hLabel, 0, 127, 0, 255 )
        else
            hud.setComponentBackgroundColor ( hLabel, 127, 0, 0, 255 )
        end
    elseif(sType == "n") then
        hud.setLabelText ( hLabel, sTitle .. ": " .. vValue )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
