--------------------------------------------------------------------------------
--  Function......... : updateDebugStates
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function jumpManAI.updateDebugStates ( )
--------------------------------------------------------------------------------
	local hUser = application.getCurrentUser ( )
	local hFalling = hud.getComponent ( hUser , "hud.fallingStatus" )
    local hJumping = hud.getComponent ( hUser, "hud.jumpingStatus" )
    local hGravity = hud.getComponent ( hUser, "hud.gravityValue" )
    local hJumpImpulse = hud.getComponent ( hUser, "hud.jumpImpulseValue" )
    local hJumpTime = hud.getComponent ( hUser, "hud.jumpTimeValue" )
    local hHangTime = hud.getComponent ( hUser, "hud.hangTimeValue" )
    local hHangForce = hud.getComponent ( hUser, "hud.hangForceValue" )
        
    if(this.bStateFalling ( ))
    then
        hud.setComponentBackgroundColor ( hFalling, 0, 127, 0, 255 )
    else
        hud.setComponentBackgroundColor ( hFalling, 0, 127, 0, 0 )
    end
    
    if(this.bStateJumping ( ))
    then
        hud.setComponentBackgroundColor ( hJumping, 0, 127, 0, 255 )
    else
        hud.setComponentBackgroundColor ( hJumping, 0, 127, 0, 0 )
    end
    
    hud.setLabelText ( hGravity, ""..this.nSimulationGravityForce ( ) )
    hud.setLabelText ( hJumpImpulse, ""..this.nSimulationJumpImpulse ( ) )
    hud.setLabelText ( hJumpTime, ""..this.nSimulationJumpTime ( ) )
    hud.setLabelText ( hHangTime, ""..this.nSimulationHangTime ( ) )
    hud.setLabelText ( hHangForce, ""..this.nSimulationHangForce ( ) )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
