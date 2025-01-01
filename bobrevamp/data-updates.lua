require("prototypes.rocket-fuel-updates")
require("prototypes.rocket-parts-updates")
require("prototypes.hard-mode-updates")
require("prototypes.rtg-updates")

-- Rocket silo overhaul

bobmods.lib.recipe.set_ingredient("rocket-silo", { type = "item", name = "steel-plate", amount = 500 })
bobmods.lib.recipe.set_ingredient("rocket-silo", { type = "item", name = "concrete", amount = 200 })
bobmods.lib.recipe.set_ingredient("rocket-silo", { type = "item", name = "pipe", amount = 50 })
bobmods.lib.recipe.set_ingredient("rocket-silo", { type = "item", name = "processing-unit", amount = 50 })
bobmods.lib.recipe.set_ingredient("rocket-silo", { type = "item", name = "electric-engine-unit", amount = 100 })

if data.raw.item["titanium-pipe"] then
  bobmods.lib.recipe.replace_ingredient("rocket-silo", "pipe", "titanium-pipe")
end
if data.raw.item["bob-advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("rocket-silo", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("rocket-part", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("satellite", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("cargo-landing-pad", "processing-unit", "bob-advanced-processing-unit")
end
if data.raw.item["bob-nitinol-alloy"] then
  bobmods.lib.tech.add_prerequisite("rocket-silo", "nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("rocket-silo", "steel-plate", "bob-nitinol-alloy")
end

bobmods.lib.recipe.add_ingredient("rocket-silo", { type = "item", name = "low-density-structure", amount = 50 })
bobmods.lib.recipe.add_ingredient("rocket-silo", { type = "item", name = "rocket-control-unit", amount = 25 })
bobmods.lib.recipe.add_ingredient("rocket-silo", { type = "item", name = "heat-shield-tile", amount = 100 })
bobmods.lib.recipe.add_ingredient("cargo-landing-pad", { type = "item", name = "heat-shield-tile", amount = 100 })
bobmods.lib.recipe.add_ingredient("cargo-landing-pad", { type = "item", name = "electric-engine-unit", amount = 40 })

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
  bobmods.lib.tech.add_prerequisite("oil-processing", "chemical-plant")
  if data.raw.technology["chemical-processing-2"] then
    bobmods.lib.tech.remove_recipe_unlock("chemical-processing-2", "chemical-plant")
    bobmods.lib.tech.add_prerequisite("chemical-processing-2", "chemical-plant")
    bobmods.lib.tech.remove_recipe_unlock("chemical-processing-2", "solid-fuel-from-hydrogen")
    bobmods.lib.tech.add_recipe_unlock("flammables", "solid-fuel-from-hydrogen")
    bobmods.lib.tech.replace_prerequisite("nitrogen-processing", "chemical-processing-2", "chemical-plant")
  end

  bobmods.lib.tech.add_prerequisite("lubricant", "chemical-plant")
  bobmods.lib.tech.add_prerequisite("plastics", "chemical-plant")
  bobmods.lib.tech.add_prerequisite("chemical-plant", "steel-processing")
  bobmods.lib.tech.add_prerequisite("chemical-plant", "electronics")

  if data.raw.fluid["bob-chlorine"] then
    bobmods.lib.recipe.replace_ingredient("plastic-bar", "coal", "bob-chlorine")
    bobmods.lib.tech.add_prerequisite("plastics", "electrolysis-2")
  end
  if data.raw.fluid["bob-sulfur-dioxide"] and data.raw.recipe["sulfuric-acid-2"] then
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
  bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "oil-processing-with-sulfur")

  if data.raw.fluid["bob-sulfur-dioxide"] then
    bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "oil-processing-with-sulfur-dioxide")
    bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "oil-processing-with-sulfur-dioxide-2")
    bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "oil-processing-with-sulfur-dioxide-3")
  end
end

--new oil overhaul
if settings.startup["bobmods-revamp-oil"].value == true then
  if data.raw.recipe["sulfur-2"] or data.raw.recipe["sulfur-3"] then
    bobmods.lib.tech.remove_recipe_unlock("sulfur-processing", "sulfur")
    bobmods.lib.tech.remove_recipe_unlock("oil-processing", "sulfur")
    bobmods.lib.recipe.hide("sulfur")
  end
  bobmods.lib.tech.add_recipe_unlock("flammables", "solid-fuel-from-sour-gas")
  bobmods.lib.tech.add_recipe_unlock("oil-processing", "petroleum-gas-sweetening")
  bobmods.lib.create_gas_bottle(data.raw.fluid["sour-gas"])

  if data.raw.fluid["bob-hydrogen-sulfide"] then
    bobmods.lib.recipe.add_result(
      "petroleum-gas-sweetening",
      { type = "fluid", name = "bob-hydrogen-sulfide", amount = 10 }
    )
  end

  local function change_pg_to_sg(results)
    for i, result in pairs(results) do
      if result.name == "petroleum-gas" then
        result.name = "sour-gas"
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
    data.raw.recipe["solid-fuel-from-sour-gas"].subgroup = "bob-chemical-fuels"
  end

  if data.raw.technology["solid-fuel"] and data.raw.recipe["enriched-fuel"] then
    bobmods.lib.tech.remove_recipe_unlock("advanced-oil-processing", "enriched-fuel")
    bobmods.lib.tech.add_recipe_unlock("solid-fuel", "enriched-fuel")
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
  and data.raw.reactor["nuclear-reactor-2"]
  and settings.startup["bobmods-revamp-nuclear"].value == true
then
  data.raw.item["nuclear-reactor"].localised_name = { "entity-name.uranium-reactor" }
  data.raw.reactor["nuclear-reactor"].localised_name = { "entity-name.uranium-reactor" }
  data.raw["fuel-category"]["nuclear"].localised_name = { "fuel-category-name.uranium" }
  data.raw.reactor["nuclear-reactor"].localised_description =
    { "", { "entity-description.uranium-reactor" }, { "entity-description.reactor-max-temperature", "1000" } }

  data:extend({
    {
      type = "fuel-category",
      name = "thorium",
    },
  })
  data.raw.reactor["nuclear-reactor-2"].energy_source.fuel_categories = { "thorium" }
  data.raw.reactor["nuclear-reactor-2"].localised_name = { "entity-name.thorium-reactor" }
  data.raw.reactor["nuclear-reactor-2"].localised_description =
    { "", { "entity-description.thorium-reactor" }, { "entity-description.reactor-max-temperature", "1250" } }
  data.raw.reactor["nuclear-reactor-2"].default_fuel_glow_color = { r = 1.0, g = 1.0, b = 0.0 }
  data.raw.reactor["nuclear-reactor-2"].icon = "__bobrevamp__/graphics/icons/thorium-reactor.png"
  data.raw.reactor["nuclear-reactor-2"].icon_size = 32

  data.raw.item["bob-thorium-fuel-cell"].fuel_category = "thorium"
  if data.raw.item["bob-thorium-plutonium-fuel-cell"] then
    data.raw.item["bob-thorium-plutonium-fuel-cell"].fuel_category = "thorium"
  end
  if data.raw.technology["bob-thorium-plutonium-fuel-cell"] then
    bobmods.lib.tech.replace_prerequisite("bob-thorium-plutonium-fuel-cell", "thorium-processing", "bob-nuclear-power-2")
  end

  data.raw.item["nuclear-reactor-2"].localised_name = { "entity-name.thorium-reactor" }
  data.raw.item["nuclear-reactor-2"].icon = "__bobrevamp__/graphics/icons/thorium-reactor.png"
  data.raw.item["nuclear-reactor-2"].icon_size = 32

  bobmods.lib.recipe.remove_ingredient("nuclear-reactor-2", "nuclear-reactor")

  data.raw.technology["bob-nuclear-power-2"].icon = "__bobrevamp__/graphics/icons/technology/thorium-nuclear-power.png"
  data.raw.technology["bob-nuclear-power-2"].icon_size = 128
  data.raw.technology["bob-nuclear-power-2"].localised_name = { "technology-name.thorium-power" }

  bobmods.lib.tech.add_science_pack("thorium-processing", "production-science-pack", 1)
  bobmods.lib.tech.add_prerequisite("thorium-processing", "production-science-pack")
  bobmods.lib.tech.replace_prerequisite("thorium-processing", "nuclear-power", "uranium-processing")
  bobmods.lib.tech.remove_recipe_unlock("thorium-processing", "bob-thorium-fuel-cell")
  bobmods.lib.tech.add_prerequisite("bob-nuclear-power-2", "thorium-processing")
  bobmods.lib.tech.remove_prerequisite("bob-nuclear-power-2", "production-science-pack")
  bobmods.lib.tech.add_recipe_unlock("bob-nuclear-power-2", "bob-thorium-fuel-cell")
  bobmods.lib.tech.remove_prerequisite("thorium-fuel-reprocessing", "production-science-pack")
  bobmods.lib.tech.replace_prerequisite("thorium-fuel-reprocessing", "thorium-processing", "bob-nuclear-power-2")

  if feature_flags["quality"] then
    bobmods.lib.recipe.update_recycling_recipe_single("nuclear-reactor-2", true)
  end
end

if
  data.raw.item["bob-deuterium-fuel-cell"]
  and data.raw.reactor["nuclear-reactor-3"]
  and settings.startup["bobmods-revamp-nuclear"].value == true
then
  data:extend({
    {
      type = "fuel-category",
      name = "bob-deuterium",
    },
  })
  data.raw.reactor["nuclear-reactor-3"].energy_source.fuel_categories = { "bob-deuterium" }
  data.raw.reactor["nuclear-reactor-3"].localised_name = { "entity-name.deuterium-reactor" }
  data.raw.reactor["nuclear-reactor-3"].localised_description =
    { "", { "entity-description.deuterium-reactor" }, { "entity-description.reactor-max-temperature", "1500" } }
  data.raw.reactor["nuclear-reactor-3"].icon_size = 32

  data.raw.item["bob-deuterium-fuel-cell"].fuel_category = "bob-deuterium"
  if data.raw.item["bob-deuterium-fuel-cell-2"] then
    data.raw.item["bob-deuterium-fuel-cell-2"].fuel_category = "bob-deuterium"
  end
  if data.raw.technology["bob-deuterium-fuel-cell-2"] then
    bobmods.lib.tech.replace_prerequisite("bob-deuterium-fuel-cell-2", "deuterium-processing", "bob-nuclear-power-3")
  end

  data.raw.item["nuclear-reactor-3"].localised_name = { "entity-name.deuterium-reactor" }
  data.raw.item["nuclear-reactor-3"].icon_size = 32

  bobmods.lib.recipe.remove_ingredient("nuclear-reactor-3", "nuclear-reactor-2")

  data.raw.technology["bob-nuclear-power-3"].localised_name = { "technology-name.deuterium-power" }
  data.raw.technology["bob-nuclear-power-3"].icon_size = 128

  bobmods.lib.tech.remove_prerequisite("deuterium-processing", "nuclear-fuel-reprocessing")
  bobmods.lib.tech.remove_recipe_unlock("deuterium-processing", "bob-deuterium-fuel-cell")
  bobmods.lib.tech.replace_prerequisite("bob-nuclear-power-3", "bob-nuclear-power-2", "deuterium-processing")
  bobmods.lib.tech.add_prerequisite("bob-nuclear-power-3", "nuclear-fuel-reprocessing")
  bobmods.lib.tech.add_recipe_unlock("bob-nuclear-power-3", "bob-deuterium-fuel-cell")
  bobmods.lib.tech.add_science_pack("deuterium-fuel-reprocessing", "utility-science-pack", 1)
  bobmods.lib.tech.replace_prerequisite("deuterium-fuel-reprocessing", "deuterium-processing", "bob-nuclear-power-3")

  if
    settings.startup["bobmods-plates-bluedeuterium"]
    and settings.startup["bobmods-plates-bluedeuterium"].value == true
  then
    data.raw.reactor["nuclear-reactor-3"].default_fuel_glow_color = { r = 0, g = 0.7, b = 1 }
    data.raw.reactor["nuclear-reactor-3"].icon = "__bobrevamp__/graphics/icons/deuterium-reactor-blue.png"
    data.raw.item["nuclear-reactor-3"].icon = "__bobrevamp__/graphics/icons/deuterium-reactor-blue.png"
    data.raw.technology["bob-nuclear-power-3"].icon =
      "__bobrevamp__/graphics/icons/technology/deuterium-nuclear-power-blue.png"
  else
    data.raw.reactor["nuclear-reactor-3"].default_fuel_glow_color = { r = 1, g = 0, b = 0.57 }
    data.raw.reactor["nuclear-reactor-3"].icon = "__bobrevamp__/graphics/icons/deuterium-reactor.png"
    data.raw.item["nuclear-reactor-3"].icon = "__bobrevamp__/graphics/icons/deuterium-reactor.png"
    data.raw.technology["bob-nuclear-power-3"].icon =
      "__bobrevamp__/graphics/icons/technology/deuterium-nuclear-power.png"
  end

  if feature_flags["quality"] then
    bobmods.lib.recipe.update_recycling_recipe_single("nuclear-reactor-3", true)
  end
end

if feature_flags["quality"] then
  if data.raw.recipe["sodium-chlorate"] then
    bobmods.lib.recipe.update_recycling_recipe_to_self_recipe("sodium-chlorate", false)
    bobmods.lib.recipe.update_recycling_recipe_to_self_recipe("sodium-perchlorate", false)
    data.raw.recipe["sodium-chlorate"].energy_required = 6
    data.raw.recipe["sodium-perchlorate"].energy_required = 2
  end

  bobmods.lib.recipe.update_recycling_recipe({
    "low-density-structure",
    "heat-shield-tile",
    "rocket-silo",
    "rocket-part",
    "satellite",
    "cargo-landing-pad",
  })
end
