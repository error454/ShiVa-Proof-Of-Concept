--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function SimplexNoiseAI.onInit (  )
--------------------------------------------------------------------------------
	
	--hud.newTemplateInstance ( this.getUser ( ), "save", "hud" )
	--hud.newTemplateInstance ( this.getUser ( ), "reference", "ref" )
    application.setCurrentUserScene ( "scene" )
    --user.sendEvent ( this.getUser ( ), "FPS_Display_Main", "onStart" )
	--noise.render2DSimplex ( "pixel1024" )
    
    --Clouds!
    --noise.render2DSimplexOctave ( "pixel1024", 5, 0.4, 0.005 )
    
    --noise.render2DSimplexOctave ( "pixel1024", 5, 0.5, 0.005 )
    --noise.render2DSimplexOctaveExp ( "pixel1024", 5, 0.5, 0.005, 120, 0.99 )
    --noise.renderNebula ( "pixel1024", 5, 0.5, 0.005, 140, 0.99, 2 )
    
    
    --this.purpleThunder ( )
    --this.cottonCandy ( )
    --this.redDward ( )
    --this.blueStorm ( )
    
    --[[
    noise.renderNebulaC ( "pixel1024", 
        5, 0.5, 0.002, 255, 0.99, 11,
        5, 0.4, 0.0007, 100, 0.99, 7,
        5, 0.4, 0.0007, 100, 0.99, 7,
        5, 0.4, 0.0006, 160, 0.99, 7)
        --7, 0.5, 0.001, 120, 0.98, 2 ) --like this for blue, nice and subtle
]]
--[[
    noise.renderNebulaC ( "pixel1024", 
        5, 0.5, 0.002, 255, 0.99, 11,
        5, 0.4, 0.0006, 90, 0.99, 7,
        7, 0.5, 0.001, 100, 0.99, 3,
        5, 0.4, 0.0006, 90, 0.99, 7)
        ]]
    
    this.sFile ( system.getUnixTimestampString ( ) .. "-" )
    --local time = system.getTimeOfDay ( )
    --this.clearMap ( "pixel2048" )
    --this.redDward ( )
    --octaves, persistance, scale, cover, sharpness, seed
    --this.titleNebula ( )
    --log.message ( system.getTimeOfDay ( ) - time )
    
    --noise.rendeStars ( "pixel1024", 501, 1, 6 )
    --noise.render2DSimplexOctave ( "pixel1024", 10, 1, 0.008 )
    --noise.render2DSimplexOctaveExp ( "pixel1024", 10, 1, 0.008, 120, 0.99 )
    --this.clearMap ( "pixel1024Stars" )
    --time = system.getTimeOfDay ( )
    --noise.rendeSimplexStarsEx ( "pixel1024Stars", 20, 1, 0.008, 160, 0.99, 115 )
    --log.message ( system.getTimeOfDay ( ) - time )
    --noise.rendeSimplexStars ( "pixel1024", 10, 1, 0.008, 90, 0.95 )
    
    --this.clearMap ( "pixel1024" )
    --noise.rendeSimplexStarsEx ( "pixel1024", 10, 1, 0.008, 100, 0.95, 0 )
--    noise.render2DSimplexOctaveExp ( "bgModulator", 3, 1, 0.01, 255, 0.99 )
    
    this.cottonCandy ( )
    --this.postEvent ( 0.3, "onMakeRandomNebula" )

--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
