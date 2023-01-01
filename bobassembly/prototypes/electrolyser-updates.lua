if
  settings.startup["bobmods-assembly-electrolysers"].value
  and data.raw.technology["electrolysis-1"]
  and data.raw.item["electrolyser"]
  and data.raw["recipe-category"]["electrolysis"]
then
  --Electrolyser power
  if
    settings.startup["bobmods-plates-expensive-electrolysis"]
    and settings.startup["bobmods-plates-expensive-electrolysis"].value == true
  then
    data.raw["assembling-machine"]["electrolyser-2"].energy_usage = "1625kW"
    data.raw["assembling-machine"]["electrolyser-3"].energy_usage = "2400kW"
    data.raw["assembling-machine"]["electrolyser-4"].energy_usage = "3025kW"
    data.raw["assembling-machine"]["electrolyser-5"].energy_usage = "3500kW"
  end

  data.raw["assembling-machine"]["electrolyser"].next_upgrade = "electrolyser-2"

  if data.raw.item["glass"] then
    bobmods.lib.recipe.replace_ingredient("electrolyser-2", "plastic-bar", "glass")
  else
    bobmods.lib.tech.add_prerequisite("electrolyser-2", "plastics")
  end

  if data.raw.item["bronze-pipe"] then
    bobmods.lib.recipe.replace_ingredient("electrolyser-2", "pipe", "bronze-pipe")
    bobmods.lib.tech.add_prerequisite("electrolyser-2", "alloy-processing")
  elseif data.raw.item["steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("electrolyser-2", "pipe", "steel-pipe")
  end

  if data.raw.item["invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("electrolyser-3", "iron-plate", "invar-alloy")
    bobmods.lib.tech.add_prerequisite("electrolyser-3", "invar-processing")
  end

  if data.raw.item["aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("electrolyser-3", "steel-plate", "aluminium-plate")
    bobmods.lib.tech.add_prerequisite("electrolyser-3", "aluminium-processing")
  end

  if data.raw.item["plastic-pipe"] then
    bobmods.lib.recipe.replace_ingredient("electrolyser-3", "pipe", "plastic-pipe")
  end

  if data.raw.item["silicon-nitride"] then
    bobmods.lib.recipe.replace_ingredient("electrolyser-4", "plastic-bar", "silicon-nitride")
    bobmods.lib.tech.add_prerequisite("electrolyser-4", "ceramics")
  end

  if data.raw.item["titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("electrolyser-4", "iron-plate", "titanium-plate")
    bobmods.lib.tech.add_prerequisite("electrolyser-4", "titanium-processing")
  end

  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("electrolyser-4", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("electrolyser-4", "tungsten-processing")
  end

  if data.raw.item["ceramic-pipe"] then
    bobmods.lib.recipe.replace_ingredient("electrolyser-4", "pipe", "ceramic-pipe")
  end

  if data.raw.item["tungsten-carbide"] then
    bobmods.lib.recipe.replace_ingredient("electrolyser-5", "plastic-bar", "tungsten-carbide")
  end

  if data.raw.item["nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("electrolyser-5", "iron-plate", "nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("electrolyser-5", "nitinol-processing")
  end

  if data.raw.item["copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("electrolyser-5", "steel-plate", "copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("electrolyser-5", "tungsten-alloy-processing")
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("electrolyser-5", "processing-unit", "advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("electrolyser-5", "advanced-electronics-3")
  end

  if data.raw.item["copper-tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("electrolyser-5", "pipe", "copper-tungsten-pipe")
  end

  if settings.startup["bobmods-assembly-limits"].value == true then
    data.raw["assembling-machine"]["electrolyser"].ingredient_count = 4
    data.raw["assembling-machine"]["electrolyser-2"].ingredient_count = 6
    data.raw["assembling-machine"]["electrolyser-3"].ingredient_count = 8
    data.raw["assembling-machine"]["electrolyser-4"].ingredient_count = 10
  end
end
