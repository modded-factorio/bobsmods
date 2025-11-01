function bobmods.logistics.logistic_robot_idle(level)
  return {
    filename = "__boblogistics__/graphics/entity/robots/logistic-robot-" .. level .. ".png",
    priority = "high",
    line_length = 16,
    width = 80,
    height = 84,
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
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    y = 168,
    scale = 0.5,
  }
end

function bobmods.logistics.logistic_robot_shadow_idle()
  return {
    filename = "__boblogistics__/graphics/entity/robots/logistic-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 115,
    height = 57,
    shift = util.by_pixel(31.75, 19.75),
    direction_count = 16,
    y = 57,
    scale = 0.5,
    draw_as_shadow = true,
  }
end

function bobmods.logistics.logistic_robot_shadow_idle_with_cargo()
  return {
    filename = "__boblogistics__/graphics/entity/robots/logistic-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 115,
    height = 57,
    shift = util.by_pixel(31.75, 19.75),
    direction_count = 16,
    scale = 0.5,
    draw_as_shadow = true,
  }
end

function bobmods.logistics.logistic_robot_shadow_in_motion()
  return {
    filename = "__boblogistics__/graphics/entity/robots/logistic-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 115,
    height = 57,
    shift = util.by_pixel(31.75, 19.75),
    direction_count = 16,
    y = 171,
    scale = 0.5,
    draw_as_shadow = true,
  }
end

function bobmods.logistics.logistic_robot_shadow_in_motion_with_cargo()
  return {
    filename = "__boblogistics__/graphics/entity/robots/logistic-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 115,
    height = 57,
    shift = util.by_pixel(31.75, 19.75),
    direction_count = 16,
    y = 114,
    scale = 0.5,
    draw_as_shadow = true,
  }
end

local bot = data.raw["logistic-robot"]["logistic-robot"]
bot.icon = "__boblogistics__/graphics/icons/robots/logistic-robot-1.png"
bot.icon_size = 32
bot.idle = bobmods.logistics.logistic_robot_idle(1)
bot.idle_with_cargo = bobmods.logistics.logistic_robot_idle_with_cargo(1)
bot.in_motion = bobmods.logistics.logistic_robot_in_motion(1)
bot.in_motion_with_cargo = bobmods.logistics.logistic_robot_in_motion_with_cargo(1)
bot.shadow_idle = bobmods.logistics.logistic_robot_shadow_idle()
bot.shadow_in_motion = bobmods.logistics.logistic_robot_shadow_in_motion()
bot.shadow_idle_with_cargo = bobmods.logistics.logistic_robot_shadow_idle_with_cargo()
bot.shadow_in_motion_with_cargo = bobmods.logistics.logistic_robot_shadow_in_motion_with_cargo()
bot.fast_replaceable_group = "logistic-robot"
table.insert(bot.resistances, { type = "poison", decrease = 0, percent = 60 })

data:extend({
  util.merge({
    data.raw["logistic-robot"]["logistic-robot"],
    {
      name = "bob-logistic-robot-2",
      icon = "__boblogistics__/graphics/icons/robots/logistic-robot-2.png",
      minable = { result = "bob-logistic-robot-2" },
      resistances = {
        { type = "fire", decrease = 4, percent = 85 },
        { type = "electric", decrease = 6, percent = 60 },
        { type = "acid", decrease = 4, percent = 60 },
        { type = "poison", decrease = 0, percent = 70 },
      },
      max_health = 125,
      max_payload_size = 3,
      speed = 0.07,
      max_energy = "2250kJ",
      energy_per_tick = "65J",
      idle = bobmods.logistics.logistic_robot_idle(2),
      idle_with_cargo = bobmods.logistics.logistic_robot_idle_with_cargo(2),
      in_motion = bobmods.logistics.logistic_robot_in_motion(2),
      in_motion_with_cargo = bobmods.logistics.logistic_robot_in_motion_with_cargo(2),
      factoriopedia_simulation = {
        init = [[
          game.simulation.camera_position = {0, -1}
          game.surfaces[1].create_entity{name = "bob-logistic-robot-2", position = {0, 0}}
        ]],
      },
      next_upgrade = "bob-logistic-robot-3",
    },
  }),
  util.merge({
    data.raw["logistic-robot"]["logistic-robot"],
    {
      name = "bob-logistic-robot-3",
      icon = "__boblogistics__/graphics/icons/robots/logistic-robot-3.png",
      minable = { result = "bob-logistic-robot-3" },
      resistances = {
        { type = "fire", decrease = 8, percent = 85 },
        { type = "electric", decrease = 12, percent = 75 },
        { type = "acid", decrease = 8, percent = 65 },
        { type = "poison", decrease = 0, percent = 80 },
      },
      max_health = 150,
      max_payload_size = 6,
      speed = 0.09,
      max_energy = "3000kJ",
      energy_per_tick = "80J",
      idle = bobmods.logistics.logistic_robot_idle(3),
      idle_with_cargo = bobmods.logistics.logistic_robot_idle_with_cargo(3),
      in_motion = bobmods.logistics.logistic_robot_in_motion(3),
      in_motion_with_cargo = bobmods.logistics.logistic_robot_in_motion_with_cargo(3),
      factoriopedia_simulation = {
        init = [[
          game.simulation.camera_position = {0, -1}
          game.surfaces[1].create_entity{name = "bob-logistic-robot-3", position = {0, 0}}
        ]],
      },
      next_upgrade = "bob-logistic-robot-4",
    },
  }),
  util.merge({
    data.raw["logistic-robot"]["logistic-robot"],
    {
      name = "bob-logistic-robot-4",
      icon = "__boblogistics__/graphics/icons/robots/logistic-robot-4.png",
      minable = { result = "bob-logistic-robot-4" },
      resistances = {
        { type = "fire", decrease = 12, percent = 90 },
        { type = "electric", decrease = 20, percent = 90 },
        { type = "acid", decrease = 12, percent = 70 },
        { type = "poison", decrease = 0, percent = 90 },
      },
      max_health = 175,
      max_payload_size = 11,
      speed = 0.12,
      max_energy = "3750kJ",
      energy_per_tick = "95J",
      idle = bobmods.logistics.logistic_robot_idle(4),
      idle_with_cargo = bobmods.logistics.logistic_robot_idle_with_cargo(4),
      in_motion = bobmods.logistics.logistic_robot_in_motion(4),
      in_motion_with_cargo = bobmods.logistics.logistic_robot_in_motion_with_cargo(4),
      factoriopedia_simulation = {
        init = [[
          game.simulation.camera_position = {0, -1}
          game.surfaces[1].create_entity{name = "bob-logistic-robot-4", position = {0, 0}}
        ]],
      },
      next_upgrade = "bob-logistic-robot-5",
    },
  }),
  util.merge({
    data.raw["logistic-robot"]["logistic-robot"],
    {
      name = "bob-logistic-robot-5",
      icon = "__boblogistics__/graphics/icons/robots/logistic-robot-5.png",
      minable = { result = "bob-logistic-robot-5" },
      resistances = {
        { type = "fire", decrease = 12, percent = 90 },
        { type = "electric", decrease = 20, percent = 90 },
        { type = "acid", decrease = 12, percent = 70 },
        { type = "poison", decrease = 0, percent = 90 },
      },
      max_health = 175,
      max_payload_size = 11,
      speed = 0.12,
      max_energy = "1500kJ",
      energy_per_tick = "0J",
      energy_per_move = "0J",
      idle = bobmods.logistics.logistic_robot_idle(5),
      idle_with_cargo = bobmods.logistics.logistic_robot_idle_with_cargo(5),
      in_motion = bobmods.logistics.logistic_robot_in_motion(5),
      in_motion_with_cargo = bobmods.logistics.logistic_robot_in_motion_with_cargo(5),
      factoriopedia_simulation = {
        init = [[
          game.simulation.camera_position = {0, -1}
          game.surfaces[1].create_entity{name = "bob-logistic-robot-5", position = {0, 0}}
        ]],
      },
    },
  }),
})

bot.next_upgrade = "bob-logistic-robot-2"

function bobmods.logistics.construction_robot_idle(level)
  return {
    filename = "__boblogistics__/graphics/entity/robots/construction-robot-" .. level .. ".png",
    priority = "high",
    line_length = 16,
    width = 66,
    height = 76,
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

function bobmods.logistics.construction_robot_shadow_idle()
  return {
    filename = "__boblogistics__/graphics/entity/robots/construction-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 104,
    height = 49,
    shift = util.by_pixel(33.5, 18.75),
    direction_count = 16,
    scale = 0.5,
    draw_as_shadow = true,
  }
end

function bobmods.logistics.construction_robot_shadow_in_motion()
  return {
    filename = "__boblogistics__/graphics/entity/robots/construction-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 104,
    height = 49,
    shift = util.by_pixel(33.5, 18.75),
    direction_count = 16,
    scale = 0.5,
    draw_as_shadow = true,
  }
end

function bobmods.logistics.construction_robot_shadow_working()
  return {
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
    draw_as_shadow = true,
  }
end

bot = data.raw["construction-robot"]["construction-robot"]
bot.icon = "__boblogistics__/graphics/icons/robots/construction-robot-1.png"
bot.icon_size = 32
bot.idle = bobmods.logistics.construction_robot_idle(1)
bot.in_motion = bobmods.logistics.construction_robot_in_motion(1)
bot.working = bobmods.logistics.construction_robot_working(1)
bot.shadow_idle = bobmods.logistics.construction_robot_shadow_idle()
bot.shadow_in_motion = bobmods.logistics.construction_robot_shadow_in_motion()
bot.shadow_working = bobmods.logistics.construction_robot_shadow_working()
bot.fast_replaceable_group = "construction-robot"
table.insert(bot.resistances, { type = "poison", decrease = 0, percent = 60 })

data:extend({
  util.merge({
    data.raw["construction-robot"]["construction-robot"],
    {
      name = "bob-construction-robot-2",
      icon = "__boblogistics__/graphics/icons/robots/construction-robot-2.png",
      minable = { result = "bob-construction-robot-2" },
      resistances = {
        { type = "fire", decrease = 4, percent = 85 },
        { type = "electric", decrease = 6, percent = 60 },
        { type = "acid", decrease = 4, percent = 60 },
        { type = "poison", decrease = 0, percent = 70 },
      },
      max_health = 225,
      max_payload_size = 2,
      speed = 0.09,
      max_energy = "3250kJ",
      energy_per_tick = "60J",
      idle = bobmods.logistics.construction_robot_idle(2),
      in_motion = bobmods.logistics.construction_robot_in_motion(2),
      working = bobmods.logistics.construction_robot_working(2),
      factoriopedia_simulation = {
        init = [[
          game.simulation.camera_position = {0, -1}
          game.surfaces[1].create_entity{name = "bob-construction-robot-2", position = {0, 0}}
        ]],
      },
      next_upgrade = "bob-construction-robot-3",
    },
  }),
  util.merge({
    data.raw["construction-robot"]["construction-robot"],
    {
      name = "bob-construction-robot-3",
      icon = "__boblogistics__/graphics/icons/robots/construction-robot-3.png",
      minable = { result = "bob-construction-robot-3" },
      resistances = {
        { type = "fire", decrease = 8, percent = 85 },
        { type = "electric", decrease = 12, percent = 75 },
        { type = "acid", decrease = 8, percent = 65 },
        { type = "poison", decrease = 0, percent = 80 },
      },
      max_health = 350,
      max_payload_size = 4,
      speed = 0.12,
      max_energy = "3500kJ",
      energy_per_tick = "75J",
      idle = bobmods.logistics.construction_robot_idle(3),
      in_motion = bobmods.logistics.construction_robot_in_motion(3),
      working = bobmods.logistics.construction_robot_working(3),
      factoriopedia_simulation = {
        init = [[
          game.simulation.camera_position = {0, -1}
          game.surfaces[1].create_entity{name = "bob-construction-robot-3", position = {0, 0}}
        ]],
      },
      next_upgrade = "bob-construction-robot-3",
    },
  }),
  util.merge({
    data.raw["construction-robot"]["construction-robot"],
    {
      name = "bob-construction-robot-4",
      icon = "__boblogistics__/graphics/icons/robots/construction-robot-4.png",
      minable = { result = "bob-construction-robot-4" },
      resistances = {
        { type = "fire", decrease = 12, percent = 90 },
        { type = "electric", decrease = 20, percent = 90 },
        { type = "acid", decrease = 12, percent = 70 },
        { type = "poison", decrease = 0, percent = 90 },
      },
      max_health = 500,
      max_payload_size = 6,
      speed = 0.15,
      max_energy = "3750kJ",
      energy_per_tick = "80J",
      idle = bobmods.logistics.construction_robot_idle(4),
      in_motion = bobmods.logistics.construction_robot_in_motion(4),
      working = bobmods.logistics.construction_robot_working(4),
      factoriopedia_simulation = {
        init = [[
          game.simulation.camera_position = {0, -1}
          game.surfaces[1].create_entity{name = "bob-construction-robot-4", position = {0, 0}}
        ]],
      },
      next_upgrade = "bob-construction-robot-3",
    },
  }),
  util.merge({
    data.raw["construction-robot"]["construction-robot"],
    {
      name = "bob-construction-robot-5",
      icon = "__boblogistics__/graphics/icons/robots/construction-robot-5.png",
      minable = { result = "bob-construction-robot-5" },
      resistances = {
        { type = "fire", decrease = 12, percent = 90 },
        { type = "electric", decrease = 20, percent = 90 },
        { type = "acid", decrease = 12, percent = 70 },
        { type = "poison", decrease = 0, percent = 90 },
      },
      max_health = 500,
      max_payload_size = 6,
      speed = 0.15,
      max_energy = "1500kJ",
      energy_per_tick = "0J",
      energy_per_move = "0J",
      idle = bobmods.logistics.construction_robot_idle(5),
      in_motion = bobmods.logistics.construction_robot_in_motion(5),
      working = bobmods.logistics.construction_robot_working(5),
      factoriopedia_simulation = {
        init = [[
          game.simulation.camera_position = {0, -1}
          game.surfaces[1].create_entity{name = "bob-construction-robot-5", position = {0, 0}}
        ]],
      },
    },
  }),
})

bot.next_upgrade = "bob-construction-robot-2"
