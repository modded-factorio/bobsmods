local function colour_barrel_recipe(fluidname, recipename)
  if data.raw.recipe[recipename] and not data.raw.recipe[recipename].crafting_machine_tint then
    data.raw.recipe[recipename].crafting_machine_tint = {
      primary = data.raw.fluid[fluidname].base_color,
      secondary = data.raw.fluid[fluidname].flow_color,
    }
  end
end

for name, fluid in pairs(data.raw["fluid"]) do
  colour_barrel_recipe(name, "fill-" .. name .. "-barrel")
  colour_barrel_recipe(name, "empty-" .. name .. "-barrel")
end

if mods["aai-industry"] then
  bobmods.lib.tech.remove_recipe_unlock("glass-processing", "glass")
end
