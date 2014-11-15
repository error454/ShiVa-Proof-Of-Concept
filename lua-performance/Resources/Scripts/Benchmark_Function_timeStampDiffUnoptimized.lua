--------------------------------------------------------------------------------
--  Function......... : timeStampDiffUnoptimized
--  Author........... : http://www.shivaengine.com/developer/wiki/index.php?title=Unix_TimeStamp_Difference
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Benchmark.timeStampDiffUnoptimized ( sUnixTimestampA, sUnixTimestampB, nDigitPrecision )
--------------------------------------------------------------------------------
 
    if(nDigitPrecision == nil)
    then
        nDigitPrecision = 0 -- digits that will be cut of at the end e.g. "123456" with precision "1" becomes "12345"
    end
 
    if(string.getLength ( sUnixTimestampA ) ~= string.getLength ( sUnixTimestampB ) )
    then
        log.warning ( "Timestamps A und B length differs: can not compare them -> abort")
        return nil
    end
 
    if(string.compare ( sUnixTimestampA, sUnixTimestampB ) == 0)
    then
        return 0
    end
 
   local nLength = string.getLength ( sUnixTimestampA )
    local sDigitA
    local sDigitB
    local nDifferenceFoundAt = -1
    local sResultA = ""
    local sResultB = ""
    local nResultA = 0
    local nResultB = 0
 
    -- cut digits
    if(nDigitPrecision > 0)
    then
        sUnixTimestampA = string.getSubString ( sUnixTimestampA, 0, nLength - nDigitPrecision )
        sUnixTimestampB = string.getSubString ( sUnixTimestampB, 0, nLength - nDigitPrecision )
    end
 
    -- find start of difference
    for i=0, nLength-1
    do
       sDigitA = string.getSubString ( sUnixTimestampA, i, 1 )
        sDigitB = string.getSubString ( sUnixTimestampB, i, 1 )
        if(string.compare ( sDigitA, sDigitB ) ~= 0)
        then
            nDifferenceFoundAt = i
            break
        end
    end
 
    if(nDifferenceFoundAt == -1)
    then
        return 0
    else
        sResultA = string.getSubString ( sUnixTimestampA, nDifferenceFoundAt, nLength - nDifferenceFoundAt )
        sResultB = string.getSubString ( sUnixTimestampB, nDifferenceFoundAt, nLength - nDifferenceFoundAt )
    end
 
    -- if difference is too big return error
    if(string.getLength ( sResultA ) == 0 or string.getLength ( sResultA ) > 7)
    then
        log.warning ( "Time Difference is too ig for StoneScript LUA: " .. sResult )
        return nil
    end
 
    if(string.getLength ( sResultB ) == 0 or string.getLength ( sResultB ) > 7)
    then
        log.warning ( "Time Difference is too ig for StoneScript LUA: " .. sResult )
        return nil
    end
 
    nResultA = string.toNumber ( sResultA )
    nResultB = string.toNumber ( sResultB )
 
    return nResultB - nResultA -- assume a is die lower value
 
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------