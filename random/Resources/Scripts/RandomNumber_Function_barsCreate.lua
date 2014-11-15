--------------------------------------------------------------------------------
--  Function......... : barsCreate
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function RandomNumber.barsCreate ( nCount )
--------------------------------------------------------------------------------
	
    local hScene = application.getCurrentUserScene ( )
    this.nBars ( nCount )
    
    local size = 1
    local spacing = 0.05
    local position = -(nCount / 2) * (size + spacing) + size * 0.5
    
    for i = 1, nCount do
        local hBox = scene.createRuntimeObject ( hScene, "box" )
        object.setTranslation ( hBox, position, 0, 0, object.kGlobalSpace )
        position = position + size + spacing
        scene.setObjectTag ( hScene, hBox, "bar"..i )
        
        object.setScale ( hBox, 1, 0, 1 )
	end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
