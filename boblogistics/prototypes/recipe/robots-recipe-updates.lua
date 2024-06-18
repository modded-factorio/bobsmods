bobmods.lib.recipe.remove_ingredient("logistic-chest-passive-provider", "advanced-circuit")
bobmods.lib.recipe.remove_ingredient("logistic-chest-storage", "advanced-circuit")

if settings.startup["bobmods-logistics-robotrequireprevious"].value == true then
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-2", { "logistic-robot", 1 })
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-2", { "construction-robot", 1 })
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-3", { "bob-logistic-robot-2", 1 })
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-3", { "bob-construction-robot-2", 1 })
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-4", { "bob-logistic-robot-3", 1 })
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-4", { "bob-construction-robot-3", 1 })
end

if data.raw.recipe["bob-robot-brain"] then
  if data.raw["recipe-category"]["electronics"] then
    data.raw.recipe["bob-robot-brain"].category = "electronics"
  end
  if data.raw.item["basic-circuit-board"] and data.raw.item["basic-electronic-components"] then
    bobmods.lib.recipe.add_ingredient("bob-robot-brain", { "basic-circuit-board", 1 })
    bobmods.lib.recipe.add_ingredient("bob-robot-brain", { "basic-electronic-components", 8 })
    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_ingredient("bob-robot-brain", { "solder", 5 })
    end
  else
    bobmods.lib.recipe.add_ingredient("bob-robot-brain", { "electronic-circuit", 4 })
  end
end

if data.raw.recipe["bob-robot-brain-2"] then
  if data.raw["recipe-category"]["electronics"] then
    data.raw.recipe["bob-robot-brain-2"].category = "electronics"
  end
  if
    data.raw.item["circuit-board"]
    and data.raw.item["basic-electronic-components"]
    and data.raw.item["electronic-components"]
  then
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-2", { "circuit-board", 1 })
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-2", { "basic-electronic-components", 10 })
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-2", { "electronic-components", 6 })
    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_ingredient("bob-robot-brain-2", { "solder", 5 })
    end
  else
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-2", { "electronic-circuit", 2 })
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-2", { "advanced-circuit", 2 })
  end
end

if data.raw.recipe["bob-robot-brain-3"] then
  if data.raw["recipe-category"]["electronics"] then
    data.raw.recipe["bob-robot-brain-3"].category = "electronics"
  end
  if
    data.raw.item["superior-circuit-board"]
    and data.raw.item["basic-electronic-components"]
    and data.raw.item["electronic-components"]
    and data.raw.item["intergrated-electronics"]
  then
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-3", { "superior-circuit-board", 1 })
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-3", { "basic-electronic-components", 8 })
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-3", { "electronic-components", 6 })
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-3", { "intergrated-electronics", 4 })
    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_ingredient("bob-robot-brain-3", { "solder", 5 })
    end
  else
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-3", { "advanced-circuit", 2 })
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-3", { "processing-unit", 2 })
  end
end

if data.raw.recipe["bob-robot-brain-4"] then
  if data.raw["recipe-category"]["electronics"] then
    data.raw.recipe["bob-robot-brain-4"].category = "electronics"
  end
  if
    data.raw.item["multi-layer-circuit-board"]
    and data.raw.item["basic-electronic-components"]
    and data.raw.item["electronic-components"]
    and data.raw.item["intergrated-electronics"]
    and data.raw.item["processing-electronics"]
  then
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-4", { "multi-layer-circuit-board", 1 })
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-4", { "basic-electronic-components", 12 })
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-4", { "electronic-components", 8 })
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-4", { "intergrated-electronics", 6 })
    bobmods.lib.recipe.add_ingredient("bob-robot-brain-4", { "processing-electronics", 4 })
    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_ingredient("bob-robot-brain-4", { "solder", 5 })
    end
  else
    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient("bob-robot-brain-4", { "processing-unit", 2 })
      bobmods.lib.recipe.add_ingredient("bob-robot-brain-4", { "advanced-processing-unit", 2 })
    else
      bobmods.lib.recipe.add_ingredient("bob-robot-brain-4", { "processing-unit", 4 })
    end
  end
end

if data.raw.recipe["bob-robot-tool"] then
  bobmods.lib.recipe.add_ingredient("bob-robot-tool", { "steel-plate", 1 })
  if data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.add_ingredient("bob-robot-tool", { "steel-gear-wheel", 2 })
  else
    bobmods.lib.recipe.add_ingredient("bob-robot-tool", { "iron-gear-wheel", 2 })
  end
end

if data.raw.recipe["bob-robot-tool-2"] then
  if data.raw.item["aluminium-plate"] then
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-2", { "aluminium-plate", 1 })
  else
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-2", { "steel-plate", 1 })
  end
  if data.raw.item["brass-gear-wheel"] then
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-2", { "brass-gear-wheel", 2 })
    bobmods.lib.tech.add_prerequisite("bob-robots-1", "zinc-processing")
  else
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-2", { "iron-gear-wheel", 2 })
  end
  if data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-2", { "steel-bearing", 2 })
  end
end

if data.raw.recipe["bob-robot-tool-3"] then
  if data.raw.item["titanium-plate"] then
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-3", { "titanium-plate", 1 })
  else
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-3", { "steel-plate", 1 })
  end
  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-3", { "titanium-gear-wheel", 2 })
  else
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-3", { "iron-gear-wheel", 2 })
  end
  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-3", { "titanium-bearing", 2 })
  end
end

if data.raw.recipe["bob-robot-tool-4"] then
  if data.raw.item["silicon-nitride"] then
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-4", { "silicon-nitride", 1 })
  else
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-4", { "steel-plate", 1 })
  end
  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-4", { "nitinol-gear-wheel", 2 })
    bobmods.lib.tech.add_prerequisite("bob-robots-3", "nitinol-processing")
  else
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-4", { "iron-gear-wheel", 2 })
  end
  if data.raw.item["ceramic-bearing"] then
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-4", { "ceramic-bearing", 2 })
  end
  if data.raw.item["tungsten-carbide"] then
    bobmods.lib.recipe.add_ingredient("bob-robot-tool-4", { "tungsten-carbide", 1 })
    bobmods.lib.tech.add_prerequisite("bob-robots-3", "tungsten-alloy-processing")
  end
end

if data.raw.item["flying-robot-frame-2"] then
  if data.raw.item["aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("flying-robot-frame-2", "steel-plate", "aluminium-plate")
  end
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-2", { "flying-robot-frame-2", 1 })
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-2", { "flying-robot-frame-2", 1 })
else
  for i, robot in ipairs({ "bob-logistic-robot-2", "bob-construction-robot-2" }) do
    data.raw.recipe[robot].energy_required = 20

    if settings.startup["bobmods-logistics-robotrequireprevious"].value == false then
      bobmods.lib.recipe.add_ingredient(robot, { "electric-engine-unit", 1 })
      bobmods.lib.recipe.add_ingredient(robot, { "battery", 2 })
    end

    if data.raw.item["aluminium-plate"] then
      bobmods.lib.recipe.add_ingredient(robot, { "aluminium-plate", 1 })
    else
      bobmods.lib.recipe.add_ingredient(robot, { "steel-plate", 1 })
    end

    bobmods.lib.recipe.add_ingredient(robot, { "advanced-circuit", 3 })
  end
end

if data.raw.item["flying-robot-frame-3"] then
  if data.raw.item["lithium-ion-battery"] then
    bobmods.lib.recipe.replace_ingredient("flying-robot-frame-3", "battery", "lithium-ion-battery")
  end

  if data.raw.item["titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("flying-robot-frame-3", "steel-plate", "titanium-plate")
  end

  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-3", { "flying-robot-frame-3", 1 })
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-3", { "flying-robot-frame-3", 1 })
else
  for i, robot in ipairs({ "bob-logistic-robot-3", "bob-construction-robot-3" }) do
    data.raw.recipe[robot].energy_required = 20

    if settings.startup["bobmods-logistics-robotrequireprevious"].value == false then
      bobmods.lib.recipe.add_ingredient(robot, { "electric-engine-unit", 1 })
    end

    if data.raw.item["lithium-ion-battery"] then
      bobmods.lib.recipe.add_ingredient(robot, { "lithium-ion-battery", 2 })
    else
      bobmods.lib.recipe.add_ingredient(robot, { "battery", 2 })
    end

    if data.raw.item["titanium-plate"] then
      bobmods.lib.recipe.add_ingredient(robot, { "titanium-plate", 1 })
    else
      bobmods.lib.recipe.add_ingredient(robot, { "steel-plate", 1 })
    end

    bobmods.lib.recipe.add_ingredient(robot, { "processing-unit", 3 })
  end
end

if data.raw.item["flying-robot-frame-4"] then
  if data.raw.item["silver-zinc-battery"] then
    bobmods.lib.recipe.replace_ingredient("flying-robot-frame-4", "battery", "silver-zinc-battery")
  else
    if data.raw.item["lithium-ion-battery"] then
      bobmods.lib.recipe.replace_ingredient("flying-robot-frame-4", "battery", "lithium-ion-battery")
    end
  end

  if data.raw.item["silicon-nitride"] then
    bobmods.lib.recipe.replace_ingredient("flying-robot-frame-4", "steel-plate", "silicon-nitride")
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("flying-robot-frame-4", "processing-unit", "advanced-processing-unit")
  end

  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-4", { "flying-robot-frame-4", 1 })
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-4", { "flying-robot-frame-4", 1 })
else
  for i, robot in ipairs({ "bob-logistic-robot-4", "bob-construction-robot-4" }) do
    data.raw.recipe[robot].energy_required = 20
    if settings.startup["bobmods-logistics-robotrequireprevious"].value == false then
      bobmods.lib.recipe.add_ingredient(robot, { "electric-engine-unit", 1 })
    end

    if data.raw.item["silver-zinc-battery"] then
      bobmods.lib.recipe.add_ingredient(robot, { "silver-zinc-battery", 2 })
    else
      if data.raw.item["lithium-ion-battery"] then
        bobmods.lib.recipe.add_ingredient(robot, { "lithium-ion-battery", 2 })
      else
        bobmods.lib.recipe.add_ingredient(robot, { "battery", 2 })
      end
    end

    if data.raw.item["silicon-nitride"] then
      bobmods.lib.recipe.add_ingredient(robot, { "silicon-nitride", 1 })
    else
      bobmods.lib.recipe.add_ingredient(robot, { "steel-plate", 1 })
    end

    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient(robot, { "advanced-processing-unit", 3 })
    else
      bobmods.lib.recipe.add_ingredient(robot, { "processing-unit", 3 })
    end
  end
end

if data.raw.item["bob-robot-brain"] and data.raw.item["bob-robot-tool"] then
  bobmods.lib.recipe.set_ingredients(
    "logistic-robot",
    { { "flying-robot-frame", 1 }, { "bob-robot-brain", 1 }, { "bob-robot-tool", 1 } }
  )
  bobmods.lib.recipe.set_ingredients(
    "construction-robot",
    { { "flying-robot-frame", 1 }, { "bob-robot-brain", 1 }, { "bob-robot-tool", 1 } }
  )
end

if data.raw.item["bob-robot-brain-2"] and data.raw.item["bob-robot-tool-2"] then
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-2", { "bob-robot-brain-2", 1 })
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-2", { "bob-robot-tool-2", 1 })
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-2", { "bob-robot-brain-2", 1 })
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-2", { "bob-robot-tool-2", 1 })
else
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-2", { "advanced-circuit", 1 })
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-2", { "advanced-circuit", 1 })
end

if data.raw.item["bob-robot-brain-3"] and data.raw.item["bob-robot-tool-3"] then
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-3", { "bob-robot-brain-3", 1 })
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-3", { "bob-robot-tool-3", 1 })
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-3", { "bob-robot-brain-3", 1 })
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-3", { "bob-robot-tool-3", 1 })
else
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-3", { "processing-unit", 1 })
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-3", { "processing-unit", 1 })
end

if data.raw.item["bob-robot-brain-4"] and data.raw.item["bob-robot-tool-4"] then
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-4", { "bob-robot-brain-4", 1 })
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-4", { "bob-robot-tool-4", 1 })
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-4", { "bob-robot-brain-4", 1 })
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-4", { "bob-robot-tool-4", 1 })
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient("bob-logistic-robot-4", { "advanced-processing-unit", 1 })
    bobmods.lib.recipe.add_ingredient("bob-construction-robot-4", { "advanced-processing-unit", 1 })
  else
    bobmods.lib.recipe.add_ingredient("bob-logistic-robot-4", { "processing-unit", 1 })
    bobmods.lib.recipe.add_ingredient("bob-construction-robot-4", { "processing-unit", 1 })
  end
end

for i, robot in ipairs({ "bob-logistic-robot-5", "bob-construction-robot-5" }) do
  if data.raw.item["rtg"] and data.raw.technology["rtg"] then
    bobmods.lib.recipe.add_ingredient(robot, { "rtg", 1 })
    bobmods.lib.tech.add_prerequisite("bob-robots-4", "rtg")
  elseif data.raw.item["vehicle-fusion-cell-1"] and data.raw.technology["vehicle-fusion-cell-equipment-1"] then
    bobmods.lib.recipe.add_ingredient(robot, { "vehicle-fusion-cell-1", 1 })
    bobmods.lib.tech.add_prerequisite("bob-robots-4", "vehicle-fusion-cell-equipment-1")
  else
    bobmods.lib.recipe.add_ingredient(robot, { "fusion-reactor-equipment", 1 })
    bobmods.lib.tech.add_prerequisite("bob-robots-4", "fusion-reactor-equipment")
  end
end

if settings.startup["bobmods-logistics-robotrequireprevious"].value == true then
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-5", { "bob-logistic-robot-4", 1 })
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-5", { "bob-construction-robot-4", 1 })
else
  if data.raw.item["flying-robot-frame-4"] then
    bobmods.lib.recipe.add_ingredient("bob-logistic-robot-5", { "flying-robot-frame-4", 1 })
    bobmods.lib.recipe.add_ingredient("bob-construction-robot-5", { "flying-robot-frame-4", 1 })
  else
    for i, robot in ipairs({ "bob-logistic-robot-5", "bob-construction-robot-5" }) do
      data.raw.recipe[robot].energy_required = 20
      bobmods.lib.recipe.add_ingredient(robot, { "electric-engine-unit", 1 })

      if data.raw.item["silicon-nitride"] then
        bobmods.lib.recipe.add_ingredient(robot, { "silicon-nitride", 1 })
      else
        bobmods.lib.recipe.add_ingredient(robot, { "steel-plate", 1 })
      end

      if data.raw.item["advanced-processing-unit"] then
        bobmods.lib.recipe.add_ingredient(robot, { "advanced-processing-unit", 3 })
      else
        bobmods.lib.recipe.add_ingredient(robot, { "processing-unit", 3 })
      end
    end
  end

  if data.raw.item["bob-robot-brain-4"] and data.raw.item["bob-robot-tool-4"] then
    bobmods.lib.recipe.add_ingredient("bob-logistic-robot-5", { "bob-robot-brain-4", 1 })
    bobmods.lib.recipe.add_ingredient("bob-logistic-robot-5", { "bob-robot-tool-4", 1 })
    bobmods.lib.recipe.add_ingredient("bob-construction-robot-5", { "bob-robot-brain-4", 1 })
    bobmods.lib.recipe.add_ingredient("bob-construction-robot-5", { "bob-robot-tool-4", 1 })
  else
    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient("bob-logistic-robot-5", { "advanced-processing-unit", 1 })
      bobmods.lib.recipe.add_ingredient("bob-construction-robot-5", { "advanced-processing-unit", 1 })
    else
      bobmods.lib.recipe.add_ingredient("bob-logistic-robot-5", { "processing-unit", 1 })
      bobmods.lib.recipe.add_ingredient("bob-construction-robot-5", { "processing-unit", 1 })
    end
  end
end
