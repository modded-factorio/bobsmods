if settings.startup["bobmods-power-steam"].value == true then
  if data.raw.item["steel-pipe"] then
    bobmods.lib.recipe.add_ingredient("boiler-2", { type = "item", name = "steel-pipe", amount = 4 })
  end

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("boiler-3", "steel-plate", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-boiler-3", "bob-invar-processing")
  end

  if data.raw.item["brass-pipe"] then
    bobmods.lib.recipe.add_ingredient("boiler-3", { type = "item", name = "brass-pipe", amount = 4 })
    bobmods.lib.tech.add_prerequisite("bob-boiler-3", "bob-zinc-processing")
  end

  if data.raw.item["bob-tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("boiler-4", "steel-plate", "bob-tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-boiler-4", "bob-tungsten-processing")
  end

  if data.raw.item["ceramic-pipe"] then
    bobmods.lib.recipe.add_ingredient("boiler-4", { type = "item", name = "ceramic-pipe", amount = 4 })
    bobmods.lib.tech.add_prerequisite("bob-boiler-4", "bob-ceramics")
  end

  if data.raw.item["bob-copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("boiler-5", "steel-plate", "bob-copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-boiler-5", "bob-tungsten-alloy-processing")
  end

  if data.raw.item["copper-tungsten-pipe"] then
    bobmods.lib.recipe.add_ingredient("boiler-5", { type = "item", name = "copper-tungsten-pipe", amount = 4 })
  elseif data.raw.item["tungsten-pipe"] then
    bobmods.lib.recipe.add_ingredient("boiler-5", { type = "item", name = "tungsten-pipe", amount = 4 })
  end
end
