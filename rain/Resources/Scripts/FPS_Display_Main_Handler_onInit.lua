--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : Archimmersion
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function FPS_Display_Main.onInit (  )
--------------------------------------------------------------------------------
	
          -- This FPS Display tool was created by Archimmersion --
          --
          --                       v 2.0
          --
          -- More information: http://www.archimmersion.com/tools/

    ------------------------------------------------------------------
    ---------------------------- S E T U P ---------------------------
    
    -- Set nFPS_Mode to:
    -- 0 to disable
    -- 1 for every frame update mode
    -- 2 to sample less frequently using postevent, set nDelayTime ( in seconds) for frequency
    
    -- Set bOnlyFPS to
    -- true to display only the FPS counter
    -- false to display the complete statistics ( FPS, Draw Calls, Triangles, Vertices, Memory)
    
    local nFPS_Mode = 2
    this.nDelayTime ( 0.1 ) -- in seconds
    this.bOnlyFPS ( false )
    
    ------------------------- S E T U P  E N D -----------------------
    ------------------------------------------------------------------
    
    this.sendEvent ( "onStart", nFPS_Mode )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
