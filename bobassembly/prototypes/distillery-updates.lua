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

  if data.raw.item["bob-brass-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-3", "copper-plate", "bob-brass-alloy")
    bobmods.lib.tech.add_prerequisite("bob-distillery-3", "bob-zinc-processing")
  end

  if data.raw.item["bob-brass-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-3", "pipe", "bob-brass-pipe")
    bobmods.lib.tech.add_prerequisite("bob-distillery-3", "bob-zinc-processing")
  end

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-3", "steel-plate", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-distillery-3", "bob-invar-processing")
  end

  if data.raw.item["bob-tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-4", "steel-plate", "bob-tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-distillery-4", "bob-tungsten-processing")
  end

  if data.raw.item["bob-ceramic-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-4", "pipe", "bob-ceramic-pipe")
  end

  if data.raw.item["bob-silicon-nitride"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-4", "copper-plate", "bob-silicon-nitride")
    bobmods.lib.tech.add_prerequisite("bob-distillery-4", "bob-ceramics")
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-5", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-distillery-5", "bob-nitinol-processing")
  end

  if data.raw.item["bob-copper-tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-5", "pipe", "bob-copper-tungsten-pipe")
    bobmods.lib.tech.add_prerequisite("bob-distillery-5", "bob-tungsten-alloy-processing")
  elseif data.raw.item["bob-tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-5", "pipe", "bob-tungsten-pipe")
    bobmods.lib.tech.add_prerequisite("bob-distillery-5", "bob-tungsten-processing")
  end

  if data.raw.item["bob-copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery-5", "copper-plate", "bob-copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-distillery-5", "bob-tungsten-alloy-processing")
  end
end
