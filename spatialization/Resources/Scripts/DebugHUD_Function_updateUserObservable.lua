--------------------------------------------------------------------------------
--  Function......... : updateUserObservable
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DebugHUD.updateUserObservable ( sAIModel, sVariable, sType, sTitle )
--------------------------------------------------------------------------------
	
    local hUser = this.getUser ( )
	local hLabel = hud.getComponent ( hUser, this.sHUDPrefix ( ) .. "." .. sTitle .. ".Label" )
    
    local vValue = user.getAIVariable ( hUser, sAIModel, sVariable )
    
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
