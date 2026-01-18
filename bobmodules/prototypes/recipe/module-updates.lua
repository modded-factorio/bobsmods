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

if mods["aai-industry"] then
  if not mods["bobgreenhouse"] then
    bobmods.lib.recipe.replace_ingredient("bob-module-circuit-board", "bob-wooden-board", "bob-phenolic-board")
  end
end

bobmods.lib.recipe.add_additional_category("bob-module-circuit-board", "electronics-with-fluid")
bobmods.lib.recipe.add_additional_category("bob-module-processor-board", "electronics-with-fluid")
bobmods.lib.recipe.add_additional_category("bob-module-processor-board-2", "electronics-with-fluid")
bobmods.lib.recipe.add_additional_category("bob-module-processor-board-3", "electronics-with-fluid")

for _, recipe_name in pairs({
  "bob-module-case",
  "bob-module-contact",
  "bob-speed-processor",
  "bob-speed-processor-2",
  "bob-speed-processor-3",
  "bob-efficiency-processor",
  "bob-efficiency-processor-2",
  "bob-efficiency-processor-3",
  "bob-productivity-processor",
  "bob-productivity-processor-2",
  "bob-productivity-processor-3",
  "bob-pollution-clean-processor",
  "bob-pollution-clean-processor-2",
  "bob-pollution-clean-processor-3",
  "bob-pollution-create-processor",
  "bob-pollution-create-processor-2",
  "bob-pollution-create-processor-3",
  "bob-efficiency-module-4",
  "bob-efficiency-module-5",
  "bob-pollution-clean-module-1",
  "bob-pollution-clean-module-2",
  "bob-pollution-clean-module-3",
  "bob-pollution-clean-module-4",
  "bob-pollution-clean-module-5",
  "bob-pollution-create-module-1",
  "bob-pollution-create-module-2",
  "bob-pollution-create-module-3",
  "bob-pollution-create-module-4",
  "bob-pollution-create-module-5",
  "bob-productivity-module-4",
  "bob-productivity-module-5",
  "bob-speed-module-4",
  "bob-speed-module-5",
  "efficiency-module",
  "efficiency-module-2",
  "efficiency-module-3",
  "productivity-module",
  "productivity-module-2",
  "productivity-module-3",
  "speed-module",
  "speed-module-2",
  "speed-module-3",
}) do
  bobmods.lib.recipe.add_additional_category(recipe_name, "electronics")
end

if mods["quality"] then
  for _, recipe_name in pairs({
    "bob-quality-module-4",
    "bob-quality-module-5",
    "bob-quality-processor",
    "bob-quality-processor-2",
    "bob-quality-processor-3",
    "quality-module",
    "quality-module-2",
    "quality-module-3",
  }) do
    bobmods.lib.recipe.add_additional_category(recipe_name, "electronics")
  end
end
