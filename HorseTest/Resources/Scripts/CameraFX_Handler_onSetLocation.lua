--------------------------------------------------------------------------------
--  Handler.......... : onSetLocation
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function CameraFX.onSetLocation ( x, y, z, nSpeed )
--------------------------------------------------------------------------------
	
    this.nTrackingSpeed ( nSpeed )
    table.setRangeAt ( this.tTranslation ( ), 0, x, y, z )
	this.TrackLocation ( )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------