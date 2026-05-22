if settings.startup["bobmods-power-steam"].value == true then
  if data.raw.item["bob-steel-pipe"] then
    bobmods.lib.recipe.add_ingredient("bob-boiler-2", { type = "item", name = "bob-steel-pipe", amount = 4 })
  end

  if data.raw.item["bob-nickel-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-boiler-3", "steel-plate", "bob-nickel-plate")
    bobmods.lib.tech.add_prerequisite("bob-boiler-3", "bob-nickel-processing")
  end

  if data.raw.item["bob-aluminium-pipe"] then
    bobmods.lib.recipe.add_ingredient("bob-boiler-3", { type = "item", name = "bob-aluminium-pipe", amount = 4 })
    bobmods.lib.tech.add_prerequisite("bob-boiler-3", "bob-aluminium-processing")
  end

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-boiler-4", "steel-plate", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-boiler-4", "bob-invar-processing")
  end

  if data.raw.item["bob-titanium-pipe"] then
    bobmods.lib.recipe.add_ingredient("bob-boiler-4", { type = "item", name = "bob-titanium-pipe", amount = 4 })
    bobmods.lib.tech.add_prerequisite("bob-boiler-4", "bob-titanium-processing")
  end

  if data.raw.item["bob-copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-boiler-5", "steel-plate", "bob-copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-boiler-5", "bob-tungsten-processing")
  end

  if data.raw.item["bob-copper-tungsten-pipe"] then
    bobmods.lib.recipe.add_ingredient("bob-boiler-5", { type = "item", name = "bob-copper-tungsten-pipe", amount = 4 })
  end
end
