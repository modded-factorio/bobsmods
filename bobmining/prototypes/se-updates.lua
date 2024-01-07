if mods["space-exploration"] then
  --Mining drills
  if data.raw.item["bob-mining-drill-4"] then
    data.raw.recipe["bob-mining-drill-1"].ingredients = {
      { type = "item", name = "electric-mining-drill", amount = 1 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
      { type = "item", name = "electronic-circuit", amount = 5 },
      { type = "item", name = "steel-plate", amount = 10 },
    }

    data.raw.recipe["bob-mining-drill-2"].ingredients = {
      { type = "item", name = "bob-mining-drill-1", amount = 1 },
      { type = "item", name = "electric-engine-unit", amount = 4 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "fluid", name = "lubricant", amount = 20 },
    }
    data.raw.recipe["bob-mining-drill-2"].category = "crafting-with-fluid"

    data.raw.recipe["bob-mining-drill-3"].ingredients = {
      { type = "item", name = "bob-mining-drill-2", amount = 1 },
      { type = "item", name = "se-heavy-girder", amount = 5 },
      { type = "item", name = "processing-unit", amount = 3 },
      { type = "item", name = "se-heavy-bearing", amount = 4 },
    }

    data.raw.recipe["bob-mining-drill-4"].ingredients = {
      { type = "item", name = "bob-mining-drill-3", amount = 1 },
      { type = "item", name = "se-heavy-assembly", amount = 3 },
      { type = "item", name = "se-dynamic-emitter", amount = 1 },
      { type = "item", name = "se-vitalic-reagent", amount = 10 },
    }

    data.raw["mining-drill"]["bob-mining-drill-1"].mining_speed = 0.75
    data.raw["mining-drill"]["bob-mining-drill-2"].mining_speed = 1
    data.raw["mining-drill"]["bob-mining-drill-3"].mining_speed = 1.5
    data.raw["mining-drill"]["bob-mining-drill-4"].mining_speed = 2
    data.raw["mining-drill"]["bob-mining-drill-1"].energy_source.emissions_per_minute = 13
    data.raw["mining-drill"]["bob-mining-drill-2"].energy_source.emissions_per_minute = 15
    data.raw["mining-drill"]["bob-mining-drill-3"].energy_source.emissions_per_minute = 18
    data.raw["mining-drill"]["bob-mining-drill-4"].energy_source.emissions_per_minute = 20
    data.raw["mining-drill"]["bob-mining-drill-1"].energy_usage = "158kW"
    data.raw["mining-drill"]["bob-mining-drill-2"].energy_usage = "240kW"
    data.raw["mining-drill"]["bob-mining-drill-3"].energy_usage = "405kW"
    data.raw["mining-drill"]["bob-mining-drill-4"].energy_usage = "600kW"

    data.raw["mining-drill"]["bob-mining-drill-4"].resource_categories = { "basic-solid", "hard-resource" }
    data.raw["mining-drill"]["bob-mining-drill-4"].localised_description = { "entity-description.bob-mining-drill-x" }
    data.raw.technology["bob-drills-4"].localised_description = { "technology-description.bob-mining-drill-x" }

    bobmods.lib.tech.add_science_pack("bob-drills-1", "logistic-science-pack", 1)
    data.raw.technology["bob-drills-1"].unit.count = 150
    data.raw.technology["bob-drills-1"].prerequisites = {
      "electric-mining",
      "logistic-science-pack",
      "steel-processing",
    }

    data.raw.technology["bob-drills-2"].prerequisites = {
      "bob-drills-1",
      "se-rocket-science-pack",
    }
    data.raw.technology["bob-drills-2"].unit.count = 200
    data.raw.technology["bob-drills-2"].unit.ingredients = {
      { "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
      { "chemical-science-pack", 1 },
      { "se-rocket-science-pack", 1 },
    }

    data.raw.technology["bob-drills-3"].prerequisites = {
      "bob-drills-2",
      "se-heavy-bearing",
    }
    data.raw.technology["bob-drills-3"].unit.count = 500
    data.raw.technology["bob-drills-3"].unit.ingredients = {
      { "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
      { "chemical-science-pack", 1 },
      { "se-rocket-science-pack", 1 },
      { "space-science-pack", 1 },
      { "production-science-pack", 1 },
      { "se-material-science-pack-2", 1 },
    }

    data.raw.technology["bob-drills-4"].prerequisites = {
      "bob-drills-3",
      "se-heavy-assembly",
      "se-dynamic-emitter",
      "se-vitalic-reagent",
    }
    data.raw.technology["bob-drills-4"].unit.count = 1000
    data.raw.technology["bob-drills-4"].unit.ingredients = {
      { "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
      { "chemical-science-pack", 1 },
      { "se-rocket-science-pack", 1 },
      { "space-science-pack", 1 },
      { "utility-science-pack", 1 },
      { "production-science-pack", 1 },
      { "se-biological-science-pack-2", 1 },
      { "se-energy-science-pack-4", 1 },
      { "se-material-science-pack-2", 1 },
    }
  end

  --Area mining drills
  if data.raw.item["bob-area-mining-drill-4"] then
    data.raw.recipe["bob-area-mining-drill-1"].ingredients = {
      { type = "item", name = "electric-mining-drill", amount = 1 },
      { type = "item", name = "iron-gear-wheel", amount = 6 },
      { type = "item", name = "electronic-circuit", amount = 6 },
      { type = "item", name = "steel-plate", amount = 15 },
    }

    data.raw.recipe["bob-area-mining-drill-2"].ingredients = {
      { type = "item", name = "bob-area-mining-drill-1", amount = 1 },
      { type = "item", name = "electric-engine-unit", amount = 5 },
      { type = "item", name = "advanced-circuit", amount = 6 },
      { type = "fluid", name = "lubricant", amount = 25 },
    }
    data.raw.recipe["bob-area-mining-drill-2"].category = "crafting-with-fluid"

    data.raw.recipe["bob-area-mining-drill-3"].ingredients = {
      { type = "item", name = "bob-area-mining-drill-2", amount = 1 },
      { type = "item", name = "se-heavy-girder", amount = 6 },
      { type = "item", name = "processing-unit", amount = 4 },
      { type = "item", name = "se-heavy-bearing", amount = 5 },
    }

    data.raw.recipe["bob-area-mining-drill-4"].ingredients = {
      { type = "item", name = "bob-area-mining-drill-3", amount = 1 },
      { type = "item", name = "se-heavy-assembly", amount = 4 },
      { type = "item", name = "se-dynamic-emitter", amount = 1 },
      { type = "item", name = "se-vitalic-reagent", amount = 15 },
    }

    data.raw["mining-drill"]["bob-area-mining-drill-1"].mining_speed = 0.75
    data.raw["mining-drill"]["bob-area-mining-drill-2"].mining_speed = 1
    data.raw["mining-drill"]["bob-area-mining-drill-3"].mining_speed = 1.5
    data.raw["mining-drill"]["bob-area-mining-drill-4"].mining_speed = 2
    data.raw["mining-drill"]["bob-area-mining-drill-1"].energy_source.emissions_per_minute = 13
    data.raw["mining-drill"]["bob-area-mining-drill-2"].energy_source.emissions_per_minute = 15
    data.raw["mining-drill"]["bob-area-mining-drill-3"].energy_source.emissions_per_minute = 18
    data.raw["mining-drill"]["bob-area-mining-drill-4"].energy_source.emissions_per_minute = 20
    data.raw["mining-drill"]["bob-area-mining-drill-1"].energy_usage = "162kW"
    data.raw["mining-drill"]["bob-area-mining-drill-2"].energy_usage = "252kW"
    data.raw["mining-drill"]["bob-area-mining-drill-3"].energy_usage = "432kW"
    data.raw["mining-drill"]["bob-area-mining-drill-4"].energy_usage = "648kW"
    data.raw["mining-drill"]["bob-area-mining-drill-1"].module_specification.module_slots = 4
    data.raw["mining-drill"]["bob-area-mining-drill-2"].module_specification.module_slots = 5
    data.raw["mining-drill"]["bob-area-mining-drill-3"].module_specification.module_slots = 6
    data.raw["mining-drill"]["bob-area-mining-drill-4"].module_specification.module_slots = 8

    data.raw["mining-drill"]["bob-area-mining-drill-4"].resource_categories = { "basic-solid", "hard-resource" }
    data.raw["mining-drill"]["bob-area-mining-drill-4"].localised_description =
      { "entity-description.bob-mining-drill-x" }
    data.raw.technology["bob-area-drills-4"].localised_description = { "technology-description.bob-mining-drill-x" }

    bobmods.lib.tech.add_science_pack("bob-area-drills-1", "logistic-science-pack", 1)
    data.raw.technology["bob-area-drills-1"].unit.count = 150
    data.raw.technology["bob-area-drills-1"].prerequisites = {
      "electric-mining",
      "logistic-science-pack",
      "steel-processing",
    }

    data.raw.technology["bob-area-drills-2"].prerequisites = {
      "bob-area-drills-1",
      "se-rocket-science-pack",
    }
    data.raw.technology["bob-area-drills-2"].unit.count = 200
    data.raw.technology["bob-area-drills-2"].unit.ingredients = {
      { "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
      { "chemical-science-pack", 1 },
      { "se-rocket-science-pack", 1 },
    }

    data.raw.technology["bob-area-drills-3"].prerequisites = {
      "bob-area-drills-2",
      "se-heavy-bearing",
    }
    data.raw.technology["bob-area-drills-3"].unit.count = 500
    data.raw.technology["bob-area-drills-3"].unit.ingredients = {
      { "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
      { "chemical-science-pack", 1 },
      { "se-rocket-science-pack", 1 },
      { "space-science-pack", 1 },
      { "production-science-pack", 1 },
      { "se-material-science-pack-2", 1 },
    }

    data.raw.technology["bob-area-drills-4"].prerequisites = {
      "bob-area-drills-3",
      "se-heavy-assembly",
      "se-dynamic-emitter",
      "se-vitalic-reagent",
    }
    data.raw.technology["bob-area-drills-4"].unit.count = 1000
    data.raw.technology["bob-area-drills-4"].unit.ingredients = {
      { "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
      { "chemical-science-pack", 1 },
      { "se-rocket-science-pack", 1 },
      { "space-science-pack", 1 },
      { "utility-science-pack", 1 },
      { "production-science-pack", 1 },
      { "se-biological-science-pack-2", 1 },
      { "se-energy-science-pack-4", 1 },
      { "se-material-science-pack-2", 1 },
    }
  end

  --Pumpjacks
  if data.raw.item["bob-pumpjack-4"] then
    data.raw.recipe["bob-pumpjack-1"].ingredients = {
      { type = "item", name = "pumpjack", amount = 1 },
      { type = "fluid", name = "lubricant", amount = 10 },
      { type = "item", name = "concrete", amount = 20 },
      { type = "item", name = "steel-plate", amount = 10 },
    }
    data.raw.recipe["bob-pumpjack-1"].category = "crafting-with-fluid"

    data.raw.recipe["bob-pumpjack-2"].ingredients = {
      { type = "item", name = "bob-pumpjack-1", amount = 1 },
      { type = "fluid", name = "se-pyroflux", amount = 6 },
      { type = "item", name = "electric-engine-unit", amount = 3 },
      { type = "item", name = "plastic-bar", amount = 10 },
    }
    data.raw.recipe["bob-pumpjack-2"].category = "crafting-with-fluid"

    data.raw.recipe["bob-pumpjack-3"].ingredients = {
      { type = "item", name = "bob-pumpjack-2", amount = 1 },
      { type = "item", name = "se-heavy-bearing", amount = 10 },
      { type = "item", name = "se-iridium-plate", amount = 10 },
      { type = "item", name = "se-heavy-girder", amount = 10 },
    }

    data.raw.recipe["bob-pumpjack-4"].ingredients = {
      { type = "item", name = "bob-pumpjack-3", amount = 1 },
      { type = "item", name = "se-heavy-assembly", amount = 2 },
      { type = "item", name = "se-self-sealing-gel", amount = 4 },
    }

    if bobmods.logistics then
      bobmods.lib.recipe.replace_ingredient("bob-pumpjack-1", "steel-plate", "steel-pipe")
      bobmods.lib.recipe.replace_ingredient("bob-pumpjack-2", "plastic-bar", "plastic-pipe")
      bobmods.lib.recipe.replace_ingredient("bob-pumpjack-3", "se-iridium-plate", "iridium-pipe")
    end

    data.raw.technology["bob-pumpjacks-1"].prerequisites = {
      "se-rocket-science-pack",
      "concrete",
    }
    data.raw.technology["bob-pumpjacks-1"].unit.count = 100
    data.raw.technology["bob-pumpjacks-1"].unit.ingredients = {
      { "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
      { "chemical-science-pack", 1 },
      { "se-rocket-science-pack", 1 },
    }

    data.raw.technology["bob-pumpjacks-2"].prerequisites = {
      "bob-pumpjacks-1",
      "production-science-pack",
    }
    data.raw.technology["bob-pumpjacks-2"].unit.count = 120
    data.raw.technology["bob-pumpjacks-2"].unit.ingredients = {
      { "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
      { "chemical-science-pack", 1 },
      { "se-rocket-science-pack", 1 },
      { "space-science-pack", 1 },
      { "production-science-pack", 1 },
    }

    data.raw.technology["bob-pumpjacks-3"].prerequisites = {
      "bob-pumpjacks-2",
      "se-heavy-bearing",
    }
    data.raw.technology["bob-pumpjacks-3"].unit.count = 240
    data.raw.technology["bob-pumpjacks-3"].unit.ingredients = {
      { "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
      { "chemical-science-pack", 1 },
      { "se-rocket-science-pack", 1 },
      { "space-science-pack", 1 },
      { "production-science-pack", 1 },
      { "se-material-science-pack-2", 1 },
    }

    data.raw.technology["bob-pumpjacks-4"].prerequisites = {
      "bob-pumpjacks-3",
      "se-heavy-assembly",
      "se-self-sealing-gel",
    }
    data.raw.technology["bob-pumpjacks-4"].unit.count = 500
    data.raw.technology["bob-pumpjacks-4"].unit.ingredients = {
      { "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
      { "chemical-science-pack", 1 },
      { "se-rocket-science-pack", 1 },
      { "space-science-pack", 1 },
      { "production-science-pack", 1 },
      { "se-material-science-pack-4", 1 },
      { "se-biological-science-pack-4", 1 },
    }
  end
end
