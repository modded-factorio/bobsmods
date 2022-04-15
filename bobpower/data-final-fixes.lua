-- Copied from https://mods.factorio.com/mod/extended-descriptions
if not mods['extended-descriptions'] then
  local function add_to_description(prototype, localised_string)
    if prototype.localised_description and prototype.localised_description ~= '' then
      prototype.localised_description = {'', prototype.localised_description, '\n', localised_string}
    else
      prototype.localised_description = localised_string
    end
    log(prototype.localised_description)
  end

  for fluid_name, fluid in pairs(data.raw.fluid) do
    if fluid.fuel_value then
      add_to_description(fluid, {'description.fluid-fuel', fluid.fuel_value})
    end
  end
end
