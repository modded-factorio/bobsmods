bobmods.lib.tech.add_recipe_unlock("robotics", "bob-robot-drone-frame")
bobmods.lib.tech.add_recipe_unlock("robotics", "bob-robot-drone-frame-large")

if data.raw.item["bob-robot-brain-combat"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-robot-gun-drone",
    { type = "item", name = "bob-robot-brain-combat", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-robot-laser-drone",
    { type = "item", name = "bob-robot-brain-combat", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-robot-flamethrower-drone",
    { type = "item", name = "bob-robot-brain-combat", amount = 1 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-robot-plasma-drone",
    { type = "item", name = "bob-robot-brain-combat", amount = 1 }
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
  bobmods.lib.recipe.replace_ingredient("bob-robot-drone-frame", "iron-gear-wheel", "bob-steel-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-robot-drone-frame-large", "iron-gear-wheel", "bob-steel-gear-wheel")
end

if data.raw.item["bob-steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-robot-drone-frame", { type = "item", name = "bob-steel-bearing", amount = 10 })
  bobmods.lib.recipe.add_ingredient(
    "bob-robot-drone-frame-large",
    { type = "item", name = "bob-steel-bearing", amount = 10 }
  )
end
