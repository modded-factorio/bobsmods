if data.raw.item["bob-tin-plate"] then
  bobmods.lib.recipe.add_ingredient("bob-module-circuit-board", { type = "item", name = "bob-tin-plate", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-module-processor-board", { type = "item", name = "bob-tin-plate", amount = 1 })
end

if data.raw.item["bob-silver-plate"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-module-processor-board-2",
    { type = "item", name = "bob-silver-plate", amount = 1 }
  )
  bobmods.lib.tech.add_prerequisite("processing-unit", "lead-processing")
end

if data.raw.item["bob-gold-plate"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-module-processor-board-3",
    { type = "item", name = "bob-gold-plate", amount = 2 }
  )
  bobmods.lib.tech.add_prerequisite("processing-unit", "gold-processing")
end

if data.raw.item["tinned-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient("bob-module-contact", "copper-cable", "tinned-copper-cable")
end

if data.raw.item["phenolic-board"] then
  bobmods.lib.recipe.replace_ingredient("bob-module-processor-board", "plastic-bar", "phenolic-board")
end

if data.raw.item["fibreglass-board"] then
  bobmods.lib.recipe.replace_ingredient("bob-module-processor-board-2", "plastic-bar", "fibreglass-board")
  bobmods.lib.recipe.replace_ingredient("bob-module-processor-board-3", "plastic-bar", "fibreglass-board")
end

if data.raw.fluid["ferric-chloride-solution"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-module-circuit-board",
    { type = "fluid", name = "ferric-chloride-solution", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-module-processor-board",
    { type = "fluid", name = "ferric-chloride-solution", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-module-processor-board-2",
    { type = "fluid", name = "ferric-chloride-solution", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-module-processor-board-3",
    { type = "fluid", name = "ferric-chloride-solution", amount = 10 }
  )
  if mods["bobplates"] then
    bobmods.lib.tech.add_prerequisite("modules", "chemical-processing-2")
    bobmods.lib.tech.add_prerequisite("advanced-circuit", "chemical-processing-2")
  end
end

if data.raw.item["basic-electronic-components"] then
  bobmods.lib.recipe.replace_ingredient("bob-speed-processor", "electronic-circuit", "basic-electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-efficiency-processor", "electronic-circuit", "basic-electronic-components")
  bobmods.lib.recipe.replace_ingredient(
    "bob-productivity-processor",
    "electronic-circuit",
    "basic-electronic-components"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-pollution-clean-processor",
    "electronic-circuit",
    "basic-electronic-components"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-pollution-create-processor",
    "electronic-circuit",
    "basic-electronic-components"
  )
  if mods["quality"] then
    bobmods.lib.recipe.replace_ingredient("bob-quality-processor", "electronic-circuit", "basic-electronic-components")
  end
end

if data.raw.item["electronic-components"] then
  bobmods.lib.recipe.replace_ingredient("bob-speed-processor", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-efficiency-processor", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-productivity-processor", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-clean-processor", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-create-processor", "advanced-circuit", "electronic-components")

  bobmods.lib.recipe.replace_ingredient("bob-speed-processor-2", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-efficiency-processor-2", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-productivity-processor-2", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-clean-processor-2", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-create-processor-2", "advanced-circuit", "electronic-components")

  if mods["quality"] then
    bobmods.lib.recipe.replace_ingredient("bob-quality-processor", "advanced-circuit", "electronic-components")
    bobmods.lib.recipe.replace_ingredient("bob-quality-processor-2", "advanced-circuit", "electronic-components")
  end
end

if data.raw.item["intergrated-electronics"] then
  bobmods.lib.recipe.replace_ingredient("bob-speed-processor-2", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-efficiency-processor-2", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-productivity-processor-2", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-clean-processor-2", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient(
    "bob-pollution-create-processor-2",
    "processing-unit",
    "intergrated-electronics"
  )

  bobmods.lib.recipe.replace_ingredient("bob-speed-processor-3", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-efficiency-processor-3", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-productivity-processor-3", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-clean-processor-3", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient(
    "bob-pollution-create-processor-3",
    "processing-unit",
    "intergrated-electronics"
  )

  if mods["quality"] then
    bobmods.lib.recipe.replace_ingredient("bob-quality-processor-2", "processing-unit", "intergrated-electronics")
    bobmods.lib.recipe.replace_ingredient("bob-quality-processor-3", "processing-unit", "intergrated-electronics")
  end
end

if data.raw.item["processing-electronics"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-speed-processor-3",
    { type = "item", name = "processing-electronics", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-efficiency-processor-3",
    { type = "item", name = "processing-electronics", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-productivity-processor-3",
    { type = "item", name = "processing-electronics", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-clean-processor-3",
    { type = "item", name = "processing-electronics", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-create-processor-3",
    { type = "item", name = "processing-electronics", amount = 1 }
  )

  if mods["quality"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-quality-processor-3",
      { type = "item", name = "processing-electronics", amount = 1 }
    )
  end
elseif data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-speed-processor-3",
    { type = "item", name = "advanced-processing-unit", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-efficiency-processor-3",
    { type = "item", name = "advanced-processing-unit", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-productivity-processor-3",
    { type = "item", name = "advanced-processing-unit", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-clean-processor-3",
    { type = "item", name = "advanced-processing-unit", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-create-processor-3",
    { type = "item", name = "advanced-processing-unit", amount = 1 }
  )

  if mods["quality"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-quality-processor-3",
      { type = "item", name = "advanced-processing-unit", amount = 1 }
    )
  end
else
  bobmods.lib.recipe.add_ingredient("bob-speed-processor-3", { type = "item", name = "processing-unit", amount = 1 })
  bobmods.lib.recipe.add_ingredient(
    "bob-efficiency-processor-3",
    { type = "item", name = "processing-unit", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-productivity-processor-3",
    { type = "item", name = "processing-unit", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-clean-processor-3",
    { type = "item", name = "processing-unit", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-create-processor-3",
    { type = "item", name = "processing-unit", amount = 1 }
  )

  if mods["quality"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-quality-processor-3",
      { type = "item", name = "processing-unit", amount = 1 }
    )
  end
end

if data.raw.item["solder"] then
  bobmods.lib.recipe.add_ingredient("bob-speed-processor", { type = "item", name = "solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-efficiency-processor", { type = "item", name = "solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-productivity-processor", { type = "item", name = "solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-clean-processor", { type = "item", name = "solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-create-processor", { type = "item", name = "solder", amount = 1 })

  bobmods.lib.recipe.add_ingredient("bob-speed-processor-2", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("bob-efficiency-processor-2", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("bob-productivity-processor-2", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-clean-processor-2", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-create-processor-2", { type = "item", name = "solder", amount = 2 })

  bobmods.lib.recipe.add_ingredient("bob-speed-processor-3", { type = "item", name = "solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-efficiency-processor-3", { type = "item", name = "solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-productivity-processor-3", { type = "item", name = "solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-clean-processor-3", { type = "item", name = "solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-create-processor-3", { type = "item", name = "solder", amount = 3 })

  if mods["quality"] then
    bobmods.lib.recipe.add_ingredient("bob-quality-processor", { type = "item", name = "solder", amount = 1 })
    bobmods.lib.recipe.add_ingredient("bob-quality-processor-2", { type = "item", name = "solder", amount = 1 })
    bobmods.lib.recipe.add_ingredient("bob-quality-processor-3", { type = "item", name = "solder", amount = 1 })
  end
end

bobmods.lib.tech.add_recipe_unlock("modules", "bob-module-case")
bobmods.lib.tech.add_recipe_unlock("modules", "bob-module-circuit-board")
bobmods.lib.tech.add_recipe_unlock("modules", "bob-module-contact")
bobmods.lib.tech.add_recipe_unlock("speed-module-2", "bob-speed-processor")
bobmods.lib.tech.add_recipe_unlock("speed-module-3", "bob-speed-processor-2")
bobmods.lib.tech.add_recipe_unlock("efficiency-module-2", "bob-efficiency-processor")
bobmods.lib.tech.add_recipe_unlock("efficiency-module-3", "bob-efficiency-processor-2")
bobmods.lib.tech.add_recipe_unlock("productivity-module-2", "bob-productivity-processor")
bobmods.lib.tech.add_recipe_unlock("productivity-module-3", "bob-productivity-processor-2")
bobmods.lib.tech.add_recipe_unlock("advanced-circuit", "bob-module-processor-board")
bobmods.lib.tech.add_recipe_unlock("processing-unit", "bob-module-processor-board-2")
bobmods.lib.tech.add_prerequisite("advanced-circuit", "modules")

if data.raw.technology["advanced-processing-unit"] then
  bobmods.lib.tech.add_recipe_unlock("advanced-processing-unit", "bob-module-processor-board-3")
else
  bobmods.lib.tech.add_recipe_unlock("processing-unit", "bob-module-processor-board-3")
end

if mods["quality"] then
  bobmods.lib.tech.add_recipe_unlock("quality-module-2", "bob-quality-processor")
  bobmods.lib.tech.add_recipe_unlock("quality-module-3", "bob-quality-processor-2")
end

if data.raw.item["alien-artifact"] then
  local module_names = {
    "bob-module-processor-board",
    "bob-module-processor-board-2",
    "bob-module-processor-board-3",
  }
  for i, module_name in pairs(module_names) do
    bobmods.lib.recipe.add_ingredient(module_name, { type = "item", name = "alien-artifact", amount = i * 2 })
  end
end

if data.raw.item["bob-ruby-5"] then
  local module_names = {
    "bob-productivity-processor",
    "bob-productivity-processor-2",
    "bob-productivity-processor-3",
  }
  for i, module_name in pairs(module_names) do
    bobmods.lib.recipe.add_ingredient(module_name, { type = "item", name = "bob-ruby-5", amount = i * 2 })
  end
  bobmods.lib.tech.add_prerequisite("productivity-module-2", "gem-processing-3")
end

if data.raw.item["bob-sapphire-5"] then
  local module_names = {
    "bob-speed-processor",
    "bob-speed-processor-2",
    "bob-speed-processor-3",
  }
  for i, module_name in pairs(module_names) do
    bobmods.lib.recipe.add_ingredient(module_name, { type = "item", name = "bob-sapphire-5", amount = i * 2 })
  end
  bobmods.lib.tech.add_prerequisite("speed-module-2", "gem-processing-3")
end

if data.raw.item["bob-emerald-5"] then
  local module_names = {
    "bob-efficiency-processor",
    "bob-efficiency-processor-2",
    "bob-efficiency-processor-3",
  }
  for i, module_name in pairs(module_names) do
    bobmods.lib.recipe.add_ingredient(module_name, { type = "item", name = "bob-emerald-5", amount = i * 2 })
  end
  bobmods.lib.tech.add_prerequisite("efficiency-module-2", "gem-processing-3")
end

if data.raw.item["bob-amethyst-5"] then
  local module_names = {
    "bob-pollution-clean-processor",
    "bob-pollution-clean-processor-2",
    "bob-pollution-clean-processor-3",
  }
  for i, module_name in pairs(module_names) do
    bobmods.lib.recipe.add_ingredient(module_name, { type = "item", name = "bob-amethyst-5", amount = i * 2 })
  end
  bobmods.lib.tech.add_prerequisite("bob-pollution-clean-module-2", "gem-processing-3")
end

if data.raw.item["bob-topaz-5"] then
  local module_names = {
    "bob-pollution-create-processor",
    "bob-pollution-create-processor-2",
    "bob-pollution-create-processor-3",
  }
  for i, module_name in pairs(module_names) do
    bobmods.lib.recipe.add_ingredient(module_name, { type = "item", name = "bob-topaz-5", amount = i * 2 })
  end
  bobmods.lib.tech.add_prerequisite("bob-pollution-create-module-2", "gem-processing-3")
end

if mods["quality"] and data.raw.item["bob-diamond-5"] then
  local module_names = {
    "bob-quality-processor",
    "bob-quality-processor-2",
    "bob-quality-processor-3",
  }
  for i, module_name in pairs(module_names) do
    bobmods.lib.recipe.add_ingredient(module_name, { type = "item", name = "bob-diamond-5", amount = i * 2 })
  end
  bobmods.lib.tech.add_prerequisite("quality-module-2", "gem-processing-3")
end
