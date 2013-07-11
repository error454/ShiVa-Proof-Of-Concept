--------------------------------------------------------------------------------
--  Function......... : updateRainBounds
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function RainAI.updateRainBounds ( )
--------------------------------------------------------------------------------
	local hCamera = application.getCurrentUserActiveCamera ( )
    
	local notUsed, notUsed2, targetPlane = camera.projectPoint ( hCamera, 0, 0, 0 )
    local xMax, yMax = camera.unprojectPoint ( hCamera, 1, 1, targetPlane)
    local xMin, yMin = camera.unprojectPoint ( hCamera, -1, -1, targetPlane )
    
    table.empty ( this.tRainBounds ( ) )
    table.add ( this.tRainBounds ( ), xMin )
    table.add ( this.tRainBounds ( ), yMin )
    table.add ( this.tRainBounds ( ), xMax )
    table.add ( this.tRainBounds ( ), yMax )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
