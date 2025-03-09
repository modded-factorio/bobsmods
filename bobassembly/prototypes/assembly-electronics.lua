if settings.startup["bobmods-assembly-electronicmachines"].value == true then
  circuit_connector_definitions["small-assembling-machine"] =
    circuit_connector_definitions.create_vector(universal_connector_template, {
      {
        variation = 18,
        main_offset = util.by_pixel(8, 16.25),
        shadow_offset = util.by_pixel(13.25, 20.75),
        show_shadow = true,
      },
      {
        variation = 18,
        main_offset = util.by_pixel(8, 16.25),
        shadow_offset = util.by_pixel(13.25, 20.75),
        show_shadow = true,
      },
      {
        variation = 31,
        main_offset = util.by_pixel(22, -10),
        shadow_offset = util.by_pixel(26, -2.5),
        show_shadow = true,
      },
      {
        variation = 18,
        main_offset = util.by_pixel(8, 16.25),
        shadow_offset = util.by_pixel(13.25, 20.75),
        show_shadow = true,
      },
    })

  data:extend({
    {
      type = "recipe-category",
      name = "bob-electronics",
    },
    {
      type = "recipe-category",
      name = "bob-electronics-machine",
    },
    {
      type = "recipe-category",
      name = "bob-electronics-with-fluid",
    },
  })

  data:extend({
    {
      type = "item",
      name = "bob-electronics-machine-1",
      icon = "__bobassembly__/graphics/icons/electronics-machine-1.png",
      icon_size = 32,
      subgroup = "bob-assembly-machine",
      order = "d[electronics-machine-1]",
      place_result = "bob-electronics-machine-1",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/mechanical-inventory-move.ogg",
        volume = 0.7,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/mechanical-inventory-move.ogg",
        volume = 0.7,
      },
      pick_sound = {
        filename = "__base__/sound/item/mechanical-inventory-pickup.ogg",
        volume = 0.8,
      },
      weight = 10000,
    },

    {
      type = "assembling-machine",
      name = "bob-electronics-machine-1",
      icon = "__bobassembly__/graphics/icons/electronics-machine-1.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-electronics-machine-1" },
      max_health = 250,
      circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
      circuit_connector = circuit_connector_definitions["small-assembling-machine"],
      corpse = "medium-remnants",
      dying_explosion = "medium-explosion",
      resistances = {
        {
          type = "fire",
          percent = 70,
        },
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          pipe_connections = {
            { flow_direction = "input", direction = defines.direction.north, position = { 0.5, -0.5 } },
          },
          secondary_draw_orders = { north = -1 },
          volume = 1000,
        },
      },
      fluid_boxes_off_when_no_fluid_recipe = true,
      forced_symmetry = "vertical",
      collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
      selection_box = { { -1, -1 }, { 1, 1 } },
      fast_replaceable_group = "assembling-machine",
      next_upgrade = "bob-electronics-machine-2",
      graphics_set = {
        animation = {
          layers = {
            {
              filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-1.png",
              priority = "high",
              width = 214,
              height = 226,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, 2 * 2 / 3),
              scale = 1 / 3,
            },
            {
              filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
              priority = "high",
              width = 214,
              height = 237,
              repeat_count = 32,
              scale = 1 / 3,
              tint = { r = 0.1, g = 0.5, b = 0.7 },
            },
            {
              filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-1-shadow.png",
              priority = "high",
              width = 190,
              height = 165,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              draw_as_shadow = true,
              shift = util.by_pixel(8.5 * 2 / 3, 5 * 2 / 3),
              scale = 1 / 3,
            },
          },
        },
      },
      open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
      close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
      impact_category = "metal",
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/assembling-machine-t2-1.ogg",
            volume = 0.8,
          },
          {
            filename = "__base__/sound/assembling-machine-t2-2.ogg",
            volume = 0.8,
          },
        },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      },
      crafting_categories = { "bob-electronics", "bob-electronics-machine", "bob-electronics-with-fluid" },
      crafting_speed = 1,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 2 },
      },
      energy_usage = "100kW",
      module_slots = 2,
      icons_positioning = {
        {
          inventory_index = defines.inventory.assembling_machine_modules,
          shift = { 0, 0.5 },
          scale = 0.4,
          multi_row_initial_height_modifier = -0.3,
        },
      },
      icon_draw_specification = {
        scale = 0.66,
        shift = { 0, -0.15 },
      },
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    },

    {
      type = "recipe",
      name = "bob-electronics-machine-1",
      enabled = false,
      ingredients = {
        { type = "item", name = "electronic-circuit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 5 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
      },
      results = { { type = "item", name = "bob-electronics-machine-1", amount = 1 } },
    },

    {
      type = "technology",
      name = "bob-electronics-machine-1",
      icon = "__base__/graphics/technology/automation-1.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-electronics-machine-1",
        },
      },
      prerequisites = {
        "automation-2",
      },
      unit = {
        count = 30,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 10,
      },
      order = "a-c-a",
    },
  })

  data:extend({
    {
      type = "item",
      name = "bob-electronics-machine-2",
      icon = "__bobassembly__/graphics/icons/electronics-machine-2.png",
      icon_size = 32,
      subgroup = "bob-assembly-machine",
      order = "d[electronics-machine-2]",
      place_result = "bob-electronics-machine-2",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/mechanical-inventory-move.ogg",
        volume = 0.7,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/mechanical-inventory-move.ogg",
        volume = 0.7,
      },
      pick_sound = {
        filename = "__base__/sound/item/mechanical-inventory-pickup.ogg",
        volume = 0.8,
      },
      weight = 10000,
    },

    {
      type = "assembling-machine",
      name = "bob-electronics-machine-2",
      icon = "__bobassembly__/graphics/icons/electronics-machine-2.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-electronics-machine-2" },
      max_health = 350,
      circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
      circuit_connector = circuit_connector_definitions["small-assembling-machine"],
      corpse = "medium-remnants",
      dying_explosion = "medium-explosion",
      resistances = {
        {
          type = "fire",
          percent = 70,
        },
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          pipe_connections = {
            { flow_direction = "input", direction = defines.direction.north, position = { 0.5, -0.5 } },
          },
          secondary_draw_orders = { north = -1 },
          volume = 1000,
        },
      },
      fluid_boxes_off_when_no_fluid_recipe = true,
      forced_symmetry = "vertical",
      collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
      selection_box = { { -1, -1 }, { 1, 1 } },
      fast_replaceable_group = "assembling-machine",
      next_upgrade = "bob-electronics-machine-3",
      graphics_set = {
        animation = {
          layers = {
            {
              filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2.png",
              priority = "high",
              width = 214,
              height = 218,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, 4 * 2 / 3),
              scale = 1 / 3,
            },
            {
              filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
              priority = "high",
              width = 214,
              height = 237,
              repeat_count = 32,
              scale = 1 / 3,
              tint = { r = 0.7, g = 0.2, b = 0.1 },
            },
            {
              filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2-shadow.png",
              priority = "high",
              width = 196,
              height = 163,
              frame_count = 32,
              line_length = 8,
              draw_as_shadow = true,
              shift = util.by_pixel(12 * 2 / 3, 4.75 * 2 / 3),
              scale = 1 / 3,
            },
          },
        },
      },
      open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
      close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
      impact_category = "metal",
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/assembling-machine-t3-1.ogg",
            volume = 0.8,
          },
          {
            filename = "__base__/sound/assembling-machine-t3-2.ogg",
            volume = 0.8,
          },
        },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      },
      crafting_categories = { "bob-electronics", "bob-electronics-machine", "bob-electronics-with-fluid" },
      crafting_speed = 2.25,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 1 },
      },
      energy_usage = "213.75kW",
      module_slots = 4,
      icons_positioning = {
        {
          inventory_index = defines.inventory.assembling_machine_modules,
          shift = { 0, 0.7 },
          scale = 0.4,
          multi_row_initial_height_modifier = -0.3,
          max_icons_per_row = 2,
        },
      },
      icon_draw_specification = {
        scale = 0.66,
        shift = { 0, -0.15 },
      },
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    },

    {
      type = "recipe",
      name = "bob-electronics-machine-2",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-electronics-machine-1", amount = 1 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 5 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
      },
      results = { { type = "item", name = "bob-electronics-machine-2", amount = 1 } },
    },

    {
      type = "technology",
      name = "bob-electronics-machine-2",
      icon = "__base__/graphics/technology/automation-1.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-electronics-machine-2",
        },
      },
      prerequisites = {
        "bob-electronics-machine-1",
        "steel-processing",
        "processing-unit",
        "production-science-pack",
      },
      unit = {
        count = 80,
        time = 30,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
      },
      order = "a-c-b",
    },
  })

  data:extend({
    {
      type = "item",
      name = "bob-electronics-machine-3",
      icon = "__bobassembly__/graphics/icons/electronics-machine-3.png",
      icon_size = 32,
      subgroup = "bob-assembly-machine",
      order = "d[electronics-machine-3]",
      place_result = "bob-electronics-machine-3",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/mechanical-inventory-move.ogg",
        volume = 0.7,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/mechanical-inventory-move.ogg",
        volume = 0.7,
      },
      pick_sound = {
        filename = "__base__/sound/item/mechanical-inventory-pickup.ogg",
        volume = 0.8,
      },
      weight = 10000,
    },

    {
      type = "assembling-machine",
      name = "bob-electronics-machine-3",
      icon = "__bobassembly__/graphics/icons/electronics-machine-3.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-electronics-machine-3" },
      max_health = 450,
      circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
      circuit_connector = circuit_connector_definitions["small-assembling-machine"],
      corpse = "medium-remnants",
      dying_explosion = "medium-explosion",
      resistances = {
        {
          type = "fire",
          percent = 70,
        },
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          pipe_connections = {
            { flow_direction = "input", direction = defines.direction.north, position = { 0.5, -0.5 } },
          },
          secondary_draw_orders = { north = -1 },
          volume = 1000,
        },
      },
      fluid_boxes_off_when_no_fluid_recipe = true,
      forced_symmetry = "vertical",
      collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
      selection_box = { { -1, -1 }, { 1, 1 } },
      fast_replaceable_group = "assembling-machine",
      graphics_set = {
        animation = {
          layers = {
            {
              filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-3.png",
              priority = "high",
              width = 214,
              height = 237,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, -0.75 * 2 / 3),
              scale = 1 / 3,
            },
            {
              filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
              priority = "high",
              width = 214,
              height = 237,
              repeat_count = 32,
              scale = 1 / 3,
              tint = { r = 0.1, g = 0.7, b = 0.1 },
            },
            {
              filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-3-shadow.png",
              priority = "high",
              width = 260,
              height = 162,
              frame_count = 32,
              line_length = 8,
              draw_as_shadow = true,
              shift = util.by_pixel(28 * 2 / 3, 4 * 2 / 3),
              scale = 1 / 3,
            },
          },
        },
      },
      open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
      close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
      impact_category = "metal",
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/assembling-machine-t3-1.ogg",
            volume = 0.8,
          },
          {
            filename = "__base__/sound/assembling-machine-t3-2.ogg",
            volume = 0.8,
          },
        },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      },
      crafting_categories = { "bob-electronics", "bob-electronics-machine", "bob-electronics-with-fluid" },
      crafting_speed = 4,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 0.5 },
      },
      energy_usage = "360kW",
      module_slots = 6,
      icons_positioning = {
        {
          inventory_index = defines.inventory.assembling_machine_modules,
          shift = { 0, 0.7 },
          scale = 0.4,
          multi_row_initial_height_modifier = -0.3,
          max_icons_per_row = 3,
        },
      },
      icon_draw_specification = {
        scale = 0.66,
        shift = { 0, -0.15 },
      },
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    },

    {
      type = "recipe",
      name = "bob-electronics-machine-3",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-electronics-machine-2", amount = 1 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 5 },
        { type = "item", name = "iron-plate", amount = 5 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
      },
      results = { { type = "item", name = "bob-electronics-machine-3", amount = 1 } },
    },

    {
      type = "technology",
      name = "bob-electronics-machine-3",
      icon = "__base__/graphics/technology/automation-1.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-electronics-machine-3",
        },
      },
      prerequisites = {
        "bob-electronics-machine-2",
        "processing-unit",
        "space-science-pack",
      },
      unit = {
        count = 140,
        time = 60,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
          { "space-science-pack", 1 },
        },
      },
      order = "a-c-c",
    },
  })
end
