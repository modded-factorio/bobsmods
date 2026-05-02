if settings.startup["bobmods-mining-areadrills"].value == true then
  data:extend({
    {
      type = "item",
      name = "bob-area-mining-drill-1",
      icon = "__bobmining__/graphics/icons/electric-mining-drill-2a.png",
      icon_size = 64,
      subgroup = "extraction-machine",
      order = "a[items]-b-b[mining-drill-1]",
      place_result = "bob-area-mining-drill-1",
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
      name = "bob-area-mining-drill-2",
      icon = "__bobmining__/graphics/icons/electric-mining-drill-3a.png",
      icon_size = 64,
      subgroup = "extraction-machine",
      order = "a[items]-b-b[mining-drill-2]",
      place_result = "bob-area-mining-drill-2",
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
      name = "bob-area-mining-drill-3",
      icon = "__bobmining__/graphics/icons/electric-mining-drill-4a.png",
      icon_size = 64,
      subgroup = "extraction-machine",
      order = "a[items]-b-b[mining-drill-3]",
      place_result = "bob-area-mining-drill-3",
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
      name = "bob-area-mining-drill-4",
      icon = "__bobmining__/graphics/icons/electric-mining-drill-5a.png",
      icon_size = 64,
      subgroup = "extraction-machine",
      order = "a[items]-b-b[mining-drill-4]",
      place_result = "bob-area-mining-drill-4",
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
      name = "bob-area-mining-drill-1",
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "item", name = "electric-mining-drill", amount = 1 },
        { type = "item", name = "electronic-circuit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
      },
      results = { { type = "item", name = "bob-area-mining-drill-1", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-area-mining-drill-2",
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "item", name = "bob-area-mining-drill-1", amount = 1 },
        { type = "item", name = "advanced-circuit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
      },
      results = { { type = "item", name = "bob-area-mining-drill-2", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-area-mining-drill-3",
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "item", name = "bob-area-mining-drill-2", amount = 1 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
      },
      results = { { type = "item", name = "bob-area-mining-drill-3", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-area-mining-drill-4",
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "item", name = "bob-area-mining-drill-3", amount = 1 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
      },
      results = { { type = "item", name = "bob-area-mining-drill-4", amount = 1 } },
    },
  })

  data:extend({
    bobmods.mining.electric_mining_drill({
      name = "bob-area-mining-drill-1",
      icon = "__bobmining__/graphics/icons/electric-mining-drill-2a.png",
      max_health = 450,
      animation_speed = 0.75,
      energy_usage = "170kW",
      mining_speed = 0.75,
      resource_searching_radius = 3.49,
      module_slots = 4,
      tint = { r = 0.7, g = 0.2, b = 0.1, a = 1 },
      circuit_wire_max_distance = 10,
      emissions_per_minute = { pollution = 8 },
      next_upgrade = "bob-area-mining-drill-2",
      large_area = true,
    }),

    bobmods.mining.electric_mining_drill({
      name = "bob-area-mining-drill-2",
      icon = "__bobmining__/graphics/icons/electric-mining-drill-3a.png",
      max_health = 600,
      animation_speed = 1.25,
      energy_usage = "270kW",
      mining_speed = 1.25,
      resource_searching_radius = 5.49,
      module_slots = 5,
      tint = { r = 0.2, g = 0.35, b = 0.5, a = 1 },
      circuit_wire_max_distance = 12.5,
      emissions_per_minute = { pollution = 6 },
      next_upgrade = "bob-area-mining-drill-3",
      large_area = true,
    }),

    bobmods.mining.electric_mining_drill({
      name = "bob-area-mining-drill-3",
      icon = "__bobmining__/graphics/icons/electric-mining-drill-4a.png",
      max_health = 750,
      animation_speed = 2,
      energy_usage = "380kW",
      mining_speed = 2,
      resource_searching_radius = 6.49,
      module_slots = 6,
      tint = { r = 0.7, g = 0.25, b = 0.7, a = 1 },
      circuit_wire_max_distance = 15,
      emissions_per_minute = { pollution = 4 },
      next_upgrade = "bob-area-mining-drill-4",
      large_area = true,
    }),

    bobmods.mining.electric_mining_drill({
      name = "bob-area-mining-drill-4",
      icon = "__bobmining__/graphics/icons/electric-mining-drill-5a.png",
      max_health = 900,
      animation_speed = 3.25,
      energy_usage = "500kW",
      mining_speed = 3.25,
      resource_searching_radius = 8.49,
      module_slots = 8,
      tint = { r = 0.25, g = 0.5, b = 0.25, a = 1 },
      circuit_wire_max_distance = 17.5,
      emissions_per_minute = { pollution = 2 },
      large_area = true,
    }),
  })

  data:extend({
    {
      type = "technology",
      name = "bob-area-drills-1",
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
          recipe = "bob-area-mining-drill-1",
        },
      },
    },
    {
      type = "technology",
      name = "bob-area-drills-2",
      icon = "__base__/graphics/technology/mining-productivity.png",
      icon_size = 256,
      prerequisites = {
        "bob-area-drills-1",
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
          recipe = "bob-area-mining-drill-2",
        },
      },
    },
    {
      type = "technology",
      name = "bob-area-drills-3",
      icon = "__base__/graphics/technology/mining-productivity.png",
      icon_size = 256,
      prerequisites = {
        "bob-area-drills-2",
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
          recipe = "bob-area-mining-drill-3",
        },
      },
    },
    {
      type = "technology",
      name = "bob-area-drills-4",
      icon = "__base__/graphics/technology/mining-productivity.png",
      icon_size = 256,
      prerequisites = {
        "bob-area-drills-3",
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
          recipe = "bob-area-mining-drill-4",
        },
      },
    },
  })
end
