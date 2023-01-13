--check if height if set if not use assume height is default => 1 and just set to max pipe height
local function GetNewHeight(originalHeight)

    if not (originalHeight) then originalHeight = 1 end

    return originalHeight * bobmods.logistics.pipe_height(bobmods.logistics.maxPipeTier)
end


--Multiplies the height of fluid boxes/output fluid boxes on all crafting machines, miners/pumpjacks and offshore pumps by the height of the highest tier pipe.
function bobmods.logistics.scale_machine_output_height()

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
                    fluidBox.height = GetNewHeight(fluidBox.height)
                end
                ::next::
            end
        elseif entity.output_fluid_box then
            entity.output_fluid_box.height = GetNewHeight(entity.output_fluid_box.height)
        elseif entity.type == "offshore-pump" then
            entity.fluid_box.height = GetNewHeight(entity.fluid_box.height)
        end      
    end
end

