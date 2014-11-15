--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HorseController.onEnterFrame (  )
--------------------------------------------------------------------------------
	
    local x, y, z = shape.getSkeletonJointTranslation ( this.getObject ( ), "Tail1", object.kGlobalSpace )
    object.setTranslation ( this.hTailJoint ( ), x, y, z, object.kGlobalSpace )
    --local x, y, z = object.getTranslation ( this.hTailJoint ( ), object.kGlobalSpace )
	--shape.overrideSkeletonJointTranslation ( this.getObject ( ), "Tail1", x, y, z, object.kGlobalSpace, 1 )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
