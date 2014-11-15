--------------------------------------------------------------------------------
--  State............ : AnimationWalk
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HorseController.AnimationWalk_onLoop ( )
--------------------------------------------------------------------------------
	
	local o = this.getObject ( )
    local dt = application.getLastFrameTime ( ) * this.nAnimationSpedFactor ( )
    
    local nIdle = this.nIdleFactor ( )
    local nWalk = this.nWalkFactor ( )
    local nRun = this.nRunFactor ( )
    
    nIdle = math.clamp ( nIdle - dt, 0, 1 )
    nWalk = math.clamp ( nWalk + dt, 0, 1 )
    nRun = math.clamp ( nRun - dt, 0, 1 )
    
    this.nIdleFactor ( nIdle )
    this.nWalkFactor ( nWalk )
    this.nRunFactor ( nRun )
    
    animation.setPlaybackLevel ( o, 0, nIdle )
    animation.setPlaybackLevel ( o, 1, nWalk )
    animation.setPlaybackLevel ( o, 2, nRun )
	
    this.matchCamera ( )
    
    animation.setPlaybackSpeed ( o, 1, 5.9361 * this.nVelocity ( ) + 7.4812 )
    
    this.playSound ( "Walk" )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
