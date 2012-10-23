--------------------------------------------------------------------------------
--  Function......... : backupAndGetPlayerKeys
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function InputAI.backupAndGetPlayerKeys ( nJoypad )
--------------------------------------------------------------------------------
	
	local hash
    if(nJoypad == 0)
    then
        hash = this.htPlayer1Keys ( )
        hashtable.copy ( this.htPlayer1LastKeys ( ), this.htPlayer1Keys ( ) )
    elseif(nJoypad == 1)
    then
        hash = this.htPlayer2Keys ( )
        hashtable.copy ( this.htPlayer2LastKeys ( ), this.htPlayer2Keys ( ) )
    end
	
    return hash
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
