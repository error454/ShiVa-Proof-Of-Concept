--------------------------------------------------------------------------------
--  Function......... : testTableCache
--  Author........... : 
--  Description...... : Is there a noticeable performance difference when caching table entries?
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Benchmark.testTableCache ( size )
--------------------------------------------------------------------------------
	
	table.reserve ( this.tTable ( ), size )
	table.reserve ( this.tTable2 ( ), size )
    for i = 0, size - 1 do
          table.add ( this.tTable ( ), 0 )
    end
    
    table.copy ( this.tTable2 ( ), this.tTable ( ) )
    
    local t1, t2, uncached, cached
    for run = 0, 10 do
        t1 = system.getUnixTimestampString ( )
        for i = 0, table.getSize ( this.tTable ( ) ) - 1 do
              local a = table.getAt ( this.tTable ( ), i )
              table.setAt ( this.tTable ( ), i, math.sin ( a )  )
        end
        t2 = system.getUnixTimestampString ( )
        uncached = this.timeStampDiffUnoptimized ( t1, t2, 0 )
        
        log.message ( "Run ", run, " - Uncached: ", uncached )
    end
    
    local t = this.tTable2 ( )
    local get = table.getAt
    local set = table.setAt
    local sin = math.sin
    for run = 0, 10 do
        t1 = system.getUnixTimestampString ( )
        for i = 0, table.getSize ( t ) - 1 do
            local a = get( t, i )
            set( t, i, sin(a) )
        end
        t2 = system.getUnixTimestampString ( )
        cached = this.timeStampDiffUnoptimized ( t1, t2, 0 )
        
        log.message ( "Run ", run, " - Cached  : ", cached )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
