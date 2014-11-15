--------------------------------------------------------------------------------
--  Function......... : getLetterOffset
--  Author........... : 
--  Description...... : The letter offset is the x,y coordinate on the texture map
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function LetterRender.getLetterOffset ( sLetter )
--------------------------------------------------------------------------------
	
	-- A is character code 65 and located at 2 x 5
    local nByte = string.getByte ( sLetter, 0 )
    
    local x, y
    
    x = math.mod ( 1 + nByte - 65, 16 ) + 1
    
    -- the number of rows beyond row 5 is nByte / (65 + 14)
    y = math.mod ( 4 + math.floor ( nByte / (65 + 15)), 16 ) + 1
    
    return x, y
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
