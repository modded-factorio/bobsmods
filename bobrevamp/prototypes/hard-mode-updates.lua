if data.raw.fluid["carbon-dioxide"] then
  bobmods.lib.create_gas_bottle(data.raw.fluid["carbon-dioxide"])
end

if bobmods.plates and settings.startup["bobmods-revamp-hardmode"].value == true then
  bobmods.lib.recipe.replace_ingredient("calcium-chloride", "stone", "limestone")
  bobmods.lib.recipe.set_ingredient("calcium-chloride", { type = "fluid", name = "hydrogen-chloride", amount = 50 })
  bobmods.lib.recipe.add_result(
    "calcium-chloride",
    { type = "fluid", name = "hydrogen", amount = 20, catalyst_amount = 20 }
  )
  data.raw.recipe["calcium-chloride"].main_product = "calcium-chloride"

  bobmods.lib.recipe.set_ingredient("petroleum-gas-cracking", { type = "fluid", name = "water", amount = 20 })
  --  bobmods.lib.recipe.add_result("petroleum-gas-cracking", {type = "fluid", name = "carbon-dioxide", amount = 25, catalyst_amount = 25})
  --  data.raw.recipe["petroleum-gas-cracking"].emissions_multiplier = 0.2

  bobmods.lib.tech.add_recipe_unlock("chemical-processing-2", "limestone")

  bobmods.lib.tech.add_recipe_unlock("lithium-processing", "sodium-chlorate")
  bobmods.lib.tech.add_recipe_unlock("lithium-processing", "sodium-perchlorate")
  if data.raw.fluid["pure-water"] then
    bobmods.lib.recipe.replace_ingredient("sodium-chlorate", "water", "pure-water")
    bobmods.lib.recipe.replace_ingredient("sodium-perchlorate", "water", "pure-water")
  end

  bobmods.lib.recipe.replace_ingredient("cobalt-oxide", "stone", "limestone")
  bobmods.lib.recipe.replace_ingredient("cobalt-oxide-from-copper", "stone", "limestone")
  bobmods.lib.tech.replace_prerequisite("cobalt-processing", "chemical-processing-1", "chemical-processing-2")

  bobmods.lib.tech.add_recipe_unlock("chemical-processing-2", "carbon-dioxide")
  bobmods.lib.tech.add_recipe_unlock("advanced-oil-processing", "carbon-dioxide-oil-processing")

  bobmods.lib.recipe.replace_ingredient("sulfuric-acid-2", "water", "hydrogen-peroxide")
  bobmods.lib.recipe.replace_ingredient("nitric-acid", "water", "hydrogen-peroxide")
  bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "hydrogen-peroxide")
  bobmods.lib.tech.add_recipe_unlock("nitrogen-processing", "hydrogen-peroxide")
  bobmods.lib.tech.remove_recipe_unlock("hydrazine", "hydrogen-peroxide")

  bobmods.lib.module.add_productivity_limitation("limestone")
  bobmods.lib.module.add_productivity_limitation("sodium-chlorate")
  bobmods.lib.module.add_productivity_limitation("sodium-perchlorate")
  bobmods.lib.module.add_productivity_limitation("carbon-dioxide")
  bobmods.lib.module.add_productivity_limitation("carbon-dioxide-oil-processing")
end
