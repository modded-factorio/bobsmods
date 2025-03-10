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

if mods["quality"] then
  bobmods.lib.recipe.update_recycling_recipe({
    "assembling-machine-3",
    "bob-assembling-machine-4",
    "bob-assembling-machine-5",
    "bob-assembling-machine-6",
    "chemical-plant",
  })
  if data.raw.recipe["bob-fluid-furnace"] then
    bobmods.lib.recipe.update_recycling_recipe_single("bob-fluid-furnace", false)
  end
  if data.raw.recipe["bob-fluid-mixing-furnace"] then
    bobmods.lib.recipe.update_recycling_recipe({
      "bob-fluid-mixing-furnace",
      "bob-fluid-chemical-furnace",
    })
  end
  if data.raw.recipe["bob-electric-furnace-2"] then
    bobmods.lib.recipe.update_recycling_recipe({
      "bob-electric-furnace-2",
      "bob-electric-furnace-3",
    })
  end
  if data.raw.recipe["bob-electric-chemical-mixing-furnace"] then
    bobmods.lib.recipe.update_recycling_recipe({
      "bob-electric-chemical-mixing-furnace",
      "bob-electric-chemical-mixing-furnace-2",
    })
  end
  if data.raw.recipe["bob-electronics-machine-1"] then
    bobmods.lib.recipe.update_recycling_recipe({
      "bob-electronics-machine-1",
      "bob-electronics-machine-2",
      "bob-electronics-machine-3",
    })
  end
  if data.raw.recipe["bob-centrifuge-2"] then
    bobmods.lib.recipe.update_recycling_recipe({
      "bob-centrifuge-2",
      "bob-centrifuge-3",
    })
  end
  if data.raw.recipe["bob-chemical-plant-2"] then
    bobmods.lib.recipe.update_recycling_recipe({
      "bob-chemical-plant-2",
      "bob-chemical-plant-3",
      "bob-chemical-plant-4",
    })
  end
  if data.raw.recipe["bob-distillery-2"] then
    bobmods.lib.recipe.update_recycling_recipe({
      "bob-distillery",
      "bob-distillery-2",
      "bob-distillery-3",
      "bob-distillery-4",
      "bob-distillery-5",
    })
  end
  if data.raw.recipe["bob-electrolyser-2"] then
    bobmods.lib.recipe.update_recycling_recipe({
      "bob-electrolyser-2",
      "bob-electrolyser-3",
      "bob-electrolyser-4",
      "bob-electrolyser-5",
    })
  end
  if data.raw.recipe["bob-oil-refinery-2"] then
    bobmods.lib.recipe.update_recycling_recipe({
      "bob-oil-refinery-2",
      "bob-oil-refinery-3",
      "bob-oil-refinery-4",
    })
  end
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
