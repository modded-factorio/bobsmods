data.raw["mining-drill"]["pumpjack"].fast_replaceable_group = "pumpjack"
data.raw.item["pumpjack"].order = "b[fluids]-b[pumpjack-1]"

if settings.startup["bobmods-mining-pumpjacks"].value == true then

  data.raw["mining-drill"]["pumpjack"].next_upgrade = "bob-pumpjack-1"

  data:extend({
    {
      type = "item",
      name = "bob-pumpjack-1",
      icon = "__base__/graphics/icons/pumpjack.png",
      icon_size = 64,
      subgroup = "extraction-machine",
      order = "b[fluids]-b[pumpjack-2]",
      place_result = "bob-pumpjack-1",
      stack_size = 20,
      drop_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6
      },
      pick_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-pickup.ogg",
        volume = 0.6
      },
    },
    {
      type = "item",
      name = "bob-pumpjack-2",
      icon = "__base__/graphics/icons/pumpjack.png",
      icon_size = 64,
      subgroup = "extraction-machine",
      order = "b[fluids]-b[pumpjack-3]",
      place_result = "bob-pumpjack-2",
      stack_size = 20,
      drop_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6
      },
      pick_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-pickup.ogg",
        volume = 0.6
      },
    },
    {
      type = "item",
      name = "bob-pumpjack-3",
      icon = "__base__/graphics/icons/pumpjack.png",
      icon_size = 64,
      subgroup = "extraction-machine",
      order = "b[fluids]-b[pumpjack-4]",
      place_result = "bob-pumpjack-3",
      stack_size = 20,
      drop_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6
      },
      pick_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-pickup.ogg",
        volume = 0.6
      },
    },
    {
      type = "item",
      name = "bob-pumpjack-4",
      icon = "__base__/graphics/icons/pumpjack.png",
      icon_size = 64,
      subgroup = "extraction-machine",
      order = "b[fluids]-b[pumpjack-5]",
      place_result = "bob-pumpjack-4",
      stack_size = 20,
      drop_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-move.ogg",
        volume = 0.6
      },
      pick_sound = {
        filename = "__base__/sound/item/pumpjack-inventory-pickup.ogg",
        volume = 0.6
      },
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "bob-pumpjack-1",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "pumpjack", amount = 1 },
        { type = "item", name = "steel-plate", amount = 20 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "electronic-circuit", amount = 5 },
        { type = "item", name = "pipe", amount = 10 },
      },
      results = { { type = "item", name = "bob-pumpjack-1", amount = 1 } },
      enabled = false,
    },
    {
      type = "recipe",
      name = "bob-pumpjack-2",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "bob-pumpjack-1", amount = 1 },
        { type = "item", name = "steel-plate", amount = 20 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "advanced-circuit", amount = 5 },
        { type = "item", name = "pipe", amount = 10 },
      },
      results = { { type = "item", name = "bob-pumpjack-2", amount = 1 } },
      enabled = false,
    },
    {
      type = "recipe",
      name = "bob-pumpjack-3",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "bob-pumpjack-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 20 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "pipe", amount = 10 },
      },
      results = { { type = "item", name = "bob-pumpjack-3", amount = 1 } },
      enabled = false,
    },
    {
      type = "recipe",
      name = "bob-pumpjack-4",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "bob-pumpjack-3", amount = 1 },
        { type = "item", name = "steel-plate", amount = 20 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "pipe", amount = 10 },
      },
      results = { { type = "item", name = "bob-pumpjack-4", amount = 1 } },
      enabled = false,
    },
  })

  data:extend({
    {
      type = "mining-drill",
      name = "bob-pumpjack-1",
      icon = "__base__/graphics/icons/pumpjack.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 1, result = "bob-pumpjack-1" },
      resource_categories = { "basic-fluid" },
      max_health = 150,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      drawing_box = { { -1.6, -2.5 }, { 1.5, 1.6 } },
      energy_source = {
        type = "electric",
        emissions_per_minute = {pollution = 10},
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
      energy_usage = "171kW",
      mining_speed = 2,
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
        filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
        width = 12,
        height = 12,
      },
      monitor_visualization_tint = { r = 78, g = 173, b = 255 },
      base_picture = {
        sheets = {
          {
            filename = "__base__/graphics/entity/pumpjack/pumpjack-base.png",
            priority = "extra-high",
            width = 261,
            height = 273,
            shift = util.by_pixel(-2.25, -4.75),
            scale = 0.5,
          },
          {
            filename = "__base__/graphics/entity/pumpjack/pumpjack-base-shadow.png",
            width = 220,
            height = 220,
            scale = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(6, 0.5),
          },
        },
      },
      graphics_set = {
        animation = {
          north = {
            layers = {
              {
                priority = "extra-high",
                filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead.png",
                animation_speed = 0.5,
                scale = 0.5,
                line_length = 8,
                width = 206,
                height = 202,
                frame_count = 40,
                shift = util.by_pixel(-4, -24),
              },
              {
                priority = "extra-high",
                filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead-shadow.png",
                animation_speed = 0.5,
                draw_as_shadow = true,
                line_length = 8,
                width = 309,
                height = 82,
                frame_count = 40,
                scale = 0.5,
                shift = util.by_pixel(17.75, 14.5),
              },
            },
          },
        },
      },
      working_sound = {
        sound = { filename = "__base__/sound/pumpjack.ogg" },
        apparent_volume = 1.5,
      },
      circuit_connector = circuit_connector_definitions["pumpjack"],
      circuit_wire_max_distance = 10,
      next_upgrade = "bob-pumpjack-2"
    },
    {
      type = "mining-drill",
      name = "bob-pumpjack-2",
      icon = "__base__/graphics/icons/pumpjack.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 1, result = "bob-pumpjack-2" },
      resource_categories = { "basic-fluid" },
      max_health = 200,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      drawing_box = { { -1.6, -2.5 }, { 1.5, 1.6 } },
      energy_source = {
        type = "electric",
        emissions_per_minute = {pollution = 10},
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
      energy_usage = "243kW",
      mining_speed = 3,
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
        filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
        width = 12,
        height = 12,
      },
      monitor_visualization_tint = { r = 78, g = 173, b = 255 },
      base_picture = {
        sheets = {
          {
            filename = "__base__/graphics/entity/pumpjack/pumpjack-base.png",
            priority = "extra-high",
            width = 261,
            height = 273,
            shift = util.by_pixel(-2.25, -4.75),
            scale = 0.5,
          },
          {
            filename = "__base__/graphics/entity/pumpjack/pumpjack-base-shadow.png",
            width = 220,
            height = 220,
            scale = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(6, 0.5),
          },
        },
      },
      graphics_set = {
        animation = {
          north = {
            layers = {
              {
                priority = "extra-high",
                filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead.png",
                animation_speed = 0.5,
                scale = 0.5,
                line_length = 8,
                width = 206,
                height = 202,
                frame_count = 40,
                shift = util.by_pixel(-4, -24),
              },
              {
                priority = "extra-high",
                filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead-shadow.png",
                animation_speed = 0.5,
                draw_as_shadow = true,
                line_length = 8,
                width = 309,
                height = 82,
                frame_count = 40,
                scale = 0.5,
                shift = util.by_pixel(17.75, 14.5),
              },
            },
          },
        },
      },
      working_sound = {
        sound = { filename = "__base__/sound/pumpjack.ogg" },
        apparent_volume = 1.5,
      },
      circuit_connector = circuit_connector_definitions["pumpjack"],
      circuit_wire_max_distance = 12.5,
      next_upgrade = "bob-pumpjack-3"
    },
    {
      type = "mining-drill",
      name = "bob-pumpjack-3",
      icon = "__base__/graphics/icons/pumpjack.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 1, result = "bob-pumpjack-3" },
      resource_categories = { "basic-fluid" },
      max_health = 250,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      drawing_box = { { -1.6, -2.5 }, { 1.5, 1.6 } },
      energy_source = {
        type = "electric",
        emissions_per_minute = {pollution = 10},
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
      energy_usage = "306kW",
      mining_speed = 4,
      resource_searching_radius = 0.49,
      vector_to_place_result = { 0, 0 },
      module_slots = 5,
      icons_positioning = {
        {
          inventory_index = defines.inventory.mining_drill_modules,
          shift = { 0, 0.5 },
          multi_row_initial_height_modifier = -0.3,
        },
      },
      fast_replaceable_group = "pumpjack",
      radius_visualisation_picture = {
        filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
        width = 12,
        height = 12,
      },
      monitor_visualization_tint = { r = 78, g = 173, b = 255 },
      base_picture = {
        sheets = {
          {
            filename = "__base__/graphics/entity/pumpjack/pumpjack-base.png",
            priority = "extra-high",
            width = 261,
            height = 273,
            shift = util.by_pixel(-2.25, -4.75),
            scale = 0.5,
          },
          {
            filename = "__base__/graphics/entity/pumpjack/pumpjack-base-shadow.png",
            width = 220,
            height = 220,
            scale = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(6, 0.5),
          },
        },
      },
      graphics_set = {
        animation = {
          north = {
            layers = {
              {
                priority = "extra-high",
                filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead.png",
                animation_speed = 0.5,
                scale = 0.5,
                line_length = 8,
                width = 206,
                height = 202,
                frame_count = 40,
                shift = util.by_pixel(-4, -24),
              },
              {
                priority = "extra-high",
                filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead-shadow.png",
                animation_speed = 0.5,
                draw_as_shadow = true,
                line_length = 8,
                width = 309,
                height = 82,
                frame_count = 40,
                scale = 0.5,
                shift = util.by_pixel(17.75, 14.5),
              },
            },
          },
        },
      },
      working_sound = {
        sound = { filename = "__base__/sound/pumpjack.ogg" },
        apparent_volume = 1.5,
      },
      circuit_connector = circuit_connector_definitions["pumpjack"],
      circuit_wire_max_distance = 15,
      next_upgrade = "bob-pumpjack-4"
    },
    {
      type = "mining-drill",
      name = "bob-pumpjack-4",
      icon = "__base__/graphics/icons/pumpjack.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 1, result = "bob-pumpjack-4" },
      resource_categories = { "basic-fluid" },
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      drawing_box = { { -1.6, -2.5 }, { 1.5, 1.6 } },
      energy_source = {
        type = "electric",
        emissions_per_minute = {pollution = 10},
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
      energy_usage = "360kW",
      mining_speed = 5,
      resource_searching_radius = 0.49,
      vector_to_place_result = { 0, 0 },
      module_slots = 6,
      icons_positioning = {
        {
          inventory_index = defines.inventory.mining_drill_modules,
          shift = { 0, 0.5 },
          multi_row_initial_height_modifier = -0.3,
        },
      },
      fast_replaceable_group = "pumpjack",
      radius_visualisation_picture = {
        filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
        width = 12,
        height = 12,
      },
      monitor_visualization_tint = { r = 78, g = 173, b = 255 },
      base_picture = {
        sheets = {
          {
            filename = "__base__/graphics/entity/pumpjack/pumpjack-base.png",
            priority = "extra-high",
            width = 261,
            height = 273,
            shift = util.by_pixel(-2.25, -4.75),
            scale = 0.5,
          },
          {
            filename = "__base__/graphics/entity/pumpjack/pumpjack-base-shadow.png",
            width = 220,
            height = 220,
            scale = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(6, 0.5),
          },
        },
      },
      graphics_set = {
        animation = {
          north = {
            layers = {
              {
                priority = "extra-high",
                filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead.png",
                animation_speed = 0.5,
                scale = 0.5,
                line_length = 8,
                width = 206,
                height = 202,
                frame_count = 40,
                shift = util.by_pixel(-4, -24),
              },
              {
                priority = "extra-high",
                filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead-shadow.png",
                animation_speed = 0.5,
                draw_as_shadow = true,
                line_length = 8,
                width = 309,
                height = 82,
                frame_count = 40,
                scale = 0.5,
                shift = util.by_pixel(17.75, 14.5),
              },
            },
          },
        },
      },
      working_sound = {
        sound = { filename = "__base__/sound/pumpjack.ogg" },
        apparent_volume = 1.5,
      },
      circuit_connector = circuit_connector_definitions["pumpjack"],
      circuit_wire_max_distance = 17.5,
    },
  })

  data:extend({
    {
      type = "technology",
      name = "bob-pumpjacks-1",
      icon = "__base__/graphics/technology/oil-gathering.png",
      icon_size = 256,
      order = "d-a-c-1",
      prerequisites = {
        "oil-processing",
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
          recipe = "bob-pumpjack-1",
        },
      },
    },
    {
      type = "technology",
      name = "bob-pumpjacks-2",
      icon = "__base__/graphics/technology/oil-gathering.png",
      icon_size = 256,
      order = "d-a-c-2",
      prerequisites = {
        "bob-pumpjacks-1",
        "advanced-circuit",
      },
      unit = {
        count = 75,
        time = 30,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 2 },
        },
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-pumpjack-2",
        },
      },
    },
    {
      type = "technology",
      name = "bob-pumpjacks-3",
      icon = "__base__/graphics/technology/oil-gathering.png",
      icon_size = 256,
      order = "d-a-c-3",
      prerequisites = {
        "bob-pumpjacks-2",
        "processing-unit",
      },
      unit = {
        count = 100,
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
          recipe = "bob-pumpjack-3",
        },
      },
    },
    {
      type = "technology",
      name = "bob-pumpjacks-4",
      icon = "__base__/graphics/technology/oil-gathering.png",
      icon_size = 256,
      order = "d-a-c-4",
      prerequisites = {
        "bob-pumpjacks-3",
      },
      unit = {
        count = 150,
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
          recipe = "bob-pumpjack-4",
        },
      },
    },
  })
end
