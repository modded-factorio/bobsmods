if settings.startup["bobmods-power-steam"].value == true then
  if data.raw.item["bob-cobalt-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "steam-turbine",
      { type = "item", name = "bob-cobalt-steel-bearing", amount = 10 }
    )
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-1", "bob-cobalt-processing")
  end

  if data.raw.item["bob-cobalt-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("steam-turbine", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-1", "bob-cobalt-processing")
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("steam-turbine", "copper-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-1", "bob-aluminium-processing")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("steam-turbine", "electronic-circuit", "advanced-circuit")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-1", "advanced-circuit")
  end

  if data.raw.item["bob-titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-steam-turbine-2",
      { type = "item", name = "bob-titanium-bearing", amount = 15 }
    )
  else
    bobmods.lib.recipe.add_ingredient("bob-steam-turbine-2", { type = "item", name = "iron-gear-wheel", amount = 25 })
  end

  if data.raw.item["bob-titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-turbine-2", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-2", "bob-titanium-processing")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-turbine-2", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-2", "bob-titanium-processing")
  end

  if data.raw.item["bob-titanium-pipe"] then
    bobmods.lib.recipe.add_ingredient("bob-steam-turbine-2", { type = "item", name = "bob-titanium-pipe", amount = 5 })
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-turbine-2", "advanced-circuit", "processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-2", "processing-unit")
  end

  if data.raw.item["bob-nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-steam-turbine-3",
      { type = "item", name = "bob-nitinol-bearing", amount = 15 }
    )
  else
    bobmods.lib.recipe.add_ingredient("bob-steam-turbine-3", { type = "item", name = "iron-gear-wheel", amount = 25 })
  end

  if data.raw.item["bob-nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-turbine-3", "iron-gear-wheel", "bob-nitinol-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-3", "bob-nitinol-processing")
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-turbine-3", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-3", "bob-nitinol-processing")
  end

  if data.raw.item["bob-copper-tungsten-pipe"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-steam-turbine-3",
      { type = "item", name = "bob-copper-tungsten-pipe", amount = 5 }
    )
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-3", "bob-tungsten-processing")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-turbine-3", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-3", "bob-advanced-processing-unit")
  else
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-3", "processing-unit")
  end
end
