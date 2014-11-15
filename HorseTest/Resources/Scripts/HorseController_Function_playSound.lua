--------------------------------------------------------------------------------
--  Function......... : playSound
--  Author........... : 
--  Description...... : Play a sound based on the frame number and state
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HorseController.playSound ( sState )
--------------------------------------------------------------------------------
	
    --
    -- Keyframes were determined by scrubbing through the animation sequence.
    --
    
	if sState == "Run" then
        local nFrame = animation.getPlaybackCursor ( this.getObject ( ), 2 )
        local nLast = this.nLastKeyframe ( )
        
        if (nLast < 3 and nFrame >= 3) or 
           (nLast < 10 and nFrame >= 10) or
           (nLast < 20 and nFrame >= 20) or
           (nLast < 30 and nFrame >= 30) then
           sound.stop ( this.getObject ( ), 0 )
           sound.play ( this.getObject ( ), 0, 1, false, 0.5 )
        end
        
        this.nLastKeyframe ( nFrame )
    elseif sState == "Walk" then
        local nFrame = animation.getPlaybackCursor ( this.getObject ( ), 1 )
        local nLast = this.nLastKeyframe ( )
        
        if (nLast < 7 and nFrame >= 7) or 
           (nLast < 21 and nFrame >= 21) or
           (nLast < 28 and nFrame >= 28) or
           (nLast < 46 and nFrame >= 46) then
           sound.stop ( this.getObject ( ), 0 )
           sound.play ( this.getObject ( ), 0, 1, false, 0.5 )
        end
        
        this.nLastKeyframe ( nFrame )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
