--------------------------------------------------------------------------------
--  Function......... : renderWord
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function LetterRender.renderWord ( sText, originX, originY, originZ )
--------------------------------------------------------------------------------
	
    local hScene = application.getCurrentUserScene ( )
    local hCamera = application.getCurrentUserActiveCamera ( )
    local x, y, z = object.getTranslation ( hCamera, object.kGlobalSpace )
    local xPosition = originX
    
	for i = 0, string.getLength ( sText ) - 1 do
        local letter = string.getSubString ( sText, i, 1 )
        
        local hLetter = scene.createRuntimeObject ( hScene, "plane" )
        table.add ( this.tLetters ( ), hLetter )
        
        local offsetX, offsetY, factor
        
        if ( letter == " " ) then
            offsetX, offsetY = 0, 0
            factor = 1.5
        else
            offsetX, offsetY = this.getLetterOffset ( string.upper ( letter ) )
            factor = this.getLetterFactor ( letter )
        end
        
        object.setScale ( hLetter, 1, factor, 1 )
        
        object.setTranslation ( hLetter, xPosition, originY, originZ, object.kGlobalSpace )
        xPosition = xPosition + factor
        --object.lookAtWithUp ( hLetter, x, y, z, 1, 0, 0, object.kGlobalSpace, 1 )
        object.lookAtWithUp ( hLetter, 0, 0, 10, 1, 0, 0, object.kGlobalSpace, 1 )
        
        shape.setMeshSubsetMaterialEffectMap0AdditionalUVOffset ( hLetter, 0, (offsetX / 16) - 1/16, 1 - offsetY / 16 )
        shape.setMeshSubsetMaterialEffectMap0AdditionalUVScale ( hLetter, 0, (1 / 16) * factor, 1 / 16 )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
