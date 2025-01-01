if
  data.raw.item["roboport-antenna-1"]
  and data.raw.item["roboport-chargepad-1"]
  and data.raw.item["roboport-door-1"]
then
  data.raw.recipe["vehicle-roboport-equipment-1"].ingredients = {
    { type = "item", name = "roboport-antenna-1", amount = 4 },
    { type = "item", name = "roboport-chargepad-1", amount = 4 },
    { type = "item", name = "roboport-door-1", amount = 1 },
    { type = "item", name = "steel-plate", amount = 10 },
  }

  data.raw.recipe["vehicle-roboport-antenna-equipment"].ingredients = {
    { type = "item", name = "roboport-antenna-1", amount = 4 },
    { type = "item", name = "roboport-door-1", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["vehicle-roboport-chargepad-equipment"].ingredients = {
    { type = "item", name = "roboport-chargepad-1", amount = 4 },
    { type = "item", name = "steel-plate", amount = 4 },
  }

  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-1", "roboport-antenna-1")
  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-1", "roboport-chargepad-1")
  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-1", "roboport-door-1")
else
  bobmods.lib.recipe.remove_ingredient("vehicle-roboport-equipment-1", "battery")
  bobmods.lib.recipe.add_ingredient("vehicle-roboport-equipment-1", { type = "item", name = "battery", amount = 40 })
end

if
  data.raw.item["roboport-antenna-2"]
  and data.raw.item["roboport-chargepad-2"]
  and data.raw.item["roboport-door-2"]
then
  data.raw.recipe["vehicle-roboport-equipment-2"].ingredients = {
    { type = "item", name = "vehicle-roboport-equipment-1", amount = 1 },
    { type = "item", name = "roboport-antenna-2", amount = 4 },
    { type = "item", name = "roboport-chargepad-2", amount = 8 },
    { type = "item", name = "roboport-door-2", amount = 1 },
    { type = "item", name = "steel-plate", amount = 10 },
  }

  data.raw.recipe["vehicle-roboport-antenna-equipment-2"].ingredients = {
    { type = "item", name = "vehicle-roboport-antenna-equipment", amount = 1 },
    { type = "item", name = "roboport-antenna-2", amount = 4 },
    { type = "item", name = "roboport-door-2", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["vehicle-roboport-chargepad-equipment-2"].ingredients = {
    { type = "item", name = "vehicle-roboport-chargepad-equipment", amount = 1 },
    { type = "item", name = "roboport-chargepad-2", amount = 8 },
    { type = "item", name = "steel-plate", amount = 4 },
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
    { type = "item", name = "advanced-circuit", amount = 40 },
    { type = "item", name = "iron-gear-wheel", amount = 80 },
    { type = "item", name = "steel-plate", amount = 40 },
    { type = "item", name = "battery", amount = 40 },
  }

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-antenna-equipment-2", "steel-plate", "bob-aluminium-plate")
  end

  if data.raw.item["invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-chargepad-equipment-2", "steel-plate", "invar-alloy")
  end

  if data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "vehicle-roboport-equipment-2",
      { type = "item", name = "steel-bearing", amount = 10 }
    )
    bobmods.lib.recipe.add_ingredient(
      "vehicle-roboport-antenna-equipment-2",
      { type = "item", name = "steel-bearing", amount = 10 }
    )
  end

  if data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-equipment-2", "iron-gear-wheel", "steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-antenna-equipment-2", "iron-gear-wheel", "steel-gear-wheel")
  end
end

if data.raw.item["bob-aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-roboport-equipment-2", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.recipe.replace_ingredient("vehicle-roboport-antenna-equipment-2", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.recipe.replace_ingredient("vehicle-roboport-chargepad-equipment-2", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-2", "aluminium-processing")
  bobmods.lib.recipe.remove_ingredient("vehicle-solar-panel-equipment-2", "steel-plate")
  bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-equipment-2", { type = "item", name = "bob-aluminium-plate", amount = 16 })
  bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-2", "aluminium-processing")
end

if data.raw.item["tinned-copper-cable"] then
  bobmods.lib.recipe.remove_ingredient("vehicle-solar-panel-equipment-2", "copper-cable")
  bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-equipment-2", { type = "item", name = "tinned-copper-cable", amount = 32 })
end

if data.raw.item["invar-alloy"] then
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-2", "invar-processing")
end

if
  data.raw.item["roboport-antenna-3"]
  and data.raw.item["roboport-chargepad-3"]
  and data.raw.item["roboport-door-3"]
then
  data.raw.recipe["vehicle-roboport-equipment-3"].ingredients = {
    { type = "item", name = "vehicle-roboport-equipment-2", amount = 1 },
    { type = "item", name = "roboport-antenna-3", amount = 4 },
    { type = "item", name = "roboport-chargepad-3", amount = 12 },
    { type = "item", name = "roboport-door-3", amount = 1 },
    { type = "item", name = "steel-plate", amount = 10 },
  }

  data.raw.recipe["vehicle-roboport-antenna-equipment-3"].ingredients = {
    { type = "item", name = "vehicle-roboport-antenna-equipment-2", amount = 1 },
    { type = "item", name = "roboport-antenna-3", amount = 4 },
    { type = "item", name = "roboport-door-3", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["vehicle-roboport-chargepad-equipment-3"].ingredients = {
    { type = "item", name = "vehicle-roboport-chargepad-equipment-2", amount = 1 },
    { type = "item", name = "roboport-chargepad-3", amount = 12 },
    { type = "item", name = "steel-plate", amount = 4 },
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
      { type = "item", name = "titanium-bearing", amount = 10 }
    )
    bobmods.lib.recipe.add_ingredient(
      "vehicle-roboport-antenna-equipment-3",
      { type = "item", name = "titanium-bearing", amount = 10 }
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
  bobmods.lib.recipe.replace_ingredient("vehicle-roboport-antenna-equipment-3", "steel-plate", "bob-titanium-plate")
  bobmods.lib.recipe.replace_ingredient("vehicle-roboport-chargepad-equipment-3", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-3", "titanium-processing")
  bobmods.lib.recipe.remove_ingredient("vehicle-solar-panel-equipment-3", "steel-plate")
  bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-equipment-3", { type = "item", name = "bob-titanium-plate", amount = 16 })
  bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-3", "titanium-processing")
end

if
  data.raw.item["roboport-antenna-4"]
  and data.raw.item["roboport-chargepad-4"]
  and data.raw.item["roboport-door-4"]
then
  data.raw.recipe["vehicle-roboport-equipment-4"].ingredients = {
    { type = "item", name = "vehicle-roboport-equipment-3", amount = 1 },
    { type = "item", name = "roboport-antenna-4", amount = 4 },
    { type = "item", name = "roboport-chargepad-4", amount = 16 },
    { type = "item", name = "roboport-door-4", amount = 1 },
    { type = "item", name = "steel-plate", amount = 10 },
  }

  data.raw.recipe["vehicle-roboport-antenna-equipment-4"].ingredients = {
    { type = "item", name = "vehicle-roboport-antenna-equipment-3", amount = 1 },
    { type = "item", name = "roboport-antenna-4", amount = 4 },
    { type = "item", name = "roboport-door-4", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["vehicle-roboport-chargepad-equipment-4"].ingredients = {
    { type = "item", name = "vehicle-roboport-chargepad-equipment-3", amount = 1 },
    { type = "item", name = "roboport-chargepad-4", amount = 16 },
    { type = "item", name = "steel-plate", amount = 4 },
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

  if data.raw.item["nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-antenna-equipment-4", "steel-plate", "nitinol-alloy")
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-chargepad-equipment-4", "steel-plate", "nitinol-alloy")
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

if data.raw.item["silver-zinc-battery"] then
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-4", "battery-3")
end

if data.raw.item["nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-roboport-equipment-4", "steel-plate", "nitinol-alloy")
  bobmods.lib.recipe.replace_ingredient("vehicle-roboport-antenna-equipment-4", "steel-plate", "nitinol-alloy")
  bobmods.lib.recipe.replace_ingredient("vehicle-roboport-chargepad-equipment-4", "steel-plate", "nitinol-alloy")
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
  bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-equipment-1", { type = "item", name = "bob-glass", amount = 16 })
end

if data.raw.item["silver-plate"] then
  bobmods.lib.recipe.remove_ingredient("vehicle-solar-panel-equipment-2", "copper-plate")
  bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-equipment-2", { type = "item", name = "silver-plate", amount = 16 })
end

if data.raw.item["invar-alloy"] then
  bobmods.lib.recipe.remove_ingredient("vehicle-laser-defense-equipment-3", "steel-plate")
  bobmods.lib.recipe.add_ingredient("vehicle-laser-defense-equipment-3", { type = "item", name = "invar-alloy", amount = 10 })
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-3", "invar-processing")

  if data.raw.item["cobalt-steel-alloy"] then
    bobmods.lib.recipe.remove_ingredient("vehicle-big-turret-equipment-1", "steel-plate")
    bobmods.lib.recipe.add_ingredient("vehicle-big-turret-equipment-1", { type = "item", name = "cobalt-steel-alloy", amount = 50 })
    bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-1", "cobalt-processing")
    bobmods.lib.recipe.add_ingredient("vehicle-big-turret-equipment-1", { type = "item", name = "invar-alloy", amount = 50 })
  else
    bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-equipment-1", "steel-plate", "invar-alloy")
  end
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-1", "invar-processing")
end

if mods["bobplates"] then
  bobmods.lib.recipe.add_ingredient("vehicle-big-turret-equipment-1", { type = "fluid", name = "nitrogen", amount = 100 })
  data.raw.recipe["vehicle-big-turret-equipment-1"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-1", "nitrogen-processing")
  bobmods.lib.recipe.add_ingredient("vehicle-big-turret-equipment-2", { type = "fluid", name = "hydrogen", amount = 50 })
  data.raw.recipe["vehicle-big-turret-equipment-2"].category = "crafting-with-fluid"
  bobmods.lib.recipe.add_ingredient("vehicle-big-turret-equipment-3", { type = "fluid", name = "deuterium", amount = 20 })
  data.raw.recipe["vehicle-big-turret-equipment-3"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-3", "deuterium-processing")
end

if data.raw.item["bob-aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-equipment-3", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-3", "aluminium-processing")
end

if data.raw.item["bob-gold-plate"] then
  bobmods.lib.recipe.remove_ingredient("vehicle-solar-panel-equipment-3", "copper-plate") 
  bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-equipment-3", { type = "item", name = "bob-gold-plate", amount = 16 })
  bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-3", "gold-processing")
end

if data.raw.item["gilded-copper-cable"] then
  bobmods.lib.recipe.remove_ingredient("vehicle-solar-panel-equipment-3", "copper-cable")
  bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-equipment-3", { type = "item", name = "gilded-copper-cable", amount = 32 })
end

if data.raw.item["lithium-ion-battery"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-battery-equipment-3", "battery", "lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("vehicle-battery-equipment-3", "battery-2")

  bobmods.lib.recipe.remove_ingredient("vehicle-laser-defense-equipment-3", "battery")
  bobmods.lib.recipe.add_ingredient("vehicle-laser-defense-equipment-3", { type = "item", name = "lithium-ion-battery", amount = 6 })
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-3", "battery-2")

  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-equipment-2", "battery", "lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-2", "battery-2")
end

if data.raw.item["silicon-wafer"] then
  bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-equipment-1", { type = "item", name = "silicon-wafer", amount = 64 })
  bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-equipment-2", { type = "item", name = "silicon-wafer", amount = 48 })
  bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-equipment-3", { type = "item", name = "silicon-wafer", amount = 32 })
elseif data.raw.item["bob-silicon-plate"] then
  bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-equipment-1", { type = "item", name = "bob-silicon-plate", amount = 12 })
  bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-equipment-2", { type = "item", name = "bob-silicon-plate", amount = 8 })
  bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-equipment-3", { type = "item", name = "bob-silicon-plate", amount = 4 })
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-equipment-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("vehicle-shield-equipment-4", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-equipment-5", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-equipment-6", "processing-unit", "advanced-processing-unit")

  bobmods.lib.recipe.replace_ingredient("vehicle-battery-equipment-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("vehicle-battery-equipment-4", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-battery-equipment-6", "processing-unit", "advanced-processing-unit")

  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-4", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-fission-reactor-equipment-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-fission-reactor-equipment-5", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-fission-reactor-equipment-6", "processing-unit", "advanced-processing-unit")

  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-4", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-fission-cell-equipment-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-fission-cell-equipment-5", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-fission-cell-equipment-6", "processing-unit", "advanced-processing-unit")

  if data.raw.recipe["vehicle-solar-panel-equipment-4"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-equipment-4", "processing-unit", "advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-4", "advanced-processing-unit")
    if data.raw.recipe["vehicle-solar-panel-equipment-5"] then
      bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-equipment-5", "processing-unit", "advanced-processing-unit")
    end
  end

  bobmods.lib.recipe.remove_ingredient("vehicle-laser-defense-equipment-6", "processing-unit")
  bobmods.lib.recipe.add_ingredient("vehicle-laser-defense-equipment-6", { type = "item", name = "advanced-processing-unit", amount = 10 })
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-6", "advanced-processing-unit")

  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-equipment-3", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-3", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-equipment-4", "processing-unit", "advanced-processing-unit")

  bobmods.lib.recipe.replace_ingredient("vehicle-engine-equipment", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("vehicle-engine-equipment", "advanced-processing-unit")
end

if data.raw.item["bob-titanium-plate"] then
  bobmods.lib.recipe.remove_ingredient("vehicle-laser-defense-equipment-4", "steel-plate")
  bobmods.lib.recipe.add_ingredient("vehicle-laser-defense-equipment-4", { type = "item", name = "bob-titanium-plate", amount = 10 })
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-4", "titanium-processing")

  bobmods.lib.recipe.remove_ingredient("vehicle-big-turret-equipment-2", "steel-plate")
  bobmods.lib.recipe.add_ingredient("vehicle-big-turret-equipment-2", { type = "item", name = "bob-titanium-plate", amount = 50 })
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-2", "titanium-processing")
end

if data.raw.item["silver-zinc-battery"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-battery-equipment-5", "battery", "silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("vehicle-battery-equipment-5", "battery-3")

  bobmods.lib.recipe.remove_ingredient("vehicle-laser-defense-equipment-5", "battery")
  bobmods.lib.recipe.add_ingredient("vehicle-laser-defense-equipment-5", { type = "item", name = "silver-zinc-battery", amount = 6 })
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-5", "battery-3")
  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-equipment-3", "battery", "silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-3", "battery-3")
end

if data.raw.item["nitinol-alloy"] then
  if data.raw.recipe["vehicle-solar-panel-equipment-4"] then
    bobmods.lib.recipe.remove_ingredient("vehicle-solar-panel-equipment-4", "steel-plate")
    bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-equipment-4", { type = "item", name = "nitinol-alloy", amount = 16 })
    bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-4", "nitinol-processing")
  end

  bobmods.lib.recipe.remove_ingredient("vehicle-laser-defense-equipment-5", "steel-plate")
  bobmods.lib.recipe.add_ingredient("vehicle-laser-defense-equipment-5", { type = "item", name = "nitinol-alloy", amount = 10 })
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-5", "nitinol-processing")

  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-3", "nitinol-processing")
  bobmods.lib.recipe.remove_ingredient("vehicle-big-turret-equipment-3", "steel-plate")
  bobmods.lib.recipe.add_ingredient("vehicle-big-turret-equipment-3", { type = "item", name = "nitinol-alloy", amount = 50 })

  bobmods.lib.recipe.replace_ingredient("vehicle-engine-equipment", "steel-plate", "nitinol-alloy")
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

if data.raw.item["copper-tungsten-alloy"] then
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-3", "tungsten-alloy-processing")
  bobmods.lib.recipe.remove_ingredient("vehicle-big-turret-equipment-3", "steel-plate")
  bobmods.lib.recipe.add_ingredient("vehicle-big-turret-equipment-3", { type = "item", name = "copper-tungsten-alloy", amount = 50 })
end

if data.raw.item["bob-lead-plate"] then
  if data.raw.recipe["vehicle-solar-panel-equipment-4"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-equipment-4", "copper-plate", "bob-lead-plate")
  end
  bobmods.lib.recipe.add_ingredient("vehicle-fission-reactor-equipment-1", { type = "item", name = "bob-lead-plate", amount = 100 })
  bobmods.lib.recipe.add_ingredient("vehicle-fission-cell-equipment-1", { type = "item", name = "bob-lead-plate", amount = 60 })
end

if data.raw.fluid["hydrogen-chloride"] then
  if data.raw.recipe["vehicle-solar-panel-equipment-4"] then
    bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-equipment-4", { type = "fluid", name = "hydrogen-chloride", amount = 240 })
    data.raw.recipe["vehicle-solar-panel-equipment-4"].category = "crafting-with-fluid"
  end
end

if data.raw.item.carbon then
  bobmods.lib.recipe.add_ingredient("vehicle-fission-reactor-equipment-1", { type = "item", name = "carbon", amount = 40 })
  bobmods.lib.recipe.add_ingredient("vehicle-fission-cell-equipment-1", { type = "item", name = "carbon", amount = 20 })
end

if data.raw.fluid["heavy-water"] then
  bobmods.lib.recipe.add_ingredient("vehicle-fission-reactor-equipment-2", { type = "fluid", name = "heavy-water", amount = 50 })
  bobmods.lib.recipe.add_ingredient("vehicle-fission-cell-equipment-2", { type = "fluid", name = "heavy-water", amount = 25 })
  data.raw.recipe["vehicle-fission-reactor-equipment-2"].category = "crafting-with-fluid"
  data.raw.recipe["vehicle-fission-cell-equipment-2"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-2", "heavy-water-processing")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-2", "heavy-water-processing")
end

if data.raw.item["bob-tungsten-plate"] then
  bobmods.lib.recipe.remove_ingredient("vehicle-fission-reactor-equipment-3", "low-density-structure")
  bobmods.lib.recipe.remove_ingredient("vehicle-fission-cell-equipment-3", "low-density-structure")
  bobmods.lib.tech.remove_prerequisite("vehicle-fission-reactor-equipment-3", "low-density-structure")
  bobmods.lib.tech.remove_prerequisite("vehicle-fission-cell-equipment-3", "low-density-structure")
  bobmods.lib.recipe.add_ingredient("vehicle-fission-reactor-equipment-3", { type = "item", name = "bob-tungsten-plate", amount = 250 })
  bobmods.lib.recipe.add_ingredient("vehicle-fission-cell-equipment-3", { type = "item", name = "bob-tungsten-plate", amount = 150 })
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-3", "tungsten-processing")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-3", "tungsten-processing")  
  bobmods.lib.recipe.add_ingredient("vehicle-big-turret-equipment-2", { type = "item", name = "bob-tungsten-plate", amount = 50 })
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-2", "tungsten-processing")
end

if data.raw.item["tungsten-carbide"] then
  bobmods.lib.recipe.add_ingredient("vehicle-fission-reactor-equipment-4", { type = "item", name = "tungsten-carbide", amount = 80 })
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-4", "tungsten-alloy-processing")
  bobmods.lib.recipe.add_ingredient("vehicle-fission-cell-equipment-4", { type = "item", name = "tungsten-carbide", amount = 40 })
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-4", "tungsten-alloy-processing")
end

if data.raw.item["heat-shield-tile"] then
  bobmods.lib.recipe.add_ingredient("vehicle-big-turret-equipment-4", { type = "item", name = "heat-shield-tile", amount = 30 })
end

if data.raw.item.lithium then
  bobmods.lib.recipe.add_ingredient("vehicle-fission-reactor-equipment-4", { type = "item", name = "lithium", amount = 40 })
  bobmods.lib.recipe.add_ingredient("vehicle-fission-cell-equipment-4", { type = "item", name = "lithium", amount = 20 })
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-4", "lithium-processing")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-4", "lithium-processing")
end

if data.raw.module["bob-speed-module-5"] then
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-3", { type = "item", name = "efficiency-module-2", amount = 2 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-3", { type = "item", name = "speed-module-2", amount = 2 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-4", { type = "item", name = "efficiency-module-3", amount = 2 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-4", { type = "item", name = "speed-module-3", amount = 2 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-5", { type = "item", name = "bob-efficiency-module-4", amount = 2 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-5", { type = "item", name = "bob-speed-module-4", amount = 2 })
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-3", "efficiency-module-2")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-3", "speed-module-2")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-4", "efficiency-module-3")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-4", "speed-module-3")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-5", "bob-efficiency-module-4")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-5", "bob-speed-module-4")

  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-3", { type = "item", name = "efficiency-module-2", amount = 1 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-3", { type = "item", name = "speed-module-2", amount = 1 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-4", { type = "item", name = "efficiency-module-3", amount = 1 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-4", { type = "item", name = "speed-module-3", amount = 1 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-5", { type = "item", name = "bob-efficiency-module-4", amount = 1 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-5", { type = "item", name = "bob-speed-module-4", amount = 1 })
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-3", "efficiency-module-2")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-3", "speed-module-2")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-4", "efficiency-module-3")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-4", "speed-module-3")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-5", "bob-efficiency-module-4")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-5", "bob-speed-module-4")

  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-6", { type = "item", name = "bob-speed-module-5", amount = 2 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-6", { type = "item", name = "bob-efficiency-module-5", amount = 2 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-6", { type = "item", name = "bob-productivity-module-5", amount = 2 })
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-6", "bob-speed-module-5")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-6", "bob-efficiency-module-5")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-6", "bob-productivity-module-5")
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-6", { type = "item", name = "bob-speed-module-5", amount = 1 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-6", { type = "item", name = "bob-efficiency-module-5", amount = 1 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-6", { type = "item", name = "bob-productivity-module-5", amount = 1 })
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-6", "bob-speed-module-5")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-6", "bob-efficiency-module-5")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-6", "bob-productivity-module-5")
  if data.raw.module["quality-module-5"] then
    bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-6", { type = "item", name = "bob-quality-module-5", amount = 2 })
    bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-6", "bob-quality-module-5")
    bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-6", { type = "item", name = "bob-quality-module-5", amount = 1 })
    bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-6", "bob-quality-module-5")    bobmods.lib.recipe.add_new_ingredient("vehicle-big-turret-equipment-4", { type = "item", name = "bob-quality-module-5", amount = 1 })
    bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-4", "bob-quality-module-5")
  end
  bobmods.lib.recipe.remove_ingredient("vehicle-big-turret-equipment-4", "efficiency-module-3")
  bobmods.lib.recipe.add_new_ingredient("vehicle-big-turret-equipment-4", { type = "item", name = "bob-efficiency-module-5", amount = 1 })
  bobmods.lib.tech.remove_prerequisite("vehicle-big-turret-equipment-4", "efficiency-module-3")
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-4", "bob-efficiency-module-5")
else
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-3", { type = "item", name = "efficiency-module-2", amount = 2 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-3", { type = "item", name = "speed-module-2", amount = 2 })
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-3", "efficiency-module-2")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-3", "speed-module-2")
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-4", { type = "item", name = "efficiency-module-3", amount = 2 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-4", { type = "item", name = "speed-module-3", amount = 2 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-5", { type = "item", name = "productivity-module-3", amount = 4 })
  if data.raw.module["quality-module-3"] then
    bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-5", { type = "item", name = "quality-module-3", amount = 4 })
    bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-5", "quality-module-3")
    bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-6", { type = "item", name = "quality-module-3", amount = 6 })

    bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-5", { type = "item", name = "quality-module-3", amount = 2 })
    bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-5", "quality-module-3")
    bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-6", { type = "item", name = "quality-module-3", amount = 3 })
    bobmods.lib.recipe.add_new_ingredient("vehicle-big-turret-equipment-4", { type = "item", name = "quality-module-3", amount = 2 })
    bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-4", "quality-module-3")
  end
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-4", "efficiency-module-3")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-4", "speed-module-3")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-5", "productivity-module-3")

  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-3", { type = "item", name = "efficiency-module-2", amount = 1 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-3", { type = "item", name = "speed-module-2", amount = 1 })
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-3", "efficiency-module-2")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-3", "speed-module-2")
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-4", { type = "item", name = "efficiency-module-3", amount = 1 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-4", { type = "item", name = "speed-module-3", amount = 1 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-5", { type = "item", name = "productivity-module-3", amount = 2 })
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-4", "efficiency-module-3")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-4", "speed-module-3")
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-5", "productivity-module-3")

  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-6", { type = "item", name = "efficiency-module-3", amount = 6 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-6", { type = "item", name = "efficiency-module-3", amount = 3 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-6", { type = "item", name = "speed-module-3", amount = 6 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-6", { type = "item", name = "speed-module-3", amount = 3 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-reactor-equipment-6", { type = "item", name = "productivity-module-3", amount = 6 })
  bobmods.lib.recipe.add_new_ingredient("vehicle-fission-cell-equipment-6", { type = "item", name = "productivity-module-3", amount = 3 })
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-6", "productivity-module-3")
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

  bobmods.lib.recipe.add_ingredient("vehicle-fission-reactor-equipment-6", { type = "item", name = "bob-emerald-5", amount = 20 })
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-6", "gem-processing-3")
  bobmods.lib.recipe.add_ingredient("vehicle-fission-cell-equipment-6", { type = "item", name = "bob-emerald-5", amount = 10 })
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-6", "gem-processing-3")
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
  if data.raw.recipe["vehicle-solar-panel-equipment-5"] then
    bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-5", "gem-processing-3")
    bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-equipment-5", { type = "item", name = "bob-diamond-5", amount = 4 })
  end
end

if data.raw.module["efficiency-module-4"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-equipment-5", "efficiency-module-3", "efficiency-module-4")
end

if data.raw.module["productivity-module-4"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-equipment-5", "productivity-module-3", "productivity-module-4")
end

if data.raw.module["efficiency-module-5"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-equipment-6", "efficiency-module-3", "efficiency-module-5")
end

if data.raw.module["productivity-module-5"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-equipment-6", "productivity-module-3", "productivity-module-5")
end

if data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-3",
    { type = "item", name = "alien-artifact", amount = 20 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-1",
    { type = "item", name = "alien-artifact", amount = 50 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-reactor-equipment-3",
    { type = "item", name = "alien-artifact", amount = 30 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-cell-equipment-3",
    { type = "item", name = "alien-artifact", amount = 15 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-laser-defense-equipment-5",
    { type = "item", name = "alien-artifact", amount = 10 }
  )
end

if data.raw.item["alien-artifact-orange"] and data.raw.item["alien-artifact-blue"] then
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-4",
    { type = "item", name = "alien-artifact-orange", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-battery-equipment-4",
    { type = "item", name = "alien-artifact-orange", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-2",
    { type = "item", name = "alien-artifact-orange", amount = 40 }
  )
  if data.raw.item["alien-orange-alloy"] then
    bobmods.lib.recipe.add_ingredient("vehicle-laser-defense-equipment-6", { type = "item", name = "alien-orange-alloy", amount = 30 })
    bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-6", "alien-orange-research")
    bobmods.lib.recipe.add_ingredient("vehicle-big-turret-equipment-4", { type = "item", name = "alien-orange-alloy", amount = 50 })
    bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-4", "alien-orange-research")
  else
    bobmods.lib.recipe.add_ingredient("vehicle-laser-defense-equipment-6", { type = "item", name = "alien-artifact-orange", amount = 10 })
    bobmods.lib.recipe.add_ingredient("vehicle-big-turret-equipment-4", { type = "item", name = "alien-artifact-orange", amount = 80 })
  end

  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-4",
    { type = "item", name = "alien-artifact-blue", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-battery-equipment-4",
    { type = "item", name = "alien-artifact-blue", amount = 5 }
  )
  if data.raw.item["alien-blue-alloy"] then
    bobmods.lib.recipe.add_ingredient("vehicle-fission-reactor-equipment-5", { type = "item", name = "alien-blue-alloy", amount = 40 })
    bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-5", "alien-blue-research")
    bobmods.lib.recipe.add_ingredient("vehicle-fission-cell-equipment-5", { type = "item", name = "alien-blue-alloy", amount = 20 })
    bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-5", "alien-blue-research")
    bobmods.lib.recipe.add_ingredient("vehicle-laser-defense-equipment-6", { type = "item", name = "alien-blue-alloy", amount = 30 })
    bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-6", "alien-blue-research")
  else
    bobmods.lib.recipe.add_ingredient("vehicle-fission-reactor-equipment-5", { type = "item", name = "alien-artifact-blue", amount = 15 })
    bobmods.lib.recipe.add_ingredient("vehicle-fission-cell-equipment-5", { type = "item", name = "alien-artifact-blue", amount = 8 })
    bobmods.lib.recipe.add_ingredient("vehicle-laser-defense-equipment-6", { type = "item", name = "alien-artifact-blue", amount = 10 })
  end
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-4",
    { type = "item", name = "alien-artifact", amount = 30 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-battery-equipment-4",
    { type = "item", name = "alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-2",
    { type = "item", name = "alien-artifact", amount = 80 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-reactor-equipment-5",
    { type = "item", name = "alien-artifact", amount = 80 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-cell-equipment-5",
    { type = "item", name = "alien-artifact", amount = 40 }
  )
end

if data.raw.item["alien-artifact-yellow"] and data.raw.item["alien-artifact-purple"] then
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-5",
    { type = "item", name = "alien-artifact-yellow", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-battery-equipment-5",
    { type = "item", name = "alien-artifact-yellow", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-reactor-equipment-4",
    { type = "item", name = "alien-artifact-yellow", amount = 15 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-cell-equipment-4",
    { type = "item", name = "alien-artifact-yellow", amount = 8 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-3",
    { type = "item", name = "alien-artifact-yellow", amount = 40 }
  )
  if data.raw.fluid["alien-explosive"] then
    bobmods.lib.recipe.add_ingredient("vehicle-big-turret-equipment-4", { type = "fluid", name = "alien-explosive", amount = 500 })
    data.raw.recipe["vehicle-big-turret-equipment-4"].category = "crafting-with-fluid"
    bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-4", "alien-yellow-research")
  else
    bobmods.lib.recipe.add_new_ingredient(
      "vehicle-big-turret-equipment-4",
      { type = "item", name = "alien-artifact-yellow", amount = 120 }
    )
  end

  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-5",
    { type = "item", name = "alien-artifact-purple", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-battery-equipment-5",
    { type = "item", name = "alien-artifact-purple", amount = 5 }
  )
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-5",
    { type = "item", name = "alien-artifact", amount = 40 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-battery-equipment-5",
    { type = "item", name = "alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-reactor-equipment-4",
    { type = "item", name = "alien-artifact", amount = 60 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-cell-equipment-4",
    { type = "item", name = "alien-artifact", amount = 30 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-3",
    { type = "item", name = "alien-artifact", amount = 120 }
  )
end

if data.raw.item["alien-artifact-red"] and data.raw.item["alien-artifact-green"] then
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-6",
    { type = "item", name = "alien-artifact-red", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-battery-equipment-6",
    { type = "item", name = "alien-artifact-red", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-3",
    { type = "item", name = "alien-artifact-red", amount = 40 }
  )
  if data.raw.fluid["alien-fire"] then
    bobmods.lib.recipe.add_ingredient("vehicle-fission-reactor-equipment-5", { type = "fluid", name = "alien-fire", amount = 200 })
    data.raw.recipe["vehicle-fission-reactor-equipment-5"].category = "crafting-with-fluid"
    bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-5", "alien-red-research")

    bobmods.lib.recipe.add_ingredient("vehicle-fission-cell-equipment-5", { type = "fluid", name = "alien-fire", amount = 200 })
    data.raw.recipe["vehicle-fission-cell-equipment-5"].category = "crafting-with-fluid"
    bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-5", "alien-red-research")
  else
    bobmods.lib.recipe.add_ingredient("vehicle-fission-reactor-equipment-5", { type = "item", name = "alien-artifact-red", amount = 15 })
    bobmods.lib.recipe.add_ingredient("vehicle-fission-cell-equipment-5", { type = "item", name = "alien-artifact-red", amount = 8 })
  end

  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-6",
    { type = "item", name = "alien-artifact-green", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-battery-equipment-6",
    { type = "item", name = "alien-artifact-green", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-reactor-equipment-4",
    { type = "item", name = "alien-artifact-green", amount = 15 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-cell-equipment-4",
    { type = "item", name = "alien-artifact-green", amount = 8 }
  )
  if data.raw.fluid["alien-poison"] then
    bobmods.lib.recipe.add_ingredient("vehicle-laser-defense-equipment-6", { type = "fluid", name = "alien-poison", amount = 240 })
    data.raw.recipe["vehicle-laser-defense-equipment-6"].category = "crafting-with-fluid"
    bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-6", "alien-green-research")
  else
    bobmods.lib.recipe.add_ingredient("vehicle-laser-defense-equipment-6", { type = "item", name = "alien-artifact-green", amount = 20 })
  end
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-shield-equipment-6",
    { type = "item", name = "alien-artifact", amount = 60 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-battery-equipment-6",
    { type = "item", name = "alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-reactor-equipment-5",
    { type = "item", name = "alien-artifact", amount = 80 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-fission-cell-equipment-5",
    { type = "item", name = "alien-artifact", amount = 40 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-laser-defense-equipment-6",
    { type = "item", name = "alien-artifact", amount = 40 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "vehicle-big-turret-equipment-4",
    { type = "item", name = "alien-artifact", amount = 150 }
  )
end

if data.raw.item["thorium-fuel-cell"] then
  if data.raw.item["plutonium-fuel-cell"] then
    bobmods.lib.recipe.remove_ingredient("vehicle-fission-reactor-equipment-3", "uranium-fuel-cell")
    bobmods.lib.recipe.add_ingredient("vehicle-fission-reactor-equipment-3", { type = "item", name = "plutonium-fuel-cell", amount = 24 })
    bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-3", "plutonium-fuel-cell")

    bobmods.lib.recipe.remove_ingredient("vehicle-fission-cell-equipment-3", "uranium-fuel-cell")
    bobmods.lib.recipe.add_ingredient("vehicle-fission-cell-equipment-3", { type = "item", name = "plutonium-fuel-cell", amount = 12 })
    bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-3", "plutonium-fuel-cell")
  end
  bobmods.lib.recipe.remove_ingredient("vehicle-fission-reactor-equipment-4", "uranium-fuel-cell")
  bobmods.lib.recipe.add_ingredient("vehicle-fission-reactor-equipment-4", { type = "item", name = "thorium-fuel-cell", amount = 24 })
  if mods["bobrevamp"] and mods["bobpower"] and settings.startup["bobmods-revamp-nuclear"].value == true then
    bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-4", "bob-nuclear-power-2")

    bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-4", "bob-nuclear-power-2")
  else
    bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-4", "thorium-processing")

    bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-4", "thorium-processing")
  end
  bobmods.lib.recipe.remove_ingredient("vehicle-fission-reactor-equipment-5", "uranium-fuel-cell")
  bobmods.lib.recipe.add_ingredient("vehicle-fission-reactor-equipment-5", { type = "item", name = "thorium-plutonium-fuel-cell", amount = 24 })
  bobmods.lib.tech.add_prerequisite("vehicle-fission-reactor-equipment-5", "thorium-plutonium-fuel-cell")

  bobmods.lib.recipe.remove_ingredient("vehicle-fission-cell-equipment-4", "uranium-fuel-cell")
  bobmods.lib.recipe.add_ingredient("vehicle-fission-cell-equipment-4", { type = "item", name = "thorium-fuel-cell", amount = 12 })
  bobmods.lib.recipe.remove_ingredient("vehicle-fission-cell-equipment-5", "uranium-fuel-cell")
  bobmods.lib.recipe.add_ingredient("vehicle-fission-cell-equipment-5", { type = "item", name = "thorium-plutonium-fuel-cell", amount = 12 })
  bobmods.lib.tech.add_prerequisite("vehicle-fission-cell-equipment-5", "thorium-plutonium-fuel-cell")

  bobmods.lib.recipe.remove_ingredient("vehicle-fission-reactor-equipment-6", "uranium-fuel-cell")
  bobmods.lib.recipe.add_ingredient("vehicle-fission-reactor-equipment-6", { type = "item", name = "thorium-plutonium-fuel-cell", amount = 36 })
  bobmods.lib.recipe.remove_ingredient("vehicle-fission-cell-equipment-6", "uranium-fuel-cell")
  bobmods.lib.recipe.add_ingredient("vehicle-fission-cell-equipment-6", { type = "item", name = "thorium-plutonium-fuel-cell", amount = 18 })
end
