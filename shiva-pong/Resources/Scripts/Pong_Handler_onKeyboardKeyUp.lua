--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyUp
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Pong.onKeyboardKeyUp ( kKeyCode )
--------------------------------------------------------------------------------
	
	if(kKeyCode == input.kKeyW) then
        this.bUp ( false )
    elseif(kKeyCode == input.kKeyS) then
        this.bDown ( false )
    elseif(kKeyCode == input.kKeySpace) then
        if(this.hBall ( )) then return 0 end
            -- Create ball
        this.hBall ( scene.createRuntimeObject ( application.getCurrentUserScene ( ), "Ball" ))
        dynamics.setGuardBox ( this.hBall ( ), -17, 0, -10, 17, 0, 10 )
        dynamics.enableGuardBox ( this.hBall ( ), true )
        object.setTranslation ( this.hBall ( ), 0, 0, 0, object.kGlobalSpace )
        dynamics.addLinearImpulse ( this.hBall ( ), 100, 0, 0, object.kGlobalSpace )
        --dynamics.setLinearVelocity ( this.hBall ( ), 1, 0, 0, object.kGlobalSpace )
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
