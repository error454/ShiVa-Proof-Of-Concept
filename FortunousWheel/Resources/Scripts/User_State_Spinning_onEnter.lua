--------------------------------------------------------------------------------
--  State............ : Spinning
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function User.Spinning_onEnter ( )
--------------------------------------------------------------------------------
	
	this.nBoardAcceleration ( -this.nLastAccel ( )* 60 )
    --log.message ( "Velocity: " .. this.nBoardAcceleration ( ) )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
