require("prototypes.recipe.roboport-recipe-updates")
require("prototypes.recipe.robots-recipe-updates")
require("prototypes.recipe.inserter-recipe-updates")
require("prototypes.recipe.belt-recipe-updates")
require("prototypes.recipe.storage-tank-recipe-updates")
require("prototypes.recipe.train-recipe-updates")
require("prototypes.recipe.pump-recipe-updates")
require("prototypes.recipe.logistic-container-recipe-updates")

require("prototypes.technology-updates")

require("prototypes.repair-pack-updates")

-- Allow burner inserters to fuel themselves from the burner inventory of a machine they're pulling items out of.
data.raw.inserter["burner-inserter"].allow_burner_leech = true

if settings.startup["bobmods-logistics-trains"].value == true then
  if data.raw["damage-type"]["bob-pierce"] then
    table.insert(data.raw.locomotive["locomotive"].resistances, { type = "bob-pierce", decrease = 5, percent = 25 })
    table.insert(
      data.raw["cargo-wagon"]["cargo-wagon"].resistances,
      { type = "bob-pierce", decrease = 5, percent = 25 }
    )
    table.insert(
      data.raw["fluid-wagon"]["fluid-wagon"].resistances,
      { type = "bob-pierce", decrease = 5, percent = 25 }
    )

    table.insert(
      data.raw.locomotive["bob-locomotive-2"].resistances,
      { type = "bob-pierce", decrease = 5, percent = 25 }
    )
    table.insert(
      data.raw["cargo-wagon"]["bob-cargo-wagon-2"].resistances,
      { type = "bob-pierce", decrease = 5, percent = 25 }
    )
    table.insert(
      data.raw["fluid-wagon"]["bob-fluid-wagon-2"].resistances,
      { type = "bob-pierce", decrease = 5, percent = 25 }
    )

    table.insert(
      data.raw.locomotive["bob-locomotive-3"].resistances,
      { type = "bob-pierce", decrease = 5, percent = 25 }
    )
    table.insert(
      data.raw["cargo-wagon"]["bob-cargo-wagon-3"].resistances,
      { type = "bob-pierce", decrease = 5, percent = 25 }
    )
    table.insert(
      data.raw["fluid-wagon"]["bob-fluid-wagon-3"].resistances,
      { type = "bob-pierce", decrease = 5, percent = 25 }
    )

    table.insert(
      data.raw.locomotive["bob-armoured-locomotive"].resistances,
      { type = "bob-pierce", decrease = 15, percent = 90 }
    )
    table.insert(
      data.raw["cargo-wagon"]["bob-armoured-cargo-wagon"].resistances,
      { type = "bob-pierce", decrease = 15, percent = 90 }
    )
    table.insert(
      data.raw["fluid-wagon"]["bob-armoured-fluid-wagon"].resistances,
      { type = "bob-pierce", decrease = 15, percent = 90 }
    )

    table.insert(
      data.raw.locomotive["bob-armoured-locomotive-2"].resistances,
      { type = "bob-pierce", decrease = 15, percent = 90 }
    )
    table.insert(
      data.raw["cargo-wagon"]["bob-armoured-cargo-wagon-2"].resistances,
      { type = "bob-pierce", decrease = 15, percent = 90 }
    )
    table.insert(
      data.raw["fluid-wagon"]["bob-armoured-fluid-wagon-2"].resistances,
      { type = "bob-pierce", decrease = 15, percent = 90 }
    )
  end

  if data.raw["damage-type"]["bob-plasma"] then
    table.insert(data.raw.locomotive["locomotive"].resistances, { type = "bob-plasma", decrease = 15, percent = 50 })
    table.insert(
      data.raw["cargo-wagon"]["cargo-wagon"].resistances,
      { type = "bob-plasma", decrease = 15, percent = 50 }
    )
    table.insert(
      data.raw["fluid-wagon"]["fluid-wagon"].resistances,
      { type = "bob-plasma", decrease = 15, percent = 50 }
    )

    table.insert(
      data.raw.locomotive["bob-locomotive-2"].resistances,
      { type = "bob-plasma", decrease = 15, percent = 50 }
    )
    table.insert(
      data.raw["cargo-wagon"]["bob-cargo-wagon-2"].resistances,
      { type = "bob-plasma", decrease = 15, percent = 50 }
    )
    table.insert(
      data.raw["fluid-wagon"]["bob-fluid-wagon-2"].resistances,
      { type = "bob-plasma", decrease = 15, percent = 50 }
    )

    table.insert(
      data.raw.locomotive["bob-locomotive-3"].resistances,
      { type = "bob-plasma", decrease = 15, percent = 50 }
    )
    table.insert(
      data.raw["cargo-wagon"]["bob-cargo-wagon-3"].resistances,
      { type = "bob-plasma", decrease = 15, percent = 50 }
    )
    table.insert(
      data.raw["fluid-wagon"]["bob-fluid-wagon-3"].resistances,
      { type = "bob-plasma", decrease = 15, percent = 50 }
    )

    table.insert(
      data.raw.locomotive["bob-armoured-locomotive"].resistances,
      { type = "bob-plasma", decrease = 25, percent = 90 }
    )
    table.insert(
      data.raw["cargo-wagon"]["bob-armoured-cargo-wagon"].resistances,
      { type = "bob-plasma", decrease = 25, percent = 90 }
    )
    table.insert(
      data.raw["fluid-wagon"]["bob-armoured-fluid-wagon"].resistances,
      { type = "bob-plasma", decrease = 25, percent = 90 }
    )

    table.insert(
      data.raw.locomotive["bob-armoured-locomotive-2"].resistances,
      { type = "bob-plasma", decrease = 25, percent = 90 }
    )
    table.insert(
      data.raw["cargo-wagon"]["bob-armoured-cargo-wagon-2"].resistances,
      { type = "bob-plasma", decrease = 25, percent = 90 }
    )
    table.insert(
      data.raw["fluid-wagon"]["bob-armoured-fluid-wagon-2"].resistances,
      { type = "bob-plasma", decrease = 25, percent = 90 }
    )
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
  bobmods.lib.recipe.hide("roboport")
end

bobmods.lib.item.set_subgroup("transport-belt", "bob-logistic-tier-1")
bobmods.lib.item.set_subgroup("underground-belt", "bob-logistic-tier-1")
bobmods.lib.item.set_subgroup("splitter", "bob-logistic-tier-1")

bobmods.lib.item.set_subgroup("fast-transport-belt", "bob-logistic-tier-2")
bobmods.lib.item.set_subgroup("fast-underground-belt", "bob-logistic-tier-2")
bobmods.lib.item.set_subgroup("fast-splitter", "bob-logistic-tier-2")

bobmods.lib.item.set_subgroup("express-transport-belt", "bob-logistic-tier-3")
bobmods.lib.item.set_subgroup("express-underground-belt", "bob-logistic-tier-3")
bobmods.lib.item.set_subgroup("express-splitter", "bob-logistic-tier-3")

-- because there's no specific section for it.
data.raw["pump"]["pump"].next_upgrade = "bob-pump-2"

if mods["quality"] then
  bobmods.lib.recipe.update_recycling_recipe({
    "transport-belt",
    "underground-belt",
    "splitter",
    "fast-transport-belt",
    "fast-underground-belt",
    "fast-splitter",
    "express-transport-belt",
    "express-underground-belt",
    "express-splitter",
    "bob-turbo-transport-belt",
    "bob-turbo-underground-belt",
    "bob-turbo-splitter",
    "bob-ultimate-transport-belt",
    "bob-ultimate-underground-belt",
    "bob-ultimate-splitter",
    "inserter",
    "long-handed-inserter",
    "bob-red-bulk-inserter",
    "fast-inserter",
    "bulk-inserter",
    "bob-turbo-inserter",
    "bob-turbo-bulk-inserter",
    "bob-express-inserter",
    "bob-express-bulk-inserter",
    "passive-provider-chest",
    "storage-chest",
    "bob-passive-provider-chest-2",
    "bob-active-provider-chest-2",
    "bob-storage-chest-2",
    "bob-buffer-chest-2",
    "bob-requester-chest-2",
    "bob-passive-provider-chest-3",
    "bob-active-provider-chest-3",
    "bob-storage-chest-3",
    "bob-buffer-chest-3",
    "bob-requester-chest-3",
    "pump",
    "bob-pump-2",
    "bob-pump-3",
    "bob-pump-4",
    "bob-roboport-antenna-2",
    "bob-roboport-antenna-3",
    "bob-roboport-antenna-4",
    "bob-roboport-chargepad-2",
    "bob-roboport-chargepad-3",
    "bob-roboport-chargepad-4",
    "bob-roboport-door-2",
    "bob-roboport-door-3",
    "bob-roboport-door-4",
    "roboport",
    "bob-robochest-2",
    "bob-robochest-3",
    "bob-robochest-4",
    "bob-logistic-zone-expander-2",
    "bob-logistic-zone-expander-3",
    "bob-logistic-zone-expander-4",
    "bob-robo-charge-port-2",
    "bob-robo-charge-port-3",
    "bob-robo-charge-port-4",
    "bob-robo-charge-port-large-2",
    "bob-robo-charge-port-large-3",
    "bob-robo-charge-port-large-4",
    "logistic-robot",
    "bob-logistic-robot-2",
    "bob-logistic-robot-3",
    "bob-logistic-robot-4",
    "bob-logistic-robot-5",
    "construction-robot",
    "bob-construction-robot-2",
    "bob-construction-robot-3",
    "bob-construction-robot-4",
    "bob-construction-robot-5",
    "flying-robot-frame",
    "bob-flying-robot-frame-2",
    "bob-flying-robot-frame-3",
    "bob-flying-robot-frame-4",
    "bob-robot-brain",
    "bob-robot-brain-2",
    "bob-robot-brain-3",
    "bob-robot-brain-4",
    "bob-robot-tool-construction",
    "bob-robot-tool-construction-2",
    "bob-robot-tool-construction-3",
    "bob-robot-tool-construction-4",
    "bob-robot-tool-logistic",
    "bob-robot-tool-logistic-2",
    "bob-robot-tool-logistic-3",
    "bob-robot-tool-logistic-4",
    "bob-storage-tank-2",
    "bob-storage-tank-3",
    "bob-storage-tank-4",
    "bob-storage-tank-all-corners-2",
    "bob-storage-tank-all-corners-3",
    "bob-storage-tank-all-corners-4",
    "repair-pack",
    "bob-repair-pack-2",
    "bob-repair-pack-3",
    "bob-repair-pack-4",
    "bob-repair-pack-5",
    "bob-locomotive-2",
    "bob-locomotive-3",
    "bob-armoured-locomotive",
    "bob-armoured-locomotive-2",
    "bob-cargo-wagon-2",
    "bob-cargo-wagon-3",
    "bob-armoured-cargo-wagon",
    "bob-armoured-cargo-wagon-2",
    "bob-fluid-wagon-2",
    "bob-fluid-wagon-3",
    "bob-armoured-fluid-wagon",
    "bob-armoured-fluid-wagon-2",
    "lab",
  })
  if data.raw.recipe["bob-roboport-2"] then
    bobmods.lib.recipe.update_recycling_recipe({
      "bob-roboport-2",
      "bob-roboport-3",
      "bob-roboport-4",
    })
  end
  if data.raw.recipe["bob-basic-underground-belt"] then
    bobmods.lib.recipe.update_recycling_recipe({
      "bob-basic-underground-belt",
      "bob-basic-splitter",
    })
  end

  data.raw.recipe["long-handed-inserter-recycling"].localised_name = {
    "recipe-name.recycling",
    {
      "entity-name.bob-red-inserter",
    },
  }
end
