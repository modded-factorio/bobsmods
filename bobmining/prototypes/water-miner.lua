if settings.startup["bobmods-mining-waterminers"].value == true and data.raw["resource-category"]["water"] then
  data:extend({
    {
      type = "item",
      name = "bob-water-miner-1",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      subgroup = "extraction-machine",
      order = "b[fluids]-c[water-miner-1]",
      place_result = "bob-water-miner-1",
      stack_size = 20,
      drop_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-pickup.ogg",
        volume = 0.6,
      },
    },
    {
      type = "item",
      name = "bob-water-miner-2",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      subgroup = "extraction-machine",
      order = "b[fluids]-c[water-miner-2]",
      place_result = "bob-water-miner-2",
      stack_size = 20,
      drop_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-pickup.ogg",
        volume = 0.6,
      },
    },
    {
      type = "item",
      name = "bob-water-miner-3",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      subgroup = "extraction-machine",
      order = "b[fluids]-c[water-miner-3]",
      place_result = "bob-water-miner-3",
      stack_size = 20,
      drop_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-pickup.ogg",
        volume = 0.6,
      },
    },
    {
      type = "item",
      name = "bob-water-miner-4",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      subgroup = "extraction-machine",
      order = "b[fluids]-c[water-miner-4]",
      place_result = "bob-water-miner-4",
      stack_size = 20,
      drop_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-pickup.ogg",
        volume = 0.6,
      },
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "bob-water-miner-1",
      energy_required = 2,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "electronic-circuit", amount = 5 },
        { type = "item", name = "pipe", amount = 10 },
      },
      results = { { type = "item", name = "bob-water-miner-1", amount = 1 } },
      enabled = false,
    },
    {
      type = "recipe",
      name = "bob-water-miner-2",
      energy_required = 2,
      ingredients = {
        { type = "item", name = "bob-water-miner-1", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "electronic-circuit", amount = 5 },
        { type = "item", name = "pipe", amount = 10 },
      },
      results = { { type = "item", name = "bob-water-miner-2", amount = 1 } },
      enabled = false,
    },
    {
      type = "recipe",
      name = "bob-water-miner-3",
      energy_required = 2,
      ingredients = {
        { type = "item", name = "bob-water-miner-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "advanced-circuit", amount = 5 },
        { type = "item", name = "pipe", amount = 10 },
      },
      results = { { type = "item", name = "bob-water-miner-3", amount = 1 } },
      enabled = false,
    },
    {
      type = "recipe",
      name = "bob-water-miner-4",
      energy_required = 2,
      ingredients = {
        { type = "item", name = "bob-water-miner-3", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "pipe", amount = 10 },
      },
      results = { { type = "item", name = "bob-water-miner-4", amount = 1 } },
      enabled = false,
    },
  })

  data:extend({
    {
      type = "mining-drill",
      name = "bob-water-miner-1",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 1, result = "bob-water-miner-1" },
      resource_categories = { "water" },
      max_health = 100,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      drawing_box_vertical_extension = 1,
      energy_source = {
        type = "electric",
        emissions_per_minute = { pollution = 1 },
        usage_priority = "secondary-input",
      },
      output_fluid_box = {
        volume = 1000,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          {
            flow_direction = "output",
            positions = { { 1, -1 }, { 1, -1 }, { -1, 1 }, { -1, 1 } },
            direction = defines.direction.north,
          },
        },
      },
      energy_usage = "45kW",
      mining_speed = 1,
      resource_searching_radius = 0.49,
      vector_to_place_result = { 0, 0 },
      module_slots = 1,
      icons_positioning = {
        {
          inventory_index = defines.inventory.mining_drill_modules,
          shift = { 0, 0.5 },
          multi_row_initial_height_modifier = -0.3,
        },
      },
      radius_visualisation_picture = {
        filename = "__bobmining__/graphics/entity/water-miner/water-miner-radius-visualization.png",
        width = 12,
        height = 12,
      },
      monitor_visualization_tint = { r = 78, g = 173, b = 255 },
      base_picture = data.raw["mining-drill"].pumpjack.base_picture,
      graphics_set = {
        animation = {
          north = {
            priority = "extra-high",
            width = 116,
            height = 110,
            line_length = 10,
            shift = { 0.125, -0.71875 },
            filename = "__bobmining__/graphics/entity/water-miner/water-miner-animation.png",
            tint = { r = 0.2, g = 0.8, b = 1 },
            frame_count = 40,
            animation_speed = 0.5,
          },
        },
      },
      working_sound = {
        sound = { filename = "__base__/sound/pumpjack.ogg" },
      },
      fast_replaceable_group = "pumpjack",
      circuit_connector = circuit_connector_definitions["pumpjack"],
      circuit_wire_max_distance = 7.5,
      next_upgrade = "bob-water-miner-2",
    },
    {
      type = "mining-drill",
      name = "bob-water-miner-2",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 1, result = "bob-water-miner-2" },
      resource_categories = { "water" },
      max_health = 150,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      drawing_box_vertical_extension = 1,
      energy_source = {
        type = "electric",
        emissions_per_minute = { pollution = 1 },
        usage_priority = "secondary-input",
      },
      output_fluid_box = {
        volume = 1000,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          {
            flow_direction = "output",
            positions = { { 1, -1 }, { 1, -1 }, { -1, 1 }, { -1, 1 } },
            direction = defines.direction.north,
          },
        },
      },
      energy_usage = "85kW",
      mining_speed = 2,
      resource_searching_radius = 0.49,
      vector_to_place_result = { 0, 0 },
      module_slots = 2,
      icons_positioning = {
        {
          inventory_index = defines.inventory.mining_drill_modules,
          shift = { 0, 0.5 },
          multi_row_initial_height_modifier = -0.3,
        },
      },
      fast_replaceable_group = "pumpjack",
      radius_visualisation_picture = {
        filename = "__bobmining__/graphics/entity/water-miner/water-miner-radius-visualization.png",
        width = 12,
        height = 12,
      },
      monitor_visualization_tint = { r = 78, g = 173, b = 255 },
      base_picture = data.raw["mining-drill"].pumpjack.base_picture,
      graphics_set = {
        animation = {
          north = {
            priority = "extra-high",
            width = 116,
            height = 110,
            line_length = 10,
            shift = { 0.125, -0.71875 },
            filename = "__bobmining__/graphics/entity/water-miner/water-miner-animation.png",
            tint = { r = 0.2, g = 0.8, b = 1 },
            frame_count = 40,
            animation_speed = 0.5,
          },
        },
      },
      working_sound = {
        sound = { filename = "__base__/sound/pumpjack.ogg" },
      },
      circuit_connector = circuit_connector_definitions["pumpjack"],
      circuit_wire_max_distance = 10,
      next_upgrade = "bob-water-miner-3",
    },
    {
      type = "mining-drill",
      name = "bob-water-miner-3",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 1, result = "bob-water-miner-3" },
      resource_categories = { "water" },
      max_health = 200,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      drawing_box_vertical_extension = 1,
      energy_source = {
        type = "electric",
        emissions_per_minute = { pollution = 1 },
        usage_priority = "secondary-input",
      },
      output_fluid_box = {
        volume = 1000,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          {
            flow_direction = "output",
            positions = { { 1, -1 }, { 1, -1 }, { -1, 1 }, { -1, 1 } },
            direction = defines.direction.north,
          },
        },
      },
      energy_usage = "121kW",
      mining_speed = 3,
      resource_searching_radius = 0.49,
      vector_to_place_result = { 0, 0 },
      module_slots = 3,
      icons_positioning = {
        {
          inventory_index = defines.inventory.mining_drill_modules,
          shift = { 0, 0.5 },
          multi_row_initial_height_modifier = -0.3,
        },
      },
      fast_replaceable_group = "pumpjack",
      radius_visualisation_picture = {
        filename = "__bobmining__/graphics/entity/water-miner/water-miner-radius-visualization.png",
        width = 12,
        height = 12,
      },
      base_picture = data.raw["mining-drill"].pumpjack.base_picture,
      monitor_visualization_tint = { r = 78, g = 173, b = 255 },
      graphics_set = {
        animation = {
          north = {
            priority = "extra-high",
            width = 116,
            height = 110,
            line_length = 10,
            shift = { 0.125, -0.71875 },
            filename = "__bobmining__/graphics/entity/water-miner/water-miner-animation.png",
            tint = { r = 0.2, g = 0.8, b = 1 },
            frame_count = 40,
            animation_speed = 0.5,
          },
        },
      },
      working_sound = {
        sound = { filename = "__base__/sound/pumpjack.ogg" },
      },
      circuit_connector = circuit_connector_definitions["pumpjack"],
      circuit_wire_max_distance = 12.5,
      next_upgrade = "bob-water-miner-4",
    },
    {
      type = "mining-drill",
      name = "bob-water-miner-4",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 1, result = "bob-water-miner-4" },
      resource_categories = { "water" },
      max_health = 250,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      drawing_box_vertical_extension = 1,
      energy_source = {
        type = "electric",
        emissions_per_minute = { pollution = 1 },
        usage_priority = "secondary-input",
      },
      output_fluid_box = {
        volume = 1000,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          {
            flow_direction = "output",
            positions = { { 1, -1 }, { 1, -1 }, { -1, 1 }, { -1, 1 } },
            direction = defines.direction.north,
          },
        },
      },
      energy_usage = "180W",
      mining_speed = 5,
      resource_searching_radius = 0.49,
      vector_to_place_result = { 0, 0 },
      module_slots = 4,
      icons_positioning = {
        {
          inventory_index = defines.inventory.mining_drill_modules,
          shift = { 0, 0.5 },
          multi_row_initial_height_modifier = -0.3,
        },
      },
      fast_replaceable_group = "pumpjack",
      radius_visualisation_picture = {
        filename = "__bobmining__/graphics/entity/water-miner/water-miner-radius-visualization.png",
        width = 12,
        height = 12,
      },
      monitor_visualization_tint = { r = 78, g = 173, b = 255 },
      base_picture = data.raw["mining-drill"].pumpjack.base_picture,
      graphics_set = {
        animation = {
          north = {
            priority = "extra-high",
            width = 116,
            height = 110,
            line_length = 10,
            shift = { 0.125, -0.71875 },
            filename = "__bobmining__/graphics/entity/water-miner/water-miner-animation.png",
            tint = { r = 0.2, g = 0.8, b = 1 },
            frame_count = 40,
            animation_speed = 0.5,
          },
        },
      },
      working_sound = {
        sound = { filename = "__base__/sound/pumpjack.ogg" },
      },
      circuit_connector = circuit_connector_definitions["pumpjack"],
      circuit_wire_max_distance = 15,
    },
  })

  data:extend({
    {
      type = "technology",
      name = "bob-water-miner-1",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      prerequisites = {
        "automation-science-pack",
      },
      unit = {
        count = 10,
        time = 30,
        ingredients = {
          { "automation-science-pack", 1 },
        },
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-water-miner-1",
        },
      },
    },
    {
      type = "technology",
      name = "bob-water-miner-2",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      prerequisites = {
        "bob-water-miner-1",
        "fluid-handling",
      },
      unit = {
        count = 30,
        time = 30,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-water-miner-2",
        },
      },
    },
    {
      type = "technology",
      name = "bob-water-miner-3",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      prerequisites = {
        "bob-water-miner-2",
        "chemical-science-pack",
      },
      unit = {
        count = 50,
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
          recipe = "bob-water-miner-3",
        },
      },
    },
    {
      type = "technology",
      name = "bob-water-miner-4",
      icon = "__bobmining__/graphics/icons/waterdrill.png",
      icon_size = 128,
      prerequisites = {
        "bob-water-miner-3",
        "processing-unit",
        "production-science-pack",
      },
      unit = {
        count = 75,
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
          recipe = "bob-water-miner-4",
        },
      },
    },
  })
end
