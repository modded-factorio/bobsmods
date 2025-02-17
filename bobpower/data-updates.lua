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
    "bob-burner-reactor-2",
    "bob-fluid-reactor",
    "bob-fluid-reactor-2",
    "bob-heat-pipe-2",
    "bob-heat-pipe-3",
    "bob-heat-pipe-4",
    "accumulator",
    "bob-large-accumulator-2",
    "bob-fast-accumulator-2",
    "bob-slow-accumulator-2",
    "bob-large-accumulator-3",
    "bob-fast-accumulator-3",
    "bob-slow-accumulator-3",
    "bob-boiler-2",
    "bob-boiler-3",
    "bob-boiler-4",
    "bob-boiler-5",
    "bob-fluid-generator",
    "bob-fluid-generator-2",
    "bob-fluid-generator-3",
    "bob-hydrazine-generator",
    "bob-heat-exchanger-2",
    "bob-heat-exchanger-3",
    "bob-heat-exchanger-4",
    "nuclear-reactor",
    "bob-nuclear-reactor-2",
    "bob-nuclear-reactor-3",
    "bob-oil-boiler",
    "bob-oil-boiler-2",
    "bob-oil-boiler-3",
    "bob-oil-boiler-4",
    "bob-medium-electric-pole-2",
    "bob-medium-electric-pole-3",
    "bob-medium-electric-pole-4",
    "bob-big-electric-pole-2",
    "bob-big-electric-pole-3",
    "bob-big-electric-pole-4",
    "bob-substation-2",
    "bob-substation-3",
    "bob-substation-4",
    "bob-solar-panel-small-2",
    "bob-solar-panel-2",
    "bob-solar-panel-large-2",
    "bob-solar-panel-small-3",
    "bob-solar-panel-3",
    "bob-solar-panel-large-3",
    "bob-steam-engine-2",
    "bob-steam-engine-3",
    "bob-steam-engine-4",
    "bob-steam-engine-5",
    "steam-turbine",
    "bob-steam-turbine-2",
    "bob-steam-turbine-3",
  })
end
