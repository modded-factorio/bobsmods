if data.raw.item["solder"] then
  bobmods.lib.recipe.add_ingredient("speed-module-2", { type = "item", name = "solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("efficiency-module-2", { type = "item", name = "solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("productivity-module-2", { type = "item", name = "solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-clean-module-2", { type = "item", name = "solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-create-module-2", { type = "item", name = "solder", amount = 1 })

  bobmods.lib.recipe.add_ingredient("speed-module-3", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("efficiency-module-3", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("productivity-module-3", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-clean-module-3", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-create-module-3", { type = "item", name = "solder", amount = 2 })

  bobmods.lib.recipe.add_ingredient("bob-speed-module-4", { type = "item", name = "solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-efficiency-module-4", { type = "item", name = "solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-productivity-module-4", { type = "item", name = "solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-clean-module-4", { type = "item", name = "solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-create-module-4", { type = "item", name = "solder", amount = 3 })

  bobmods.lib.recipe.add_ingredient("bob-speed-module-5", { type = "item", name = "solder", amount = 4 })
  bobmods.lib.recipe.add_ingredient("bob-efficiency-module-5", { type = "item", name = "solder", amount = 4 })
  bobmods.lib.recipe.add_ingredient("bob-productivity-module-5", { type = "item", name = "solder", amount = 4 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-clean-module-5", { type = "item", name = "solder", amount = 4 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-create-module-5", { type = "item", name = "solder", amount = 4 })

  if mods["quality"] then
    bobmods.lib.recipe.add_ingredient("quality-module-2", { type = "item", name = "solder", amount = 1 })
    bobmods.lib.recipe.add_ingredient("quality-module-3", { type = "item", name = "solder", amount = 2 })
    bobmods.lib.recipe.add_ingredient("bob-quality-module-4", { type = "item", name = "solder", amount = 3 })
    bobmods.lib.recipe.add_ingredient("bob-quality-module-5", { type = "item", name = "solder", amount = 4 })
  end
else
  bobmods.lib.recipe.add_ingredient("speed-module-3", { type = "item", name = "bob-module-contact", amount = 5 })
  bobmods.lib.recipe.add_ingredient("efficiency-module-3", { type = "item", name = "bob-module-contact", amount = 5 })
  bobmods.lib.recipe.add_ingredient("productivity-module-3", { type = "item", name = "bob-module-contact", amount = 5 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-clean-module-3", { type = "item", name = "bob-module-contact", amount = 5 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-create-module-3", { type = "item", name = "bob-module-contact", amount = 5 })
  if mods["quality"] then
    bobmods.lib.recipe.add_ingredient("quality-module-3", { type = "item", name = "bob-module-contact", amount = 5 })
  end
end

if data.raw.item["basic-electronic-components"] then
  bobmods.lib.recipe.replace_ingredient("speed-module", "electronic-circuit", "basic-electronic-components")
  bobmods.lib.recipe.replace_ingredient("efficiency-module", "electronic-circuit", "basic-electronic-components")
  bobmods.lib.recipe.replace_ingredient("productivity-module", "electronic-circuit", "basic-electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-clean-module-1", "electronic-circuit", "basic-electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-create-module-1", "electronic-circuit", "basic-electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-green-module-1", "electronic-circuit", "basic-electronic-components")
  if mods["quality"] then
    bobmods.lib.recipe.replace_ingredient("quality-module", "electronic-circuit", "basic-electronic-components")
  end
end

if data.raw.item["electronic-components"] then
  bobmods.lib.recipe.replace_ingredient("speed-module-3", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("efficiency-module-3", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("productivity-module-3", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-clean-module-3", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-create-module-3", "advanced-circuit", "electronic-components")

  bobmods.lib.recipe.replace_ingredient("bob-speed-module-5", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-efficiency-module-5", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-productivity-module-5", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-clean-module-5", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-create-module-5", "advanced-circuit", "electronic-components")

  if mods["quality"] then
    bobmods.lib.recipe.replace_ingredient("quality-module-3", "advanced-circuit", "electronic-components")
    bobmods.lib.recipe.replace_ingredient("bob-quality-module-5", "advanced-circuit", "electronic-components")
  end
end

if data.raw.item["intergrated-electronics"] then
  bobmods.lib.recipe.replace_ingredient("bob-speed-module-4", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-efficiency-module-4", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-productivity-module-4", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-clean-module-4", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-create-module-4", "processing-unit", "intergrated-electronics")

  bobmods.lib.recipe.replace_ingredient("bob-speed-module-5", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-efficiency-module-5", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-productivity-module-5", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-clean-module-5", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-create-module-5", "processing-unit", "intergrated-electronics")

  if mods["quality"] then
    bobmods.lib.recipe.replace_ingredient("bob-quality-module-4", "processing-unit", "intergrated-electronics")
    bobmods.lib.recipe.replace_ingredient("bob-quality-module-5", "processing-unit", "intergrated-electronics")
  end
end

if data.raw.item["processing-electronics"] then
  bobmods.lib.recipe.add_ingredient("bob-speed-module-5", { type = "item", name = "processing-electronics", amount = 5 })
  bobmods.lib.recipe.add_ingredient(
    "bob-efficiency-module-5",
    { type = "item", name = "processing-electronics", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-productivity-module-5",
    { type = "item", name = "processing-electronics", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-clean-module-5",
    { type = "item", name = "processing-electronics", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-create-module-5",
    { type = "item", name = "processing-electronics", amount = 5 }
  )
  if mods["quality"] then
    bobmods.lib.recipe.add_ingredient("bob-quality-module-5", { type = "item", name = "processing-electronics", amount = 5 })
  end
elseif data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-speed-module-5",
    { type = "item", name = "advanced-processing-unit", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-efficiency-module-5",
    { type = "item", name = "advanced-processing-unit", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-productivity-module-5",
    { type = "item", name = "advanced-processing-unit", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-clean-module-5",
    { type = "item", name = "advanced-processing-unit", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-create-module-5",
    { type = "item", name = "advanced-processing-unit", amount = 5 }
  )
  if mods["quality"] then
    bobmods.lib.recipe.add_ingredient("bob-quality-module-5", { type = "item", name = "advanced-processing-unit", amount = 5 })
  end
else
  bobmods.lib.recipe.add_ingredient("bob-speed-module-5", { type = "item", name = "processing-unit", amount = 5 })
  bobmods.lib.recipe.add_ingredient("bob-efficiency-module-5", { type = "item", name = "processing-unit", amount = 5 })
  bobmods.lib.recipe.add_ingredient("bob-productivity-module-5", { type = "item", name = "processing-unit", amount = 5 })
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-clean-module-5",
    { type = "item", name = "processing-unit", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-create-module-5",
    { type = "item", name = "processing-unit", amount = 5 }
  )
  if mods["quality"] then
    bobmods.lib.recipe.add_ingredient("bob-quality-module-5", { type = "item", name = "processing-unit", amount = 5 })
  end
end
