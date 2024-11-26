if settings.startup["bobmods-warfare-robotupdate"].value == true then
  data.raw.recipe["defender-capsule"].ingredients = { { type = "item", name = "defender-robot", amount = 1 } }
  data.raw.recipe["defender-capsule"].energy_required = 1
  data.raw.recipe["distractor-capsule"].ingredients = { { type = "item", name = "distractor-robot", amount = 3 } }
  data.raw.recipe["distractor-capsule"].energy_required = 1
  data.raw.recipe["destroyer-capsule"].ingredients = { { type = "item", name = "destroyer-robot", amount = 5 } }
  data.raw.recipe["destroyer-capsule"].energy_required = 1

  bobmods.lib.tech.add_recipe_unlock("defender", "defender-robot")
  bobmods.lib.tech.add_recipe_unlock("distractor", "distractor-robot")
  bobmods.lib.tech.add_recipe_unlock("destroyer", "destroyer-robot")

  if bobmods.warfare.RobotRequirePrevious == true then
    bobmods.lib.recipe.add_ingredient("distractor-robot", { type = "item", name = "defender-robot", amount = 1 })
    bobmods.lib.recipe.add_ingredient("destroyer-robot", { type = "item", name = "distractor-robot", amount = 1 })
    bobmods.lib.recipe.add_ingredient("bob-laser-robot", { type = "item", name = "destroyer-robot", amount = 1 })
  end

  if bobmods.warfare.FlyingRobotFrames == true then
    bobmods.lib.recipe.add_ingredient("defender-robot", { type = "item", name = "flying-robot-frame", amount = 1 })
    bobmods.lib.tech.add_prerequisite("defender", "robotics")

    if data.raw.item["flying-robot-frame-2"] then
      bobmods.lib.recipe.add_ingredient(
        "distractor-robot",
        { type = "item", name = "flying-robot-frame-2", amount = 1 }
      )
      bobmods.lib.tech.add_prerequisite("distractor", "bob-robotics-2")
    else
      bobmods.lib.recipe.add_ingredient("distractor-robot", { "flying-robot-frame", 1 })
    end

    if data.raw.item["flying-robot-frame-3"] then
      bobmods.lib.recipe.add_ingredient("destroyer-robot", { type = "item", name = "flying-robot-frame-3", amount = 1 })
      bobmods.lib.tech.add_prerequisite("destroyer", "bob-robotics-3")
    else
      bobmods.lib.recipe.add_ingredient("destroyer-robot", { type = "item", name = "flying-robot-frame", amount = 1 })
    end

    if data.raw.item["flying-robot-frame-4"] then
      bobmods.lib.recipe.add_ingredient("bob-laser-robot", { type = "item", name = "flying-robot-frame-4", amount = 1 })
      bobmods.lib.tech.add_prerequisite("bob-laser-robot", "bob-robotics-4")
    else
      bobmods.lib.recipe.add_ingredient("bob-laser-robot", { "flying-robot-frame", 1 })
    end
  else
    bobmods.lib.recipe.add_ingredient("defender-robot", { type = "item", name = "steel-plate", amount = 1 })
    bobmods.lib.recipe.add_ingredient("defender-robot", { type = "item", name = "electronic-circuit", amount = 1 })
    bobmods.lib.recipe.add_ingredient("defender-robot", { type = "item", name = "iron-gear-wheel", amount = 3 })

    if data.raw.item["bob-aluminium-plate"] then
      bobmods.lib.recipe.add_ingredient("distractor-robot", { type = "item", name = "bob-aluminium-plate", amount = 1 })
    else
      bobmods.lib.recipe.add_ingredient("distractor-robot", { type = "item", name = "steel-plate", amount = 1 })
    end
    bobmods.lib.recipe.add_ingredient("distractor-robot", { type = "item", name = "advanced-circuit", amount = 1 })
    if data.raw.item["brass-gear-wheel"] then
      bobmods.lib.recipe.add_ingredient("distractor-robot", { type = "item", name = "brass-gear-wheel", amount = 3 })
      bobmods.lib.tech.add_prerequisite("distractor", "zinc-processing")
    else
      bobmods.lib.recipe.add_ingredient("distractor-robot", { type = "item", name = "iron-gear-wheel", amount = 3 })
    end

    if data.raw.item["bob-titanium-plate"] then
      bobmods.lib.recipe.add_ingredient("destroyer-robot", { type = "item", name = "bob-titanium-plate", amount = 1 })
      bobmods.lib.tech.add_prerequisite("destroyer", "titanium-processing")
    else
      bobmods.lib.recipe.add_ingredient("destroyer-robot", { type = "item", name = "steel-plate", amount = 1 })
    end
    bobmods.lib.recipe.add_ingredient("destroyer-robot", { type = "item", name = "processing-unit", amount = 1 })
    bobmods.lib.tech.add_prerequisite("destroyer", "processing-unit")
    if data.raw.item["titanium-gear-wheel"] then
      bobmods.lib.recipe.add_ingredient("destroyer-robot", { type = "item", name = "titanium-gear-wheel", amount = 3 })
    else
      bobmods.lib.recipe.add_ingredient("destroyer-robot", { type = "item", name = "iron-gear-wheel", amount = 3 })
    end

    if data.raw.item["silicon-nitride"] then
      bobmods.lib.recipe.add_ingredient("bob-laser-robot", { type = "item", name = "silicon-nitride", amount = 1 })
      bobmods.lib.tech.add_prerequisite("bob-laser-robot", "ceramics")
    else
      bobmods.lib.recipe.add_ingredient("bob-laser-robot", { type = "item", name = "steel-plate", amount = 1 })
    end
    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient(
        "bob-laser-robot",
        { type = "item", name = "advanced-processing-unit", amount = 1 }
      )
      bobmods.lib.tech.add_prerequisite("bob-laser-robot", "advanced-electronics-3")
    else
      bobmods.lib.recipe.add_ingredient("bob-laser-robot", { type = "item", name = "processing-unit", amount = 1 })
    end
    if data.raw.item["nitinol-gear-wheel"] then
      bobmods.lib.recipe.add_ingredient("bob-laser-robot", { type = "item", name = "nitinol-gear-wheel", amount = 3 })
      bobmods.lib.tech.add_prerequisite("bob-laser-robot", "nitinol-processing")
    else
      bobmods.lib.recipe.add_ingredient("bob-laser-robot", { type = "item", name = "iron-gear-wheel", amount = 3 })
    end
  end

  if data.raw.recipe["robot-brain-combat"] then
    if data.raw["recipe-category"]["electronics"] then
      data.raw.recipe["robot-brain-combat"].category = "electronics"
    end
    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_ingredient("robot-brain-combat", { type = "item", name = "solder", amount = 5 })
    end
  end

  if data.raw.recipe["robot-brain-combat-2"] then
    if data.raw["recipe-category"]["electronics"] then
      data.raw.recipe["robot-brain-combat-2"].category = "electronics"
    end
    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-2", { type = "item", name = "solder", amount = 5 })
    end
  end

  if data.raw.recipe["robot-brain-combat-3"] then
    if data.raw["recipe-category"]["electronics"] then
      data.raw.recipe["robot-brain-combat-3"].category = "electronics"
    end
    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-3", { type = "item", name = "solder", amount = 5 })
    end
  end

  if data.raw.recipe["robot-brain-combat-4"] then
    if data.raw["recipe-category"]["electronics"] then
      data.raw.recipe["robot-brain-combat-4"].category = "electronics"
    end
    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_ingredient("robot-brain-combat-4", { type = "item", name = "solder", amount = 5 })
    end
    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.set_ingredient("robot-brain-combat-4", { type = "item", name = "processing-unit", amount = 1 })
      bobmods.lib.recipe.add_ingredient(
        "robot-brain-combat-4",
        { type = "item", name = "advanced-processing-unit", amount = 1 }
      )
    end
  end

  if data.raw.recipe["robot-brain-combat"] then
    bobmods.lib.tech.add_recipe_unlock("defender", "robot-brain-combat")
    bobmods.lib.recipe.add_ingredient("defender-robot", { type = "item", name = "robot-brain-combat", amount = 1 })
  else
    bobmods.lib.recipe.add_ingredient("defender-robot", { type = "item", name = "electronic-circuit", amount = 1 })
  end
  if data.raw.recipe["robot-brain-combat-2"] then
    bobmods.lib.tech.add_recipe_unlock("distractor", "robot-brain-combat-2")
    bobmods.lib.recipe.add_ingredient("distractor-robot", { type = "item", name = "robot-brain-combat-2", amount = 1 })
  else
    bobmods.lib.recipe.add_ingredient("distractor-robot", { type = "item", name = "advanced-circuit", amount = 1 })
  end
  if data.raw.recipe["robot-brain-combat-3"] then
    bobmods.lib.tech.add_recipe_unlock("destroyer", "robot-brain-combat-3")
    bobmods.lib.recipe.add_ingredient("destroyer-robot", { type = "item", name = "robot-brain-combat-3", amount = 1 })
  else
    bobmods.lib.recipe.add_ingredient("destroyer-robot", { type = "item", name = "processing-unit", amount = 1 })
  end
  if data.raw.recipe["robot-brain-combat-4"] then
    bobmods.lib.tech.add_recipe_unlock("bob-laser-robot", "robot-brain-combat-4")
    bobmods.lib.recipe.add_ingredient("bob-laser-robot", { type = "item", name = "robot-brain-combat-4", amount = 1 })
  else
    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.add_ingredient(
        "bob-laser-robot",
        { type = "item", name = "advanced-processing-unit", amount = 1 }
      )
    else
      bobmods.lib.recipe.add_ingredient("bob-laser-robot", { type = "item", name = "processing-unit", amount = 1 })
    end
  end

  if data.raw.recipe["robot-tool-combat"] then
    bobmods.lib.recipe.add_ingredient("robot-tool-combat", { type = "item", name = "steel-plate", amount = 1 })
    if data.raw.item["steel-gear-wheel"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat", { type = "item", name = "steel-gear-wheel", amount = 5 })
    else
      bobmods.lib.recipe.add_ingredient("robot-tool-combat", { type = "item", name = "iron-gear-wheel", amount = 5 })
    end
  end

  if data.raw.recipe["robot-tool-combat-2"] then
    if data.raw.item["brass-alloy"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-2", { type = "item", name = "brass-alloy", amount = 1 })
      bobmods.lib.tech.add_prerequisite("distractor", "zinc-processing")
    else
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-2", { type = "item", name = "steel-plate", amount = 1 })
    end

    if data.raw.item["brass-gear-wheel"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-2", { type = "item", name = "brass-gear-wheel", amount = 2 })
    else
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-2", { type = "item", name = "iron-gear-wheel", amount = 2 })
    end

    bobmods.lib.recipe.add_ingredient("robot-tool-combat-2", { type = "item", name = "battery", amount = 1 })

    if data.raw.item["bob-glass"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-2", { type = "item", name = "bob-glass", amount = 1 })
    end
  end

  if data.raw.recipe["robot-tool-combat-3"] then
    if data.raw.item["bob-titanium-plate"] then
      bobmods.lib.recipe.add_ingredient(
        "robot-tool-combat-3",
        { type = "item", name = "bob-titanium-plate", amount = 1 }
      )
    else
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-3", { type = "item", name = "steel-plate", amount = 1 })
    end
    if data.raw.item["titanium-gear-wheel"] then
      bobmods.lib.recipe.add_ingredient(
        "robot-tool-combat-3",
        { type = "item", name = "titanium-gear-wheel", amount = 2 }
      )
    else
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-3", { type = "item", name = "iron-gear-wheel", amount = 2 })
    end
    if data.raw.item["lithium-ion-battery"] then
      bobmods.lib.recipe.add_ingredient(
        "robot-tool-combat-3",
        { type = "item", name = "lithium-ion-battery", amount = 1 }
      )
    else
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-3", { type = "item", name = "battery", amount = 1 })
    end

    if data.raw.item["bob-emerald-5"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-3", { type = "item", name = "bob-emerald-5", amount = 1 })
      bobmods.lib.tech.add_prerequisite("destroyer", "gem-processing-3")
    end
  end

  if data.raw.recipe["robot-tool-combat-4"] then
    if data.raw.item["silicon-nitride"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-4", { type = "item", name = "silicon-nitride", amount = 1 })
    else
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-4", { type = "item", name = "steel-plate", amount = 1 })
    end
    if data.raw.item["nitinol-gear-wheel"] then
      bobmods.lib.recipe.add_ingredient(
        "robot-tool-combat-4",
        { type = "item", name = "nitinol-gear-wheel", amount = 2 }
      )
      bobmods.lib.tech.add_prerequisite("bob-laser-robot", "nitinol-processing")
    else
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-4", { type = "item", name = "iron-gear-wheel", amount = 2 })
    end
    if data.raw.item["silver-zinc-battery"] then
      bobmods.lib.recipe.add_ingredient(
        "robot-tool-combat-4",
        { type = "item", name = "silver-zinc-battery", amount = 1 }
      )
    else
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-4", { type = "item", name = "battery", amount = 1 })
    end
    if data.raw.item["bob-diamond-5"] then
      bobmods.lib.recipe.add_ingredient("robot-tool-combat-4", { type = "item", name = "bob-diamond-5", amount = 1 })
    end
  end

  if data.raw.recipe["robot-tool-combat"] then
    bobmods.lib.tech.add_recipe_unlock("defender", "robot-tool-combat")
    bobmods.lib.recipe.add_ingredient("defender-robot", { type = "item", name = "robot-tool-combat", amount = 1 })
  else
    bobmods.lib.recipe.add_ingredient(
      "defender-robot",
      { type = "item", name = "piercing-rounds-magazine", amount = 1 }
    )
  end

  if data.raw.recipe["robot-tool-combat-2"] then
    bobmods.lib.tech.add_recipe_unlock("distractor", "robot-tool-combat-2")
    bobmods.lib.recipe.add_ingredient("distractor-robot", { type = "item", name = "robot-tool-combat-2", amount = 1 })
  else
    bobmods.lib.recipe.add_ingredient("distractor-robot", { type = "item", name = "laser-rifle-battery", amount = 1 })
    bobmods.lib.tech.add_prerequisite("distractor", "bob-laser-rifle")
  end

  if data.raw.recipe["robot-tool-combat-3"] then
    bobmods.lib.tech.add_recipe_unlock("destroyer", "robot-tool-combat-3")
    bobmods.lib.recipe.add_ingredient("destroyer-robot", { type = "item", name = "robot-tool-combat-3", amount = 1 })
  else
    bobmods.lib.recipe.add_ingredient(
      "destroyer-robot",
      { type = "item", name = "laser-rifle-battery-emerald", amount = 1 }
    )
    bobmods.lib.tech.add_prerequisite("destroyer", "bob-laser-rifle-ammo-3")
  end

  if data.raw.recipe["robot-tool-combat-4"] then
    bobmods.lib.tech.add_recipe_unlock("bob-laser-robot", "robot-tool-combat-4")
    bobmods.lib.recipe.add_ingredient("bob-laser-robot", { type = "item", name = "robot-tool-combat-4", amount = 1 })
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-laser-robot",
      { type = "item", name = "laser-rifle-battery-diamond", amount = 1 }
    )
    bobmods.lib.tech.add_prerequisite("bob-laser-robot", "bob-laser-rifle-ammo-6")
  end
end
