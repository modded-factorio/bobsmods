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

  bobmods.lib.recipe.replace_ingredient("bob-distillery", "pipe", "bob-copper-pipe")
  if data.raw.item["bob-glass"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery", "copper-plate", "bob-glass")
  end

  if data.raw.item["bob-bronze-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-2", "copper-plate", "bob-bronze-alloy")
    bobmods.lib.tech.add_prerequisite("bob-distillery-2", "bob-alloy-processing")
  end

  if data.raw.item["bob-bronze-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-2", "pipe", "bob-bronze-pipe")
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-3", "copper-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("bob-distillery-3", "bob-aluminium-processing")
  end

  if data.raw.item["bob-plastic-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-3", "pipe", "bob-plastic-pipe")
    bobmods.lib.tech.add_prerequisite("bob-distillery-3", "plastics")
  end

  if data.raw.item["bob-nickel-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-3", "steel-plate", "bob-nickel-plate")
    bobmods.lib.tech.add_prerequisite("bob-distillery-3", "bob-nickel-processing")
  end

  if data.raw.item["bob-brass-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-4", "copper-plate", "bob-brass-alloy")
    bobmods.lib.tech.add_prerequisite("bob-distillery-4", "bob-brass-processing")
  end

  if data.raw.item["bob-brass-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-4", "pipe", "bob-brass-pipe")
    bobmods.lib.tech.add_prerequisite("bob-distillery-4", "bob-brass-processing")
  end

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-4", "steel-plate", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-distillery-4", "bob-invar-processing")
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-5", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-distillery-5", "bob-nitinol-processing")
  end

  if data.raw.item["bob-copper-tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-5", "pipe", "bob-copper-tungsten-pipe")
    bobmods.lib.tech.add_prerequisite("bob-distillery-5", "bob-tungsten-processing")
  end

  if data.raw.item["bob-copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-5", "copper-plate", "bob-copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-distillery-5", "bob-tungsten-processing")
  end
end
