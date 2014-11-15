--------------------------------------------------------------------------------
--  Function......... : createModifierHUD
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DebugHUD.createModifierHUD ( hObject, sAIModel, sVariable, sTitle, nMin, nMax, nIncrement )
--------------------------------------------------------------------------------
	
    hashtable.add ( this.htModifierObject ( ), sTitle, hObject)
    
    local hUser = this.getUser ( )
    local prefix = this.sHUDPrefix ( ) .. "." .. sTitle
	hud.newTemplateInstance ( hUser, "DebugHUDModifier",  prefix )
    
    local hContainer = hud.getComponent ( hUser, prefix .. ".Container" )
	local hTitle = hud.getComponent ( hUser, prefix .. ".Title" )
    local hLess = hud.getComponent ( hUser, prefix .. ".Less" )
    local hMore = hud.getComponent ( hUser, prefix .. ".More" )
    hud.setLabelText ( hTitle, sTitle )
    
    --
    -- Create button actions
    -- 
    local hActionLess = hud.newAction ( hUser, prefix .. ".Less" )
    hud.beginActionCommand ( hActionLess, hud.kCommandTypeSendEventToUser )
    hud.pushActionCommandRuntimeArgument ( hActionLess, hud.kRuntimeValueCurrentUser )
    hud.pushActionCommandArgument ( hActionLess, "DebugHUD" )
    hud.pushActionCommandArgument ( hActionLess, "onModifierChange" )
    hud.pushActionCommandArgument ( hActionLess, false )
    hud.pushActionCommandArgument ( hActionLess, sTitle )
    hud.pushActionCommandArgument ( hActionLess, sAIModel )
    hud.pushActionCommandArgument ( hActionLess, sVariable )
    hud.pushActionCommandArgument ( hActionLess, nMin )
    hud.pushActionCommandArgument ( hActionLess, nMax )
    hud.pushActionCommandArgument ( hActionLess, nIncrement )
    hud.endActionCommand ( hActionLess )
    
    local hActionMore = hud.newAction ( hUser, prefix .. ".More" )
    hud.beginActionCommand ( hActionMore, hud.kCommandTypeSendEventToUser )
    hud.pushActionCommandRuntimeArgument ( hActionMore, hud.kRuntimeValueCurrentUser )
    hud.pushActionCommandArgument ( hActionMore, "DebugHUD" )
    hud.pushActionCommandArgument ( hActionMore, "onModifierChange" )
    hud.pushActionCommandArgument ( hActionMore, true )
    hud.pushActionCommandArgument ( hActionMore, sTitle )
    hud.pushActionCommandArgument ( hActionMore, sAIModel )
    hud.pushActionCommandArgument ( hActionMore, sVariable )
    hud.pushActionCommandArgument ( hActionMore, nMin )
    hud.pushActionCommandArgument ( hActionMore, nMax )
    hud.pushActionCommandArgument ( hActionMore, nIncrement )
    hud.endActionCommand ( hActionMore )
    
    hud.setButtonOnClickAction ( hMore, hActionMore )
    hud.setButtonOnClickAction ( hLess, hActionLess )
    
    return hContainer
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
