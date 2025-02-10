local sounds = require("__base__.prototypes.entity.sounds")

function bobmods.logistics.logistic_robot_idle(level)
  return {
    filename = "__boblogistics__/graphics/entity/robots/logistic-robot-" .. level .. ".png",
    priority = "high",
    line_length = 16,
    width = 80,
    height = 84,
    frame_count = 1,
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    y = 84,
    scale = 0.5,
  }
end

function bobmods.logistics.logistic_robot_idle_with_cargo(level)
  return {
    filename = "__boblogistics__/graphics/entity/robots/logistic-robot-" .. level .. ".png",
    priority = "high",
    line_length = 16,
    width = 80,
    height = 84,
    frame_count = 1,
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    scale = 0.5,
  }
end

function bobmods.logistics.logistic_robot_in_motion(level)
  return {
    filename = "__boblogistics__/graphics/entity/robots/logistic-robot-" .. level .. ".png",
    priority = "high",
    line_length = 16,
    width = 80,
    height = 84,
    frame_count = 1,
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    y = 252,
    scale = 0.5,
  }
end

function bobmods.logistics.logistic_robot_in_motion_with_cargo(level)
  return {
    filename = "__boblogistics__/graphics/entity/robots/logistic-robot-" .. level .. ".png",
    priority = "high",
    line_length = 16,
    width = 80,
    height = 84,
    frame_count = 1,
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    y = 168,
    scale = 0.5,
  }
end

bobmods.logistics.logistic_robot_shadow = {
  filename = "__boblogistics__/graphics/entity/robots/logistic-robot-shadow.png",
  priority = "high",
  line_length = 16,
  width = 115,
  height = 57,
  frame_count = 1,
  shift = util.by_pixel(31.75, 19.75),
  direction_count = 16,
  y = 57,
  scale = 0.5,
}

bobmods.logistics.logistic_robot_shadow_with_cargo = {
  filename = "__boblogistics__/graphics/entity/robots/logistic-robot-shadow.png",
  priority = "high",
  line_length = 16,
  width = 115,
  height = 57,
  frame_count = 1,
  shift = util.by_pixel(31.75, 19.75),
  direction_count = 16,
  scale = 0.5,
}

data.raw["logistic-robot"]["logistic-robot"].icon = "__boblogistics__/graphics/icons/robots/logistic-robot-1.png"
data.raw["logistic-robot"]["logistic-robot"].icon_size = 32
data.raw["logistic-robot"]["logistic-robot"].idle = bobmods.logistics.logistic_robot_idle(1)
data.raw["logistic-robot"]["logistic-robot"].idle_with_cargo = bobmods.logistics.logistic_robot_idle_with_cargo(1)
data.raw["logistic-robot"]["logistic-robot"].in_motion = bobmods.logistics.logistic_robot_in_motion(1)
data.raw["logistic-robot"]["logistic-robot"].in_motion_with_cargo =
  bobmods.logistics.logistic_robot_in_motion_with_cargo(1)
data.raw["logistic-robot"]["logistic-robot"].shadow_idle = bobmods.logistics.logistic_robot_shadow
data.raw["logistic-robot"]["logistic-robot"].shadow_in_motion = bobmods.logistics.logistic_robot_shadow
data.raw["logistic-robot"]["logistic-robot"].shadow_idle_with_cargo = bobmods.logistics.logistic_robot_shadow_with_cargo
data.raw["logistic-robot"]["logistic-robot"].shadow_in_motion_with_cargo =
  bobmods.logistics.logistic_robot_shadow_with_cargo

data:extend({
  {
    type = "logistic-robot",
    name = "bob-logistic-robot-2",
    icon = "__boblogistics__/graphics/icons/robots/logistic-robot-2.png",
    icon_size = 32,
    flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
    minable = { mining_time = 0.1, result = "bob-logistic-robot-2" },
    resistances = {
      { type = "fire", decrease = 4, percent = 85 },
      { type = "electric", decrease = 6, percent = 60 },
      { type = "acid", decrease = 4, percent = 60 },
    },
    max_health = 125,
    max_payload_size = 3,
    speed = 0.07,
    max_energy = "2250kJ",
    energy_per_tick = "65J",
    energy_per_move = "5000J",
    collision_box = { { 0, 0 }, { 0, 0 } },
    selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = sounds.flying_robot(),
    idle = bobmods.logistics.logistic_robot_idle(2),
    idle_with_cargo = bobmods.logistics.logistic_robot_idle_with_cargo(2),
    in_motion = bobmods.logistics.logistic_robot_in_motion(2),
    in_motion_with_cargo = bobmods.logistics.logistic_robot_in_motion_with_cargo(2),
    shadow_idle = bobmods.logistics.logistic_robot_shadow,
    shadow_in_motion = bobmods.logistics.logistic_robot_shadow,
    shadow_idle_with_cargo = bobmods.logistics.logistic_robot_shadow_with_cargo,
    shadow_in_motion_with_cargo = bobmods.logistics.logistic_robot_shadow_with_cargo,
    factoriopedia_simulation = {
      init = [[
        game.simulation.camera_position = {0, -1}
        game.surfaces[1].create_entity{name = "bob-logistic-robot-2", position = {0, 0}}
      ]],
    },
  },

  {
    type = "logistic-robot",
    name = "bob-logistic-robot-3",
    icon = "__boblogistics__/graphics/icons/robots/logistic-robot-3.png",
    icon_size = 32,
    flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
    minable = { mining_time = 0.1, result = "bob-logistic-robot-3" },
    resistances = {
      { type = "fire", decrease = 8, percent = 85 },
      { type = "electric", decrease = 12, percent = 75 },
      { type = "acid", decrease = 8, percent = 65 },
    },
    max_health = 150,
    max_payload_size = 6,
    speed = 0.09,
    max_energy = "3000kJ",
    energy_per_tick = "80J",
    energy_per_move = "5000J",
    collision_box = { { 0, 0 }, { 0, 0 } },
    selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = sounds.flying_robot(),
    idle = bobmods.logistics.logistic_robot_idle(3),
    idle_with_cargo = bobmods.logistics.logistic_robot_idle_with_cargo(3),
    in_motion = bobmods.logistics.logistic_robot_in_motion(3),
    in_motion_with_cargo = bobmods.logistics.logistic_robot_in_motion_with_cargo(3),
    shadow_idle = bobmods.logistics.logistic_robot_shadow,
    shadow_in_motion = bobmods.logistics.logistic_robot_shadow,
    shadow_idle_with_cargo = bobmods.logistics.logistic_robot_shadow_with_cargo,
    shadow_in_motion_with_cargo = bobmods.logistics.logistic_robot_shadow_with_cargo,
    factoriopedia_simulation = {
      init = [[
        game.simulation.camera_position = {0, -1}
        game.surfaces[1].create_entity{name = "bob-logistic-robot-3", position = {0, 0}}
      ]],
    },
  },

  {
    type = "logistic-robot",
    name = "bob-logistic-robot-4",
    icon = "__boblogistics__/graphics/icons/robots/logistic-robot-4.png",
    icon_size = 32,
    flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
    minable = { mining_time = 0.1, result = "bob-logistic-robot-4" },
    resistances = {
      { type = "fire", decrease = 12, percent = 90 },
      { type = "electric", decrease = 20, percent = 90 },
      { type = "acid", decrease = 12, percent = 70 },
    },
    max_health = 175,
    max_payload_size = 11,
    speed = 0.12,
    max_energy = "3750kJ",
    energy_per_tick = "95J",
    energy_per_move = "5000J",
    collision_box = { { 0, 0 }, { 0, 0 } },
    selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = sounds.flying_robot(),
    idle = bobmods.logistics.logistic_robot_idle(4),
    idle_with_cargo = bobmods.logistics.logistic_robot_idle_with_cargo(4),
    in_motion = bobmods.logistics.logistic_robot_in_motion(4),
    in_motion_with_cargo = bobmods.logistics.logistic_robot_in_motion_with_cargo(4),
    shadow_idle = bobmods.logistics.logistic_robot_shadow,
    shadow_in_motion = bobmods.logistics.logistic_robot_shadow,
    shadow_idle_with_cargo = bobmods.logistics.logistic_robot_shadow_with_cargo,
    shadow_in_motion_with_cargo = bobmods.logistics.logistic_robot_shadow_with_cargo,
    factoriopedia_simulation = {
      init = [[
        game.simulation.camera_position = {0, -1}
        game.surfaces[1].create_entity{name = "bob-logistic-robot-4", position = {0, 0}}
      ]],
    },
  },

  {
    type = "logistic-robot",
    name = "bob-logistic-robot-5",
    icon = "__boblogistics__/graphics/icons/robots/logistic-robot-5.png",
    icon_size = 32,
    flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
    minable = { mining_time = 0.1, result = "bob-logistic-robot-5" },
    resistances = {
      { type = "fire", decrease = 12, percent = 90 },
      { type = "electric", decrease = 20, percent = 90 },
      { type = "acid", decrease = 12, percent = 70 },
    },
    max_health = 175,
    max_payload_size = 11,
    speed = 0.12,
    max_energy = "1500kJ",
    energy_per_tick = "0J",
    energy_per_move = "0J",
    collision_box = { { 0, 0 }, { 0, 0 } },
    selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = sounds.flying_robot(),
    idle = bobmods.logistics.logistic_robot_idle(5),
    idle_with_cargo = bobmods.logistics.logistic_robot_idle_with_cargo(5),
    in_motion = bobmods.logistics.logistic_robot_in_motion(5),
    in_motion_with_cargo = bobmods.logistics.logistic_robot_in_motion_with_cargo(5),
    shadow_idle = bobmods.logistics.logistic_robot_shadow,
    shadow_in_motion = bobmods.logistics.logistic_robot_shadow,
    shadow_idle_with_cargo = bobmods.logistics.logistic_robot_shadow_with_cargo,
    shadow_in_motion_with_cargo = bobmods.logistics.logistic_robot_shadow_with_cargo,
    factoriopedia_simulation = {
      init = [[
        game.simulation.camera_position = {0, -1}
        game.surfaces[1].create_entity{name = "bob-logistic-robot-5", position = {0, 0}}
      ]],
    },
  },
})

function bobmods.logistics.construction_robot_idle(level)
  return {
    filename = "__boblogistics__/graphics/entity/robots/construction-robot-" .. level .. ".png",
    priority = "high",
    line_length = 16,
    width = 66,
    height = 76,
    frame_count = 1,
    shift = util.by_pixel(0, -4.5),
    direction_count = 16,
    scale = 0.5,
  }
end

function bobmods.logistics.construction_robot_in_motion(level)
  return {
    filename = "__boblogistics__/graphics/entity/robots/construction-robot-" .. level .. ".png",
    priority = "high",
    line_length = 16,
    width = 66,
    height = 76,
    frame_count = 1,
    shift = util.by_pixel(0, -4.5),
    direction_count = 16,
    y = 76,
    scale = 0.5,
  }
end

function bobmods.logistics.construction_robot_working(level)
  return {
    filename = "__boblogistics__/graphics/entity/robots/construction-robot-working-" .. level .. ".png",
    priority = "high",
    line_length = 2,
    width = 57,
    height = 74,
    frame_count = 2,
    shift = util.by_pixel(-0.25, -5),
    direction_count = 16,
    animation_speed = 0.3,
    scale = 0.5,
  }
end

bobmods.logistics.construction_robot_shadow = {
  filename = "__boblogistics__/graphics/entity/robots/construction-robot-shadow.png",
  priority = "high",
  line_length = 16,
  width = 104,
  height = 49,
  frame_count = 1,
  shift = util.by_pixel(33.5, 18.75),
  direction_count = 16,
  scale = 0.5,
}

bobmods.logistics.construction_robot_shadow_working = {
  stripes = util.multiplystripes(2, {
    {
      filename = "__boblogistics__/graphics/entity/robots/construction-robot-shadow.png",
      width_in_frames = 16,
      height_in_frames = 1,
    },
  }),
  priority = "high",
  line_length = 16,
  width = 104,
  height = 49,
  frame_count = 2,
  shift = util.by_pixel(33.5, 18.75),
  direction_count = 16,
  scale = 0.5,
}

bobmods.logistics.robot_smoke = {
  filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
  width = 39,
  height = 32,
  frame_count = 19,
  line_length = 19,
  shift = { 0.078125, -0.15625 },
  animation_speed = 0.3,
}

bobmods.logistics.robot_sparks = {
  {
    filename = "__base__/graphics/entity/sparks/sparks-01.png",
    width = 39,
    height = 34,
    frame_count = 19,
    line_length = 19,
    shift = { -0.109375, 0.3125 },
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3,
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-02.png",
    width = 36,
    height = 32,
    frame_count = 19,
    line_length = 19,
    shift = { 0.03125, 0.125 },
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3,
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-03.png",
    width = 42,
    height = 29,
    frame_count = 19,
    line_length = 19,
    shift = { -0.0625, 0.203125 },
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3,
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-04.png",
    width = 40,
    height = 35,
    frame_count = 19,
    line_length = 19,
    shift = { -0.0625, 0.234375 },
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3,
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-05.png",
    width = 39,
    height = 29,
    frame_count = 19,
    line_length = 19,
    shift = { -0.109375, 0.171875 },
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3,
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-06.png",
    width = 44,
    height = 36,
    frame_count = 19,
    line_length = 19,
    shift = { 0.03125, 0.3125 },
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3,
  },
}

data.raw["construction-robot"]["construction-robot"].icon =
  "__boblogistics__/graphics/icons/robots/construction-robot-1.png"
data.raw["construction-robot"]["construction-robot"].icon_size = 32
data.raw["construction-robot"]["construction-robot"].idle = bobmods.logistics.construction_robot_idle(1)
data.raw["construction-robot"]["construction-robot"].in_motion = bobmods.logistics.construction_robot_in_motion(1)
data.raw["construction-robot"]["construction-robot"].working = bobmods.logistics.construction_robot_working(1)
data.raw["construction-robot"]["construction-robot"].shadow_idle = bobmods.logistics.construction_robot_shadow
data.raw["construction-robot"]["construction-robot"].shadow_in_motion = bobmods.logistics.construction_robot_shadow
data.raw["construction-robot"]["construction-robot"].shadow_working =
  bobmods.logistics.construction_robot_shadow_working

data:extend({
  {
    type = "construction-robot",
    name = "bob-construction-robot-2",
    icon = "__boblogistics__/graphics/icons/robots/construction-robot-2.png",
    icon_size = 32,
    flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
    minable = { mining_time = 0.1, result = "bob-construction-robot-2" },
    resistances = {
      { type = "fire", decrease = 4, percent = 85 },
      { type = "electric", decrease = 6, percent = 60 },
      { type = "acid", decrease = 4, percent = 60 },
    },
    max_health = 225,
    max_payload_size = 2,
    speed = 0.09,
    max_energy = "2250kJ",
    energy_per_tick = "60J",
    energy_per_move = "5000J",
    collision_box = { { 0, 0 }, { 0, 0 } },
    selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = sounds.flying_robot(),
    working_light = { intensity = 0.8, size = 3 },
    construction_vector = { 0.30, 0.22 },
    idle = bobmods.logistics.construction_robot_idle(2),
    in_motion = bobmods.logistics.construction_robot_in_motion(2),
    working = bobmods.logistics.construction_robot_working(2),
    shadow_idle = bobmods.logistics.construction_robot_shadow,
    shadow_in_motion = bobmods.logistics.construction_robot_shadow,
    shadow_working = bobmods.logistics.construction_robot_shadow_working,
    smoke = bobmods.logistics.robot_smoke,
    sparks = bobmods.logistics.robot_sparks,
    factoriopedia_simulation = {
      init = [[
        game.simulation.camera_position = {0, -1}
        game.surfaces[1].create_entity{name = "bob-construction-robot-2", position = {0, 0}}
      ]],
    },
  },

  {
    type = "construction-robot",
    name = "bob-construction-robot-3",
    icon = "__boblogistics__/graphics/icons/robots/construction-robot-3.png",
    icon_size = 32,
    flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
    minable = { mining_time = 0.1, result = "bob-construction-robot-3" },
    resistances = {
      { type = "fire", decrease = 8, percent = 85 },
      { type = "electric", decrease = 12, percent = 75 },
      { type = "acid", decrease = 8, percent = 65 },
    },
    max_health = 350,
    max_payload_size = 4,
    speed = 0.12,
    max_energy = "3000kJ",
    energy_per_tick = "75J",
    energy_per_move = "5000J",
    collision_box = { { 0, 0 }, { 0, 0 } },
    selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = sounds.flying_robot(),
    working_light = { intensity = 0.8, size = 3 },
    construction_vector = { 0.30, 0.22 },
    idle = bobmods.logistics.construction_robot_idle(3),
    in_motion = bobmods.logistics.construction_robot_in_motion(3),
    working = bobmods.logistics.construction_robot_working(3),
    shadow_idle = bobmods.logistics.construction_robot_shadow,
    shadow_in_motion = bobmods.logistics.construction_robot_shadow,
    shadow_working = bobmods.logistics.construction_robot_shadow_working,
    smoke = bobmods.logistics.robot_smoke,
    sparks = bobmods.logistics.robot_sparks,
    factoriopedia_simulation = {
      init = [[
        game.simulation.camera_position = {0, -1}
        game.surfaces[1].create_entity{name = "bob-construction-robot-3", position = {0, 0}}
      ]],
    },
  },

  {
    type = "construction-robot",
    name = "bob-construction-robot-4",
    icon = "__boblogistics__/graphics/icons/robots/construction-robot-4.png",
    icon_size = 32,
    flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
    minable = { mining_time = 0.1, result = "bob-construction-robot-4" },
    resistances = {
      { type = "fire", decrease = 12, percent = 90 },
      { type = "electric", decrease = 20, percent = 90 },
      { type = "acid", decrease = 12, percent = 70 },
    },
    max_health = 500,
    max_payload_size = 6,
    speed = 0.15,
    max_energy = "3750kJ",
    energy_per_tick = "80J",
    energy_per_move = "5000J",
    collision_box = { { 0, 0 }, { 0, 0 } },
    selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = sounds.flying_robot(),
    working_light = { intensity = 0.8, size = 3 },
    construction_vector = { 0.30, 0.22 },
    idle = bobmods.logistics.construction_robot_idle(4),
    in_motion = bobmods.logistics.construction_robot_in_motion(4),
    working = bobmods.logistics.construction_robot_working(4),
    shadow_idle = bobmods.logistics.construction_robot_shadow,
    shadow_in_motion = bobmods.logistics.construction_robot_shadow,
    shadow_working = bobmods.logistics.construction_robot_shadow_working,
    smoke = bobmods.logistics.robot_smoke,
    sparks = bobmods.logistics.robot_sparks,
    factoriopedia_simulation = {
      init = [[
        game.simulation.camera_position = {0, -1}
        game.surfaces[1].create_entity{name = "bob-construction-robot-4", position = {0, 0}}
      ]],
    },
  },

  {
    type = "construction-robot",
    name = "bob-construction-robot-5",
    icon = "__boblogistics__/graphics/icons/robots/construction-robot-5.png",
    icon_size = 32,
    flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
    minable = { mining_time = 0.1, result = "bob-construction-robot-5" },
    resistances = {
      { type = "fire", decrease = 12, percent = 90 },
      { type = "electric", decrease = 20, percent = 90 },
      { type = "acid", decrease = 12, percent = 70 },
    },
    max_health = 500,
    max_payload_size = 6,
    speed = 0.15,
    max_energy = "1500kJ",
    energy_per_tick = "0J",
    energy_per_move = "0J",
    collision_box = { { 0, 0 }, { 0, 0 } },
    selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = sounds.flying_robot(),
    working_light = { intensity = 0.8, size = 3 },
    construction_vector = { 0.30, 0.22 },
    idle = bobmods.logistics.construction_robot_idle(5),
    in_motion = bobmods.logistics.construction_robot_in_motion(5),
    working = bobmods.logistics.construction_robot_working(5),
    shadow_idle = bobmods.logistics.construction_robot_shadow,
    shadow_in_motion = bobmods.logistics.construction_robot_shadow,
    shadow_working = bobmods.logistics.construction_robot_shadow_working,
    smoke = bobmods.logistics.robot_smoke,
    sparks = bobmods.logistics.robot_sparks,
    factoriopedia_simulation = {
      init = [[
        game.simulation.camera_position = {0, -1}
        game.surfaces[1].create_entity{name = "bob-construction-robot-5", position = {0, 0}}
      ]],
    },
  },
})
