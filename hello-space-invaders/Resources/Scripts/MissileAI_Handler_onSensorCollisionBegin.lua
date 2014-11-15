--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollisionBegin
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MissileAI.onSensorCollisionBegin ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
	if(nSensorID == 1)
    then
        object.sendEvent ( hTargetObject, "EnemyAI", "onDestroy" )
        scene.destroyRuntimeObject ( application.getCurrentUserScene ( ), this.getObject ( ) )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
