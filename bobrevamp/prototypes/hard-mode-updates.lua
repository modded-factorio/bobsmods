if data.raw.fluid["bob-carbon-dioxide"] then
  bobmods.lib.create_gas_bottle(data.raw.fluid["bob-carbon-dioxide"])
end

if bobmods.plates and settings.startup["bobmods-revamp-hardmode"].value == true then
  bobmods.lib.recipe.replace_ingredient("bob-calcium-chloride", "stone", "bob-limestone")
  bobmods.lib.recipe.set_ingredient(
    "bob-calcium-chloride",
    { type = "fluid", name = "bob-hydrogen-chloride", amount = 50 }
  )
  bobmods.lib.recipe.add_result(
    "bob-calcium-chloride",
    { type = "fluid", name = "bob-hydrogen", amount = 20, ignored_by_productivity = 20 }
  )
  data.raw.recipe["bob-calcium-chloride"].main_product = "bob-calcium-chloride"

  bobmods.lib.recipe.set_ingredient("bob-petroleum-gas-cracking", { type = "fluid", name = "water", amount = 20 })

  bobmods.lib.tech.add_recipe_unlock("bob-chemical-processing-2", "bob-limestone")

  bobmods.lib.tech.add_recipe_unlock("bob-lithium-processing", "bob-sodium-chlorate")
  bobmods.lib.tech.add_recipe_unlock("bob-lithium-processing", "bob-sodium-perchlorate")
  if data.raw.fluid["bob-pure-water"] then
    bobmods.lib.recipe.replace_ingredient("bob-sodium-chlorate", "water", "bob-pure-water")
    bobmods.lib.recipe.replace_ingredient("bob-sodium-perchlorate", "water", "bob-pure-water")
  end

  bobmods.lib.recipe.replace_ingredient("bob-cobalt-oxide", "stone", "bob-limestone")
  bobmods.lib.recipe.replace_ingredient("bob-cobalt-oxide-from-copper", "stone", "bob-limestone")
  bobmods.lib.tech.replace_prerequisite(
    "bob-cobalt-processing",
    "bob-chemical-processing-1",
    "bob-chemical-processing-2"
  )

  bobmods.lib.tech.add_recipe_unlock("bob-chemical-processing-2", "bob-carbon-dioxide")
  bobmods.lib.tech.add_recipe_unlock("advanced-oil-processing", "bob-carbon-dioxide-oil-processing")
  bobmods.lib.tech.add_prerequisite("advanced-oil-processing", "bob-chemical-processing-2")

  bobmods.lib.recipe.replace_ingredient("bob-sulfuric-acid-2", "water", "bob-hydrogen-peroxide")
  bobmods.lib.recipe.replace_ingredient("bob-nitric-acid", "water", "bob-hydrogen-peroxide")
  bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "bob-hydrogen-peroxide")
  bobmods.lib.tech.add_recipe_unlock("bob-nitrogen-processing", "bob-hydrogen-peroxide")
  bobmods.lib.tech.remove_recipe_unlock("bob-hydrazine", "bob-hydrogen-peroxide")
end
