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

if feature_flags["quality"] then
  bobmods.lib.recipe.update_recycling_recipe({
    "assembling-machine-3",
    "assembling-machine-4",
    "assembling-machine-5",
    "assembling-machine-6",
    "electronics-machine-1",
    "electronics-machine-2",
    "electronics-machine-3",
    "centrifuge-2",
    "centrifuge-3",
    "electric-chemical-mixing-furnace",
    "electric-chemical-mixing-furnace-2",
    "chemical-plant-2",
    "chemical-plant-3",
    "chemical-plant-4",
    "bob-distillery",
    "bob-distillery-2",
    "bob-distillery-3",
    "bob-distillery-4",
    "bob-distillery-5",
    "electric-furnace-2",
    "electric-furnace-3",
    "bob-electrolyser-2",
    "bob-electrolyser-3",
    "bob-electrolyser-4",
    "bob-electrolyser-5",
    "fluid-furnace",
    "fluid-mixing-furnace",
    "fluid-chemical-furnace",
    "oil-refinery-2",
    "oil-refinery-3",
    "oil-refinery-4",
  })
  if
    settings.startup["bobmods-plates-convert-recipes"]
    and settings.startup["bobmods-plates-convert-recipes"].value == true
  then
    bobmods.lib.recipe.update_recycling_recipe({
      "stone-furnace",
      "bob-stone-mixing-furnace",
      "bob-stone-chemical-furnace",
      "steel-furnace",
      "bob-steel-mixing-furnace",
      "bob-steel-chemical-furnace",
      "electric-furnace",
      "bob-electric-mixing-furnace",
      "bob-electric-chemical-furnace",
    })
  end
end
