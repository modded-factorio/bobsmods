local sounds = require("__base__.prototypes.entity.sounds")

function bobmods.warfare.tank_drone_animation(scale, tint1, tint2)
  if tint1 == nil then
    tint1 = { r = 1, g = 1, b = 1 }
  end
  if tint2 == nil then
    tint2 = { r = 1, g = 1, b = 1 }
  end
  return {
    layers = {
      {
        priority = "low",
        width = 270,
        height = 212,
        frame_count = 2,
        tint = tint1,
        direction_count = 64,
        shift = util.by_pixel(scale * 0, scale * -10),
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
        scale = scale * 0.5,
      },
      {
        priority = "low",
        width = 208,
        height = 166,
        frame_count = 2,
        tint = tint2,
        direction_count = 64,
        shift = util.by_pixel(scale * 0, scale * -21.5),
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
        scale = scale * 0.5,
      },
      {
        priority = "low",
        width = 302,
        height = 194,
        frame_count = 2,
        draw_as_shadow = true,
        direction_count = 64,
        shift = util.by_pixel(scale * 22.5, scale * 7),
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
        scale = scale * 0.5,
      },
    },
  }
end

local tint_drone_1 = { r = 1.0, g = 0.2, b = 0.0 } -- hue 4
local tint_drone_2 = { r = 0.0, g = 0.5, b = 1.0 } -- hue 148
local tint_drone_3 = { r = 0.7, g = 0.0, b = 1.0 } -- hue 200
local tint_drone_4 = { r = 0.0, g = 1.0, b = 0.0 } -- hue 85

local tint_drone_gun = { r = 1, g = 1, b = 0.5 }
local tint_drone_laser = { r = 0.9, g = 0.9, b = 0.9 }
local tint_drone_flamethrower = { r = 1, g = 0.6, b = 0.5 }
local tint_drone_plasma = { r = 0.5, g = 0.8, b = 1 }

data:extend({
  {
    type = "unit",
    name = "bob-robot-gun-drone",
    icon = "__bobwarfare__/graphics/icons/gun-drone.png",
    icon_size = 64,
    flags = { "placeable-player", "placeable-enemy", "placeable-off-grid", "player-creation" },
    minable = { mining_time = 1, result = "bob-robot-gun-drone" },
    max_health = 500,
    corpse = "small-remnants",
    dying_explosion = "medium-explosion",
    resistances = {
      {
        type = "fire",
        percent = 50,
      },
      {
        type = "poison",
        percent = 50,
      },
      {
        type = "physical",
        percent = 30,
      },
      {
        type = "impact",
        percent = 50,
      },
      {
        type = "explosion",
        percent = 50,
      },
      {
        type = "acid",
        percent = 40,
      },
    },
    impact_category = "metal-large",
    collision_box = { { -0.45, -0.65 }, { 0.45, 0.65 } },
    selection_box = { { -0.45, -0.65 }, { 0.45, 0.65 } },
    distraction_cooldown = 300,

    attack_parameters = {
      type = "projectile",
      cooldown = 6,
      range = 18,
      projectile_creation_distance = 1,
      projectile_center = { 0, 0.6 }, -- same as gun_turret_attack shift
      animation = bobmods.warfare.tank_drone_animation(0.5, tint_drone_gun, tint_drone_1),
      shell_particle = {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = { 0, 0.6 },
        creation_distance = 1,
        starting_frame_speed = 0.2,
        starting_frame_speed_deviation = 0.1,
      },
      sound = sounds.heavy_gunshot,
      ammo_category = "bullet",
      ammo_type = {
        action = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              type = "create-explosion",
              entity_name = "explosion-gunshot",
            },
            target_effects = {
              {
                type = "create-entity",
                entity_name = "explosion-hit",
              },
              {
                type = "damage",
                damage = { amount = 16, type = "physical" },
              },
            },
          },
        },
      },
    },

    vision_distance = 30,
    movement_speed = 0.16,
    distance_per_frame = 0.15,
    absorptions_to_join_attack = { pollution = 10 },
    run_animation = bobmods.warfare.tank_drone_animation(0.5, tint_drone_gun, tint_drone_1),
  },
})

data:extend({
  {
    type = "unit",
    name = "bob-robot-laser-drone",
    icon = "__bobwarfare__/graphics/icons/laser-drone.png",
    icon_size = 64,
    flags = { "placeable-player", "placeable-enemy", "placeable-off-grid", "player-creation" },
    minable = { mining_time = 1, result = "bob-robot-laser-drone" },
    max_health = 1000,
    corpse = "small-remnants",
    dying_explosion = "medium-explosion",
    resistances = {
      {
        type = "fire",
        percent = 50,
      },
      {
        type = "poison",
        percent = 50,
      },
      {
        type = "physical",
        percent = 30,
      },
      {
        type = "impact",
        percent = 50,
      },
      {
        type = "explosion",
        percent = 50,
      },
      {
        type = "acid",
        percent = 40,
      },
    },
    impact_category = "metal-large",
    collision_box = { { -0.45, -0.65 }, { 0.45, 0.65 } },
    selection_box = { { -0.45, -0.65 }, { 0.45, 0.65 } },
    distraction_cooldown = 300,

    attack_parameters = {
      type = "beam",
      cooldown = 20,
      range = 25,
      source_direction_count = 64,
      source_offset = { 0, -0.5 },
      damage_modifier = 5,
      animation = bobmods.warfare.tank_drone_animation(0.5, tint_drone_laser, tint_drone_1),
      sound = make_laser_sounds(),
      ammo_category = "laser",
      ammo_type = {
        action = {
          type = "direct",
          action_delivery = {
            type = "beam",
            beam = "laser-beam",
            max_length = 27, --slightly more than range, to stop errors.
            duration = 20,
            source_offset = { 0, -0.5 },
          },
        },
      },
    },

    vision_distance = 35,
    movement_speed = 0.16,
    distance_per_frame = 0.15,
    absorptions_to_join_attack = { pollution = 15 },
    run_animation = bobmods.warfare.tank_drone_animation(0.5, tint_drone_laser, tint_drone_1),
  },
})

data:extend({
  {
    type = "unit",
    name = "bob-robot-flamethrower-drone",
    icon = "__bobwarfare__/graphics/icons/flamethrower-drone.png",
    icon_size = 64,
    flags = { "placeable-player", "placeable-enemy", "placeable-off-grid", "player-creation" },
    minable = { mining_time = 1, result = "bob-robot-flamethrower-drone" },
    max_health = 1500,
    corpse = "small-remnants",
    dying_explosion = "medium-explosion",
    resistances = {
      {
        type = "fire",
        percent = 100,
      },
      {
        type = "poison",
        percent = 50,
      },
      {
        type = "physical",
        percent = 30,
      },
      {
        type = "impact",
        percent = 50,
      },
      {
        type = "explosion",
        percent = 50,
      },
      {
        type = "acid",
        percent = 40,
      },
    },
    impact_category = "metal-large",
    collision_box = { { -0.45, -0.65 }, { 0.45, 0.65 } },
    selection_box = { { -0.45, -0.65 }, { 0.45, 0.65 } },
    distraction_cooldown = 300,

    attack_parameters = {
      type = "stream",
      cooldown = 4,
      range = 30,
      min_range = 6,
      animation = bobmods.warfare.tank_drone_animation(0.5, tint_drone_flamethrower, tint_drone_1),
      damage_modifier = 2.5,
      lead_target_for_projectile_speed = 0.2 * 0.75 * 1.5, -- this is same as particle horizontal speed of flamethrower fire stream
      ammo_category = "flamethrower",
      ammo_type = {
        action = {
          type = "direct",
          action_delivery = {
            type = "stream",
            stream = "flamethrower-fire-stream",
            source_offset = { 0, -0.5 },
          },
        },
      },
      cyclic_sound = {
        begin_sound = {
          {
            filename = "__base__/sound/fight/flamethrower-start.ogg",
            volume = 0.7,
          },
        },
        middle_sound = {
          {
            filename = "__base__/sound/fight/flamethrower-mid.ogg",
            volume = 0.7,
          },
        },
        end_sound = {
          {
            filename = "__base__/sound/fight/flamethrower-end.ogg",
            volume = 0.7,
          },
        },
      },
    },
    vision_distance = 40,
    movement_speed = 0.16,
    distance_per_frame = 0.15,
    absorptions_to_join_attack = { pollution = 20 },
    run_animation = bobmods.warfare.tank_drone_animation(0.5, tint_drone_flamethrower, tint_drone_1),
  },
})

data:extend({
  {
    type = "unit",
    name = "bob-robot-plasma-drone",
    icon = "__bobwarfare__/graphics/icons/plasma-drone.png",
    icon_size = 64,
    flags = { "placeable-player", "placeable-enemy", "placeable-off-grid", "player-creation" },
    minable = { mining_time = 1, result = "bob-robot-plasma-drone" },
    max_health = 1250,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    resistances = {
      {
        type = "fire",
        percent = 50,
      },
      {
        type = "poison",
        percent = 50,
      },
      {
        type = "physical",
        percent = 30,
      },
      {
        type = "impact",
        percent = 50,
      },
      {
        type = "explosion",
        percent = 50,
      },
      {
        type = "acid",
        percent = 40,
      },
    },
    impact_category = "metal-large",
    collision_box = { { -0.45 * 1.5, -0.65 * 1.5 }, { 0.45 * 1.5, 0.65 * 1.5 } },
    selection_box = { { -0.45 * 1.5, -0.65 * 1.5 }, { 0.45 * 1.5, 0.65 * 1.5 } },
    distraction_cooldown = 300,

    attack_parameters = {
      type = "projectile",
      cooldown = 800,
      damage_modifier = 15,
      lead_target_for_projectile_speed = 1,
      projectile_center = { 0, -0.5 * 1.5 },
      projectile_creation_distance = 1 * 1.5,
      range = 60,
      sound = { { filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 } },
      min_range = 30,
      animation = bobmods.warfare.tank_drone_animation(0.5 * 1.5, tint_drone_plasma, tint_drone_1),
      ammo_category = "laser",
      ammo_type = {
        type = "projectile",
        target_type = "position",
        clamp_position = true,
        action = {
          {
            type = "direct",
            action_delivery = {
              {
                type = "projectile",
                projectile = "bob-plasma-projectile",
                starting_speed = 1,
                direction_deviation = 0,
                range_deviation = 0,
                max_range = 120,
              },
            },
          },
        },
      },
    },
    vision_distance = 70,
    movement_speed = 0.1,
    distance_per_frame = 0.1,
    absorptions_to_join_attack = { pollution = 30 },
    run_animation = bobmods.warfare.tank_drone_animation(0.5 * 1.5, tint_drone_plasma, tint_drone_1),
  },
})
