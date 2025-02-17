if settings.startup["bobmods-power-steam"].value == true then
  if data.raw.item["bob-steel-pipe"] then
    bobmods.lib.recipe.add_ingredient("bob-boiler-2", { type = "item", name = "bob-steel-pipe", amount = 4 })
  end

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-boiler-3", "steel-plate", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-boiler-3", "bob-invar-processing")
  end

  if data.raw.item["bob-brass-pipe"] then
    bobmods.lib.recipe.add_ingredient("bob-boiler-3", { type = "item", name = "bob-brass-pipe", amount = 4 })
    bobmods.lib.tech.add_prerequisite("bob-boiler-3", "bob-zinc-processing")
  end

  if data.raw.item["bob-tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-boiler-4", "steel-plate", "bob-tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-boiler-4", "bob-tungsten-processing")
  end

  if data.raw.item["bob-ceramic-pipe"] then
    bobmods.lib.recipe.add_ingredient("bob-boiler-4", { type = "item", name = "bob-ceramic-pipe", amount = 4 })
    bobmods.lib.tech.add_prerequisite("bob-boiler-4", "bob-ceramics")
  end

  if data.raw.item["bob-copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-boiler-5", "steel-plate", "bob-copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-boiler-5", "bob-tungsten-alloy-processing")
  end

  if data.raw.item["bob-copper-tungsten-pipe"] then
    bobmods.lib.recipe.add_ingredient("bob-boiler-5", { type = "item", name = "bob-copper-tungsten-pipe", amount = 4 })
  elseif data.raw.item["bob-tungsten-pipe"] then
    bobmods.lib.recipe.add_ingredient("bob-boiler-5", { type = "item", name = "bob-tungsten-pipe", amount = 4 })
  end
end
