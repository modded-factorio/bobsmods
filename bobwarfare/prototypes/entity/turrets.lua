local sounds = require("__base__.prototypes.entity.sounds")

data.raw["ammo-turret"]["gun-turret"].fast_replaceable_group = "turret"
data.raw["electric-turret"]["laser-turret"].fast_replaceable_group = "turret"

local black = { r = 0, g = 0, b = 0, a = 1 }
local magenta = { r = 1, g = 0, b = 1, a = 1 }
local cyan = { r = 0, g = 1, b = 1, a = 1 }
local white = { r = 1, g = 1, b = 1, a = 1 }

local orange = { r = 1, g = 0.5, b = 0, a = 1 }

local yellow = { r = 1, g = 1, b = 0.5, a = 1 }
local red = { r = 1, g = 0.5, b = 0.5, a = 1 }
local blue = { r = 0.5, g = 0.8, b = 1, a = 1 }
local purple = { r = 0.8, g = 0.5, b = 1, a = 1 }
local green = { r = 0.5, g = 1, b = 0.5, a = 1 }

local function bob_gun_turret_extension(inputs)
  return {
    layers = {
      gun_turret_extension(inputs),
      {
        filename = "__base__/graphics/entity/gun-turret/gun-turret-raising-mask.png",
        flags = { "mask" },
        width = 24,
        height = 32,
        direction_count = 4,
        frame_count = inputs.frame_count or 5,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        shift = util.by_pixel(0, -28),
        axially_symmetrical = false,
        tint = inputs.tint or white,
        hr_version = {
          filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-raising-mask.png",
          flags = { "mask" },
          width = 48,
          height = 62,
          direction_count = 4,
          frame_count = inputs.frame_count or 5,
          line_length = inputs.line_length or 0,
          run_mode = inputs.run_mode or "forward",
          shift = util.by_pixel(0, -28),
          axially_symmetrical = false,
          tint = inputs.tint or white,
          scale = 0.5,
        },
      },
      gun_turret_extension_shadow(inputs),
    },
  }
end

local function bob_gun_turret_attack(inputs)
  return {
    layers = {
      {
        width = 66,
        height = 66,
        frame_count = inputs.frame_count or 2,
        axially_symmetrical = false,
        direction_count = 64,
        shift = util.by_pixel(0, -27),
        stripes = {
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-1.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16,
          },
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-2.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16,
          },
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-3.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16,
          },
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-4.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16,
          },
        },
        hr_version = {
          width = 132,
          height = 130,
          frame_count = inputs.frame_count and inputs.frame_count or 2,
          axially_symmetrical = false,
          direction_count = 64,
          shift = util.by_pixel(0, -27.5),
          stripes = {
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-1.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16,
            },
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-2.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16,
            },
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-3.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16,
            },
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-4.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16,
            },
          },
          scale = 0.5,
        },
      },
      {
        flags = { "mask" },
        line_length = inputs.frame_count or 2,
        width = 30,
        height = 28,
        frame_count = inputs.frame_count or 2,
        axially_symmetrical = false,
        direction_count = 64,
        shift = util.by_pixel(0, -32),
        tint = inputs.tint or white,
        stripes = {
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-mask-1.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16,
          },
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-mask-2.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16,
          },
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-mask-3.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16,
          },
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-mask-4.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16,
          },
        },
        hr_version = {
          flags = { "mask" },
          line_length = inputs.frame_count or 2,
          width = 58,
          height = 54,
          frame_count = inputs.frame_count or 2,
          axially_symmetrical = false,
          direction_count = 64,
          shift = util.by_pixel(0, -32.5),
          tint = inputs.tint or white,
          stripes = {
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-mask-1.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16,
            },
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-mask-2.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16,
            },
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-mask-3.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16,
            },
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-mask-4.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16,
            },
          },
          scale = 0.5,
        },
      },
      {
        width = 126,
        height = 62,
        frame_count = inputs.frame_count or 2,
        axially_symmetrical = false,
        direction_count = 64,
        shift = util.by_pixel(23, 2),
        draw_as_shadow = true,
        stripes = {
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-shadow-1.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16,
          },
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-shadow-2.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16,
          },
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-shadow-3.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16,
          },
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-shadow-4.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16,
          },
        },
        hr_version = {
          width = 250,
          height = 124,
          frame_count = inputs.frame_count or 2,
          axially_symmetrical = false,
          direction_count = 64,
          shift = util.by_pixel(22, 2.5),
          draw_as_shadow = true,
          stripes = {
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-shadow-1.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16,
            },
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-shadow-2.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16,
            },
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-shadow-3.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16,
            },
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-shadow-4.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16,
            },
          },
          scale = 0.5,
        },
      },
    },
  }
end

local function bob_gun_turret_base(inputs)
  local size = inputs.size or 1
  return {
    layers = {
      {
        filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
        priority = "high",
        width = 76,
        height = 60,
        axially_symmetrical = false,
        direction_count = 1,
        frame_count = 1,
        shift = util.by_pixel(1 * size, -1 * size),
        hr_version = {
          filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-base.png",
          priority = "high",
          width = 150,
          height = 118,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = util.by_pixel(0.5 * size, -1 * size),
          scale = 0.5 * size,
        },
      },
      {
        filename = "__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
        flags = { "mask" },
        line_length = 1,
        width = 62,
        height = 52,
        axially_symmetrical = false,
        direction_count = 1,
        frame_count = 1,
        shift = util.by_pixel(0, -4 * size),
        tint = inputs.tint or white,
        hr_version = {
          filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-base-mask.png",
          flags = { "mask" },
          line_length = 1,
          width = 122,
          height = 102,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = util.by_pixel(0, -4.5 * size),
          tint = inputs.tint or white,
          scale = 0.5 * size,
        },
      },
    },
  }
end

local function bob_laser_turret_extension(inputs)
  local size = inputs.size or 1
  return {
    layers = {
      {
        filename = "__base__/graphics/entity/laser-turret/laser-turret-raising.png",
        priority = "medium",
        width = 66,
        height = 64,
        frame_count = inputs.frame_count and inputs.frame_count or 15,
        line_length = inputs.line_length and inputs.line_length or 0,
        run_mode = inputs.run_mode and inputs.run_mode or "forward",
        axially_symmetrical = false,
        direction_count = 4,
        shift = util.by_pixel(0, -32 * size),
        scale = size,
        hr_version = {
          filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-raising.png",
          priority = "medium",
          width = 130,
          height = 126,
          frame_count = inputs.frame_count and inputs.frame_count or 15,
          line_length = inputs.line_length and inputs.line_length or 0,
          run_mode = inputs.run_mode and inputs.run_mode or "forward",
          axially_symmetrical = false,
          direction_count = 4,
          shift = util.by_pixel(0, -32.5 * size),
          scale = 0.5 * size,
        },
      },
      {
        filename = "__base__/graphics/entity/laser-turret/laser-turret-raising-mask.png",
        flags = { "mask" },
        width = 44,
        height = 40,
        frame_count = inputs.frame_count or 15,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        axially_symmetrical = false,
        tint = inputs.tint or white,
        direction_count = 4,
        shift = util.by_pixel(0, -43 * size),
        scale = size,
        hr_version = {
          filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-raising-mask.png",
          flags = { "mask" },
          width = 86,
          height = 80,
          frame_count = inputs.frame_count or 15,
          line_length = inputs.line_length or 0,
          run_mode = inputs.run_mode or "forward",
          axially_symmetrical = false,
          tint = inputs.tint or white,
          direction_count = 4,
          shift = util.by_pixel(0, -43 * size),
          scale = 0.5 * size,
        },
      },
      {
        filename = "__base__/graphics/entity/laser-turret/laser-turret-raising-shadow.png",
        width = 92,
        height = 50,
        frame_count = inputs.frame_count or 15,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        axially_symmetrical = false,
        direction_count = 4,
        draw_as_shadow = true,
        shift = util.by_pixel(47 * size, 3 * size),
        scale = size,
        hr_version = {
          filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-raising-shadow.png",
          width = 182,
          height = 96,
          frame_count = inputs.frame_count or 15,
          line_length = inputs.line_length or 0,
          run_mode = inputs.run_mode or "forward",
          axially_symmetrical = false,
          direction_count = 4,
          draw_as_shadow = true,
          shift = util.by_pixel(47 * size, 2.5 * size),
          scale = 0.5 * size,
        },
      },
    },
  }
end

function bob_laser_turret_extension_eight(inputs)
  local size = inputs.size or 1
  return {
    layers = {
      {
        filename = "__bobwarfare__/graphics/entities/laser-turret/laser-turret-folded-8.png",
        priority = "medium",
        width = 64,
        height = 60,
        frame_count = inputs.frame_count and inputs.frame_count or 15,
        line_length = inputs.line_length and inputs.line_length or 0,
        run_mode = inputs.run_mode and inputs.run_mode or "forward",
        axially_symmetrical = false,
        direction_count = 8,
        shift = util.by_pixel(0, -35 * size),
        scale = size,
        hr_version = {
          filename = "__bobwarfare__/graphics/entities/laser-turret/hr-laser-turret-folded-8.png",
          priority = "medium",
          width = 126,
          height = 120,
          frame_count = inputs.frame_count and inputs.frame_count or 15,
          line_length = inputs.line_length and inputs.line_length or 0,
          run_mode = inputs.run_mode and inputs.run_mode or "forward",
          axially_symmetrical = false,
          direction_count = 8,
          shift = util.by_pixel(0, -35 * size),
          scale = 0.5 * size,
        },
      },
      {
        filename = "__bobwarfare__/graphics/entities/laser-turret/laser-turret-folded-mask-8.png",
        flags = { "mask" },
        width = 46,
        height = 42,
        frame_count = inputs.frame_count or 15,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        axially_symmetrical = false,
        tint = inputs.tint or white,
        direction_count = 8,
        shift = util.by_pixel(0, -43 * size),
        scale = size,
        hr_version = {
          filename = "__bobwarfare__/graphics/entities/laser-turret/hr-laser-turret-folded-mask-8.png",
          flags = { "mask" },
          width = 92,
          height = 80,
          frame_count = inputs.frame_count or 15,
          line_length = inputs.line_length or 0,
          run_mode = inputs.run_mode or "forward",
          axially_symmetrical = false,
          tint = inputs.tint or white,
          direction_count = 8,
          shift = util.by_pixel(0, -43.5 * size),
          scale = 0.5 * size,
        },
      },
      {
        filename = "__bobwarfare__/graphics/entities/laser-turret/laser-turret-folded-shadow-8.png",
        width = 86,
        height = 46,
        frame_count = inputs.frame_count or 15,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        axially_symmetrical = false,
        direction_count = 8,
        draw_as_shadow = true,
        shift = util.by_pixel(51 * size, 2 * size),
        scale = size,
        hr_version = {
          filename = "__bobwarfare__/graphics/entities/laser-turret/hr-laser-turret-folded-shadow-8.png",
          width = 170,
          height = 92,
          frame_count = inputs.frame_count or 15,
          line_length = inputs.line_length or 0,
          run_mode = inputs.run_mode or "forward",
          axially_symmetrical = false,
          direction_count = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(50.5 * size, 2.5 * size),
          scale = 0.5 * size,
        },
      },
    },
  }
end

local function bob_laser_turret_attack(inputs)
  local size = inputs.size or 1
  return {
    layers = {
      {
        filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting.png",
        line_length = 8,
        width = 64,
        height = 60,
        frame_count = 1,
        direction_count = 64,
        shift = util.by_pixel(0, -35 * size),
        scale = size,
        hr_version = {
          filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-shooting.png",
          line_length = 8,
          width = 126,
          height = 120,
          frame_count = 1,
          direction_count = 64,
          shift = util.by_pixel(0, -35 * size),
          scale = 0.5 * size,
        },
      },
      {
        filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting-mask.png",
        flags = { "mask" },
        line_length = 8,
        width = 46,
        height = 42,
        frame_count = 1,
        tint = inputs.tint or white,
        direction_count = 64,
        shift = util.by_pixel(0, -43 * size),
        scale = size,
        hr_version = {
          filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-shooting-mask.png",
          flags = { "mask" },
          line_length = 8,
          width = 92,
          height = 80,
          frame_count = 1,
          tint = inputs.tint or white,
          direction_count = 64,
          shift = util.by_pixel(0, -43.5 * size),
          scale = 0.5 * size,
        },
      },
      {
        filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting-shadow.png",
        line_length = 8,
        width = 86,
        height = 46,
        frame_count = 1,
        direction_count = 64,
        draw_as_shadow = true,
        shift = util.by_pixel(51 * size, 2 * size),
        scale = size,
        hr_version = {
          filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-shooting-shadow.png",
          line_length = 8,
          width = 170,
          height = 92,
          frame_count = 1,
          direction_count = 64,
          draw_as_shadow = true,
          shift = util.by_pixel(50.5 * size, 2.5 * size),
          scale = 0.5 * size,
        },
      },
    },
  }
end

local function bob_laser_turret_base(inputs)
  local size = inputs.size or 1
  return {
    layers = {
      {
        filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
        priority = "high",
        width = 70,
        height = 52,
        axially_symmetrical = false,
        direction_count = 1,
        frame_count = 1,
        shift = util.by_pixel(0, 2 * size),
        tint = inputs.tint or white,
        scale = size,
        hr_version = {
          filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-base.png",
          priority = "high",
          width = 138,
          height = 104,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = util.by_pixel(-0.5 * size, 2 * size),
          tint = inputs.tint or white,
          scale = 0.5 * size,
        },
      },
      {
        filename = "__base__/graphics/entity/laser-turret/laser-turret-base-shadow.png",
        flags = { "mask" },
        line_length = 1,
        width = 66,
        height = 42,
        axially_symmetrical = false,
        draw_as_shadow = true,
        direction_count = 1,
        frame_count = 1,
        shift = util.by_pixel(6 * size, 3 * size),
        scale = size,
        hr_version = {
          filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-base-shadow.png",
          flags = { "mask" },
          line_length = 1,
          width = 132,
          height = 82,
          axially_symmetrical = false,
          draw_as_shadow = true,
          direction_count = 1,
          frame_count = 1,
          shift = util.by_pixel(6 * size, 3 * size),
          scale = 0.5 * size,
        },
      },
    },
  }
end

local function bob_artillery_turret_base(inputs)
  local size = inputs.size or 1
  return {
    layers = {
      {
        filename = "__base__/graphics/entity/artillery-turret/artillery-turret-base.png",
        priority = "high",
        width = 104,
        height = 100,
        direction_count = 1,
        frame_count = 1,
        shift = util.by_pixel(-0, 22),
        scale = size * (2 / 3),
        hr_version = {
          filename = "__base__/graphics/entity/artillery-turret/hr-artillery-turret-base.png",
          priority = "high",
          line_length = 1,
          width = 207,
          height = 199,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-0, 22),
          scale = 0.5 * size * (2 / 3),
        },
      },
      {
        filename = "__base__/graphics/entity/artillery-turret/artillery-turret-base-shadow.png",
        priority = "high",
        line_length = 1,
        width = 138,
        height = 75,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(18, 38),
        draw_as_shadow = true,
        scale = size * (2 / 3),
        hr_version = {
          filename = "__base__/graphics/entity/artillery-turret/hr-artillery-turret-base-shadow.png",
          priority = "high",
          line_length = 1,
          width = 277,
          height = 149,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(18, 38),
          draw_as_shadow = true,
          scale = 0.5 * size * (2 / 3),
        },
      },
    },
  }
end

local function bob_turret_base(inputs)
  local size = inputs.size or 1
  local anim
  if inputs.type == "gun" then
    anim = bob_gun_turret_base({ tint = inputs.tint, size = size })
  elseif inputs.type == "laser" then
    anim = bob_laser_turret_base({ tint = inputs.tint, size = size })
  else
    anim = bob_artillery_turret_base({ tint = inputs.tint, size = size })
  end
  return anim
end

local function bob_turret_attack(inputs)
  local anim
  if inputs.type == "gun" then
    anim = bob_gun_turret_attack(inputs)
  else
    anim = bob_laser_turret_attack(inputs)
  end
  return anim
end

local function bob_turret_extension(inputs)
  local anim
  if inputs.type == "gun" then
    anim = bob_gun_turret_extension(inputs)
  else
    anim = bob_laser_turret_extension(inputs)
  end
  return anim
end

local function bob_gun_turret(inputs)
  return
    {
      type = "ammo-turret",
      name = inputs.name,
      icon = "__base__/graphics/icons/gun-turret.png",
      icon_size = 64,
      icon_mipmaps = 4,
      flags = { "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = inputs.name },
      max_health = inputs.health,
      corpse = "gun-turret-remnants",
      collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
      selection_box = { { -1, -1 }, { 1, 1 } },
      rotation_speed = 0.015,
      preparing_speed = 0.08,
      folding_speed = 0.08,
      dying_explosion = "medium-explosion",
      inventory_size = inputs.inventory_size or 1,
      automated_ammo_count = inputs.automated_ammo_count or 10,
      fast_replaceable_group = "turret",
      attacking_speed = 0.5,
      folded_animation = bob_turret_extension({
        frame_count = 1,
        line_length = 1,
        type = inputs.gun_type,
        tint = inputs.tint,
      }),
      preparing_animation = bob_turret_extension({ type = inputs.gun_type, tint = inputs.tint }),
      folding_animation = bob_turret_extension({ run_mode = "backward", type = inputs.gun_type, tint = inputs.tint }),
      prepared_animation = bob_turret_attack({ frame_count = 1, type = inputs.gun_type, tint = inputs.tint }),
      attacking_animation = bob_turret_attack({ type = inputs.gun_type, tint = inputs.tint }),
      base_picture = inputs.base,
      vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      attack_parameters = {
        type = "projectile",
        ammo_category = inputs.ammo_category or "bullet",
        cooldown = inputs.cooldown or 6,
        projectile_creation_distance = 1.39375,
        projectile_center = { 0.0625, -0.0875 }, -- same as gun_turret_attack shift
        damage_modifier = inputs.damage_modifier or 2,
        range = inputs.range or 17,
        shell_particle = {
          name = "shell-particle",
          direction_deviation = 0.1,
          speed = 0.1,
          speed_deviation = 0.03,
          center = { 0, 0 },
          creation_distance = -1.925,
          starting_frame_speed = 0.2,
          starting_frame_speed_deviation = 0.1,
        },
        sound = sounds.heavy_gunshot,
      },
      call_for_help_radius = 40,
    }
end

local function bob_laser_turret(inputs)
  local size = inputs.size or 1
  local turret = {
    type = "electric-turret",
    name = inputs.name,
    icon = "__base__/graphics/icons/laser-turret.png",
    icon_size = 64,
    icon_mipmaps = 4,
    minable = { mining_time = 0.5, result = inputs.name },
    max_health = inputs.health,
    corpse = "laser-turret-remnants",
    collision_box = { { -0.7 * size, -0.7 * size }, { 0.7 * size, 0.7 * size } },
    selection_box = { { -1 * size, -1 * size }, { 1 * size, 1 * size } },
    dying_explosion = "medium-explosion",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    folding_speed = 0.05,
    fast_replaceable_group = "turret",
    turret_base_has_direction = inputs.turret_base_has_direction,
    energy_source = {
      type = "electric",
      buffer_capacity = inputs.buffer_capacity or "801kJ",
      input_flow_limit = inputs.input_flow_limit or "4800kW",
      drain = inputs.drain or "24kW",
      usage_priority = "primary-input",
    },
    prepared_animation = bob_laser_turret_attack({ tint = inputs.tint, size = size }),
    base_picture = inputs.base,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    call_for_help_radius = 40,
  }
  if inputs.turret_base_8_directions == true then
    turret.flags = { "placeable-player", "placeable-enemy", "player-creation", "building-direction-8-way" }
    turret.folded_animation =
      bob_laser_turret_extension_eight({ frame_count = 1, line_length = 1, tint = inputs.tint, size = size })
  else
    turret.flags = { "placeable-player", "placeable-enemy", "player-creation" }
    turret.folded_animation =
      bob_laser_turret_extension({ frame_count = 1, line_length = 1, tint = inputs.tint, size = size })
    turret.preparing_animation = bob_laser_turret_extension({ tint = inputs.tint, size = size })
    turret.folding_animation = bob_laser_turret_extension({ run_mode = "backward", tint = inputs.tint, size = size })
  end
  if inputs.type == "projectile" then
    turret.attack_parameters = {
      type = "projectile",
      cooldown = inputs.cooldown or 20,
      damage_modifier = inputs.damage_modifier or 15,
      lead_target_for_projectile_speed = inputs.lead_target_for_projectile_speed,
      projectile_center = { 0, -0.2 * size },
      projectile_creation_distance = 1.4 * size,
      range = inputs.range or 25,
      turn_range = inputs.turn_range,
      sound = inputs.sound,
      min_range = inputs.min_range or nil,
      ammo_type = {
        type = "projectile",
        category = "laser",
        target_type = inputs.target_type or nil,
        energy_consumption = inputs.energy_consumption or "800kJ",
        speed = 1,
        clamp_position = inputs.clamp_position or nil,
        action = {
          {
            type = "direct",
            action_delivery = {
              {
                type = "projectile",
                projectile = inputs.projectile or "laser",
                starting_speed = inputs.starting_speed or 0.28,

                direction_deviation = inputs.direction_deviation or nil,
                range_deviation = inputs.range_deviation or nil,

                max_range = (inputs.range * 2) or 50,
              },
            },
          },
        },
      },
    }
  else
    turret.attack_parameters = {
      type = "beam",
      cooldown = inputs.cooldown or 40,
      range = inputs.range or 25,
      source_direction_count = 64,
      source_offset = { 0, (-3.423489 / 4) * size },
      damage_modifier = inputs.damage_modifier or 2,
      turn_range = inputs.turn_range,
      ammo_type = {
        category = "laser",
        energy_consumption = inputs.energy_consumption or "800kJ",
        action = {
          type = "direct",
          action_delivery = {
            type = "beam",
            beam = inputs.beam or "laser-beam",
            max_length = inputs.range or 25,
            duration = inputs.cooldown or 40,
            source_offset = { 0, -1.31439 * size },
          },
        },
      },
    }
  end
  return turret
end

data:extend({
  --  bob_gun_turret{name = "gun-turret", health = 400, inventory_size = 1, automated_ammo_count = 10, ammo_category = "bullet", damage_modifier = 1, cooldown = 6, range = 18, tint = white, , base_tint = white},
  bob_gun_turret({
    name = "bob-gun-turret-2",
    health = 500,
    inventory_size = 1,
    automated_ammo_count = 10,
    ammo_category = "bullet",
    damage_modifier = 1.25,
    cooldown = 6,
    range = 19,
    tint = red,
    gun_type = "gun",
    base = bob_turret_base({ type = "gun", tint = blue }),
  }),
  bob_gun_turret({
    name = "bob-gun-turret-3",
    health = 600,
    inventory_size = 2,
    automated_ammo_count = 20,
    ammo_category = "bullet",
    damage_modifier = 1.5,
    cooldown = 6,
    range = 20,
    tint = blue,
    gun_type = "gun",
    base = bob_turret_base({ type = "gun", tint = blue }),
  }),
  bob_gun_turret({
    name = "bob-gun-turret-4",
    health = 700,
    inventory_size = 2,
    automated_ammo_count = 20,
    ammo_category = "bullet",
    damage_modifier = 1.75,
    cooldown = 6,
    range = 21,
    tint = purple,
    gun_type = "gun",
    base = bob_turret_base({ type = "gun", tint = blue }),
  }),
  bob_gun_turret({
    name = "bob-gun-turret-5",
    health = 800,
    inventory_size = 3,
    automated_ammo_count = 30,
    ammo_category = "bullet",
    damage_modifier = 2,
    cooldown = 6,
    range = 22,
    tint = green,
    gun_type = "gun",
    base = bob_turret_base({ type = "gun", tint = blue }),
  }),

  bob_gun_turret({
    name = "bob-sniper-turret-1",
    health = 400,
    inventory_size = 1,
    automated_ammo_count = 10,
    ammo_category = "bullet",
    damage_modifier = 15,
    cooldown = 150,
    range = 30,
    tint = yellow,
    gun_type = "gun",
    base = bob_turret_base({ type = "laser", tint = red }),
  }),
  bob_gun_turret({
    name = "bob-sniper-turret-2",
    health = 600,
    inventory_size = 1,
    automated_ammo_count = 20,
    ammo_category = "bullet",
    damage_modifier = 20,
    cooldown = 120,
    range = 35,
    tint = blue,
    gun_type = "gun",
    base = bob_turret_base({ type = "laser", tint = red }),
  }),
  bob_gun_turret({
    name = "bob-sniper-turret-3",
    health = 800,
    inventory_size = 1,
    automated_ammo_count = 30,
    ammo_category = "bullet",
    damage_modifier = 25,
    cooldown = 105,
    range = 40,
    tint = green,
    gun_type = "gun",
    base = bob_turret_base({ type = "laser", tint = red }),
  }),

  --  bob_laser_turret{name = "laser-turret", health = 1000, buffer_capacity = "801kJ", input_flow_limit = "4800kW", drain = "24kW", energy_consumption = "800kJ", projectile = "laser", damage_modifier = 2, cooldown = 40, range = 24, tint = white, base_tint = white},
  bob_laser_turret({
    name = "bob-laser-turret-2",
    health = 1200,
    buffer_capacity = "2001kJ",
    input_flow_limit = "8000kW",
    drain = "30kW",
    energy_consumption = "1000kJ",
    type = "beam",
    beam = "bob-laser-beam-sapphire",
    damage_modifier = 3,
    cooldown = 35,
    range = 26,
    tint = red,
    base = bob_turret_base({ type = "laser", tint = yellow }),
  }),
  bob_laser_turret({
    name = "bob-laser-turret-3",
    health = 1400,
    buffer_capacity = "3601kJ",
    input_flow_limit = "12000kW",
    drain = "36kW",
    energy_consumption = "1200kJ",
    type = "beam",
    beam = "bob-laser-beam-emerald",
    damage_modifier = 4.2,
    cooldown = 30,
    range = 28,
    tint = blue,
    base = bob_turret_base({ type = "laser", tint = yellow }),
  }),
  bob_laser_turret({
    name = "bob-laser-turret-4",
    health = 1600,
    buffer_capacity = "5601kJ",
    input_flow_limit = "16800kW",
    drain = "42kW",
    energy_consumption = "1400kJ",
    type = "beam",
    beam = "bob-laser-beam-topaz",
    damage_modifier = 5.6,
    cooldown = 25,
    range = 30,
    tint = purple,
    base = bob_turret_base({ type = "laser", tint = yellow }),
  }),
  bob_laser_turret({
    name = "bob-laser-turret-5",
    health = 2000,
    buffer_capacity = "8001kJ",
    input_flow_limit = "19200kW",
    drain = "48kW",
    energy_consumption = "1600kJ",
    type = "beam",
    beam = "bob-laser-beam-diamond",
    damage_modifier = 7.2,
    cooldown = 20,
    range = 32,
    tint = green,
    base = bob_turret_base({ type = "laser", tint = yellow }),
  }),
})

data:extend({
  bob_laser_turret({
    name = "bob-plasma-turret-1",
    health = 1000,
    turret_base_has_direction = true,
    turret_base_8_directions = true,

    drain = "48kW",
    buffer_capacity = "2500kJ",
    input_flow_limit = "1200kW",
    energy_consumption = "2400kJ",

    type = "projectile",
    projectile = "bob-plasma-projectile",
    target_type = "position",
    clamp_position = true,
    damage_modifier = 12 * 1,
    cooldown = 200,
    range = 60,
    sound = { { filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 } },
    min_range = 30,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    lead_target_for_projectile_speed = 1,
    turn_range = 1.0 / 3.0,

    size = 1.5,
    tint = yellow,
    base = bob_turret_base({ type = "gun", tint = green, size = 1.5 }),
  }),

  bob_laser_turret({
    name = "bob-plasma-turret-2",
    health = 1200,
    turret_base_has_direction = true,
    turret_base_8_directions = true,

    drain = "60kW",
    buffer_capacity = "6200kJ",
    input_flow_limit = "2000kW",
    energy_consumption = "3000kJ",

    type = "projectile",
    projectile = "bob-plasma-projectile",
    target_type = "position",
    clamp_position = true,
    damage_modifier = 12 * 1.5,
    cooldown = 150,
    range = 65,
    sound = { { filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 } },
    min_range = 30,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    lead_target_for_projectile_speed = 1,
    turn_range = 1.0 / 3.0,

    size = 1.5,
    tint = red,
    base = bob_turret_base({ type = "gun", tint = green, size = 1.5 }),
  }),

  bob_laser_turret({
    name = "bob-plasma-turret-3",
    health = 1400,
    turret_base_has_direction = true,
    turret_base_8_directions = true,

    drain = "72kW",
    buffer_capacity = "11100kJ",
    input_flow_limit = "3000kW",
    energy_consumption = "3600kJ",

    type = "projectile",
    projectile = "bob-plasma-projectile",
    target_type = "position",
    clamp_position = true,
    damage_modifier = 12 * 2.1,
    cooldown = 120,
    range = 70,
    sound = { { filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 } },
    min_range = 30,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    lead_target_for_projectile_speed = 1,
    turn_range = 1.0 / 3.0,

    size = 1.5,
    tint = blue,
    base = bob_turret_base({ type = "gun", tint = green, size = 1.5 }),
  }),

  bob_laser_turret({
    name = "bob-plasma-turret-4",
    health = 1600,
    turret_base_has_direction = true,
    turret_base_8_directions = true,

    drain = "84kW",
    buffer_capacity = "17200kJ",
    input_flow_limit = "4200kW",
    energy_consumption = "4200kJ",

    type = "projectile",
    projectile = "bob-plasma-projectile",
    target_type = "position",
    clamp_position = true,
    damage_modifier = 12 * 2.8,
    cooldown = 100,
    range = 75,
    sound = { { filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 } },
    min_range = 30,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    lead_target_for_projectile_speed = 1,
    turn_range = 1.0 / 3.0,

    size = 1.5,
    tint = purple,
    base = bob_turret_base({ type = "gun", tint = green, size = 1.5 }),
  }),

  bob_laser_turret({
    name = "bob-plasma-turret-5",
    health = 2000,
    turret_base_has_direction = true,
    turret_base_8_directions = true,

    drain = "96kW",
    buffer_capacity = "24500kJ",
    input_flow_limit = "5600kW",
    energy_consumption = "4800kJ",

    type = "projectile",
    projectile = "bob-plasma-projectile",
    target_type = "position",
    clamp_position = true,
    damage_modifier = 12 * 3.6,
    cooldown = 85,
    range = 80,
    sound = { { filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 } },
    min_range = 30,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    lead_target_for_projectile_speed = 1,
    turn_range = 1.0 / 3.0,

    size = 1.5,
    tint = green,
    base = bob_turret_base({ type = "gun", tint = green, size = 1.5 }),
  }),
})

data.raw["artillery-turret"]["artillery-turret"].fast_replaceable_group = "turret"

local turret = util.table.deepcopy(data.raw["artillery-turret"]["artillery-turret"])
turret.name = "bob-artillery-turret-2"
turret.inventory_size = 2
turret.ammo_stack_limit = 50
turret.automated_ammo_count = 10
turret.minable = { mining_time = 1, result = "bob-artillery-turret-2" }
turret.max_health = 2500
turret.gun = "bob-artillery-wagon-cannon-2"
turret.turret_rotation_speed = 0.002
turret.turn_after_shooting_cooldown = 40
turret.cannon_parking_speed = 0.3
data:extend({ turret })

local turret = util.table.deepcopy(data.raw["artillery-turret"]["artillery-turret"])
turret.name = "bob-artillery-turret-3"
turret.inventory_size = 3
turret.ammo_stack_limit = 50
turret.automated_ammo_count = 15
turret.minable = { mining_time = 1, result = "bob-artillery-turret-3" }
turret.max_health = 3000
turret.gun = "bob-artillery-wagon-cannon-3"
turret.turret_rotation_speed = 0.003
turret.turn_after_shooting_cooldown = 20
turret.cannon_parking_speed = 0.35
data:extend({ turret })
