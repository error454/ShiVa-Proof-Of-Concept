--------------------------------------------------------------------------------
--  State............ : Spin
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function LetterRender.Spin_onLoop ( )
--------------------------------------------------------------------------------
	
    local dt = application.getLastFrameTime ( )
    
    local hLetter = table.getAt ( this.tLetters ( ), 0 )
	object.rotateAround ( hLetter, 0, 0, 0, 0, 150 * dt, 0, object.kGlobalSpace )
    
    for i = 1, table.getSize ( this.tLetters ( ) ) - 1 do
        local hLetterP = table.getAt ( this.tLetters ( ), i - 1)
        local hLetter = table.getAt ( this.tLetters ( ), i )
        
        local x, y, z = object.getTranslation ( hLetterP, object.kGlobalSpace )
        local xn, yn, zn = object.getTranslation ( hLetter, object.kGlobalSpace )
        
        local fx, fy, fz = math.vectorSubtract ( x, y, z, xn, yn, zn )
        fx, fy, fz = math.vectorSetLength ( fx, fy, fz, 0.08 )
        object.translateTo ( hLetter, x, y, z, object.kGlobalSpace, dt * 8 )
        --object.resetRotation ( hLetter, object.kGlobalSpace )
        --object.translate ( hLetter, fx, fy, fz, object.kGlobalSpace )
        --object.lookAtWithUp ( hLetter, 0, 0, 0, 1, 0, 0, object.kGlobalSpace, 1 )
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
