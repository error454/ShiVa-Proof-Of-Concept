--------------------------------------------------------------------------------
--  Function......... : createSpray
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function RainAI.createSpray ( )
--------------------------------------------------------------------------------
	
	local hScene = application.getCurrentUserScene ( )
    
	for spray = 1, this.nMaxSpray ( )
    do
        if(spray < table.getSize ( this.tSpray ( ) ))
        then
            local hSpray = scene.createRuntimeObject ( hScene, "spray" )
            local hHelper = table.getAt ( this.tSpray ( ), spray - 1 )
            object.matchTranslation ( hSpray, hHelper, object.kGlobalSpace )
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
