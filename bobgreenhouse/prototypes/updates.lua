data.raw.item["wood"].stack_size = 200

if data.raw["item-subgroup"]["bob-resource-chemical"] then
  bobmods.lib.item.set_subgroup("fertiliser", "bob-resource-chemical")
end

if data.raw.item["bob-glass"] then
  bobmods.lib.recipe.replace_ingredient("bob-greenhouse", "copper-plate", "bob-glass")
end

if data.raw.fluid["ammonia"] and data.raw.fluid["bob-nitric-acid"] then
  data.raw.recipe["bob-fertiliser"].ingredients = {
    { type = "fluid", name = "bob-nitric-acid", amount = 10 },
    { type = "fluid", name = "ammonia", amount = 10 },
  }
elseif data.raw.fluid["bob-nitrogen"] then
  data.raw.recipe["bob-fertiliser"].ingredients = {
    { type = "fluid", name = "petroleum-gas", amount = 10 },
    { type = "fluid", name = "bob-nitrogen", amount = 10 },
  }
end

if data.raw.technology["bob-nitrogen-processing"] then
  bobmods.lib.tech.add_prerequisite("bob-fertiliser", "bob-nitrogen-processing")
else
  bobmods.lib.tech.add_prerequisite("bob-fertiliser", "sulfur-processing")
end

if feature_flags["quality"] then
  bobmods.lib.recipe.update_recycling_recipe_single("bob-greenhouse", false)
  bobmods.lib.recipe.update_recycling_recipe_to_self_recipe("wood-pellets", false)
end
