--------------------------------------------------------------------------------
--  Function......... : testMultiplication
--  Author........... : 
--  Description...... : Is multiplication faster than division in LUA?
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Benchmark.testMultiplication ( nCount )
--------------------------------------------------------------------------------
	
    log.message ( "Starting test" )
    local a = {}
    local b = {}
    local limit = 100000000
    for i = 0, limit do
        --a[i] = math.random ( 0, 5 )
        b[i] = math.random ( 0, 5 )
    end
    
	local t1, t2, dtDiv, dtMul
    for run = 0, nCount do
        t1 = system.getUnixTimestampString ( )
        for i = 0, limit - 1 do
              a[i] = b[i] / i
        end
        t2 = system.getUnixTimestampString ( )
        dtDiv = this.timeStampDiffUnoptimized ( t1, t2, 0 )
        
        t1 = system.getUnixTimestampString ( )
        for i = 0, limit - 1 do
            a[i] = b[i] * i
        end
        t2 = system.getUnixTimestampString ( )
        dtMul = this.timeStampDiffUnoptimized ( t1, t2, 0 )
        
        log.message ( "Run ", run, " - Div: ", dtDiv )
        log.message ( "Run ", run, " - Mul: ", dtMul )
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
