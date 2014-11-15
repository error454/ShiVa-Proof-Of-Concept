--------------------------------------------------------------------------------
--  Function......... : Update_FPS
--  Author........... : Archimmersion
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function FPS_Display_Main.Update_FPS ( )
--------------------------------------------------------------------------------
	
    local hHud = hud.getComponent ( this.getUser ( ), "FPS_Display.Display" )
    
    --FPS
    local dt = application.getAverageFrameTime ( )
    local nFPS =  math.floor (1 / dt)
    local nDrawCalls = debug.getLastFrameTotalDrawCalls ( )
    local nTriangles = debug.getLastFrameTotalTriangles ( )
    local nVertices = debug.getLastFrameTotalVertices ( )
    local nMemory = debug.getTotalMemoryUsed ( )
    hud.setLabelText ( hHud, "F: "..nFPS .. "\nD: "..(nDrawCalls - 1) .. "\nT: "..nTriangles.."\nV: "..nVertices .. "\nM: ".. string.format ( "%.2f", nMemory / (1024*1024) ).." MB")

--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
