local fluid_pump_graphics_set = {
  animation = {
    north = {
      filename = "__bobplates__/graphics/entity/pump/pump.png",
      width = 80,
      height = 80,
      frame_count = 8,
      animation_speed = 0.5,
    },
    east = {
      filename = "__bobplates__/graphics/entity/pump/pump.png",
      y = 80,
      width = 80,
      height = 80,
      frame_count = 8,
      animation_speed = 0.5,
    },
    south = {
      filename = "__bobplates__/graphics/entity/pump/pump.png",
      y = 160,
      width = 80,
      height = 80,
      frame_count = 8,
      animation_speed = 0.5,
    },
    west = {
      filename = "__bobplates__/graphics/entity/pump/pump.png",
      y = 240,
      width = 80,
      height = 80,
      frame_count = 8,
      animation_speed = 0.5,
    },
  }
}

local fluid_pump_graphics_set_flipped = {
  animation = {
    north = {
      filename = "__bobplates__/graphics/entity/pump/pump.png",
      width = 80,
      height = 80,
      frame_count = 8,
      animation_speed = 0.5,
      shift = { -1, 0 }
    },
    east = {
      filename = "__bobplates__/graphics/entity/pump/pump.png",
      y = 80,
      width = 80,
      height = 80,
      frame_count = 8,
      animation_speed = 0.5,
      shift = { 0, -1 }
    },
    south = {
      filename = "__bobplates__/graphics/entity/pump/pump.png",
      y = 160,
      width = 80,
      height = 80,
      frame_count = 8,
      animation_speed = 0.5,
      shift = { 1, 0 }
    },
    west = {
      filename = "__bobplates__/graphics/entity/pump/pump.png",
      y = 240,
      width = 80,
      height = 80,
      frame_count = 8,
      animation_speed = 0.5,
      shift = { 0, 1 }
    },
  }
}

data:extend({
  {
    type = "assembling-machine",
    name = "air-pump",
    icon = "__bobplates__/graphics/icons/air-pump-1.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "air-pump" },
    max_health = 150,
    crafting_categories = { "air-pump" },
    crafting_speed = 1,
    module_slots = 1,
    icons_positioning = {
      {
        inventory_index = defines.inventory.assembling_machine_modules,
        shift = { 0, 0.5 },
        multi_row_initial_height_modifier = -0.3,
      },
    },
    allowed_effects = { "consumption", "speed", "pollution" },
    fast_replaceable_group = "air-pump",
    next_upgrade = "air-pump-2",
    corpse = "small-remnants",
    resistances = {
      {
        type = "fire",
        percent = 70,
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { 0.5, 0.5 } } },
        volume = 1000
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "output", direction = defines.direction.north, position = { 0.5, -0.5 } } },
        volume = 1000
      },
    },
    collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
    selection_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 0.4 },
    },
    energy_usage = "50kW",
    graphics_set = fluid_pump_graphics_set,
    graphics_set_flipped = fluid_pump_graphics_set_flipped,
  },

  {
    type = "assembling-machine",
    name = "air-pump-2",
    icon = "__bobplates__/graphics/icons/air-pump-2.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "air-pump-2" },
    max_health = 180,
    crafting_categories = { "air-pump" },
    crafting_speed = 2,
    module_slots = 2,
    icons_positioning = {
      {
        inventory_index = defines.inventory.assembling_machine_modules,
        shift = { 0, 0.5 },
        multi_row_initial_height_modifier = -0.3,
      },
    },
    allowed_effects = { "consumption", "speed", "pollution" },
    fast_replaceable_group = "air-pump",
    next_upgrade = "air-pump-3",
    corpse = "small-remnants",
    resistances = {
      {
        type = "fire",
        percent = 70,
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { 0.5, 0.5 } } },
        volume = 1000
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "output", direction = defines.direction.north, position = { 0.5, -0.5 } } },
        volume = 1000
      },
    },
    collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
    selection_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 0.4 },
    },
    energy_usage = "90kW",
    graphics_set = fluid_pump_graphics_set,
    graphics_set_flipped = fluid_pump_graphics_set_flipped,
  },

  {
    type = "assembling-machine",
    name = "air-pump-3",
    icon = "__bobplates__/graphics/icons/air-pump-3.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "air-pump-3" },
    max_health = 230,
    crafting_categories = { "air-pump" },
    crafting_speed = 3.5,
    module_slots = 4,
    icons_positioning = {
      {
        inventory_index = defines.inventory.assembling_machine_modules,
        shift = { 0, 0.5 },
        multi_row_initial_height_modifier = -0.3,
      },
    },
    allowed_effects = { "consumption", "speed", "pollution" },
    fast_replaceable_group = "air-pump",
    next_upgrade = "air-pump-4",
    corpse = "small-remnants",
    resistances = {
      {
        type = "fire",
        percent = 70,
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { 0.5, 0.5 } } },
        volume = 1000
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "output", direction = defines.direction.north, position = { 0.5, -0.5 } } },
        volume = 1000
      },
    },
    collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
    selection_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 0.4 },
    },
    energy_usage = "140kW",
    graphics_set = fluid_pump_graphics_set,
    graphics_set_flipped = fluid_pump_graphics_set_flipped,
  },

  {
    type = "assembling-machine",
    name = "air-pump-4",
    icon = "__bobplates__/graphics/icons/air-pump-4.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "air-pump-4" },
    max_health = 300,
    crafting_categories = { "air-pump" },
    crafting_speed = 5,
    module_slots = 6,
    icons_positioning = {
      {
        inventory_index = defines.inventory.assembling_machine_modules,
        shift = { 0, 0.5 },
        multi_row_initial_height_modifier = -0.3,
      },
    },
    allowed_effects = { "consumption", "speed", "pollution" },
    fast_replaceable_group = "air-pump",
    corpse = "small-remnants",
    resistances = {
      {
        type = "fire",
        percent = 70,
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { 0.5, 0.5 } } },
        volume = 1000
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "output", direction = defines.direction.north, position = { 0.5, -0.5 } } },
        volume = 1000
      },
    },
    collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
    selection_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 0.4 },
    },
    energy_usage = "175kW",
    graphics_set = fluid_pump_graphics_set,
    graphics_set_flipped = fluid_pump_graphics_set_flipped,
  },

  {
    type = "assembling-machine",
    name = "water-pump",
    icon = "__bobplates__/graphics/icons/water-pump-1.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "water-pump" },
    max_health = 120,
    crafting_categories = { "water-pump", "barrelling" },
    crafting_speed = 1,
    module_slots = 1,
    icons_positioning = {
      {
        inventory_index = defines.inventory.assembling_machine_modules,
        shift = { 0, 0.5 },
        multi_row_initial_height_modifier = -0.3,
      },
    },
    allowed_effects = { "consumption", "speed", "pollution" },
    fast_replaceable_group = "water-pump",
    next_upgrade = "water-pump-2",
    corpse = "small-remnants",
    resistances = {
      {
        type = "fire",
        percent = 70,
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { 0.5, 0.5 } } },
        volume = 1000
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "output", direction = defines.direction.north, position = { 0.5, -0.5 } } },
        volume = 1000
      },
    },
    collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
    selection_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 0.4 },
    },
    energy_usage = "50kW",
    graphics_set = fluid_pump_graphics_set,
    graphics_set_flipped = fluid_pump_graphics_set_flipped,
      --[[
      animation =
      {
        north =
        {
          layers =
          {
            {
              filename = "__bobplates__/graphics/entity/pump/pump-base-n.png",
              repeat_count = 25,
              width = 128,
              height = 192,
              shift = util.by_pixel(0, 0),
              animation_speed = 0.5,
              scale = 0.5
            },
            {
              filename = "__bobplates__/graphics/entity/pump/pump-base-mask-n.png",
              repeat_count = 25,
              width = 128,
              height = 192,
              shift = util.by_pixel(0, 0),
              tint = {r = 0.9, g = 0.3, b = 0.1},
              animation_speed = 0.5,
              scale = 0.5
            },
            {
              filename = "__bobplates__/graphics/entity/pump/pump-anim-n.png",
              frame_count = 25,
              width = 128,
              height = 192,
              line_length = 5,
              shift = util.by_pixel(0, 0),
              animation_speed = 0.5,
              scale = 0.5
            },
            {
              filename = "__bobplates__/graphics/entity/pump/pump-window-n.png",
              repeat_count = 25,
              width = 128,
              height = 192,
              shift = util.by_pixel(0, 0),
              animation_speed = 0.5,
              scale = 0.5
            },
          },
        },
        east =
        {
          layers =
          {
            {
              filename = "__bobplates__/graphics/entity/pump/pump-base-e.png",
              repeat_count = 25,
              width = 128,
              height = 192,
              shift = util.by_pixel(0, 0),
              animation_speed = 0.5,
              scale = 0.5
            },
            {
              filename = "__bobplates__/graphics/entity/pump/pump-base-mask-e.png",
              repeat_count = 25,
              width = 128,
              height = 192,
              shift = util.by_pixel(0, 0),
              tint = {r = 0.9, g = 0.3, b = 0.1},
              animation_speed = 0.5,
              scale = 0.5
            },
            {
              filename = "__bobplates__/graphics/entity/pump/pump-anim-e.png",
              frame_count = 25,
              width = 128,
              height = 192,
              line_length = 5,
              shift = util.by_pixel(0, 0),
              animation_speed = 0.5,
              scale = 0.5
            },
            {
              filename = "__bobplates__/graphics/entity/pump/pump-window-e.png",
              repeat_count = 25,
              width = 128,
              height = 192,
              shift = util.by_pixel(0, 0),
              animation_speed = 0.5,
              scale = 0.5
            },
          },
        },
        south =
        {
          layers =
          {
            {
              filename = "__bobplates__/graphics/entity/pump/pump-base-s.png",
              repeat_count = 25,
              width = 128,
              height = 192,
              shift = util.by_pixel(0, 0),
              animation_speed = 0.5,
              scale = 0.5
            },
            {
              filename = "__bobplates__/graphics/entity/pump/pump-base-mask-s.png",
              repeat_count = 25,
              width = 128,
              height = 192,
              shift = util.by_pixel(0, 0),
              tint = {r = 0.9, g = 0.3, b = 0.1},
              animation_speed = 0.5,
              scale = 0.5
            },
            {
              filename = "__bobplates__/graphics/entity/pump/pump-anim-s.png",
              frame_count = 25,
              width = 128,
              height = 192,
              line_length = 5,
              shift = util.by_pixel(0, 0),
              animation_speed = 0.5,
              scale = 0.5
            },
            {
              filename = "__bobplates__/graphics/entity/pump/pump-window-s.png",
              repeat_count = 25,
              width = 128,
              height = 192,
              shift = util.by_pixel(0, 0),
              animation_speed = 0.5,
              scale = 0.5
            },
          },
        },
        west =
        {
          layers =
          {
            {
              filename = "__bobplates__/graphics/entity/pump/pump-base-w.png",
              repeat_count = 25,
              width = 128,
              height = 192,
              shift = util.by_pixel(0, 0),
              animation_speed = 0.5,
              scale = 0.5
            },
            {
              filename = "__bobplates__/graphics/entity/pump/pump-base-mask-w.png",
              repeat_count = 25,
              width = 128,
              height = 192,
              shift = util.by_pixel(0, 0),
              tint = {r = 0.9, g = 0.3, b = 0.1},
              animation_speed = 0.5,
              scale = 0.5
            },
            {
              filename = "__bobplates__/graphics/entity/pump/pump-anim-w.png",
              frame_count = 25,
              width = 128,
              height = 192,
              line_length = 5,
              shift = util.by_pixel(0, 0),
              animation_speed = 0.5,
              scale = 0.5
            },
            {
              filename = "__bobplates__/graphics/entity/pump/pump-window-w.png",
              repeat_count = 25,
              width = 128,
              height = 192,
              shift = util.by_pixel(0, 0),
              animation_speed = 0.5,
              scale = 0.5
            },
          },
        },
      },

      working_visualisations =
      {
        {
          north_animation =
          {
            filename = "__bobplates__/graphics/entity/pump/pump-anim-n.png",
            frame_count = 25,
            width = 128,
            height = 192,
            line_length = 5,
            shift = util.by_pixel(0, 0),
            animation_speed = 0.5,
            scale = 0.5
          },
          east_animation =
          {
            filename = "__bobplates__/graphics/entity/pump/pump-anim-e.png",
            frame_count = 25,
            width = 128,
            height = 192,
            line_length = 5,
            shift = util.by_pixel(0, 0),
            animation_speed = 0.5,
            scale = 0.5
          },
          south_animation =
          {
            filename = "__bobplates__/graphics/entity/pump/pump-anim-s.png",
            frame_count = 25,
            width = 128,
            height = 192,
            line_length = 5,
            shift = util.by_pixel(0, 0),
            animation_speed = 0.5,
            scale = 0.5
          },
          west_animation =
          {
            filename = "__bobplates__/graphics/entity/pump/pump-anim-w.png",
            frame_count = 25,
            width = 128,
            height = 192,
            line_length = 5,
            shift = util.by_pixel(0, 0),
            animation_speed = 0.5,
            scale = 0.5
          },
        },
        {
          apply_recipe_tint = "primary",
          north_animation =
          {
            filename = "__bobplates__/graphics/entity/pump/pump-liquid-n.png",
            frame_count = 25,
            width = 128,
            height = 192,
            line_length = 5,
            shift = util.by_pixel(0, 0),
            animation_speed = 0.5,
            scale = 0.5
          },
          east_animation =
          {
            filename = "__bobplates__/graphics/entity/pump/pump-liquid-e.png",
            frame_count = 25,
            width = 128,
            height = 192,
            line_length = 5,
            shift = util.by_pixel(0, 0),
            animation_speed = 0.5,
            scale = 0.5
          },
          south_animation =
          {
            filename = "__bobplates__/graphics/entity/pump/pump-liquid-s.png",
            frame_count = 25,
            width = 128,
            height = 192,
            line_length = 5,
            shift = util.by_pixel(0, 0),
            animation_speed = 0.5,
            scale = 0.5
          },
          west_animation =
          {
            filename = "__bobplates__/graphics/entity/pump/pump-liquid-w.png",
            frame_count = 25,
            width = 128,
            height = 192,
            line_length = 5,
            shift = util.by_pixel(0, 0),
            animation_speed = 0.5,
            scale = 0.5
          },
        },
        {
          north_animation =
          {
            filename = "__bobplates__/graphics/entity/pump/pump-window-n.png",
            frame_count = 1,
            width = 128,
            height = 192,
            shift = util.by_pixel(0, 0),
            animation_speed = 0.5,
            scale = 0.5
          },
          east_animation =
          {
            filename = "__bobplates__/graphics/entity/pump/pump-window-e.png",
            frame_count = 1,
            width = 128,
            height = 192,
            shift = util.by_pixel(0, 0),
            animation_speed = 0.5,
            scale = 0.5
          },
          south_animation =
          {
            filename = "__bobplates__/graphics/entity/pump/pump-window-s.png",
            frame_count = 1,
            width = 128,
            height = 192,
            shift = util.by_pixel(0, 0),
            animation_speed = 0.5,
            scale = 0.5
          },
          west_animation =
          {
            filename = "__bobplates__/graphics/entity/pump/pump-window-w.png",
            frame_count = 1,
            width = 128,
            height = 192,
            shift = util.by_pixel(0, 0),
            animation_speed = 0.5,
            scale = 0.5
          },
        },
      },
]]
      --
  },

  {
    type = "assembling-machine",
    name = "water-pump-2",
    icon = "__bobplates__/graphics/icons/water-pump-2.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "water-pump-2" },
    max_health = 180,
    crafting_categories = { "water-pump", "barrelling" },
    crafting_speed = 2,
    module_slots = 2,
    icons_positioning = {
      {
        inventory_index = defines.inventory.assembling_machine_modules,
        shift = { 0, 0.5 },
        multi_row_initial_height_modifier = -0.3,
      },
    },
    allowed_effects = { "consumption", "speed", "pollution" },
    fast_replaceable_group = "water-pump",
    next_upgrade = "water-pump-3",
    corpse = "small-remnants",
    resistances = {
      {
        type = "fire",
        percent = 70,
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { 0.5, 0.5 } } },
        volume = 1000
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "output", direction = defines.direction.north, position = { 0.5, -0.5 } } },
        volume = 1000
      },
    },
    collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
    selection_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 0.4 },
    },
    energy_usage = "90kW",
    graphics_set = fluid_pump_graphics_set,
    graphics_set_flipped = fluid_pump_graphics_set_flipped,
  },

  {
    type = "assembling-machine",
    name = "water-pump-3",
    icon = "__bobplates__/graphics/icons/water-pump-3.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "water-pump-3" },
    max_health = 230,
    crafting_categories = { "water-pump", "barrelling" },
    crafting_speed = 3.5,
    module_slots = 4,
    icons_positioning = {
      {
        inventory_index = defines.inventory.assembling_machine_modules,
        shift = { 0, 0.5 },
        multi_row_initial_height_modifier = -0.3,
      },
    },
    allowed_effects = { "consumption", "speed", "pollution" },
    fast_replaceable_group = "water-pump",
    next_upgrade = "water-pump-4",
    corpse = "small-remnants",
    resistances = {
      {
        type = "fire",
        percent = 70,
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { 0.5, 0.5 } } },
        volume = 1000
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "output", direction = defines.direction.north, position = { 0.5, -0.5 } } },
        volume = 1000
      },
    },
    collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
    selection_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 0.4 },
    },
    energy_usage = "140kW",
    graphics_set = fluid_pump_graphics_set,
    graphics_set_flipped = fluid_pump_graphics_set_flipped,
  },

  {
    type = "assembling-machine",
    name = "water-pump-4",
    icon = "__bobplates__/graphics/icons/water-pump-4.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "water-pump-4" },
    max_health = 300,
    crafting_categories = { "water-pump", "barrelling" },
    crafting_speed = 5,
    module_slots = 6,
    icons_positioning = {
      {
        inventory_index = defines.inventory.assembling_machine_modules,
        shift = { 0, 0.5 },
        multi_row_initial_height_modifier = -0.3,
      },
    },
    allowed_effects = { "consumption", "speed", "pollution" },
    fast_replaceable_group = "water-pump",
    corpse = "small-remnants",
    resistances = {
      {
        type = "fire",
        percent = 70,
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { 0.5, 0.5 } } },
        volume = 1000
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "output", direction = defines.direction.north, position = { 0.5, -0.5 } } },
        volume = 1000
      },
    },
    collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
    selection_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 0.4 },
    },
    energy_usage = "175kW",
    graphics_set = fluid_pump_graphics_set,
    graphics_set_flipped = fluid_pump_graphics_set_flipped,
  },
})
