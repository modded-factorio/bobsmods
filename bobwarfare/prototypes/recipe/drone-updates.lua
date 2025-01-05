bobmods.lib.tech.add_recipe_unlock("robotics", "robot-drone-frame")
bobmods.lib.tech.add_recipe_unlock("robotics", "robot-drone-frame-large")

if data.raw.item["robot-brain-combat"] then
  bobmods.lib.recipe.add_ingredient("bob-robot-gun-drone", { type = "item", name = "robot-brain-combat", amount = 1 })
  bobmods.lib.recipe.add_ingredient("bob-robot-laser-drone", { type = "item", name = "robot-brain-combat", amount = 1 })
  bobmods.lib.recipe.add_ingredient(
    "bob-robot-flamethrower-drone",
    { type = "item", name = "robot-brain-combat", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-robot-plasma-drone",
    { type = "item", name = "robot-brain-combat", amount = 1 }
  )
else
  bobmods.lib.recipe.add_ingredient("bob-robot-gun-drone", { type = "item", name = "electronic-circuit", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-robot-laser-drone", { type = "item", name = "electronic-circuit", amount = 3 })
  bobmods.lib.recipe.add_ingredient(
    "bob-robot-flamethrower-drone",
    { type = "item", name = "electronic-circuit", amount = 3 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-robot-plasma-drone",
    { type = "item", name = "electronic-circuit", amount = 3 }
  )
end

if data.raw.item["bob-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("robot-drone-frame", "iron-gear-wheel", "bob-steel-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("robot-drone-frame-large", "iron-gear-wheel", "bob-steel-gear-wheel")
end

if data.raw.item["bob-steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("robot-drone-frame", { type = "item", name = "bob-steel-bearing", amount = 10 })
  bobmods.lib.recipe.add_ingredient(
    "robot-drone-frame-large",
    { type = "item", name = "bob-steel-bearing", amount = 10 }
  )
end
