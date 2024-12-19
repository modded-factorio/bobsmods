if settings.startup["bobmods-mining-miningdrills"].value == true then
  data:extend({
    {
      type = "item",
      name = "bob-mining-drill-1",
      icon = "__bobmining__/graphics/icons/electric-mining-drill-2.png",
      icon_size = 64,
      subgroup = "extraction-machine",
      order = "a[items]-b-a[mining-drill-1]",
      place_result = "bob-mining-drill-1",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/drill-inventory-move.ogg",
        volume = 0.8,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/drill-inventory-move.ogg",
        volume = 0.8,
      },
      pick_sound = {
        filename = "__base__/sound/item/drill-inventory-pickup.ogg",
        volume = 0.8,
      },
    },
    {
      type = "item",
      name = "bob-mining-drill-2",
      icon = "__bobmining__/graphics/icons/electric-mining-drill-3.png",
      icon_size = 64,
      subgroup = "extraction-machine",
      order = "a[items]-b-a[mining-drill-2]",
      place_result = "bob-mining-drill-2",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/drill-inventory-move.ogg",
        volume = 0.8,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/drill-inventory-move.ogg",
        volume = 0.8,
      },
      pick_sound = {
        filename = "__base__/sound/item/drill-inventory-pickup.ogg",
        volume = 0.8,
      },
    },
    {
      type = "item",
      name = "bob-mining-drill-3",
      icon = "__bobmining__/graphics/icons/electric-mining-drill-4.png",
      icon_size = 64,
      subgroup = "extraction-machine",
      order = "a[items]-b-a[mining-drill-3]",
      place_result = "bob-mining-drill-3",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/drill-inventory-move.ogg",
        volume = 0.8,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/drill-inventory-move.ogg",
        volume = 0.8,
      },
      pick_sound = {
        filename = "__base__/sound/item/drill-inventory-pickup.ogg",
        volume = 0.8,
      },
    },
    {
      type = "item",
      name = "bob-mining-drill-4",
      icon = "__bobmining__/graphics/icons/electric-mining-drill-5.png",
      icon_size = 64,
      subgroup = "extraction-machine",
      order = "a[items]-b-a[mining-drill-4]",
      place_result = "bob-mining-drill-4",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/drill-inventory-move.ogg",
        volume = 0.8,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/drill-inventory-move.ogg",
        volume = 0.8,
      },
      pick_sound = {
        filename = "__base__/sound/item/drill-inventory-pickup.ogg",
        volume = 0.8,
      },
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "bob-mining-drill-1",
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "item", name = "electric-mining-drill", amount = 1 },
        { type = "item", name = "electronic-circuit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
      },
      results = { { type = "item", name = "bob-mining-drill-1", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-mining-drill-2",
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "item", name = "bob-mining-drill-1", amount = 1 },
        { type = "item", name = "advanced-circuit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
      },
      results = { { type = "item", name = "bob-mining-drill-2", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-mining-drill-3",
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "item", name = "bob-mining-drill-2", amount = 1 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
      },
      results = { { type = "item", name = "bob-mining-drill-3", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-mining-drill-4",
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "item", name = "bob-mining-drill-3", amount = 1 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
      },
      results = { { type = "item", name = "bob-mining-drill-4", amount = 1 } },
    },
  })

  data.raw["mining-drill"]["electric-mining-drill"].next_upgrade = "bob-mining-drill-1"

  data:extend({
    bobmods.mining.electric_mining_drill({
      name = "bob-mining-drill-1",
      icon = "__bobmining__/graphics/icons/electric-mining-drill-2.png",
      max_health = 450,
      animation_speed = 1,
      energy_usage = "160kW",
      mining_speed = 1,
      resource_searching_radius = 2.49,
      module_slots = 4,
      tint = { r = 0.7, g = 0.2, b = 0.1, a = 1 },
      circuit_wire_max_distance = 10,
      emissions_per_minute = { pollution = 8 },
      next_upgrade = "bob-mining-drill-2",
    }),

    bobmods.mining.electric_mining_drill({
      name = "bob-mining-drill-2",
      icon = "__bobmining__/graphics/icons/electric-mining-drill-3.png",
      max_health = 600,
      animation_speed = 2,
      energy_usage = "300kW",
      mining_speed = 2,
      resource_searching_radius = 2.49,
      module_slots = 5,
      tint = { r = 0.2, g = 0.35, b = 0.5, a = 1 },
      circuit_wire_max_distance = 12.5,
      emissions_per_minute = { pollution = 6 },
      next_upgrade = "bob-mining-drill-3",
    }),

    bobmods.mining.electric_mining_drill({
      name = "bob-mining-drill-3",
      icon = "__bobmining__/graphics/icons/electric-mining-drill-4.png",
      max_health = 750,
      animation_speed = 4,
      energy_usage = "580kW",
      mining_speed = 4,
      resource_searching_radius = 2.49,
      module_slots = 6,
      tint = { r = 0.7, g = 0.25, b = 0.7, a = 1 },
      circuit_wire_max_distance = 15,
      emissions_per_minute = { pollution = 4 },
      next_upgrade = "bob-mining-drill-4",
    }),

    bobmods.mining.electric_mining_drill({
      name = "bob-mining-drill-4",
      icon = "__bobmining__/graphics/icons/electric-mining-drill-5.png",
      max_health = 900,
      animation_speed = 8,
      energy_usage = "1100kW",
      mining_speed = 8,
      resource_searching_radius = 2.49,
      module_slots = 8,
      tint = { r = 0.25, g = 0.5, b = 0.25, a = 1 },
      circuit_wire_max_distance = 17.5,
      emissions_per_minute = { pollution = 2 },
    }),
  })

  data:extend({
    {
      type = "technology",
      name = "bob-drills-2",
      icon = "__base__/graphics/technology/mining-productivity.png",
      icon_size = 256,
      prerequisites = {
        "steel-processing",
        "electric-mining-drill",
        "logistic-science-pack",
      },
      unit = {
        count = 50,
        time = 30,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-mining-drill-1",
        },
      },
    },
    {
      type = "technology",
      name = "bob-drills-3",
      icon = "__base__/graphics/technology/mining-productivity.png",
      icon_size = 256,
      prerequisites = {
        "bob-drills-2",
        "chemical-science-pack",
      },
      unit = {
        count = 75,
        time = 30,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-mining-drill-2",
        },
      },
    },
    {
      type = "technology",
      name = "bob-drills-4",
      icon = "__base__/graphics/technology/mining-productivity.png",
      icon_size = 256,
      prerequisites = {
        "bob-drills-3",
        "processing-unit",
        "production-science-pack",
      },
      unit = {
        count = 100,
        time = 30,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-mining-drill-3",
        },
      },
    },
    {
      type = "technology",
      name = "bob-drills-5",
      icon = "__base__/graphics/technology/mining-productivity.png",
      icon_size = 256,
      prerequisites = {
        "bob-drills-4",
        "utility-science-pack",
      },
      unit = {
        count = 150,
        time = 30,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-mining-drill-4",
        },
      },
    },
  })
end
