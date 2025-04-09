if data.raw.item["bob-basic-circuit-board"] then
  bobmods.lib.recipe.replace_ingredient("bob-electrolyser", "electronic-circuit", "bob-basic-circuit-board")
end

if data.raw.item["bob-stone-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-electrolyser", "pipe", "bob-stone-pipe")
end

if data.raw.item["bob-copper-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-air-pump", "pipe", "bob-copper-pipe")
  bobmods.lib.recipe.replace_ingredient("bob-water-pump", "pipe", "bob-copper-pipe")
  bobmods.lib.recipe.replace_ingredient("bob-void-pump", "pipe", "bob-copper-pipe")
  if data.raw.recipe["bob-distillery"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery", "pipe", "bob-copper-pipe")
  end
end

if data.raw.item["bob-steel-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-electric-chemical-furnace", "pipe", "bob-steel-pipe")
  bobmods.lib.recipe.replace_ingredient("bob-steel-chemical-furnace", "pipe", "bob-steel-pipe")
end

if data.raw.item["bob-bronze-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-air-pump-2", "pipe", "bob-bronze-pipe")
  bobmods.lib.recipe.replace_ingredient("bob-water-pump-2", "pipe", "bob-bronze-pipe")
end

if data.raw.item["bob-brass-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-air-pump-3", "pipe", "bob-brass-pipe")
  bobmods.lib.recipe.replace_ingredient("bob-water-pump-3", "pipe", "bob-brass-pipe")
end

if settings.startup["bobmods-plates-convert-recipes"].value == true then
  if data.raw.item["bob-steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-steel-chemical-furnace-from-steel-furnace", "pipe", "bob-steel-pipe")
    bobmods.lib.recipe.replace_ingredient(
      "bob-electric-chemical-furnace-from-electric-furnace",
      "pipe",
      "bob-steel-pipe"
    )

    bobmods.lib.recipe.remove_result("bob-steel-furnace-from-steel-chemical-furnace", "pipe")
    bobmods.lib.recipe.add_result(
      "bob-steel-furnace-from-steel-chemical-furnace",
      { type = "item", name = "bob-steel-pipe", amount = 5 }
    )

    bobmods.lib.recipe.remove_result("bob-electric-furnace-from-electric-chemical-furnace", "pipe")
    bobmods.lib.recipe.add_result(
      "bob-electric-furnace-from-electric-chemical-furnace",
      { type = "item", name = "bob-steel-pipe", amount = 5 }
    )
  end

  bobmods.lib.tech.add_recipe_unlock("bob-chemical-processing-1", "bob-stone-chemical-furnace-from-stone-furnace")
  bobmods.lib.tech.add_recipe_unlock("bob-chemical-processing-1", "bob-stone-furnace-from-stone-chemical-furnace")
  bobmods.lib.tech.add_recipe_unlock("bob-steel-chemical-furnace", "bob-steel-chemical-furnace-from-steel-furnace")
  bobmods.lib.tech.add_recipe_unlock("bob-steel-chemical-furnace", "bob-steel-furnace-from-steel-chemical-furnace")
  bobmods.lib.tech.add_recipe_unlock(
    "bob-electric-chemical-furnace",
    "bob-electric-chemical-furnace-from-electric-furnace"
  )
  bobmods.lib.tech.add_recipe_unlock(
    "bob-electric-chemical-furnace",
    "bob-electric-furnace-from-electric-chemical-furnace"
  )

  bobmods.lib.tech.add_recipe_unlock("bob-alloy-processing", "bob-stone-mixing-furnace-from-stone-furnace")
  bobmods.lib.tech.add_recipe_unlock("bob-alloy-processing", "bob-stone-furnace-from-stone-mixing-furnace")
  bobmods.lib.tech.add_recipe_unlock("bob-steel-mixing-furnace", "bob-steel-mixing-furnace-from-steel-furnace")
  bobmods.lib.tech.add_recipe_unlock("bob-steel-mixing-furnace", "bob-steel-furnace-from-steel-mixing-furnace")
  bobmods.lib.tech.add_recipe_unlock("bob-electric-mixing-furnace", "bob-electric-mixing-furnace-from-electric-furnace")
  bobmods.lib.tech.add_recipe_unlock("bob-electric-mixing-furnace", "bob-electric-furnace-from-electric-mixing-furnace")
end
