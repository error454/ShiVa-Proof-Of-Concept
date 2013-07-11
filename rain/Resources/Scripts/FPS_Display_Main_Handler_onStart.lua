--------------------------------------------------------------------------------
--  Handler.......... : onStart
--  Author........... : Archimmersion
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function FPS_Display_Main.onStart ( nFPS_Mode )
--------------------------------------------------------------------------------
	
	-- To define the working parameters, please see the onInit script
	
    -- This script creates the HUD and sets up the functioning according to the
    -- parameters in the onInit script
    
    --Optimization
    local hUser = application.getCurrentUser ( )
    local hudGetComponent = hud.getComponent
    
    if ( nFPS_Mode == 0 )
        then
        log.message ( " > > > FPS Display Statistics: Disabled" )
        this.Idle ( )
            
    elseif ( nFPS_Mode == 1 )
        then
        log.message ( " > > > FPS Display Statistics: Started, will be updated every frame." )
        hud.newTemplateInstance ( hUser, "FPS_Display", "FPS_Display" )	    
        this.ShowFPS_EveryFrame ( )
        
    elseif ( nFPS_Mode == 2 )
        then
        log.message ( " > > > FPS Display Statistics: Started, will be updated every ", this.nDelayTime ( ), " seconds" )
        hud.newTemplateInstance ( hUser, "FPS_Display", "FPS_Display" )	    
        this.Idle ()
        this.sendEvent ( "onCyclePostevent" )

    end
    
    local hDrawCallsLabel = hudGetComponent ( hUser, "FPS_Display.lbl_DrawCalls" )
    local hTrianglesLabel = hudGetComponent ( hUser, "FPS_Display.lbl_Triangles" )
    local hVerticesLabel = hudGetComponent ( hUser, "FPS_Display.lbl_Vertices" )
    local hMemoryLabel = hudGetComponent ( hUser, "FPS_Display.lbl_Memory" )
    local hMsgCredits = hudGetComponent ( hUser, "FPS_Display.msg_Credits" )
        
    -- Hide unused HUD elements, if only the FPS counter is to be displayed
    if ( this.bOnlyFPS ( ) == true )
    then
        hud.setComponentVisible  ( hDrawCallsLabel,  false )
        hud.setComponentVisible  ( hTrianglesLabel,  false )
        hud.setComponentVisible  ( hVerticesLabel,   false )
        hud.setComponentVisible  ( hMemoryLabel,     false )
        hud.setComponentPosition ( hMsgCredits,      0, 85 )

    end
    
    log.message ( " > > > Presented by Archimmersion to the ShiVa developer community" )
    log.message ( " > > > Visit us for more tools and tutorials :" )
    log.message ( " > > > http://www.archimmersion.com < < < " )
    
    if ( system.getClientType ( ) ~= system.kClientTypeEditor )
    then
    	hud.setComponentVisible ( hMsgCredits, false )
    end
        
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
 