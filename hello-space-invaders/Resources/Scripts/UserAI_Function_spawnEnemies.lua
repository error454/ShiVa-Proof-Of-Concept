--------------------------------------------------------------------------------
--  Function......... : spawnEnemies
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function UserAI.spawnEnemies ( )
--------------------------------------------------------------------------------
	
	local horizontalEnemies = 10;
	local verticalEnemies = 5;
	local hScene = application.getCurrentUserScene ( )
	
    for y = 0, verticalEnemies - 1
    do
        for x = 0, horizontalEnemies - 1
        do
            local hEnemy = scene.createRuntimeObject ( hScene, "enemy" )
            object.setTranslation ( hEnemy, x - horizontalEnemies * 0.5, y + 3, 0, object.kGlobalSpace )
		end
	end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
