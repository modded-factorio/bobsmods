function bobmods.logistics.pump_animations(tint)
  return {
    north = {
      filename = "__base__/graphics/entity/pump/pump-north.png",
      width = 103,
      height = 164,
      scale = 0.5,
      line_length = 8,
      frame_count = 32,
      animation_speed = 0.5,
      shift = util.by_pixel(8, 3.5), -- {0.515625, 0.21875}
    },
    east = {
      filename = "__base__/graphics/entity/pump/pump-east.png",
      width = 130,
      height = 109,
      scale = 0.5,
      line_length = 8,
      frame_count = 32,
      animation_speed = 0.5,
      shift = util.by_pixel(-0.5, 1.75), --{-0.03125, 0.109375}
    },

    south = {
      filename = "__base__/graphics/entity/pump/pump-south.png",
      width = 114,
      height = 160,
      scale = 0.5,
      line_length = 8,
      frame_count = 32,
      animation_speed = 0.5,
      shift = util.by_pixel(12.5, -8), -- {0.75, -0.5}
    },
    west = {
      filename = "__base__/graphics/entity/pump/pump-west.png",
      width = 131,
      height = 111,
      scale = 0.5,
      line_length = 8,
      frame_count = 32,
      animation_speed = 0.5,
      shift = util.by_pixel(-0.25, 1.25), -- {-0.015625, 0.078125}
    },
  }
end

local pump_fluid_animation = {
  north = {
    filename = "__base__/graphics/entity/pump/pump-north-liquid.png",
    apply_runtime_tint = true,
    width = 38,
    height = 22,
    scale = 0.5,
    line_length = 8,
    frame_count = 32,
    shift = util.by_pixel(-0.250, -16.750),
  },

  east = {
    filename = "__base__/graphics/entity/pump/pump-east-liquid.png",
    width = 35,
    height = 46,
    scale = 0.5,
    line_length = 8,
    frame_count = 32,
    shift = util.by_pixel(6.250, -8.500),
  },

  south = {
    filename = "__base__/graphics/entity/pump/pump-south-liquid.png",
    width = 38,
    height = 45,
    scale = 0.5,
    line_length = 8,
    frame_count = 32,
    shift = util.by_pixel(0.500, -9.250),
  },
  west = {
    filename = "__base__/graphics/entity/pump/pump-west-liquid.png",
    width = 35,
    height = 47,
    scale = 0.5,
    line_length = 8,
    frame_count = 32,
    shift = util.by_pixel(-6.500, -9.500),
  },
}

local pump_glass_pictures = {
  north = {
    filename = "__base__/graphics/entity/pump/pump-north-glass.png",
    width = 64,
    height = 128,
    scale = 0.5,
  },
  east = {
    filename = "__base__/graphics/entity/pump/pump-east-glass.png",
    width = 128,
    height = 192,
    scale = 0.5,
  },
  south = {
    filename = "__base__/graphics/entity/pump/pump-south-glass.png",
    width = 64,
    height = 128,
    scale = 0.5,
  },
  west = {
    filename = "__base__/graphics/entity/pump/pump-west-glass.png",
    width = 192,
    height = 192,
    scale = 0.5,
    shift = util.by_pixel(-16.000, 0.000),
  },
}

data.raw.pump.pump.pumping_speed = 10

local pump_collision_box = table.deepcopy(data.raw.pump.pump.collision_box)
local fluid_wagon_connector_graphics = table.deepcopy(data.raw.pump.pump.fluid_wagon_connector_graphics)

data:extend({
  {
    type = "pump",
    name = "bob-pump-2",
    icon = "__base__/graphics/icons/pump.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.2, result = "bob-pump-2" },
    max_health = 220,
    fast_replaceable_group = "pipe",
    next_upgrade = "bob-pump-3",
    corpse = "small-remnants",
    collision_box = pump_collision_box,
    selection_box = { { -0.5, -1 }, { 0.5, 1 } },
    resistances = {
      {
        type = "fire",
        percent = 80,
      },
      {
        type = "impact",
        percent = 30,
      },
    },
    fluid_box = {
      volume = 400,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { flow_direction = "input", position = { 0, 0.5 }, direction = defines.direction.south },
        { flow_direction = "output", position = { 0, -0.5 }, direction = defines.direction.north },
      },
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "50kW",
    pumping_speed = 20,
    impact_category = "metal",
    animations = bobmods.logistics.pump_animations({ r = 0.8, g = 0.8, b = 0.2, a = 1 }),
    fluid_wagon_connector_frame_count = 35,
    fluid_wagon_connector_graphics = fluid_wagon_connector_graphics,
    fluid_animation = pump_fluid_animation,
    glass_pictures = pump_glass_pictures,
    circuit_connector = circuit_connector_definitions["pump"],
    circuit_wire_max_distance = 10,
  },
  {
    type = "pump",
    name = "bob-pump-3",
    icon = "__base__/graphics/icons/pump.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.2, result = "bob-pump-3" },
    max_health = 260,
    fast_replaceable_group = "pipe",
    next_upgrade = "bob-pump-4",
    corpse = "small-remnants",
    collision_box = pump_collision_box,
    selection_box = { { -0.5, -1 }, { 0.5, 1 } },
    resistances = {
      {
        type = "fire",
        percent = 80,
      },
      {
        type = "impact",
        percent = 30,
      },
    },
    fluid_box = {
      volume = 400,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { flow_direction = "input", position = { 0, 0.5 }, direction = defines.direction.south },
        { flow_direction = "output", position = { 0, -0.5 }, direction = defines.direction.north },
      },
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "65kW",
    pumping_speed = 30,
    impact_category = "metal",
    animations = bobmods.logistics.pump_animations({ r = 0.6, g = 0.2, b = 0.8, a = 1 }),
    fluid_wagon_connector_frame_count = 35,
    fluid_wagon_connector_graphics = fluid_wagon_connector_graphics,
    fluid_animation = pump_fluid_animation,
    glass_pictures = pump_glass_pictures,
    circuit_connector = circuit_connector_definitions["pump"],
    circuit_wire_max_distance = 12.5,
  },
  {
    type = "pump",
    name = "bob-pump-4",
    icon = "__base__/graphics/icons/pump.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.2, result = "bob-pump-4" },
    max_health = 300,
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    collision_box = pump_collision_box,
    selection_box = { { -0.5, -1 }, { 0.5, 1 } },
    resistances = {
      {
        type = "fire",
        percent = 80,
      },
      {
        type = "impact",
        percent = 30,
      },
    },
    fluid_box = {
      volume = 400,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { flow_direction = "input", position = { 0, 0.5 }, direction = defines.direction.south },
        { flow_direction = "output", position = { 0, -0.5 }, direction = defines.direction.north },
      },
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "75kW",
    pumping_speed = 40,
    impact_category = "metal",
    animations = bobmods.logistics.pump_animations({ r = 0.2, g = 0.8, b = 0.3, a = 1 }),
    fluid_wagon_connector_frame_count = 35,
    fluid_wagon_connector_graphics = fluid_wagon_connector_graphics,
    fluid_animation = pump_fluid_animation,
    glass_pictures = pump_glass_pictures,
    circuit_connector = circuit_connector_definitions["pump"],
    circuit_wire_max_distance = 15,
  },
})
