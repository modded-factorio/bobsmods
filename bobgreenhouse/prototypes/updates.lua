data.raw.item["wood"].stack_size = 200

if data.raw["item-subgroup"]["bob-resource-chemical"] then
  bobmods.lib.item.set_subgroup("fertiliser", "bob-resource-chemical")
end

if data.raw["item-group"]["bob-intermediate-products"] then
  data.raw["item-subgroup"]["bob-greenhouse-items"].group = "bob-intermediate-products"
end

if data.raw.item["bob-glass"] then
  bobmods.lib.recipe.replace_ingredient("bob-greenhouse", "copper-plate", "bob-glass")
end

if data.raw.fluid.ammonia and data.raw.fluid["nitric-acid"] then
  data.raw.recipe["bob-fertiliser"].ingredients = {
    { type = "fluid", name = "nitric-acid", amount = 10 },
    { type = "fluid", name = "ammonia", amount = 10 },
  }
elseif data.raw.fluid.nitrogen then
  data.raw.recipe["bob-fertiliser"].ingredients = {
    { type = "fluid", name = "petroleum-gas", amount = 10 },
    { type = "fluid", name = "nitrogen", amount = 10 },
  }
end

if data.raw.technology["nitrogen-processing"] then
  bobmods.lib.tech.add_prerequisite("bob-fertiliser", "nitrogen-processing")
else
  bobmods.lib.tech.add_prerequisite("bob-fertiliser", "sulfur-processing")
end

if feature_flags["quality"] then
  bobmods.lib.recipe.update_recycling_recipe_single("bob-greenhouse", false)
  bobmods.lib.recipe.update_recycling_recipe_to_self_recipe("wood-pellets", false)
end
