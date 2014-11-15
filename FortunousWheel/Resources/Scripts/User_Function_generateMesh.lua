--------------------------------------------------------------------------------
--  Function......... : generateMesh
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function User.generateMesh ( x, y, z )
--------------------------------------------------------------------------------
	
	local hObject = scene.createRuntimeObject ( application.getCurrentUserScene ( ), "" )
 
    if not hObject then return 0 end
    
    local radius = 3
    local points = 4

    local hMesh = shape.createRuntimeMesh ( hObject )
    hMesh = shape.getMesh ( hObject )

    mesh.addSubset ( hMesh )
    
    -- 3 indexes per triangle
    mesh.createSubsetIndexBuffer ( hMesh, 0, 0, 6 * (points / 2))
    
    -- 4 vertices per quad
    mesh.createSubsetVertexBuffer ( hMesh, 0, points )

    mesh.lockSubsetVertexBuffer ( hMesh, 0, mesh.kLockModeWrite )
    mesh.lockSubsetIndexBuffer ( hMesh, 0, 0, mesh.kLockModeWrite )

    local math_sin = math.sin
    local math_cos = math.cos
    
    -- draw a circle whose center is at w/2, h/2
    local i = 0
    for theta = 0, 360, 360/4 do
        local x = radius * math_cos ( theta )
        local y = radius * math_sin ( theta )
    
        --for i = 0, points - 1 do
        mesh.setSubsetVertexPosition ( hMesh, 0, 0, x, 0, y )
        --mesh.setSubsetVertexTexCoord ( hMesh, 0, 0, 0, 0, 1 )
        mesh.setSubsetIndexValue ( hMesh, 0, 0, 0, i )
        i = i + 1
    end

    -- Set texture coordinates per vertex, note the coordinate system is OpenGL
    -- So the 'v' coordinate is sort of opposite than you'd expect 
    --[[
    mesh.setSubsetVertexTexCoord ( hMesh, 0, 1, 0, 1, 1)
    mesh.setSubsetVertexTexCoord ( hMesh, 0, 2, 0, 1, 0)
    mesh.setSubsetVertexTexCoord ( hMesh, 0, 3, 0, 0, 0)
]]
    -- Indice buffer tells the order to connect each point to make triangles
    -- These need to be drawn counter-clockwise or the faces will be flipped
    -- Note some vertices are connected more than once, you can connect these any way you
    -- want if it works
--[[
    mesh.setSubsetIndexValue ( hMesh, 0, 0, 0, 0 )
    mesh.setSubsetIndexValue ( hMesh, 0, 0, 1, 3 )
    mesh.setSubsetIndexValue ( hMesh, 0, 0, 2, 1 )
    mesh.setSubsetIndexValue ( hMesh, 0, 0, 3, 3 )
    mesh.setSubsetIndexValue ( hMesh, 0, 0, 4, 2 )
    mesh.setSubsetIndexValue ( hMesh, 0, 0, 5, 1 )
]]

    mesh.unlockSubsetVertexBuffer ( hMesh, 0 )
    mesh.unlockSubsetIndexBuffer ( hMesh, 0, 0 )

    -- These will update stuff...
    -- updateBoundingVolumes is really necessary, otherwise your geometry will spaz out
    -- and be picky about showing itself
    mesh.computeSubsetVertexNormals ( hMesh, 0, 0 )
    mesh.computeSubsetVertexTangents ( hMesh, 0 )
    mesh.updateBoundingVolumes ( hMesh )


    log.message ( "Subset Count: " .. mesh.getSubsetCount ( hMesh ) )

    log.message ( "Mesh name: " .. shape.getMeshName ( hObject ) )

    log.message ( "Vertex Count: " .. mesh.getSubsetVertexCount ( hMesh, 0 ) )
    log.message ( "Index count: " .. mesh.getSubsetIndexCount ( hMesh, 0, 0 ) )

    -- Set the material (grass in this case)
    --shape.setMeshMaterial ( hObject, "matGrass" )



    -- Center the quad at the passed coordinates
    object.setTranslation ( hObject, x, y, z, object.kGlobalSpace )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
