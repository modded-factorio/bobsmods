if
  data.raw.item["roboport-antenna-1"]
  and data.raw.item["roboport-chargepad-1"]
  and data.raw.item["roboport-door-1"]
then
  data.raw.recipe["personal-roboport-equipment"].ingredients = {
    { type = "item", name = "roboport-antenna-1", amount = 2 },
    { type = "item", name = "roboport-chargepad-1", amount = 2 },
    { type = "item", name = "roboport-door-1", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["personal-roboport-antenna-equipment"].ingredients = {
    { type = "item", name = "roboport-antenna-1", amount = 2 },
    { type = "item", name = "roboport-door-1", amount = 1 },
    { type = "item", name = "steel-plate", amount = 3 },
  }

  data.raw.recipe["personal-roboport-chargepad-equipment"].ingredients = {
    { type = "item", name = "roboport-chargepad-1", amount = 2 },
    { type = "item", name = "steel-plate", amount = 2 },
  }

  bobmods.lib.tech.add_recipe_unlock("personal-roboport-equipment", "roboport-antenna-1")
  bobmods.lib.tech.add_recipe_unlock("personal-roboport-equipment", "roboport-chargepad-1")
  bobmods.lib.tech.add_recipe_unlock("personal-roboport-equipment", "roboport-door-1")
else
  bobmods.lib.recipe.remove_ingredient("personal-roboport-equipment", "battery")
  bobmods.lib.recipe.add_ingredient("personal-roboport-equipment", { type = "item", name = "battery", amount = 20 })
end

if
  data.raw.item["roboport-antenna-2"]
  and data.raw.item["roboport-chargepad-2"]
  and data.raw.item["roboport-door-2"]
then
  data.raw.recipe["personal-roboport-mk2-equipment"].ingredients = {
    { type = "item", name = "personal-roboport-equipment", amount = 1 },
    { type = "item", name = "roboport-antenna-2", amount = 2 },
    { type = "item", name = "roboport-chargepad-2", amount = 4 },
    { type = "item", name = "roboport-door-2", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["personal-roboport-antenna-equipment-2"].ingredients = {
    { type = "item", name = "personal-roboport-antenna-equipment", amount = 1 },
    { type = "item", name = "roboport-antenna-2", amount = 4 },
    { type = "item", name = "roboport-door-2", amount = 1 },
    { type = "item", name = "steel-plate", amount = 3 },
  }

  data.raw.recipe["personal-roboport-chargepad-equipment-2"].ingredients = {
    { type = "item", name = "personal-roboport-chargepad-equipment", amount = 1 },
    { type = "item", name = "roboport-chargepad-2", amount = 4 },
    { type = "item", name = "steel-plate", amount = 2 },
  }

  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk2-equipment", "roboport-antenna-2")
  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk2-equipment", "roboport-chargepad-2")
  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk2-equipment", "roboport-door-2")

  if data.raw.item["bob-brass-gear-wheel"] then
    bobmods.lib.tech.add_prerequisite("personal-roboport-mk2-equipment", "bob-zinc-processing")
  end
else
  data.raw.recipe["personal-roboport-mk2-equipment"].ingredients = {
    { type = "item", name = "personal-roboport-equipment", amount = 1 },
    { type = "item", name = "advanced-circuit", amount = 20 },
    { type = "item", name = "iron-gear-wheel", amount = 40 },
    { type = "item", name = "steel-plate", amount = 20 },
    { type = "item", name = "battery", amount = 20 },
  }

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("personal-roboport-antenna-equipment-2", "steel-plate", "bob-aluminium-plate")
  end

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("personal-roboport-chargepad-equipment-2", "steel-plate", "bob-invar-alloy")
  end

  if data.raw.item["bob-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "personal-roboport-mk2-equipment",
      { type = "item", name = "bob-steel-bearing", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "personal-roboport-antenna-equipment-2",
      { type = "item", name = "bob-steel-bearing", amount = 5 }
    )
  end

  if data.raw.item["bob-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("personal-roboport-mk2-equipment", "iron-gear-wheel", "bob-steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient(
      "personal-roboport-antenna-equipment-2",
      "iron-gear-wheel",
      "bob-steel-gear-wheel"
    )
  end
end

if data.raw.item["bob-aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("personal-roboport-mk2-equipment", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.recipe.replace_ingredient("personal-roboport-antenna-equipment-2", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.recipe.replace_ingredient("personal-roboport-chargepad-equipment-2", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("personal-roboport-mk2-equipment", "bob-aluminium-processing")
  bobmods.lib.recipe.remove_ingredient("solar-panel-equipment-2", "steel-plate")
  bobmods.lib.recipe.add_ingredient(
    "solar-panel-equipment-2",
    { type = "item", name = "bob-aluminium-plate", amount = 4 }
  )
  bobmods.lib.tech.add_prerequisite("solar-panel-equipment-2", "bob-aluminium-processing")
end

if data.raw.item["tinned-copper-cable"] then
  bobmods.lib.recipe.remove_ingredient("solar-panel-equipment-2", "copper-cable")
  bobmods.lib.recipe.add_ingredient(
    "solar-panel-equipment-2",
    { type = "item", name = "tinned-copper-cable", amount = 8 }
  )
end

if data.raw.item["bob-invar-alloy"] then
  bobmods.lib.tech.add_prerequisite("personal-roboport-mk2-equipment", "bob-invar-processing")
end

if
  data.raw.item["roboport-antenna-3"]
  and data.raw.item["roboport-chargepad-3"]
  and data.raw.item["roboport-door-3"]
then
  data.raw.recipe["personal-roboport-mk3-equipment"].ingredients = {
    { type = "item", name = "personal-roboport-mk2-equipment", amount = 1 },
    { type = "item", name = "roboport-antenna-3", amount = 2 },
    { type = "item", name = "roboport-chargepad-3", amount = 6 },
    { type = "item", name = "roboport-door-3", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["personal-roboport-antenna-equipment-3"].ingredients = {
    { type = "item", name = "personal-roboport-antenna-equipment-2", amount = 1 },
    { type = "item", name = "roboport-antenna-3", amount = 2 },
    { type = "item", name = "roboport-door-3", amount = 1 },
    { type = "item", name = "steel-plate", amount = 3 },
  }

  data.raw.recipe["personal-roboport-chargepad-equipment-3"].ingredients = {
    { type = "item", name = "personal-roboport-chargepad-equipment-2", amount = 1 },
    { type = "item", name = "roboport-chargepad-3", amount = 6 },
    { type = "item", name = "steel-plate", amount = 2 },
  }

  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk3-equipment", "roboport-antenna-3")
  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk3-equipment", "roboport-chargepad-3")
  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk3-equipment", "roboport-door-3")
else
  if data.raw.item["bob-lithium-ion-battery"] then
    bobmods.lib.recipe.replace_ingredient("personal-roboport-mk3-equipment", "battery", "bob-lithium-ion-battery")
    bobmods.lib.recipe.replace_ingredient(
      "personal-roboport-chargepad-equipment-3",
      "battery",
      "bob-lithium-ion-battery"
    )
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("personal-roboport-antenna-equipment-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient(
      "personal-roboport-chargepad-equipment-3",
      "steel-plate",
      "bob-titanium-plate"
    )
  end

  if data.raw.item["bob-titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "personal-roboport-mk3-equipment",
      { type = "item", name = "bob-titanium-bearing", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "personal-roboport-antenna-equipment-3",
      { type = "item", name = "bob-titanium-bearing", amount = 5 }
    )
  end

  if data.raw.item["bob-titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient(
      "personal-roboport-mk3-equipment",
      "iron-gear-wheel",
      "bob-titanium-gear-wheel"
    )
    bobmods.lib.recipe.replace_ingredient(
      "personal-roboport-antenna-equipment-3",
      "iron-gear-wheel",
      "bob-titanium-gear-wheel"
    )
  end
end

if data.raw.item["bob-lithium-ion-battery"] then
  bobmods.lib.tech.add_prerequisite("personal-roboport-mk3-equipment", "bob-battery-2")
end

if data.raw.item["bob-titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("personal-roboport-mk3-equipment", "steel-plate", "bob-titanium-plate")
  bobmods.lib.recipe.replace_ingredient("personal-roboport-antenna-equipment-3", "steel-plate", "bob-titanium-plate")
  bobmods.lib.recipe.replace_ingredient("personal-roboport-chargepad-equipment-3", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("personal-roboport-mk3-equipment", "bob-titanium-processing")
  bobmods.lib.recipe.remove_ingredient("solar-panel-equipment-3", "steel-plate")
  bobmods.lib.recipe.add_ingredient(
    "solar-panel-equipment-3",
    { type = "item", name = "bob-titanium-plate", amount = 4 }
  )
  bobmods.lib.tech.add_prerequisite("solar-panel-equipment-3", "bob-titanium-processing")
end

if
  data.raw.item["roboport-antenna-4"]
  and data.raw.item["roboport-chargepad-4"]
  and data.raw.item["roboport-door-4"]
then
  data.raw.recipe["personal-roboport-mk4-equipment"].ingredients = {
    { type = "item", name = "personal-roboport-mk3-equipment", amount = 1 },
    { type = "item", name = "roboport-antenna-4", amount = 2 },
    { type = "item", name = "roboport-chargepad-4", amount = 8 },
    { type = "item", name = "roboport-door-4", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["personal-roboport-antenna-equipment-4"].ingredients = {
    { type = "item", name = "personal-roboport-antenna-equipment-3", amount = 1 },
    { type = "item", name = "roboport-antenna-4", amount = 2 },
    { type = "item", name = "roboport-door-4", amount = 1 },
    { type = "item", name = "steel-plate", amount = 3 },
  }

  data.raw.recipe["personal-roboport-chargepad-equipment-4"].ingredients = {
    { type = "item", name = "personal-roboport-chargepad-equipment-3", amount = 1 },
    { type = "item", name = "roboport-chargepad-4", amount = 8 },
    { type = "item", name = "steel-plate", amount = 2 },
  }

  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk4-equipment", "roboport-antenna-4")
  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk4-equipment", "roboport-chargepad-4")
  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk4-equipment", "roboport-door-4")
else
  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient(
      "personal-roboport-mk4-equipment",
      "processing-unit",
      "bob-advanced-processing-unit"
    )
    bobmods.lib.recipe.replace_ingredient(
      "personal-roboport-antenna-equipment-4",
      "processing-unit",
      "bob-advanced-processing-unit"
    )
    bobmods.lib.recipe.replace_ingredient(
      "personal-roboport-chargepad-equipment-4",
      "processing-unit",
      "bob-advanced-processing-unit"
    )
  end

  if data.raw.item["bob-silver-zinc-battery"] then
    bobmods.lib.recipe.replace_ingredient("personal-roboport-mk4-equipment", "battery", "bob-silver-zinc-battery")
    bobmods.lib.recipe.replace_ingredient(
      "personal-roboport-chargepad-equipment-4",
      "battery",
      "bob-silver-zinc-battery"
    )
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("personal-roboport-antenna-equipment-4", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.recipe.replace_ingredient("personal-roboport-chargepad-equipment-4", "steel-plate", "bob-nitinol-alloy")
  end

  if data.raw.item["bob-nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "personal-roboport-mk4-equipment",
      { type = "item", name = "bob-nitinol-bearing", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "personal-roboport-antenna-equipment-4",
      { type = "item", name = "bob-nitinol-bearing", amount = 5 }
    )
  end

  if data.raw.item["bob-nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient(
      "personal-roboport-mk4-equipment",
      "iron-gear-wheel",
      "bob-nitinol-gear-wheel"
    )
    bobmods.lib.recipe.replace_ingredient(
      "personal-roboport-antenna-equipment-4",
      "bob-iron-gear-wheel",
      "nitinol-gear-wheel"
    )
  end
end

if data.raw.item["bob-advanced-processing-unit"] then
  bobmods.lib.tech.add_prerequisite("personal-roboport-mk4-equipment", "bob-advanced-processing-unit")
end

if data.raw.item["bob-silver-zinc-battery"] then
  bobmods.lib.tech.add_prerequisite("personal-roboport-mk4-equipment", "bob-battery-3")
end

if data.raw.item["bob-nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("personal-roboport-mk4-equipment", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.recipe.replace_ingredient("personal-roboport-antenna-equipment-4", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.recipe.replace_ingredient("personal-roboport-chargepad-equipment-4", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("personal-roboport-mk4-equipment", "bob-nitinol-processing")
end

if data.raw.item["bob-advanced-processing-unit"] then
  bobmods.lib.tech.add_prerequisite("personal-roboport-mk4-equipment", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient(
    "personal-roboport-robot-equipment-4",
    "processing-unit",
    "bob-advanced-processing-unit"
  )
end

if data.raw.item["solder"] then
  bobmods.lib.recipe.add_ingredient("personal-roboport-robot-equipment", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient(
    "personal-roboport-robot-equipment-2",
    { type = "item", name = "solder", amount = 3 }
  )
  bobmods.lib.recipe.add_ingredient(
    "personal-roboport-robot-equipment-3",
    { type = "item", name = "solder", amount = 4 }
  )
  bobmods.lib.recipe.add_ingredient(
    "personal-roboport-robot-equipment-4",
    { type = "item", name = "solder", amount = 6 }
  )
end

if data.raw.item["bob-module-case"] then
  bobmods.lib.tech.add_recipe_unlock("robotics", "bob-module-case")
  bobmods.lib.recipe.add_ingredient(
    "personal-roboport-robot-equipment",
    { type = "item", name = "bob-module-case", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "personal-roboport-robot-equipment-2",
    { type = "item", name = "bob-module-case", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "personal-roboport-robot-equipment-3",
    { type = "item", name = "bob-module-case", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "personal-roboport-robot-equipment-4",
    { type = "item", name = "bob-module-case", amount = 1 }
  )
end

if data.raw.item["bob-glass"] then
  bobmods.lib.recipe.replace_ingredient("night-vision-equipment-2", "plastic-bar", "bob-glass")
  bobmods.lib.recipe.add_ingredient("solar-panel-equipment", { type = "item", name = "bob-glass", amount = 4 })
end

if data.raw.item["bob-silver-plate"] then
  bobmods.lib.recipe.remove_ingredient("solar-panel-equipment-2", "copper-plate")
  bobmods.lib.recipe.add_ingredient("solar-panel-equipment-2", { type = "item", name = "bob-silver-plate", amount = 4 })
end

if data.raw.item["bob-invar-alloy"] then
  bobmods.lib.recipe.remove_ingredient("personal-laser-defense-equipment-3", "steel-plate")
  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-3",
    { type = "item", name = "bob-invar-alloy", amount = 5 }
  )
  bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-3", "bob-invar-processing")
  bobmods.lib.recipe.replace_ingredient("exoskeleton-equipment-2", "steel-plate", "bob-invar-alloy")
  bobmods.lib.tech.add_prerequisite("exoskeleton-equipment-2", "bob-invar-processing")
end

if data.raw.item["bob-cobalt-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("exoskeleton-equipment-2", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
  bobmods.lib.tech.add_prerequisite("exoskeleton-equipment-2", "bob-cobalt-processing")
end

if data.raw.item["bob-cobalt-steel-bearing"] then
  bobmods.lib.recipe.add_ingredient(
    "exoskeleton-equipment-2",
    { type = "item", name = "bob-cobalt-steel-bearing", amount = 30 }
  )
end

if data.raw.item["bob-gold-plate"] then
  bobmods.lib.recipe.remove_ingredient("solar-panel-equipment-3", "copper-plate")
  bobmods.lib.recipe.add_ingredient("solar-panel-equipment-3", { type = "item", name = "bob-gold-plate", amount = 4 })
  bobmods.lib.tech.add_prerequisite("solar-panel-equipment-3", "bob-gold-processing")
end

if data.raw.item["gilded-copper-cable"] then
  bobmods.lib.recipe.remove_ingredient("solar-panel-equipment-3", "copper-cable")
  bobmods.lib.recipe.add_ingredient(
    "solar-panel-equipment-3",
    { type = "item", name = "gilded-copper-cable", amount = 8 }
  )
  bobmods.lib.tech.add_prerequisite("solar-panel-equipment-3", "bob-advanced-processing-unit")
end

if data.raw.item["bob-lithium-ion-battery"] then
  bobmods.lib.recipe.replace_ingredient("battery-mk3-equipment", "battery", "bob-lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("bob-battery-equipment-3", "bob-battery-2")

  bobmods.lib.recipe.remove_ingredient("personal-laser-defense-equipment-3", "battery")
  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-3",
    { type = "item", name = "bob-lithium-ion-battery", amount = 3 }
  )
  bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-3", "bob-battery-2")
end

if data.raw.item["bob-silicon-wafer"] then
  bobmods.lib.recipe.add_ingredient("solar-panel-equipment", { type = "item", name = "bob-silicon-wafer", amount = 16 })
  bobmods.lib.recipe.add_ingredient(
    "solar-panel-equipment-2",
    { type = "item", name = "bob-silicon-wafer", amount = 12 }
  )
  bobmods.lib.recipe.add_ingredient(
    "solar-panel-equipment-3",
    { type = "item", name = "bob-silicon-wafer", amount = 8 }
  )
elseif data.raw.item["bob-silicon-plate"] then
  bobmods.lib.recipe.add_ingredient("solar-panel-equipment", { type = "item", name = "bob-silicon-plate", amount = 3 })
  bobmods.lib.recipe.add_ingredient(
    "solar-panel-equipment-2",
    { type = "item", name = "bob-silicon-plate", amount = 2 }
  )
  bobmods.lib.recipe.add_ingredient(
    "solar-panel-equipment-3",
    { type = "item", name = "bob-silicon-plate", amount = 1 }
  )
end

if data.raw.item["bob-advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient(
    "energy-shield-mk4-equipment",
    "processing-unit",
    "bob-advanced-processing-unit"
  )
  bobmods.lib.tech.add_prerequisite("bob-energy-shield-equipment-4", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient(
    "energy-shield-mk5-equipment",
    "processing-unit",
    "bob-advanced-processing-unit"
  )
  bobmods.lib.recipe.replace_ingredient(
    "energy-shield-mk6-equipment",
    "processing-unit",
    "bob-advanced-processing-unit"
  )
  bobmods.lib.tech.add_prerequisite("bob-battery-equipment-6", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("battery-mk6-equipment", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-3", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient(
    "fission-reactor-equipment-3",
    "processing-unit",
    "bob-advanced-processing-unit"
  )
  bobmods.lib.recipe.replace_ingredient(
    "fission-reactor-equipment-4",
    "processing-unit",
    "bob-advanced-processing-unit"
  )
  bobmods.lib.recipe.replace_ingredient("night-vision-equipment-3", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("night-vision-equipment-3", "bob-advanced-processing-unit")
  if data.raw.recipe["solar-panel-equipment-4"] then
    bobmods.lib.recipe.replace_ingredient("solar-panel-equipment-4", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("solar-panel-equipment-4", "bob-advanced-processing-unit")
    if data.raw.recipe["solar-panel-equipment-5"] then
      bobmods.lib.recipe.replace_ingredient(
        "solar-panel-equipment-5",
        "processing-unit",
        "bob-advanced-processing-unit"
      )
    end
  end
  bobmods.lib.recipe.remove_ingredient("personal-laser-defense-equipment-6", "processing-unit")
  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-6",
    { type = "item", name = "bob-advanced-processing-unit", amount = 5 }
  )
  bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-6", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("exoskeleton-equipment-3", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("exoskeleton-equipment-3", "bob-advanced-processing-unit")
end

if data.raw.item["bob-titanium-plate"] then
  bobmods.lib.recipe.remove_ingredient("personal-laser-defense-equipment-4", "steel-plate")
  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-4",
    { type = "item", name = "bob-titanium-plate", amount = 5 }
  )
  bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-4", "bob-titanium-processing")
  bobmods.lib.recipe.replace_ingredient("exoskeleton-equipment-3", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("exoskeleton-equipment-3", "bob-titanium-processing")
end

if data.raw.item["bob-titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("exoskeleton-equipment-3", "iron-gear-wheel", "bob-titanium-gear-wheel")
end

if data.raw.item["bob-titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient(
    "exoskeleton-equipment-3",
    { type = "item", name = "bob-titanium-bearing", amount = 30 }
  )
end

if data.raw.fluid["bob-heavy-water"] then
  bobmods.lib.recipe.add_ingredient(
    "fission-reactor-equipment",
    { type = "fluid", name = "bob-heavy-water", amount = 50 }
  )
  data.raw.recipe["fission-reactor-equipment"].category = "crafting-with-fluid"
  bobmods.lib.tech.remove_prerequisite("fission-reactor-equipment", "production-science-pack")
  bobmods.lib.tech.add_prerequisite("fission-reactor-equipment", "bob-heavy-water-processing")
end

if data.raw.item["bob-tungsten-plate"] then
  bobmods.lib.recipe.remove_ingredient("fission-reactor-equipment-2", "low-density-structure")
  bobmods.lib.tech.remove_prerequisite("fission-reactor-equipment-2", "low-density-structure")
  bobmods.lib.recipe.add_ingredient(
    "fission-reactor-equipment-2",
    { type = "item", name = "bob-tungsten-plate", amount = 250 }
  )
  bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-2", "bob-tungsten-processing")
end

if data.raw.item["tungsten-carbide"] then
  bobmods.lib.recipe.add_ingredient(
    "fission-reactor-equipment-3",
    { type = "item", name = "tungsten-carbide", amount = 80 }
  )
  bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-3", "bob-tungsten-alloy-processing")
end

if data.raw.item["bob-lithium"] then
  bobmods.lib.recipe.add_ingredient("fission-reactor-equipment-3", { type = "item", name = "bob-lithium", amount = 40 })
  bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-3", "bob-lithium-processing")
end

if data.raw.item["bob-silver-zinc-battery"] then
  bobmods.lib.recipe.replace_ingredient("battery-mk5-equipment", "battery", "bob-silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("bob-battery-equipment-5", "bob-battery-3")
  bobmods.lib.recipe.remove_ingredient("personal-laser-defense-equipment-5", "battery")
  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-5",
    { type = "item", name = "bob-silver-zinc-battery", amount = 3 }
  )
  bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-5", "bob-battery-3")
end

if data.raw.item["bob-nitinol-alloy"] then
  if data.raw.recipe["solar-panel-equipment-4"] then
    bobmods.lib.recipe.remove_ingredient("solar-panel-equipment-4", "steel-plate")
    bobmods.lib.recipe.add_ingredient(
      "solar-panel-equipment-4",
      { type = "item", name = "bob-nitinol-alloy", amount = 4 }
    )
    bobmods.lib.tech.add_prerequisite("solar-panel-equipment-4", "bob-nitinol-processing")
  end
  bobmods.lib.recipe.remove_ingredient("personal-laser-defense-equipment-5", "steel-plate")
  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-5",
    { type = "item", name = "bob-nitinol-alloy", amount = 5 }
  )
  bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-5", "bob-nitinol-processing")
end

if data.raw.item["bob-lead-plate"] then
  if data.raw.recipe["solar-panel-equipment-4"] then
    bobmods.lib.recipe.replace_ingredient("solar-panel-equipment-4", "copper-plate", "bob-lead-plate")
  end
  bobmods.lib.recipe.add_ingredient(
    "fission-reactor-equipment",
    { type = "item", name = "bob-lead-plate", amount = 100 }
  )
end

if data.raw.fluid["bob-hydrogen-chloride"] then
  if data.raw.recipe["solar-panel-equipment-4"] then
    bobmods.lib.recipe.add_ingredient(
      "solar-panel-equipment-4",
      { type = "fluid", name = "bob-hydrogen-chloride", amount = 60 }
    )
    data.raw.recipe["solar-panel-equipment-4"].category = "crafting-with-fluid"
  end
end

if data.raw.item["bob-sapphire-5"] then
  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-2",
    { type = "item", name = "bob-sapphire-5", amount = 1 }
  )
  bobmods.lib.recipe.remove_ingredient("personal-laser-defense-equipment-2", "battery")
  bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-2", "bob-gem-processing-3")
end

if data.raw.item["bob-emerald-5"] then
  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-3",
    { type = "item", name = "bob-emerald-5", amount = 1 }
  )
  bobmods.lib.recipe.remove_ingredient("personal-laser-defense-equipment-3", "advanced-circuit")
end

if data.raw.item["bob-amethyst-5"] then
  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-4",
    { type = "item", name = "bob-amethyst-5", amount = 1 }
  )
end

if data.raw.item["bob-topaz-5"] then
  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-5",
    { type = "item", name = "bob-topaz-5", amount = 1 }
  )
end

if data.raw.item["bob-diamond-5"] then
  bobmods.lib.recipe.replace_ingredient("night-vision-equipment-3", "plastic-bar", "bob-diamond-5")
  bobmods.lib.tech.add_prerequisite("night-vision-equipment-3", "bob-gem-processing-3")
  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-6",
    { type = "item", name = "bob-diamond-5", amount = 1 }
  )
  if data.raw.recipe["solar-panel-equipment-5"] then
    bobmods.lib.tech.add_prerequisite("solar-panel-equipment-5", "bob-gem-processing-3")
    bobmods.lib.recipe.add_ingredient("solar-panel-equipment-5", { type = "item", name = "bob-diamond-5", amount = 1 })
  end
end

if data.raw.module["bob-speed-module-5"] then
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-2",
    { type = "item", name = "efficiency-module-3", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-2",
    { type = "item", name = "speed-module-3", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-3",
    { type = "item", name = "bob-efficiency-module-4", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-3",
    { type = "item", name = "bob-speed-module-4", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-4",
    { type = "item", name = "bob-efficiency-module-5", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-4",
    { type = "item", name = "bob-speed-module-5", amount = 1 }
  )
  bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-2", "efficiency-module-3")
  bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-2", "speed-module-3")
  bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-3", "bob-efficiency-module-4")
  bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-3", "bob-speed-module-4")
  bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-4", "bob-efficiency-module-5")
  bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-4", "bob-speed-module-5")
else
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-2",
    { type = "item", name = "efficiency-module-2", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-2",
    { type = "item", name = "speed-module-2", amount = 1 }
  )
  bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-2", "efficiency-module-2")
  bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-2", "speed-module-2")
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-3",
    { type = "item", name = "efficiency-module-3", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-3",
    { type = "item", name = "speed-module-3", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-4",
    { type = "item", name = "productivity-module-3", amount = 2 }
  )
  if data.raw.module["quality-module-3"] then
    bobmods.lib.recipe.add_new_ingredient(
      "fission-reactor-equipment-4",
      { type = "item", name = "quality-module-3", amount = 2 }
    )
    bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-4", "quality-module-3")
  end
  bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-3", "efficiency-module-3")
  bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-3", "speed-module-3")
  bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-4", "productivity-module-3")
end

if data.raw.module["bob-productivity-module-4"] then
  bobmods.lib.recipe.replace_ingredient(
    "energy-shield-mk5-equipment",
    "productivity-module-3",
    "bob-productivity-module-4"
  )
end

if data.raw.module["bob-productivity-module-5"] then
  bobmods.lib.recipe.replace_ingredient(
    "energy-shield-mk6-equipment",
    "productivity-module-3",
    "bob-productivity-module-5"
  )
end

if data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "energy-shield-mk3-equipment",
    { type = "item", name = "alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "night-vision-equipment-3",
    { type = "item", name = "alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_ingredient(
    "fission-reactor-equipment-2",
    { type = "item", name = "alien-artifact", amount = 50 }
  )

  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-5",
    { type = "item", name = "alien-artifact", amount = 5 }
  )
else
  bobmods.lib.recipe.add_new_ingredient(
    "night-vision-equipment-3",
    { type = "item", name = "processing-unit", amount = 10 }
  )
end

if data.raw.item["alien-artifact-orange"] and data.raw.item["alien-artifact-blue"] then
  bobmods.lib.recipe.add_new_ingredient(
    "energy-shield-mk4-equipment",
    { type = "item", name = "alien-artifact-orange", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "battery-mk4-equipment",
    { type = "item", name = "alien-artifact-orange", amount = 5 }
  )
  if data.raw.item["alien-orange-alloy"] then
    bobmods.lib.recipe.add_ingredient(
      "personal-laser-defense-equipment-6",
      { type = "item", name = "alien-orange-alloy", amount = 15 }
    )
    bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-6", "alien-orange-research")
  else
    bobmods.lib.recipe.add_ingredient(
      "personal-laser-defense-equipment-6",
      { type = "item", name = "alien-artifact-orange", amount = 5 }
    )
  end

  bobmods.lib.recipe.add_new_ingredient(
    "energy-shield-mk4-equipment",
    { type = "item", name = "alien-artifact-blue", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "battery-mk4-equipment",
    { type = "item", name = "alien-artifact-blue", amount = 5 }
  )
  if data.raw.item["alien-blue-alloy"] then
    bobmods.lib.recipe.add_ingredient(
      "fission-reactor-equipment-4",
      { type = "item", name = "alien-blue-alloy", amount = 80 }
    )
    bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-4", "alien-blue-research")
    bobmods.lib.recipe.add_ingredient(
      "personal-laser-defense-equipment-6",
      { type = "item", name = "alien-blue-alloy", amount = 15 }
    )
    bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-6", "alien-blue-research")
    bobmods.lib.recipe.add_ingredient(
      "exoskeleton-equipment-3",
      { type = "item", name = "alien-blue-alloy", amount = 20 }
    )
    bobmods.lib.tech.add_prerequisite("exoskeleton-equipment-3", "alien-blue-research")
  else
    bobmods.lib.recipe.add_ingredient(
      "fission-reactor-equipment-4",
      { type = "item", name = "alien-artifact-blue", amount = 50 }
    )
    bobmods.lib.recipe.add_ingredient(
      "personal-laser-defense-equipment-6",
      { type = "item", name = "alien-artifact-blue", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "exoskeleton-equipment-3",
      { type = "item", name = "alien-artifact-blue", amount = 5 }
    )
  end
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "energy-shield-mk4-equipment",
    { type = "item", name = "alien-artifact", amount = 15 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "battery-mk4-equipment",
    { type = "item", name = "alien-artifact", amount = 15 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-4",
    { type = "item", name = "alien-artifact", amount = 80 }
  )
end

if data.raw.item["alien-artifact-yellow"] and data.raw.item["alien-artifact-purple"] then
  bobmods.lib.recipe.add_new_ingredient(
    "energy-shield-mk5-equipment",
    { type = "item", name = "alien-artifact-yellow", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "battery-mk5-equipment",
    { type = "item", name = "alien-artifact-yellow", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-3",
    { type = "item", name = "alien-artifact-yellow", amount = 50 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "energy-shield-mk5-equipment",
    { type = "item", name = "alien-artifact-purple", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "battery-mk5-equipment",
    { type = "item", name = "alien-artifact-purple", amount = 5 }
  )
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "energy-shield-mk5-equipment",
    { type = "item", name = "alien-artifact", amount = 20 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "battery-mk5-equipment",
    { type = "item", name = "alien-artifact", amount = 20 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-3",
    { type = "item", name = "alien-artifact", amount = 60 }
  )
end

if data.raw.item["alien-artifact-red"] and data.raw.item["alien-artifact-green"] then
  bobmods.lib.recipe.add_new_ingredient(
    "energy-shield-mk6-equipment",
    { type = "item", name = "alien-artifact-red", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "battery-mk6-equipment",
    { type = "item", name = "alien-artifact-red", amount = 5 }
  )
  if data.raw.fluid["alien-fire"] then
    bobmods.lib.recipe.add_ingredient(
      "fission-reactor-equipment-4",
      { type = "fluid", name = "alien-fire", amount = 400 }
    )
    data.raw.recipe["fission-reactor-equipment-4"].category = "crafting-with-fluid"
    bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-4", "alien-red-research")
  else
    bobmods.lib.recipe.add_ingredient(
      "fission-reactor-equipment-4",
      { type = "item", name = "alien-artifact-red", amount = 50 }
    )
  end

  bobmods.lib.recipe.add_new_ingredient(
    "energy-shield-mk6-equipment",
    { type = "item", name = "alien-artifact-green", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "battery-mk6-equipment",
    { type = "item", name = "alien-artifact-green", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-3",
    { type = "item", name = "alien-artifact-green", amount = 50 }
  )
  if data.raw.fluid["alien-poison"] then
    bobmods.lib.recipe.add_ingredient(
      "personal-laser-defense-equipment-6",
      { type = "fluid", name = "alien-poison", amount = 120 }
    )
    data.raw.recipe["personal-laser-defense-equipment-6"].category = "crafting-with-fluid"
    bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-6", "alien-green-research")
  else
    bobmods.lib.recipe.add_ingredient(
      "personal-laser-defense-equipment-6",
      { type = "item", name = "alien-artifact-green", amount = 10 }
    )
  end
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "energy-shield-mk6-equipment",
    { type = "item", name = "alien-artifact", amount = 30 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "battery-mk6-equipment",
    { type = "item", name = "alien-artifact", amount = 30 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-4",
    { type = "item", name = "alien-artifact", amount = 80 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "personal-laser-defense-equipment-6",
    { type = "item", name = "alien-artifact", amount = 20 }
  )
else
  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-6",
    { type = "item", name = "processing-unit", amount = 10 }
  )
end

if data.raw.item["thorium-fuel-cell"] then
  if data.raw.item["plutonium-fuel-cell"] then
    bobmods.lib.recipe.remove_ingredient("fission-reactor-equipment-2", "uranium-fuel-cell")
    bobmods.lib.recipe.add_ingredient(
      "fission-reactor-equipment-2",
      { type = "item", name = "plutonium-fuel-cell", amount = 24 }
    )
    bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-2", "plutonium-fuel-cell")
  end
  bobmods.lib.recipe.remove_ingredient("fission-reactor-equipment-3", "uranium-fuel-cell")
  bobmods.lib.recipe.add_ingredient(
    "fission-reactor-equipment-3",
    { type = "item", name = "thorium-fuel-cell", amount = 24 }
  )
  if mods["bobrevamp"] and mods["bobpower"] and settings.startup["bobmods-revamp-nuclear"].value == true then
    bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-3", "bob-nuclear-power-2")
  else
    bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-3", "thorium-processing")
  end
  bobmods.lib.recipe.remove_ingredient("fission-reactor-equipment-4", "uranium-fuel-cell")
  bobmods.lib.recipe.add_ingredient(
    "fission-reactor-equipment-4",
    { type = "item", name = "thorium-plutonium-fuel-cell", amount = 24 }
  )
  bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-4", "thorium-plutonium-fuel-cell")
end
