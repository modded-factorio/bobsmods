if data.raw.item["bob-tin-plate"] then
  bobmods.lib.recipe.add_ingredient("bob-module-circuit-board", { type = "item", name = "bob-tin-plate", amount = 2 })
  bobmods.lib.recipe.add_ingredient("bob-module-processor-board", { type = "item", name = "bob-tin-plate", amount = 2 })
end

if data.raw.item["bob-silver-plate"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-module-processor-board-2",
    { type = "item", name = "bob-silver-plate", amount = 4 }
  )
end

if data.raw.item["bob-gold-plate"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-module-processor-board-3",
    { type = "item", name = "bob-gold-plate", amount = 8 }
  )
end

if data.raw.item["bob-tinned-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient("bob-module-contact", "copper-cable", "bob-tinned-copper-cable")
end

if data.raw.item["bob-wooden-board"] then
  bobmods.lib.recipe.replace_ingredient("bob-module-circuit-board", "plastic-bar", "bob-wooden-board")
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
    { type = "fluid", name = "bob-ferric-chloride-solution", amount = 25 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-module-processor-board",
    { type = "fluid", name = "bob-ferric-chloride-solution", amount = 25 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-module-processor-board-2",
    { type = "fluid", name = "bob-ferric-chloride-solution", amount = 25 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-module-processor-board-3",
    { type = "fluid", name = "bob-ferric-chloride-solution", amount = 50 }
  )
  if mods["bobplates"] then
    bobmods.lib.tech.add_prerequisite("modules", "bob-chemical-processing-2")
    bobmods.lib.tech.add_prerequisite("advanced-circuit", "bob-chemical-processing-2")
  end
end

if mods["bobelectronics"] then
  data.raw.recipe["bob-speed-processor"].allow_productivity = false
  data.raw.recipe["bob-speed-processor-2"].allow_productivity = false
  data.raw.recipe["bob-speed-processor-3"].allow_productivity = false
  data.raw.recipe["bob-productivity-processor"].allow_productivity = false
  data.raw.recipe["bob-productivity-processor-2"].allow_productivity = false
  data.raw.recipe["bob-productivity-processor-3"].allow_productivity = false
  data.raw.recipe["bob-efficiency-processor"].allow_productivity = false
  data.raw.recipe["bob-efficiency-processor-2"].allow_productivity = false
  data.raw.recipe["bob-efficiency-processor-3"].allow_productivity = false
  data.raw.recipe["bob-pollution-clean-processor"].allow_productivity = false
  data.raw.recipe["bob-pollution-clean-processor-2"].allow_productivity = false
  data.raw.recipe["bob-pollution-clean-processor-3"].allow_productivity = false
  data.raw.recipe["bob-pollution-create-processor"].allow_productivity = false
  data.raw.recipe["bob-pollution-create-processor-2"].allow_productivity = false
  data.raw.recipe["bob-pollution-create-processor-3"].allow_productivity = false

  data.raw.recipe["bob-speed-processor"].ingredients = {
    { type = "item", name = "bob-module-processor-board", amount = 1 },
    { type = "item", name = "bob-basic-electronic-components", amount = 16 },
    { type = "item", name = "bob-electronic-components", amount = 12 },
  }
  data.raw.recipe["bob-efficiency-processor"].ingredients = {
    { type = "item", name = "bob-module-processor-board", amount = 1 },
    { type = "item", name = "bob-basic-electronic-components", amount = 16 },
    { type = "item", name = "bob-electronic-components", amount = 12 },
  }
  data.raw.recipe["bob-productivity-processor"].ingredients = {
    { type = "item", name = "bob-module-processor-board", amount = 1 },
    { type = "item", name = "bob-basic-electronic-components", amount = 20 },
    { type = "item", name = "bob-electronic-components", amount = 16 },
  }
  data.raw.recipe["bob-pollution-clean-processor"].ingredients = {
    { type = "item", name = "bob-module-processor-board", amount = 1 },
    { type = "item", name = "bob-basic-electronic-components", amount = 12 },
    { type = "item", name = "bob-electronic-components", amount = 10 },
  }
  data.raw.recipe["bob-pollution-create-processor"].ingredients = {
    { type = "item", name = "bob-module-processor-board", amount = 1 },
    { type = "item", name = "bob-basic-electronic-components", amount = 12 },
    { type = "item", name = "bob-electronic-components", amount = 10 },
  }

  data.raw.recipe["bob-speed-processor-2"].ingredients = {
    { type = "item", name = "bob-module-processor-board-2", amount = 1 },
    { type = "item", name = "bob-electronic-components", amount = 16 },
    { type = "item", name = "bob-integrated-electronics", amount = 12 },
  }
  data.raw.recipe["bob-efficiency-processor-2"].ingredients = {
    { type = "item", name = "bob-module-processor-board-2", amount = 1 },
    { type = "item", name = "bob-electronic-components", amount = 16 },
    { type = "item", name = "bob-integrated-electronics", amount = 12 },
  }
  data.raw.recipe["bob-productivity-processor-2"].ingredients = {
    { type = "item", name = "bob-module-processor-board-2", amount = 1 },
    { type = "item", name = "bob-electronic-components", amount = 20 },
    { type = "item", name = "bob-integrated-electronics", amount = 16 },
  }
  data.raw.recipe["bob-pollution-clean-processor-2"].ingredients = {
    { type = "item", name = "bob-module-processor-board-2", amount = 1 },
    { type = "item", name = "bob-electronic-components", amount = 12 },
    { type = "item", name = "bob-integrated-electronics", amount = 10 },
  }
  data.raw.recipe["bob-pollution-create-processor-2"].ingredients = {
    { type = "item", name = "bob-module-processor-board-2", amount = 1 },
    { type = "item", name = "bob-electronic-components", amount = 12 },
    { type = "item", name = "bob-integrated-electronics", amount = 10 },
  }

  data.raw.recipe["bob-speed-processor-3"].ingredients = {
    { type = "item", name = "bob-module-processor-board-3", amount = 1 },
    { type = "item", name = "bob-integrated-electronics", amount = 16 },
    { type = "item", name = "bob-processing-electronics", amount = 12 },
  }
  data.raw.recipe["bob-efficiency-processor-3"].ingredients = {
    { type = "item", name = "bob-module-processor-board-3", amount = 1 },
    { type = "item", name = "bob-integrated-electronics", amount = 16 },
    { type = "item", name = "bob-processing-electronics", amount = 12 },
  }
  data.raw.recipe["bob-productivity-processor-3"].ingredients = {
    { type = "item", name = "bob-module-processor-board-3", amount = 1 },
    { type = "item", name = "bob-integrated-electronics", amount = 20 },
    { type = "item", name = "bob-processing-electronics", amount = 16 },
  }
  data.raw.recipe["bob-pollution-clean-processor-3"].ingredients = {
    { type = "item", name = "bob-module-processor-board-3", amount = 1 },
    { type = "item", name = "bob-integrated-electronics", amount = 12 },
    { type = "item", name = "bob-processing-electronics", amount = 10 },
  }
  data.raw.recipe["bob-pollution-create-processor-3"].ingredients = {
    { type = "item", name = "bob-module-processor-board-3", amount = 1 },
    { type = "item", name = "bob-integrated-electronics", amount = 12 },
    { type = "item", name = "bob-processing-electronics", amount = 10 },
  }

  if mods["quality"] then
    data.raw.recipe["bob-quality-processor"].allow_productivity = false
    data.raw.recipe["bob-quality-processor-2"].allow_productivity = false
    data.raw.recipe["bob-quality-processor-3"].allow_productivity = false
    data.raw.recipe["bob-quality-processor"].ingredients = {
      { type = "item", name = "bob-module-processor-board", amount = 1 },
      { type = "item", name = "bob-basic-electronic-components", amount = 20 },
      { type = "item", name = "bob-electronic-components", amount = 16 },
    }
    data.raw.recipe["bob-quality-processor-2"].ingredients = {
      { type = "item", name = "bob-module-processor-board-2", amount = 1 },
      { type = "item", name = "bob-electronic-components", amount = 20 },
      { type = "item", name = "bob-integrated-electronics", amount = 16 },
    }
    data.raw.recipe["bob-quality-processor-3"].ingredients = {
      { type = "item", name = "bob-module-processor-board-3", amount = 1 },
      { type = "item", name = "bob-integrated-electronics", amount = 20 },
      { type = "item", name = "bob-processing-electronics", amount = 16 },
    }
  end
  if data.raw.item["bob-solder"] then
    bobmods.lib.recipe.add_ingredient("bob-speed-processor", { type = "item", name = "bob-solder", amount = 6 })
    bobmods.lib.recipe.add_ingredient("bob-efficiency-processor", { type = "item", name = "bob-solder", amount = 6 })
    bobmods.lib.recipe.add_ingredient("bob-productivity-processor", { type = "item", name = "bob-solder", amount = 7 })
    bobmods.lib.recipe.add_ingredient(
      "bob-pollution-clean-processor",
      { type = "item", name = "bob-solder", amount = 4 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-pollution-create-processor",
      { type = "item", name = "bob-solder", amount = 4 }
    )

    bobmods.lib.recipe.add_ingredient("bob-speed-processor-2", { type = "item", name = "bob-solder", amount = 7 })
    bobmods.lib.recipe.add_ingredient("bob-efficiency-processor-2", { type = "item", name = "bob-solder", amount = 7 })
    bobmods.lib.recipe.add_ingredient(
      "bob-productivity-processor-2",
      { type = "item", name = "bob-solder", amount = 8 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-pollution-clean-processor-2",
      { type = "item", name = "bob-solder", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-pollution-create-processor-2",
      { type = "item", name = "bob-solder", amount = 5 }
    )

    bobmods.lib.recipe.add_ingredient("bob-speed-processor-3", { type = "item", name = "bob-solder", amount = 8 })
    bobmods.lib.recipe.add_ingredient("bob-efficiency-processor-3", { type = "item", name = "bob-solder", amount = 8 })
    bobmods.lib.recipe.add_ingredient(
      "bob-productivity-processor-3",
      { type = "item", name = "bob-solder", amount = 11 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-pollution-clean-processor-3",
      { type = "item", name = "bob-solder", amount = 7 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-pollution-create-processor-3",
      { type = "item", name = "bob-solder", amount = 7 }
    )

    if mods["quality"] then
      bobmods.lib.recipe.add_ingredient("bob-quality-processor", { type = "item", name = "bob-solder", amount = 7 })
      bobmods.lib.recipe.add_ingredient("bob-quality-processor-2", { type = "item", name = "bob-solder", amount = 8 })
      bobmods.lib.recipe.add_ingredient("bob-quality-processor-3", { type = "item", name = "bob-solder", amount = 11 })
    end
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

if data.raw.item["bob-ruby-5"] then
  bobmods.lib.tech.add_prerequisite("speed-module-2", "bob-gem-processing-3")
  bobmods.lib.tech.add_prerequisite("efficiency-module-2", "bob-gem-processing-3")
  bobmods.lib.tech.add_prerequisite("productivity-module-2", "bob-gem-processing-3")
  bobmods.lib.tech.add_prerequisite("bob-pollution-clean-module-2", "bob-gem-processing-3")
  bobmods.lib.tech.add_prerequisite("bob-pollution-create-module-2", "bob-gem-processing-3")
  if mods["quality"] then
    bobmods.lib.tech.add_prerequisite("quality-module-2", "bob-gem-processing-3")

    bobmods.lib.recipe.add_ingredient("bob-quality-processor", { type = "item", name = "bob-emerald-5", amount = 1 })
    bobmods.lib.recipe.add_ingredient("bob-quality-processor-2", { type = "item", name = "bob-topaz-5", amount = 2 })
    bobmods.lib.recipe.add_ingredient("bob-quality-processor-3", { type = "item", name = "bob-diamond-5", amount = 3 })
  end

  bobmods.lib.recipe.add_ingredient(
    "bob-productivity-processor",
    { type = "item", name = "bob-sapphire-5", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-productivity-processor-2",
    { type = "item", name = "bob-amethyst-5", amount = 2 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-productivity-processor-3",
    { type = "item", name = "bob-diamond-5", amount = 3 }
  )

  bobmods.lib.recipe.add_ingredient("bob-speed-processor", { type = "item", name = "bob-ruby-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-speed-processor-2", { type = "item", name = "bob-emerald-5", amount = 2 })
  bobmods.lib.recipe.add_ingredient("bob-speed-processor-3", { type = "item", name = "bob-topaz-5", amount = 3 })

  bobmods.lib.recipe.add_ingredient("bob-efficiency-processor", { type = "item", name = "bob-ruby-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient(
    "bob-efficiency-processor-2",
    { type = "item", name = "bob-sapphire-5", amount = 2 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-efficiency-processor-3",
    { type = "item", name = "bob-amethyst-5", amount = 3 }
  )

  bobmods.lib.recipe.add_ingredient("bob-pollution-clean-processor", { type = "item", name = "bob-ruby-5", amount = 1 })
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-clean-processor-2",
    { type = "item", name = "bob-sapphire-5", amount = 2 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-clean-processor-3",
    { type = "item", name = "bob-emerald-5", amount = 3 }
  )

  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-create-processor",
    { type = "item", name = "bob-ruby-5", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-create-processor-2",
    { type = "item", name = "bob-sapphire-5", amount = 2 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-pollution-create-processor-3",
    { type = "item", name = "bob-emerald-5", amount = 3 }
  )
end
