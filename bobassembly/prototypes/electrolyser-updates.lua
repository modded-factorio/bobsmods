if
  settings.startup["bobmods-assembly-electrolysers"].value
  and data.raw.technology["electrolysis-1"]
  and data.raw.item["bob-electrolyser"]
  and data.raw["recipe-category"]["electrolysis"]
then
  --Electrolyser power
  if
    settings.startup["bobmods-plates-expensive-electrolysis"]
    and settings.startup["bobmods-plates-expensive-electrolysis"].value == true
  then
    data.raw["assembling-machine"]["bob-electrolyser-2"].energy_usage = "1625kW"
    data.raw["assembling-machine"]["bob-electrolyser-2"].energy_source.drain = "18kW"
    data.raw["assembling-machine"]["bob-electrolyser-3"].energy_usage = "2400kW"
    data.raw["assembling-machine"]["bob-electrolyser-3"].energy_source.drain = "27kW"
    data.raw["assembling-machine"]["bob-electrolyser-4"].energy_usage = "3025kW"
    data.raw["assembling-machine"]["bob-electrolyser-4"].energy_source.drain = "34kW"
    data.raw["assembling-machine"]["bob-electrolyser-5"].energy_usage = "3500kW"
    data.raw["assembling-machine"]["bob-electrolyser-5"].energy_source.drain = "39kW"
  end

  data.raw["assembling-machine"]["bob-electrolyser"].next_upgrade = "bob-electrolyser-2"

  if data.raw.item["bob-glass"] then
    bobmods.lib.recipe.replace_ingredient("bob-electrolyser-2", "plastic-bar", "bob-glass")
  else
    bobmods.lib.tech.add_prerequisite("bob-electrolyser-2", "plastics")
  end

  if data.raw.item["bronze-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-electrolyser-2", "pipe", "bronze-pipe")
    bobmods.lib.tech.add_prerequisite("bob-electrolyser-2", "alloy-processing")
  elseif data.raw.item["steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-electrolyser-2", "pipe", "steel-pipe")
  end

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-electrolyser-3", "iron-plate", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-electrolyser-3", "invar-processing")
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-electrolyser-3", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("bob-electrolyser-3", "aluminium-processing")
  end

  if data.raw.item["plastic-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-electrolyser-3", "pipe", "plastic-pipe")
  end

  if data.raw.item["bob-silicon-nitride"] then
    bobmods.lib.recipe.replace_ingredient("bob-electrolyser-4", "plastic-bar", "bob-silicon-nitride")
    bobmods.lib.tech.add_prerequisite("bob-electrolyser-4", "ceramics")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-electrolyser-4", "iron-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-electrolyser-4", "titanium-processing")
  end

  if data.raw.item["bob-tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-electrolyser-4", "steel-plate", "bob-tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-electrolyser-4", "tungsten-processing")
  end

  if data.raw.item["ceramic-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-electrolyser-4", "pipe", "ceramic-pipe")
  end

  if data.raw.item["bob-tungsten-carbide"] then
    bobmods.lib.recipe.replace_ingredient("bob-electrolyser-5", "plastic-bar", "bob-tungsten-carbide")
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-electrolyser-5", "iron-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-electrolyser-5", "nitinol-processing")
  end

  if data.raw.item["bob-copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-electrolyser-5", "steel-plate", "bob-copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-electrolyser-5", "tungsten-alloy-processing")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-electrolyser-5", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-electrolyser-5", "bob-advanced-processing-unit")
  end

  if data.raw.item["copper-tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-electrolyser-5", "pipe", "copper-tungsten-pipe")
  end

  if settings.startup["bobmods-assembly-limits"].value == true then
    data.raw["assembling-machine"]["bob-electrolyser"].ingredient_count = 4
    data.raw["assembling-machine"]["bob-electrolyser-2"].ingredient_count = 6
    data.raw["assembling-machine"]["bob-electrolyser-3"].ingredient_count = 8
    data.raw["assembling-machine"]["bob-electrolyser-4"].ingredient_count = 10
  end
end
