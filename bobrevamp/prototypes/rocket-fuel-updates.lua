if data.raw.fluid["ammonia"] and data.raw.fluid["bob-hydrazine"] and data.raw.fluid["bob-dinitrogen-tetroxide"] then
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
    bobmods.lib.tech.add_recipe_unlock("bob-nitrogen-processing", "ammonia")
    bobmods.lib.tech.add_prerequisite("bob-hydrazine", "bob-nitrogen-processing")
  else
    bobmods.lib.tech.add_recipe_unlock("bob-chemical-plant", "ammonia")
    bobmods.lib.tech.add_recipe_unlock("bob-chemical-plant", "bob-nitrogen-dioxide")
    bobmods.lib.tech.add_prerequisite("bob-hydrazine", "bob-chemical-plant")
  end

  bobmods.lib.tech.add_prerequisite("rocket-silo", "rocket-fuel")

  if data.raw.recipe["bob-enriched-fuel-from-hydrazine"] then
    bobmods.lib.tech.add_recipe_unlock("bob-hydrazine", "bob-enriched-fuel-from-hydrazine")
    bobmods.lib.tech.add_prerequisite("bob-hydrazine", "flammables")
  end

  bobmods.lib.create_gas_bottle(data.raw.fluid["ammonia"])
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

if mods["bobplates"] and mods["space-age"] then
  local recipe = data.raw.recipe["solid-fuel-from-ammonia"]
  recipe.icon = nil
  recipe.icons = {
    { icon = "__base__/graphics/icons/solid-fuel.png", icon_size = 64 },
    { icon = "__bobrevamp__/graphics/icons/ammonia.png", icon_size = 64, scale = 0.25, shift = { -8, -8 } },
  }
  recipe.subgroup = "bob-chemical-fuels"
  recipe.order = "b[fluid-chemistry]-f[solid-fuel-from-ammonia]"

  recipe = data.raw.recipe["ammonia-rocket-fuel"]
  recipe.icon = nil
  recipe.icons = {
    { icon = "__base__/graphics/icons/rocket-fuel.png", icon_size = 64 },
    { icon = "__bobrevamp__/graphics/icons/ammonia.png", icon_size = 64, scale = 0.25, shift = { -8, -8 } },
  }
  recipe.subgroup = "bob-chemical-fuels"
  recipe.order = "d[fluid-chemistry]-b[ammonia-rocket-fuel]"

  recipe = data.raw.recipe["ammoniacal-solution-separation"]
  recipe.icon = nil
  recipe.icons = {
    { icon = "__space-age__/graphics/icons/fluid/ammoniacal-solution.png", icon_size = 64 },
    { icon = "__space-age__/graphics/icons/ice.png", icon_size = 64, scale = 0.25, shift = { -8, 8 } },
    { icon = "__bobrevamp__/graphics/icons/ammonia.png", icon_size = 64, scale = 0.25, shift = { 8, 8 } },
  }
end
