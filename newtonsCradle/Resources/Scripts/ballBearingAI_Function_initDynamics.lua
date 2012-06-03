--------------------------------------------------------------------------------
--  Function......... : initDynamics
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ballBearingAI.initDynamics ( )
--------------------------------------------------------------------------------
	
    local o = this.getObject ( )
        
    --the ceiling is 10 units hight, so the anchor point will be y = 10
    local x, y, z = object.getTranslation ( o, object.kGlobalSpace )
    
    --Create the string and scale it down
    local s = scene.createRuntimeObject ( application.getCurrentUserScene ( ), "string" )
    object.setScale ( s, 0.02, 6, 0.02 )
    
    --Match the translation of the bearing and then move 7 units up
    object.matchTranslation ( s, o, object.kGlobalSpace )
    object.translate ( s, 0, 7, 0, object.kLocalSpace )
    
    --Attach string to bearing
    object.setParent ( s, o, true )
    
    --If the ball is not stationary then give it an impulse to start the motion
    if(not this.bStationary ( ))
    then
        dynamics.addLinearImpulse ( o, -150, 0, 0, object.kLocalSpace )
	end
    
    --Create the ball joint and anchor it to the ceiling
    dynamics.createBallJoint ( o, nil, "ceiling" )
    dynamics.setBallJointAnchor ( o, "ceiling", x, 10, z, object.kGlobalSpace)
    
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
