if data.raw.fluid["carbon-dioxide"] then
  bobmods.lib.create_gas_bottle(data.raw.fluid["carbon-dioxide"])
end

if bobmods.plates and settings.startup["bobmods-revamp-hardmode"].value == true then
  bobmods.lib.recipe.replace_ingredient("bob-calcium-chloride", "stone", "limestone")
  bobmods.lib.recipe.set_ingredient("bob-calcium-chloride", { type = "fluid", name = "bob-hydrogen-chloride", amount = 50 })
  bobmods.lib.recipe.add_result(
    "bob-calcium-chloride",
    { type = "fluid", name = "bob-hydrogen", amount = 20, ignored_by_productivity = 20 }
  )
  data.raw.recipe["bob-calcium-chloride"].main_product = "calcium-chloride"

  bobmods.lib.recipe.set_ingredient("petroleum-gas-cracking", { type = "fluid", name = "water", amount = 20 })

  bobmods.lib.tech.add_recipe_unlock("chemical-processing-2", "limestone")

  bobmods.lib.tech.add_recipe_unlock("lithium-processing", "sodium-chlorate")
  bobmods.lib.tech.add_recipe_unlock("lithium-processing", "sodium-perchlorate")
  if data.raw.fluid["bob-pure-water"] then
    bobmods.lib.recipe.replace_ingredient("sodium-chlorate", "water", "bob-pure-water")
    bobmods.lib.recipe.replace_ingredient("sodium-perchlorate", "water", "bob-pure-water")
  end

  bobmods.lib.recipe.replace_ingredient("bob-cobalt-oxide", "stone", "limestone")
  bobmods.lib.recipe.replace_ingredient("bob-cobalt-oxide-from-copper", "stone", "limestone")
  bobmods.lib.tech.replace_prerequisite("cobalt-processing", "chemical-processing-1", "chemical-processing-2")

  bobmods.lib.tech.add_recipe_unlock("chemical-processing-2", "carbon-dioxide")
  bobmods.lib.tech.add_recipe_unlock("advanced-oil-processing", "carbon-dioxide-oil-processing")
  bobmods.lib.tech.add_prerequisite("advanced-oil-processing", "chemical-processing-2")

  bobmods.lib.recipe.replace_ingredient("sulfuric-acid-2", "water", "hydrogen-peroxide")
  bobmods.lib.recipe.replace_ingredient("bob-nitric-acid", "water", "hydrogen-peroxide")
  bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "hydrogen-peroxide")
  bobmods.lib.tech.add_recipe_unlock("nitrogen-processing", "hydrogen-peroxide")
  bobmods.lib.tech.remove_recipe_unlock("hydrazine", "hydrogen-peroxide")
end
