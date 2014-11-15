--------------------------------------------------------------------------------
--  Function......... : arrangeWindows
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function DebugHUD.arrangeWindows ( hContainer )
--------------------------------------------------------------------------------
	
    local windowWidth = 20
    local windowHeight = 10
    local windowsPerColumn = math.floor ( 100 / windowHeight )
    
    hud.setComponentSize ( hContainer, windowWidth, windowHeight )
    hud.setComponentOrigin ( hContainer, hud.kOriginTopRight )
    
    -- increment x by windowWidth for every windowsPerColumn
    local x = 100 - math.floor(this.nWindowCount ( ) / windowsPerColumn) * windowWidth
    local y = 100 - math.mod ( this.nWindowCount ( ), windowsPerColumn  ) * windowHeight
    
    hud.setComponentPosition ( hContainer, x, y )
	
    this.nWindowCount ( this.nWindowCount ( ) + 1 )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
