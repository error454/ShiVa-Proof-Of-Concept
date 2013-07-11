--------------------------------------------------------------------------------
--  Function......... : Update_FPS
--  Author........... : Archimmersion
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function FPS_Display_Main.Update_FPS ( )
--------------------------------------------------------------------------------
	
    --Optimization
    local hUser = application.getCurrentUser ( )
    local hudGetComponent = hud.getComponent
    local hudSetLabelText = hud.setLabelText
    
    --FPS
    --local dt = application.getLastFrameTime ( )
    local dt = application.getAverageFrameTime ( )
    local nFPS =  math.floor (1 / dt)
    local hFpsLabel = hudGetComponent ( hUser, "FPS_Display.lbl_FPS" )
    hudSetLabelText ( hFpsLabel, "FPS: "..nFPS )
    
    
    if ( this.bOnlyFPS ( ) == false )
    then
        --Draw Calls
        local nDrawCalls = debug.getLastFrameTotalDrawCalls ( )
        local hDrawCallsLabel = hudGetComponent ( hUser, "FPS_Display.lbl_DrawCalls" )
        hudSetLabelText ( hDrawCallsLabel, "DrC: "..(nDrawCalls - 6) )
        
        --Triangles
        local nTriangles = debug.getLastFrameTotalTriangles ( )
        local hTrianglesLabel = hudGetComponent ( hUser, "FPS_Display.lbl_Triangles" )
        hudSetLabelText ( hTrianglesLabel, "Tris: "..nTriangles )
            
        --Vertices
        local nVertices = debug.getLastFrameTotalVertices ( )
        local hVerticesLabel = hudGetComponent ( hUser, "FPS_Display.lbl_Vertices" )
        hudSetLabelText ( hVerticesLabel, "Vert: "..nVertices )
        
        --TotalMemory
        local nMemory = debug.getTotalMemoryUsed ( )
        local hMemoryLabel = hudGetComponent ( hUser, "FPS_Display.lbl_Memory" )
        hudSetLabelText ( hMemoryLabel, "Mem: "..string.format ( "%.2f", nMemory / (1024*1024) ).." MB" )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
