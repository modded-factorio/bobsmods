if data.raw.item["roboport-antenna-1"] and data.raw.item["roboport-chargepad-1"] and data.raw.item["roboport-door-1"] then
  data.raw.recipe["vehicle-roboport"].ingredients =
  {
    {"roboport-antenna-1", 2},
    {"roboport-chargepad-1", 2},
    {"roboport-door-1", 1},
    {"steel-plate", 5},
  }

  data.raw.recipe["vehicle-roboport-antenna-equipment"].ingredients =
  {
    {"roboport-antenna-1", 2},
    {"roboport-door-1", 1},
  }

  data.raw.recipe["vehicle-roboport-chargepad-equipment"].ingredients =
  {
    {"roboport-chargepad-1", 2},
  }

  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment", "roboport-antenna-1")
  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment", "roboport-chargepad-1")
  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment", "roboport-door-1")
else
  bobmods.lib.recipe.remove_ingredient("vehicle-roboport", "battery")
  bobmods.lib.recipe.add_ingredient("vehicle-roboport", {"battery", 20})
end


if data.raw.item["roboport-antenna-2"] and data.raw.item["roboport-chargepad-2"] and data.raw.item["roboport-door-2"] then
  data.raw.recipe["vehicle-roboport-2"].ingredients =
  {
    {"vehicle-roboport", 1},
    {"roboport-antenna-2", 2},
    {"roboport-chargepad-2", 2},
    {"roboport-door-2", 1},
    {"steel-plate", 5},
  }

  data.raw.recipe["vehicle-roboport-antenna-equipment-2"].ingredients =
  {
    {"vehicle-roboport-antenna-equipment", 1},
    {"roboport-antenna-2", 2},
    {"roboport-door-2", 1},
  }

  data.raw.recipe["vehicle-roboport-chargepad-equipment-2"].ingredients =
  {
    {"vehicle-roboport-chargepad-equipment", 1},
    {"roboport-chargepad-2", 2},
  }

  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-2", "roboport-antenna-2")
  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-2", "roboport-chargepad-2")
  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-2", "roboport-door-2")

  if data.raw.item["brass-gear-wheel"] then
    bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-2", "zinc-processing")
  end
else
  data.raw.recipe["vehicle-roboport-2"].ingredients =
  {
    {"vehicle-roboport", 1},
    {"advanced-circuit", 20},
    {"iron-gear-wheel", 40},
    {"steel-plate", 20},
    {"battery", 20}
  }

  if data.raw.item["aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-antenna-equipment-2", "steel-plate", "aluminium-plate")
  end

  if data.raw.item["invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-chargepad-equipment-2", "steel-plate", "invar-alloy")
  end

  if data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("vehicle-roboport-2", {"steel-bearing", 5})
    bobmods.lib.recipe.add_ingredient("vehicle-roboport-antenna-equipment-2", {"steel-bearing", 5})
  end

  if data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-2", "iron-gear-wheel", "steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-antenna-equipment-2", "iron-gear-wheel", "steel-gear-wheel")
  end
end

if data.raw.item["aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-roboport-2", "steel-plate", "aluminium-plate")
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-2", "aluminium-processing")
end

if data.raw.item["invar-alloy"] then
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-2", "invar-processing")
end



if data.raw.item["roboport-antenna-3"] and data.raw.item["roboport-chargepad-3"] and data.raw.item["roboport-door-3"] then
  data.raw.recipe["vehicle-roboport-3"].ingredients =
  {
    {"vehicle-roboport-2", 1},
    {"roboport-antenna-3", 2},
    {"roboport-chargepad-3", 2},
    {"roboport-door-3", 1},
    {"steel-plate", 5},
  }

  data.raw.recipe["vehicle-roboport-antenna-equipment-3"].ingredients =
  {
    {"vehicle-roboport-antenna-equipment-2", 1},
    {"roboport-antenna-3", 2},
    {"roboport-door-3", 1},
  }

  data.raw.recipe["vehicle-roboport-chargepad-equipment-3"].ingredients =
  {
    {"vehicle-roboport-chargepad-equipment-2", 1},
    {"roboport-chargepad-3", 2},
  }

  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-3", "roboport-antenna-3")
  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-3", "roboport-chargepad-3")
  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-3", "roboport-door-3")
else
  if data.raw.item["lithium-ion-battery"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-3", "battery", "lithium-ion-battery")
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-chargepad-equipment-3", "battery", "lithium-ion-battery")
  end

  if data.raw.item["titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-antenna-equipment-3", "steel-plate", "titanium-plate")
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-chargepad-equipment-3", "steel-plate", "titanium-plate")
  end

  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("vehicle-roboport-3", {"titanium-bearing", 5})
    bobmods.lib.recipe.add_ingredient("vehicle-roboport-antenna-equipment-3", {"titanium-bearing", 5})
  end

  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-3", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-antenna-equipment-3", "iron-gear-wheel", "titanium-gear-wheel")
  end

end

if data.raw.item["lithium-ion-battery"] then
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-3", "battery-2")
end

if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-roboport-3", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-3", "titanium-processing")
end



if data.raw.item["roboport-antenna-4"] and data.raw.item["roboport-chargepad-4"] and data.raw.item["roboport-door-4"] then
  data.raw.recipe["vehicle-roboport-4"].ingredients =
  {
    {"vehicle-roboport-3", 1},
    {"roboport-antenna-4", 2},
    {"roboport-chargepad-4", 2},
    {"roboport-door-4", 1},
    {"steel-plate", 5},
  }

  data.raw.recipe["vehicle-roboport-antenna-equipment-4"].ingredients =
  {
    {"vehicle-roboport-antenna-equipment-3", 1},
    {"roboport-antenna-4", 2},
    {"roboport-door-4", 1},
  }

  data.raw.recipe["vehicle-roboport-chargepad-equipment-4"].ingredients =
  {
    {"vehicle-roboport-chargepad-equipment-3", 1},
    {"roboport-chargepad-4", 2},
  }

  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-4", "roboport-antenna-4")
  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-4", "roboport-chargepad-4")
  bobmods.lib.tech.add_recipe_unlock("vehicle-roboport-equipment-4", "roboport-door-4")
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-4", "processing-unit", "advanced-processing-unit")
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-antenna-equipment-4", "processing-unit", "advanced-processing-unit")
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-chargepad-equipment-4", "processing-unit", "advanced-processing-unit")
  end

  if data.raw.item["silver-zinc-battery"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-4", "battery", "silver-zinc-battery")
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-chargepad-equipment-4", "battery", "silver-zinc-battery")
  end

  if data.raw.item["nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-antenna-equipment-4", "steel-plate", "nitinol-alloy")
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-chargepad-equipment-4", "steel-plate", "nitinol-alloy")
  end

  if data.raw.item["nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient("vehicle-roboport-4", {"nitinol-bearing", 5})
    bobmods.lib.recipe.add_ingredient("vehicle-roboport-antenna-equipment-4", {"nitinol-bearing", 5})
  end

  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-4", "iron-gear-wheel", "nitinol-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-antenna-equipment-4", "iron-gear-wheel", "nitinol-gear-wheel")
  end
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-4", "advanced-electronics-3")
end

if data.raw.item["silver-zinc-battery"] then
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-4", "battery-3")
end

if data.raw.item["nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-roboport-4", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-4", "nitinol-processing")
end


if
  data.raw.item["basic-electronic-components"] and
  data.raw.item["electronic-components"] and
  data.raw.item["intergrated-electronics"] and
  data.raw.item["processing-electronics"] and
  data.raw.item["circuit-board"] and
  data.raw.item["superior-circuit-board"] and
  data.raw.item["multi-layer-circuit-board"]
then
  data.raw.recipe["vehicle-roboport-robot-equipment"].ingredients =
  {
    {"circuit-board", 1},
    {"basic-electronic-components", 30},
    {"electronic-components", 15},
  }

  data.raw.recipe["vehicle-roboport-robot-equipment-2"].ingredients =
  {
    {"vehicle-roboport-robot-equipment", 1},
    {"circuit-board", 1},
    {"basic-electronic-components", 15},
    {"electronic-components", 30},
  }

  data.raw.recipe["vehicle-roboport-robot-equipment-3"].ingredients =
  {
    {"vehicle-roboport-robot-equipment-2", 1},
    {"superior-circuit-board", 1},
    {"basic-electronic-components", 10},
    {"electronic-components", 20},
    {"intergrated-electronics", 10},
  }

  data.raw.recipe["vehicle-roboport-robot-equipment-4"].ingredients =
  {
    {"vehicle-roboport-robot-equipment-3", 1},
    {"multi-layer-circuit-board", 1},
    {"basic-electronic-components", 5},
    {"electronic-components", 10},
    {"intergrated-electronics", 20},
    {"processing-electronics", 8},
  }
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.tech.add_prerequisite("vehicle-roboport-equipment-4", "advanced-electronics-3")
    bobmods.lib.recipe.replace_ingredient("vehicle-roboport-robot-equipment-4", "processing-unit", "advanced-processing-unit")
  end
end


if data.raw.item["solder"] then
  bobmods.lib.recipe.add_ingredient("vehicle-roboport-robot-equipment", {"solder", 2})
  bobmods.lib.recipe.add_ingredient("vehicle-roboport-robot-equipment-2", {"solder", 3})
  bobmods.lib.recipe.add_ingredient("vehicle-roboport-robot-equipment-3", {"solder", 4})
  bobmods.lib.recipe.add_ingredient("vehicle-roboport-robot-equipment-4", {"solder", 6})
end

if data.raw.tool["module-case"] then
  bobmods.lib.recipe.add_ingredient("vehicle-roboport-robot-equipment", {"module-case", 1})
  bobmods.lib.tech.add_prerequisite("vehicle-roboport-modular-equipment-1", "modules")
end


if data.raw.item["glass"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-2", "steel-plate", "glass")
end

if data.raw.item["silver-plate"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-2", "copper-plate", "silver-plate")
end

if data.raw.item["invar-alloy"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-laser-defense-3", "steel-plate", "invar-alloy")
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-3", "invar-processing")

  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-3", "steel-plate", "invar-alloy")
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-3", "invar-processing")
end

if data.raw.item["aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-3", "steel-plate", "aluminium-plate")
  bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-3", "aluminium-processing")
end

if data.raw.item["gold-plate"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-3", "copper-plate", "gold-plate")
end

if data.raw.item["lithium-ion-battery"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-battery-3", "battery", "lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("vehicle-battery-equipment-3", "battery-2")

  bobmods.lib.recipe.replace_ingredient("vehicle-laser-defense-3", "battery", "lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-3", "battery-2")
  bobmods.lib.recipe.replace_ingredient("vehicle-laser-defense-4", "battery", "lithium-ion-battery")

  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-3", "battery", "lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-3", "battery-2")
  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-4", "battery", "lithium-ion-battery")
end

if data.raw.item["silicon-wafer"] then
  bobmods.lib.recipe.add_new_ingredient("vehicle-solar-panel-4", {"silicon-wafer", 10})
  bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-4", "silicon-processing")
  bobmods.lib.recipe.add_new_ingredient("vehicle-solar-panel-5", {"silicon-wafer", 10})
  bobmods.lib.recipe.add_new_ingredient("vehicle-solar-panel-6", {"silicon-wafer", 10})
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-3", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("vehicle-energy-shield-equipment-3", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-5", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-6", "processing-unit", "advanced-processing-unit")

  bobmods.lib.recipe.replace_ingredient("vehicle-battery-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("vehicle-battery-equipment-4", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient("vehicle-battery-6", "processing-unit", "advanced-processing-unit")

  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-reactor-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-reactor-equipment-4", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-reactor-5", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-reactor-6", "processing-unit", "advanced-processing-unit")

  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-cell-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-cell-equipment-4", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-cell-5", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-cell-6", "processing-unit", "advanced-processing-unit")

  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-4", "advanced-electronics-3")
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-5", "processing-unit", "advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-6", "processing-unit", "advanced-processing-unit")

  bobmods.lib.recipe.replace_ingredient("vehicle-laser-defense-6", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-6", "advanced-electronics-3")

  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-6", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-6", "advanced-electronics-3")

  bobmods.lib.recipe.replace_ingredient("vehicle-engine", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("vehicle-engine-equipment", "advanced-electronics-3")
end

if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-4", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-4", "titanium-processing")

  bobmods.lib.recipe.replace_ingredient("vehicle-laser-defense-4", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-4", "titanium-processing")

  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-4", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-4", "titanium-processing")
end

if data.raw.item["silver-zinc-battery"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-battery-5", "battery", "silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("vehicle-battery-equipment-5", "battery-3")

  bobmods.lib.recipe.replace_ingredient("vehicle-laser-defense-5", "battery", "silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-5", "battery-3")
  bobmods.lib.recipe.replace_ingredient("vehicle-laser-defense-6", "battery", "silver-zinc-battery")

  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-5", "battery", "silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-5", "battery-3")
  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-6", "battery", "silver-zinc-battery")
end

if data.raw.item["nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-5", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-5", "nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-6", "steel-plate", "nitinol-alloy")

  bobmods.lib.recipe.replace_ingredient("vehicle-laser-defense-5", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-5", "nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("vehicle-laser-defense-6", "steel-plate", "nitinol-alloy")

  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-5", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("vehicle-big-turret-equipment-5", "nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("vehicle-big-turret-6", "steel-plate", "nitinol-alloy")

  bobmods.lib.recipe.replace_ingredient("vehicle-engine", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("vehicle-engine-equipment", "nitinol-processing")
end

if data.raw.item["nitinol-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-engine", "iron-gear-wheel", "nitinol-gear-wheel")
end

if data.raw.item["nitinol-bearing"] then
  bobmods.lib.recipe.add_ingredient("vehicle-engine", {"nitinol-bearing", 30})
end

if data.raw.item["gilded-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-4", "copper-cable", "gilded-copper-cable")
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-5", "copper-cable", "gilded-copper-cable")
  bobmods.lib.recipe.replace_ingredient("vehicle-solar-panel-6", "copper-cable", "gilded-copper-cable")
end



if data.raw.item["ruby-5"] then
  bobmods.lib.recipe.add_ingredient("vehicle-laser-defense-1", {"ruby-5", 1})
  bobmods.lib.tech.add_prerequisite("vehicle-laser-defense-equipment-1", "gem-processing-2")
end

if data.raw.item["sapphire-5"] then
  bobmods.lib.recipe.add_ingredient("vehicle-laser-defense-2", {"sapphire-5", 1})
  bobmods.lib.recipe.remove_ingredient("vehicle-laser-defense-2", "battery")
end

if data.raw.item["emerald-5"] then
  bobmods.lib.recipe.add_ingredient("vehicle-laser-defense-3", {"emerald-5", 1})
  bobmods.lib.recipe.remove_ingredient("vehicle-laser-defense-3", "advanced-circuit")
end

if data.raw.item["amethyst-5"] then
  bobmods.lib.recipe.add_ingredient("vehicle-laser-defense-4", {"amethyst-5", 1})
end

if data.raw.item["topaz-5"] then
  bobmods.lib.recipe.add_ingredient("vehicle-laser-defense-5", {"topaz-5", 1})
end

if data.raw.item["diamond-5"] then
  bobmods.lib.recipe.add_ingredient("vehicle-laser-defense-6", {"diamond-5", 1})
  bobmods.lib.tech.add_prerequisite("vehicle-solar-panel-equipment-6", "gem-processing-2")
  bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-6", {"diamond-5", 1})
end



if data.raw.module["effectivity-module-4"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-4", "effectivity-module-3", "effectivity-module-4")
end

if data.raw.module["productivity-module-4"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-4", "productivity-module-3", "productivity-module-4")
end


if data.raw.module["effectivity-module-5"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-reactor-4", "effectivity-module-3", "effectivity-module-5")
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-cell-4", "effectivity-module-3", "effectivity-module-5")
end

if data.raw.module["speed-module-5"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-reactor-4", "speed-module-3", "speed-module-5")
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-cell-4", "speed-module-3", "speed-module-5")
end

if data.raw.module["productivity-module-5"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-reactor-4", "productivity-module-3", "productivity-module-5")
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-cell-4", "productivity-module-3", "productivity-module-5")
end


if data.raw.module["effectivity-module-6"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-5", "effectivity-module-3", "effectivity-module-6")
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-reactor-5", "effectivity-module-3", "effectivity-module-6")
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-cell-5", "effectivity-module-3", "effectivity-module-6")
end

if data.raw.module["speed-module-6"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-reactor-5", "speed-module-3", "speed-module-6")
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-cell-5", "speed-module-3", "speed-module-6")
end

if data.raw.module["productivity-module-6"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-5", "productivity-module-3", "productivity-module-6")
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-reactor-5", "productivity-module-3", "productivity-module-6")
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-cell-5", "productivity-module-3", "productivity-module-6")
end


if data.raw.module["effectivity-module-8"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-6", "effectivity-module-3", "effectivity-module-8")
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-reactor-6", "effectivity-module-3", "effectivity-module-8")
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-cell-6", "effectivity-module-3", "effectivity-module-8")
end

if data.raw.module["speed-module-8"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-reactor-6", "speed-module-3", "speed-module-8")
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-cell-6", "speed-module-3", "speed-module-8")
end

if data.raw.module["productivity-module-8"] then
  bobmods.lib.recipe.replace_ingredient("vehicle-shield-6", "productivity-module-3", "productivity-module-8")
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-reactor-6", "productivity-module-3", "productivity-module-8")
  bobmods.lib.recipe.replace_ingredient("vehicle-fusion-cell-6", "productivity-module-3", "productivity-module-8")
end



if data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient("vehicle-shield-3", {"alien-artifact", 10})
  bobmods.lib.recipe.add_new_ingredient("vehicle-big-turret-1", {"alien-artifact", 30})
  bobmods.lib.recipe.add_new_ingredient("vehicle-big-turret-2", {"alien-artifact", 30})
  bobmods.lib.recipe.add_new_ingredient("vehicle-big-turret-3", {"alien-artifact", 30})

  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-reactor-2", {"alien-artifact", 30})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-reactor-3", {"alien-artifact", 30})

  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-cell-2", {"alien-artifact", 15})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-cell-3", {"alien-artifact", 15})

  bobmods.lib.recipe.add_new_ingredient("vehicle-solar-panel-5", {"alien-artifact", 10})
  bobmods.lib.recipe.add_new_ingredient("vehicle-solar-panel-6", {"alien-artifact", 10})
else
  bobmods.lib.recipe.add_ingredient("vehicle-fusion-reactor-2", {"processing-unit", 50})
  bobmods.lib.recipe.add_ingredient("vehicle-fusion-reactor-3", {"processing-unit", 50})

  bobmods.lib.recipe.add_ingredient("vehicle-fusion-cell-2", {"processing-unit", 25})
  bobmods.lib.recipe.add_ingredient("vehicle-fusion-cell-3", {"processing-unit", 25})

  bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-5", {"processing-unit", 10})
  bobmods.lib.recipe.add_ingredient("vehicle-solar-panel-6", {"processing-unit", 10})
end



if data.raw.item["alien-artifact-orange"] and data.raw.item["alien-artifact-blue"] then
  bobmods.lib.recipe.add_new_ingredient("vehicle-shield-4", {"alien-artifact-orange", 5})
  bobmods.lib.recipe.add_new_ingredient("vehicle-battery-4", {"alien-artifact-orange", 5})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-reactor-4", {"alien-artifact-orange", 15})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-cell-4", {"alien-artifact-orange", 8})
  bobmods.lib.recipe.add_new_ingredient("vehicle-big-turret-4", {"alien-artifact-orange", 15})

  bobmods.lib.recipe.add_new_ingredient("vehicle-shield-4", {"alien-artifact-blue", 5})
  bobmods.lib.recipe.add_new_ingredient("vehicle-battery-4", {"alien-artifact-blue", 5})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-reactor-4", {"alien-artifact-blue", 15})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-cell-4", {"alien-artifact-blue", 8})
  bobmods.lib.recipe.add_new_ingredient("vehicle-big-turret-4", {"alien-artifact-blue", 15})
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient("vehicle-shield-4", {"alien-artifact", 10})
  bobmods.lib.recipe.add_new_ingredient("vehicle-battery-4", {"alien-artifact", 10})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-reactor-4", {"alien-artifact", 30})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-cell-4", {"alien-artifact", 15})
  bobmods.lib.recipe.add_new_ingredient("vehicle-big-turret-4", {"alien-artifact", 30})
else
  bobmods.lib.recipe.add_ingredient("vehicle-fusion-reactor-4", {"processing-unit", 50})
  bobmods.lib.recipe.add_ingredient("vehicle-fusion-cell-4", {"processing-unit", 25})
end


if data.raw.item["alien-artifact-yellow"] and data.raw.item["alien-artifact-purple"] then
  bobmods.lib.recipe.add_new_ingredient("vehicle-shield-5", {"alien-artifact-yellow", 5})
  bobmods.lib.recipe.add_new_ingredient("vehicle-battery-5", {"alien-artifact-yellow", 5})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-reactor-5", {"alien-artifact-yellow", 15})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-cell-5", {"alien-artifact-yellow", 8})
  bobmods.lib.recipe.add_new_ingredient("vehicle-big-turret-5", {"alien-artifact-yellow", 15})

  bobmods.lib.recipe.add_new_ingredient("vehicle-shield-5", {"alien-artifact-purple", 5})
  bobmods.lib.recipe.add_new_ingredient("vehicle-battery-5", {"alien-artifact-purple", 5})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-reactor-5", {"alien-artifact-purple", 15})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-cell-5", {"alien-artifact-purple", 8})
  bobmods.lib.recipe.add_new_ingredient("vehicle-big-turret-5", {"alien-artifact-purple", 15})
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient("vehicle-shield-5", {"alien-artifact", 10})
  bobmods.lib.recipe.add_new_ingredient("vehicle-battery-5", {"alien-artifact", 10})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-reactor-5", {"alien-artifact", 30})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-cell-5", {"alien-artifact", 15})
  bobmods.lib.recipe.add_new_ingredient("vehicle-big-turret-5", {"alien-artifact", 30})
else
  bobmods.lib.recipe.add_ingredient("vehicle-fusion-reactor-5", {"processing-unit", 50})
  bobmods.lib.recipe.add_ingredient("vehicle-fusion-cell-5", {"processing-unit", 25})
end


if data.raw.item["alien-artifact-red"] and data.raw.item["alien-artifact-green"] then
  bobmods.lib.recipe.add_new_ingredient("vehicle-shield-6", {"alien-artifact-red", 5})
  bobmods.lib.recipe.add_new_ingredient("vehicle-battery-6", {"alien-artifact-red", 5})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-reactor-6", {"alien-artifact-red", 15})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-cell-6", {"alien-artifact-red", 8})
  bobmods.lib.recipe.add_new_ingredient("vehicle-big-turret-6", {"alien-artifact-red", 15})

  bobmods.lib.recipe.add_new_ingredient("vehicle-shield-6", {"alien-artifact-green", 5})
  bobmods.lib.recipe.add_new_ingredient("vehicle-battery-6", {"alien-artifact-green", 5})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-reactor-6", {"alien-artifact-green", 15})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-cell-6", {"alien-artifact-green", 8})
  bobmods.lib.recipe.add_new_ingredient("vehicle-big-turret-6", {"alien-artifact-green", 15})
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient("vehicle-shield-6", {"alien-artifact", 10})
  bobmods.lib.recipe.add_new_ingredient("vehicle-battery-6", {"alien-artifact", 10})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-reactor-6", {"alien-artifact", 30})
  bobmods.lib.recipe.add_new_ingredient("vehicle-fusion-cell-6", {"alien-artifact", 15})
  bobmods.lib.recipe.add_new_ingredient("vehicle-big-turret-6", {"alien-artifact", 30})
else
  bobmods.lib.recipe.add_ingredient("vehicle-fusion-reactor-6", {"processing-unit", 50})
  bobmods.lib.recipe.add_ingredient("vehicle-fusion-cell-6", {"processing-unit", 25})
end


