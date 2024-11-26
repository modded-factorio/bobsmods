--[[
Heat Pipe 1
Structure: Steel
Conductor: Copper

Heat Pipe 2
Structure: Invar
Conductor: Aluminium

Heat Pipe 3
Structure: Titanium/Tungsten
Conductor: Silver

Heat Pipe 4
Structure: Copper Tungsten
Conductor: Gold
--]]

if
  settings.startup["bobmods-power-steam"].value == true
  or settings.startup["bobmods-power-nuclear"].value == true
  or settings.startup["bobmods-power-heatsources"].value == true
then
  if data.raw.item["invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("heat-pipe-2", "steel-plate", "invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-heat-pipe-2", "invar-processing")
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("heat-pipe-2", "copper-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("bob-heat-pipe-2", "aluminium-processing")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("heat-pipe-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-heat-pipe-3", "titanium-processing")
  elseif data.raw.item["bob-tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("heat-pipe-3", "steel-plate", "bob-tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-heat-pipe-3", "tungsten-processing")
  end

  if data.raw.item["silver-plate"] then
    bobmods.lib.recipe.replace_ingredient("heat-pipe-3", "copper-plate", "silver-plate")
  end

  if data.raw.item["copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("heat-pipe-4", "steel-plate", "copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-heat-pipe-4", "tungsten-alloy-processing")
  end

  if data.raw.item["bob-gold-plate"] then
    bobmods.lib.recipe.replace_ingredient("heat-pipe-4", "copper-plate", "bob-gold-plate")
    bobmods.lib.tech.add_prerequisite("bob-heat-pipe-4", "gold-processing")
  end
end
