if settings.startup["bobmods-warfare-robotupdate"].value == true then
  data.raw.recipe["defender-capsule"].ingredients = { { "defender-robot", 1 } }
  data.raw.recipe["defender-capsule"].energy_required = 1
  data.raw.recipe["distractor-capsule"].ingredients = { { "distractor-robot", 3 } }
  data.raw.recipe["distractor-capsule"].energy_required = 1
  data.raw.recipe["destroyer-capsule"].ingredients = { { "destroyer-robot", 5 } }
  data.raw.recipe["destroyer-capsule"].energy_required = 1

  bobmods.lib.tech.add_recipe_unlock("defender", "defender-robot")
  bobmods.lib.tech.add_recipe_unlock("distractor", "distractor-robot")
  bobmods.lib.tech.add_recipe_unlock("destroyer", "destroyer-robot")

  if bobmods.warfare.RobotRequirePrevious == true then
    bobmods.lib.recipe.add_ingredient("distractor-robot", { "defender-robot", 1 })
    bobmods.lib.recipe.add_ingredient("destroyer-robot", { "distractor-robot", 1 })
    bobmods.lib.recipe.add_ingredient("bob-laser-robot", { "destroyer-robot", 1 })
  end

  if bobmods.warfare.FlyingRobotFrames == true then
    bobmods.lib.recipe.add_ingredient("defender-robot", { "flying-robot-frame", 1 })
    bobmods.lib.tech.add_prerequisite("defender", "robotics")

    if data.raw.item["flying-robot-frame-2"] then
      bobmods.lib.recipe.add_ingredient("distractor-robot", { "flying-robot-frame-2", 1 })
      bobmods.lib.tech.add_prerequisite("distractor", "bob-robotics-2")
    else
      bobmods.lib.recipe.add_ingredient("distractor-robot", { "flying-robot-frame", 1 })
    end

    if data.raw.item["flying-robot-frame-3"] then
      bobmods.lib.recipe.add_ingredient("destroyer-robot", { "flying-robot-frame-3", 1 })
      bobmods.lib.tech.add_prerequisite("destroyer", "bob-robotics-3")
    else
      bobmods.lib.recipe.add_ingredient("destroyer-robot", { "flying-robot-frame", 1 })
    end

    if data.raw.item["flying-robot-frame-4"] then
      bobmods.lib.recipe.add_ingredient("bob-laser-robot", { "flying-robot-frame-4", 1 })
      bobmods.lib.tech.add_prerequisite("bob-laser-robot", "bob-robotics-4")
    else
      bobmods.lib.recipe.add_ingredient("bob-laser-robot", { "flying-robot-frame", 1 })
    end
  else
    bobmods.lib.recipe.add_ingredient("defender-robot", { "steel-plate", 1 })
    bobmods.lib.recipe.add_ingredient("defender-robot", { "electronic-circuit", 1 })
    bobmods.lib.recipe.add_ingredient("defender-robot", { "iron-gear-wheel", 3 })

    if data.raw.item["aluminium-plate"] then
      bobmods.lib.recipe.add_ingredient("distractor-robot", { "aluminium-plate", 1 })
    else
      bobmods.lib.recipe.add_ingredient("distractor-robot", { "steel-plate", 1 })
    end
    bobmods.lib.recipe.add_ingredient("distractor-robot", { "advanced-circuit", 1 })
    if data.raw.item["brass-gear-wheel"] then
      bobmods.lib.recipe.add_ingredient("distractor-robot", { "brass-gear-wheel", 3 })
      bobmods.lib.tech.add_prerequisite("distractor", "zinc-processing")
    else
      bobmods.lib.recipe.add_ingredient("distractor-robot", { "iron-gear-wheel", 3 })
    end

    if data.raw.item["titanium-plate"] then
      bobmods.lib.recipe.add_ingredient("destroyer-robot", { "titanium-plate", 1 })
      bobmods.lib.tech.add_prerequisite("destroyer", "titanium-processing")
    else
      bobmods.lib.recipe.add_ingredient("destroyer-robot", { "steel-plate", 1 })
    end
    bobmods.lib.recipe.add_ingredient("destroyer-robot", { "processing-unit", 1 })
    bobmods.lib.tech.add_prerequisite("destroyer", "advanced-electronics-2")
    if data.raw.item["titanium-gear-wheel"] then
      bobmods.lib.recipe.add_ingredient("destroyer-robot", { "titanium-gear-wheel", 3 })
    else
      bobmods.lib.recipe.add_ingredient("destroyer-robot", { "iron-gear-wheel", 3 })
    end

    if data.raw.item["silicon-nitride"] then
      bobmods.lib.recipe.add_ingredient("bob-laser-robot", { "silicon-nitride", 1 })
      bobmods.lib.tech.add_prerequisite("bob-laser-robot", "ceramics")
    else
      bobmods.lib.recipe.add_ingredient("bob-laser-robot", { "steel-plate", 1 })
    end
    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient("bob-laser-robot", { "advanced-processing-unit", 1 })
      bobmods.lib.tech.add_prerequisite("bob-laser-robot", "advanced-electronics-3")
    else
      bobmods.lib.recipe.add_ingredient("bob-laser-robot", { "processing-unit", 1 })
    end
    if data.raw.item["nitinol-gear-wheel"] then
      bobmods.lib.recipe.add_ingredient("bob-laser-robot", { "nitinol-gear-wheel", 3 })
      bobmods.lib.tech.add_prerequisite("bob-laser-robot", "nitinol-processing")
    else
      bobmods.lib.recipe.add_ingredient("bob-laser-robot", { "iron-gear-wheel", 3 })
    end
  end

  if data.raw.recipe["robot-brain-combat"] then
    if data.raw["recipe-category"]["electronics"] then
      data.raw.recipe["robot-brain-combat"].category = "electronics"
    end
    if data.raw.item["basic-circuit-board"] and data.raw.item["basic-electronic-components"] then
      bobmods.lib.recipe.add_ingredient("robot-brain-combat", { "basic-circuit-board", 1 })
      bobmods.lib.recipe.add_ingredient("robot-brain-combat", { "basic-electronic-components", 8 })
      if data.raw.item["solder"] then
        bobmods.lib.recipe.add_ingredient("robot-brain-combat", { "solder", 5 })
      end
    else
      bobmods.lib.recipe.add_ingredient("robot-brain-combat", { "electronic-circuit", 2 })
    end
  end

  if data.raw.recipe["robot-brain-combat-2"] then
    if data.raw["recipe-category"]["electronics"] then
      data.raw.recipe["robot-brain-combat-2"].category = "electronics"
    end
    if
      data.raw.item["circuit-board"]
      and data.raw.item["basic-electronic-components"]
      and data.raw.item["electronic-components"]
    then
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-2", { "circuit-board", 1 })
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-2", { "basic-electronic-components", 10 })
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-2", { "electronic-components", 2 })
      if data.raw.item["solder"] then
        bobmods.lib.recipe.add_ingredient("robot-brain-combat-2", { "solder", 5 })
      end
    else
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-2", { "electronic-circuit", 1 })
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-2", { "advanced-circuit", 1 })
    end
  end

  if data.raw.recipe["robot-brain-combat-3"] then
    if data.raw["recipe-category"]["electronics"] then
      data.raw.recipe["robot-brain-combat-3"].category = "electronics"
    end
    if
      data.raw.item["superior-circuit-board"]
      and data.raw.item["basic-electronic-components"]
      and data.raw.item["electronic-components"]
      and data.raw.item["intergrated-electronics"]
    then
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-3", { "superior-circuit-board", 1 })
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-3", { "basic-electronic-components", 4 })
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-3", { "electronic-components", 2 })
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-3", { "intergrated-electronics", 1 })
      if data.raw.item["solder"] then
        bobmods.lib.recipe.add_ingredient("robot-brain-combat-3", { "solder", 5 })
      end
    else
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-3", { "advanced-circuit", 1 })
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-3", { "processing-unit", 1 })
    end
  end

  if data.raw.recipe["robot-brain-combat-4"] then
    if data.raw["recipe-category"]["electronics"] then
      data.raw.recipe["robot-brain-combat-4"].category = "electronics"
    end
    if
      data.raw.item["multi-layer-circuit-board"]
      and data.raw.item["basic-electronic-components"]
      and data.raw.item["electronic-components"]
      and data.raw.item["intergrated-electronics"]
      and data.raw.item["processing-electronics"]
    then
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-4", { "multi-layer-circuit-board", 1 })
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-4", { "basic-electronic-components", 2 })
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-4", { "electronic-components", 4 })
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-4", { "intergrated-electronics", 2 })
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-4", { "processing-electronics", 1 })
      if data.raw.item["solder"] then
        bobmods.lib.recipe.add_ingredient("robot-brain-combat-4", { "solder", 5 })
      end
    else
      if data.raw.item["advanced-processing-unit"] then
        bobmods.lib.recipe.add_ingredient("robot-brain-combat-4", { "processing-unit", 1 })
        bobmods.lib.recipe.add_ingredient("robot-brain-combat-4", { "advanced-processing-unit", 1 })
      else
        bobmods.lib.recipe.add_ingredient("robot-brain-combat-4", { "processing-unit", 2 })
      end
    end
  end

  if data.raw.recipe["robot-brain-combat"] then
    bobmods.lib.tech.add_recipe_unlock("defender", "robot-brain-combat")
    bobmods.lib.recipe.add_ingredient("defender-robot", { "robot-brain-combat", 1 })
  else
    bobmods.lib.recipe.add_ingredient("defender-robot", { "electronic-circuit", 1 })
  end
  if data.raw.recipe["robot-brain-combat-2"] then
    bobmods.lib.tech.add_recipe_unlock("distractor", "robot-brain-combat-2")
    bobmods.lib.recipe.add_ingredient("distractor-robot", { "robot-brain-combat-2", 1 })
  else
    bobmods.lib.recipe.add_ingredient("distractor-robot", { "advanced-circuit", 1 })
  end
  if data.raw.recipe["robot-brain-combat-3"] then
    bobmods.lib.tech.add_recipe_unlock("destroyer", "robot-brain-combat-3")
    bobmods.lib.recipe.add_ingredient("destroyer-robot", { "robot-brain-combat-3", 1 })
  else
    bobmods.lib.recipe.add_ingredient("destroyer-robot", { "processing-unit", 1 })
  end
  if data.raw.recipe["robot-brain-combat-4"] then
    bobmods.lib.tech.add_recipe_unlock("bob-laser-robot", "robot-brain-combat-4")
    bobmods.lib.recipe.add_ingredient("bob-laser-robot", { "robot-brain-combat-4", 1 })
  else
    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient("bob-laser-robot", { "advanced-processing-unit", 1 })
    else
      bobmods.lib.recipe.add_ingredient("bob-laser-robot", { "processing-unit", 1 })
    end
  end

  if data.raw.recipe["robot-tool-combat"] then
    bobmods.lib.recipe.add_ingredient("robot-tool-combat", { "steel-plate", 1 })
    if data.raw.item["steel-gear-wheel"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat", { "steel-gear-wheel", 5 })
    else
      bobmods.lib.recipe.add_ingredient("robot-tool-combat", { "iron-gear-wheel", 5 })
    end
  end

  if data.raw.recipe["robot-tool-combat-2"] then
    if data.raw.item["brass-alloy"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-2", { "brass-alloy", 1 })
      bobmods.lib.tech.add_prerequisite("distractor", "zinc-processing")
    else
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-2", { "steel-plate", 1 })
    end

    if data.raw.item["brass-gear-wheel"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-2", { "brass-gear-wheel", 2 })
    else
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-2", { "iron-gear-wheel", 2 })
    end

    bobmods.lib.recipe.add_ingredient("robot-tool-combat-2", { "battery", 1 })

    if data.raw.item["glass"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-2", { "glass", 1 })
    end
  end

  if data.raw.recipe["robot-tool-combat-3"] then
    if data.raw.item["titanium-plate"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-3", { "titanium-plate", 1 })
    else
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-3", { "steel-plate", 1 })
    end
    if data.raw.item["titanium-gear-wheel"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-3", { "titanium-gear-wheel", 2 })
    else
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-3", { "iron-gear-wheel", 2 })
    end
    if data.raw.item["lithium-ion-battery"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-3", { "lithium-ion-battery", 1 })
    else
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-3", { "battery", 1 })
    end

    if data.raw.item["emerald-5"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-3", { "emerald-5", 1 })
      bobmods.lib.tech.add_prerequisite("destroyer", "gem-processing-3")
    end
  end

  if data.raw.recipe["robot-tool-combat-4"] then
    if data.raw.item["silicon-nitride"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-4", { "silicon-nitride", 1 })
    else
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-4", { "steel-plate", 1 })
    end
    if data.raw.item["nitinol-gear-wheel"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-4", { "nitinol-gear-wheel", 2 })
      bobmods.lib.tech.add_prerequisite("bob-laser-robot", "nitinol-processing")
    else
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-4", { "iron-gear-wheel", 2 })
    end
    if data.raw.item["silver-zinc-battery"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-4", { "silver-zinc-battery", 1 })
    else
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-4", { "battery", 1 })
    end
    if data.raw.item["diamond-5"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-4", { "diamond-5", 1 })
    end
  end

  if data.raw.recipe["robot-tool-combat"] then
    bobmods.lib.tech.add_recipe_unlock("defender", "robot-tool-combat")
    bobmods.lib.recipe.add_ingredient("defender-robot", { "robot-tool-combat", 1 })
  else
    bobmods.lib.recipe.add_ingredient("defender-robot", { "piercing-rounds-magazine", 1 })
  end

  if data.raw.recipe["robot-tool-combat-2"] then
    bobmods.lib.tech.add_recipe_unlock("distractor", "robot-tool-combat-2")
    bobmods.lib.recipe.add_ingredient("distractor-robot", { "robot-tool-combat-2", 1 })
  else
    bobmods.lib.recipe.add_ingredient("distractor-robot", { "laser-rifle-battery", 1 })
    bobmods.lib.tech.add_prerequisite("distractor", "bob-laser-rifle")
  end

  if data.raw.recipe["robot-tool-combat-3"] then
    bobmods.lib.tech.add_recipe_unlock("destroyer", "robot-tool-combat-3")
    bobmods.lib.recipe.add_ingredient("destroyer-robot", { "robot-tool-combat-3", 1 })
  else
    bobmods.lib.recipe.add_ingredient("destroyer-robot", { "laser-rifle-battery-emerald", 1 })
    bobmods.lib.tech.add_prerequisite("destroyer", "bob-laser-rifle-ammo-3")
  end

  if data.raw.recipe["robot-tool-combat-4"] then
    bobmods.lib.tech.add_recipe_unlock("bob-laser-robot", "robot-tool-combat-4")
    bobmods.lib.recipe.add_ingredient("bob-laser-robot", { "robot-tool-combat-4", 1 })
  else
    bobmods.lib.recipe.add_ingredient("bob-laser-robot", { "laser-rifle-battery-diamond", 1 })
    bobmods.lib.tech.add_prerequisite("bob-laser-robot", "bob-laser-rifle-ammo-6")
  end
end
