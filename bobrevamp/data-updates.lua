require("prototypes.rocket-fuel-updates")
require("prototypes.rocket-parts-updates")
require("prototypes.hard-mode-updates")
require("prototypes.rtg-updates")

-- oil overhaul
if settings.startup["bobmods-revamp-old-oil"].value == true or settings.startup["bobmods-revamp-oil"].value == true then
  bobmods.lib.tech.remove_recipe_unlock("oil-processing", "chemical-plant")
  bobmods.lib.tech.remove_recipe_unlock("oil-processing", "solid-fuel-from-petroleum-gas")
  bobmods.lib.tech.add_recipe_unlock("flammables", "solid-fuel-from-petroleum-gas")
  bobmods.lib.tech.remove_prerequisite("oil-processing", "steel-processing")
  data.raw.technology["oil-processing"].icon = "__base__/graphics/technology/oil-processing.png"
  bobmods.lib.tech.set_science_pack_count("oil-processing", 30)

  if
    data.raw.recipe["basic-oil-processing"]
    and data.raw.recipe["basic-oil-processing"].results
    and data.raw.recipe["basic-oil-processing"].results[1].name == "petroleum-gas"
    and data.raw.recipe["basic-oil-processing"].results[1].amount == 45
  then
    data.raw.recipe["basic-oil-processing"].results[1].amount = 70 --increase PG count for 0.17.60.
  end
  bobmods.lib.recipe.set_ingredient("coal-liquefaction", { type = "fluid", name = "heavy-oil", amount = 10 })

  bobmods.lib.tech.replace_prerequisite("fluid-handling", "oil-processing", "steel-processing")
  bobmods.lib.tech.set_science_pack_count("fluid-handling", 30)

  --chemical plant before oil processing
  bobmods.lib.tech.add_prerequisite("oil-processing", "bob-chemical-plant")
  if data.raw.technology["bob-chemical-processing-2"] then
    bobmods.lib.tech.remove_recipe_unlock("bob-chemical-processing-2", "chemical-plant")
    bobmods.lib.tech.add_prerequisite("bob-chemical-processing-2", "bob-chemical-plant")
    bobmods.lib.tech.remove_recipe_unlock("bob-chemical-processing-2", "bob-solid-fuel-from-hydrogen")
    bobmods.lib.tech.add_recipe_unlock("flammables", "bob-solid-fuel-from-hydrogen")
    bobmods.lib.tech.replace_prerequisite("bob-nitrogen-processing", "bob-chemical-processing-2", "bob-chemical-plant")
  end

  bobmods.lib.tech.add_prerequisite("lubricant", "bob-chemical-plant")
  bobmods.lib.tech.add_prerequisite("plastics", "bob-chemical-plant")
  bobmods.lib.tech.add_prerequisite("bob-chemical-plant", "steel-processing")
  bobmods.lib.tech.add_prerequisite("bob-chemical-plant", "electronics")

  if data.raw.fluid["bob-chlorine"] then
    bobmods.lib.recipe.replace_ingredient("plastic-bar", "coal", "bob-chlorine")
    bobmods.lib.tech.add_prerequisite("plastics", "bob-electrolysis-2")
  end
  if data.raw.fluid["bob-sulfur-dioxide"] and data.raw.recipe["bob-sulfuric-acid-2"] then
    for i, technology in pairs(data.raw.technology) do
      bobmods.lib.tech.remove_recipe_unlock(technology.name, "sulfuric-acid")
    end
    bobmods.lib.recipe.hide("sulfuric-acid")
  end
end

--old oil overhaul
if
  settings.startup["bobmods-revamp-old-oil"].value == true
  and not settings.startup["bobmods-revamp-oil"].value == true
then
  bobmods.lib.tech.remove_recipe_unlock("sulfur-processing", "sulfur")
  bobmods.lib.tech.remove_recipe_unlock("oil-processing", "sulfur")
  bobmods.lib.recipe.hide("sulfur")
  bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "bob-oil-processing-with-sulfur")

  if data.raw.fluid["bob-sulfur-dioxide"] then
    bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "bob-oil-processing-with-sulfur-dioxide")
    bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "bob-oil-processing-with-sulfur-dioxide-2")
    bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "bob-oil-processing-with-sulfur-dioxide-3")
  end
end

--new oil overhaul
if settings.startup["bobmods-revamp-oil"].value == true then
  if data.raw.recipe["bob-sulfur-2"] or data.raw.recipe["bob-sulfur-3"] then
    bobmods.lib.tech.remove_recipe_unlock("sulfur-processing", "sulfur")
    bobmods.lib.tech.remove_recipe_unlock("oil-processing", "sulfur")
    bobmods.lib.recipe.hide("sulfur")
  end
  bobmods.lib.tech.add_recipe_unlock("flammables", "bob-solid-fuel-from-sour-gas")
  bobmods.lib.tech.add_recipe_unlock("oil-processing", "bob-petroleum-gas-sweetening")
  bobmods.lib.create_gas_bottle(data.raw.fluid["bob-sour-gas"])

  if data.raw.fluid["bob-hydrogen-sulfide"] then
    bobmods.lib.recipe.add_result(
      "bob-petroleum-gas-sweetening",
      { type = "fluid", name = "bob-hydrogen-sulfide", amount = 10 }
    )
  end

  local function change_pg_to_sg(results)
    for i, result in pairs(results) do
      if result.name == "petroleum-gas" then
        result.name = "bob-sour-gas"
      end
    end
  end

  for i, recipe in pairs(data.raw.recipe) do
    if recipe.category == "oil-processing" then
      if recipe.results then
        change_pg_to_sg(recipe.results)
      end
    end
  end

  if data.raw["item-subgroup"]["bob-chemical-fuels"] then
    data.raw.recipe["bob-solid-fuel-from-sour-gas"].subgroup = "bob-chemical-fuels"
  end
end

data.raw.item["nuclear-fuel"].fuel_acceleration_multiplier = 2
data.raw.item["nuclear-fuel"].fuel_top_speed_multiplier = 1.25
data.raw.item["nuclear-fuel"].stack_size = 2
data.raw.item["nuclear-fuel"].fuel_emissions_multiplier = 5
data.raw.item["nuclear-fuel"].fuel_glow_color = { r = 0.5, g = 1, b = 0.5 }

--nuclear overhaul
if settings.startup["bobmods-revamp-nuclear"].value == true then
  bobmods.lib.tech.remove_recipe_unlock("uranium-processing", "uranium-fuel-cell")
  bobmods.lib.tech.add_recipe_unlock("nuclear-power", "uranium-fuel-cell")
  if data.raw.item["bob-empty-nuclear-fuel-cell"] then
    bobmods.lib.tech.remove_recipe_unlock("uranium-processing", "bob-empty-nuclear-fuel-cell")
    bobmods.lib.tech.add_recipe_unlock("nuclear-power", "bob-empty-nuclear-fuel-cell")
  end
end

if
  data.raw.item["bob-thorium-fuel-cell"]
  and data.raw.reactor["bob-nuclear-reactor-2"]
  and settings.startup["bobmods-revamp-nuclear"].value == true
then
  data.raw.item["nuclear-reactor"].localised_name = { "entity-name.bob-uranium-reactor" }
  data.raw.reactor["nuclear-reactor"].localised_name = { "entity-name.bob-uranium-reactor" }
  data.raw["fuel-category"]["nuclear"].localised_name = { "fuel-category-name.uranium" }
  data.raw.reactor["nuclear-reactor"].localised_description =
    { "", { "entity-description.bob-uranium-reactor" }, { "entity-description.bob-reactor-max-temperature", "1000" } }

  data:extend({
    {
      type = "fuel-category",
      name = "bob-thorium",
    },
  })
  data.raw.reactor["bob-nuclear-reactor-2"].energy_source.fuel_categories = { "bob-thorium" }
  data.raw.reactor["bob-nuclear-reactor-2"].localised_name = { "entity-name.bob-thorium-reactor" }
  data.raw.reactor["bob-nuclear-reactor-2"].localised_description =
    { "", { "entity-description.bob-thorium-reactor" }, { "entity-description.bob-reactor-max-temperature", "1250" } }
  data.raw.reactor["bob-nuclear-reactor-2"].default_fuel_glow_color = { r = 1.0, g = 1.0, b = 0.0 }
  data.raw.reactor["bob-nuclear-reactor-2"].icon = "__bobrevamp__/graphics/icons/thorium-reactor.png"

  data.raw.item["bob-thorium-fuel-cell"].fuel_category = "bob-thorium"
  if data.raw.item["bob-thorium-plutonium-fuel-cell"] then
    data.raw.item["bob-thorium-plutonium-fuel-cell"].fuel_category = "bob-thorium"
  end
  if data.raw.technology["bob-thorium-plutonium-fuel-cell"] then
    bobmods.lib.tech.replace_prerequisite(
      "bob-thorium-plutonium-fuel-cell",
      "bob-thorium-processing",
      "bob-nuclear-power-2"
    )
  end

  data.raw.item["bob-nuclear-reactor-2"].localised_name = { "entity-name.bob-thorium-reactor" }
  data.raw.item["bob-nuclear-reactor-2"].icon = "__bobrevamp__/graphics/icons/thorium-reactor.png"

  bobmods.lib.recipe.remove_ingredient("bob-nuclear-reactor-2", "nuclear-reactor")

  data.raw.technology["bob-nuclear-power-2"].icon = "__bobrevamp__/graphics/icons/technology/thorium-nuclear-power.png"
  data.raw.technology["bob-nuclear-power-2"].icon_size = 128
  data.raw.technology["bob-nuclear-power-2"].localised_name = { "technology-name.bob-thorium-power" }

  bobmods.lib.tech.add_science_pack("bob-thorium-processing", "production-science-pack", 1)
  bobmods.lib.tech.add_prerequisite("bob-thorium-processing", "production-science-pack")
  bobmods.lib.tech.replace_prerequisite("bob-thorium-processing", "nuclear-power", "uranium-processing")
  bobmods.lib.tech.remove_recipe_unlock("bob-thorium-processing", "bob-thorium-fuel-cell")
  bobmods.lib.tech.add_prerequisite("bob-nuclear-power-2", "bob-thorium-processing")
  bobmods.lib.tech.remove_prerequisite("bob-nuclear-power-2", "production-science-pack")
  bobmods.lib.tech.add_recipe_unlock("bob-nuclear-power-2", "bob-thorium-fuel-cell")
  bobmods.lib.tech.remove_prerequisite("bob-thorium-fuel-reprocessing", "production-science-pack")
  bobmods.lib.tech.replace_prerequisite(
    "bob-thorium-fuel-reprocessing",
    "bob-thorium-processing",
    "bob-nuclear-power-2"
  )

  if mods["quality"] then
    bobmods.lib.recipe.update_recycling_recipe_single("bob-nuclear-reactor-2", true)
  end
end

if
  data.raw.item["bob-deuterium-fuel-cell"]
  and data.raw.reactor["bob-nuclear-reactor-3"]
  and settings.startup["bobmods-revamp-nuclear"].value == true
then
  data:extend({
    {
      type = "fuel-category",
      name = "bob-deuterium",
    },
  })
  data.raw.reactor["bob-nuclear-reactor-3"].energy_source.fuel_categories = { "bob-deuterium" }
  data.raw.reactor["bob-nuclear-reactor-3"].localised_name = { "entity-name.bob-deuterium-reactor" }
  data.raw.reactor["bob-nuclear-reactor-3"].localised_description =
    { "", { "entity-description.bob-deuterium-reactor" }, { "entity-description.bob-reactor-max-temperature", "1500" } }

  data.raw.item["bob-deuterium-fuel-cell"].fuel_category = "bob-deuterium"
  if data.raw.item["bob-deuterium-fuel-cell-2"] then
    data.raw.item["bob-deuterium-fuel-cell-2"].fuel_category = "bob-deuterium"
  end
  if data.raw.technology["bob-deuterium-fuel-cell-2"] then
    bobmods.lib.tech.replace_prerequisite(
      "bob-deuterium-fuel-cell-2",
      "bob-deuterium-processing",
      "bob-nuclear-power-3"
    )
  end

  data.raw.item["bob-nuclear-reactor-3"].localised_name = { "entity-name.bob-deuterium-reactor" }

  bobmods.lib.recipe.remove_ingredient("bob-nuclear-reactor-3", "bob-nuclear-reactor-2")

  data.raw.technology["bob-nuclear-power-3"].localised_name = { "technology-name.bob-deuterium-power" }
  data.raw.technology["bob-nuclear-power-3"].icon_size = 128

  bobmods.lib.tech.remove_prerequisite("bob-deuterium-processing", "nuclear-fuel-reprocessing")
  bobmods.lib.tech.remove_recipe_unlock("bob-deuterium-processing", "bob-deuterium-fuel-cell")
  bobmods.lib.tech.replace_prerequisite("bob-nuclear-power-3", "bob-nuclear-power-2", "bob-deuterium-processing")
  bobmods.lib.tech.add_prerequisite("bob-nuclear-power-3", "nuclear-fuel-reprocessing")
  bobmods.lib.tech.add_recipe_unlock("bob-nuclear-power-3", "bob-deuterium-fuel-cell")
  bobmods.lib.tech.add_science_pack("bob-deuterium-fuel-reprocessing", "utility-science-pack", 1)
  bobmods.lib.tech.replace_prerequisite(
    "bob-deuterium-fuel-reprocessing",
    "bob-deuterium-processing",
    "bob-nuclear-power-3"
  )

  if
    settings.startup["bobmods-plates-bluedeuterium"]
    and settings.startup["bobmods-plates-bluedeuterium"].value == true
  then
    data.raw.reactor["bob-nuclear-reactor-3"].default_fuel_glow_color = { r = 0, g = 0.7, b = 1 }
    data.raw.reactor["bob-nuclear-reactor-3"].icon = "__bobrevamp__/graphics/icons/deuterium-reactor-blue.png"
    data.raw.item["bob-nuclear-reactor-3"].icon = "__bobrevamp__/graphics/icons/deuterium-reactor-blue.png"
    data.raw.technology["bob-nuclear-power-3"].icon =
      "__bobrevamp__/graphics/icons/technology/deuterium-nuclear-power-blue.png"
  else
    data.raw.reactor["bob-nuclear-reactor-3"].default_fuel_glow_color = { r = 1, g = 0, b = 0.57 }
    data.raw.reactor["bob-nuclear-reactor-3"].icon = "__bobrevamp__/graphics/icons/deuterium-reactor.png"
    data.raw.item["bob-nuclear-reactor-3"].icon = "__bobrevamp__/graphics/icons/deuterium-reactor.png"
    data.raw.technology["bob-nuclear-power-3"].icon =
      "__bobrevamp__/graphics/icons/technology/deuterium-nuclear-power.png"
  end

  if mods["quality"] then
    bobmods.lib.recipe.update_recycling_recipe_single("bob-nuclear-reactor-3", true)
  end
end
