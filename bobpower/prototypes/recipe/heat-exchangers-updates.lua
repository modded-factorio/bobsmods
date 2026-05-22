if settings.startup["bobmods-power-steam"].value == true then
  if data.raw.item["bob-nickel-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-heat-exchanger-2", "steel-plate", "bob-nickel-plate")
    bobmods.lib.tech.add_prerequisite("bob-heat-exchanger-2", "bob-nickel-processing")
  end

  if data.raw.item["bob-aluminium-pipe"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-heat-exchanger-2",
      { type = "item", name = "bob-aluminium-pipe", amount = 4 }
    )
  end
  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-heat-exchanger-3", "steel-plate", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-heat-exchanger-3", "bob-invar-processing")
  end
  if data.raw.item["bob-titanium-pipe"] then
    bobmods.lib.recipe.add_ingredient("bob-heat-exchanger-3", { type = "item", name = "bob-titanium-pipe", amount = 4 })
    bobmods.lib.tech.add_prerequisite("bob-heat-exchanger-3", "bob-titanium-processing")
  end
  if data.raw.item["bob-copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-heat-exchanger-4", "steel-plate", "bob-copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-heat-exchanger-4", "bob-tungsten-processing")
  end
  if data.raw.item["bob-copper-tungsten-pipe"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-heat-exchanger-4",
      { type = "item", name = "bob-copper-tungsten-pipe", amount = 4 }
    )
  end

  if
    settings.startup["bobmods-plates-convert-recipes"]
    and settings.startup["bobmods-plates-convert-recipes"].value == true
  then
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-2", "bob-heat-exchanger-2-from-boiler-3")
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-3", "bob-heat-exchanger-3-from-boiler-4")
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-4", "bob-heat-exchanger-4-from-boiler-5")
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-1", "bob-boiler-2-from-heat-exchanger")
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-2", "bob-boiler-3-from-heat-exchanger-2")
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-3", "bob-boiler-4-from-heat-exchanger-3")
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-4", "bob-boiler-5-from-heat-exchanger-4")
  end
end
