--------------------------------------------------------------------------------
--  Function......... : zeroVerticalVelocity
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function jumpManAI.zeroVerticalVelocity ( )
--------------------------------------------------------------------------------
	
    --This function sets the vertical velocity to 0 while preserving horizontal velocity
    --it is used at the beginning/end of jump states
	local x, DC, DC = dynamics.getLinearVelocity ( this.getObject ( ), object.kGlobalSpace )
    dynamics.setLinearVelocity ( this.getObject ( ), x, 0, 0, object.kGlobalSpace )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
