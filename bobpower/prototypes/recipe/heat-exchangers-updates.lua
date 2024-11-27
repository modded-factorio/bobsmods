if settings.startup["bobmods-power-steam"].value == true then
  if data.raw.item["invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("heat-exchanger-2", "steel-plate", "invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-heat-exchanger-2", "invar-processing")
  else
    if data.raw.item["brass-alloy"] then
      bobmods.lib.recipe.replace_ingredient("heat-exchanger-2", "steel-plate", "brass-alloy")
      bobmods.lib.tech.add_prerequisite("bob-heat-exchanger-2", "zinc-processing")
    end
  end

  if data.raw.item["brass-pipe"] then
    bobmods.lib.recipe.add_ingredient("heat-exchanger-2", { type = "item", name = "brass-pipe", amount = 4 })
  end
  if data.raw.item["bob-tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("heat-exchanger-3", "steel-plate", "bob-tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-heat-exchanger-3", "tungsten-processing")
  end
  if data.raw.item["ceramic-pipe"] then
    bobmods.lib.recipe.add_ingredient("heat-exchanger-3", { type = "item", name = "ceramic-pipe", amount = 4 })
    bobmods.lib.tech.add_prerequisite("bob-heat-exchanger-3", "ceramics")
  end
  if data.raw.item["copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("heat-exchanger-4", "steel-plate", "copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-heat-exchanger-4", "tungsten-alloy-processing")
  end
  if data.raw.item["copper-tungsten-pipe"] then
    bobmods.lib.recipe.add_ingredient("heat-exchanger-4", { type = "item", name = "copper-tungsten-pipe", amount = 4 })
  elseif data.raw.item["tungsten-pipe"] then
    bobmods.lib.recipe.add_ingredient("heat-exchanger-4", { type = "item", name = "tungsten-pipe", amount = 4 })
  end

  if
    settings.startup["bobmods-plates-convert-recipes"]
    and settings.startup["bobmods-plates-convert-recipes"].value == true
  then
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-2", "heat-exchanger-2-from-boiler-3")
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-3", "heat-exchanger-3-from-boiler-4")
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-4", "heat-exchanger-4-from-boiler-5")
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-1", "boiler-2-from-heat-exchanger")
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-2", "boiler-3-from-heat-exchanger-2")
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-3", "boiler-4-from-heat-exchanger-3")
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-4", "boiler-5-from-heat-exchanger-4")
  end
end
