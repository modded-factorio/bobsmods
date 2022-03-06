bobmods.lib.tech.add_recipe_unlock("robotics", "robot-drone-frame")
bobmods.lib.tech.add_recipe_unlock("robotics", "robot-drone-frame-large")


if data.raw.item["robot-brain-combat"] then
  bobmods.lib.recipe.add_ingredient("bob-robot-gun-drone", {"robot-brain-combat", 1})
  bobmods.lib.recipe.add_ingredient("bob-robot-laser-drone", {"robot-brain-combat", 1})
  bobmods.lib.recipe.add_ingredient("bob-robot-flamethrower-drone", {"robot-brain-combat", 1})
  bobmods.lib.recipe.add_ingredient("bob-robot-plasma-drone", {"robot-brain-combat", 1})
else
  bobmods.lib.recipe.add_ingredient("bob-robot-gun-drone", {"electronic-circuit", 3})
  bobmods.lib.recipe.add_ingredient("bob-robot-laser-drone", {"electronic-circuit", 3})
  bobmods.lib.recipe.add_ingredient("bob-robot-flamethrower-drone", {"electronic-circuit", 3})
  bobmods.lib.recipe.add_ingredient("bob-robot-plasma-drone", {"electronic-circuit", 3})
end


if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("robot-drone-frame", "iron-gear-wheel", "steel-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("robot-drone-frame-large", "iron-gear-wheel", "steel-gear-wheel")
end

if data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("robot-drone-frame", {"steel-bearing", 10})
  bobmods.lib.recipe.add_ingredient("robot-drone-frame-large", {"steel-bearing", 10})
end
