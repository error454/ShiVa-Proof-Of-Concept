--------------------------------------------------------------------------------
--  Function......... : characterSet
--  Author........... : 
--  Description...... : 0 - Mario
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function PlatformerPhysics.characterSet ( nChar )
--------------------------------------------------------------------------------
	
	if(nChar == 0) then -- mario then
        object.setScale ( this.hCharacter ( ), 1, 2, 0.01 )
        --object.sendEvent ( this.hCharacter ( ), "PhysicsActor", "onInitializeConstants", 34.180, 16.406, 10.126, 15.625 )
        --object.sendEvent ( this.hCharacter ( ), "PhysicsActor", "onInitializeConstants", 34.722, 16.667, 10.206, 15.625 )
        --object.sendEvent ( this.hCharacter ( ), "PhysicsActor", "onInitializeConstants", 32, 16, 8, 15.625 )
        object.sendEvent ( this.hCharacter ( ), "PhysicsActor", "onInitializeConstants", 41.322, 18.182, 9.091, 15.625 )
        --object.sendEvent ( this.hCharacter ( ), "PhysicsActor", "onInitializeConstants", 800, 80, 9.091, 20 )
    elseif(nChar == 1) then -- megaman then
        object.setScale ( this.hCharacter ( ), 1, 1.5, 0.01 )
        object.sendEvent ( this.hCharacter ( ), "PhysicsActor", "onInitializeConstants", 38.089, 14.474, 0, 14 )
    elseif(nChar == 2) then -- dumb physics
        object.setScale ( this.hCharacter ( ), 1, 2, 0.01 )
        object.sendEvent ( this.hCharacter ( ), "PhysicsActor", "onInitializeConstants", 9.8, 5, -5, 15.625 )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
