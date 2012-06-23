--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function platformAI.onInit (  )
--------------------------------------------------------------------------------
	
	if(not object.hasController ( this.getObject ( ), object.kControllerTypeDynamics ))
    then
        log.error ( "I'm a moving platform and somebody forgot to give me a dynamics controller :(")
    end
    
    --Set this to be kinematic
    dynamics.setKinematic ( this.getObject ( ), true )
    
    --Disable gravity
    dynamics.enableGravity ( this.getObject ( ), false )
	
    --Start the platform
    this.sendEvent ( "onNextTimeStep" )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
