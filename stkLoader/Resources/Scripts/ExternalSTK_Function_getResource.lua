--------------------------------------------------------------------------------
--  Function......... : getResource
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ExternalSTK.getResource ( sResource, kType )
--------------------------------------------------------------------------------
	
	--
	-- Checks to see if a resource is referenced in the project and tries to fall
    -- back to known pack files if it isn't.
	--
    if application.isResourceReferenced ( sResource, kType ) then
        return sResource
    end
    
    --
    -- If you have multiple pack files, you may need to add more checks after this.
    --
    if application.isResourceReferenced ( "MatsAndModels/" .. sResource, kType ) then
        return "MatsAndModels/" .. sResource
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
