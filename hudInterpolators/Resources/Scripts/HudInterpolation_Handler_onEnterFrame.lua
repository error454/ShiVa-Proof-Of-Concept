--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HudInterpolation.onEnterFrame (  )
--------------------------------------------------------------------------------
	
    --
    -- Handle up/down arrows
    --
    if(this.bUp ( )) then
        local newValue = math.roundToNearestInteger ( this.nHudTime ( ) + application.getLastFrameTime ( ) * 1000 )
        newValue = math.max ( 0, newValue )
        this.nHudTime ( newValue )
    elseif(this.bDown ( )) then
        local newValue = math.roundToNearestInteger ( this.nHudTime ( ) - application.getLastFrameTime ( ) * 1000 )
        newValue = math.max ( 0, newValue )
        this.nHudTime ( newValue )
    end
    
	--
    -- Update HUD
    --
    local hDelay = hud.getComponent ( this.getUser ( ), "Instructions.Delay" )
    hud.setLabelText ( hDelay, "" .. this.nHudTime ( ) )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
