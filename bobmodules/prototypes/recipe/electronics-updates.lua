if data.raw.item["tin-plate"] then
  bobmods.lib.recipe.add_ingredient("module-circuit-board", { type = "item", name = "tin-plate", amount = 1 })
  bobmods.lib.recipe.add_ingredient("module-processor-board", { type = "item", name = "tin-plate", amount = 1 })
end

if data.raw.item["bob-gold-plate"] then
  bobmods.lib.recipe.add_ingredient("module-contact", { type = "item", name = "bob-gold-plate", amount = 1 })
  bobmods.lib.recipe.add_ingredient("module-processor-board-2", { type = "item", name = "bob-gold-plate", amount = 1 })
  bobmods.lib.recipe.add_ingredient("module-processor-board-3", { type = "item", name = "bob-gold-plate", amount = 2 })
  bobmods.lib.tech.add_prerequisite("modules", "gold-processing")
end

if data.raw.item["phenolic-board"] then
  bobmods.lib.recipe.replace_ingredient("module-circuit-board", "plastic-bar", "phenolic-board")
  bobmods.lib.recipe.replace_ingredient("module-processor-board", "plastic-bar", "phenolic-board")
end

if data.raw.item["fibreglass-board"] then
  bobmods.lib.recipe.replace_ingredient("module-processor-board-2", "plastic-bar", "fibreglass-board")
  bobmods.lib.recipe.replace_ingredient("module-processor-board-3", "plastic-bar", "fibreglass-board")
end

if data.raw.fluid["ferric-chloride-solution"] then
  bobmods.lib.recipe.add_ingredient(
    "module-circuit-board",
    { type = "fluid", name = "ferric-chloride-solution", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "module-processor-board",
    { type = "fluid", name = "ferric-chloride-solution", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "module-processor-board-2",
    { type = "fluid", name = "ferric-chloride-solution", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "module-processor-board-3",
    { type = "fluid", name = "ferric-chloride-solution", amount = 10 }
  )
end

if data.raw.item["basic-electronic-components"] then
  bobmods.lib.recipe.replace_ingredient("speed-processor", "electronic-circuit", "basic-electronic-components")
  bobmods.lib.recipe.replace_ingredient("efficiency-processor", "electronic-circuit", "basic-electronic-components")
  bobmods.lib.recipe.replace_ingredient("productivity-processor", "electronic-circuit", "basic-electronic-components")
  bobmods.lib.recipe.replace_ingredient(
    "pollution-clean-processor",
    "electronic-circuit",
    "basic-electronic-components"
  )
  bobmods.lib.recipe.replace_ingredient(
    "pollution-create-processor",
    "electronic-circuit",
    "basic-electronic-components"
  )
end

if data.raw.item["electronic-components"] then
  bobmods.lib.recipe.replace_ingredient("speed-processor", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("efficiency-processor", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("productivity-processor", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("pollution-clean-processor", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("pollution-create-processor", "advanced-circuit", "electronic-components")

  bobmods.lib.recipe.replace_ingredient("speed-processor-2", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("efficiency-processor-2", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("productivity-processor-2", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("pollution-clean-processor-2", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("pollution-create-processor-2", "advanced-circuit", "electronic-components")
end

if data.raw.item["intergrated-electronics"] then
  bobmods.lib.recipe.replace_ingredient("speed-processor-2", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("efficiency-processor-2", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("productivity-processor-2", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("pollution-clean-processor-2", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("pollution-create-processor-2", "processing-unit", "intergrated-electronics")

  bobmods.lib.recipe.replace_ingredient("speed-processor-3", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("efficiency-processor-3", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("productivity-processor-3", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("pollution-clean-processor-3", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("pollution-create-processor-3", "processing-unit", "intergrated-electronics")
end

if data.raw.item["processing-electronics"] then
  bobmods.lib.recipe.add_ingredient("speed-processor-3", { type = "item", name = "processing-electronics", amount = 1 })
  bobmods.lib.recipe.add_ingredient(
    "efficiency-processor-3",
    { type = "item", name = "processing-electronics", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient("productivity-processor-3", { type = "item", name = "processing-electronics", 1 })
  bobmods.lib.recipe.add_ingredient(
    "pollution-clean-processor-3",
    { type = "item", name = "processing-electronics", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "pollution-create-processor-3",
    { type = "item", name = "processing-electronics", amount = 1 }
  )
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient(
      "speed-processor-3",
      { type = "item", name = "advanced-processing-unit", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "efficiency-processor-3",
      { type = "item", name = "advanced-processing-unit", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "productivity-processor-3",
      { type = "item", name = "advanced-processing-unit", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "pollution-clean-processor-3",
      { type = "item", name = "advanced-processing-unit", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "pollution-create-processor-3",
      { type = "item", name = "advanced-processing-unit", amount = 1 }
    )
  else
    bobmods.lib.recipe.add_ingredient("speed-processor-3", { type = "item", name = "processing-unit", amount = 1 })
    bobmods.lib.recipe.add_ingredient("efficiency-processor-3", { type = "item", name = "processing-unit", amount = 1 })
    bobmods.lib.recipe.add_ingredient(
      "productivity-processor-3",
      { type = "item", name = "processing-unit", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "pollution-clean-processor-3",
      { type = "item", name = "processing-unit", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "pollution-create-processor-3",
      { type = "item", name = "processing-unit", amount = 1 }
    )
  end
end

if data.raw.item["solder"] then
  bobmods.lib.recipe.add_ingredient("speed-processor", { type = "item", name = "solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("efficiency-processor", { type = "item", name = "solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("productivity-processor", { type = "item", name = "solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("pollution-clean-processor", { type = "item", name = "solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("pollution-create-processor", { type = "item", name = "solder", amount = 1 })

  bobmods.lib.recipe.add_ingredient("speed-processor-2", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("efficiency-processor-2", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("productivity-processor-2", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("pollution-clean-processor-2", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("pollution-create-processor-2", { type = "item", name = "solder", amount = 2 })

  bobmods.lib.recipe.add_ingredient("speed-processor-3", { type = "item", name = "solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("efficiency-processor-3", { type = "item", name = "solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("productivity-processor-3", { type = "item", name = "solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("pollution-clean-processor-3", { type = "item", name = "solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("pollution-create-processor-3", { type = "item", name = "solder", amount = 3 })
end

bobmods.lib.tech.add_recipe_unlock("modules", "module-case")
bobmods.lib.tech.add_recipe_unlock("modules", "module-circuit-board")
bobmods.lib.tech.add_recipe_unlock("modules", "module-contact")
bobmods.lib.tech.add_recipe_unlock("modules", "module-processor-board")
bobmods.lib.tech.add_recipe_unlock("speed-module", "speed-processor")
bobmods.lib.tech.add_recipe_unlock("efficiency-module", "efficiency-processor")
bobmods.lib.tech.add_recipe_unlock("productivity-module", "productivity-processor")
bobmods.lib.tech.add_recipe_unlock("pollution-clean-module-1", "pollution-clean-processor")
bobmods.lib.tech.add_recipe_unlock("pollution-create-module-1", "pollution-create-processor")
bobmods.lib.tech.add_recipe_unlock("processing-unit", "module-processor-board-2")

if data.raw.technology["advanced-processing-unit"] then
  bobmods.lib.tech.add_recipe_unlock("advanced-processing-unit", "module-processor-board-3")
else
  bobmods.lib.tech.add_recipe_unlock("processing-unit", "module-processor-board-3")
end
