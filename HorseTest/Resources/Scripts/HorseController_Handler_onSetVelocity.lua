--------------------------------------------------------------------------------
--  Handler.......... : onSetVelocity
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HorseController.onSetVelocity ( nVelocity )
--------------------------------------------------------------------------------
	
	this.nVelocity ( nVelocity )
    
    -- Set running state based on velocity
    if nVelocity  == 0 then
        this.AnimationIdle ( )
    elseif nVelocity > 0 and nVelocity < 20 then
        this.AnimationWalk ( )
    else
        this.AnimationRun ( )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
