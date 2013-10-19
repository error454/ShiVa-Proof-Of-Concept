--------------------------------------------------------------------------------
--  Function......... : hudInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HudInterpolation.hudInit ( )
--------------------------------------------------------------------------------
	
    local hUser = this.getUser ( )
    hud.setDefaultFont ( hUser, "DefaultFont" )
    
    local nInterpolators = hashtable.getSize ( this.htInterpolators ( ) )
    
    --
    -- Layout constants
    --
    local buttonsPerRow = 5
    local horizontalSpacing = 2
    local verticalSpacing = 3
    local buttonHeight = 100 / math.ceil( nInterpolators / buttonsPerRow ) - verticalSpacing
    local buttonWidth = (100 / buttonsPerRow ) - horizontalSpacing 
    
    for i = 0, nInterpolators - 1 do
    
        --
        -- Create label
        --
        local tag = "label" .. i
        hud.newComponent ( hUser, hud.kComponentTypeLabel, tag )
        local hLabel = hud.getComponent ( hUser, tag )
        
        --
        -- Size and Position label
        --
        hud.setComponentSize ( hLabel, buttonWidth, buttonHeight )
        hud.setComponentOrigin ( hLabel, hud.kOriginTopLeft )
        
        local x = math.mod ( i, buttonsPerRow ) * ( horizontalSpacing + buttonWidth ) + horizontalSpacing * 0.5
        local y = 100 - math.floor ( i / buttonsPerRow ) * ( verticalSpacing + buttonHeight ) - verticalSpacing * 0.5
        hud.setComponentPosition ( hLabel, x, y )
        
        --
        -- Set label text
        --
        hud.setLabelText ( hLabel, hashtable.getKeyAt ( this.htInterpolators ( ), i ) )
        hud.setLabelTextAlignment ( hLabel, hud.kAlignCenter, hud.kAlignCenter )
        hud.setLabelTextHeight ( hLabel, 25 )
        
        --
        -- Create actions
        --
        local hAction = hud.newAction ( hUser, "action" .. i )
        
        hud.beginActionCommand ( hAction, hud.kCommandTypeSetSize )
            hud.pushActionCommandArgument ( hAction, hLabel )
            hud.pushActionCommandArgument ( hAction, 0 )
            hud.pushActionCommandArgument ( hAction, 0 )
        hud.endActionCommand ( hAction )
        
        hud.beginActionCommand ( hAction, hud.kCommandTypeInterpolateSize )
            hud.pushActionCommandArgument ( hAction, hLabel )
            hud.pushActionCommandArgument ( hAction, buttonWidth )
            hud.pushActionCommandArgument ( hAction, buttonHeight )
            hud.pushActionCommandArgument ( hAction, hashtable.getAt ( this.htInterpolators ( ), i ) )
            hud.pushActionCommandRuntimeArgument ( hAction, hud.kRuntimeValueCallArgument0 )
        hud.endActionCommand ( hAction )
	end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
