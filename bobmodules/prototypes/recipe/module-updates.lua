if data.raw.item["bob-solder"] then
  bobmods.lib.recipe.add_ingredient("speed-module-2", { type = "item", name = "bob-solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("efficiency-module-2", { type = "item", name = "bob-solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("productivity-module-2", { type = "item", name = "bob-solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-clean-module-2", { type = "item", name = "bob-solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-create-module-2", { type = "item", name = "bob-solder", amount = 1 })

  bobmods.lib.recipe.add_ingredient("speed-module-3", { type = "item", name = "bob-solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("efficiency-module-3", { type = "item", name = "bob-solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("productivity-module-3", { type = "item", name = "bob-solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-clean-module-3", { type = "item", name = "bob-solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-create-module-3", { type = "item", name = "bob-solder", amount = 2 })

  bobmods.lib.recipe.add_ingredient("bob-speed-module-4", { type = "item", name = "bob-solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-efficiency-module-4", { type = "item", name = "bob-solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-productivity-module-4", { type = "item", name = "bob-solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-clean-module-4", { type = "item", name = "bob-solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-create-module-4", { type = "item", name = "bob-solder", amount = 3 })

  bobmods.lib.recipe.add_ingredient("bob-speed-module-5", { type = "item", name = "bob-solder", amount = 4 })
  bobmods.lib.recipe.add_ingredient("bob-efficiency-module-5", { type = "item", name = "bob-solder", amount = 4 })
  bobmods.lib.recipe.add_ingredient("bob-productivity-module-5", { type = "item", name = "bob-solder", amount = 4 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-clean-module-5", { type = "item", name = "bob-solder", amount = 4 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-create-module-5", { type = "item", name = "bob-solder", amount = 4 })

  if mods["quality"] then
    bobmods.lib.recipe.add_ingredient("quality-module-2", { type = "item", name = "bob-solder", amount = 1 })
    bobmods.lib.recipe.add_ingredient("quality-module-3", { type = "item", name = "bob-solder", amount = 2 })
    bobmods.lib.recipe.add_ingredient("bob-quality-module-4", { type = "item", name = "bob-solder", amount = 3 })
    bobmods.lib.recipe.add_ingredient("bob-quality-module-5", { type = "item", name = "bob-solder", amount = 4 })
  end
end

if data.raw.item["bob-advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("bob-speed-module-4", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("bob-efficiency-module-4", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("bob-productivity-module-4", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient(
    "bob-pollution-clean-module-4",
    "processing-unit",
    "bob-advanced-processing-unit"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-pollution-create-module-4",
    "processing-unit",
    "bob-advanced-processing-unit"
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-speed-module-5",
    { type = "item", name = "bob-advanced-processing-unit", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-efficiency-module-5",
    { type = "item", name = "bob-advanced-processing-unit", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-productivity-module-5",
    { type = "item", name = "bob-advanced-processing-unit", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-clean-module-5",
    { type = "item", name = "bob-advanced-processing-unit", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-create-module-5",
    { type = "item", name = "bob-advanced-processing-unit", amount = 5 }
  )
  if mods["quality"] then
    bobmods.lib.recipe.replace_ingredient("bob-quality-module-4", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.recipe.add_ingredient(
      "bob-quality-module-5",
      { type = "item", name = "bob-advanced-processing-unit", amount = 5 }
    )
  end
else
  bobmods.lib.recipe.add_ingredient("bob-speed-module-4", { type = "item", name = "advanced-circuit", amount = 5 })
  bobmods.lib.recipe.add_ingredient("bob-efficiency-module-4", { type = "item", name = "advanced-circuit", amount = 5 })
  bobmods.lib.recipe.add_ingredient(
    "bob-productivity-module-4",
    { type = "item", name = "advanced-circuit", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-clean-module-4",
    { type = "item", name = "advanced-circuit", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-create-module-4",
    { type = "item", name = "advanced-circuit", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient("bob-speed-module-5", { type = "item", name = "processing-unit", amount = 5 })
  bobmods.lib.recipe.add_ingredient("bob-efficiency-module-5", { type = "item", name = "processing-unit", amount = 5 })
  bobmods.lib.recipe.add_ingredient(
    "bob-productivity-module-5",
    { type = "item", name = "processing-unit", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-clean-module-5",
    { type = "item", name = "processing-unit", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-create-module-5",
    { type = "item", name = "processing-unit", amount = 5 }
  )
  if mods["quality"] then
    bobmods.lib.recipe.add_ingredient("bob-quality-module-4", { type = "item", name = "advanced-circuit", amount = 5 })
    bobmods.lib.recipe.add_ingredient("bob-quality-module-5", { type = "item", name = "processing-unit", amount = 5 })
  end
end
