if data.raw.item["basic-circuit-board"] then
  bobmods.lib.recipe.replace_ingredient("bob-electrolyser", "electronic-circuit", "basic-circuit-board")
end

if data.raw.item["stone-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-electrolyser", "pipe", "stone-pipe")
end

if data.raw.item["copper-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-air-pump", "pipe", "copper-pipe")
  bobmods.lib.recipe.replace_ingredient("bob-water-pump", "pipe", "copper-pipe")
  bobmods.lib.recipe.replace_ingredient("bob-void-pump", "pipe", "copper-pipe")
  if data.raw.recipe["bob-distillery"] then
    bobmods.lib.recipe.replace_ingredient("bob-distillery", "pipe", "copper-pipe")
  end
end

if data.raw.item["steel-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-electric-chemical-furnace", "pipe", "steel-pipe")
  bobmods.lib.recipe.replace_ingredient("bob-steel-chemical-furnace", "pipe", "steel-pipe")
end

if data.raw.item["bronze-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-air-pump-2", "pipe", "bronze-pipe")
  bobmods.lib.recipe.replace_ingredient("bob-water-pump-2", "pipe", "bronze-pipe")
end

if data.raw.item["brass-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-air-pump-3", "pipe", "brass-pipe")
  bobmods.lib.recipe.replace_ingredient("bob-water-pump-3", "pipe", "brass-pipe")
end

if settings.startup["bobmods-plates-convert-recipes"].value == true then
  if data.raw.item["steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("steel-chemical-furnace-from-steel-furnace", "pipe", "steel-pipe")
    bobmods.lib.recipe.replace_ingredient("electric-chemical-furnace-from-electric-furnace", "pipe", "steel-pipe")

    bobmods.lib.recipe.remove_result("steel-furnace-from-steel-chemical-furnace", "pipe")
    bobmods.lib.recipe.add_result(
      "steel-furnace-from-steel-chemical-furnace",
      { type = "item", name = "steel-pipe", amount = 5 }
    )

    bobmods.lib.recipe.remove_result("electric-furnace-from-electric-chemical-furnace", "pipe")
    bobmods.lib.recipe.add_result(
      "electric-furnace-from-electric-chemical-furnace",
      { type = "item", name = "steel-pipe", amount = 5 }
    )
  end

  bobmods.lib.tech.add_recipe_unlock("bob-chemical-processing-1", "stone-chemical-furnace-from-stone-furnace")
  bobmods.lib.tech.add_recipe_unlock("bob-chemical-processing-1", "stone-furnace-from-stone-chemical-furnace")
  bobmods.lib.tech.add_recipe_unlock("bob-steel-chemical-furnace", "steel-chemical-furnace-from-steel-furnace")
  bobmods.lib.tech.add_recipe_unlock("bob-steel-chemical-furnace", "steel-furnace-from-steel-chemical-furnace")
  bobmods.lib.tech.add_recipe_unlock("bob-electric-chemical-furnace", "electric-chemical-furnace-from-electric-furnace")
  bobmods.lib.tech.add_recipe_unlock("bob-electric-chemical-furnace", "electric-furnace-from-electric-chemical-furnace")

  bobmods.lib.tech.add_recipe_unlock("bob-alloy-processing", "stone-mixing-furnace-from-stone-furnace")
  bobmods.lib.tech.add_recipe_unlock("bob-alloy-processing", "stone-furnace-from-stone-mixing-furnace")
  bobmods.lib.tech.add_recipe_unlock("bob-steel-mixing-furnace", "steel-mixing-furnace-from-steel-furnace")
  bobmods.lib.tech.add_recipe_unlock("bob-steel-mixing-furnace", "steel-furnace-from-steel-mixing-furnace")
  bobmods.lib.tech.add_recipe_unlock("bob-electric-mixing-furnace", "electric-mixing-furnace-from-electric-furnace")
  bobmods.lib.tech.add_recipe_unlock("bob-electric-mixing-furnace", "electric-furnace-from-electric-mixing-furnace")
end
