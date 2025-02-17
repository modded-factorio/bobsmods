if data.raw.item["bob-tin-plate"] then
  bobmods.lib.recipe.add_ingredient("bob-module-circuit-board", { type = "item", name = "bob-tin-plate", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-module-processor-board", { type = "item", name = "bob-tin-plate", amount = 1 })
end

if data.raw.item["bob-silver-plate"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-module-processor-board-2",
    { type = "item", name = "bob-silver-plate", amount = 1 }
  )
end

if data.raw.item["bob-gold-plate"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-module-processor-board-3",
    { type = "item", name = "bob-gold-plate", amount = 2 }
  )
end

if data.raw.item["bob-tinned-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient("bob-module-contact", "copper-cable", "bob-tinned-copper-cable")
end

if data.raw.item["bob-phenolic-board"] then
  bobmods.lib.recipe.replace_ingredient("bob-module-processor-board", "plastic-bar", "bob-phenolic-board")
end

if data.raw.item["bob-fibreglass-board"] then
  bobmods.lib.recipe.replace_ingredient("bob-module-processor-board-2", "plastic-bar", "bob-fibreglass-board")
  bobmods.lib.recipe.replace_ingredient("bob-module-processor-board-3", "plastic-bar", "bob-fibreglass-board")
end

if data.raw.fluid["bob-ferric-chloride-solution"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-module-circuit-board",
    { type = "fluid", name = "bob-ferric-chloride-solution", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-module-processor-board",
    { type = "fluid", name = "bob-ferric-chloride-solution", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-module-processor-board-2",
    { type = "fluid", name = "bob-ferric-chloride-solution", amount = 5 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-module-processor-board-3",
    { type = "fluid", name = "bob-ferric-chloride-solution", amount = 10 }
  )
  if mods["bobplates"] then
    bobmods.lib.tech.add_prerequisite("modules", "bob-chemical-processing-2")
    bobmods.lib.tech.add_prerequisite("advanced-circuit", "bob-chemical-processing-2")
  end
end

if data.raw.item["bob-basic-electronic-components"] then
  bobmods.lib.recipe.replace_ingredient("bob-speed-processor", "electronic-circuit", "bob-basic-electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-efficiency-processor", "electronic-circuit", "bob-basic-electronic-components")
  bobmods.lib.recipe.replace_ingredient(
    "bob-productivity-processor",
    "electronic-circuit",
    "bob-basic-electronic-components"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-pollution-clean-processor",
    "electronic-circuit",
    "bob-basic-electronic-components"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-pollution-create-processor",
    "electronic-circuit",
    "bob-basic-electronic-components"
  )
  if mods["quality"] then
    bobmods.lib.recipe.replace_ingredient("bob-quality-processor", "electronic-circuit", "bob-basic-electronic-components")
  end
end

if data.raw.item["bob-electronic-components"] then
  bobmods.lib.recipe.replace_ingredient("bob-speed-processor", "advanced-circuit", "bob-electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-efficiency-processor", "advanced-circuit", "bob-electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-productivity-processor", "advanced-circuit", "bob-electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-clean-processor", "advanced-circuit", "bob-electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-create-processor", "advanced-circuit", "bob-electronic-components")

  bobmods.lib.recipe.replace_ingredient("bob-speed-processor-2", "advanced-circuit", "bob-electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-efficiency-processor-2", "advanced-circuit", "bob-electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-productivity-processor-2", "advanced-circuit", "bob-electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-clean-processor-2", "advanced-circuit", "bob-electronic-components")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-create-processor-2", "advanced-circuit", "bob-electronic-components")

  if mods["quality"] then
    bobmods.lib.recipe.replace_ingredient("bob-quality-processor", "advanced-circuit", "bob-electronic-components")
    bobmods.lib.recipe.replace_ingredient("bob-quality-processor-2", "advanced-circuit", "bob-electronic-components")
  end
end

if data.raw.item["bob-integrated-electronics"] then
  bobmods.lib.recipe.replace_ingredient("bob-speed-processor-2", "processing-unit", "bob-integrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-efficiency-processor-2", "processing-unit", "bob-integrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-productivity-processor-2", "processing-unit", "bob-integrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-clean-processor-2", "processing-unit", "bob-integrated-electronics")
  bobmods.lib.recipe.replace_ingredient(
    "bob-pollution-create-processor-2",
    "processing-unit",
    "bob-integrated-electronics"
  )

  bobmods.lib.recipe.replace_ingredient("bob-speed-processor-3", "processing-unit", "bob-integrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-efficiency-processor-3", "processing-unit", "bob-integrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-productivity-processor-3", "processing-unit", "bob-integrated-electronics")
  bobmods.lib.recipe.replace_ingredient("bob-pollution-clean-processor-3", "processing-unit", "bob-integrated-electronics")
  bobmods.lib.recipe.replace_ingredient(
    "bob-pollution-create-processor-3",
    "processing-unit",
    "bob-integrated-electronics"
  )

  if mods["quality"] then
    bobmods.lib.recipe.replace_ingredient("bob-quality-processor-2", "processing-unit", "bob-integrated-electronics")
    bobmods.lib.recipe.replace_ingredient("bob-quality-processor-3", "processing-unit", "bob-integrated-electronics")
  end
end

if data.raw.item["bob-processing-electronics"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-speed-processor-3",
    { type = "item", name = "bob-processing-electronics", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-efficiency-processor-3",
    { type = "item", name = "bob-processing-electronics", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-productivity-processor-3",
    { type = "item", name = "bob-processing-electronics", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-clean-processor-3",
    { type = "item", name = "bob-processing-electronics", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-create-processor-3",
    { type = "item", name = "bob-processing-electronics", amount = 1 }
  )

  if mods["quality"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-quality-processor-3",
      { type = "item", name = "bob-processing-electronics", amount = 1 }
    )
  end
elseif data.raw.item["bob-advanced-processing-unit"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-speed-processor-3",
    { type = "item", name = "bob-advanced-processing-unit", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-efficiency-processor-3",
    { type = "item", name = "bob-advanced-processing-unit", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-productivity-processor-3",
    { type = "item", name = "bob-advanced-processing-unit", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-clean-processor-3",
    { type = "item", name = "bob-advanced-processing-unit", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-create-processor-3",
    { type = "item", name = "bob-advanced-processing-unit", amount = 1 }
  )

  if mods["quality"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-quality-processor-3",
      { type = "item", name = "bob-advanced-processing-unit", amount = 1 }
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

if data.raw.item["bob-solder"] then
  bobmods.lib.recipe.add_ingredient("bob-speed-processor", { type = "item", name = "bob-solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-efficiency-processor", { type = "item", name = "bob-solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-productivity-processor", { type = "item", name = "bob-solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-clean-processor", { type = "item", name = "bob-solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-create-processor", { type = "item", name = "bob-solder", amount = 1 })

  bobmods.lib.recipe.add_ingredient("bob-speed-processor-2", { type = "item", name = "bob-solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("bob-efficiency-processor-2", { type = "item", name = "bob-solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("bob-productivity-processor-2", { type = "item", name = "bob-solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-clean-processor-2", { type = "item", name = "bob-solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-create-processor-2", { type = "item", name = "bob-solder", amount = 2 })

  bobmods.lib.recipe.add_ingredient("bob-speed-processor-3", { type = "item", name = "bob-solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-efficiency-processor-3", { type = "item", name = "bob-solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-productivity-processor-3", { type = "item", name = "bob-solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-clean-processor-3", { type = "item", name = "bob-solder", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-pollution-create-processor-3", { type = "item", name = "bob-solder", amount = 3 })

  if mods["quality"] then
    bobmods.lib.recipe.add_ingredient("bob-quality-processor", { type = "item", name = "bob-solder", amount = 1 })
    bobmods.lib.recipe.add_ingredient("bob-quality-processor-2", { type = "item", name = "bob-solder", amount = 1 })
    bobmods.lib.recipe.add_ingredient("bob-quality-processor-3", { type = "item", name = "bob-solder", amount = 1 })
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

if data.raw.technology["bob-advanced-processing-unit"] then
  bobmods.lib.tech.add_recipe_unlock("bob-advanced-processing-unit", "bob-module-processor-board-3")
else
  bobmods.lib.tech.add_recipe_unlock("processing-unit", "bob-module-processor-board-3")
end

if mods["quality"] then
  bobmods.lib.tech.add_recipe_unlock("quality-module-2", "bob-quality-processor")
  bobmods.lib.tech.add_recipe_unlock("quality-module-3", "bob-quality-processor-2")
end

if data.raw.item["bob-alien-artifact"] then
  local module_names = {
    "bob-module-processor-board",
    "bob-module-processor-board-2",
    "bob-module-processor-board-3",
  }
  for i, module_name in pairs(module_names) do
    bobmods.lib.recipe.add_ingredient(module_name, { type = "item", name = "bob-alien-artifact", amount = i * 2 })
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
  bobmods.lib.tech.add_prerequisite("productivity-module-2", "bob-gem-processing-3")
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
  bobmods.lib.tech.add_prerequisite("speed-module-2", "bob-gem-processing-3")
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
  bobmods.lib.tech.add_prerequisite("efficiency-module-2", "bob-gem-processing-3")
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
  bobmods.lib.tech.add_prerequisite("bob-pollution-clean-module-2", "bob-gem-processing-3")
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
  bobmods.lib.tech.add_prerequisite("bob-pollution-create-module-2", "bob-gem-processing-3")
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
  bobmods.lib.tech.add_prerequisite("quality-module-2", "bob-gem-processing-3")
end
