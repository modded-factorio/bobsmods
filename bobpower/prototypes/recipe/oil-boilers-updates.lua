if settings.startup["bobmods-power-steam"].value == true then
  if data.raw.item["bob-steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-boiler", "pipe", "bob-steel-pipe")
  end

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-boiler-2", "steel-plate", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-oil-boiler-2", "bob-invar-processing")
  end

  if data.raw.item["bob-brass-pipe"] then
    bobmods.lib.recipe.add_ingredient("bob-oil-boiler-2", { type = "item", name = "bob-brass-pipe", amount = 6 })
    bobmods.lib.tech.add_prerequisite("bob-oil-boiler-2", "bob-zinc-processing")
  end

  if data.raw.item["bob-tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-boiler-3", "steel-plate", "bob-tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-oil-boiler-3", "bob-tungsten-processing")
  end

  if data.raw.item["bob-ceramic-pipe"] then
    bobmods.lib.recipe.add_ingredient("bob-oil-boiler-3", { type = "item", name = "bob-ceramic-pipe", amount = 6 })
    bobmods.lib.tech.add_prerequisite("bob-oil-boiler-3", "bob-ceramics")
  end

  if data.raw.item["bob-copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-boiler-4", "steel-plate", "bob-copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-oil-boiler-4", "bob-tungsten-alloy-processing")
  end

  if data.raw.item["bob-copper-tungsten-pipe"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-oil-boiler-4",
      { type = "item", name = "bob-copper-tungsten-pipe", amount = 6 }
    )
  elseif data.raw.item["bob-tungsten-pipe"] then
    bobmods.lib.recipe.add_ingredient("bob-oil-boiler-4", { type = "item", name = "bob-tungsten-pipe", amount = 6 })
  end

  if
    settings.startup["bobmods-plates-convert-recipes"]
    and settings.startup["bobmods-plates-convert-recipes"].value == true
  then
    if data.raw.item["bob-steel-pipe"] then
      bobmods.lib.recipe.remove_result("bob-boiler-2-from-oil-boiler", "pipe")
      bobmods.lib.recipe.add_result(
        "bob-boiler-2-from-oil-boiler",
        { type = "item", name = "bob-steel-pipe", amount = 2 }
      )
    end

    if data.raw.item["bob-brass-pipe"] then
      bobmods.lib.recipe.replace_ingredient("bob-oil-boiler-2-from-boiler-3", "pipe", "bob-brass-pipe")

      bobmods.lib.recipe.remove_result("bob-boiler-3-from-oil-boiler-2", "pipe")
      bobmods.lib.recipe.add_result(
        "bob-boiler-3-from-oil-boiler-2",
        { type = "item", name = "bob-brass-pipe", amount = 2 }
      )
    end

    if data.raw.item["bob-ceramic-pipe"] then
      bobmods.lib.recipe.replace_ingredient("bob-oil-boiler-3-from-boiler-4", "pipe", "bob-ceramic-pipe")

      bobmods.lib.recipe.remove_result("bob-boiler-4-from-oil-boiler-3", "pipe")
      bobmods.lib.recipe.add_result(
        "bob-boiler-4-from-oil-boiler-3",
        { type = "item", name = "bob-ceramic-pipe", amount = 2 }
      )
    end

    if data.raw.item["bob-copper-tungsten-pipe"] then
      bobmods.lib.recipe.replace_ingredient("bob-oil-boiler-4-from-boiler-5", "pipe", "bob-copper-tungsten-pipe")

      bobmods.lib.recipe.remove_result("bob-boiler-5-from-oil-boiler-4", "pipe")
      bobmods.lib.recipe.add_result(
        "bob-boiler-5-from-oil-boiler-4",
        { type = "item", name = "bob-copper-tungsten-pipe", amount = 2 }
      )
    elseif data.raw.item["bob-tungsten-pipe"] then
      bobmods.lib.recipe.replace_ingredient("bob-oil-boiler-4-from-boiler-5", "pipe", "bob-tungsten-pipe")

      bobmods.lib.recipe.remove_result("bob-boiler-5-from-oil-boiler-4", "pipe")
      bobmods.lib.recipe.add_result(
        "bob-boiler-5-from-oil-boiler-4",
        { type = "item", name = "bob-tungsten-pipe", amount = 2 }
      )
    end
    bobmods.lib.tech.add_recipe_unlock("bob-oil-boiler-2", "bob-oil-boiler-2-from-boiler-3")
    bobmods.lib.tech.add_recipe_unlock("bob-oil-boiler-3", "bob-oil-boiler-3-from-boiler-4")
    bobmods.lib.tech.add_recipe_unlock("bob-oil-boiler-4", "bob-oil-boiler-4-from-boiler-5")
    bobmods.lib.tech.add_recipe_unlock("bob-oil-boiler-1", "bob-boiler-2-from-oil-boiler")
    bobmods.lib.tech.add_recipe_unlock("bob-oil-boiler-2", "bob-boiler-3-from-oil-boiler-2")
    bobmods.lib.tech.add_recipe_unlock("bob-oil-boiler-3", "bob-boiler-4-from-oil-boiler-3")
    bobmods.lib.tech.add_recipe_unlock("bob-oil-boiler-4", "bob-boiler-5-from-oil-boiler-4")
  end
end
