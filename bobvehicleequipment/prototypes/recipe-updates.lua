local combined_roboports = true
if mods["boblogistics"] and settings.startup["bobmods-logistics-disableroboports"].value == true then
  combined_roboports = false
end

if
  data.raw.item["bob-roboport-antenna-1"]
  and data.raw.item["bob-roboport-chargepad-1"]
  and data.raw.item["bob-roboport-door-1"]
then
  if combined_roboports == true then
    data.raw.recipe["bob-vehicle-roboport-equipment-1"].ingredients = {
      { type = "item", name = "bob-roboport-antenna-1", amount = 4 },
      { type = "item", name = "bob-roboport-chargepad-1", amount = 4 },
      { type = "item", name = "bob-roboport-door-1", amount = 1 },
      { type = "item", name = "steel-plate", amount = 10 },
    }
  end

  data.raw.recipe["bob-vehicle-roboport-antenna-equipment"].ingredients = {
    { type = "item", name = "bob-roboport-antenna-1", amount = 4 },
    { type = "item", name = "bob-roboport-door-1", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["bob-vehicle-roboport-chargepad-equipment"].ingredients = {
    { type = "item", name = "bob-roboport-chargepad-1", amount = 4 },
    { type = "item", name = "steel-plate", amount = 4 },
  }
else
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-roboport-equipment-1", "battery")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-roboport-equipment-1",
    { type = "item", name = "battery", amount = 40 }
  )
end

if
  data.raw.item["bob-roboport-antenna-2"]
  and data.raw.item["bob-roboport-chargepad-2"]
  and data.raw.item["bob-roboport-door-2"]
then
  if combined_roboports == true then
    data.raw.recipe["bob-vehicle-roboport-equipment-2"].ingredients = {
      { type = "item", name = "bob-vehicle-roboport-equipment-1", amount = 1 },
      { type = "item", name = "bob-roboport-antenna-2", amount = 4 },
      { type = "item", name = "bob-roboport-chargepad-2", amount = 8 },
      { type = "item", name = "bob-roboport-door-2", amount = 1 },
      { type = "item", name = "steel-plate", amount = 10 },
    }
  end

  data.raw.recipe["bob-vehicle-roboport-antenna-equipment-2"].ingredients = {
    { type = "item", name = "bob-vehicle-roboport-antenna-equipment", amount = 1 },
    { type = "item", name = "bob-roboport-antenna-2", amount = 4 },
    { type = "item", name = "bob-roboport-door-2", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["bob-vehicle-roboport-chargepad-equipment-2"].ingredients = {
    { type = "item", name = "bob-vehicle-roboport-chargepad-equipment", amount = 1 },
    { type = "item", name = "bob-roboport-chargepad-2", amount = 8 },
    { type = "item", name = "steel-plate", amount = 4 },
  }

  if mods["bobplates"] then
    if combined_roboports == true then
      bobmods.lib.tech.add_prerequisite("bob-vehicle-roboport-equipment-2", "bob-zinc-processing")
      bobmods.lib.tech.add_prerequisite("bob-vehicle-roboport-equipment-2", "bob-invar-processing")
    else
      bobmods.lib.tech.add_prerequisite("bob-vehicle-roboport-modular-equipment-2", "bob-zinc-processing")
      bobmods.lib.tech.add_prerequisite("bob-vehicle-roboport-modular-equipment-2", "bob-invar-processing")
    end
  end
else
  data.raw.recipe["bob-vehicle-roboport-equipment-2"].ingredients = {
    { type = "item", name = "bob-vehicle-roboport-equipment-1", amount = 1 },
    { type = "item", name = "advanced-circuit", amount = 40 },
    { type = "item", name = "iron-gear-wheel", amount = 80 },
    { type = "item", name = "steel-plate", amount = 40 },
    { type = "item", name = "battery", amount = 40 },
  }

  if mods["bobplates"] then
    if combined_roboports == true then
      bobmods.lib.recipe.add_ingredient(
        "bob-vehicle-roboport-equipment-2",
        { type = "item", name = "bob-steel-bearing", amount = 10 }
      )
      bobmods.lib.recipe.replace_ingredient(
        "bob-vehicle-roboport-equipment-2",
        "iron-gear-wheel",
        "bob-steel-gear-wheel"
      )
    end
    bobmods.lib.recipe.replace_ingredient(
      "bob-vehicle-roboport-antenna-equipment-2",
      "steel-plate",
      "bob-aluminium-plate"
    )
    bobmods.lib.recipe.replace_ingredient(
      "bob-vehicle-roboport-chargepad-equipment-2",
      "steel-plate",
      "bob-invar-alloy"
    )
    bobmods.lib.tech.add_prerequisite("bob-vehicle-roboport-modular-equipment-2", "bob-invar-processing")
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-roboport-antenna-equipment-2",
      { type = "item", name = "bob-steel-bearing", amount = 10 }
    )
    bobmods.lib.recipe.replace_ingredient(
      "bob-vehicle-roboport-antenna-equipment-2",
      "iron-gear-wheel",
      "bob-steel-gear-wheel"
    )
  end
end

if mods["bobplates"] then
  if combined_roboports == true then
    bobmods.lib.recipe.replace_ingredient("bob-vehicle-roboport-equipment-2", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("bob-vehicle-roboport-equipment-2", "bob-aluminium-processing")
  else
    bobmods.lib.tech.add_prerequisite("bob-vehicle-roboport-modular-equipment-2", "bob-aluminium-processing")
  end
  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-roboport-antenna-equipment-2",
    "steel-plate",
    "bob-aluminium-plate"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-roboport-chargepad-equipment-2",
    "steel-plate",
    "bob-aluminium-plate"
  )
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-solar-panel-equipment-2", "steel-plate")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-solar-panel-equipment-2",
    { type = "item", name = "bob-aluminium-plate", amount = 16 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-solar-panel-equipment-2", "bob-aluminium-processing")
end

if data.raw.item["bob-tinned-copper-cable"] then
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-solar-panel-equipment-2", "copper-cable")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-solar-panel-equipment-2",
    { type = "item", name = "bob-tinned-copper-cable", amount = 32 }
  )
end

if
  data.raw.item["bob-roboport-antenna-3"]
  and data.raw.item["bob-roboport-chargepad-3"]
  and data.raw.item["bob-roboport-door-3"]
then
  if combined_roboports == true then
    data.raw.recipe["bob-vehicle-roboport-equipment-3"].ingredients = {
      { type = "item", name = "bob-vehicle-roboport-equipment-2", amount = 1 },
      { type = "item", name = "bob-roboport-antenna-3", amount = 4 },
      { type = "item", name = "bob-roboport-chargepad-3", amount = 12 },
      { type = "item", name = "bob-roboport-door-3", amount = 1 },
      { type = "item", name = "steel-plate", amount = 10 },
    }
  end

  data.raw.recipe["bob-vehicle-roboport-antenna-equipment-3"].ingredients = {
    { type = "item", name = "bob-vehicle-roboport-antenna-equipment-2", amount = 1 },
    { type = "item", name = "bob-roboport-antenna-3", amount = 4 },
    { type = "item", name = "bob-roboport-door-3", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["bob-vehicle-roboport-chargepad-equipment-3"].ingredients = {
    { type = "item", name = "bob-vehicle-roboport-chargepad-equipment-2", amount = 1 },
    { type = "item", name = "bob-roboport-chargepad-3", amount = 12 },
    { type = "item", name = "steel-plate", amount = 4 },
  }
else
  if mods["bobplates"] then
    if combined_roboports == true then
      bobmods.lib.recipe.replace_ingredient("bob-vehicle-roboport-equipment-3", "battery", "bob-lithium-ion-battery")
      bobmods.lib.recipe.add_ingredient(
        "bob-vehicle-roboport-equipment-3",
        { type = "item", name = "bob-titanium-bearing", amount = 10 }
      )
      bobmods.lib.recipe.replace_ingredient(
        "bob-vehicle-roboport-equipment-3",
        "iron-gear-wheel",
        "bob-titanium-gear-wheel"
      )
    end
    bobmods.lib.recipe.replace_ingredient(
      "bob-vehicle-roboport-chargepad-equipment-3",
      "battery",
      "bob-lithium-ion-battery"
    )
    bobmods.lib.recipe.replace_ingredient(
      "bob-vehicle-roboport-antenna-equipment-3",
      "steel-plate",
      "bob-titanium-plate"
    )
    bobmods.lib.recipe.replace_ingredient(
      "bob-vehicle-roboport-chargepad-equipment-3",
      "steel-plate",
      "bob-titanium-plate"
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-roboport-antenna-equipment-3",
      { type = "item", name = "bob-titanium-bearing", amount = 10 }
    )
    bobmods.lib.recipe.replace_ingredient(
      "bob-vehicle-roboport-antenna-equipment-3",
      "iron-gear-wheel",
      "bob-titanium-gear-wheel"
    )
  end
end

if mods["bobplates"] then
  if combined_roboports == true then
    bobmods.lib.tech.add_prerequisite("bob-vehicle-roboport-equipment-3", "bob-battery-2")
    bobmods.lib.recipe.replace_ingredient("bob-vehicle-roboport-equipment-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-vehicle-roboport-equipment-3", "bob-titanium-processing")
  else
    bobmods.lib.tech.add_prerequisite("bob-vehicle-roboport-modular-equipment-3", "bob-battery-2")
    bobmods.lib.tech.add_prerequisite("bob-vehicle-roboport-modular-equipment-3", "bob-titanium-processing")
  end
  bobmods.lib.recipe.replace_ingredient("bob-vehicle-roboport-antenna-equipment-3", "steel-plate", "bob-titanium-plate")
  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-roboport-chargepad-equipment-3",
    "steel-plate",
    "bob-titanium-plate"
  )
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-solar-panel-equipment-3", "steel-plate")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-solar-panel-equipment-3",
    { type = "item", name = "bob-titanium-plate", amount = 16 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-solar-panel-equipment-3", "bob-titanium-processing")
end

if
  data.raw.item["bob-roboport-antenna-4"]
  and data.raw.item["bob-roboport-chargepad-4"]
  and data.raw.item["bob-roboport-door-4"]
then
  if combined_roboports == true then
    data.raw.recipe["bob-vehicle-roboport-equipment-4"].ingredients = {
      { type = "item", name = "bob-vehicle-roboport-equipment-3", amount = 1 },
      { type = "item", name = "bob-roboport-antenna-4", amount = 4 },
      { type = "item", name = "bob-roboport-chargepad-4", amount = 16 },
      { type = "item", name = "bob-roboport-door-4", amount = 1 },
      { type = "item", name = "steel-plate", amount = 10 },
    }
  end

  data.raw.recipe["bob-vehicle-roboport-antenna-equipment-4"].ingredients = {
    { type = "item", name = "bob-vehicle-roboport-antenna-equipment-3", amount = 1 },
    { type = "item", name = "bob-roboport-antenna-4", amount = 4 },
    { type = "item", name = "bob-roboport-door-4", amount = 1 },
    { type = "item", name = "steel-plate", amount = 5 },
  }

  data.raw.recipe["bob-vehicle-roboport-chargepad-equipment-4"].ingredients = {
    { type = "item", name = "bob-vehicle-roboport-chargepad-equipment-3", amount = 1 },
    { type = "item", name = "bob-roboport-chargepad-4", amount = 16 },
    { type = "item", name = "steel-plate", amount = 4 },
  }
else
  if data.raw.item["bob-advanced-processing-unit"] then
    if combined_roboports == true then
      bobmods.lib.recipe.replace_ingredient(
        "bob-vehicle-roboport-equipment-4",
        "processing-unit",
        "bob-advanced-processing-unit"
      )
    end
    bobmods.lib.recipe.replace_ingredient(
      "bob-vehicle-roboport-antenna-equipment-4",
      "processing-unit",
      "bob-advanced-processing-unit"
    )
    bobmods.lib.recipe.replace_ingredient(
      "bob-vehicle-roboport-chargepad-equipment-4",
      "processing-unit",
      "bob-advanced-processing-unit"
    )
  end

  if mods["bobplates"] then
    if combined_roboports == true then
      bobmods.lib.recipe.replace_ingredient("bob-vehicle-roboport-equipment-4", "battery", "bob-silver-zinc-battery")
      bobmods.lib.recipe.add_ingredient(
        "bob-vehicle-roboport-equipment-4",
        { type = "item", name = "bob-nitinol-bearing", amount = 5 }
      )
      bobmods.lib.recipe.replace_ingredient(
        "bob-vehicle-roboport-equipment-4",
        "iron-gear-wheel",
        "bob-nitinol-gear-wheel"
      )
    end
    bobmods.lib.recipe.replace_ingredient(
      "bob-vehicle-roboport-chargepad-equipment-4",
      "battery",
      "bob-silver-zinc-battery"
    )
    bobmods.lib.recipe.replace_ingredient(
      "bob-vehicle-roboport-antenna-equipment-4",
      "steel-plate",
      "bob-nitinol-alloy"
    )
    bobmods.lib.recipe.replace_ingredient(
      "bob-vehicle-roboport-chargepad-equipment-4",
      "steel-plate",
      "bob-nitinol-alloy"
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-roboport-antenna-equipment-4",
      { type = "item", name = "bob-nitinol-bearing", amount = 5 }
    )
    bobmods.lib.recipe.replace_ingredient(
      "bob-vehicle-roboport-antenna-equipment-4",
      "iron-gear-wheel",
      "bob-nitinol-gear-wheel"
    )
  end
end

if mods["bobplates"] then
  if combined_roboports == true then
    bobmods.lib.tech.add_prerequisite("bob-vehicle-roboport-equipment-4", "bob-battery-3")
    bobmods.lib.recipe.replace_ingredient("bob-vehicle-roboport-equipment-4", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-vehicle-roboport-equipment-4", "bob-nitinol-processing")
  else
    bobmods.lib.tech.add_prerequisite("bob-vehicle-roboport-modular-equipment-4", "bob-battery-3")
    bobmods.lib.tech.add_prerequisite("bob-vehicle-roboport-modular-equipment-4", "bob-nitinol-processing")
  end
  bobmods.lib.recipe.replace_ingredient("bob-vehicle-roboport-antenna-equipment-4", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-roboport-chargepad-equipment-4",
    "steel-plate",
    "bob-nitinol-alloy"
  )
end

if data.raw.item["bob-advanced-processing-unit"] then
  if combined_roboports == true then
    bobmods.lib.tech.add_prerequisite("bob-vehicle-roboport-equipment-4", "bob-advanced-processing-unit")
  else
    bobmods.lib.tech.add_prerequisite("bob-vehicle-roboport-modular-equipment-4", "bob-advanced-processing-unit")
  end
  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-roboport-robot-equipment-4",
    "processing-unit",
    "bob-advanced-processing-unit"
  )
end

if data.raw.item["bob-solder"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-roboport-robot-equipment",
    { type = "item", name = "bob-solder", amount = 2 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-roboport-robot-equipment-2",
    { type = "item", name = "bob-solder", amount = 3 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-roboport-robot-equipment-3",
    { type = "item", name = "bob-solder", amount = 4 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-roboport-robot-equipment-4",
    { type = "item", name = "bob-solder", amount = 6 }
  )
end

if data.raw.item["bob-module-case"] then
  bobmods.lib.tech.add_recipe_unlock("robotics", "bob-module-case")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-roboport-robot-equipment",
    { type = "item", name = "bob-module-case", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-roboport-robot-equipment-2",
    { type = "item", name = "bob-module-case", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-roboport-robot-equipment-3",
    { type = "item", name = "bob-module-case", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-roboport-robot-equipment-4",
    { type = "item", name = "bob-module-case", amount = 1 }
  )
end

if data.raw.item["bob-glass"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-solar-panel-equipment-1",
    { type = "item", name = "bob-glass", amount = 16 }
  )
end

if data.raw.item["bob-silver-plate"] then
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-solar-panel-equipment-2", "copper-plate")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-solar-panel-equipment-2",
    { type = "item", name = "bob-silver-plate", amount = 16 }
  )
end

if data.raw.item["bob-invar-alloy"] then
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-laser-defense-equipment-3", "steel-plate")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-laser-defense-equipment-3",
    { type = "item", name = "bob-invar-alloy", amount = 10 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-laser-defense-equipment-3", "bob-invar-processing")

  if data.raw.item["bob-cobalt-steel-alloy"] then
    bobmods.lib.recipe.remove_ingredient("bob-vehicle-big-turret-equipment-1", "steel-plate")
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-big-turret-equipment-1",
      { type = "item", name = "bob-cobalt-steel-alloy", amount = 50 }
    )
    bobmods.lib.tech.add_prerequisite("bob-vehicle-big-turret-equipment-1", "bob-cobalt-processing")
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-big-turret-equipment-1",
      { type = "item", name = "bob-invar-alloy", amount = 50 }
    )
  else
    bobmods.lib.recipe.replace_ingredient("bob-vehicle-big-turret-equipment-1", "steel-plate", "bob-invar-alloy")
  end
  bobmods.lib.tech.add_prerequisite("bob-vehicle-big-turret-equipment-1", "bob-invar-processing")
end

if mods["bobplates"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-big-turret-equipment-1",
    { type = "fluid", name = "bob-nitrogen", amount = 100 }
  )
  data.raw.recipe["bob-vehicle-big-turret-equipment-1"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-vehicle-big-turret-equipment-1", "bob-nitrogen-processing")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-big-turret-equipment-2",
    { type = "fluid", name = "bob-hydrogen", amount = 50 }
  )
  data.raw.recipe["bob-vehicle-big-turret-equipment-2"].category = "crafting-with-fluid"
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-big-turret-equipment-3",
    { type = "fluid", name = "bob-deuterium", amount = 20 }
  )
  data.raw.recipe["bob-vehicle-big-turret-equipment-3"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-vehicle-big-turret-equipment-3", "bob-deuterium-processing")
end

if data.raw.item["bob-aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-vehicle-solar-panel-equipment-3", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-solar-panel-equipment-3", "bob-aluminium-processing")
end

if data.raw.item["bob-gold-plate"] then
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-solar-panel-equipment-3", "copper-plate")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-solar-panel-equipment-3",
    { type = "item", name = "bob-gold-plate", amount = 16 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-solar-panel-equipment-3", "bob-gold-processing")
end

if data.raw.item["bob-gilded-copper-cable"] then
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-solar-panel-equipment-3", "copper-cable")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-solar-panel-equipment-3",
    { type = "item", name = "bob-gilded-copper-cable", amount = 32 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-solar-panel-equipment-3", "bob-advanced-processing-unit")
end

if data.raw.item["bob-lithium-ion-battery"] then
  bobmods.lib.recipe.replace_ingredient("bob-vehicle-battery-equipment-3", "battery", "bob-lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-battery-equipment-3", "bob-battery-2")

  bobmods.lib.recipe.remove_ingredient("bob-vehicle-laser-defense-equipment-3", "battery")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-laser-defense-equipment-3",
    { type = "item", name = "bob-lithium-ion-battery", amount = 6 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-laser-defense-equipment-3", "bob-battery-2")

  bobmods.lib.recipe.replace_ingredient("bob-vehicle-big-turret-equipment-2", "battery", "bob-lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-big-turret-equipment-2", "bob-battery-2")
end

if data.raw.item["bob-silicon-wafer"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-solar-panel-equipment-1",
    { type = "item", name = "bob-silicon-wafer", amount = 64 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-solar-panel-equipment-2",
    { type = "item", name = "bob-silicon-wafer", amount = 48 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-solar-panel-equipment-3",
    { type = "item", name = "bob-silicon-wafer", amount = 32 }
  )
elseif data.raw.item["bob-silicon-plate"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-solar-panel-equipment-1",
    { type = "item", name = "bob-silicon-plate", amount = 12 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-solar-panel-equipment-2",
    { type = "item", name = "bob-silicon-plate", amount = 8 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-solar-panel-equipment-3",
    { type = "item", name = "bob-silicon-plate", amount = 4 }
  )
end

if data.raw.item["bob-advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-shield-equipment-4",
    "processing-unit",
    "bob-advanced-processing-unit"
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-shield-equipment-4", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-shield-equipment-5",
    "processing-unit",
    "bob-advanced-processing-unit"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-shield-equipment-6",
    "processing-unit",
    "bob-advanced-processing-unit"
  )

  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-battery-equipment-4",
    "processing-unit",
    "bob-advanced-processing-unit"
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-battery-equipment-4", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-battery-equipment-6",
    "processing-unit",
    "bob-advanced-processing-unit"
  )

  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-4", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-fission-reactor-equipment-4",
    "processing-unit",
    "bob-advanced-processing-unit"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-fission-reactor-equipment-5",
    "processing-unit",
    "bob-advanced-processing-unit"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-fission-reactor-equipment-6",
    "processing-unit",
    "bob-advanced-processing-unit"
  )

  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-4", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-fission-cell-equipment-4",
    "processing-unit",
    "bob-advanced-processing-unit"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-fission-cell-equipment-5",
    "processing-unit",
    "bob-advanced-processing-unit"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-fission-cell-equipment-6",
    "processing-unit",
    "bob-advanced-processing-unit"
  )

  if data.raw.recipe["bob-vehicle-solar-panel-equipment-4"] then
    bobmods.lib.recipe.replace_ingredient(
      "bob-vehicle-solar-panel-equipment-4",
      "processing-unit",
      "bob-advanced-processing-unit"
    )
    bobmods.lib.tech.add_prerequisite("bob-vehicle-solar-panel-equipment-4", "bob-advanced-processing-unit")
    if data.raw.recipe["bob-vehicle-solar-panel-equipment-5"] then
      bobmods.lib.recipe.replace_ingredient(
        "bob-vehicle-solar-panel-equipment-5",
        "processing-unit",
        "bob-advanced-processing-unit"
      )
    end
  end

  bobmods.lib.recipe.remove_ingredient("bob-vehicle-laser-defense-equipment-6", "processing-unit")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-laser-defense-equipment-6",
    { type = "item", name = "bob-advanced-processing-unit", amount = 10 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-laser-defense-equipment-6", "bob-advanced-processing-unit")

  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-big-turret-equipment-3",
    "processing-unit",
    "bob-advanced-processing-unit"
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-big-turret-equipment-3", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-big-turret-equipment-4",
    "processing-unit",
    "bob-advanced-processing-unit"
  )

  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-engine-equipment",
    "processing-unit",
    "bob-advanced-processing-unit"
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-engine-equipment", "bob-advanced-processing-unit")
end

if data.raw.item["bob-titanium-plate"] then
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-laser-defense-equipment-4", "steel-plate")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-laser-defense-equipment-4",
    { type = "item", name = "bob-titanium-plate", amount = 10 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-laser-defense-equipment-4", "bob-titanium-processing")

  bobmods.lib.recipe.remove_ingredient("bob-vehicle-big-turret-equipment-2", "steel-plate")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-big-turret-equipment-2",
    { type = "item", name = "bob-titanium-plate", amount = 50 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-big-turret-equipment-2", "bob-titanium-processing")
end

if data.raw.item["bob-silver-zinc-battery"] then
  bobmods.lib.recipe.replace_ingredient("bob-vehicle-battery-equipment-5", "battery", "bob-silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-battery-equipment-5", "bob-battery-3")

  bobmods.lib.recipe.remove_ingredient("bob-vehicle-laser-defense-equipment-5", "battery")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-laser-defense-equipment-5",
    { type = "item", name = "bob-silver-zinc-battery", amount = 6 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-laser-defense-equipment-5", "bob-battery-3")
  bobmods.lib.recipe.replace_ingredient("bob-vehicle-big-turret-equipment-3", "battery", "bob-silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-big-turret-equipment-3", "bob-battery-3")
end

if data.raw.item["bob-nitinol-alloy"] then
  if data.raw.recipe["bob-vehicle-solar-panel-equipment-4"] then
    bobmods.lib.recipe.remove_ingredient("bob-vehicle-solar-panel-equipment-4", "steel-plate")
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-solar-panel-equipment-4",
      { type = "item", name = "bob-nitinol-alloy", amount = 16 }
    )
    bobmods.lib.tech.add_prerequisite("bob-vehicle-solar-panel-equipment-4", "bob-nitinol-processing")
  end

  bobmods.lib.recipe.remove_ingredient("bob-vehicle-laser-defense-equipment-5", "steel-plate")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-laser-defense-equipment-5",
    { type = "item", name = "bob-nitinol-alloy", amount = 10 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-laser-defense-equipment-5", "bob-nitinol-processing")

  bobmods.lib.tech.add_prerequisite("bob-vehicle-big-turret-equipment-3", "bob-nitinol-processing")
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-big-turret-equipment-3", "steel-plate")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-big-turret-equipment-3",
    { type = "item", name = "bob-nitinol-alloy", amount = 50 }
  )

  bobmods.lib.recipe.replace_ingredient("bob-vehicle-engine-equipment", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-engine-equipment", "bob-nitinol-processing")
end

if data.raw.item["bob-nitinol-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-vehicle-engine-equipment", "iron-gear-wheel", "bob-nitinol-gear-wheel")
end

if data.raw.item["bob-nitinol-bearing"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-engine-equipment",
    { type = "item", name = "bob-nitinol-bearing", amount = 30 }
  )
end

if data.raw.item["bob-copper-tungsten-alloy"] then
  bobmods.lib.tech.add_prerequisite("bob-vehicle-big-turret-equipment-3", "bob-tungsten-alloy-processing")
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-big-turret-equipment-3", "steel-plate")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-big-turret-equipment-3",
    { type = "item", name = "bob-copper-tungsten-alloy", amount = 50 }
  )
end

if data.raw.item["bob-lead-plate"] then
  if data.raw.recipe["bob-vehicle-solar-panel-equipment-4"] then
    bobmods.lib.recipe.replace_ingredient("bob-vehicle-solar-panel-equipment-4", "copper-plate", "bob-lead-plate")
  end
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-reactor-equipment-1",
    { type = "item", name = "bob-lead-plate", amount = 100 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-cell-equipment-1",
    { type = "item", name = "bob-lead-plate", amount = 60 }
  )
end

if data.raw.fluid["hydrogen-chloride"] then
  if data.raw.recipe["bob-vehicle-solar-panel-equipment-4"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-solar-panel-equipment-4",
      { type = "fluid", name = "hydrogen-chloride", amount = 240 }
    )
    data.raw.recipe["bob-vehicle-solar-panel-equipment-4"].category = "crafting-with-fluid"
  end
end

if data.raw.item["bob-carbon"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-reactor-equipment-1",
    { type = "item", name = "bob-carbon", amount = 40 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-cell-equipment-1",
    { type = "item", name = "bob-carbon", amount = 20 }
  )
end

if data.raw.fluid["bob-heavy-water"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-reactor-equipment-2",
    { type = "fluid", name = "bob-heavy-water", amount = 50 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-cell-equipment-2",
    { type = "fluid", name = "bob-heavy-water", amount = 25 }
  )
  data.raw.recipe["bob-vehicle-fission-reactor-equipment-2"].category = "crafting-with-fluid"
  data.raw.recipe["bob-vehicle-fission-cell-equipment-2"].category = "crafting-with-fluid"
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-2", "bob-heavy-water-processing")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-2", "bob-heavy-water-processing")
end

if data.raw.item["bob-tungsten-plate"] then
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-fission-reactor-equipment-3", "low-density-structure")
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-fission-cell-equipment-3", "low-density-structure")
  bobmods.lib.tech.remove_prerequisite("bob-vehicle-fission-reactor-equipment-3", "low-density-structure")
  bobmods.lib.tech.remove_prerequisite("bob-vehicle-fission-cell-equipment-3", "low-density-structure")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-reactor-equipment-3",
    { type = "item", name = "bob-tungsten-plate", amount = 250 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-cell-equipment-3",
    { type = "item", name = "bob-tungsten-plate", amount = 150 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-3", "bob-tungsten-processing")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-3", "bob-tungsten-processing")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-big-turret-equipment-2",
    { type = "item", name = "bob-tungsten-plate", amount = 50 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-big-turret-equipment-2", "bob-tungsten-processing")
end

if data.raw.item["bob-tungsten-carbide"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-reactor-equipment-4",
    { type = "item", name = "bob-tungsten-carbide", amount = 80 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-4", "bob-tungsten-alloy-processing")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-cell-equipment-4",
    { type = "item", name = "bob-tungsten-carbide", amount = 40 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-4", "bob-tungsten-alloy-processing")
end

if data.raw.item["bob-heat-shield-tile"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-big-turret-equipment-4",
    { type = "item", name = "bob-heat-shield-tile", amount = 10 }
  )
end

if data.raw.item["bob-lithium"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-reactor-equipment-4",
    { type = "item", name = "bob-lithium", amount = 40 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-cell-equipment-4",
    { type = "item", name = "bob-lithium", amount = 20 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-4", "bob-lithium-processing")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-4", "bob-lithium-processing")
end

if data.raw.module["bob-speed-module-5"] then
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-3",
    { type = "item", name = "efficiency-module-2", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-3",
    { type = "item", name = "speed-module-2", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-4",
    { type = "item", name = "efficiency-module-3", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-4",
    { type = "item", name = "speed-module-3", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-5",
    { type = "item", name = "bob-efficiency-module-4", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-5",
    { type = "item", name = "bob-speed-module-4", amount = 1 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-3", "efficiency-module-2")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-3", "speed-module-2")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-4", "efficiency-module-3")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-4", "speed-module-3")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-5", "bob-efficiency-module-4")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-5", "bob-speed-module-4")

  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-cell-equipment-3",
    { type = "item", name = "speed-module-2", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-cell-equipment-4",
    { type = "item", name = "speed-module-3", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-cell-equipment-5",
    { type = "item", name = "bob-speed-module-4", amount = 1 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-3", "speed-module-2")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-4", "speed-module-3")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-5", "bob-speed-module-4")

  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-6",
    { type = "item", name = "bob-speed-module-5", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-6",
    { type = "item", name = "bob-efficiency-module-5", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-6",
    { type = "item", name = "bob-productivity-module-5", amount = 1 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-6", "bob-speed-module-5")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-6", "bob-efficiency-module-5")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-6", "bob-productivity-module-5")
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-cell-equipment-6",
    { type = "item", name = "bob-speed-module-5", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-cell-equipment-6",
    { type = "item", name = "bob-productivity-module-5", amount = 1 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-6", "bob-speed-module-5")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-6", "bob-productivity-module-5")
  if data.raw.module["bob-quality-module-5"] then
    bobmods.lib.recipe.add_new_ingredient(
      "bob-vehicle-fission-reactor-equipment-6",
      { type = "item", name = "bob-quality-module-5", amount = 1 }
    )
    bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-6", "bob-quality-module-5")
    bobmods.lib.recipe.add_new_ingredient(
      "bob-vehicle-big-turret-equipment-4",
      { type = "item", name = "bob-quality-module-5", amount = 1 }
    )
    bobmods.lib.tech.add_prerequisite("bob-vehicle-big-turret-equipment-4", "bob-quality-module-5")
  end
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-big-turret-equipment-4", "efficiency-module-3")
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-big-turret-equipment-4",
    { type = "item", name = "bob-efficiency-module-5", amount = 1 }
  )
  bobmods.lib.tech.remove_prerequisite("bob-vehicle-big-turret-equipment-4", "efficiency-module-3")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-big-turret-equipment-4", "bob-efficiency-module-5")
else
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-3",
    { type = "item", name = "efficiency-module-2", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-3",
    { type = "item", name = "speed-module-2", amount = 1 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-3", "efficiency-module-2")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-3", "speed-module-2")
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-4",
    { type = "item", name = "efficiency-module-3", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-4",
    { type = "item", name = "speed-module-3", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-5",
    { type = "item", name = "productivity-module-3", amount = 2 }
  )
  if data.raw.module["quality-module-3"] then
    bobmods.lib.recipe.add_new_ingredient(
      "bob-vehicle-fission-reactor-equipment-5",
      { type = "item", name = "quality-module-3", amount = 2 }
    )
    bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-5", "quality-module-3")
    bobmods.lib.recipe.add_new_ingredient(
      "bob-vehicle-fission-reactor-equipment-6",
      { type = "item", name = "quality-module-3", amount = 2 }
    )

    bobmods.lib.recipe.add_new_ingredient(
      "bob-vehicle-fission-cell-equipment-5",
      { type = "item", name = "quality-module-3", amount = 1 }
    )
    bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-5", "quality-module-3")
    bobmods.lib.recipe.add_new_ingredient(
      "bob-vehicle-fission-cell-equipment-6",
      { type = "item", name = "quality-module-3", amount = 1 }
    )
    bobmods.lib.recipe.add_new_ingredient(
      "bob-vehicle-big-turret-equipment-4",
      { type = "item", name = "quality-module-3", amount = 1 }
    )
    bobmods.lib.tech.add_prerequisite("bob-vehicle-big-turret-equipment-4", "quality-module-3")
  end
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-4", "efficiency-module-3")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-4", "speed-module-3")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-5", "productivity-module-3")

  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-cell-equipment-3",
    { type = "item", name = "speed-module-2", amount = 1 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-3", "speed-module-2")
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-cell-equipment-4",
    { type = "item", name = "speed-module-3", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-cell-equipment-5",
    { type = "item", name = "productivity-module-3", amount = 1 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-4", "speed-module-3")
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-5", "productivity-module-3")

  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-6",
    { type = "item", name = "efficiency-module-3", amount = 2 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-cell-equipment-6",
    { type = "item", name = "efficiency-module-3", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-6",
    { type = "item", name = "speed-module-3", amount = 2 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-cell-equipment-6",
    { type = "item", name = "speed-module-3", amount = 1 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-6",
    { type = "item", name = "productivity-module-3", amount = 2 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-cell-equipment-6",
    { type = "item", name = "productivity-module-3", amount = 1 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-6", "productivity-module-3")
end

if data.raw.item["bob-ruby-5"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-laser-defense-equipment-1",
    { type = "item", name = "bob-ruby-5", amount = 1 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-laser-defense-equipment-1", "bob-gem-processing-3")
end

if data.raw.item["bob-sapphire-5"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-laser-defense-equipment-2",
    { type = "item", name = "bob-sapphire-5", amount = 1 }
  )
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-laser-defense-equipment-2", "battery")
end

if data.raw.item["bob-emerald-5"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-laser-defense-equipment-3",
    { type = "item", name = "bob-emerald-5", amount = 1 }
  )
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-laser-defense-equipment-3", "advanced-circuit")

  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-reactor-equipment-6",
    { type = "item", name = "bob-emerald-5", amount = 20 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-6", "bob-gem-processing-3")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-cell-equipment-6",
    { type = "item", name = "bob-emerald-5", amount = 10 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-6", "bob-gem-processing-3")
end

if data.raw.item["bob-amethyst-5"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-laser-defense-equipment-4",
    { type = "item", name = "bob-amethyst-5", amount = 1 }
  )
end

if data.raw.item["bob-topaz-5"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-laser-defense-equipment-5",
    { type = "item", name = "bob-topaz-5", amount = 1 }
  )
end

if data.raw.item["bob-diamond-5"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-laser-defense-equipment-6",
    { type = "item", name = "bob-diamond-5", amount = 1 }
  )

  if data.raw.recipe["bob-vehicle-solar-panel-equipment-5"] then
    bobmods.lib.tech.add_prerequisite("bob-vehicle-solar-panel-equipment-5", "bob-gem-processing-3")
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-solar-panel-equipment-5",
      { type = "item", name = "bob-diamond-5", amount = 4 }
    )
  end
end

if data.raw.module["bob-productivity-module-4"] then
  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-shield-equipment-5",
    "productivity-module-3",
    "bob-productivity-module-4"
  )
end

if data.raw.module["bob-productivity-module-5"] then
  bobmods.lib.recipe.replace_ingredient(
    "bob-vehicle-shield-equipment-6",
    "productivity-module-3",
    "bob-productivity-module-5"
  )
end

if data.raw.item["bob-alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-shield-equipment-3",
    { type = "item", name = "bob-alien-artifact", amount = 20 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-big-turret-equipment-1",
    { type = "item", name = "bob-alien-artifact", amount = 50 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-3",
    { type = "item", name = "bob-alien-artifact", amount = 50 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-cell-equipment-3",
    { type = "item", name = "bob-alien-artifact", amount = 25 }
  )

  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-laser-defense-equipment-5",
    { type = "item", name = "bob-alien-artifact", amount = 10 }
  )
end

if data.raw.item["bob-alien-artifact-orange"] and data.raw.item["bob-alien-artifact-blue"] then
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-shield-equipment-4",
    { type = "item", name = "bob-alien-artifact-orange", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-battery-equipment-4",
    { type = "item", name = "bob-alien-artifact-orange", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-big-turret-equipment-2",
    { type = "item", name = "bob-alien-artifact-orange", amount = 40 }
  )
  if data.raw.item["bob-alien-orange-alloy"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-laser-defense-equipment-6",
      { type = "item", name = "bob-alien-orange-alloy", amount = 30 }
    )
    bobmods.lib.tech.add_prerequisite("bob-vehicle-laser-defense-equipment-6", "bob-alien-orange-research")
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-big-turret-equipment-4",
      { type = "item", name = "bob-alien-orange-alloy", amount = 50 }
    )
    bobmods.lib.tech.add_prerequisite("bob-vehicle-big-turret-equipment-4", "bob-alien-orange-research")
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-laser-defense-equipment-6",
      { type = "item", name = "bob-alien-artifact-orange", amount = 10 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-big-turret-equipment-4",
      { type = "item", name = "bob-alien-artifact-orange", amount = 80 }
    )
  end

  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-shield-equipment-4",
    { type = "item", name = "bob-alien-artifact-blue", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-battery-equipment-4",
    { type = "item", name = "bob-alien-artifact-blue", amount = 5 }
  )
  if data.raw.item["bob-alien-blue-alloy"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-fission-reactor-equipment-5",
      { type = "item", name = "bob-alien-blue-alloy", amount = 80 }
    )
    bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-5", "bob-alien-blue-research")
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-fission-cell-equipment-5",
      { type = "item", name = "bob-alien-blue-alloy", amount = 40 }
    )
    bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-5", "bob-alien-blue-research")
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-laser-defense-equipment-6",
      { type = "item", name = "bob-alien-blue-alloy", amount = 30 }
    )
    bobmods.lib.tech.add_prerequisite("bob-vehicle-laser-defense-equipment-6", "bob-alien-blue-research")
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-fission-reactor-equipment-5",
      { type = "item", name = "bob-alien-artifact-blue", amount = 50 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-fission-cell-equipment-5",
      { type = "item", name = "bob-alien-artifact-blue", amount = 25 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-laser-defense-equipment-6",
      { type = "item", name = "bob-alien-artifact-blue", amount = 10 }
    )
  end
elseif data.raw.item["bob-alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-shield-equipment-4",
    { type = "item", name = "bob-alien-artifact", amount = 30 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-battery-equipment-4",
    { type = "item", name = "bob-alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-big-turret-equipment-2",
    { type = "item", name = "bob-alien-artifact", amount = 80 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-5",
    { type = "item", name = "bob-alien-artifact", amount = 80 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-cell-equipment-5",
    { type = "item", name = "bob-alien-artifact", amount = 40 }
  )
end

if data.raw.item["bob-alien-artifact-yellow"] and data.raw.item["bob-alien-artifact-purple"] then
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-shield-equipment-5",
    { type = "item", name = "bob-alien-artifact-yellow", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-battery-equipment-5",
    { type = "item", name = "bob-alien-artifact-yellow", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-4",
    { type = "item", name = "bob-alien-artifact-yellow", amount = 50 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-cell-equipment-4",
    { type = "item", name = "bob-alien-artifact-yellow", amount = 25 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-big-turret-equipment-3",
    { type = "item", name = "bob-alien-artifact-yellow", amount = 40 }
  )
  if data.raw.fluid["bob-alien-explosive"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-big-turret-equipment-4",
      { type = "fluid", name = "bob-alien-explosive", amount = 500 }
    )
    data.raw.recipe["bob-vehicle-big-turret-equipment-4"].category = "crafting-with-fluid"
    bobmods.lib.tech.add_prerequisite("bob-vehicle-big-turret-equipment-4", "bob-alien-yellow-research")
  else
    bobmods.lib.recipe.add_new_ingredient(
      "bob-vehicle-big-turret-equipment-4",
      { type = "item", name = "bob-alien-artifact-yellow", amount = 120 }
    )
  end

  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-shield-equipment-5",
    { type = "item", name = "bob-alien-artifact-purple", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-battery-equipment-5",
    { type = "item", name = "bob-alien-artifact-purple", amount = 5 }
  )
elseif data.raw.item["bob-alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-shield-equipment-5",
    { type = "item", name = "bob-alien-artifact", amount = 40 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-battery-equipment-5",
    { type = "item", name = "bob-alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-4",
    { type = "item", name = "bob-alien-artifact", amount = 60 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-cell-equipment-4",
    { type = "item", name = "bob-alien-artifact", amount = 30 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-big-turret-equipment-3",
    { type = "item", name = "bob-alien-artifact", amount = 120 }
  )
end

if data.raw.item["bob-alien-artifact-red"] and data.raw.item["bob-alien-artifact-green"] then
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-shield-equipment-6",
    { type = "item", name = "bob-alien-artifact-red", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-battery-equipment-6",
    { type = "item", name = "bob-alien-artifact-red", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-big-turret-equipment-3",
    { type = "item", name = "bob-alien-artifact-red", amount = 40 }
  )
  if data.raw.fluid["bob-alien-fire"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-fission-reactor-equipment-5",
      { type = "fluid", name = "bob-alien-fire", amount = 400 }
    )
    data.raw.recipe["bob-vehicle-fission-reactor-equipment-5"].category = "crafting-with-fluid"
    bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-5", "bob-alien-red-research")

    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-fission-cell-equipment-5",
      { type = "fluid", name = "bob-alien-fire", amount = 200 }
    )
    data.raw.recipe["bob-vehicle-fission-cell-equipment-5"].category = "crafting-with-fluid"
    bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-5", "bob-alien-red-research")
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-fission-reactor-equipment-5",
      { type = "item", name = "bob-alien-artifact-red", amount = 50 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-fission-cell-equipment-5",
      { type = "item", name = "bob-alien-artifact-red", amount = 25 }
    )
  end

  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-shield-equipment-6",
    { type = "item", name = "bob-alien-artifact-green", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-battery-equipment-6",
    { type = "item", name = "bob-alien-artifact-green", amount = 5 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-4",
    { type = "item", name = "bob-alien-artifact-green", amount = 50 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-cell-equipment-4",
    { type = "item", name = "bob-alien-artifact-green", amount = 25 }
  )
  if data.raw.fluid["bob-alien-poison"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-laser-defense-equipment-6",
      { type = "fluid", name = "bob-alien-poison", amount = 240 }
    )
    data.raw.recipe["bob-vehicle-laser-defense-equipment-6"].category = "crafting-with-fluid"
    bobmods.lib.tech.add_prerequisite("bob-vehicle-laser-defense-equipment-6", "bob-alien-green-research")
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-laser-defense-equipment-6",
      { type = "item", name = "bob-alien-artifact-green", amount = 20 }
    )
  end
elseif data.raw.item["bob-alien-artifact"] then
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-shield-equipment-6",
    { type = "item", name = "bob-alien-artifact", amount = 60 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-battery-equipment-6",
    { type = "item", name = "bob-alien-artifact", amount = 10 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-reactor-equipment-5",
    { type = "item", name = "bob-alien-artifact", amount = 80 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-fission-cell-equipment-5",
    { type = "item", name = "bob-alien-artifact", amount = 40 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-laser-defense-equipment-6",
    { type = "item", name = "bob-alien-artifact", amount = 40 }
  )
  bobmods.lib.recipe.add_new_ingredient(
    "bob-vehicle-big-turret-equipment-4",
    { type = "item", name = "bob-alien-artifact", amount = 150 }
  )
end

if data.raw.item["bob-thorium-fuel-cell"] then
  if data.raw.item["bob-plutonium-fuel-cell"] then
    bobmods.lib.recipe.remove_ingredient("bob-vehicle-fission-reactor-equipment-3", "uranium-fuel-cell")
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-fission-reactor-equipment-3",
      { type = "item", name = "bob-plutonium-fuel-cell", amount = 24 }
    )
    bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-3", "bob-plutonium-fuel-cell")

    bobmods.lib.recipe.remove_ingredient("bob-vehicle-fission-cell-equipment-3", "uranium-fuel-cell")
    bobmods.lib.recipe.add_ingredient(
      "bob-vehicle-fission-cell-equipment-3",
      { type = "item", name = "bob-plutonium-fuel-cell", amount = 12 }
    )
    bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-3", "bob-plutonium-fuel-cell")
  end
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-fission-reactor-equipment-4", "uranium-fuel-cell")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-reactor-equipment-4",
    { type = "item", name = "bob-thorium-fuel-cell", amount = 24 }
  )
  if mods["bobrevamp"] and mods["bobpower"] and settings.startup["bobmods-revamp-nuclear"].value == true then
    bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-4", "bob-nuclear-power-2")

    bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-4", "bob-nuclear-power-2")
  else
    bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-4", "bob-thorium-processing")

    bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-4", "bob-thorium-processing")
  end
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-fission-reactor-equipment-5", "uranium-fuel-cell")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-reactor-equipment-5",
    { type = "item", name = "bob-thorium-plutonium-fuel-cell", amount = 24 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-reactor-equipment-5", "bob-thorium-plutonium-fuel-cell")

  bobmods.lib.recipe.remove_ingredient("bob-vehicle-fission-cell-equipment-4", "uranium-fuel-cell")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-cell-equipment-4",
    { type = "item", name = "bob-thorium-fuel-cell", amount = 12 }
  )
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-fission-cell-equipment-5", "uranium-fuel-cell")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-cell-equipment-5",
    { type = "item", name = "bob-thorium-plutonium-fuel-cell", amount = 12 }
  )
  bobmods.lib.tech.add_prerequisite("bob-vehicle-fission-cell-equipment-5", "bob-thorium-plutonium-fuel-cell")

  bobmods.lib.recipe.remove_ingredient("bob-vehicle-fission-reactor-equipment-6", "uranium-fuel-cell")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-reactor-equipment-6",
    { type = "item", name = "bob-thorium-plutonium-fuel-cell", amount = 36 }
  )
  bobmods.lib.recipe.remove_ingredient("bob-vehicle-fission-cell-equipment-6", "uranium-fuel-cell")
  bobmods.lib.recipe.add_ingredient(
    "bob-vehicle-fission-cell-equipment-6",
    { type = "item", name = "bob-thorium-plutonium-fuel-cell", amount = 18 }
  )
end
