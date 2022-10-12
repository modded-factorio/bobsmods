if settings.startup["bobmods-logistics-roboportrecipeupdate"].value == true then
  if bobmods.lib.recipe.set_ingredients then
    bobmods.lib.recipe.set_ingredients("roboport", {
      {"steel-plate", 15},
      {"roboport-antenna-1", 5},
      {"roboport-chargepad-1", 4},
      {"roboport-door-1", 1}
    })
  else
    data.raw.recipe["roboport"].ingredients =
      {
        {"steel-plate", 15},
        {"roboport-antenna-1", 5},
        {"roboport-chargepad-1", 4},
        {"roboport-door-1", 1}
      }
  end
end

if data.raw.item["aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient(
    "roboport-antenna-2",
    "steel-plate",
    "aluminium-plate"
  )
  if data.raw.recipe["bob-roboport-2"] then
    bobmods.lib.recipe.replace_ingredient(
      "bob-roboport-2",
      "steel-plate",
      "aluminium-plate"
    )
  end
  bobmods.lib.recipe.replace_ingredient(
    "bob-robochest-2",
    "steel-plate",
    "aluminium-plate"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-logistic-zone-expander-2",
    "steel-plate",
    "aluminium-plate"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-robo-charge-port-2",
    "steel-plate",
    "aluminium-plate"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-robo-charge-port-large-2",
    "steel-plate",
    "aluminium-plate"
  )
  bobmods.lib.tech.add_prerequisite(
    "bob-robo-modular-2",
    "aluminium-processing"
  )
end

if data.raw.item["invar-alloy"] then
  bobmods.lib.recipe.replace_ingredient(
    "roboport-chargepad-2",
    "steel-plate",
    "invar-alloy"
  )
  bobmods.lib.recipe.replace_ingredient(
    "roboport-door-2",
    "steel-plate",
    "invar-alloy"
  )
  bobmods.lib.tech.add_prerequisite("bob-robo-modular-2", "invar-processing")
end

if data.raw.item["tinned-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient(
    "roboport-antenna-2",
    "copper-cable",
    "tinned-copper-cable"
  )
end

if data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("roboport-door-2", {"steel-bearing", 20})
else
  bobmods.lib.recipe.add_ingredient("roboport-door-2", {"iron-gear-wheel", 20})
end

if data.raw.item["brass-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient(
    "roboport-door-2",
    "iron-gear-wheel",
    "brass-gear-wheel"
  )
  bobmods.lib.tech.add_prerequisite("bob-robo-modular-2", "zinc-processing")
elseif data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient(
    "roboport-door-2",
    "iron-gear-wheel",
    "steel-gear-wheel"
  )
end

if data.raw.item["nickel-plate"] then
  bobmods.lib.recipe.replace_ingredient(
    "roboport-antenna-3",
    "steel-plate",
    "nickel-plate"
  )
  bobmods.lib.tech.add_prerequisite("bob-robo-modular-3", "nickel-processing")
end

if data.raw.item["insulated-cable"] then
  bobmods.lib.recipe.replace_ingredient(
    "roboport-antenna-3",
    "copper-cable",
    "insulated-cable"
  )
end

if data.raw.item["lithium-ion-battery"] then
  bobmods.lib.recipe.replace_ingredient(
    "roboport-chargepad-3",
    "battery",
    "lithium-ion-battery"
  )
  bobmods.lib.tech.add_prerequisite("bob-robo-modular-3", "battery-2")
end

if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient(
    "roboport-chargepad-3",
    "steel-plate",
    "titanium-plate"
  )
  bobmods.lib.recipe.replace_ingredient(
    "roboport-door-3",
    "steel-plate",
    "titanium-plate"
  )
  if data.raw.recipe["bob-roboport-3"] then
    bobmods.lib.recipe.replace_ingredient(
      "bob-roboport-3",
      "steel-plate",
      "titanium-plate"
    )
  end
  bobmods.lib.recipe.replace_ingredient(
    "bob-robochest-3",
    "steel-plate",
    "titanium-plate"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-logistic-zone-expander-3",
    "steel-plate",
    "titanium-plate"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-robo-charge-port-3",
    "steel-plate",
    "titanium-plate"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-robo-charge-port-large-3",
    "steel-plate",
    "titanium-plate"
  )
  bobmods.lib.tech.add_prerequisite("bob-robo-modular-3", "titanium-processing")
end

if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("roboport-door-3", {"titanium-bearing", 20})
else
  bobmods.lib.recipe.add_ingredient("roboport-door-3", {"iron-gear-wheel", 20})
  bobmods.lib.recipe.add_ingredient("roboport-door-3", {
    type = "fluid",
    name = "lubricant",
    amount = 10
  })
  data.raw.recipe["roboport-door-3"].category = "crafting-with-fluid"
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient(
    "roboport-door-3",
    "iron-gear-wheel",
    "titanium-gear-wheel"
  )
end

if data.raw.item["nickel-plate"] then
  bobmods.lib.recipe.replace_ingredient(
    "roboport-antenna-4",
    "steel-plate",
    "nickel-plate"
  )
end

if data.raw.item["gold-plate"] then
  bobmods.lib.recipe.replace_ingredient(
    "roboport-antenna-4",
    "copper-plate",
    "gold-plate"
  )
  bobmods.lib.tech.add_prerequisite("bob-robo-modular-4", "gold-processing")
end

if data.raw.item["gilded-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient(
    "roboport-antenna-4",
    "copper-cable",
    "gilded-copper-cable"
  )
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient(
    "roboport-antenna-4",
    "processing-unit",
    "advanced-processing-unit"
  )
  bobmods.lib.recipe.replace_ingredient(
    "roboport-chargepad-4",
    "processing-unit",
    "advanced-processing-unit"
  )
  bobmods.lib.tech.add_prerequisite(
    "bob-robo-modular-4",
    "advanced-electronics-3"
  )
end

if data.raw.item["silver-zinc-battery"] then
  bobmods.lib.recipe.replace_ingredient(
    "roboport-chargepad-4",
    "battery",
    "silver-zinc-battery"
  )
  bobmods.lib.tech.add_prerequisite("bob-robo-modular-4", "battery-3")
else
  if data.raw.item["lithium-ion-battery"] then
    bobmods.lib.recipe.replace_ingredient(
      "roboport-chargepad-4",
      "battery",
      "lithium-ion-battery"
    )
  end
end

if data.raw.item["nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient(
    "roboport-chargepad-4",
    "steel-plate",
    "nitinol-alloy"
  )
  bobmods.lib.recipe.replace_ingredient(
    "roboport-door-4",
    "steel-plate",
    "nitinol-alloy"
  )
  if data.raw.recipe["bob-roboport-4"] then
    bobmods.lib.recipe.replace_ingredient(
      "bob-roboport-4",
      "steel-plate",
      "nitinol-alloy"
    )
  end
  bobmods.lib.recipe.replace_ingredient(
    "bob-robochest-4",
    "steel-plate",
    "nitinol-alloy"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-logistic-zone-expander-4",
    "steel-plate",
    "nitinol-alloy"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-robo-charge-port-4",
    "steel-plate",
    "nitinol-alloy"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-robo-charge-port-large-4",
    "steel-plate",
    "nitinol-alloy"
  )
  bobmods.lib.tech.add_prerequisite("bob-robo-modular-4", "nitinol-processing")
end

if data.raw.item["nitinol-bearing"] then
  bobmods.lib.recipe.add_ingredient("roboport-door-4", {"nitinol-bearing", 20})
else
  bobmods.lib.recipe.add_ingredient("roboport-door-4", {"iron-gear-wheel", 30})
  bobmods.lib.recipe.add_ingredient("roboport-door-4", {
    type = "fluid",
    name = "lubricant",
    amount = 15
  })
  data.raw.recipe["roboport-door-4"].category = "crafting-with-fluid"
end

if data.raw.item["nitinol-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient(
    "roboport-door-4",
    "iron-gear-wheel",
    "nitinol-gear-wheel"
  )
end