--------------------------------------------------------------------------------
--  State............ : FollowCharacters
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function CameraFX.FollowCharacters_onLoop ( )
--------------------------------------------------------------------------------
	
    local hUser = this.getUser ( )
    local hScene = application.getCurrentUserScene ( )
    local hCamera = application.getCurrentUserActiveCamera ( )
    local dt = application.getLastFrameTime ( )
    
	--
	-- Get tPlayer
	--
    local tPlayers
    if(user.hasAIModel ( hUser, "MashupAI" )) then
        tPlayers = user.getAIVariable ( hUser, "MashupAI", "tPlayers" )
    elseif(user.hasAIModel ( hUser, "CharacterMechanics" )) then
        tPlayers = user.getAIVariable ( hUser, "CharacterMechanics", "tPlayers" )
    elseif(user.hasAIModel ( hUser, "CharacterViewer" )) then
        tPlayers = user.getAIVariable ( hUser, "CharacterViewer", "tPlayers" )        
	end
    
    if(not tPlayers) then return 0 end
    
    --
    -- Get center of all Players
    -- 
    local x, y, z, r, dy = this.playerGetCenter ( tPlayers )
    if(x == nil ) then return 0 end
    
    -- Update horizontal bias.  this is what causes the camera to favor centering characters at the left or right 3rd
    --local camX, camY, camZ = object.getTranslation ( hCamera, object.kGlobalSpace )
    
    if( x > this.nLastX ( )) then
        this.nHorizontalBias ( math.clamp ( this.nHorizontalBias ( ) + dt * 0.3, -1, 1 ) )
    elseif(x < this.nLastX ( )) then
        this.nHorizontalBias ( math.clamp ( this.nHorizontalBias ( ) - dt * 0.3, -1, 1 ) )
    else
        this.nHorizontalBias ( math.interpolate ( this.nHorizontalBias ( ), 0, dt * 0.5 ))
    end
    
    --log.message ( this.nHorizontalBias ( ))
    r = math.max ( r, 50 )
    
    --
    -- Hang on to x and z, now determine the optimum Y
    --
    local nFixedYOffset = 1
    local nFixedZoomOffset = 10
    r = r + this.nFixedZoomOffset ( )
    
    y = math.interpolate ( y, 0.22 * r, this.nFixedRatio ( ) )
    y = y + this.nFixedYOffset ( )
    y = math.min ( 50, y )
    
    object.translateTo ( hCamera, x + this.nHorizontalBias ( ) * 10, y, z + r + math.abs ( dy ) * 0.1 , object.kGlobalSpace, dt * 10  )
    object.lookAt ( hCamera, x + this.nHorizontalBias ( ) * 10, y, z, object.kGlobalSpace, dt * this.nTrackingSpeed ( ) )
    this.nLastX ( x )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
