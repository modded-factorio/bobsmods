local electronics_amount = 4
if mods["bobelectronics"] then
  electronics_amount = 10
end

if data.raw.item["bob-advanced-processing-unit"] then
  bobmods.lib.recipe.remove_ingredient("bob-speed-module-4", "processing-unit")
  bobmods.lib.recipe.remove_ingredient("bob-efficiency-module-4", "processing-unit")
  bobmods.lib.recipe.remove_ingredient("bob-productivity-module-4", "processing-unit")
  bobmods.lib.recipe.remove_ingredient("bob-pollution-clean-module-4", "processing-unit")
  bobmods.lib.recipe.remove_ingredient("bob-pollution-create-module-4", "processing-unit")
  bobmods.lib.recipe.add_ingredient(
    "bob-speed-module-4",
    { type = "item", name = "bob-advanced-processing-unit", amount = electronics_amount }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-efficiency-module-4",
    { type = "item", name = "bob-advanced-processing-unit", amount = electronics_amount }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-productivity-module-4",
    { type = "item", name = "bob-advanced-processing-unit", amount = electronics_amount }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-clean-module-4",
    { type = "item", name = "bob-advanced-processing-unit", amount = electronics_amount }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-create-module-4",
    { type = "item", name = "bob-advanced-processing-unit", amount = electronics_amount }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-speed-module-5",
    { type = "item", name = "bob-advanced-processing-unit", amount = electronics_amount }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-efficiency-module-5",
    { type = "item", name = "bob-advanced-processing-unit", amount = electronics_amount }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-productivity-module-5",
    { type = "item", name = "bob-advanced-processing-unit", amount = electronics_amount }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-clean-module-5",
    { type = "item", name = "bob-advanced-processing-unit", amount = electronics_amount }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-create-module-5",
    { type = "item", name = "bob-advanced-processing-unit", amount = electronics_amount }
  )
  if mods["quality"] then
    bobmods.lib.recipe.remove_ingredient("bob-quality-module-4", "processing-unit")
    bobmods.lib.recipe.add_ingredient(
      "bob-quality-module-4",
      { type = "item", name = "bob-advanced-processing-unit", amount = electronics_amount }
    )
    bobmods.lib.recipe.replace_ingredient("bob-quality-module-4", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.recipe.add_ingredient(
      "bob-quality-module-5",
      { type = "item", name = "bob-advanced-processing-unit", amount = electronics_amount }
    )
  end
else
  bobmods.lib.recipe.add_ingredient(
    "bob-speed-module-4",
    { type = "item", name = "advanced-circuit", amount = electronics_amount }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-efficiency-module-4",
    { type = "item", name = "advanced-circuit", amount = electronics_amount }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-productivity-module-4",
    { type = "item", name = "advanced-circuit", amount = electronics_amount }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-clean-module-4",
    { type = "item", name = "advanced-circuit", amount = electronics_amount }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-create-module-4",
    { type = "item", name = "advanced-circuit", amount = electronics_amount }
  )
  bobmods.lib.recipe.add_ingredient("bob-speed-module-5", { type = "item", name = "processing-unit", amount = 4 })
  bobmods.lib.recipe.add_ingredient("bob-efficiency-module-5", { type = "item", name = "processing-unit", amount = 4 })
  bobmods.lib.recipe.add_ingredient(
    "bob-productivity-module-5",
    { type = "item", name = "processing-unit", amount = 4 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-clean-module-5",
    { type = "item", name = "processing-unit", amount = 4 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-create-module-5",
    { type = "item", name = "processing-unit", amount = 4 }
  )
  if mods["quality"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-quality-module-4",
      { type = "item", name = "advanced-circuit", amount = electronics_amount }
    )
    bobmods.lib.recipe.add_ingredient("bob-quality-module-5", { type = "item", name = "processing-unit", amount = 4 })
  end
end
