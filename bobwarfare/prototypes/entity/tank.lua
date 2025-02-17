local tank_mk2_tint = { r = 0.7, g = 0.8, b = 1 }
local tank_mk3_tint = { r = 1, g = 0.8, b = 0.7 }
if settings.startup["bobmods-colorupdate"].value == true then
  tank_mk2_tint = { r = 1, g = 0.7, b = 1 }
  tank_mk3_tint = { r = 0.7, g = 1, b = 0.7 }
end

data.raw.car.car.resistances = {
  {
    type = "fire",
    decrease = 2,
    percent = 30,
  },
  {
    type = "poison",
    decrease = 3,
    percent = 40,
  },
  {
    type = "impact",
    decrease = 50,
    percent = 30,
  },
  {
    type = "acid",
    decrease = 3,
    percent = 30,
  },
  {
    type = "electric",
    percent = 20,
  },
  {
    type = "bob-plasma",
    decrease = 15,
    percent = 50,
  },
}

data.raw.car.tank.resistances = {
  {
    type = "fire",
    decrease = 5,
    percent = 40,
  },
  {
    type = "poison",
    decrease = 5,
    percent = 50,
  },
  {
    type = "physical",
    decrease = 15,
    percent = 45,
  },
  {
    type = "impact",
    decrease = 50,
    percent = 70,
  },
  {
    type = "explosion",
    decrease = 20,
    percent = 60,
  },
  {
    type = "acid",
    decrease = 5,
    percent = 60,
  },
  {
    type = "electric",
    decrease = 10,
    percent = 30,
  },
  {
    type = "laser",
    percent = 20,
  },
  {
    type = "bob-pierce",
    percent = 20,
  },
  {
    type = "bob-plasma",
    decrease = 15,
    percent = 50,
  },
}

function bobmods.warfare.tank_animation(tint)
  return {
    layers = {
      {
        priority = "low",
        width = 270,
        height = 212,
        frame_count = 2,
        tint = tint,
        direction_count = 64,
        shift = util.by_pixel(0, -10),
        animation_speed = 8,
        max_advance = 1,
        stripes = {
          {
            filename = "__base__/graphics/entity/tank/tank-base-1.png",
            width_in_frames = 2,
            height_in_frames = 16,
          },
          {
            filename = "__base__/graphics/entity/tank/tank-base-2.png",
            width_in_frames = 2,
            height_in_frames = 16,
          },
          {
            filename = "__base__/graphics/entity/tank/tank-base-3.png",
            width_in_frames = 2,
            height_in_frames = 16,
          },
          {
            filename = "__base__/graphics/entity/tank/tank-base-4.png",
            width_in_frames = 2,
            height_in_frames = 16,
          },
        },
        scale = 0.5,
      },
      {
        priority = "low",
        width = 208,
        height = 166,
        frame_count = 2,
        apply_runtime_tint = true,
        direction_count = 64,
        shift = util.by_pixel(0, -21.5),
        max_advance = 1,
        line_length = 2,
        stripes = util.multiplystripes(2, {
          {
            filename = "__base__/graphics/entity/tank/tank-base-mask-1.png",
            width_in_frames = 1,
            height_in_frames = 22,
          },
          {
            filename = "__base__/graphics/entity/tank/tank-base-mask-2.png",
            width_in_frames = 1,
            height_in_frames = 22,
          },
          {
            filename = "__base__/graphics/entity/tank/tank-base-mask-3.png",
            width_in_frames = 1,
            height_in_frames = 20,
          },
        }),
        scale = 0.5,
      },
      {
        priority = "low",
        width = 302,
        height = 194,
        frame_count = 2,
        draw_as_shadow = true,
        direction_count = 64,
        shift = util.by_pixel(22.5, 7),
        max_advance = 1,
        stripes = util.multiplystripes(2, {
          {
            filename = "__base__/graphics/entity/tank/tank-base-shadow-1.png",
            width_in_frames = 1,
            height_in_frames = 16,
          },
          {
            filename = "__base__/graphics/entity/tank/tank-base-shadow-2.png",
            width_in_frames = 1,
            height_in_frames = 16,
          },
          {
            filename = "__base__/graphics/entity/tank/tank-base-shadow-3.png",
            width_in_frames = 1,
            height_in_frames = 16,
          },
          {
            filename = "__base__/graphics/entity/tank/tank-base-shadow-4.png",
            width_in_frames = 1,
            height_in_frames = 16,
          },
        }),
        scale = 0.5,
      },
    },
  }
end

function bobmods.warfare.tank_turret_animation(tint)
  return {
    layers = {
      {
        filename = "__base__/graphics/entity/tank/tank-turret.png",
        priority = "low",
        line_length = 8,
        width = 179,
        height = 132,
        frame_count = 1,
        tint = tint,
        direction_count = 64,
        shift = util.by_pixel(0.25, -34.5),
        animation_speed = 8,
        scale = 0.5,
      },
      {
        filename = "__base__/graphics/entity/tank/tank-turret-mask.png",
        priority = "low",
        line_length = 8,
        width = 72,
        height = 66,
        frame_count = 1,
        apply_runtime_tint = true,
        direction_count = 64,
        shift = util.by_pixel(0, -35.5),
        scale = 0.5,
      },
      {
        filename = "__base__/graphics/entity/tank/tank-turret-shadow.png",
        priority = "low",
        line_length = 8,
        width = 193,
        height = 134,
        frame_count = 1,
        draw_as_shadow = true,
        direction_count = 64,
        shift = util.by_pixel(56.25, 6.5),
        scale = 0.5,
      },
    },
  }
end

local sounds = require("prototypes.entity.sounds")
local movement_triggers = require("__base__/prototypes/entity/movement-triggers")

data:extend({
  {
    type = "car",
    name = "bob-tank-2",
    icon = "__bobwarfare__/graphics/icons/tank-2.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation", "placeable-off-grid", "not-flammable" },
    minable = { mining_time = 1, result = "bob-tank-2" },
    mined_sound = sounds.deconstruct_large(0.8),
    max_health = 2500,
    is_military_target = true,
    deliver_category = "vehicle",
    corpse = "tank-remnants",
    dying_explosion = "tank-explosion",
    alert_icon_shift = util.by_pixel(0, -13),
    immune_to_tree_impacts = true,
    immune_to_rock_impacts = true,
    energy_per_hit_point = 0.5,
    allow_remote_driving = true,
    equipment_grid = "medium-equipment-grid",
    trash_inventory_size = 20,
    resistances = {
      {
        type = "fire",
        decrease = 12,
        percent = 55,
      },
      {
        type = "poison",
        decrease = 8,
        percent = 50,
      },
      {
        type = "physical",
        decrease = 25,
        percent = 55,
      },
      {
        type = "impact",
        decrease = 100,
        percent = 75,
      },
      {
        type = "explosion",
        decrease = 35,
        percent = 70,
      },
      {
        type = "acid",
        decrease = 8,
        percent = 70,
      },
      {
        type = "electric",
        decrease = 15,
        percent = 40,
      },
      {
        type = "laser",
        percent = 30,
      },
      {
        type = "bob-pierce",
        percent = 15,
      },
      {
        type = "bob-plasma",
        decrease = 25,
        percent = 75,
      },
    },
    impact_category = "metal-large",
    collision_box = { { -0.9, -1.3 }, { 0.9, 1.3 } },
    selection_box = { { -0.9, -1.3 }, { 0.9, 1.3 } },
    drawing_box_vertical_extension = 0.5,
    effectivity = 0.95,
    braking_power = "1000kW",
    energy_source = {
      type = "burner",
      effectivity = 1.2,
      fuel_inventory_size = 3,
      smoke = {
        {
          name = "tank-smoke",
          deviation = { 0.25, 0.25 },
          frequency = 50,
          position = { 0, 1.5 },
          starting_frame = 0,
          starting_frame_deviation = 60,
        },
      },
    },
    consumption = "800kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light = {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture = {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200,
        },
        shift = { -0.6, -14 },
        size = 2,
        intensity = 0.6,
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture = {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200,
        },
        shift = { 0.6, -14 },
        size = 2,
        intensity = 0.6,
      },
    },
    light_animation = {
      filename = "__base__/graphics/entity/tank/tank-light.png",
      priority = "low",
      blend_mode = "additive",
      draw_as_glow = true,
      width = 260,
      height = 210,
      line_length = 8,
      direction_count = 64,
      scale = 0.5,
      shift = util.by_pixel(-1, -17 + 6),
      repeat_count = 2,
    },
    animation = bobmods.warfare.tank_animation(tank_mk2_tint),
    turret_animation = bobmods.warfare.tank_turret_animation(tank_mk2_tint),
    turret_rotation_speed = 0.6 / 60,
    turret_return_timeout = 240,
    stop_trigger_speed = 0.2,
    sound_no_fuel = {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6,
      },
    },
    stop_trigger = {
      {
        type = "play-sound",
        sound = {
          {
            filename = "__base__/sound/fight/tank-brakes.ogg",
            volume = 0.6,
          },
        },
      },
    },
    working_sound = {
      sound = {
        filename = "__base__/sound/fight/tank-engine.ogg",
        volume = 0.6,
      },
      activate_sound = {
        filename = "__base__/sound/fight/tank-engine-start.ogg",
        volume = 0.6,
      },
      deactivate_sound = {
        filename = "__base__/sound/fight/tank-engine-stop.ogg",
        volume = 0.6,
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/fight/tank-door-open.ogg", volume = 0.48 },
    close_sound = { filename = "__base__/sound/fight/tank-door-close.ogg", volume = 0.43 },
    rotation_speed = 0.006,
    tank_driving = true,
    weight = 20000,
    inventory_size = 100,
    track_particle_triggers = movement_triggers.tank,
    guns = { "bob-tank-cannon-2", "bob-gatling-gun", "bob-tank-flamethrower-2", "bob-tank-artillery-1" },
    water_reflection = car_reflection(1.2),
  },

  {
    type = "car",
    name = "bob-tank-3",
    icon = "__bobwarfare__/graphics/icons/tank-3.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation", "placeable-off-grid", "not-flammable" },
    minable = { mining_time = 1, result = "bob-tank-3" },
    mined_sound = sounds.deconstruct_large(0.8),
    max_health = 5000,
    is_military_target = true,
    deliver_category = "vehicle",
    corpse = "tank-remnants",
    dying_explosion = "tank-explosion",
    alert_icon_shift = util.by_pixel(0, -13),
    immune_to_tree_impacts = true,
    immune_to_rock_impacts = true,
    energy_per_hit_point = 0.5,
    allow_remote_driving = true,
    equipment_grid = "medium-equipment-grid",
    trash_inventory_size = 20,
    resistances = {
      {
        type = "fire",
        decrease = 20,
        percent = 75,
      },
      {
        type = "poison",
        decrease = 10,
        percent = 60,
      },
      {
        type = "physical",
        decrease = 35,
        percent = 65,
      },
      {
        type = "impact",
        decrease = 100,
        percent = 95,
      },
      {
        type = "explosion",
        decrease = 60,
        percent = 80,
      },
      {
        type = "acid",
        decrease = 12,
        percent = 80,
      },
      {
        type = "electric",
        decrease = 20,
        percent = 50,
      },
      {
        type = "laser",
        percent = 40,
      },
      {
        type = "bob-pierce",
        percent = 30,
      },
      {
        type = "bob-plasma",
        decrease = 35,
        percent = 90,
      },
    },
    impact_category = "metal-large",
    collision_box = { { -0.9, -1.3 }, { 0.9, 1.3 } },
    selection_box = { { -0.9, -1.3 }, { 0.9, 1.3 } },
    drawing_box_vertical_extension = 0.5,
    effectivity = 1,
    braking_power = "1200kW",
    energy_source = {
      type = "burner",
      effectivity = 1.4,
      fuel_inventory_size = 4,
      smoke = {
        {
          name = "tank-smoke",
          deviation = { 0.25, 0.25 },
          frequency = 50,
          position = { 0, 1.5 },
          starting_frame = 0,
          starting_frame_deviation = 60,
        },
      },
    },
    consumption = "1000kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light = {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture = {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200,
        },
        shift = { -0.6, -14 },
        size = 2,
        intensity = 0.6,
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture = {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200,
        },
        shift = { 0.6, -14 },
        size = 2,
        intensity = 0.6,
      },
    },
    light_animation = {
      filename = "__base__/graphics/entity/tank/tank-light.png",
      priority = "low",
      blend_mode = "additive",
      draw_as_glow = true,
      width = 260,
      height = 210,
      line_length = 8,
      direction_count = 64,
      scale = 0.5,
      shift = util.by_pixel(-1, -17 + 6),
      repeat_count = 2,
    },
    animation = bobmods.warfare.tank_animation(tank_mk3_tint),
    turret_animation = bobmods.warfare.tank_turret_animation(tank_mk3_tint),
    turret_rotation_speed = 1 / 60,
    turret_return_timeout = 180,
    stop_trigger_speed = 0.2,
    sound_no_fuel = {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6,
      },
    },
    stop_trigger = {
      {
        type = "play-sound",
        sound = {
          {
            filename = "__base__/sound/fight/tank-brakes.ogg",
            volume = 0.6,
          },
        },
      },
    },
    working_sound = {
      sound = {
        filename = "__base__/sound/fight/tank-engine.ogg",
        volume = 0.6,
      },
      activate_sound = {
        filename = "__base__/sound/fight/tank-engine-start.ogg",
        volume = 0.6,
      },
      deactivate_sound = {
        filename = "__base__/sound/fight/tank-engine-stop.ogg",
        volume = 0.6,
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/fight/tank-door-open.ogg", volume = 0.48 },
    close_sound = { filename = "__base__/sound/fight/tank-door-close.ogg", volume = 0.43 },
    rotation_speed = 0.01,
    tank_driving = true,
    weight = 20000,
    inventory_size = 100,
    track_particle_triggers = movement_triggers.tank,
    guns = {
      "bob-tank-cannon-3",
      "bob-gatling-gun",
      "bob-tank-flamethrower-3",
      "bob-tank-artillery-2",
      "bob-tank-laser",
    },
    water_reflection = car_reflection(1.2),
  },
})
