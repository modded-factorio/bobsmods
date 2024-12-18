require("prototypes.recipe.accumulators-updates")
require("prototypes.recipe.boilers-updates")
require("prototypes.recipe.oil-boilers-updates")
require("prototypes.recipe.poles-updates")
require("prototypes.recipe.solar-panels-updates")
require("prototypes.recipe.steam-engines-updates")
require("prototypes.recipe.heat-exchangers-updates")
require("prototypes.recipe.steam-turbines-updates")
require("prototypes.recipe.fluid-generator-updates")
require("prototypes.recipe.nuclear-updates")

require("prototypes.technology.technology-updates")

require("prototypes.burner-reactor-updates")
require("prototypes.heat-pipes-updates")

data.raw.fluid["crude-oil"].fuel_value = "1.9MJ" --"3.8MJ"
data.raw.fluid["crude-oil"].emissions_multiplier = 10
data.raw.fluid["light-oil"].fuel_value = "1.5MJ" --"3MJ"
data.raw.fluid["light-oil"].emissions_multiplier = 2
data.raw.fluid["heavy-oil"].fuel_value = "1MJ" --"2MJ"
data.raw.fluid["heavy-oil"].emissions_multiplier = 3
data.raw.fluid["petroleum-gas"].fuel_value = "2.3MJ" --"4.6MJ"

data.raw.item["coal"].fuel_emissions_multiplier = 2
data.raw.item["solid-fuel"].fuel_emissions_multiplier = 0.8
data.raw.item["rocket-fuel"].fuel_emissions_multiplier = 1.2
data.raw.item["nuclear-fuel"].fuel_emissions_multiplier = 5

if feature_flags["quality"] then
  bobmods.lib.recipe.update_recycling_recipe({
    "burner-reactor-2",
    "fluid-reactor",
    "fluid-reactor-2",
    "heat-pipe-2",
    "heat-pipe-3",
    "heat-pipe-4",
    "accumulator",
    "large-accumulator-2",
    "fast-accumulator-2",
    "slow-accumulator-2",
    "large-accumulator-3",
    "fast-accumulator-3",
    "slow-accumulator-3",
    "boiler-2",
    "boiler-3",
    "boiler-4",
    "boiler-5",
    "fluid-generator",
    "fluid-generator-2",
    "fluid-generator-3",
    "hydrazine-generator",
    "heat-exchanger-2",
    "heat-exchanger-3",
    "heat-exchanger-4",
    "nuclear-reactor",
    "nuclear-reactor-2",
    "nuclear-reactor-3",
    "oil-boiler",
    "oil-boiler-2",
    "oil-boiler-3",
    "oil-boiler-4",
    "medium-electric-pole-2",
    "medium-electric-pole-3",
    "medium-electric-pole-4",
    "big-electric-pole-2",
    "big-electric-pole-3",
    "big-electric-pole-4",
    "substation-2",
    "substation-3",
    "substation-4",
    "solar-panel-small-2",
    "solar-panel-2",
    "solar-panel-large-2",
    "solar-panel-small-3",
    "solar-panel-3",
    "solar-panel-large-3",
    "steam-engine-2",
    "steam-engine-3",
    "steam-engine-4",
    "steam-engine-5",
    "steam-turbine",
    "steam-turbine-2",
    "steam-turbine-3",
  })
end
