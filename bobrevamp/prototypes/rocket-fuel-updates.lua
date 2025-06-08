if data.raw.fluid["bob-ammonia"] and data.raw.fluid["bob-hydrazine"] and data.raw.fluid["bob-dinitrogen-tetroxide"] then
  if data.raw.fluid["bob-pure-water"] then
    bobmods.lib.recipe.remove_result("bob-hydrazine", "water")
    bobmods.lib.recipe.add_result("bob-hydrazine", { type = "fluid", name = "bob-pure-water", amount = 4 })
  end

  data.raw.recipe["rocket-fuel"].ingredients = {
    { type = "fluid", name = "bob-hydrazine", amount = 160 },
    { type = "fluid", name = "bob-dinitrogen-tetroxide", amount = 80 },
  }
  data.raw.recipe["rocket-fuel"].allow_productivity = false

  data.raw.recipe["rocket-fuel"].category = "chemistry"
  data.raw.recipe["rocket-fuel"].crafting_machine_tint = {
    primary = { r = 0.7, g = 0.7, b = 0.3, a = 0.000 },
    secondary = { r = 0.5, g = 0.5, b = 1.0, a = 0.000 },
    tertiary = { r = 0.2, g = 1.0, b = 0.2, a = 0.000 },
  }

  data.raw.item["rocket-fuel"].fuel_emissions_multiplier = 1.2

  if data.raw.technology["bob-nitrogen-processing"] then
    bobmods.lib.tech.add_recipe_unlock("bob-nitrogen-processing", "bob-ammonia")
    bobmods.lib.tech.add_prerequisite("bob-hydrazine", "bob-nitrogen-processing")
  else
    bobmods.lib.tech.add_recipe_unlock("bob-chemical-plant", "bob-ammonia")
    bobmods.lib.tech.add_recipe_unlock("bob-chemical-plant", "bob-nitrogen-dioxide")
    bobmods.lib.tech.add_prerequisite("bob-hydrazine", "bob-chemical-plant")
  end

  bobmods.lib.tech.add_prerequisite("rocket-silo", "rocket-fuel")

  if data.raw.recipe["bob-enriched-fuel-from-hydrazine"] then
    bobmods.lib.tech.add_recipe_unlock("bob-hydrazine", "bob-enriched-fuel-from-hydrazine")
    bobmods.lib.tech.add_prerequisite("bob-hydrazine", "flammables")
  end

  bobmods.lib.create_gas_bottle(data.raw.fluid["bob-ammonia"])
  bobmods.lib.create_gas_bottle(data.raw.fluid["bob-nitrogen-dioxide"])

  if data.raw.fluid["bob-nitric-oxide"] then
    if data.raw.fluid["bob-pure-water"] then
      bobmods.lib.recipe.remove_result("bob-nitric-oxide", "water")
      bobmods.lib.recipe.add_result("bob-nitric-oxide", { type = "fluid", name = "bob-pure-water", amount = 12 })
    end

    if data.raw.technology["bob-nitrogen-processing"] then
      bobmods.lib.tech.add_recipe_unlock("bob-nitrogen-processing", "bob-nitric-oxide")
    else
      bobmods.lib.tech.add_recipe_unlock("bob-chemical-plant", "bob-nitric-oxide")
    end

    bobmods.lib.create_gas_bottle(data.raw.fluid["bob-nitric-oxide"])
  end

  bobmods.lib.tech.add_recipe_unlock("rocket-fuel", "bob-dinitrogen-tetroxide")
  bobmods.lib.tech.add_prerequisite("rocket-fuel", "bob-hydrazine")
end
