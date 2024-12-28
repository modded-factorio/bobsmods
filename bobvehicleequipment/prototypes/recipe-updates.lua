if
  data.raw.item["roboport-antenna-1"]
  and data.raw.item["roboport-chargepad-1"]
  and data.raw.item["roboport-door-1"]
then
  data.raw.recipe["vehicle-roboport-equipment-1"].ingredients = {
    { type = "item", name = "roboport-antenna-1", amount = 2 },
    { type = "item", name = "roboport-chargepad-1", amount = 2 },
    { type = "item", name = "roboport-door-1", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["vehicle-roboport-antenna-equipment"].ingredients = {
    { type = "item", name = "roboport-antenna-1", amount = 2 },
    { type = "item", name = "roboport-door-1", amount = 1 },
  }

  data.raw.recipe["vehicle-roboport-chargepad-equipment"].ingredients = {
    { type = "item", name = "roboport-chargepad-1", amount = 2 },
  }

  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-1", "roboport-antenna-1")
  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-1", "roboport-chargepad-1")
  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-1", "roboport-door-1")
else
  bobmods.lib.recipe.remove_ingredient("vehicle-roboport-equipment-1", "battery")
  bobmods.lib.recipe.add_ingredient("vehicle-roboport-equipment-1", { type = "item", name = "battery", amount = 20 })
end

if
  data.raw.item["roboport-antenna-2"]
  and data.raw.item["roboport-chargepad-2"]
  and data.raw.item["roboport-door-2"]
then
  data.raw.recipe["vehicle-roboport-equipment-2"].ingredients = {
    { type = "item", name = "vehicle-roboport-equipment-1", amount = 1 },
    { type = "item", name = "roboport-antenna-2", amount = 2 },
    { type = "item", name = "roboport-chargepad-2", amount = 2 },
    { type = "item", name = "roboport-door-2", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["vehicle-roboport-antenna-equipment-2"].ingredients = {
    { type = "item", name = "vehicle-roboport-antenna-equipment", amount = 1 },
    { type = "item", name = "roboport-antenna-2", amount = 2 },
    { type = "item", name = "roboport-door-2", amount = 1 },
  }

  data.raw.recipe["vehicle-roboport-chargepad-equipment-2"].ingredients = {
    { type = "item", name = "vehicle-roboport-chargepad-equipment", amount = 1 },
    { type = "item", name = "roboport-chargepad-2", amount = 2 },
  }

  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-2", "roboport-antenna-2")
  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-2", "roboport-chargepad-2")
  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-2", "roboport-door-2")

  if data.raw.item["brass-gear-wheel"] then
    bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-2", "zinc-processing")
  end
else
  data.raw.recipe["vehicle-roboport-equipment-2"].ingredients = {
    { type = "item", name = "vehicle-roboport-equipment-1", amount = 1 },
    { type = "item", name = "advanced-circuit", amount = 20 },
    { type = "item", name = "iron-gear-wheel", amount = 40 },
    { type = "item", name = "steel-plate", amount = 20 },
    { type = "item", name = "battery", amount = 20 },
  }

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-antenna-equipment-2", "steel-plate", "bob-aluminium-plate")
  end

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-chargepad-equipment-2", "steel-plate", "bob-invar-alloy")
  end

  if data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "vehicle-roboport-equipment-2",
      { type = "item", name = "steel-bearing", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "vehicle-roboport-antenna-equipment-2",
      { type = "item", name = "steel-bearing", amount = 5 }
    )
  end

  if data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-equipment-2", "iron-gear-wheel", "steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-antenna-equipment-2", "iron-gear-wheel", "steel-gear-wheel")
  end
end

if data.raw.item["bob-aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-roboport-equipment-2", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-2", "aluminium-processing")
end

if data.raw.item["bob-invar-alloy"] then
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-2", "invar-processing")
end

if
  data.raw.item["roboport-antenna-3"]
  and data.raw.item["roboport-chargepad-3"]
  and data.raw.item["roboport-door-3"]
then
  data.raw.recipe["vehicle-roboport-equipment-3"].ingredients = {
    { type = "item", name = "vehicle-roboport-equipment-2", amount = 1 },
    { type = "item", name = "roboport-antenna-3", amount = 2 },
    { type = "item", name = "roboport-chargepad-3", amount = 2 },
    { type = "item", name = "roboport-door-3", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["vehicle-roboport-antenna-equipment-3"].ingredients = {
    { type = "item", name = "vehicle-roboport-antenna-equipment-2", amount = 1 },
    { type = "item", name = "roboport-antenna-3", amount = 2 },
    { type = "item", name = "roboport-door-3", amount = 1 },
  }

  data.raw.recipe["vehicle-roboport-chargepad-equipment-3"].ingredients = {
    { type = "item", name = "vehicle-roboport-chargepad-equipment-2", amount = 1 },
    { type = "item", name = "roboport-chargepad-3", amount = 2 },
  }

  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-3", "roboport-antenna-3")
  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-3", "roboport-chargepad-3")
  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-3", "roboport-door-3")
else
  if data.raw.item["lithium-ion-battery"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-equipment-3", "battery", "lithium-ion-battery")
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-chargepad-equipment-3", "battery", "lithium-ion-battery")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-antenna-equipment-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-chargepad-equipment-3", "steel-plate", "bob-titanium-plate")
  end

  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "vehicle-roboport-equipment-3",
      { type = "item", name = "titanium-bearing", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "vehicle-roboport-antenna-equipment-3",
      { type = "item", name = "titanium-bearing", amount = 5 }
    )
  end

  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-equipment-3", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient(
      "vehicle-roboport-antenna-equipment-3",
      "iron-gear-wheel",
      "titanium-gear-wheel"
    )
  end
end

if data.raw.item["lithium-ion-battery"] then
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-3", "battery-2")
end

if data.raw.item["bob-titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-roboport-equipment-3", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-3", "titanium-processing")
end

if
  data.raw.item["roboport-antenna-4"]
  and data.raw.item["roboport-chargepad-4"]
  and data.raw.item["roboport-door-4"]
then
  data.raw.recipe["vehicle-roboport-equipment-4"].ingredients = {
    { type = "item", name = "vehicle-roboport-equipment-3", amount = 1 },
    { type = "item", name = "roboport-antenna-4", amount = 2 },
    { type = "item", name = "roboport-chargepad-4", amount = 2 },
    { type = "item", name = "roboport-door-4", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["vehicle-roboport-antenna-equipment-4"].ingredients = {
    { type = "item", name = "vehicle-roboport-antenna-equipment-3", amount = 1 },
    { type = "item", name = "roboport-antenna-4", amount = 2 },
    { type = "item", name = "roboport-door-4", amount = 1 },
  }

  data.raw.recipe["vehicle-roboport-chargepad-equipment-4"].ingredients = {
    { type = "item", name = "vehicle-roboport-chargepad-equipment-3", amount = 1 },
    { type = "item", name = "roboport-chargepad-4", amount = 2 },
  }

  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-4", "roboport-antenna-4")
  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-4", "roboport-chargepad-4")
  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-4", "roboport-door-4")
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-equipment-4", "processing-unit", "advanced-processing-unit")
    bobmods.lib.recipe.replace_ingredient(
      "vehicle-roboport-antenna-equipment-4",
      "processing-unit",
      "advanced-processing-unit"
    )
    bobmods.lib.recipe.replace_ingredient(
      "vehicle-roboport-chargepad-equipment-4",
      "processing-unit",
      "advanced-processing-unit"
    )
  end

  if data.raw.item["silver-zinc-battery"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-equipment-4", "battery", "silver-zinc-battery")
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-chargepad-equipment-4", "battery", "silver-zinc-battery")
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-antenna-equipment-4", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-chargepad-equipment-4", "steel-plate", "bob-nitinol-alloy")
  end

  if data.raw.item["nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "vehicle-roboport-equipment-4",
      { type = "item", name = "nitinol-bearing", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "vehicle-roboport-antenna-equipment-4",
      { type = "item", name = "nitinol-bearing", amount = 5 }
    )
  end

  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-equipment-4", "iron-gear-wheel", "nitinol-gear-wheel")
    bobmods.lib.recipe.replace_ingredient(
      "vehicle-roboport-antenna-equipment-4",
      "iron-gear-wheel",
      "nitinol-gear-wheel"
    )
  end
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-4", "advanced-processing-unit")
end

if data.raw.item["silver-zinc-battery"] then
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-4", "battery-3")
end

if data.raw.item["bob-nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-roboport-equipment-4", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-4", "nitinol-processing")
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-4", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient(
    "vehicle-roboport-robot-equipment-4",
    "processing-unit",
    "advanced-processing-unit"
  )
end

if data.raw.item["solder"] then
  bobmods.lib.recipe.add_ingredient("vehicle-roboport-robot-equipment", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient(
    "vehicle-roboport-robot-equipment-2",
    { type = "item", name = "solder", amount = 3 }
  )
  bobmods.lib.recipe.add_ingredient(
    "vehicle-roboport-robot-equipment-3",
    { type = "item", name = "solder", amount = 4 }
  )
  bobmods.lib.recipe.add_ingredient(
    "vehicle-roboport-robot-equipment-4",
    { type = "item", name = "solder", amount = 6 }
  )
end

if data.raw.item["bob-module-case"] then
  bobmods.lib.tech.add_recipe_unlock("robotics", "bob-module-case")
  bobmods.lib.recipe.add_ingredient(
    "vehicle-roboport-robot-equipment",
    { type = "item", name = "bob-module-case", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "vehicle-roboport-robot-equipment-2",
    { type = "item", name = "bob-module-case", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "vehicle-roboport-robot-equipment-3",
    { type = "item", name = "bob-module-case", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "vehicle-roboport-robot-equipment-4",
    { type = "item", name = "bob-module-case", amount = 1 }
  )
end

if data.raw.item["bob-glass"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-equipment-2", "steel-plate", "bob-glass")
end

if data.raw.item["bob-silver-plate"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-equipment-2", "copper-plate", "bob-silver-plate")
end

if data.raw.item["bob-invar-alloy"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-laser-defense-equipment-3", "steel-plate", "bob-invar-alloy")
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-3", "invar-processing")

  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-equipment-3", "steel-plate", "bob-invar-alloy")
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-3", "invar-processing")
end

if data.raw.item["bob-aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-equipment-3", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-3", "aluminium-processing")
end

if data.raw.item["bob-gold-plate"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-equipment-3", "copper-plate", "bob-gold-plate")
end

if data.raw.item["lithium-ion-battery"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-battery-equipment-3", "battery", "lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("vehicle-battery-equipment-3", "battery-2")

  bobmods.lib.recipe.replace_ingredient("vehicle-laser-defense-equipment-3", "battery", "lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-3", "battery-2")
  bobmods.lib.recipe.replace_ingredient("vehicle-laser-defense-equipment-4", "battery", "lithium-ion-battery")

  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-equipment-3", "battery", "lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-3", "battery-2")
  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-equipment-4", "battery", "lithium-ion-battery")
end

if data.raw.item["silicon-wafer"] then
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-solar-panel-equipment-4",
    { type = "item", name = "silicon-wafer", amount = 10 }
  )
  bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-4", "silicon-processing")
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-solar-panel-equipment-5",
    { type = "item", name = "silicon-wafer", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-solar-panel-equipment-6",
    { type = "item", name = "silicon-wafer", amount = 10 }
  )
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-equipment-3", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("vehicle-shield-equipment-3", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-equipment-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-equipment-5", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-equipment-6", "processing-unit", "advanced-processing-unit")

  bobmods.lib.recipe.replace_ingredient("vehicle-battery-equipment-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("vehicle-battery-equipment-4", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-battery-equipment-6", "processing-unit", "advanced-processing-unit")

  bobmods.lib.recipe.replace_ingredient(
    "vehicle-fission-reactor-equipment-4",
    "processing-unit",
    "advanced-processing-unit"
  )
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-4", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient(
    "vehicle-fission-reactor-equipment-5",
    "processing-unit",
    "advanced-processing-unit"
  )
  bobmods.lib.recipe.replace_ingredient(
    "vehicle-fission-reactor-equipment-6",
    "processing-unit",
    "advanced-processing-unit"
  )

  bobmods.lib.recipe.replace_ingredient(
    "vehicle-fission-cell-equipment-4",
    "processing-unit",
    "advanced-processing-unit"
  )
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-4", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient(
    "vehicle-fission-cell-equipment-5",
    "processing-unit",
    "advanced-processing-unit"
  )
  bobmods.lib.recipe.replace_ingredient(
    "vehicle-fission-cell-equipment-6",
    "processing-unit",
    "advanced-processing-unit"
  )

  bobmods.lib.recipe.replace_ingredient(
    "vehicle-solar-panel-equipment-4",
    "processing-unit",
    "advanced-processing-unit"
  )
  bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-4", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient(
    "vehicle-solar-panel-equipment-5",
    "processing-unit",
    "advanced-processing-unit"
  )
  bobmods.lib.recipe.replace_ingredient(
    "vehicle-solar-panel-equipment-6",
    "processing-unit",
    "advanced-processing-unit"
  )

  bobmods.lib.recipe.replace_ingredient(
    "vehicle-laser-defense-equipment-6",
    "processing-unit",
    "advanced-processing-unit"
  )
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-6", "advanced-processing-unit")

  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-equipment-6", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-6", "advanced-processing-unit")

  bobmods.lib.recipe.replace_ingredient("vehicle-engine-equipment", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("vehicle-engine-equipment", "advanced-processing-unit")
end

if data.raw.item["bob-titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-equipment-4", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-4", "titanium-processing")

  bobmods.lib.recipe.replace_ingredient("vehicle-laser-defense-equipment-4", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-4", "titanium-processing")

  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-equipment-4", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-4", "titanium-processing")
end

if data.raw.item["silver-zinc-battery"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-battery-equipment-5", "battery", "silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("vehicle-battery-equipment-5", "battery-3")

  bobmods.lib.recipe.replace_ingredient("vehicle-laser-defense-equipment-5", "battery", "silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-5", "battery-3")
  bobmods.lib.recipe.replace_ingredient("vehicle-laser-defense-equipment-6", "battery", "silver-zinc-battery")

  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-equipment-5", "battery", "silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-5", "battery-3")
  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-equipment-6", "battery", "silver-zinc-battery")
end

if data.raw.item["bob-nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-equipment-5", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-5", "nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-equipment-6", "steel-plate", "bob-nitinol-alloy")

  bobmods.lib.recipe.replace_ingredient("vehicle-laser-defense-equipment-5", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-5", "nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("vehicle-laser-defense-equipment-6", "steel-plate", "bob-nitinol-alloy")

  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-equipment-5", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-5", "nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-equipment-6", "steel-plate", "bob-nitinol-alloy")

  bobmods.lib.recipe.replace_ingredient("vehicle-engine-equipment", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("vehicle-engine-equipment", "nitinol-processing")
end

if data.raw.item["nitinol-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-engine-equipment", "iron-gear-wheel", "nitinol-gear-wheel")
end

if data.raw.item["nitinol-bearing"] then
  bobmods.lib.recipe.add_ingredient(
    "vehicle-engine-equipment",
    { type = "item", name = "nitinol-bearing", amount = 30 }
  )
end

if data.raw.item["gilded-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-equipment-4", "copper-cable", "gilded-copper-cable")
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-equipment-5", "copper-cable", "gilded-copper-cable")
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-equipment-6", "copper-cable", "gilded-copper-cable")
end

if data.raw.item["bob-ruby-5"] then
  bobmods.lib.recipe.add_ingredient(
    "vehicle-laser-defense-equipment-1",
    { type = "item", name = "bob-ruby-5", amount = 1 }
  )
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-1", "gem-processing-3")
end

if data.raw.item["bob-sapphire-5"] then
  bobmods.lib.recipe.add_ingredient(
    "vehicle-laser-defense-equipment-2",
    { type = "item", name = "bob-sapphire-5", amount = 1 }
  )
  bobmods.lib.recipe.remove_ingredient("vehicle-laser-defense-equipment-2", "battery")
end

if data.raw.item["bob-emerald-5"] then
  bobmods.lib.recipe.add_ingredient(
    "vehicle-laser-defense-equipment-3",
    { type = "item", name = "bob-emerald-5", amount = 1 }
  )
  bobmods.lib.recipe.remove_ingredient("vehicle-laser-defense-equipment-3", "advanced-circuit")
end

if data.raw.item["bob-amethyst-5"] then
  bobmods.lib.recipe.add_ingredient(
    "vehicle-laser-defense-equipment-4",
    { type = "item", name = "bob-amethyst-5", amount = 1 }
  )
end

if data.raw.item["bob-topaz-5"] then
  bobmods.lib.recipe.add_ingredient(
    "vehicle-laser-defense-equipment-5",
    { type = "item", name = "bob-topaz-5", amount = 1 }
  )
end

if data.raw.item["bob-diamond-5"] then
  bobmods.lib.recipe.add_ingredient(
    "vehicle-laser-defense-equipment-6",
    { type = "item", name = "bob-diamond-5", amount = 1 }
  )
  bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-6", "gem-processing-3")
  bobmods.lib.recipe.add_ingredient(
    "vehicle-solar-panel-equipment-6",
    { type = "item", name = "bob-diamond-5", amount = 1 }
  )
end

if data.raw.module["bob-efficiency-module-4"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-equipment-4", "efficiency-module-3", "bob-efficiency-module-4")
end

if data.raw.module["bob-productivity-module-4"] then
  bobmods.lib.recipe.replace_ingredient(
    "vehicle-shield-equipment-4",
    "productivity-module-3",
    "bob-productivity-module-4"
  )
end

if data.raw.module["bob-efficiency-module-5"] then
  bobmods.lib.recipe.replace_ingredient(
    "vehicle-fission-reactor-equipment-4",
    "efficiency-module-3",
    "bob-efficiency-module-5"
  )
  bobmods.lib.recipe.replace_ingredient(
    "vehicle-fission-cell-equipment-4",
    "efficiency-module-3",
    "bob-efficiency-module-5"
  )
end

if data.raw.module["bob-speed-module-5"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-fission-reactor-equipment-4", "speed-module-3", "bob-speed-module-5")
  bobmods.lib.recipe.replace_ingredient("vehicle-fission-cell-equipment-4", "speed-module-3", "bob-speed-module-5")
end

if data.raw.module["bob-productivity-module-5"] then
  bobmods.lib.recipe.replace_ingredient(
    "vehicle-fission-reactor-equipment-4",
    "productivity-module-3",
    "bob-productivity-module-5"
  )
  bobmods.lib.recipe.replace_ingredient(
    "vehicle-fission-cell-equipment-4",
    "productivity-module-3",
    "bob-productivity-module-5"
  )
end

if data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-3",
    { type = "item", name = "alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-1",
    { type = "item", name = "alien-artifact", amount = 30 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-2",
    { type = "item", name = "alien-artifact", amount = 30 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-3",
    { type = "item", name = "alien-artifact", amount = 30 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-reactor-equipment-2",
    { type = "item", name = "alien-artifact", amount = 30 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-reactor-equipment-3",
    { type = "item", name = "alien-artifact", amount = 30 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-cell-equipment-2",
    { type = "item", name = "alien-artifact", amount = 15 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-cell-equipment-3",
    { type = "item", name = "alien-artifact", amount = 15 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-solar-panel-equipment-5",
    { type = "item", name = "alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-solar-panel-equipment-6",
    { type = "item", name = "alien-artifact", amount = 10 }
  )
else
  bobmods.lib.recipe.add_ingredient(
    "vehicle-fission-reactor-equipment-2",
    { type = "item", name = "processing-unit", amount = 50 }
  )
  bobmods.lib.recipe.add_ingredient(
    "vehicle-fission-reactor-equipment-3",
    { type = "item", name = "processing-unit", amount = 50 }
  )

  bobmods.lib.recipe.add_ingredient(
    "vehicle-fission-cell-equipment-2",
    { type = "item", name = "processing-unit", amount = 25 }
  )
  bobmods.lib.recipe.add_ingredient(
    "vehicle-fission-cell-equipment-3",
    { type = "item", name = "processing-unit", amount = 25 }
  )

  bobmods.lib.recipe.add_ingredient(
    "vehicle-solar-panel-equipment-5",
    { type = "item", name = "processing-unit", amount = 10 }
  )
  bobmods.lib.recipe.add_ingredient(
    "vehicle-solar-panel-equipment-6",
    { type = "item", name = "processing-unit", amount = 10 }
  )
end

if data.raw.item["alien-artifact-orange"] and data.raw.item["alien-artifact-blue"] then
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-4",
    { type = "item", name = "alien-artifact-orange", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-battery-equipment-4",
    { type = "item", name = "alien-artifact-orange", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-reactor-equipment-4",
    { type = "item", name = "alien-artifact-orange", amount = 15 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-cell-equipment-4",
    { type = "item", name = "alien-artifact-orange", amount = 8 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-4",
    { type = "item", name = "alien-artifact-orange", amount = 15 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-4",
    { type = "item", name = "alien-artifact-blue", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-battery-equipment-4",
    { type = "item", name = "alien-artifact-blue", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-reactor-equipment-4",
    { type = "item", name = "alien-artifact-blue", amount = 15 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-cell-equipment-4",
    { type = "item", name = "alien-artifact-blue", amount = 8 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-4",
    { type = "item", name = "alien-artifact-blue", amount = 15 }
  )
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-4",
    { type = "item", name = "alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-battery-equipment-4",
    { type = "item", name = "alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-reactor-equipment-4",
    { type = "item", name = "alien-artifact", amount = 30 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-cell-4",
    { type = "item", name = "alien-artifact", amount = 15 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-4",
    { type = "item", name = "alien-artifact", amount = 30 }
  )
else
  bobmods.lib.recipe.add_ingredient(
    "vehicle-fission-reactor-equipment-4",
    { type = "item", name = "processing-unit", amount = 50 }
  )
  bobmods.lib.recipe.add_ingredient(
    "vehicle-fission-cell-equipment-4",
    { type = "item", name = "processing-unit", amount = 25 }
  )
end

if data.raw.item["alien-artifact-yellow"] and data.raw.item["alien-artifact-purple"] then
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-5",
    { type = "item", name = "alien-artifact-yellow", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-battery-equipment-5",
    { type = "item", name = "alien-artifact-yellow", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-reactor-equipment-5",
    { type = "item", name = "alien-artifact-yellow", amount = 15 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-cell-equipment-5",
    { type = "item", name = "alien-artifact-yellow", amount = 8 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-5",
    { type = "item", name = "alien-artifact-yellow", amount = 15 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-5",
    { type = "item", name = "alien-artifact-purple", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-battery-equipment-5",
    { type = "item", name = "alien-artifact-purple", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-reactor-equipment-5",
    { type = "item", name = "alien-artifact-purple", amount = 15 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-cell-equipment-5",
    { type = "item", name = "alien-artifact-purple", amount = 8 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-5",
    { type = "item", name = "alien-artifact-purple", amount = 15 }
  )
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-5",
    { type = "item", name = "alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-battery-equipment-5",
    { type = "item", name = "alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-reactor-equipment-5",
    { type = "item", name = "alien-artifact", amount = 30 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-cell-equipment-5",
    { type = "item", name = "alien-artifact", amount = 15 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-5",
    { type = "item", name = "alien-artifact", amount = 30 }
  )
else
  bobmods.lib.recipe.add_ingredient(
    "vehicle-fission-reactor-equipment-5",
    { type = "item", name = "processing-unit", amount = 50 }
  )
  bobmods.lib.recipe.add_ingredient(
    "vehicle-fission-cell-equipment-5",
    { type = "item", name = "processing-unit", amount = 25 }
  )
end

if data.raw.item["alien-artifact-red"] and data.raw.item["alien-artifact-green"] then
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-6",
    { type = "item", name = "alien-artifact-red", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-battery-equipment-6",
    { type = "item", name = "alien-artifact-red", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-reactor-equipment-6",
    { type = "item", name = "alien-artifact-red", amount = 15 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-cell-equipment-6",
    { type = "item", name = "alien-artifact-red", amount = 8 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-6",
    { type = "item", name = "alien-artifact-red", amount = 15 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-6",
    { type = "item", name = "alien-artifact-green", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-battery-equipment-6",
    { type = "item", name = "alien-artifact-green", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-reactor-equipment-6",
    { type = "item", name = "alien-artifact-green", amount = 15 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-cell-equipment-6",
    { type = "item", name = "alien-artifact-green", amount = 8 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-6",
    { type = "item", name = "alien-artifact-green", amount = 15 }
  )
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-6",
    { type = "item", name = "alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-battery-equipment-6",
    { type = "item", name = "alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-reactor-equipment-6",
    { type = "item", name = "alien-artifact", amount = 30 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-cell-equipment-6",
    { type = "item", name = "alien-artifact", amount = 15 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-6",
    { type = "item", name = "alien-artifact", amount = 30 }
  )
else
  bobmods.lib.recipe.add_ingredient(
    "vehicle-fission-reactor-equipment-6",
    { type = "item", name = "processing-unit", amount = 50 }
  )
  bobmods.lib.recipe.add_ingredient(
    "vehicle-fission-cell-equipment-6",
    { type = "item", name = "processing-unit", amount = 25 }
  )
end
