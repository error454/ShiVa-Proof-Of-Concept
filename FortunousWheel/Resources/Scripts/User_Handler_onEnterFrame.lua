--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function User.onEnterFrame (  )
--------------------------------------------------------------------------------
	
    -- handle beeps
    local rx, ry, rz = object.getRotation ( this.hBoard ( ), object.kGlobalSpace )
    
    -- map rotation angle to values at the 12 o'clock position of the wheel
    local degreesPerSegment = 360 / this.nSegments ( )
    
    -- offset for starting rotation
    ry = ry - degreesPerSegment * 0.5
    
    -- wrap values of -180 to the full range of 0-360
    if(ry < 0) then ry = 360 - math.abs ( ry ) end
        
    -- the segment we are on
    local nSegment = this.nSegments ( ) - 1 - math.floor(ry / degreesPerSegment)
    
    --log.message ( nSegment )
    -- play sound
    if(nSegment ~= this.nLastSegment ( )) then
        sound.stop ( this.hSound ( ), 0 )
        sound.play ( this.hSound ( ), 0, 1, false, 1 )
    end
    --log.message ( math.mod ( ry, degreesPerSegment ) )
    
    --default value is at 9 o'clock position, offset it by 90 degrees
    local nSegmentOffset = math.mod ( nSegment + (270 / degreesPerSegment), this.nSegments ( ) )
    
    --local hSpinValue = hud.getComponent ( this.getUser ( ), "wheel.spinValue" )
    local hFinalValue = hud.getComponent ( this.getUser ( ), "Result.Result" )
    
    --hud.setLabelText ( hSpinValue, ""..table.getAt ( this.tValues ( ), math.abs(nSegmentOffset)) )
    hud.setLabelText ( hFinalValue, ""..table.getAt ( this.tValues ( ), math.abs(nSegmentOffset)) )
    --hud.setComponentRotation ( hSpinValue, ry + 5 )
    --hud.setLabelText ( hSpinValue, ""..table.getAt ( this.tValues ( ), nSegment ))
    
    this.nLastSegment ( nSegment )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
