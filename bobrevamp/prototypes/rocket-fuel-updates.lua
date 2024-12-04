if data.raw.fluid.ammonia and data.raw.fluid.hydrazine and data.raw.fluid["dinitrogen-tetroxide"] then
  if data.raw.fluid["pure-water"] then
    bobmods.lib.recipe.remove_result("hydrazine", "water")
    bobmods.lib.recipe.add_result(
      "hydrazine",
      { type = "fluid", name = "pure-water", amount = 4, ignored_by_productivity = 4 }
    )
  end

  data.raw.recipe["rocket-fuel"].ingredients = {
    { type = "fluid", name = "hydrazine", amount = 160 },
    { type = "fluid", name = "dinitrogen-tetroxide", amount = 80 },
  }

  data.raw.recipe["rocket-fuel"].category = "chemistry"
  data.raw.recipe["rocket-fuel"].crafting_machine_tint = {
    primary = { r = 0.7, g = 0.7, b = 0.3, a = 0.000 },
    secondary = { r = 0.5, g = 0.5, b = 1.0, a = 0.000 },
    tertiary = { r = 0.2, g = 1.0, b = 0.2, a = 0.000 },
  }

  data.raw.item["rocket-fuel"].fuel_emissions_multiplier = 1.2

  if data.raw.technology["nitrogen-processing"] then
    bobmods.lib.tech.add_recipe_unlock("nitrogen-processing", "ammonia")
    bobmods.lib.tech.add_prerequisite("hydrazine", "nitrogen-processing")
  else
    bobmods.lib.tech.add_recipe_unlock("chemical-plant", "ammonia")
    bobmods.lib.tech.add_recipe_unlock("chemical-plant", "nitrogen-dioxide")
    bobmods.lib.tech.add_prerequisite("hydrazine", "chemical-plant")
  end

  bobmods.lib.tech.add_prerequisite("rocket-silo", "rocket-fuel")
  bobmods.lib.tech.remove_recipe_unlock("rocket-silo", "rocket-fuel")

  if data.raw.recipe["enriched-fuel-from-hydrazine"] then
    bobmods.lib.tech.add_recipe_unlock("hydrazine", "enriched-fuel-from-hydrazine")
    bobmods.lib.tech.add_prerequisite("hydrazine", "flammables")
  end

  bobmods.lib.create_gas_bottle(data.raw.fluid["ammonia"])
  bobmods.lib.create_gas_bottle(data.raw.fluid["nitrogen-dioxide"])

  if data.raw.fluid["nitric-oxide"] then
    if data.raw.fluid["pure-water"] then
      bobmods.lib.recipe.remove_result("nitric-oxide", "water")
      bobmods.lib.recipe.add_result(
        "nitric-oxide",
        { type = "fluid", name = "pure-water", amount = 12, ignored_by_productivity = 12 }
      )
    end

    if data.raw.technology["nitrogen-processing"] then
      bobmods.lib.tech.add_recipe_unlock("nitrogen-processing", "nitric-oxide")
    else
      bobmods.lib.tech.add_recipe_unlock("chemical-plant", "nitric-oxide")
    end

    bobmods.lib.create_gas_bottle(data.raw.fluid["nitric-oxide"])
  end
end
