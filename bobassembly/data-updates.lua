require("prototypes.assembly-updates")
require("prototypes.assembly-electronics-updates")
require("prototypes.oil-refinery-updates")
require("prototypes.chemical-plant-updates")
require("prototypes.electric-furnace-updates")
require("prototypes.electrolyser-updates")
require("prototypes.chemical-mixing-furnace-updates")
require("prototypes.distillery-updates")
require("prototypes.fluid-furnace-updates")
require("prototypes.centrifuge-updates")

data.raw.fluid["crude-oil"].fuel_value = "1.9MJ"
data.raw.fluid["crude-oil"].emissions_multiplier = 10
data.raw.fluid["heavy-oil"].fuel_value = "1MJ"
data.raw.fluid["heavy-oil"].emissions_multiplier = 3
data.raw.fluid["light-oil"].fuel_value = "1.5MJ"
data.raw.fluid["light-oil"].emissions_multiplier = 2
data.raw.fluid["petroleum-gas"].fuel_value = "2.3MJ"
