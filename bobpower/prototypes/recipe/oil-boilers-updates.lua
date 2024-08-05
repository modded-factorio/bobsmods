if settings.startup["bobmods-power-steam"].value == true then
  if data.raw.item["steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("oil-boiler", "pipe", "steel-pipe")
  end

  if data.raw.item["invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("oil-boiler-2", "steel-plate", "invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-oil-boiler-2", "invar-processing")
  end

  if data.raw.item["brass-pipe"] then
    bobmods.lib.recipe.add_ingredient("oil-boiler-2", { type = "item", name = "brass-pipe", amount = 6 })
    bobmods.lib.tech.add_prerequisite("bob-oil-boiler-2", "zinc-processing")
  end

  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("oil-boiler-3", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-oil-boiler-3", "tungsten-processing")
  end

  if data.raw.item["ceramic-pipe"] then
    bobmods.lib.recipe.add_ingredient("oil-boiler-3", { type = "item", name = "ceramic-pipe", amount = 6 })
    bobmods.lib.tech.add_prerequisite("bob-oil-boiler-3", "ceramics")
  end

  if data.raw.item["copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("oil-boiler-4", "steel-plate", "copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-oil-boiler-4", "tungsten-alloy-processing")
  end

  if data.raw.item["copper-tungsten-pipe"] then
    bobmods.lib.recipe.add_ingredient("oil-boiler-4", { type = "item", name = "copper-tungsten-pipe", amount = 6 })
  elseif data.raw.item["tungsten-pipe"] then
    bobmods.lib.recipe.add_ingredient("oil-boiler-4", { type = "item", name = "tungsten-pipe", amount = 6 })
  end

  if
    settings.startup["bobmods-plates-convert-recipes"]
    and settings.startup["bobmods-plates-convert-recipes"].value == true
  then
    if data.raw.item["steel-pipe"] then
      bobmods.lib.recipe.remove_result("boiler-2-from-oil-boiler", "pipe")
      bobmods.lib.recipe.add_result("boiler-2-from-oil-boiler", { type = "item", name = "steel-pipe", amount = 2 })
    end

    if data.raw.item["brass-pipe"] then
      bobmods.lib.recipe.replace_ingredient("oil-boiler-2-from-boiler-3", "pipe", "brass-pipe")

      bobmods.lib.recipe.remove_result("boiler-3-from-oil-boiler-2", "pipe")
      bobmods.lib.recipe.add_result("boiler-3-from-oil-boiler-2", { type = "item", name = "brass-pipe", amount = 2 })
    end

    if data.raw.item["ceramic-pipe"] then
      bobmods.lib.recipe.replace_ingredient("oil-boiler-3-from-boiler-4", "pipe", "ceramic-pipe")

      bobmods.lib.recipe.remove_result("boiler-4-from-oil-boiler-3", "pipe")
      bobmods.lib.recipe.add_result("boiler-4-from-oil-boiler-3", { type = "item", name = "ceramic-pipe", amount = 2 })
    end

    if data.raw.item["copper-tungsten-pipe"] then
      bobmods.lib.recipe.replace_ingredient("oil-boiler-4-from-boiler-5", "pipe", "copper-tungsten-pipe")

      bobmods.lib.recipe.remove_result("boiler-5-from-oil-boiler-4", "pipe")
      bobmods.lib.recipe.add_result(
        "boiler-5-from-oil-boiler-4",
        { type = "item", name = "copper-tungsten-pipe", amount = 2 }
      )
    elseif data.raw.item["tungsten-pipe"] then
      bobmods.lib.recipe.replace_ingredient("oil-boiler-4-from-boiler-5", "pipe", "tungsten-pipe")

      bobmods.lib.recipe.remove_result("boiler-5-from-oil-boiler-4", "pipe")
      bobmods.lib.recipe.add_result("boiler-5-from-oil-boiler-4", { type = "item", name = "tungsten-pipe", amount = 2 })
    end
    bobmods.lib.tech.add_recipe_unlock("bob-oil-boiler-2", "oil-boiler-2-from-boiler-3")
    bobmods.lib.tech.add_recipe_unlock("bob-oil-boiler-3", "oil-boiler-3-from-boiler-4")
    bobmods.lib.tech.add_recipe_unlock("bob-oil-boiler-4", "oil-boiler-4-from-boiler-5")
    bobmods.lib.tech.add_recipe_unlock("bob-oil-boiler-1", "boiler-2-from-oil-boiler")
    bobmods.lib.tech.add_recipe_unlock("bob-oil-boiler-2", "boiler-3-from-oil-boiler-2")
    bobmods.lib.tech.add_recipe_unlock("bob-oil-boiler-3", "boiler-4-from-oil-boiler-3")
    bobmods.lib.tech.add_recipe_unlock("bob-oil-boiler-4", "boiler-5-from-oil-boiler-4")
  end
end
