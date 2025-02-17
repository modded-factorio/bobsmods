bobmods.lib.recipe.remove_ingredient("passive-provider-chest", "advanced-circuit")
bobmods.lib.recipe.remove_ingredient("storage-chest", "advanced-circuit")

if settings.startup["bobmods-logistics-robotrequireprevious"].value == true then
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-2", { type = "item", name = "logistic-robot", amount = 1 })
  bobmods.lib.recipe.add_ingredient(
    "bob-construction-robot-2",
    { type = "item", name = "construction-robot", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-logistic-robot-3",
    { type = "item", name = "bob-logistic-robot-2", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-construction-robot-3",
    { type = "item", name = "bob-construction-robot-2", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-logistic-robot-4",
    { type = "item", name = "bob-logistic-robot-3", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-construction-robot-4",
    { type = "item", name = "bob-construction-robot-3", amount = 1 }
  )
end

if data.raw.recipe["bob-robot-brain"] then
  if data.raw["recipe-category"]["bob-electronics"] then
    data.raw.recipe["bob-robot-brain"].category = "bob-electronics"
  end
  if data.raw.item["bob-basic-circuit-board"] then
    data.raw.recipe["bob-robot-brain"].ingredients = {
      { type = "item", name = "bob-basic-circuit-board", amount = 2 },
      { type = "item", name = "electronic-circuit", amount = 2 },
    }
  end
  if data.raw.item["bob-solder"] then
    bobmods.lib.recipe.add_ingredient("bob-robot-brain", { type = "item", name = "bob-solder", amount = 5 })
  end
end

if data.raw.recipe["bob-robot-brain-2"] then
  if data.raw["recipe-category"]["bob-electronics"] then
    data.raw.recipe["bob-robot-brain-2"].category = "bob-electronics"
  end
  if data.raw.item["bob-solder"] then
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-2", { type = "item", name = "bob-solder", amount = 5 })
  end
end

if data.raw.recipe["bob-robot-brain-3"] then
  if data.raw["recipe-category"]["bob-electronics"] then
    data.raw.recipe["bob-robot-brain-3"].category = "bob-electronics"
  end
  if data.raw.item["bob-solder"] then
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-3", { type = "item", name = "bob-solder", amount = 5 })
  end
end

if data.raw.recipe["bob-robot-brain-4"] then
  if data.raw["recipe-category"]["bob-electronics"] then
    data.raw.recipe["bob-robot-brain-4"].category = "bob-electronics"
  end
  if data.raw.item["bob-solder"] then
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-4", { type = "item", name = "bob-solder", amount = 5 })
  end
  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.set_ingredient("bob-robot-brain-4", { type = "item", name = "processing-unit", amount = 2 })
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-brain-4",
      { type = "item", name = "bob-advanced-processing-unit", amount = 2 }
    )
  end
end

if data.raw.item["bob-module-case"] then
  if data.raw.recipe["bob-robot-brain"] then
    bobmods.lib.tech.add_recipe_unlock("robotics", "bob-module-case")
    bobmods.lib.tech.add_prerequisite("robotics", "plastics")
    bobmods.lib.recipe.add_ingredient("bob-robot-brain", { type = "item", name = "bob-module-case", amount = 1 })
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-2", { type = "item", name = "bob-module-case", amount = 1 })
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-3", { type = "item", name = "bob-module-case", amount = 1 })
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-4", { type = "item", name = "bob-module-case", amount = 1 })
  end
end

if data.raw.recipe["bob-robot-tool-construction"] then
  bobmods.lib.recipe.add_ingredient("bob-robot-tool-construction", { type = "item", name = "steel-plate", amount = 2 })
  bobmods.lib.recipe.add_ingredient("bob-robot-tool-logistic", { type = "item", name = "steel-plate", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-robot-tool-construction", { type = "item", name = "copper-cable", amount = 6 })
  if data.raw.item["bob-steel-gear-wheel"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction",
      { type = "item", name = "bob-steel-gear-wheel", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-logistic",
      { type = "item", name = "bob-steel-gear-wheel", amount = 2 }
    )
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction",
      { type = "item", name = "iron-gear-wheel", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-logistic",
      { type = "item", name = "iron-gear-wheel", amount = 2 }
    )
  end
  if data.raw.item["bob-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-logistic",
      { type = "item", name = "bob-steel-bearing", amount = 1 }
    )
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction-2",
      { type = "item", name = "bob-aluminium-plate", amount = 2 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-logistic-2",
      { type = "item", name = "bob-aluminium-plate", amount = 1 }
    )
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction-2",
      { type = "item", name = "steel-plate", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-logistic-2", { type = "item", name = "steel-plate", amount = 1 })
  end
  if data.raw.item["bob-tinned-copper-cable"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction-2",
      { type = "item", name = "bob-tinned-copper-cable", amount = 6 }
    )
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction-2",
      { type = "item", name = "copper-cable", amount = 8 }
    )
  end
  if data.raw.item["bob-brass-gear-wheel"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction-2",
      { type = "item", name = "bob-brass-gear-wheel", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-logistic-2",
      { type = "item", name = "bob-brass-gear-wheel", amount = 2 }
    )
    bobmods.lib.tech.add_prerequisite("bob-robots-1", "bob-zinc-processing")
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction-2",
      { type = "item", name = "iron-gear-wheel", amount = 2 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-logistic-2",
      { type = "item", name = "iron-gear-wheel", amount = 3 }
    )
  end
  if data.raw.item["bob-cobalt-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-logistic-2",
      { type = "item", name = "bob-cobalt-steel-bearing", amount = 2 }
    )
    bobmods.lib.tech.add_prerequisite("bob-robots-1", "bob-cobalt-processing")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction-3",
      { type = "item", name = "bob-titanium-plate", amount = 2 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-logistic-3",
      { type = "item", name = "bob-titanium-plate", amount = 1 }
    )
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction-3",
      { type = "item", name = "steel-plate", amount = 2 }
    )
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-logistic-3", { type = "item", name = "steel-plate", amount = 2 })
  end
  if data.raw.item["bob-insulated-cable"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction-3",
      { type = "item", name = "bob-insulated-cable", amount = 6 }
    )
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction-3",
      { type = "item", name = "copper-cable", amount = 10 }
    )
  end
  if data.raw.item["bob-titanium-gear-wheel"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction-3",
      { type = "item", name = "bob-titanium-gear-wheel", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-logistic-3",
      { type = "item", name = "bob-titanium-gear-wheel", amount = 2 }
    )
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction-3",
      { type = "item", name = "iron-gear-wheel", amount = 3 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-logistic-3",
      { type = "item", name = "iron-gear-wheel", amount = 4 }
    )
  end
  if data.raw.item["bob-ceramic-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-logistic-3",
      { type = "item", name = "bob-ceramic-bearing", amount = 2 }
    )
    bobmods.lib.tech.add_prerequisite("bob-robots-2", "bob-ceramics")
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction-4",
      { type = "item", name = "bob-nitinol-alloy", amount = 2 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-logistic-4",
      { type = "item", name = "bob-nitinol-alloy", amount = 1 }
    )
    bobmods.lib.tech.add_prerequisite("bob-robots-3", "bob-nitinol-processing")
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction-4",
      { type = "item", name = "steel-plate", amount = 2 }
    )
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-logistic-4", { type = "item", name = "steel-plate", amount = 2 })
  end
  if data.raw.item["bob-gilded-copper-cable"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction-4",
      { type = "item", name = "bob-gilded-copper-cable", amount = 9 }
    )
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction-4",
      { type = "item", name = "copper-cable", amount = 15 }
    )
  end
  if data.raw.item["bob-nitinol-gear-wheel"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction-4",
      { type = "item", name = "bob-nitinol-gear-wheel", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-logistic-4",
      { type = "item", name = "bob-nitinol-gear-wheel", amount = 2 }
    )
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-construction-4",
      { type = "item", name = "iron-gear-wheel", amount = 4 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-logistic-4",
      { type = "item", name = "iron-gear-wheel", amount = 5 }
    )
  end
  if data.raw.item["bob-nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-logistic-4",
      { type = "item", name = "bob-nitinol-bearing", amount = 1 }
    )
  end
  if data.raw.item["bob-tungsten-carbide"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-robot-tool-logistic-4",
      { type = "item", name = "bob-tungsten-carbide", amount = 1 }
    )
    bobmods.lib.tech.add_prerequisite("bob-robots-3", "bob-tungsten-alloy-processing")
  end
end

if data.raw.item["bob-flying-robot-frame-2"] then
  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-flying-robot-frame-2", "steel-plate", "bob-aluminium-plate")
  end
  bobmods.lib.recipe.add_ingredient(
    "bob-logistic-robot-2",
    { type = "item", name = "bob-flying-robot-frame-2", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-construction-robot-2",
    { type = "item", name = "bob-flying-robot-frame-2", amount = 1 }
  )
else
  for i, robot in ipairs({ "bob-logistic-robot-2", "bob-construction-robot-2" }) do
    data.raw.recipe[robot].energy_required = 20

    if settings.startup["bobmods-logistics-robotrequireprevious"].value == false then
      bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "electric-engine-unit", amount = 1 })
      bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "battery", amount = 2 })
    end

    if data.raw.item["bob-aluminium-plate"] then
      bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "bob-aluminium-plate", amount = 1 })
    else
      bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "steel-plate", amount = 1 })
    end

    bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "advanced-circuit", amount = 3 })
  end
end

if data.raw.item["bob-flying-robot-frame-3"] then
  if data.raw.item["bob-lithium-ion-battery"] then
    bobmods.lib.recipe.replace_ingredient("bob-flying-robot-frame-3", "battery", "bob-lithium-ion-battery")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-flying-robot-frame-3", "steel-plate", "bob-titanium-plate")
  end

  bobmods.lib.recipe.add_ingredient(
    "bob-logistic-robot-3",
    { type = "item", name = "bob-flying-robot-frame-3", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-construction-robot-3",
    { type = "item", name = "bob-flying-robot-frame-3", amount = 1 }
  )
else
  for _, robot in pairs({ "bob-logistic-robot-3", "bob-construction-robot-3" }) do
    data.raw.recipe[robot].energy_required = 20

    if settings.startup["bobmods-logistics-robotrequireprevious"].value == false then
      bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "electric-engine-unit", amount = 1 })
    end

    if data.raw.item["bob-lithium-ion-battery"] then
      bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "bob-lithium-ion-battery", amount = 2 })
    else
      bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "battery", amount = 2 })
    end

    if data.raw.item["bob-titanium-plate"] then
      bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "bob-titanium-plate", amount = 1 })
    else
      bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "steel-plate", amount = 1 })
    end

    bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "processing-unit", amount = 3 })
  end
end

if data.raw.item["bob-flying-robot-frame-4"] then
  if data.raw.item["bob-silver-zinc-battery"] then
    bobmods.lib.recipe.replace_ingredient("bob-flying-robot-frame-4", "battery", "bob-silver-zinc-battery")
  else
    if data.raw.item["bob-lithium-ion-battery"] then
      bobmods.lib.recipe.replace_ingredient("bob-flying-robot-frame-4", "battery", "bob-lithium-ion-battery")
    end
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-flying-robot-frame-4", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-robotics-4", "bob-nitinol-processing")
  end

  bobmods.lib.recipe.add_ingredient(
    "bob-logistic-robot-4",
    { type = "item", name = "bob-flying-robot-frame-4", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-construction-robot-4",
    { type = "item", name = "bob-flying-robot-frame-4", amount = 1 }
  )
else
  for _, robot in pairs({ "bob-logistic-robot-4", "bob-construction-robot-4" }) do
    data.raw.recipe[robot].energy_required = 20
    if settings.startup["bobmods-logistics-robotrequireprevious"].value == false then
      bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "electric-engine-unit", amount = 1 })
    end

    if data.raw.item["bob-silver-zinc-battery"] then
      bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "bob-silver-zinc-battery", amount = 2 })
    else
      if data.raw.item["bob-lithium-ion-battery"] then
        bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "bob-lithium-ion-battery", amount = 2 })
      else
        bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "battery", amount = 2 })
      end
    end

    if data.raw.item["bob-silicon-nitride"] then
      bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "bob-silicon-nitride", amount = 1 })
    else
      bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "steel-plate", amount = 1 })
    end

    if data.raw.item["bob-advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "bob-advanced-processing-unit", amount = 3 })
    else
      bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "processing-unit", amount = 3 })
    end
  end
end

if data.raw.item["bob-robot-brain"] then
  bobmods.lib.recipe.set_ingredients("logistic-robot", {
    { type = "item", name = "flying-robot-frame", amount = 1 },
    { type = "item", name = "bob-robot-brain", amount = 1 },
    { type = "item", name = "bob-robot-tool-logistic", amount = 1 },
  })
  bobmods.lib.recipe.set_ingredients("construction-robot", {
    { type = "item", name = "flying-robot-frame", amount = 1 },
    { type = "item", name = "bob-robot-brain", amount = 1 },
    { type = "item", name = "bob-robot-tool-construction", amount = 1 },
  })

  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-2", { type = "item", name = "bob-robot-brain-2", amount = 1 })
  bobmods.lib.recipe.add_ingredient(
    "bob-logistic-robot-2",
    { type = "item", name = "bob-robot-tool-logistic-2", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-construction-robot-2",
    { type = "item", name = "bob-robot-brain-2", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-construction-robot-2",
    { type = "item", name = "bob-robot-tool-construction-2", amount = 1 }
  )

  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-3", { type = "item", name = "bob-robot-brain-3", amount = 1 })
  bobmods.lib.recipe.add_ingredient(
    "bob-logistic-robot-3",
    { type = "item", name = "bob-robot-tool-logistic-3", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-construction-robot-3",
    { type = "item", name = "bob-robot-brain-3", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-construction-robot-3",
    { type = "item", name = "bob-robot-tool-construction-3", amount = 1 }
  )

  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-4", { type = "item", name = "bob-robot-brain-4", amount = 1 })
  bobmods.lib.recipe.add_ingredient(
    "bob-logistic-robot-4",
    { type = "item", name = "bob-robot-tool-logistic-4", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-construction-robot-4",
    { type = "item", name = "bob-robot-brain-4", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-construction-robot-4",
    { type = "item", name = "bob-robot-tool-construction-4", amount = 1 }
  )
else
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-2", { type = "item", name = "advanced-circuit", amount = 1 })
  bobmods.lib.recipe.add_ingredient(
    "bob-construction-robot-2",
    { type = "item", name = "advanced-circuit", amount = 1 }
  )

  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-3", { type = "item", name = "processing-unit", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-3", { type = "item", name = "processing-unit", amount = 1 })

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-logistic-robot-4",
      { type = "item", name = "bob-advanced-processing-unit", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-construction-robot-4",
      { type = "item", name = "bob-advanced-processing-unit", amount = 1 }
    )
  else
    bobmods.lib.recipe.add_ingredient("bob-logistic-robot-4", { type = "item", name = "processing-unit", amount = 1 })
    bobmods.lib.recipe.add_ingredient(
      "bob-construction-robot-4",
      { type = "item", name = "processing-unit", amount = 1 }
    )
  end
end

for _, robot in pairs({ "bob-logistic-robot-5", "bob-construction-robot-5" }) do
  if data.raw.item["bob-rtg"] and data.raw.technology["bob-rtg"] then
    bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "bob-rtg", amount = 1 })
    bobmods.lib.tech.add_prerequisite("bob-robots-4", "bob-rtg")
  elseif
    data.raw.item["bob-vehicle-fission-cell-equipment-1"]
    and data.raw.technology["bob-vehicle-fission-cell-equipment-1"]
  then
    bobmods.lib.recipe.add_ingredient(
      robot,
      { type = "item", name = "bob-vehicle-fission-cell-equipment-1", amount = 1 }
    )
    bobmods.lib.tech.add_prerequisite("bob-robots-4", "bob-vehicle-fission-cell-equipment-1")
  else
    bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "fission-reactor-equipment", amount = 1 })
    bobmods.lib.tech.add_prerequisite("bob-robots-4", "fission-reactor-equipment")
  end
end

if settings.startup["bobmods-logistics-robotrequireprevious"].value == true then
  bobmods.lib.recipe.add_ingredient(
    "bob-logistic-robot-5",
    { type = "item", name = "bob-logistic-robot-4", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-construction-robot-5",
    { type = "item", name = "bob-construction-robot-4", amount = 1 }
  )
else
  if data.raw.item["bob-flying-robot-frame-4"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-logistic-robot-5",
      { type = "item", name = "bob-flying-robot-frame-4", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-construction-robot-5",
      { type = "item", name = "bob-flying-robot-frame-4", amount = 1 }
    )
  else
    for _, robot in pairs({ "bob-logistic-robot-5", "bob-construction-robot-5" }) do
      data.raw.recipe[robot].energy_required = 20
      bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "electric-engine-unit", amount = 1 })

      if data.raw.item["bob-silicon-nitride"] then
        bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "bob-silicon-nitride", amount = 1 })
      else
        bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "steel-plate", amount = 1 })
      end

      if data.raw.item["bob-advanced-processing-unit"] then
        bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "bob-advanced-processing-unit", amount = 3 })
      else
        bobmods.lib.recipe.add_ingredient(robot, { type = "item", name = "processing-unit", amount = 3 })
      end
    end
  end

  if data.raw.item["bob-robot-brain-4"] then
    bobmods.lib.recipe.add_ingredient("bob-logistic-robot-5", { type = "item", name = "bob-robot-brain-4", amount = 1 })
    bobmods.lib.recipe.add_ingredient(
      "bob-construction-robot-5",
      { type = "item", name = "bob-robot-brain-4", amount = 1 }
    )
  else
    if data.raw.item["bob-advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient(
        "bob-logistic-robot-5",
        { type = "item", name = "bob-advanced-processing-unit", amount = 1 }
      )
      bobmods.lib.recipe.add_ingredient(
        "bob-construction-robot-5",
        { type = "item", name = "bob-advanced-processing-unit", amount = 1 }
      )
    else
      bobmods.lib.recipe.add_ingredient("bob-logistic-robot-5", { type = "item", name = "processing-unit", amount = 1 })
      bobmods.lib.recipe.add_ingredient(
        "bob-construction-robot-5",
        { type = "item", name = "processing-unit", amount = 1 }
      )
    end
  end

  bobmods.lib.recipe.add_ingredient(
    "bob-logistic-robot-5",
    { type = "item", name = "bob-robot-tool-logistic-4", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-construction-robot-5",
    { type = "item", name = "bob-robot-tool-construction-4", amount = 1 }
  )
end
