if mods["space-exploration"] then
  bobmods.lib.tech.remove_science_pack("bob-robo-modular-2", "se-material-science-pack-1")
  bobmods.lib.tech.remove_science_pack("bob-robo-modular-3", "se-material-science-pack-2")
  bobmods.lib.tech.remove_science_pack("bob-robotics-3", "se-material-science-pack-2")
  bobmods.lib.tech.remove_science_pack("bob-robotics-4", "se-material-science-pack-2")
  data.raw.item["flying-robot-frame"].subgroup = "bob-robot-parts"
  if settings.startup["bobmods-logistics-trains"].value == true then
    data.raw["item-with-entity-data"].locomotive.subgroup = "bob-locomotive"
    data.raw["item-with-entity-data"]["cargo-wagon"].subgroup = "bob-cargo-wagon"
    data.raw["item-with-entity-data"]["fluid-wagon"].subgroup = "bob-fluid-wagon"
  end
  data.raw.item["se-supercharger"].subgroup = "bob-logistic-roboport-charge"

  data.raw.technology["bob-robots-2"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "utility-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-astronomic-science-pack-2", 1 },
  }
  data.raw.technology["bob-robots-3"].unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 },
    { "utility-science-pack", 1 },
    { "production-science-pack", 1 },
    { "se-astronomic-science-pack-2", 1 },
    { "se-energy-science-pack-2", 1 },
  }

  data.raw.item["transport-belt"].subgroup = "bob-logistic-tier-1"
  data.raw.item["underground-belt"].subgroup = "bob-logistic-tier-1"
  data.raw.item.splitter.subgroup = "bob-logistic-tier-1"
  data.raw.item["fast-transport-belt"].subgroup = "bob-logistic-tier-2"
  data.raw.item["fast-underground-belt"].subgroup = "bob-logistic-tier-2"
  data.raw.item["fast-splitter"].subgroup = "bob-logistic-tier-2"
  data.raw.item["express-transport-belt"].subgroup = "bob-logistic-tier-3"
  data.raw.item["express-underground-belt"].subgroup = "bob-logistic-tier-3"
  data.raw.item["express-splitter"].subgroup = "bob-logistic-tier-3"

  if mods.bobequipment then
    data.raw.technology["bob-robots-4"].prerequisites = {
      "bob-robots-3",
      "fusion-reactor-equipment-se",
    }
    data.raw.technology["bob-robots-4"].unit.ingredients = {
      { "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
      { "chemical-science-pack", 1 },
      { "se-rocket-science-pack", 1 },
      { "space-science-pack", 1 },
      { "utility-science-pack", 1 },
      { "production-science-pack", 1 },
      { "se-astronomic-science-pack-2", 1 },
      { "se-energy-science-pack-2", 1 },
    }
  end

  -- K2+SE Fixes
  if mods["Krastorio2"] and settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
    -- When both Krastorio and Space Exploration are installed,
    -- then Space Exploration resets the `long-handed-inserter`
    -- and `fast-inserter` recipes in a way which includes items
    -- from both mods and making the Express Inserter ingredients
    -- match what Bob's Logistics does with the Fast Inserter,
    -- so just copy the ingredients over.

    -- Fast Inserter:
    if data.raw.recipe["long-handed-inserter"] then
      -- 2 x Electronic Circuit
      -- 1 x Inserter / Inserter Parts
      -- 1 x Steel Plate
      if data.raw.recipe["fast-inserter"] then
        bobmods.lib.recipe.set_ingredients("long-handed-inserter", data.raw.recipe["fast-inserter"].ingredients)
      else
        bobmods.lib.recipe.replace_ingredient("long-handed-inserter", "iron-stick", "electornic-circuit")
        bobmods.lib.recipe.add_ingredient("long-handed-inserter", "steel-plate")
      end
    end

    -- Express Inserter:
    if data.raw.recipe["fast-inserter"] then
      -- 2 x Adv. Circuit
      -- 1 x Fast Inserter / Inserter Parts
      -- 1 x Small Electric Motor
      bobmods.lib.recipe.replace_ingredient("fast-inserter", "inserter", "long-handed-inserter")
      bobmods.lib.recipe.replace_ingredient("fast-inserter", "electornic-circuit", "advanced-circuit")
      bobmods.lib.recipe.replace_ingredient("fast-inserter", "steel-plate", "electric-motor")
    end
  end
end

-- Krastorio2 fixes
if mods["Krastorio2"] then
  data.raw.pump.pump.fast_replaceable_group = "pipe"
  if
    settings.startup["bobmods-logistics-inserteroverhaul"].value == true and data.raw.inserter["long-handed-inserter"]
  then
    data.raw.inserter["long-handed-inserter"].fast_replaceable_group = "inserter"
  end
end
