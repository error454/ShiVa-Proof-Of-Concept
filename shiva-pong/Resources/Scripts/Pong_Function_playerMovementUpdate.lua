--------------------------------------------------------------------------------
--  Function......... : playerMovementUpdate
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Pong.playerMovementUpdate ( )
--------------------------------------------------------------------------------
	
	local dt = application.getLastFrameTime ( )
    local speed = dt * 20
	if(this.bUp ( )) then
        local hPlayer1 = application.getCurrentUserSceneTaggedObject ( "Player2" )
        local tx, ty, tz = object.getTranslation ( hPlayer1, object.kGlobalSpace )
        local newZ = tz - speed
        newZ = math.clamp ( newZ, -6.9, 6.9 )
        object.setTranslation ( hPlayer1, tx, ty, newZ, object.kGlobalSpace )
    elseif(this.bDown ( )) then
        local hPlayer1 = application.getCurrentUserSceneTaggedObject ( "Player2" )
        local tx, ty, tz = object.getTranslation ( hPlayer1, object.kGlobalSpace )
        local newZ = tz + speed
        newZ = math.clamp ( newZ, -6.9, 6.9 )
        object.setTranslation ( hPlayer1, tx, ty, newZ, object.kGlobalSpace )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
