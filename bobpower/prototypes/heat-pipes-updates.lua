--[[
Heat Pipe 1
Structure: Steel
Conductor: Copper

Heat Pipe 2
Structure: Nickel
Conductor: Aluminium

Heat Pipe 3
Structure: Invar
Conductor: Silver

Heat Pipe 4
Structure: Tungsten
Conductor: Gold
--]]

if
  settings.startup["bobmods-power-steam"].value == true
  or settings.startup["bobmods-power-nuclear"].value == true
  or settings.startup["bobmods-power-heatsources"].value == true
then
  if data.raw.item["bob-nickel-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-heat-pipe-2", "steel-plate", "bob-nickel-plate")
    bobmods.lib.tech.add_prerequisite("bob-heat-pipe-2", "bob-nickel-processing")
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-heat-pipe-2", "copper-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("bob-heat-pipe-2", "bob-aluminium-processing")
  end

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-heat-pipe-3", "steel-plate", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-heat-pipe-3", "bob-invar-processing")
  end

  if data.raw.item["bob-silver-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-heat-pipe-3", "copper-plate", "bob-silver-plate")
    bobmods.lib.tech.add_prerequisite("bob-heat-pipe-3", "bob-lead-processing")
  end

  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-heat-pipe-4", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-heat-pipe-4", "bob-tungsten-processing")
  end

  if data.raw.item["bob-gold-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-heat-pipe-4", "copper-plate", "bob-gold-plate")
    bobmods.lib.tech.add_prerequisite("bob-heat-pipe-4", "bob-gold-processing")
  end
end
