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
  },
}

local fluid_pump_graphics_set_flipped = {
  animation = {
    north = {
      filename = "__bobplates__/graphics/entity/pump/pump.png",
      width = 80,
      height = 80,
      frame_count = 8,
      animation_speed = 0.5,
      shift = { -1, 0 },
    },
    east = {
      filename = "__bobplates__/graphics/entity/pump/pump.png",
      y = 80,
      width = 80,
      height = 80,
      frame_count = 8,
      animation_speed = 0.5,
      shift = { 0, -1 },
    },
    south = {
      filename = "__bobplates__/graphics/entity/pump/pump.png",
      y = 160,
      width = 80,
      height = 80,
      frame_count = 8,
      animation_speed = 0.5,
      shift = { 1, 0 },
    },
    west = {
      filename = "__bobplates__/graphics/entity/pump/pump.png",
      y = 240,
      width = 80,
      height = 80,
      frame_count = 8,
      animation_speed = 0.5,
      shift = { 0, 1 },
    },
  },
}

circuit_connector_definitions["fluid-pump"] =
  circuit_connector_definitions.create_vector(universal_connector_template, {
    { variation = 0, main_offset = util.by_pixel(21, 14), shadow_offset = util.by_pixel(9, 9), show_shadow = false },
    { variation = 6, main_offset = util.by_pixel(-24, 12), shadow_offset = util.by_pixel(0, 0), show_shadow = false },
    { variation = 0, main_offset = util.by_pixel(-11, 14), shadow_offset = util.by_pixel(9, 9), show_shadow = false },
    { variation = 6, main_offset = util.by_pixel(-24, -18), shadow_offset = util.by_pixel(0, 0), show_shadow = false },
  })
circuit_connector_definitions["fluid-pump-flipped"] =
  circuit_connector_definitions.create_vector(universal_connector_template, {
    { variation = 0, main_offset = util.by_pixel(-11, 14), shadow_offset = util.by_pixel(9, 9), show_shadow = false },
    { variation = 6, main_offset = util.by_pixel(-24, -20), shadow_offset = util.by_pixel(0, 0), show_shadow = false },
    { variation = 0, main_offset = util.by_pixel(21, 14), shadow_offset = util.by_pixel(9, 9), show_shadow = false },
    { variation = 6, main_offset = util.by_pixel(-24, 12), shadow_offset = util.by_pixel(0, 0), show_shadow = false },
  })

data:extend({
  {
    type = "assembling-machine",
    name = "bob-air-pump",
    icon = "__bobplates__/graphics/icons/air-pump-1.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "bob-air-pump" },
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["fluid-pump"],
    circuit_connector_flipped = circuit_connector_definitions["fluid-pump-flipped"],
    max_health = 150,
    crafting_categories = { "bob-air-pump" },
    crafting_speed = 1,
    module_slots = 1,
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
    allowed_effects = { "consumption", "speed", "pollution" },
    fast_replaceable_group = "bob-air-pump",
    next_upgrade = "bob-air-pump-2",
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
        pipe_connections = {
          { flow_direction = "input", direction = defines.direction.south, position = { 0.5, 0.5 } },
        },
        volume = 1000,
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          { flow_direction = "output", direction = defines.direction.north, position = { 0.5, -0.5 } },
        },
        volume = 1000,
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
    graphics_set = util.table.deepcopy(fluid_pump_graphics_set),
    graphics_set_flipped = util.table.deepcopy(fluid_pump_graphics_set_flipped),
    impact_category = "metal",
  },

  {
    type = "assembling-machine",
    name = "bob-air-pump-2",
    icon = "__bobplates__/graphics/icons/air-pump-2.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "bob-air-pump-2" },
    max_health = 180,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["fluid-pump"],
    circuit_connector_flipped = circuit_connector_definitions["fluid-pump-flipped"],
    crafting_categories = { "bob-air-pump" },
    crafting_speed = 2,
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
    allowed_effects = { "consumption", "speed", "pollution" },
    fast_replaceable_group = "bob-air-pump",
    next_upgrade = "bob-air-pump-3",
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
        pipe_connections = {
          { flow_direction = "input", direction = defines.direction.south, position = { 0.5, 0.5 } },
        },
        volume = 1000,
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          { flow_direction = "output", direction = defines.direction.north, position = { 0.5, -0.5 } },
        },
        volume = 1000,
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
    graphics_set = util.table.deepcopy(fluid_pump_graphics_set),
    graphics_set_flipped = util.table.deepcopy(fluid_pump_graphics_set_flipped),
    impact_category = "metal",
  },

  {
    type = "assembling-machine",
    name = "bob-air-pump-3",
    icon = "__bobplates__/graphics/icons/air-pump-3.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "bob-air-pump-3" },
    max_health = 230,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["fluid-pump"],
    circuit_connector_flipped = circuit_connector_definitions["fluid-pump-flipped"],
    crafting_categories = { "bob-air-pump" },
    crafting_speed = 3.5,
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
    allowed_effects = { "consumption", "speed", "pollution" },
    fast_replaceable_group = "bob-air-pump",
    next_upgrade = "bob-air-pump-4",
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
        pipe_connections = {
          { flow_direction = "input", direction = defines.direction.south, position = { 0.5, 0.5 } },
        },
        volume = 1000,
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          { flow_direction = "output", direction = defines.direction.north, position = { 0.5, -0.5 } },
        },
        volume = 1000,
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
    graphics_set = util.table.deepcopy(fluid_pump_graphics_set),
    graphics_set_flipped = util.table.deepcopy(fluid_pump_graphics_set_flipped),
    impact_category = "metal",
  },

  {
    type = "assembling-machine",
    name = "bob-air-pump-4",
    icon = "__bobplates__/graphics/icons/air-pump-4.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "bob-air-pump-4" },
    max_health = 300,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["fluid-pump"],
    circuit_connector_flipped = circuit_connector_definitions["fluid-pump-flipped"],
    crafting_categories = { "bob-air-pump" },
    crafting_speed = 5,
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
    allowed_effects = { "consumption", "speed", "pollution" },
    fast_replaceable_group = "bob-air-pump",
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
        pipe_connections = {
          { flow_direction = "input", direction = defines.direction.south, position = { 0.5, 0.5 } },
        },
        volume = 1000,
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          { flow_direction = "output", direction = defines.direction.north, position = { 0.5, -0.5 } },
        },
        volume = 1000,
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
    graphics_set = util.table.deepcopy(fluid_pump_graphics_set),
    graphics_set_flipped = util.table.deepcopy(fluid_pump_graphics_set_flipped),
    impact_category = "metal",
  },

  {
    type = "assembling-machine",
    name = "bob-water-pump",
    icon = "__bobplates__/graphics/icons/water-pump-1.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "bob-water-pump" },
    max_health = 120,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["fluid-pump"],
    circuit_connector_flipped = circuit_connector_definitions["fluid-pump-flipped"],
    crafting_categories = { "bob-water-pump", "barrelling" },
    crafting_speed = 1,
    module_slots = 1,
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
    allowed_effects = { "consumption", "speed", "pollution" },
    fast_replaceable_group = "bob-water-pump",
    next_upgrade = "bob-water-pump-2",
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
        pipe_connections = {
          { flow_direction = "input", direction = defines.direction.south, position = { 0.5, 0.5 } },
        },
        volume = 1000,
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          { flow_direction = "output", direction = defines.direction.north, position = { 0.5, -0.5 } },
        },
        volume = 1000,
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
    graphics_set = util.table.deepcopy(fluid_pump_graphics_set),
    graphics_set_flipped = util.table.deepcopy(fluid_pump_graphics_set_flipped),
    impact_category = "metal",
  },

  {
    type = "assembling-machine",
    name = "bob-water-pump-2",
    icon = "__bobplates__/graphics/icons/water-pump-2.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "bob-water-pump-2" },
    max_health = 180,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["fluid-pump"],
    circuit_connector_flipped = circuit_connector_definitions["fluid-pump-flipped"],
    crafting_categories = { "bob-water-pump", "barrelling" },
    crafting_speed = 2,
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
    allowed_effects = { "consumption", "speed", "pollution" },
    fast_replaceable_group = "bob-water-pump",
    next_upgrade = "bob-water-pump-3",
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
        pipe_connections = {
          { flow_direction = "input", direction = defines.direction.south, position = { 0.5, 0.5 } },
        },
        volume = 1000,
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          { flow_direction = "output", direction = defines.direction.north, position = { 0.5, -0.5 } },
        },
        volume = 1000,
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
    graphics_set = util.table.deepcopy(fluid_pump_graphics_set),
    graphics_set_flipped = util.table.deepcopy(fluid_pump_graphics_set_flipped),
    impact_category = "metal",
  },

  {
    type = "assembling-machine",
    name = "bob-water-pump-3",
    icon = "__bobplates__/graphics/icons/water-pump-3.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "bob-water-pump-3" },
    max_health = 230,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["fluid-pump"],
    circuit_connector_flipped = circuit_connector_definitions["fluid-pump-flipped"],
    crafting_categories = { "bob-water-pump", "barrelling" },
    crafting_speed = 3.5,
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
    allowed_effects = { "consumption", "speed", "pollution" },
    fast_replaceable_group = "bob-water-pump",
    next_upgrade = "bob-water-pump-4",
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
        pipe_connections = {
          { flow_direction = "input", direction = defines.direction.south, position = { 0.5, 0.5 } },
        },
        volume = 1000,
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          { flow_direction = "output", direction = defines.direction.north, position = { 0.5, -0.5 } },
        },
        volume = 1000,
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
    graphics_set = util.table.deepcopy(fluid_pump_graphics_set),
    graphics_set_flipped = util.table.deepcopy(fluid_pump_graphics_set_flipped),
    impact_category = "metal",
  },

  {
    type = "assembling-machine",
    name = "bob-water-pump-4",
    icon = "__bobplates__/graphics/icons/water-pump-4.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "bob-water-pump-4" },
    max_health = 300,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["fluid-pump"],
    circuit_connector_flipped = circuit_connector_definitions["fluid-pump-flipped"],
    crafting_categories = { "bob-water-pump", "barrelling" },
    crafting_speed = 5,
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
    allowed_effects = { "consumption", "speed", "pollution" },
    fast_replaceable_group = "bob-water-pump",
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
        pipe_connections = {
          { flow_direction = "input", direction = defines.direction.south, position = { 0.5, 0.5 } },
        },
        volume = 1000,
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          { flow_direction = "output", direction = defines.direction.north, position = { 0.5, -0.5 } },
        },
        volume = 1000,
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
    graphics_set = util.table.deepcopy(fluid_pump_graphics_set),
    graphics_set_flipped = util.table.deepcopy(fluid_pump_graphics_set_flipped),
    impact_category = "metal",
  },
})
