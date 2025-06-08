if not mods["aai-industry"] and settings.startup["bobmods-assembly-burner"].value == true then
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
      type = "item",
      name = "bob-burner-assembling-machine",
      icon = "__bobassembly__/graphics/icons/burner-assembling-machine.png",
      icon_size = 32,
      subgroup = "bob-assembly-machine",
      order = "1[burner-assembling-machine]",
      place_result = "bob-burner-assembling-machine",
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
      type = "recipe",
      name = "bob-burner-assembling-machine",
      enabled = true,
      ingredients = {
        { type = "item", name = "iron-gear-wheel", amount = 5 },
        { type = "item", name = "iron-plate", amount = 9 },
      },
      results = { { type = "item", name = "bob-burner-assembling-machine", amount = 1 } },
    },

    {
      type = "assembling-machine",
      name = "bob-burner-assembling-machine",
      icon = "__bobassembly__/graphics/icons/burner-assembling-machine.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.2, result = "bob-burner-assembling-machine" },
      max_health = 200,
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
      collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
      selection_box = { { -1, -1 }, { 1, 1 } },
      fast_replaceable_group = "assembling-machine",
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
              tint = { r = 0.2, g = 0.2, b = 0.2 },
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
      crafting_categories = { "crafting", "basic-crafting", "advanced-crafting" },
      crafting_speed = 0.25,
      energy_source = {
        type = "burner",
        fuel_categories = { "chemical" },
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = { pollution = 4 },
        smoke = {
          {
            name = "smoke",
            deviation = { 0.1, 0.1 },
            frequency = 4,
            position = { 0.0, -0.5 },
            starting_vertical_speed = 0.08,
            starting_frame_deviation = 60,
          },
        },
      },
      energy_usage = "60kW",
      icon_draw_specification = {
        scale = 0.66,
        shift = { 0, -0.15 },
      },
      allowed_effects = {},
    },

    {
      type = "item",
      name = "bob-steam-assembling-machine",
      icon = "__bobassembly__/graphics/icons/steam-assembling-machine.png",
      icon_size = 32,
      subgroup = "bob-assembly-machine",
      order = "1[steam-assembling-machine]",
      place_result = "bob-steam-assembling-machine",
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
      weight = 40000,
    },

    {
      type = "recipe",
      name = "bob-steam-assembling-machine",
      enabled = false,
      ingredients = {
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "iron-plate", amount = 10 },
        { type = "item", name = "pipe", amount = 5 },
      },
      results = { { type = "item", name = "bob-steam-assembling-machine", amount = 1 } },
    },

    {
      type = "assembling-machine",
      name = "bob-steam-assembling-machine",
      icon = "__bobassembly__/graphics/icons/steam-assembling-machine.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.2, result = "bob-steam-assembling-machine" },
      max_health = 300,
      circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
      circuit_connector = circuit_connector_definitions["assembling-machine"],
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
          pipe_picture = assembler2pipepictures(),
          pipe_covers = pipecoverspictures(),
          pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 0, -1 } } },
          secondary_draw_orders = { north = -1 },
          volume = 1000,
        },
        {
          production_type = "output",
          pipe_picture = assembler2pipepictures(),
          pipe_covers = pipecoverspictures(),
          pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 0, 1 } } },
          secondary_draw_orders = { north = -1 },
          volume = 1000,
        },
      },
      fluid_boxes_off_when_no_fluid_recipe = true,
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      fast_replaceable_group = "assembling-machine",
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
              shift = util.by_pixel(0, 2),
              scale = 0.5,
            },
            {
              filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
              priority = "high",
              width = 214,
              height = 237,
              repeat_count = 32,
              shift = util.by_pixel(0, -0.75),
              scale = 0.5,
              tint = { r = 1, g = 1, b = 1 },
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
              shift = util.by_pixel(8.5, 5),
              scale = 0.5,
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
      crafting_categories = { "basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid" },
      crafting_speed = 2,
      energy_source = {
        type = "fluid",
        effectivity = 1,
        emissions_per_minute = { pollution = 5 }, --fairly sure this scales, so it would be 1 at level 1 speed.
        fluid_box = {
          pipe_connections = {
            { flow_direction = "input-output", direction = defines.direction.east, position = { 1, 0 } },
            { flow_direction = "input-output", direction = defines.direction.west, position = { -1, 0 } },
          },
          pipe_covers = pipecoverspictures(),
          pipe_picture = assembler2pipepictures(),
          production_type = "input-output",
          filter = "steam",
          volume = 10,
        },
        burns_fluid = false,
        scale_fluid_usage = false,
        fluid_usage_per_tick = (2 / 60),
        maximum_temperature = 765,
        smoke = {
          {
            name = "light-smoke",
            frequency = 10 / 32,
            starting_vertical_speed = 0.08,
            starting_frame_deviation = 60,
          },
        },
      },
      energy_usage = "300kW",
      icon_draw_specification = {
        shift = { 0, -0.3 },
      },
      allowed_effects = {},
    },
  })

  bobmods.lib.tech.ignore_tech_cost_multiplier("automation", false)

  if settings.startup["bobmods-assembly-limits"].value == true then
    data.raw["assembling-machine"]["bob-burner-assembling-machine"].ingredient_count = 2
    data.raw["assembling-machine"]["bob-steam-assembling-machine"].ingredient_count = 4
  end
end
