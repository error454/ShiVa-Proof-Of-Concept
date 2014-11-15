--------------------------------------------------------------------------------
--  Function......... : fireMissile
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function UserAI.fireMissile ( )
--------------------------------------------------------------------------------
	
    local t = application.getTotalFrameTime ( )
	
    if(t >= this.nLastFireTime ( ) + this.nFireRechargeRate ( ))
    then
        local hBullet = scene.createRuntimeObject ( application.getCurrentUserScene ( ), "bullet" )
        object.matchTranslation ( hBullet, this.hPlayer ( ), object.kGlobalSpace )
        this.nLastFireTime ( t )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
