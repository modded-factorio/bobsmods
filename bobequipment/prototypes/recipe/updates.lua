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
  }

  data.raw.recipe["personal-roboport-chargepad-equipment"].ingredients = {
    { type = "item", name = "roboport-chargepad-1", amount = 2 },
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
    { type = "item", name = "roboport-chargepad-2", amount = 2 },
    { type = "item", name = "roboport-door-2", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["personal-roboport-antenna-equipment-2"].ingredients = {
    { type = "item", name = "personal-roboport-antenna-equipment", amount = 1 },
    { type = "item", name = "roboport-antenna-2", amount = 2 },
    { type = "item", name = "roboport-door-2", amount = 1 },
  }

  data.raw.recipe["personal-roboport-chargepad-equipment-2"].ingredients = {
    { type = "item", name = "personal-roboport-chargepad-equipment", amount = 1 },
    { type = "item", name = "roboport-chargepad-2", amount = 2 },
  }

  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk2-equipment", "roboport-antenna-2")
  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk2-equipment", "roboport-chargepad-2")
  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk2-equipment", "roboport-door-2")

  if data.raw.item["brass-gear-wheel"] then
    bobmods.lib.tech.add_prerequisite("personal-roboport-mk2-equipment", "zinc-processing")
  end
else
  data.raw.recipe["personal-roboport-mk2-equipment"].ingredients = {
    { type = "item", name = "personal-roboport-equipment", amount = 1 },
    { type = "item", name = "advanced-circuit", amount = 20 },
    { type = "item", name = "iron-gear-wheel", amount = 40 },
    { type = "item", name = "steel-plate", amount = 20 },
    { type = "item", name = "battery", amount = 20 },
  }

  if data.raw.item["aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("personal-roboport-antenna-equipment-2", "steel-plate", "aluminium-plate")
  end

  if data.raw.item["invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("personal-roboport-chargepad-equipment-2", "steel-plate", "invar-alloy")
  end

  if data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "personal-roboport-mk2-equipment",
      { type = "item", name = "steel-bearing", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "personal-roboport-antenna-equipment-2",
      { type = "item", name = "steel-bearing", amount = 5 }
    )
  end

  if data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("personal-roboport-mk2-equipment", "iron-gear-wheel", "steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient(
      "personal-roboport-antenna-equipment-2",
      "iron-gear-wheel",
      "steel-gear-wheel"
    )
  end
end

if data.raw.item["aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("personal-roboport-mk2-equipment", "steel-plate", "aluminium-plate")
  bobmods.lib.tech.add_prerequisite("personal-roboport-mk2-equipment", "aluminium-processing")
end

if data.raw.item["invar-alloy"] then
  bobmods.lib.tech.add_prerequisite("personal-roboport-mk2-equipment", "invar-processing")
end

if
  data.raw.item["roboport-antenna-3"]
  and data.raw.item["roboport-chargepad-3"]
  and data.raw.item["roboport-door-3"]
then
  data.raw.recipe["personal-roboport-mk3-equipment"].ingredients = {
    { type = "item", name = "personal-roboport-mk2-equipment", amount = 1 },
    { type = "item", name = "roboport-antenna-3", amount = 2 },
    { type = "item", name = "roboport-chargepad-3", amount = 2 },
    { type = "item", name = "roboport-door-3", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["personal-roboport-antenna-equipment-3"].ingredients = {
    { type = "item", name = "personal-roboport-antenna-equipment-2", amount = 1 },
    { type = "item", name = "roboport-antenna-3", amount = 2 },
    { type = "item", name = "roboport-door-3", amount = 1 },
  }

  data.raw.recipe["personal-roboport-chargepad-equipment-3"].ingredients = {
    { type = "item", name = "personal-roboport-chargepad-equipment-2", amount = 1 },
    { type = "item", name = "roboport-chargepad-3", amount = 2 },
  }

  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk3-equipment", "roboport-antenna-3")
  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk3-equipment", "roboport-chargepad-3")
  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk3-equipment", "roboport-door-3")
else
  if data.raw.item["lithium-ion-battery"] then
    bobmods.lib.recipe.replace_ingredient("personal-roboport-mk3-equipment", "battery", "lithium-ion-battery")
    bobmods.lib.recipe.replace_ingredient("personal-roboport-chargepad-equipment-3", "battery", "lithium-ion-battery")
  end

  if data.raw.item["titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("personal-roboport-antenna-equipment-3", "steel-plate", "titanium-plate")
    bobmods.lib.recipe.replace_ingredient("personal-roboport-chargepad-equipment-3", "steel-plate", "titanium-plate")
  end

  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "personal-roboport-mk3-equipment",
      { type = "item", name = "titanium-bearing", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "personal-roboport-antenna-equipment-3",
      { type = "item", name = "titanium-bearing", amount = 5 }
    )
  end

  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("personal-roboport-mk3-equipment", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient(
      "personal-roboport-antenna-equipment-3",
      "iron-gear-wheel",
      "titanium-gear-wheel"
    )
  end
end

if data.raw.item["lithium-ion-battery"] then
  bobmods.lib.tech.add_prerequisite("personal-roboport-mk3-equipment", "battery-2")
end

if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("personal-roboport-mk3-equipment", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("personal-roboport-mk3-equipment", "titanium-processing")
end

if
  data.raw.item["roboport-antenna-4"]
  and data.raw.item["roboport-chargepad-4"]
  and data.raw.item["roboport-door-4"]
then
  data.raw.recipe["personal-roboport-mk4-equipment"].ingredients = {
    { type = "item", name = "personal-roboport-mk3-equipment", amount = 1 },
    { type = "item", name = "roboport-antenna-4", amount = 2 },
    { type = "item", name = "roboport-chargepad-4", amount = 2 },
    { type = "item", name = "roboport-door-4", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["personal-roboport-antenna-equipment-4"].ingredients = {
    { type = "item", name = "personal-roboport-antenna-equipment-3", amount = 1 },
    { type = "item", name = "roboport-antenna-4", amount = 2 },
    { type = "item", name = "roboport-door-4", amount = 1 },
  }

  data.raw.recipe["personal-roboport-chargepad-equipment-4"].ingredients = {
    { type = "item", name = "personal-roboport-chargepad-equipment-3", amount = 1 },
    { type = "item", name = "roboport-chargepad-4", amount = 2 },
  }

  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk4-equipment", "roboport-antenna-4")
  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk4-equipment", "roboport-chargepad-4")
  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk4-equipment", "roboport-door-4")
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient(
      "personal-roboport-mk4-equipment",
      "processing-unit",
      "advanced-processing-unit"
    )
    bobmods.lib.recipe.replace_ingredient(
      "personal-roboport-antenna-equipment-4",
      "processing-unit",
      "advanced-processing-unit"
    )
    bobmods.lib.recipe.replace_ingredient(
      "personal-roboport-chargepad-equipment-4",
      "processing-unit",
      "advanced-processing-unit"
    )
  end

  if data.raw.item["silver-zinc-battery"] then
    bobmods.lib.recipe.replace_ingredient("personal-roboport-mk4-equipment", "battery", "silver-zinc-battery")
    bobmods.lib.recipe.replace_ingredient("personal-roboport-chargepad-equipment-4", "battery", "silver-zinc-battery")
  end

  if data.raw.item["nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("personal-roboport-antenna-equipment-4", "steel-plate", "nitinol-alloy")
    bobmods.lib.recipe.replace_ingredient("personal-roboport-chargepad-equipment-4", "steel-plate", "nitinol-alloy")
  end

  if data.raw.item["nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "personal-roboport-mk4-equipment",
      { type = "item", name = "nitinol-bearing", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "personal-roboport-antenna-equipment-4",
      { type = "item", name = "nitinol-bearing", amount = 5 }
    )
  end

  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("personal-roboport-mk4-equipment", "iron-gear-wheel", "nitinol-gear-wheel")
    bobmods.lib.recipe.replace_ingredient(
      "personal-roboport-antenna-equipment-4",
      "iron-gear-wheel",
      "nitinol-gear-wheel"
    )
  end
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.tech.add_prerequisite("personal-roboport-mk4-equipment", "advanced-electronics-3")
end

if data.raw.item["silver-zinc-battery"] then
  bobmods.lib.tech.add_prerequisite("personal-roboport-mk4-equipment", "battery-3")
end

if data.raw.item["nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("personal-roboport-mk4-equipment", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("personal-roboport-mk4-equipment", "nitinol-processing")
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.tech.add_prerequisite("personal-roboport-mk4-equipment", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient(
    "personal-roboport-robot-equipment-4",
    "processing-unit",
    "advanced-processing-unit"
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

if data.raw.tool["module-case"] or data.raw.item["module-case"] then
  bobmods.lib.tech.add_recipe_unlock("robotics", "module-case")
  bobmods.lib.recipe.add_ingredient(
    "personal-roboport-robot-equipment",
    { type = "item", name = "module-case", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "personal-roboport-robot-equipment-2",
    { type = "item", name = "module-case", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "personal-roboport-robot-equipment-3",
    { type = "item", name = "module-case", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "personal-roboport-robot-equipment-4",
    { type = "item", name = "module-case", amount = 1 }
  )
end

if data.raw.item["glass"] then
  bobmods.lib.recipe.replace_ingredient("night-vision-equipment-2", "plastic-bar", "glass")
  bobmods.lib.recipe.replace_ingredient("solar-panel-equipment-2", "steel-plate", "glass")
end

if data.raw.item["silver-plate"] then
  bobmods.lib.recipe.replace_ingredient("solar-panel-equipment-2", "copper-plate", "silver-plate")
end

if data.raw.item["invar-alloy"] then
  bobmods.lib.recipe.replace_ingredient("personal-laser-defense-equipment-3", "steel-plate", "invar-alloy")
  bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-3", "invar-processing")
  bobmods.lib.recipe.replace_ingredient("exoskeleton-equipment-2", "steel-plate", "invar-alloy")
  bobmods.lib.tech.add_prerequisite("exoskeleton-equipment-2", "invar-processing")
end

if data.raw.item["cobalt-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("exoskeleton-equipment-2", "iron-gear-wheel", "cobalt-steel-gear-wheel")
  bobmods.lib.tech.add_prerequisite("exoskeleton-equipment-2", "cobalt-processing")
end

if data.raw.item["cobalt-steel-bearing"] then
  bobmods.lib.recipe.add_ingredient(
    "exoskeleton-equipment-2",
    { type = "item", name = "cobalt-steel-bearing", amount = 30 }
  )
end

if data.raw.item["gold-plate"] then
  bobmods.lib.recipe.replace_ingredient("solar-panel-equipment-3", "copper-plate", "gold-plate")
end

if data.raw.item["lithium-ion-battery"] then
  bobmods.lib.recipe.replace_ingredient("battery-mk3-equipment", "battery", "lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("bob-battery-equipment-3", "battery-2")
  bobmods.lib.recipe.replace_ingredient("personal-laser-defense-equipment-3", "battery", "lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-3", "battery-2")
  bobmods.lib.recipe.replace_ingredient("personal-laser-defense-equipment-4", "battery", "lithium-ion-battery")
end

if data.raw.item["silicon-wafer"] then
  bobmods.lib.recipe.add_ingredient("solar-panel-equipment-3", { type = "item", name = "silicon-wafer", amount = 8 })
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk4-equipment", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-energy-shield-equipment-4", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk5-equipment", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk6-equipment", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("battery-mk4-equipment", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-battery-equipment-4", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient("battery-mk6-equipment", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("fission-reactor-equipment-2", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("fission-reactor-equipment-2", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient("fission-reactor-equipment-3", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("fission-reactor-equipment-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("night-vision-equipment-3", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("night-vision-equipment-3", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient("solar-panel-equipment-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("solar-panel-equipment-4", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient(
    "personal-laser-defense-equipment-5",
    "processing-unit",
    "advanced-processing-unit"
  )
  bobmods.lib.recipe.replace_ingredient(
    "personal-laser-defense-equipment-6",
    "processing-unit",
    "advanced-processing-unit"
  )
  bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-5", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient("exoskeleton-equipment-3", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("exoskeleton-equipment-3", "advanced-electronics-3")
end

if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("solar-panel-equipment-3", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("solar-panel-equipment-3", "titanium-processing")
  bobmods.lib.recipe.replace_ingredient("personal-laser-defense-equipment-4", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-4", "titanium-processing")
  bobmods.lib.recipe.replace_ingredient("exoskeleton-equipment-3", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("exoskeleton-equipment-3", "titanium-processing")
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("exoskeleton-equipment-3", "iron-gear-wheel", "titanium-gear-wheel")
end

if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient(
    "exoskeleton-equipment-3",
    { type = "item", name = "titanium-bearing", amount = 30 }
  )
end

if data.raw.item["silver-zinc-battery"] then
  bobmods.lib.recipe.replace_ingredient("battery-mk5-equipment", "battery", "silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("bob-battery-equipment-5", "battery-3")
  bobmods.lib.recipe.replace_ingredient("personal-laser-defense-equipment-5", "battery", "silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-5", "battery-3")
  bobmods.lib.recipe.replace_ingredient("personal-laser-defense-equipment-6", "battery", "silver-zinc-battery")
end

if data.raw.item["nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("solar-panel-equipment-4", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("solar-panel-equipment-4", "nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("personal-laser-defense-equipment-5", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-5", "nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("personal-laser-defense-equipment-6", "steel-plate", "nitinol-alloy")
end

if data.raw.item["sapphire-5"] then
  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-2",
    { type = "item", name = "sapphire-5", amount = 1 }
  )
  bobmods.lib.recipe.remove_ingredient("personal-laser-defense-equipment-2", "battery")
  bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-2", "gem-processing-3")
end

if data.raw.item["emerald-5"] then
  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-3",
    { type = "item", name = "emerald-5", amount = 1 }
  )
  bobmods.lib.recipe.remove_ingredient("personal-laser-defense-equipment-3", "advanced-circuit")
end

if data.raw.item["amethyst-5"] then
  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-4",
    { type = "item", name = "amethyst-5", amount = 1 }
  )
end

if data.raw.item["topaz-5"] then
  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-5",
    { type = "item", name = "topaz-5", amount = 1 }
  )
end

if data.raw.item["diamond-5"] then
  bobmods.lib.recipe.replace_ingredient("night-vision-equipment-3", "plastic-bar", "diamond-5")
  bobmods.lib.tech.add_prerequisite("night-vision-equipment-3", "gem-processing-3")
  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-6",
    { type = "item", name = "diamond-5", amount = 1 }
  )
end

if data.raw.item["gilded-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient("solar-panel-equipment-4", "copper-cable", "gilded-copper-cable")
end

if data.raw.module["efficiency-module-4"] then
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk4-equipment", "efficiency-module-3", "efficiency-module-4")
  bobmods.lib.recipe.replace_ingredient("fission-reactor-equipment-2", "efficiency-module-3", "efficiency-module-4")
end

if data.raw.module["speed-module-4"] then
  bobmods.lib.recipe.replace_ingredient("fission-reactor-equipment-2", "speed-module-3", "speed-module-4")
end

if data.raw.module["productivity-module-4"] then
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk4-equipment", "productivity-module-3", "productivity-module-4")
  bobmods.lib.recipe.replace_ingredient("fission-reactor-equipment-2", "productivity-module-3", "productivity-module-4")
end

if data.raw.module["efficiency-module-6"] then
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk5-equipment", "efficiency-module-3", "efficiency-module-6")
  bobmods.lib.recipe.replace_ingredient("fission-reactor-equipment-3", "efficiency-module-3", "efficiency-module-6")
end

if data.raw.module["speed-module-6"] then
  bobmods.lib.recipe.replace_ingredient("fission-reactor-equipment-3", "speed-module-3", "speed-module-6")
end

if data.raw.module["productivity-module-6"] then
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk5-equipment", "productivity-module-3", "productivity-module-6")
  bobmods.lib.recipe.replace_ingredient("fission-reactor-equipment-3", "productivity-module-3", "productivity-module-6")
end

if data.raw.module["efficiency-module-8"] then
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk6-equipment", "efficiency-module-3", "efficiency-module-8")
  bobmods.lib.recipe.replace_ingredient("fission-reactor-equipment-4", "efficiency-module-3", "efficiency-module-8")
end

if data.raw.module["speed-module-8"] then
  bobmods.lib.recipe.replace_ingredient("fission-reactor-equipment-4", "speed-module-3", "speed-module-8")
end

if data.raw.module["productivity-module-8"] then
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk6-equipment", "productivity-module-3", "productivity-module-8")
  bobmods.lib.recipe.replace_ingredient("fission-reactor-equipment-4", "productivity-module-3", "productivity-module-8")
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
  bobmods.lib.recipe.add_new_ingredient(
    "solar-panel-equipment-4",
    { type = "item", name = "alien-artifact", amount = 10 }
  )
else
  bobmods.lib.recipe.add_new_ingredient(
    "night-vision-equipment-3",
    { type = "item", name = "processing-unit", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "solar-panel-equipment-4",
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
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-2",
    { type = "item", name = "alien-artifact-orange", amount = 15 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "energy-shield-mk4-equipment",
    { type = "item", name = "alien-artifact-blue", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "battery-mk4-equipment",
    { type = "item", name = "alien-artifact-blue", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-2",
    { type = "item", name = "alien-artifact-blue", amount = 15 }
  )
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
    "fission-reactor-equipment-2",
    { type = "item", name = "alien-artifact", amount = 40 }
  )
else
  bobmods.lib.recipe.add_ingredient(
    "fission-reactor-equipment-2",
    { type = "item", name = "processing-unit", amount = 40 }
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
    { type = "item", name = "alien-artifact-yellow", amount = 15 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "energy-shield-mk5-equipment",
    { type = "item", name = "alien-artifact-purple", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "battery-mk5-equipment",
    { type = "item", name = "alien-artifact-purple", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-3",
    { type = "item", name = "alien-artifact-purple", amount = 15 }
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
else
  bobmods.lib.recipe.add_ingredient(
    "fission-reactor-equipment-3",
    { type = "item", name = "processing-unit", amount = 60 }
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
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-4",
    { type = "item", name = "alien-artifact-red", amount = 15 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "personal-laser-defense-equipment-6",
    { type = "item", name = "alien-artifact-red", amount = 5 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "energy-shield-mk6-equipment",
    { type = "item", name = "alien-artifact-green", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "battery-mk6-equipment",
    { type = "item", name = "alien-artifact-green", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "fission-reactor-equipment-4",
    { type = "item", name = "alien-artifact-green", amount = 15 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "personal-laser-defense-equipment-6",
    { type = "item", name = "alien-artifact-green", amount = 5 }
  )
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
    { type = "item", name = "alien-artifact", amount = 10 }
  )
else
  bobmods.lib.recipe.add_ingredient(
    "fission-reactor-equipment-4",
    { type = "item", name = "processing-unit", amount = 80 }
  )
  bobmods.lib.recipe.add_ingredient(
    "personal-laser-defense-equipment-6",
    { type = "item", name = "processing-unit", amount = 10 }
  )
end
