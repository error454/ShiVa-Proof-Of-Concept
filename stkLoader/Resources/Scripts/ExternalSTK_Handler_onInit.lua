--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ExternalSTK.onInit (  )
--------------------------------------------------------------------------------
	
    application.setCurrentUserScene ( "scene" )
    local hScene = application.getCurrentUserScene ( )
    
    --
    -- Add the pack file from cache. This file is sitting in the root project directory.
    -- It contains the models and materials that are in this project.
    -- Notice that none of the models or materials are referenced in the project and yet
    -- they are still able to be used.
    --
	cache.addFile ( "MatsAndModels.stk", "file://" .. application.getPackDirectory ( ) .. "/MatsAndModels.stk" )
	
    --
    -- Model box is not referenced in the project, is read from the stk file.
    --
    local hBox  = scene.createRuntimeObject ( hScene, this.getModel ( "box" ) )
    local hCone = scene.createRuntimeObject ( hScene, this.getModel ( "cone" ) )
    local hCyl  = scene.createRuntimeObject ( hScene, this.getModel ( "cylinder" ) )
    
    --
    -- Position things to be visible.
    --
    object.setTranslation ( hBox, -3, 0, 0, object.kGlobalSpace )
    object.setTranslation ( hCone, 0, 0, 0, object.kGlobalSpace )
    object.setTranslation ( hCyl, 3, 0, 0, object.kGlobalSpace )
    
    --
    -- Override materials with the materials found in the packs
    --
    shape.setMeshMaterial ( hBox,   this.getResource ( "red", application.kResourceTypeMaterial ) )
    shape.setMeshMaterial ( hCone,  this.getResource ( "yellow", application.kResourceTypeMaterial ) )
    shape.setMeshMaterial ( hCyl,   this.getResource ( "orange", application.kResourceTypeMaterial ) )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
