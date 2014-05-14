--------------------------------------------------------------------------------
--  Function......... : getModel
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ExternalSTK.getModel ( sModel )
--------------------------------------------------------------------------------
	
	--
	-- Checks to see if a model is referenced in the project and tries to fall
    -- back to known pack files if it isn't.
	--
    if application.isModelReferenced ( sModel ) then
        return sModel
    end
    
    --
    -- If you have multiple pack files, you may need to add more checks after this.
    --
    if application.isModelReferenced ( "MatsAndModels/" .. sModel ) then
        return "MatsAndModels/" .. sModel
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
