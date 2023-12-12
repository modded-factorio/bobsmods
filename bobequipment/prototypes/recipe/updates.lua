if
  data.raw.item["roboport-antenna-1"]
  and data.raw.item["roboport-chargepad-1"]
  and data.raw.item["roboport-door-1"]
then
  data.raw.recipe["personal-roboport-equipment"].ingredients = {
    { "roboport-antenna-1", 2 },
    { "roboport-chargepad-1", 2 },
    { "roboport-door-1", 1 },
    { "steel-plate", 5 },
  }

  data.raw.recipe["personal-roboport-antenna-equipment"].ingredients = {
    { "roboport-antenna-1", 2 },
    { "roboport-door-1", 1 },
  }

  data.raw.recipe["personal-roboport-chargepad-equipment"].ingredients = {
    { "roboport-chargepad-1", 2 },
  }

  bobmods.lib.tech.add_recipe_unlock("personal-roboport-equipment", "roboport-antenna-1")
  bobmods.lib.tech.add_recipe_unlock("personal-roboport-equipment", "roboport-chargepad-1")
  bobmods.lib.tech.add_recipe_unlock("personal-roboport-equipment", "roboport-door-1")
else
  bobmods.lib.recipe.remove_ingredient("personal-roboport-equipment", "battery")
  bobmods.lib.recipe.add_ingredient("personal-roboport-equipment", { "battery", 20 })
end

if
  data.raw.item["roboport-antenna-2"]
  and data.raw.item["roboport-chargepad-2"]
  and data.raw.item["roboport-door-2"]
then
  data.raw.recipe["personal-roboport-mk2-equipment"].ingredients = {
    { "personal-roboport-equipment", 1 },
    { "roboport-antenna-2", 2 },
    { "roboport-chargepad-2", 2 },
    { "roboport-door-2", 1 },
    { "steel-plate", 5 },
  }

  data.raw.recipe["personal-roboport-antenna-equipment-2"].ingredients = {
    { "personal-roboport-antenna-equipment", 1 },
    { "roboport-antenna-2", 2 },
    { "roboport-door-2", 1 },
  }

  data.raw.recipe["personal-roboport-chargepad-equipment-2"].ingredients = {
    { "personal-roboport-chargepad-equipment", 1 },
    { "roboport-chargepad-2", 2 },
  }

  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk2-equipment", "roboport-antenna-2")
  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk2-equipment", "roboport-chargepad-2")
  bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk2-equipment", "roboport-door-2")

  if data.raw.item["brass-gear-wheel"] then
    bobmods.lib.tech.add_prerequisite("personal-roboport-mk2-equipment", "zinc-processing")
  end
else
  data.raw.recipe["personal-roboport-mk2-equipment"].ingredients = {
    { "personal-roboport-equipment", 1 },
    { "advanced-circuit", 20 },
    { "iron-gear-wheel", 40 },
    { "steel-plate", 20 },
    { "battery", 20 },
  }

  if data.raw.item["aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("personal-roboport-antenna-equipment-2", "steel-plate", "aluminium-plate")
  end

  if data.raw.item["invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("personal-roboport-chargepad-equipment-2", "steel-plate", "invar-alloy")
  end

  if data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("personal-roboport-mk2-equipment", { "steel-bearing", 5 })
    bobmods.lib.recipe.add_ingredient("personal-roboport-antenna-equipment-2", { "steel-bearing", 5 })
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
    { "personal-roboport-mk2-equipment", 1 },
    { "roboport-antenna-3", 2 },
    { "roboport-chargepad-3", 2 },
    { "roboport-door-3", 1 },
    { "steel-plate", 5 },
  }

  data.raw.recipe["personal-roboport-antenna-equipment-3"].ingredients = {
    { "personal-roboport-antenna-equipment-2", 1 },
    { "roboport-antenna-3", 2 },
    { "roboport-door-3", 1 },
  }

  data.raw.recipe["personal-roboport-chargepad-equipment-3"].ingredients = {
    { "personal-roboport-chargepad-equipment-2", 1 },
    { "roboport-chargepad-3", 2 },
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
    bobmods.lib.recipe.add_ingredient("personal-roboport-mk3-equipment", { "titanium-bearing", 5 })
    bobmods.lib.recipe.add_ingredient("personal-roboport-antenna-equipment-3", { "titanium-bearing", 5 })
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
    { "personal-roboport-mk3-equipment", 1 },
    { "roboport-antenna-4", 2 },
    { "roboport-chargepad-4", 2 },
    { "roboport-door-4", 1 },
    { "steel-plate", 5 },
  }

  data.raw.recipe["personal-roboport-antenna-equipment-4"].ingredients = {
    { "personal-roboport-antenna-equipment-3", 1 },
    { "roboport-antenna-4", 2 },
    { "roboport-door-4", 1 },
  }

  data.raw.recipe["personal-roboport-chargepad-equipment-4"].ingredients = {
    { "personal-roboport-chargepad-equipment-3", 1 },
    { "roboport-chargepad-4", 2 },
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
    bobmods.lib.recipe.add_ingredient("personal-roboport-mk4-equipment", { "nitinol-bearing", 5 })
    bobmods.lib.recipe.add_ingredient("personal-roboport-antenna-equipment-4", { "nitinol-bearing", 5 })
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

if
  data.raw.item["basic-electronic-components"]
  and data.raw.item["electronic-components"]
  and data.raw.item["intergrated-electronics"]
  and data.raw.item["processing-electronics"]
  and data.raw.item["circuit-board"]
  and data.raw.item["superior-circuit-board"]
  and data.raw.item["multi-layer-circuit-board"]
then
  data.raw.recipe["personal-roboport-robot-equipment"].ingredients = {
    { "circuit-board", 1 },
    { "basic-electronic-components", 30 },
    { "electronic-components", 15 },
  }

  data.raw.recipe["personal-roboport-robot-equipment-2"].ingredients = {
    { "personal-roboport-robot-equipment", 1 },
    { "circuit-board", 1 },
    { "basic-electronic-components", 15 },
    { "electronic-components", 30 },
  }

  data.raw.recipe["personal-roboport-robot-equipment-3"].ingredients = {
    { "personal-roboport-robot-equipment-2", 1 },
    { "superior-circuit-board", 1 },
    { "basic-electronic-components", 10 },
    { "electronic-components", 20 },
    { "intergrated-electronics", 10 },
  }

  data.raw.recipe["personal-roboport-robot-equipment-4"].ingredients = {
    { "personal-roboport-robot-equipment-3", 1 },
    { "multi-layer-circuit-board", 1 },
    { "basic-electronic-components", 5 },
    { "electronic-components", 10 },
    { "intergrated-electronics", 20 },
    { "processing-electronics", 8 },
  }
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.tech.add_prerequisite("personal-roboport-mk4-equipment", "advanced-electronics-3")
    bobmods.lib.recipe.replace_ingredient(
      "personal-roboport-robot-equipment-4",
      "processing-unit",
      "advanced-processing-unit"
    )
  end
end

if data.raw.item["solder"] then
  bobmods.lib.recipe.add_ingredient("personal-roboport-robot-equipment", { "solder", 2 })
  bobmods.lib.recipe.add_ingredient("personal-roboport-robot-equipment-2", { "solder", 3 })
  bobmods.lib.recipe.add_ingredient("personal-roboport-robot-equipment-3", { "solder", 4 })
  bobmods.lib.recipe.add_ingredient("personal-roboport-robot-equipment-4", { "solder", 6 })
end

if data.raw.tool["module-case"] then
  bobmods.lib.recipe.add_ingredient("personal-roboport-robot-equipment", { "module-case", 1 })
  bobmods.lib.tech.add_prerequisite("personal-roboport-modular-equipment-1", "modules")
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
  bobmods.lib.recipe.add_ingredient("exoskeleton-equipment-2", { "cobalt-steel-bearing", 30 })
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
  bobmods.lib.recipe.add_ingredient("solar-panel-equipment-3", { "silicon-wafer", 8 })
end

bobmods.lib.recipe.replace_ingredient("exoskeleton-equipment", "processing-unit", "advanced-circuit")

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk3-equipment", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-energy-shield-equipment-3", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk4-equipment", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk5-equipment", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk6-equipment", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("battery-mk4-equipment", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-battery-equipment-4", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient("battery-mk6-equipment", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("fusion-reactor-equipment-2", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-2", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient("fusion-reactor-equipment-3", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("fusion-reactor-equipment-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("night-vision-equipment-3", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("night-vision-equipment-3", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient("solar-panel-equipment-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("solar-panel-equipment-4", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient(
    "personal-laser-defense-equipment-6",
    "processing-unit",
    "advanced-processing-unit"
  )
  bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-6", "advanced-electronics-3")
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
  bobmods.lib.recipe.add_ingredient("exoskeleton-equipment-3", { "titanium-bearing", 30 })
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
  bobmods.lib.recipe.add_ingredient("personal-laser-defense-equipment-2", { "sapphire-5", 1 })
  bobmods.lib.recipe.remove_ingredient("personal-laser-defense-equipment-2", "battery")
  bobmods.lib.tech.add_prerequisite("personal-laser-defense-equipment-2", "gem-processing-3")
end

if data.raw.item["emerald-5"] then
  bobmods.lib.recipe.add_ingredient("personal-laser-defense-equipment-3", { "emerald-5", 1 })
  bobmods.lib.recipe.remove_ingredient("personal-laser-defense-equipment-3", "advanced-circuit")
end

if data.raw.item["amethyst-5"] then
  bobmods.lib.recipe.add_ingredient("personal-laser-defense-equipment-4", { "amethyst-5", 1 })
end

if data.raw.item["topaz-5"] then
  bobmods.lib.recipe.add_ingredient("personal-laser-defense-equipment-5", { "topaz-5", 1 })
end

if data.raw.item["diamond-5"] then
  bobmods.lib.recipe.replace_ingredient("night-vision-equipment-3", "plastic-bar", "diamond-5")
  bobmods.lib.tech.add_prerequisite("night-vision-equipment-3", "gem-processing-3")
  bobmods.lib.recipe.add_ingredient("personal-laser-defense-equipment-6", { "diamond-5", 1 })
end

if data.raw.item["gilded-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient("solar-panel-equipment-4", "copper-cable", "gilded-copper-cable")
end

if data.raw.module["effectivity-module-4"] then
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk4-equipment", "effectivity-module-3", "effectivity-module-4")
  bobmods.lib.recipe.replace_ingredient("fusion-reactor-equipment-2", "effectivity-module-3", "effectivity-module-4")
end

if data.raw.module["speed-module-4"] then
  bobmods.lib.recipe.replace_ingredient("fusion-reactor-equipment-2", "speed-module-3", "speed-module-4")
end

if data.raw.module["productivity-module-4"] then
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk4-equipment", "productivity-module-3", "productivity-module-4")
  bobmods.lib.recipe.replace_ingredient("fusion-reactor-equipment-2", "productivity-module-3", "productivity-module-4")
end

if data.raw.module["effectivity-module-6"] then
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk5-equipment", "effectivity-module-3", "effectivity-module-6")
  bobmods.lib.recipe.replace_ingredient("fusion-reactor-equipment-3", "effectivity-module-3", "effectivity-module-6")
end

if data.raw.module["speed-module-6"] then
  bobmods.lib.recipe.replace_ingredient("fusion-reactor-equipment-3", "speed-module-3", "speed-module-6")
end

if data.raw.module["productivity-module-6"] then
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk5-equipment", "productivity-module-3", "productivity-module-6")
  bobmods.lib.recipe.replace_ingredient("fusion-reactor-equipment-3", "productivity-module-3", "productivity-module-6")
end

if data.raw.module["effectivity-module-8"] then
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk6-equipment", "effectivity-module-3", "effectivity-module-8")
  bobmods.lib.recipe.replace_ingredient("fusion-reactor-equipment-4", "effectivity-module-3", "effectivity-module-8")
end

if data.raw.module["speed-module-8"] then
  bobmods.lib.recipe.replace_ingredient("fusion-reactor-equipment-4", "speed-module-3", "speed-module-8")
end

if data.raw.module["productivity-module-8"] then
  bobmods.lib.recipe.replace_ingredient("energy-shield-mk6-equipment", "productivity-module-3", "productivity-module-8")
  bobmods.lib.recipe.replace_ingredient("fusion-reactor-equipment-4", "productivity-module-3", "productivity-module-8")
end

if data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient("energy-shield-mk3-equipment", { "alien-artifact", 10 })
  bobmods.lib.recipe.add_new_ingredient("night-vision-equipment-3", { "alien-artifact", 10 })
  bobmods.lib.recipe.add_new_ingredient("solar-panel-equipment-4", { "alien-artifact", 10 })
else
  bobmods.lib.recipe.add_new_ingredient("night-vision-equipment-3", { "processing-unit", 10 })
  bobmods.lib.recipe.add_new_ingredient("solar-panel-equipment-4", { "processing-unit", 10 })
end

if data.raw.item["alien-artifact-orange"] and data.raw.item["alien-artifact-blue"] then
  bobmods.lib.recipe.add_new_ingredient("energy-shield-mk4-equipment", { "alien-artifact-orange", 5 })
  bobmods.lib.recipe.add_new_ingredient("battery-mk4-equipment", { "alien-artifact-orange", 5 })
  bobmods.lib.recipe.add_new_ingredient("fusion-reactor-equipment-2", { "alien-artifact-orange", 15 })

  bobmods.lib.recipe.add_new_ingredient("energy-shield-mk4-equipment", { "alien-artifact-blue", 5 })
  bobmods.lib.recipe.add_new_ingredient("battery-mk4-equipment", { "alien-artifact-blue", 5 })
  bobmods.lib.recipe.add_new_ingredient("fusion-reactor-equipment-2", { "alien-artifact-blue", 15 })
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient("energy-shield-mk4-equipment", { "alien-artifact", 15 })
  bobmods.lib.recipe.add_new_ingredient("battery-mk4-equipment", { "alien-artifact", 15 })
  bobmods.lib.recipe.add_new_ingredient("fusion-reactor-equipment-2", { "alien-artifact", 40 })
else
  bobmods.lib.recipe.add_ingredient("fusion-reactor-equipment-2", { "processing-unit", 40 })
end

if data.raw.item["alien-artifact-yellow"] and data.raw.item["alien-artifact-purple"] then
  bobmods.lib.recipe.add_new_ingredient("energy-shield-mk5-equipment", { "alien-artifact-yellow", 5 })
  bobmods.lib.recipe.add_new_ingredient("battery-mk5-equipment", { "alien-artifact-yellow", 5 })
  bobmods.lib.recipe.add_new_ingredient("fusion-reactor-equipment-3", { "alien-artifact-yellow", 15 })

  bobmods.lib.recipe.add_new_ingredient("energy-shield-mk5-equipment", { "alien-artifact-purple", 5 })
  bobmods.lib.recipe.add_new_ingredient("battery-mk5-equipment", { "alien-artifact-purple", 5 })
  bobmods.lib.recipe.add_new_ingredient("fusion-reactor-equipment-3", { "alien-artifact-purple", 15 })
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient("energy-shield-mk5-equipment", { "alien-artifact", 20 })
  bobmods.lib.recipe.add_new_ingredient("battery-mk5-equipment", { "alien-artifact", 20 })
  bobmods.lib.recipe.add_new_ingredient("fusion-reactor-equipment-3", { "alien-artifact", 60 })
else
  bobmods.lib.recipe.add_ingredient("fusion-reactor-equipment-3", { "processing-unit", 60 })
end

if data.raw.item["alien-artifact-red"] and data.raw.item["alien-artifact-green"] then
  bobmods.lib.recipe.add_new_ingredient("energy-shield-mk6-equipment", { "alien-artifact-red", 5 })
  bobmods.lib.recipe.add_new_ingredient("battery-mk6-equipment", { "alien-artifact-red", 5 })
  bobmods.lib.recipe.add_new_ingredient("fusion-reactor-equipment-4", { "alien-artifact-red", 15 })
  bobmods.lib.recipe.add_new_ingredient("personal-laser-defense-equipment-6", { "alien-artifact-red", 5 })

  bobmods.lib.recipe.add_new_ingredient("energy-shield-mk6-equipment", { "alien-artifact-green", 5 })
  bobmods.lib.recipe.add_new_ingredient("battery-mk6-equipment", { "alien-artifact-green", 5 })
  bobmods.lib.recipe.add_new_ingredient("fusion-reactor-equipment-4", { "alien-artifact-green", 15 })
  bobmods.lib.recipe.add_new_ingredient("personal-laser-defense-equipment-6", { "alien-artifact-green", 5 })
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient("energy-shield-mk6-equipment", { "alien-artifact", 30 })
  bobmods.lib.recipe.add_new_ingredient("battery-mk6-equipment", { "alien-artifact", 30 })
  bobmods.lib.recipe.add_new_ingredient("fusion-reactor-equipment-4", { "alien-artifact", 80 })
  bobmods.lib.recipe.add_new_ingredient("personal-laser-defense-equipment-6", { "alien-artifact", 10 })
else
  bobmods.lib.recipe.add_ingredient("fusion-reactor-equipment-4", { "processing-unit", 80 })
  bobmods.lib.recipe.add_ingredient("personal-laser-defense-equipment-6", { "processing-unit", 10 })
end
