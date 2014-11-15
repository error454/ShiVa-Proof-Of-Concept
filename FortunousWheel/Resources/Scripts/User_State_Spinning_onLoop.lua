--------------------------------------------------------------------------------
--  State............ : Spinning
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function User.Spinning_onLoop ( )
--------------------------------------------------------------------------------
	
    local dt = application.getLastFrameTime ( )
	object.rotate ( this.hBoard ( ), 0, this.nBoardAcceleration ( ) * dt * 10, 0, object.kLocalSpace )
    local nForward = this.nLastAccel ( ) > 0 and 1 or -1
    
	this.nBoardAcceleration ( this.nBoardAcceleration ( ) + dt * 4 * nForward )
    
    if(this.nBoardAcceleration ( ) >= 0 and nForward == 1) then
        this.ShowNumber ( )
    elseif(this.nBoardAcceleration ( ) <= 0 and nForward == -1) then
        this.ShowNumber ( )
    end
    
    this.easeCamera ( "SpinCamera" )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
