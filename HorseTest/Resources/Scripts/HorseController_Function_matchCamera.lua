--------------------------------------------------------------------------------
--  Function......... : matchCamera
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HorseController.matchCamera ( )
--------------------------------------------------------------------------------
	
	if this.hHorseCam ( ) then
    
        -- Get the backbone of the horse and set camera position relative to that bone
        local x, y, z = shape.getSkeletonJointTranslation ( this.getObject ( ), "Volume03", object.kGlobalSpace )
        x, y, z = object.transformPoint ( this.getObject ( ), 0, 140, -15, object.kLocalSpace, object.kGlobalSpace )
        object.setTranslation ( this.hHorseCam ( ), x, y, z, object.kGlobalSpace )
        
        local lx, ly, lz = object.transformPoint ( this.getObject ( ), 0, 55, 400, object.kLocalSpace, object.kGlobalSpace )
        
        -- Look in the same direction that the horse is facing
        object.lookAt ( this.hHorseCam ( ), lx, ly, lz, object.kGlobalSpace, 1 )
    end
    
    this.updateHeadDirection ( )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
