--------------------------------------------------------------------------------
--  Function......... : interpolatorsInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HudInterpolation.interpolatorsInit ( )
--------------------------------------------------------------------------------
	
    local ht = this.htInterpolators ( )
    hashtable.add ( ht, "Linear",   hud.kInterpolatorTypeLinear )
    hashtable.add ( ht, "Power2",   hud.kInterpolatorTypePower2 )
    hashtable.add ( ht, "Power3",   hud.kInterpolatorTypePower3 )
    hashtable.add ( ht, "Power4",   hud.kInterpolatorTypePower4 )
    hashtable.add ( ht, "Root2",    hud.kInterpolatorTypeRoot2 )
    hashtable.add ( ht, "Root3",    hud.kInterpolatorTypeRoot3 )
    hashtable.add ( ht, "Root4",    hud.kInterpolatorTypeRoot4 )
    hashtable.add ( ht, "Spring1",  hud.kInterpolatorTypeSpring1 )
    hashtable.add ( ht, "Spring2",  hud.kInterpolatorTypeSpring2 )
    hashtable.add ( ht, "Spring3",  hud.kInterpolatorTypeSpring3 )
    hashtable.add ( ht, "Spring4",  hud.kInterpolatorTypeSpring4 )
    hashtable.add ( ht, "Spring5",  hud.kInterpolatorTypeSpring5 )
    hashtable.add ( ht, "Spring6",  hud.kInterpolatorTypeSpring6 )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
---
