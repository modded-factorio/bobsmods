local function bob_electrolyser_animation_facing(directory, tier, tint, facing)
  return {
    layers = {
      -- Base
      {
        filename = directory .. "/electrolyser-" .. tier .. "-base.png",
        x = 272 * facing,
        width = 272,
        height = 260,
        frame_count = 1,
        shift = util.by_pixel(17, 0),
        scale = 0.5,
      },
      -- Mask
      {
        filename = directory .. "/electrolyser-" .. tier .. "-mask.png",
        x = 272 * facing,
        width = 272,
        height = 260,
        frame_count = 1,
        shift = util.by_pixel(17, 0),
        tint = tint,
        scale = 0.5,
      },
      -- Highlights
      {
        filename = directory .. "/electrolyser-" .. tier .. "-highlights.png",
        x = 272 * facing,
        width = 272,
        height = 260,
        frame_count = 1,
        shift = util.by_pixel(17, 0),
        blend_mode = "additive",
        scale = 0.5,
      },
      -- Shadow
      {
        filename = directory .. "/electrolyser-" .. tier .. "-shadow.png",
        x = 272 * facing,
        width = 272,
        height = 260,
        frame_count = 1,
        draw_as_shadow = true,
        shift = util.by_pixel(17, 0),
        scale = 0.5,
      },
    },
  }
end

local function bob_electrolyser_animation(directory, tier, tint)
  return {
    north = bob_electrolyser_animation_facing(directory, tier, tint, 0),
    east = bob_electrolyser_animation_facing(directory, tier, tint, 1),
    south = bob_electrolyser_animation_facing(directory, tier, tint, 2),
    west = bob_electrolyser_animation_facing(directory, tier, tint, 3),
  }
end

circuit_connector_definitions["bob-electrolyser"] =
  circuit_connector_definitions.create_vector(universal_connector_template, {
    {
      variation = 12,
      main_offset = util.by_pixel(12, -34),
      shadow_offset = util.by_pixel(57, 4),
      show_shadow = true,
    },
    {
      variation = 12,
      main_offset = util.by_pixel(12, -38),
      shadow_offset = util.by_pixel(57, 8),
      show_shadow = true,
    },
    {
      variation = 8,
      main_offset = util.by_pixel(-10.5, -42),
      shadow_offset = util.by_pixel(39, 31),
      show_shadow = false,
    },
    {
      variation = 8,
      main_offset = util.by_pixel(-11, -38),
      shadow_offset = util.by_pixel(39, 31),
      show_shadow = false,
    },
  })

circuit_connector_definitions["bob-stone-furnace"] =
  circuit_connector_definitions.create_vector(universal_connector_template, {
    {
      variation = 18,
      main_offset = util.by_pixel(1, -9),
      shadow_offset = util.by_pixel(27.5, 13),
      show_shadow = false,
    },
    {
      variation = 18,
      main_offset = util.by_pixel(1, -9),
      shadow_offset = util.by_pixel(27.5, 13),
      show_shadow = false,
    },
    {
      variation = 18,
      main_offset = util.by_pixel(1, -9),
      shadow_offset = util.by_pixel(27.5, 13),
      show_shadow = false,
    },
    {
      variation = 18,
      main_offset = util.by_pixel(1, -9),
      shadow_offset = util.by_pixel(27.5, 13),
      show_shadow = false,
    },
  })

circuit_connector_definitions["bob-steel-furnace"] =
  circuit_connector_definitions.create_vector(universal_connector_template, {
    { variation = 17, main_offset = util.by_pixel(14, -6), shadow_offset = util.by_pixel(40, 21), show_shadow = true },
    { variation = 17, main_offset = util.by_pixel(14, -6), shadow_offset = util.by_pixel(40, 21), show_shadow = true },
    { variation = 17, main_offset = util.by_pixel(14, -6), shadow_offset = util.by_pixel(40, 21), show_shadow = true },
    { variation = 17, main_offset = util.by_pixel(14, -6), shadow_offset = util.by_pixel(40, 21), show_shadow = true },
  })

circuit_connector_definitions["bob-electric-furnace"] =
  circuit_connector_definitions.create_vector(universal_connector_template, {
    { variation = 0, main_offset = util.by_pixel(7, 2), shadow_offset = util.by_pixel(25.5, 30), show_shadow = false },
    { variation = 0, main_offset = util.by_pixel(7, 2), shadow_offset = util.by_pixel(25.5, 30), show_shadow = false },
    { variation = 0, main_offset = util.by_pixel(7, 2), shadow_offset = util.by_pixel(25.5, 30), show_shadow = false },
    { variation = 0, main_offset = util.by_pixel(7, 2), shadow_offset = util.by_pixel(25.5, 30), show_shadow = false },
  })

circuit_connector_definitions["bob-electric-chemical-furnace"] =
  circuit_connector_definitions.create_vector(universal_connector_template, {
    {
      variation = 25,
      main_offset = util.by_pixel(2, -16),
      shadow_offset = util.by_pixel(25.5, 30),
      show_shadow = false,
    },
    {
      variation = 25,
      main_offset = util.by_pixel(2, -16),
      shadow_offset = util.by_pixel(25.5, 30),
      show_shadow = false,
    },
    {
      variation = 25,
      main_offset = util.by_pixel(2, -16),
      shadow_offset = util.by_pixel(25.5, 30),
      show_shadow = false,
    },
    {
      variation = 25,
      main_offset = util.by_pixel(2, -16),
      shadow_offset = util.by_pixel(25.5, 30),
      show_shadow = false,
    },
  })

circuit_connector_definitions["bob-void-pump"] =
  circuit_connector_definitions.create_vector(universal_connector_template, {
    {
      variation = 31,
      main_offset = util.by_pixel(10, -3),
      shadow_offset = util.by_pixel(27.5, 13),
      show_shadow = false,
    },
    {
      variation = 30,
      main_offset = util.by_pixel(-4, 0),
      shadow_offset = util.by_pixel(27.5, 13),
      show_shadow = false,
    },
    {
      variation = 31,
      main_offset = util.by_pixel(11, -6),
      shadow_offset = util.by_pixel(27.5, 13),
      show_shadow = false,
    },
    {
      variation = 30,
      main_offset = util.by_pixel(-2, 0),
      shadow_offset = util.by_pixel(27.5, 13),
      show_shadow = false,
    },
  })

data.raw.furnace["steel-furnace"].circuit_connector = circuit_connector_definitions["bob-steel-furnace"]
data.raw.furnace["electric-furnace"].circuit_connector = circuit_connector_definitions["bob-electric-furnace"]

data:extend({
  {
    type = "assembling-machine",
    name = "bob-electrolyser",
    icon = "__bobplates__/graphics/icons/electrolyser.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "bob-electrolyser" },
    fast_replaceable_group = "bob-electrolyser",
    corpse = "big-remnants",
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    max_health = 150,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["bob-electrolyser"],
    crafting_categories = { "bob-electrolysis" },
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    module_slots = 1,
    icons_positioning = {
      {
        inventory_index = defines.inventory.assembling_machine_modules,
        shift = { 0, 0.8 },
      },
    },
    icon_draw_specification = {
      shift = { 0, -0.3 },
    },
    crafting_speed = 0.75,
    energy_usage = "420kW",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 4 },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { -1, -1 } } },
        volume = 1000,
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 1, -1 } } },
        volume = 1000,
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { -1, 1 } } },
        volume = 1000,
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 1, 1 } } },
        volume = 1000,
      },
    },
    graphics_set = {
      animation = bob_electrolyser_animation(
        "__bobplates__/graphics/entity/electrolyser",
        1,
        { r = 0.5, g = 0.5, b = 0 }
      ),
    },
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
  },

  {
    type = "assembling-machine",
    name = "bob-stone-chemical-furnace",
    icon = "__bobplates__/graphics/icons/stone-chemical-furnace.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.2, result = "bob-stone-chemical-furnace" },
    max_health = 200,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["bob-stone-furnace"],
    crafting_speed = 1,
    corpse = "medium-remnants",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    impact_category = "stone",
    working_sound = {
      sound = { filename = "__base__/sound/furnace.ogg" },
    },
    resistances = {
      {
        type = "fire",
        percent = 80,
      },
      {
        type = "explosion",
        percent = 30,
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
        secondary_draw_orders = { north = -1, east = -1, west = -1 },
        volume = 1000,
      },
    },
    forced_symmetry = "vertical",
    collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    icon_draw_specification = {
      scale = 0.66,
      shift = { 0, -0.1 },
    },
    crafting_categories = { "bob-chemical-furnace" },
    energy_usage = "90kW",
    energy_source = {
      type = "burner",
      fuel_categories = { "chemical" },
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = { pollution = 2 },
      smoke = {
        {
          name = "smoke",
          deviation = { 0.1, 0.1 },
          frequency = 5,
          north_position = { 0.0, -0.8 },
          east_position = { 0.0, -0.8 },
          south_position = { 0.0, -0.8 },
          west_position = { 0.0, -0.8 },
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60,
        },
      },
    },
    graphics_set = {
      animation = {
        north = {
          filename = "__bobplates__/graphics/entity/stone-chemical-furnace/stone-chemical-furnace.png",
          priority = "extra-high",
          width = 94,
          height = 80,
          frame_count = 1,
          shift = { 0.25, 0 },
        },
        west = {
          filename = "__bobplates__/graphics/entity/stone-chemical-furnace/stone-chemical-furnace.png",
          x = 94,
          priority = "extra-high",
          width = 94,
          height = 80,
          frame_count = 1,
          shift = { 0.25, 0 },
        },
        south = {
          x = 188,
          filename = "__bobplates__/graphics/entity/stone-chemical-furnace/stone-chemical-furnace.png",
          priority = "extra-high",
          width = 94,
          height = 80,
          frame_count = 1,
          shift = { 0.25, 0 },
        },
        east = {
          x = 282,
          filename = "__bobplates__/graphics/entity/stone-chemical-furnace/stone-chemical-furnace.png",
          priority = "extra-high",
          width = 94,
          height = 80,
          frame_count = 1,
          shift = { 0.25, 0 },
        },
      },
      working_visualisations = {
        {
          north_position = { 0.96875, -0.53125 },
          west_position = { 0, 0 },
          south_position = { -0.9375, 0.40625 },
          east_position = { 0.53125, 0.78125 },
          east_animation = {
            filename = "__bobplates__/graphics/entity/stone-chemical-furnace/boiler-fire-down.png",
            width = 9,
            height = 8,
            frame_count = 14,
          },
          south_animation = {
            filename = "__bobplates__/graphics/entity/stone-chemical-furnace/boiler-fire-left.png",
            width = 5,
            height = 7,
            frame_count = 14,
          },
          north_animation = {
            filename = "__bobplates__/graphics/entity/stone-chemical-furnace/boiler-fire-right.png",
            width = 6,
            height = 9,
            frame_count = 14,
          },
        },
      },
    },
    graphics_set_flipped = {
      animation = {
        north = {
          filename = "__bobplates__/graphics/entity/stone-chemical-furnace/stone-chemical-furnace.png",
          x = 94,
          priority = "extra-high",
          width = 94,
          height = 80,
          frame_count = 1,
          shift = { 0.25, 0 },
        },
        west = {
          x = 188,
          filename = "__bobplates__/graphics/entity/stone-chemical-furnace/stone-chemical-furnace.png",
          priority = "extra-high",
          width = 94,
          height = 80,
          frame_count = 1,
          shift = { 0.25, 0 },
        },
        south = {
          x = 282,
          filename = "__bobplates__/graphics/entity/stone-chemical-furnace/stone-chemical-furnace.png",
          priority = "extra-high",
          width = 94,
          height = 80,
          frame_count = 1,
          shift = { 0.25, 0 },
        },
        east = {
          filename = "__bobplates__/graphics/entity/stone-chemical-furnace/stone-chemical-furnace.png",
          priority = "extra-high",
          width = 94,
          height = 80,
          frame_count = 1,
          shift = { 0.25, 0 },
        },
      },
    },
    fast_replaceable_group = "furnace",
    next_upgrade = "bob-steel-chemical-furnace",
  },

  {
    type = "assembling-machine",
    name = "bob-steel-chemical-furnace",
    icon = "__base__/graphics/icons/steel-furnace.png",
    icon_size = 64,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.2, result = "bob-steel-chemical-furnace" },
    max_health = 300,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["bob-steel-furnace"],
    crafting_speed = 2,
    corpse = "medium-remnants",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/furnace.ogg" },
    },
    resistances = {
      {
        type = "fire",
        percent = 80,
      },
      {
        type = "explosion",
        percent = 30,
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
        secondary_draw_orders = { north = -1, east = -1, west = -1 },
        volume = 1000,
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    forced_symmetry = "vertical",
    collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    icon_draw_specification = {
      scale = 0.66,
      shift = { 0, -0.1 },
    },
    crafting_categories = { "bob-chemical-furnace" },
    energy_usage = "90kW",
    energy_source = {
      type = "burner",
      fuel_categories = { "chemical" },
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = { pollution = 4 },
      smoke = {
        {
          name = "smoke",
          frequency = 10,
          north_position = { 0.7, -1.2 },
          east_position = { 0.7, -1.2 },
          south_position = { 0.7, -1.2 },
          west_position = { 0.7, -1.2 },
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60,
        },
      },
    },
    graphics_set = util.table.deepcopy(data.raw.furnace["steel-furnace"].graphics_set),
    fast_replaceable_group = "furnace",
  },

  {
    type = "assembling-machine",
    name = "bob-electric-chemical-furnace",
    icon = "__bobplates__/graphics/icons/chemical-furnace.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.2, result = "bob-electric-chemical-furnace" },
    max_health = 350,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["bob-electric-chemical-furnace"],
    corpse = "big-remnants",
    resistances = {
      {
        type = "fire",
        percent = 80,
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 0, -1 } } },
        volume = 1000,
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    module_slots = 2,
    icons_positioning = {
      {
        inventory_index = defines.inventory.assembling_machine_modules,
        shift = { 0, 0.8 },
      },
    },
    icon_draw_specification = {
      shift = { 0, -0.1 },
    },
    crafting_speed = 2,
    crafting_categories = { "bob-chemical-furnace" },
    energy_usage = "180kW",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1 },
    },
    impact_category = "metal",
    working_sound = {
      sound = {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7,
      },
    },
    graphics_set = {
      animation = {
        filename = "__bobplates__/graphics/entity/electric-furnace/electric-chemical-furnace.png",
        priority = "high",
        width = 129,
        height = 100,
        frame_count = 1,
        shift = { 0.46875, 0 },
      },
      working_visualisations = {
        {
          animation = {
            filename = "__bobplates__/graphics/entity/electric-furnace/electric-furnace-heater.png",
            priority = "high",
            width = 60,
            height = 56,
            frame_count = 12,
            animation_speed = 0.5,
            shift = util.by_pixel(1.75, 32.75),
            scale = 0.5,
          },
          light = { intensity = 0.4, size = 6, shift = { 0.0, 1.0 }, color = { r = 1.0, g = 1.0, b = 1.0 } },
        },
        {
          animation = {
            filename = "__bobplates__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
            priority = "high",
            width = 37,
            height = 25,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(-20.5, -18.5),
            scale = 0.5,
          },
        },
      },
    },
    fast_replaceable_group = "furnace",
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
  },

  {
    type = "assembling-machine",
    name = "bob-stone-mixing-furnace",
    icon = "__bobplates__/graphics/icons/stone-mixing-furnace.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.2, result = "bob-stone-mixing-furnace" },
    max_health = 200,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["bob-stone-furnace"],
    corpse = "medium-remnants",
    impact_category = "stone",
    working_sound = {
      sound = { filename = "__base__/sound/furnace.ogg" },
    },
    resistances = {
      {
        type = "fire",
        percent = 100,
      },
    },
    collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
    selection_box = { { -0.8, -1 }, { 0.8, 1 } },
    icon_draw_specification = {
      scale = 0.66,
      shift = { 0, -0.1 },
    },
    crafting_categories = { "smelting", "bob-mixing-furnace" },
    energy_usage = "90kW",
    crafting_speed = 1,
    energy_source = {
      type = "burner",
      fuel_categories = { "chemical" },
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = { pollution = 2 },
      smoke = {
        {
          name = "smoke",
          deviation = { 0.1, 0.1 },
          frequency = 5,
          position = { 0.0, -0.8 },
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60,
        },
      },
    },
    graphics_set = {
      animation = {
        filename = "__bobplates__/graphics/entity/stone-mixing-furnace/stone-mixing-furnace.png",
        priority = "extra-high",
        width = 81,
        height = 64,
        frame_count = 1,
        shift = { 0.5, 0.05 },
      },
      working_visualisations = {
        {
          north_position = { 0.078125, 0.5234375 },
          west_position = { 0.078125, 0.5234375 },
          south_position = { 0.078125, 0.5234375 },
          east_position = { 0.078125, 0.5234375 },
          animation = {
            filename = "__bobplates__/graphics/entity/stone-mixing-furnace/stone-mixing-furnace-fire.png",
            width = 23,
            height = 27,
            frame_count = 12,
          },
        },
      },
    },
    fast_replaceable_group = "furnace",
    next_upgrade = "bob-steel-mixing-furnace",
  },

  {
    type = "assembling-machine",
    name = "bob-steel-mixing-furnace",
    icon = "__base__/graphics/icons/steel-furnace.png",
    icon_size = 64,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.2, result = "bob-steel-mixing-furnace" },
    max_health = 300,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["bob-steel-furnace"],
    corpse = "medium-remnants",
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/furnace.ogg" },
    },
    resistances = {
      {
        type = "fire",
        percent = 100,
      },
    },
    collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
    selection_box = { { -0.8, -1 }, { 0.8, 1 } },
    icon_draw_specification = {
      scale = 0.66,
      shift = { 0, -0.1 },
    },
    crafting_categories = { "smelting", "bob-mixing-furnace" },
    energy_usage = "90kW",
    crafting_speed = 2,
    energy_source = {
      type = "burner",
      fuel_categories = { "chemical" },
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = { pollution = 4 },
      smoke = {
        {
          name = "smoke",
          frequency = 10,
          position = { 0.7, -1.2 },
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60,
        },
      },
    },
    graphics_set = util.table.deepcopy(data.raw.furnace["steel-furnace"].graphics_set),
    fast_replaceable_group = "furnace",
  },

  {
    type = "assembling-machine",
    name = "bob-electric-mixing-furnace",
    icon = "__bobplates__/graphics/icons/electric-mixing-furnace.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "bob-electric-mixing-furnace" },
    max_health = 350,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["bob-electric-furnace"],
    corpse = "big-remnants",
    resistances = {
      {
        type = "fire",
        percent = 80,
      },
    },
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },

    module_slots = 2,
    icons_positioning = {
      {
        inventory_index = defines.inventory.assembling_machine_modules,
        shift = { 0, 0.8 },
      },
    },
    icon_draw_specification = {
      shift = { 0, -0.1 },
    },
    crafting_speed = 2,
    crafting_categories = { "smelting", "bob-mixing-furnace" },
    energy_usage = "180kW",

    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1 },
    },
    impact_category = "metal",
    working_sound = {
      sound = {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7,
      },
    },
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__bobplates__/graphics/entity/electric-furnace/electric-mixing-furnace.png",
            priority = "high",
            width = 129,
            height = 100,
            frame_count = 1,
            shift = { 0.46875, 0 },
          },
          {
            filename = "__bobplates__/graphics/entity/electric-furnace/electric-furnace-mask.png",
            tint = { r = 0.2, g = 0.6, b = 0.8 },
            priority = "high",
            width = 69,
            height = 68,
            frame_count = 1,
            shift = util.by_pixel(7.5, 12),
          },
        },
      },
      working_visualisations = {
        {
          animation = {
            filename = "__bobplates__/graphics/entity/electric-furnace/electric-furnace-heater.png",
            priority = "high",
            width = 60,
            height = 56,
            frame_count = 12,
            animation_speed = 0.5,
            shift = util.by_pixel(1.75, 32.75),
            scale = 0.5,
          },
          light = { intensity = 0.4, size = 6, shift = { 0.0, 1.0 }, color = { r = 1.0, g = 1.0, b = 1.0 } },
        },
        {
          animation = {
            filename = "__bobplates__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
            priority = "high",
            width = 37,
            height = 25,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(-20.5, -18.5),
            scale = 0.5,
          },
        },
        {
          animation = {
            filename = "__bobplates__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
            priority = "high",
            width = 23,
            height = 15,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(3.5, -38),
            scale = 0.5,
          },
        },
      },
    },
    fast_replaceable_group = "furnace",
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
  },
})

table.insert(data.raw.furnace["electric-furnace"].graphics_set.animation.layers, 2, {
  filename = "__bobplates__/graphics/entity/electric-furnace/electric-furnace-mask.png",
  tint = { r = 0.8, g = 0.8, b = 0.2 },
  priority = "high",
  width = 69,
  height = 68,
  frame_count = 1,
  shift = util.by_pixel(7.5, 12),
})

circuit_connector_definitions["bob-small-storage-tank"] =
  circuit_connector_definitions.create_vector(universal_connector_template, {
    {
      variation = 27,
      main_offset = util.by_pixel(10, -18),
      shadow_offset = util.by_pixel(6, -16),
      show_shadow = false,
    },
    {
      variation = 25,
      main_offset = util.by_pixel(-10, -18),
      shadow_offset = util.by_pixel(-6, -16),
      show_shadow = false,
    },
    {
      variation = 27,
      main_offset = util.by_pixel(10, -18),
      shadow_offset = util.by_pixel(6, -16),
      show_shadow = false,
    },
    {
      variation = 25,
      main_offset = util.by_pixel(-10, -18),
      shadow_offset = util.by_pixel(-6, -16),
      show_shadow = false,
    },
  })

data:extend({
  {
    type = "storage-tank",
    name = "bob-small-inline-storage-tank",
    icon = "__bobplates__/graphics/icons/small-storage-tank.png",
    icon_size = 32,
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.2, result = "bob-small-inline-storage-tank" },
    max_health = 200,
    corpse = "small-remnants",
    collision_box = { { -0.3, -0.3 }, { 0.3, 0.3 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    fluid_box = {
      pipe_picture = assembler3pipepictures(),
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { direction = defines.direction.north, position = { 0, -0.20 } },
        { direction = defines.direction.south, position = { 0, 0.20 } },
      },
      volume = 2500,
      secondary_draw_orders = { north = -1, east = -1, south = 1, west = -1 },
    },
    two_direction_only = true,
    fast_replaceable_group = "pipe",
    window_bounding_box = { util.by_pixel(-3, -5), util.by_pixel(3, 11) },
    pictures = {
      picture = {
        sheets = {
          {
            filename = "__bobplates__/graphics/entity/small-storage-tank-w.png",
            priority = "extra-high",
            frames = 2,
            width = 32,
            height = 62,
            shift = util.by_pixel(0, -15),
          },
          {
            filename = "__bobplates__/graphics/entity/small-storage-tank-shadow.png",
            priority = "extra-high",
            frames = 1,
            width = 52,
            height = 32,
            shift = util.by_pixel(30, 0),
            draw_as_shadow = true,
          },
        },
      },
      fluid_background = {
        filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 15,
      },
      window_background = {
        filename = "__base__/graphics/entity/storage-tank/window-background.png",
        priority = "extra-high",
        width = 34,
        height = 48,
        scale = 0.5,
      },
      flow_sprite = {
        filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 20,
      },
      gas_flow = {
        filename = "__base__/graphics/entity/pipe/steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 48,
        height = 30,
        frame_count = 60,
        animation_speed = 0.25,
        scale = 0.5,
      },
    },
    flow_length_in_ticks = 360,
    impact_category = "metal",
    working_sound = {
      sound = {
        filename = "__base__/sound/storage-tank.ogg",
        volume = 0.8,
      },
      match_volume_to_activity = true,
      max_sounds_per_prototype = 3,
    },
    circuit_connector = circuit_connector_definitions["bob-small-storage-tank"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },

  {
    type = "storage-tank",
    name = "bob-small-storage-tank",
    icon = "__bobplates__/graphics/icons/small-storage-tank.png",
    icon_size = 32,
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.2, result = "bob-small-storage-tank" },
    max_health = 200,
    corpse = "small-remnants",
    collision_box = { { -0.3, -0.3 }, { 0.3, 0.3 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    fluid_box = {
      pipe_picture = assembler3pipepictures(),
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { direction = defines.direction.north, position = { 0, -0.2 } },
        { direction = defines.direction.south, position = { 0, 0.2 } },
        { direction = defines.direction.west, position = { -0.2, 0 } },
        { direction = defines.direction.east, position = { 0.2, 0 } },
      },
      volume = 2500,
      secondary_draw_orders = { north = -1, east = -1, south = 1, west = -1 },
    },
    fast_replaceable_group = "pipe",
    window_bounding_box = { util.by_pixel(-3, -5), util.by_pixel(3, 11) },
    pictures = {
      picture = {
        sheets = {
          {
            filename = "__bobplates__/graphics/entity/small-storage-tank-all.png",
            priority = "extra-high",
            frames = 1,
            width = 32,
            height = 62,
            shift = util.by_pixel(0, -15),
          },
          {
            filename = "__bobplates__/graphics/entity/small-storage-tank-shadow.png",
            priority = "extra-high",
            frames = 1,
            width = 52,
            height = 32,
            shift = util.by_pixel(30, 0),
            draw_as_shadow = true,
          },
        },
      },
      fluid_background = {
        filename = "__bobplates__/graphics/entity/small-storage-tank-all.png",
        priority = "extra-high",
        width = 1,
        height = 1,
      },
      window_background = {
        filename = "__bobplates__/graphics/entity/small-storage-tank-all.png",
        priority = "extra-high",
        width = 1,
        height = 1,
      },
      flow_sprite = {
        filename = "__bobplates__/graphics/entity/small-storage-tank-all.png",
        priority = "extra-high",
        width = 1,
        height = 1,
      },
      gas_flow = {
        filename = "__bobplates__/graphics/entity/small-storage-tank-all.png",
        priority = "extra-high",
        line_length = 1,
        width = 1,
        height = 1,
        frame_count = 1,
        animation_speed = 0.25,
      },
    },
    flow_length_in_ticks = 360,
    impact_category = "metal",
    working_sound = {
      sound = {
        filename = "__base__/sound/storage-tank.ogg",
        volume = 0.8,
      },
      match_volume_to_activity = true,
      max_sounds_per_prototype = 3,
    },
    circuit_connector = circuit_connector_definitions["bob-small-storage-tank"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },

  {
    type = "furnace",
    name = "bob-void-pump",
    icon = "__bobplates__/graphics/icons/void-pump.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "bob-void-pump" },
    allowed_effects = { "consumption", "speed", "pollution" },
    max_health = 100,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["bob-void-pump"],
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    resistances = {
      {
        type = "fire",
        percent = 80,
      },
      {
        type = "explosion",
        percent = 30,
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { 0, 0 } } },
        volume = 200,
      },
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 0.15 },
    },
    energy_usage = "30kW",
    impact_category = "metal",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    crafting_categories = { "bob-void-fluid" },
    crafting_speed = 5,
    result_inventory_size = 0,
    source_inventory_size = 0,
    graphics_set = {
      animation = {
        north = {
          filename = "__bobplates__/graphics/entity/small-pump/small-pump-up.png",
          width = 46,
          height = 52,
          frame_count = 8,
          shift = { 0.09375, 0.03125 + 0.0625 },
          animation_speed = 0.5,
        },
        east = {
          filename = "__bobplates__/graphics/entity/small-pump/small-pump-right.png",
          width = 51,
          height = 56,
          frame_count = 8,
          shift = { 0.265625, -0.21875 },
          animation_speed = 0.5,
        },
        south = {
          filename = "__bobplates__/graphics/entity/small-pump/small-pump-down.png",
          width = 61,
          height = 62,
          frame_count = 8,
          shift = { 0.421875, -0.125 },
          animation_speed = 0.5,
        },
        west = {
          filename = "__bobplates__/graphics/entity/small-pump/small-pump-left.png",
          width = 56,
          height = 44,
          frame_count = 8,
          shift = { 0.3125, 0.0625 },
          animation_speed = 0.5,
        },
      },
    },
  },
})
