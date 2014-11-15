--------------------------------------------------------------------------------
--  Function......... : keyboardChange
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function PlatformerPhysics.keyboardChange ( kKeyCode, bDown )
--------------------------------------------------------------------------------
	
	if(this.hCharacter ( )) then
        if(kKeyCode == input.kKeySpace) then
            object.sendEvent ( this.hCharacter ( ), "PhysicsActor", "onJump", bDown )
        elseif(kKeyCode == input.kKeyLeft) then
            --object.sendEvent ( this.hCharacter ( ), "PhysicsActor", "onLeft", bDown)
        elseif(kKeyCode == input.kKeyRight) then
            --object.sendEvent ( this.hCharacter ( ), "PhysicsActor", "onRight", bDown )
        elseif(kKeyCode == input.kKeyL and bDown) then
            local hLights = application.getCurrentUserSceneTaggedObject ( "lights" )
            local bShow = not object.isVisible ( hLights )
            object.setVisible ( hLights, bShow )
            object.setVisible ( group.getSubObjectAt ( hLights, 0 ), bShow )
            object.setVisible ( group.getSubObjectAt ( hLights, 1 ), bShow )
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
