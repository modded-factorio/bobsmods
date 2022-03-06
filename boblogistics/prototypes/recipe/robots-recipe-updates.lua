if settings.startup["bobmods-logistics-robotrequireprevious"].value == true then
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-2", {"logistic-robot", 1})
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-2", {"construction-robot", 1})
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-3", {"bob-logistic-robot-2", 1})
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-3", {"bob-construction-robot-2", 1})
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-4", {"bob-logistic-robot-3", 1})
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-4", {"bob-construction-robot-3", 1})
end




if data.raw.recipe["robot-brain-logistic"] then
  if data.raw["recipe-category"]["electronics"] then
    data.raw.recipe["robot-brain-logistic"].category = "electronics"
  end
  if data.raw.item["circuit-board"] and data.raw.item["basic-electronic-components"] and data.raw.item["electronic-components"] then
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic", {"circuit-board", 1})
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic", {"basic-electronic-components", 6})
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic", {"electronic-components", 4})
    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_ingredient("robot-brain-logistic", {"solder", 5})
    end
  else
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic", {"electronic-circuit", 2})
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic", {"advanced-circuit", 2})
  end
end

if data.raw.recipe["robot-brain-construction"] then
  if data.raw["recipe-category"]["electronics"] then
    data.raw.recipe["robot-brain-construction"].category = "electronics"
  end
  if data.raw.item["circuit-board"] and data.raw.item["basic-electronic-components"] and data.raw.item["electronic-components"] then
    bobmods.lib.recipe.add_ingredient("robot-brain-construction", {"circuit-board", 1})
    bobmods.lib.recipe.add_ingredient("robot-brain-construction", {"basic-electronic-components", 8})
    bobmods.lib.recipe.add_ingredient("robot-brain-construction", {"electronic-components", 3})
    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_ingredient("robot-brain-construction", {"solder", 5})
    end
  else
    bobmods.lib.recipe.add_ingredient("robot-brain-construction", {"electronic-circuit", 3})
    bobmods.lib.recipe.add_ingredient("robot-brain-construction", {"advanced-circuit", 1})
  end
end



if data.raw.recipe["robot-brain-logistic-2"] then
  if data.raw["recipe-category"]["electronics"] then
    data.raw.recipe["robot-brain-logistic-2"].category = "electronics"
  end
  if data.raw.item["circuit-board"] and data.raw.item["basic-electronic-components"] and data.raw.item["electronic-components"] then
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic-2", {"circuit-board", 1})
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic-2", {"basic-electronic-components", 10})
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic-2", {"electronic-components", 6})
    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_ingredient("robot-brain-logistic-2", {"solder", 5})
    end
  else
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic-2", {"advanced-circuit", 4})
  end
end

if data.raw.recipe["robot-brain-construction-2"] then
  if data.raw["recipe-category"]["electronics"] then
    data.raw.recipe["robot-brain-construction-2"].category = "electronics"
  end
  if data.raw.item["circuit-board"] and data.raw.item["basic-electronic-components"] and data.raw.item["electronic-components"] then
    bobmods.lib.recipe.add_ingredient("robot-brain-construction-2", {"circuit-board", 1})
    bobmods.lib.recipe.add_ingredient("robot-brain-construction-2", {"basic-electronic-components", 12})
    bobmods.lib.recipe.add_ingredient("robot-brain-construction-2", {"electronic-components", 4})
    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_ingredient("robot-brain-construction-2", {"solder", 5})
    end
  else
    bobmods.lib.recipe.add_ingredient("robot-brain-construction-2", {"electronic-circuit", 1})
    bobmods.lib.recipe.add_ingredient("robot-brain-construction-2", {"advanced-circuit", 3})
  end
end



if data.raw.recipe["robot-brain-logistic-3"] then
  if data.raw["recipe-category"]["electronics"] then
    data.raw.recipe["robot-brain-logistic-3"].category = "electronics"
  end
  if data.raw.item["superior-circuit-board"] and data.raw.item["basic-electronic-components"] and data.raw.item["electronic-components"] and data.raw.item["intergrated-electronics"] then
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic-3", {"superior-circuit-board", 1})
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic-3", {"basic-electronic-components", 4})
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic-3", {"electronic-components", 6})
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic-3", {"intergrated-electronics", 6})
    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_ingredient("robot-brain-logistic-3", {"solder", 5})
    end
  else
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic-3", {"advanced-circuit", 2})
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic-3", {"processing-unit", 2})
  end
end

if data.raw.recipe["robot-brain-construction-3"] then
  if data.raw["recipe-category"]["electronics"] then
    data.raw.recipe["robot-brain-construction-3"].category = "electronics"
  end
  if data.raw.item["superior-circuit-board"] and data.raw.item["basic-electronic-components"] and data.raw.item["electronic-components"] and data.raw.item["intergrated-electronics"] then
    bobmods.lib.recipe.add_ingredient("robot-brain-construction-3", {"superior-circuit-board", 1})
    bobmods.lib.recipe.add_ingredient("robot-brain-construction-3", {"basic-electronic-components", 4})
    bobmods.lib.recipe.add_ingredient("robot-brain-construction-3", {"electronic-components", 8})
    bobmods.lib.recipe.add_ingredient("robot-brain-construction-3", {"intergrated-electronics", 4})
    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_ingredient("robot-brain-construction-3", {"solder", 5})
    end
  else
    bobmods.lib.recipe.add_ingredient("robot-brain-construction-3", {"advanced-circuit", 3})
    bobmods.lib.recipe.add_ingredient("robot-brain-construction-3", {"processing-unit", 1})
  end
end



if data.raw.recipe["robot-brain-logistic-4"] then
  if data.raw["recipe-category"]["electronics"] then
    data.raw.recipe["robot-brain-logistic-4"].category = "electronics"
  end
  if data.raw.item["multi-layer-circuit-board"] and data.raw.item["basic-electronic-components"] and data.raw.item["electronic-components"] and data.raw.item["intergrated-electronics"] and data.raw.item["processing-electronics"] then
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic-4", {"multi-layer-circuit-board", 1})
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic-4", {"basic-electronic-components", 2})
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic-4", {"electronic-components", 4})
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic-4", {"intergrated-electronics", 8})
    bobmods.lib.recipe.add_ingredient("robot-brain-logistic-4", {"processing-electronics", 4})
    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_ingredient("robot-brain-logistic-4", {"solder", 5})
    end
  else
    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient("robot-brain-logistic-4", {"processing-unit", 2})
      bobmods.lib.recipe.add_ingredient("robot-brain-logistic-4", {"advanced-processing-unit", 2})
    else
      bobmods.lib.recipe.add_ingredient("robot-brain-logistic-4", {"processing-unit", 4})
    end
  end
end

if data.raw.recipe["robot-brain-construction-4"] then
  if data.raw["recipe-category"]["electronics"] then
    data.raw.recipe["robot-brain-construction-4"].category = "electronics"
  end
  if data.raw.item["multi-layer-circuit-board"] and data.raw.item["basic-electronic-components"] and data.raw.item["electronic-components"] and data.raw.item["intergrated-electronics"] and data.raw.item["processing-electronics"] then
    bobmods.lib.recipe.add_ingredient("robot-brain-construction-4", {"multi-layer-circuit-board", 1})
    bobmods.lib.recipe.add_ingredient("robot-brain-construction-4", {"basic-electronic-components", 2})
    bobmods.lib.recipe.add_ingredient("robot-brain-construction-4", {"electronic-components", 6})
    bobmods.lib.recipe.add_ingredient("robot-brain-construction-4", {"intergrated-electronics", 6})
    bobmods.lib.recipe.add_ingredient("robot-brain-construction-4", {"processing-electronics", 4})
    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_ingredient("robot-brain-construction-4", {"solder", 5})
    end
  else
    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient("robot-brain-construction-4", {"processing-unit", 3})
      bobmods.lib.recipe.add_ingredient("robot-brain-construction-4", {"advanced-processing-unit", 1})
    else
      bobmods.lib.recipe.add_ingredient("robot-brain-construction-4", {"advanced-circuit", 1})
      bobmods.lib.recipe.add_ingredient("robot-brain-construction-4", {"processing-unit", 3})
    end
  end
end





for i, tool in ipairs({"robot-tool-logistic", "robot-tool-construction"}) do
  if data.raw.recipe[tool] then
    bobmods.lib.recipe.add_ingredient(tool, {"steel-plate", 1})
    if data.raw.item["steel-gear-wheel"] then
      bobmods.lib.recipe.add_ingredient(tool, {"steel-gear-wheel", 2})
    else
      bobmods.lib.recipe.add_ingredient(tool, {"iron-gear-wheel", 2})
    end
  end
end

for i, tool in ipairs({"robot-tool-logistic-2", "robot-tool-construction-2"}) do
  if data.raw.recipe[tool] then
    if data.raw.item["aluminium-plate"] then
      bobmods.lib.recipe.add_ingredient(tool, {"aluminium-plate", 1})
    else
      bobmods.lib.recipe.add_ingredient(tool, {"steel-plate", 1})
    end
    if data.raw.item["brass-gear-wheel"] then
      bobmods.lib.recipe.add_ingredient(tool, {"brass-gear-wheel", 2})
      bobmods.lib.tech.add_prerequisite("bob-robots-1", "zinc-processing")
    else
      bobmods.lib.recipe.add_ingredient(tool, {"iron-gear-wheel", 2})
    end
    if data.raw.item["steel-bearing"] then
      bobmods.lib.recipe.add_ingredient(tool, {"steel-bearing", 2})
    end
  end
end

for i, tool in ipairs({"robot-tool-logistic-3", "robot-tool-construction-3"}) do
  if data.raw.recipe[tool] then
    if data.raw.item["titanium-plate"] then
      bobmods.lib.recipe.add_ingredient(tool, {"titanium-plate", 1})
    else
      bobmods.lib.recipe.add_ingredient(tool, {"steel-plate", 1})
    end
    if data.raw.item["titanium-gear-wheel"] then
      bobmods.lib.recipe.add_ingredient(tool, {"titanium-gear-wheel", 2})
    else
      bobmods.lib.recipe.add_ingredient(tool, {"iron-gear-wheel", 2})
    end
    if data.raw.item["titanium-bearing"] then
      bobmods.lib.recipe.add_ingredient(tool, {"titanium-bearing", 2})
    end
  end
end

for i, tool in ipairs({"robot-tool-logistic-4", "robot-tool-construction-4"}) do
  if data.raw.recipe[tool] then
    if data.raw.item["silicon-nitride"] then
      bobmods.lib.recipe.add_ingredient(tool, {"silicon-nitride", 1})
    else
      bobmods.lib.recipe.add_ingredient(tool, {"steel-plate", 1})
    end
    if data.raw.item["nitinol-gear-wheel"] then
      bobmods.lib.recipe.add_ingredient(tool, {"nitinol-gear-wheel", 2})
      bobmods.lib.tech.add_prerequisite("bob-robots-3", "nitinol-processing")
    else
      bobmods.lib.recipe.add_ingredient(tool, {"iron-gear-wheel", 2})
    end
    if data.raw.item["ceramic-bearing"] then
      bobmods.lib.recipe.add_ingredient(tool, {"ceramic-bearing", 2})
    end
    if tool == "robot-tool-construction-4" and data.raw.item["tungsten-carbide"] then
      bobmods.lib.recipe.add_ingredient(tool, {"tungsten-carbide", 1})
      bobmods.lib.tech.add_prerequisite("bob-robots-3", "tungsten-alloy-processing")
    end
  end
end





if data.raw.item["flying-robot-frame-2"] then
  if data.raw.item["aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("flying-robot-frame-2", "steel-plate", "aluminium-plate")
  end
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-2", {"flying-robot-frame-2", 1})
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-2", {"flying-robot-frame-2", 1})
else
  for i, robot in ipairs({"bob-logistic-robot-2", "bob-construction-robot-2"}) do
    data.raw.recipe[robot].energy_required = 20

    if settings.startup["bobmods-logistics-robotrequireprevious"].value == false then
      bobmods.lib.recipe.add_ingredient(robot, {"electric-engine-unit", 1})
      bobmods.lib.recipe.add_ingredient(robot, {"battery", 2})
    end

    if data.raw.item["aluminium-plate"] then
      bobmods.lib.recipe.add_ingredient(robot, {"aluminium-plate", 1})
    else
      bobmods.lib.recipe.add_ingredient(robot, {"steel-plate", 1})
    end

    bobmods.lib.recipe.add_ingredient(robot, {"advanced-circuit", 3})
  end
end



if data.raw.item["flying-robot-frame-3"] then
  if data.raw.item["lithium-ion-battery"] then
    bobmods.lib.recipe.replace_ingredient("flying-robot-frame-3", "battery", "lithium-ion-battery")
  end

  if data.raw.item["titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("flying-robot-frame-3", "steel-plate", "titanium-plate")
  end

  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-3", {"flying-robot-frame-3", 1})
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-3", {"flying-robot-frame-3", 1})
else
  for i, robot in ipairs({"bob-logistic-robot-3", "bob-construction-robot-3"}) do
    data.raw.recipe[robot].energy_required = 20

    if settings.startup["bobmods-logistics-robotrequireprevious"].value == false then
      bobmods.lib.recipe.add_ingredient(robot, {"electric-engine-unit", 1})
    end

    if data.raw.item["lithium-ion-battery"] then
      bobmods.lib.recipe.add_ingredient(robot, {"lithium-ion-battery", 2})
    else
      bobmods.lib.recipe.add_ingredient(robot, {"battery", 2})
    end

    if data.raw.item["titanium-plate"] then
      bobmods.lib.recipe.add_ingredient(robot, {"titanium-plate", 1})
    else
      bobmods.lib.recipe.add_ingredient(robot, {"steel-plate", 1})
    end

    bobmods.lib.recipe.add_ingredient(robot, {"processing-unit", 3})
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

  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-4", {"flying-robot-frame-4", 1})
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-4", {"flying-robot-frame-4", 1})
else
  for i, robot in ipairs({"bob-logistic-robot-4", "bob-construction-robot-4"}) do
    data.raw.recipe[robot].energy_required = 20
    if settings.startup["bobmods-logistics-robotrequireprevious"].value == false then
      bobmods.lib.recipe.add_ingredient(robot, {"electric-engine-unit", 1})
    end

    if data.raw.item["silver-zinc-battery"] then
      bobmods.lib.recipe.add_ingredient(robot, {"silver-zinc-battery", 2})
    else
      if data.raw.item["lithium-ion-battery"] then
        bobmods.lib.recipe.add_ingredient(robot, {"lithium-ion-battery", 2})
      else
        bobmods.lib.recipe.add_ingredient(robot, {"battery", 2})
      end
    end

    if data.raw.item["silicon-nitride"] then
      bobmods.lib.recipe.add_ingredient(robot, {"silicon-nitride", 1})
    else
      bobmods.lib.recipe.add_ingredient(robot, {"steel-plate", 1})
    end

    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient(robot, {"advanced-processing-unit", 3})
    else
      bobmods.lib.recipe.add_ingredient(robot, {"processing-unit", 3})
    end
  end
end



if data.raw.item["robot-brain-logistic"] and data.raw.item["robot-tool-logistic"] then
  if bobmods.lib.recipe.set_ingredients then
    bobmods.lib.recipe.set_ingredients("logistic-robot", {{"flying-robot-frame", 1}, {"robot-brain-logistic", 1}, {"robot-tool-logistic", 1}})
  else
    data.raw.recipe["logistic-robot"].ingredients = {{"flying-robot-frame", 1}, {"robot-brain-logistic", 1}, {"robot-tool-logistic", 1}}
  end
end
if data.raw.item["robot-brain-construction"] and data.raw.item["robot-tool-construction"] then
  if bobmods.lib.recipe.set_ingredients then
    bobmods.lib.recipe.set_ingredients("construction-robot", {{"flying-robot-frame", 1}, {"robot-brain-construction", 1}, {"robot-tool-construction", 1}})
  else
    data.raw.recipe["construction-robot"].ingredients = {{"flying-robot-frame", 1}, {"robot-brain-construction", 1}, {"robot-tool-construction", 1}}
  end
end

if data.raw.item["robot-brain-logistic-2"] and data.raw.item["robot-tool-logistic-2"] then
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-2", {"robot-brain-logistic-2", 1})
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-2", {"robot-tool-logistic-2", 1})
else
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-2", {"advanced-circuit", 1})
end

if data.raw.item["robot-brain-construction-2"] and data.raw.item["robot-tool-construction-2"] then
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-2", {"robot-brain-construction-2", 1})
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-2", {"robot-tool-construction-2", 1})
else
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-2", {"advanced-circuit", 1})
end

if data.raw.item["robot-brain-logistic-3"] and data.raw.item["robot-tool-logistic-3"]then
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-3", {"robot-brain-logistic-3", 1})
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-3", {"robot-tool-logistic-3", 1})
else
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-3", {"processing-unit", 1})
end

if data.raw.item["robot-brain-construction-3"] and data.raw.item["robot-tool-construction-3"] then
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-3", {"robot-brain-construction-3", 1})
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-3", {"robot-tool-construction-3", 1})
else
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-3", {"processing-unit", 1})
end

if data.raw.item["robot-brain-logistic-4"] and data.raw.item["robot-tool-logistic-4"] then
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-4", {"robot-brain-logistic-4", 1})
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-4", {"robot-tool-logistic-4", 1})
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient("bob-logistic-robot-4", {"advanced-processing-unit", 1})
  else
    bobmods.lib.recipe.add_ingredient("bob-logistic-robot-4", {"processing-unit", 1})
  end
end

if data.raw.item["robot-brain-construction-4"] and data.raw.item["robot-tool-construction-4"] then
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-4", {"robot-brain-construction-4", 1})
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-4", {"robot-tool-construction-4", 1})
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient("bob-construction-robot-4", {"advanced-processing-unit", 1})
  else
    bobmods.lib.recipe.add_ingredient("bob-construction-robot-4", {"processing-unit", 1})
  end
end



for i, robot in ipairs({"bob-logistic-robot-5", "bob-construction-robot-5"}) do
  if data.raw.item["rtg"] and data.raw.technology["rtg"] then
    bobmods.lib.recipe.add_ingredient(robot, {"rtg", 1})
    bobmods.lib.tech.add_prerequisite("bob-robots-4", "rtg")
  elseif data.raw.item["vehicle-fusion-cell-1"] and data.raw.technology["vehicle-fusion-cell-equipment-1"] then
    bobmods.lib.recipe.add_ingredient(robot, {"vehicle-fusion-cell-1", 1})
    bobmods.lib.tech.add_prerequisite("bob-robots-4", "vehicle-fusion-cell-equipment-1")
  else
    bobmods.lib.recipe.add_ingredient(robot, {"fusion-reactor-equipment", 1})
    bobmods.lib.tech.add_prerequisite("bob-robots-4", "fusion-reactor-equipment")
  end
end


if settings.startup["bobmods-logistics-robotrequireprevious"].value == true then
  bobmods.lib.recipe.add_ingredient("bob-logistic-robot-5", {"bob-logistic-robot-4", 1})
  bobmods.lib.recipe.add_ingredient("bob-construction-robot-5", {"bob-construction-robot-4", 1})
else
  if data.raw.item["flying-robot-frame-4"] then
    bobmods.lib.recipe.add_ingredient("bob-logistic-robot-5", {"flying-robot-frame-4", 1})
    bobmods.lib.recipe.add_ingredient("bob-construction-robot-5", {"flying-robot-frame-4", 1})
  else
    for i, robot in ipairs({"bob-logistic-robot-5", "bob-construction-robot-5"}) do
      data.raw.recipe[robot].energy_required = 20
      bobmods.lib.recipe.add_ingredient(robot, {"electric-engine-unit", 1})

      if data.raw.item["silicon-nitride"] then
        bobmods.lib.recipe.add_ingredient(robot, {"silicon-nitride", 1})
      else
        bobmods.lib.recipe.add_ingredient(robot, {"steel-plate", 1})
      end

      if data.raw.item["advanced-processing-unit"] then
        bobmods.lib.recipe.add_ingredient(robot, {"advanced-processing-unit", 3})
      else
        bobmods.lib.recipe.add_ingredient(robot, {"processing-unit", 3})
      end
    end
  end


  if data.raw.item["robot-brain-logistic-4"] and data.raw.item["robot-tool-logistic-4"] then
    bobmods.lib.recipe.add_ingredient("bob-logistic-robot-5", {"robot-brain-logistic-4", 1})
    bobmods.lib.recipe.add_ingredient("bob-logistic-robot-5", {"robot-tool-logistic-4", 1})
  else
    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient("bob-logistic-robot-5", {"advanced-processing-unit", 1})
    else
      bobmods.lib.recipe.add_ingredient("bob-logistic-robot-5", {"processing-unit", 1})
    end
  end

  if data.raw.item["robot-brain-construction-4"] and data.raw.item["robot-tool-construction-4"] then
    bobmods.lib.recipe.add_ingredient("bob-construction-robot-5", {"robot-brain-construction-4", 1})
    bobmods.lib.recipe.add_ingredient("bob-construction-robot-5", {"robot-tool-construction-4", 1})
  else
    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient("bob-construction-robot-5", {"advanced-processing-unit", 1})
    else
      bobmods.lib.recipe.add_ingredient("bob-construction-robot-5", {"processing-unit", 1})
    end
  end
end

