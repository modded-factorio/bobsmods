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

  if data.raw["damage-type"]["plasma"] then
    table.insert(data.raw.locomotive["locomotive"].resistances, { type = "plasma", decrease = 15, percent = 50 })
    table.insert(data.raw["cargo-wagon"]["cargo-wagon"].resistances, { type = "plasma", decrease = 15, percent = 50 })
    table.insert(data.raw["fluid-wagon"]["fluid-wagon"].resistances, { type = "plasma", decrease = 15, percent = 50 })

    table.insert(data.raw.locomotive["bob-locomotive-2"].resistances, { type = "plasma", decrease = 15, percent = 50 })
    table.insert(
      data.raw["cargo-wagon"]["bob-cargo-wagon-2"].resistances,
      { type = "plasma", decrease = 15, percent = 50 }
    )
    table.insert(
      data.raw["fluid-wagon"]["bob-fluid-wagon-2"].resistances,
      { type = "plasma", decrease = 15, percent = 50 }
    )

    table.insert(data.raw.locomotive["bob-locomotive-3"].resistances, { type = "plasma", decrease = 15, percent = 50 })
    table.insert(
      data.raw["cargo-wagon"]["bob-cargo-wagon-3"].resistances,
      { type = "plasma", decrease = 15, percent = 50 }
    )
    table.insert(
      data.raw["fluid-wagon"]["bob-fluid-wagon-3"].resistances,
      { type = "plasma", decrease = 15, percent = 50 }
    )

    table.insert(
      data.raw.locomotive["bob-armoured-locomotive"].resistances,
      { type = "plasma", decrease = 25, percent = 90 }
    )
    table.insert(
      data.raw["cargo-wagon"]["bob-armoured-cargo-wagon"].resistances,
      { type = "plasma", decrease = 25, percent = 90 }
    )
    table.insert(
      data.raw["fluid-wagon"]["bob-armoured-fluid-wagon"].resistances,
      { type = "plasma", decrease = 25, percent = 90 }
    )

    table.insert(
      data.raw.locomotive["bob-armoured-locomotive-2"].resistances,
      { type = "plasma", decrease = 25, percent = 90 }
    )
    table.insert(
      data.raw["cargo-wagon"]["bob-armoured-cargo-wagon-2"].resistances,
      { type = "plasma", decrease = 25, percent = 90 }
    )
    table.insert(
      data.raw["fluid-wagon"]["bob-armoured-fluid-wagon-2"].resistances,
      { type = "plasma", decrease = 25, percent = 90 }
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

if feature_flags["quality"] then
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
    "turbo-transport-belt",
    "turbo-underground-belt",
    "turbo-splitter",
    "ultimate-transport-belt",
    "ultimate-underground-belt",
    "ultimate-splitter",
    "inserter",
    "long-handed-inserter",
    "red-bulk-inserter",
    "fast-inserter",
    "bulk-inserter",
    "turbo-inserter",
    "turbo-bulk-inserter",
    "express-inserter",
    "express-bulk-inserter",
    "passive-provider-chest",
    "storage-chest",
    "passive-provider-chest-2",
    "active-provider-chest-2",
    "storage-chest-2",
    "buffer-chest-2",
    "requester-chest-2",
    "passive-provider-chest-3",
    "active-provider-chest-3",
    "storage-chest-3",
    "buffer-chest-3",
    "requester-chest-3",
    "pump",
    "bob-pump-2",
    "bob-pump-3",
    "bob-pump-4",
    "roboport",
    "bob-roboport-2",
    "bob-roboport-3",
    "bob-roboport-4",
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
    "flying-robot-frame-2",
    "flying-robot-frame-3",
    "flying-robot-frame-4",
    "bob-robot-brain",
    "bob-robot-brain-2",
    "bob-robot-brain-3",
    "bob-robot-brain-4",
    "bob-robot-tool",
    "bob-robot-tool-2",
    "bob-robot-tool-3",
    "bob-robot-tool-4",
    "storage-tank-2",
    "storage-tank-3",
    "storage-tank-4",
    "bob-storage-tank-all-corners-2",
    "bob-storage-tank-all-corners-3",
    "bob-storage-tank-all-corners-4",
    "repair-pack",
    "repair-pack-2",
    "repair-pack-3",
    "repair-pack-4",
    "repair-pack-5",
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
  })
end
