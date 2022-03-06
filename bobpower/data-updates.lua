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


