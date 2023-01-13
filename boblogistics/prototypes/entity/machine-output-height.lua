--check if height if set if not use assume height is default => 1 and just set to max pipe height
local function GetNewLevel(originalHeight)

    if not (originalHeight) then originalHeight = 1 end

    return originalHeight * bobmods.logistics.pipe_height(bobmods.logistics.maxPipeTier)
end


--Multiplies the base level of fluid boxes for machine outputs by the height of the highest tier pipe.
--Scales area instead of height so output can always empty itself regardless of how full the output is.
--Only scale machine outputs not in/outputs as scaling up base_level for those woudn't work.
function bobmods.logistics.scale_machine_output_base_level()

    local entity_table = {}
    for type in pairs(defines.prototypes.entity) do
        for _, prototype in pairs(data.raw[type]) do
            entity_table[prototype.name] = prototype
        end
    end

    for _, entity in pairs(entity_table) do
       if entity.fluid_boxes then
            for key, fluidBox in pairs(entity.fluid_boxes) do
                if key == "off_when_no_fluid_recipe" then goto next end
                if fluidBox.production_type == "output" then
                    fluidBox.base_level = GetNewLevel(fluidBox.height)
                end
                ::next::
            end
        elseif entity.output_fluid_box then
            entity.output_fluid_box.base_level = GetNewLevel(entity.output_fluid_box.height)
        elseif entity.type == "offshore-pump" then
            entity.fluid_box.base_level = GetNewLevel(entity.fluid_box.height)
        end      
    end
end

