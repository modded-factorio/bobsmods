require("prototypes.recipe.roboport-recipe-updates")
require("prototypes.recipe.robots-recipe-updates")
require("prototypes.recipe.inserter-recipe-updates")
require("prototypes.recipe.belt-recipe-updates")
require("prototypes.recipe.storage-tank-recipe-updates")
require("prototypes.recipe.train-recipe-updates")
require("prototypes.recipe.pump-recipe-updates")
require("prototypes.recipe.logistic-container-recipe-updates")

require("prototypes.technology-updates")
require("prototypes.productivity-limitations")

require("prototypes.repair-pack-updates")


-- Allow burner inserters to fuel themselves from the burner inventory of a machine they're pulling items out of.
data.raw.inserter["burner-inserter"].allow_burner_leech = true

for i, pipe in pairs(data.raw["pipe-to-ground"]) do
  table.insert(pipe.flags,"fast-replaceable-no-build-while-moving")
end
for i, pipe in pairs(data.raw["pipe"]) do
  table.insert(pipe.flags,"fast-replaceable-no-build-while-moving")
end


if settings.startup["bobmods-logistics-trains"].value == true then
if data.raw["damage-type"]["bob-pierce"] then
  table.insert(data.raw.locomotive["locomotive"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})
  table.insert(data.raw["cargo-wagon"]["cargo-wagon"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})
  table.insert(data.raw["fluid-wagon"]["fluid-wagon"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})

  table.insert(data.raw.locomotive["bob-locomotive-2"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})
  table.insert(data.raw["cargo-wagon"]["bob-cargo-wagon-2"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})
  table.insert(data.raw["fluid-wagon"]["bob-fluid-wagon-2"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})

  table.insert(data.raw.locomotive["bob-locomotive-3"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})
  table.insert(data.raw["cargo-wagon"]["bob-cargo-wagon-3"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})
  table.insert(data.raw["fluid-wagon"]["bob-fluid-wagon-3"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})

  table.insert(data.raw.locomotive["bob-armoured-locomotive"].resistances, {type = "bob-pierce", decrease = 15, percent = 90})
  table.insert(data.raw["cargo-wagon"]["bob-armoured-cargo-wagon"].resistances, {type = "bob-pierce", decrease = 15, percent = 90})
  table.insert(data.raw["fluid-wagon"]["bob-armoured-fluid-wagon"].resistances, {type = "bob-pierce", decrease = 15, percent = 90})

  table.insert(data.raw.locomotive["bob-armoured-locomotive-2"].resistances, {type = "bob-pierce", decrease = 15, percent = 90})
  table.insert(data.raw["cargo-wagon"]["bob-armoured-cargo-wagon-2"].resistances, {type = "bob-pierce", decrease = 15, percent = 90})
  table.insert(data.raw["fluid-wagon"]["bob-armoured-fluid-wagon-2"].resistances, {type = "bob-pierce", decrease = 15, percent = 90})
end

if data.raw["damage-type"]["plasma"] then
  table.insert(data.raw.locomotive["locomotive"].resistances, {type = "plasma", decrease = 15, percent = 50})
  table.insert(data.raw["cargo-wagon"]["cargo-wagon"].resistances, {type = "plasma", decrease = 15, percent = 50})
  table.insert(data.raw["fluid-wagon"]["fluid-wagon"].resistances, {type = "plasma", decrease = 15, percent = 50})

  table.insert(data.raw.locomotive["bob-locomotive-2"].resistances, {type = "plasma", decrease = 15, percent = 50})
  table.insert(data.raw["cargo-wagon"]["bob-cargo-wagon-2"].resistances, {type = "plasma", decrease = 15, percent = 50})
  table.insert(data.raw["fluid-wagon"]["bob-fluid-wagon-2"].resistances, {type = "plasma", decrease = 15, percent = 50})

  table.insert(data.raw.locomotive["bob-locomotive-3"].resistances, {type = "plasma", decrease = 15, percent = 50})
  table.insert(data.raw["cargo-wagon"]["bob-cargo-wagon-3"].resistances, {type = "plasma", decrease = 15, percent = 50})
  table.insert(data.raw["fluid-wagon"]["bob-fluid-wagon-3"].resistances, {type = "plasma", decrease = 15, percent = 50})

  table.insert(data.raw.locomotive["bob-armoured-locomotive"].resistances, {type = "plasma", decrease = 25, percent = 90})
  table.insert(data.raw["cargo-wagon"]["bob-armoured-cargo-wagon"].resistances, {type = "plasma", decrease = 25, percent = 90})
  table.insert(data.raw["fluid-wagon"]["bob-armoured-fluid-wagon"].resistances, {type = "plasma", decrease = 25, percent = 90})

  table.insert(data.raw.locomotive["bob-armoured-locomotive-2"].resistances, {type = "plasma", decrease = 25, percent = 90})
  table.insert(data.raw["cargo-wagon"]["bob-armoured-cargo-wagon-2"].resistances, {type = "plasma", decrease = 25, percent = 90})
  table.insert(data.raw["fluid-wagon"]["bob-armoured-fluid-wagon-2"].resistances, {type = "plasma", decrease = 25, percent = 90})
end
end


for index, inserter in pairs(data.raw.inserter) do
  inserter.allow_custom_vectors = true
  if settings.startup["bobmods-logistics-drainlessinserters"].value == true then
    inserter.energy_source.drain = "0W"
  end
end

if settings.startup["bobmods-logistics-disableroboports"].value == true then
  bobmods.lib.item.hide_entity("roboport", "roboport")
  bobmods.lib.item.hide("roboport")
  bobmods.lib.recipe.hide_recipe("roboport")
end

data.raw.item["transport-belt"].subgroup = "bob-logistic-tier-1"
data.raw.item["underground-belt"].subgroup = "bob-logistic-tier-1"
data.raw.item["splitter"].subgroup = "bob-logistic-tier-1"

data.raw.item["fast-transport-belt"].subgroup = "bob-logistic-tier-2"
data.raw.item["fast-underground-belt"].subgroup = "bob-logistic-tier-2"
data.raw.item["fast-splitter"].subgroup = "bob-logistic-tier-2"

data.raw.item["express-transport-belt"].subgroup = "bob-logistic-tier-3"
data.raw.item["express-underground-belt"].subgroup = "bob-logistic-tier-3"
data.raw.item["express-splitter"].subgroup = "bob-logistic-tier-3"


-- because there's no specific section for it.
data.raw["pump"]["pump"].next_upgrade = "bob-pump-2"

