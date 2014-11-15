--------------------------------------------------------------------------------
--  Function......... : jiggleInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HorseController.jiggleInit ( )
--------------------------------------------------------------------------------
	
	--
	-- Tail1 - Tail5
	--
    local hScene = application.getCurrentUserScene ( )
    local o = this.getObject ( )
    local t = table.newInstance ( )
    
    --
    -- Create a helper for each tail joint
    --
    local hTailJoint = scene.createRuntimeObject ( hScene, "" )
    local hHelper2 = scene.createRuntimeObject ( hScene, "" )
    local hHelper3 = scene.createRuntimeObject ( hScene, "" )
    local hHelper4 = scene.createRuntimeObject ( hScene, "" )
    local hHelper5 = scene.createRuntimeObject ( hScene, "" )
    table.add ( t, hHelper2 )
    table.add ( t, hHelper3 )
    table.add ( t, hHelper4 )
    table.add ( t, hHelper5 )
    this.hTailJoint ( hTailJoint )
    
    --
    -- Position helpers in their correct starting position
    --
    local x1, y1, z1 = shape.getSkeletonJointTranslation ( o, "Tail1", object.kGlobalSpace )
    local x2, y2, z2 = shape.getSkeletonJointTranslation ( o, "Tail2", object.kGlobalSpace )
    local x3, y3, z3 = shape.getSkeletonJointTranslation ( o, "Tail3", object.kGlobalSpace )
    local x4, y4, z4 = shape.getSkeletonJointTranslation ( o, "Tail4", object.kGlobalSpace )
    local x5, y5, z5 = shape.getSkeletonJointTranslation ( o, "Tail5", object.kGlobalSpace )
    
    object.setTranslation ( hTailJoint, x1, y1, z1, object.kGlobalSpace )
    object.setTranslation ( hHelper2, x2, y2, z2, object.kGlobalSpace )
    object.setTranslation ( hHelper3, x3, y3, z3, object.kGlobalSpace )
    object.setTranslation ( hHelper4, x4, y4, z4, object.kGlobalSpace )
    object.setTranslation ( hHelper5, x5, y5, z5, object.kGlobalSpace )
    
    --
    -- Create the dynamics bodies and joints
    --
    for i = 0, table.getSize ( t ) - 1 do
        local hHelper = table.getAt ( t, i )
        dynamics.createSphereBody ( hHelper, 0.13 )
        dynamics.enableCollisions ( hHelper, true )
        dynamics.enableDynamics ( hHelper, true )
        dynamics.enableGravity ( hHelper, true )
        dynamics.enableRotations ( hHelper, true )
        
        dynamics.setMass ( hHelper, 3 )
        dynamics.setAngularDamping ( hHelper, 0.1 )
        dynamics.setLinearDamping ( hHelper, 0.1 )
    end
    
    dynamics.createUniversalJoint ( hHelper5, hHelper4, "TailJoint5")
    dynamics.createUniversalJoint ( hHelper4, hHelper3, "TailJoint4")
    dynamics.createUniversalJoint ( hHelper3, hHelper2, "TailJoint3")
    dynamics.createUniversalJoint ( hHelper2, hTailJoint, "TailJoint2")
    
    dynamics.setUniversalJointAnchor ( hHelper2, "TailJoint2", x1, y1, z1, object.kGlobalSpace )
    dynamics.setUniversalJointAnchor ( hHelper3, "TailJoint3", x2, y2, z2, object.kGlobalSpace )
    dynamics.setUniversalJointAnchor ( hHelper4, "TailJoint4", x3, y3, z3, object.kGlobalSpace )
    dynamics.setUniversalJointAnchor ( hHelper5, "TailJoint5", x4, y4, z4, object.kGlobalSpace )
    
    dynamics.setUniversalJointAxis1 ( hHelper2, "TailJoint2", 1, 0, 0, object.kGlobalSpace )
    dynamics.setUniversalJointAxis1 ( hHelper3, "TailJoint3", 1, 0, 0, object.kGlobalSpace )
    dynamics.setUniversalJointAxis1 ( hHelper4, "TailJoint4", 1, 0, 0, object.kGlobalSpace )
    dynamics.setUniversalJointAxis1 ( hHelper5, "TailJoint5", 1, 0, 0, object.kGlobalSpace )
    
    dynamics.setUniversalJointAxis2 ( hHelper2, "TailJoint2", 0, 1, 0, object.kGlobalSpace )
    dynamics.setUniversalJointAxis2 ( hHelper3, "TailJoint3", 0, 1, 0, object.kGlobalSpace )
    dynamics.setUniversalJointAxis2 ( hHelper4, "TailJoint4", 0, 1, 0, object.kGlobalSpace )
    dynamics.setUniversalJointAxis2 ( hHelper5, "TailJoint5", 0, 1, 0, object.kGlobalSpace )
    
    --[[
    for i = 0, table.getSize ( t ) - 1 do
        local hHelper = table.getAt ( t, i )
        
        dynamics.setUniversalJointAxis1AngleLimitCFM (  )
        dynamics.setUniversalJointAxis1AngleLimitERP (  )
        dynamics.setUniversalJointAxis1AngleLimitMax (  )
        dynamics.setUniversalJointAxis1AngleLimitMin (  )

        dynamics.setUniversalJointAxis2AngleLimitCFM (  )
        dynamics.setUniversalJointAxis2AngleLimitERP (  )
        dynamics.setUniversalJointAxis2AngleLimitMax (  )
        dynamics.setUniversalJointAxis2AngleLimitMin (  )
    end
    ]]
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
