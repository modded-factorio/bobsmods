if
  settings.startup["bobmods-plates-purewater"]
  and settings.startup["bobmods-plates-purewater"].value == true
  and settings.startup["bobmods-assembly-distilleries"].value
then
  if data.raw.furnace["bob-distillery"] then
    data.raw.furnace["bob-distillery"].next_upgrade = "bob-distillery-2"
  else
    data.raw["assembling-machine"]["bob-distillery"].next_upgrade = "bob-distillery-2"
  end

  bobmods.lib.recipe.replace_ingredient("bob-distillery", "pipe", "copper-pipe")
  if data.raw.item["glass"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery", "copper-plate", "glass")
  end

  if data.raw.item["bronze-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-2", "copper-plate", "bronze-alloy")
    bobmods.lib.tech.add_prerequisite("bob-distillery-2", "alloy-processing")
  end

  if data.raw.item["bronze-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-2", "pipe", "bronze-pipe")
  end

  if data.raw.item["brass-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-3", "copper-plate", "brass-alloy")
  end

  if data.raw.item["brass-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-3", "pipe", "brass-pipe")
    bobmods.lib.tech.add_prerequisite("bob-distillery-3", "zinc-processing")
  end

  if data.raw.item["invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-3", "steel-plate", "invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-distillery-3", "invar-processing")
  end

  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-4", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-distillery-4", "tungsten-processing")
  end

  if data.raw.item["ceramic-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-4", "pipe", "ceramic-pipe")
  end

  if data.raw.item["silicon-nitride"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-4", "copper-plate", "silicon-nitride")
    bobmods.lib.tech.add_prerequisite("bob-distillery-4", "ceramics")
  end

  if data.raw.item["nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-5", "steel-plate", "nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-distillery-5", "nitinol-processing")
  end

  if data.raw.item["copper-tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-5", "pipe", "copper-tungsten-pipe")
    bobmods.lib.tech.add_prerequisite("bob-distillery-5", "tungsten-alloy-processing")
  elseif data.raw.item["tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-5", "pipe", "tungsten-pipe")
    bobmods.lib.tech.add_prerequisite("bob-distillery-5", "tungsten-processing")
  end

  if data.raw.item["copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-5", "copper-plate", "copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-distillery-5", "tungsten-alloy-processing")
  end
end
