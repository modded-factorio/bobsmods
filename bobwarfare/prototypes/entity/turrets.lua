local sounds = require("__base__.prototypes.entity.sounds")
local warefareSounds = require("prototypes.entity.sounds")

data.raw["ammo-turret"]["gun-turret"].fast_replaceable_group = "turret"
data.raw["electric-turret"]["laser-turret"].fast_replaceable_group = "turret"
data.raw["electric-turret"]["laser-turret"].drawing_box_vertical_extension = 0.7

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

circuit_connector_definitions["8-way-laser-turret"] =
  circuit_connector_definitions.create_vector(universal_connector_template, {
    {
      variation = 17,
      main_offset = util.by_pixel(-21 * 1.5, 1 * 1.5),
      shadow_offset = util.by_pixel(-12 * 1.5, 10 * 1.5),
      show_shadow = true,
    },
    {
      variation = 17,
      main_offset = util.by_pixel(-21 * 1.5, 1 * 1.5),
      shadow_offset = util.by_pixel(-12 * 1.5, 10 * 1.5),
      show_shadow = true,
    },
    {
      variation = 17,
      main_offset = util.by_pixel(-21 * 1.5, 1 * 1.5),
      shadow_offset = util.by_pixel(-12 * 1.5, 10 * 1.5),
      show_shadow = true,
    },
    {
      variation = 17,
      main_offset = util.by_pixel(-21 * 1.5, 1 * 1.5),
      shadow_offset = util.by_pixel(-12 * 1.5, 10 * 1.5),
      show_shadow = true,
    },
    {
      variation = 17,
      main_offset = util.by_pixel(-21 * 1.5, 1 * 1.5),
      shadow_offset = util.by_pixel(-12 * 1.5, 10 * 1.5),
      show_shadow = true,
    },
    {
      variation = 17,
      main_offset = util.by_pixel(-21 * 1.5, 1 * 1.5),
      shadow_offset = util.by_pixel(-12 * 1.5, 10 * 1.5),
      show_shadow = true,
    },
    {
      variation = 17,
      main_offset = util.by_pixel(-21 * 1.5, 1 * 1.5),
      shadow_offset = util.by_pixel(-12 * 1.5, 10 * 1.5),
      show_shadow = true,
    },
    {
      variation = 17,
      main_offset = util.by_pixel(-21 * 1.5, 1 * 1.5),
      shadow_offset = util.by_pixel(-12 * 1.5, 10 * 1.5),
      show_shadow = true,
    },
  })

local function bob_gun_turret_extension(inputs)
  return {
    layers = {
      gun_turret_extension(inputs),
      {
        filename = "__base__/graphics/entity/gun-turret/gun-turret-raising-mask.png",
        flags = { "mask" },
        width = 48,
        height = 62,
        direction_count = 4,
        frame_count = inputs.frame_count or 5,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        shift = util.by_pixel(0, -28),
        tint = inputs.tint or white,
        scale = 0.5,
      },
      gun_turret_extension_shadow(inputs),
    },
  }
end

local function bob_gun_turret_attack(inputs)
  return {
    layers = {
      {
        width = 132,
        height = 130,
        frame_count = inputs.frame_count and inputs.frame_count or 2,
        direction_count = 64,
        shift = util.by_pixel(0, -27.5),
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
        scale = 0.5,
      },
      {
        flags = { "mask" },
        line_length = inputs.frame_count or 2,
        width = 58,
        height = 54,
        frame_count = inputs.frame_count or 2,
        direction_count = 64,
        shift = util.by_pixel(0, -32.5),
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
        scale = 0.5,
      },
      {
        width = 250,
        height = 124,
        frame_count = inputs.frame_count or 2,
        direction_count = 64,
        shift = util.by_pixel(22, 2.5),
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
        scale = 0.5,
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
        width = 150,
        height = 118,
        frame_count = 1,
        shift = util.by_pixel(0.5 * size, -1 * size),
        scale = 0.5 * size,
      },
      {
        filename = "__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
        flags = { "mask" },
        line_length = 1,
        width = 122,
        height = 102,
        frame_count = 1,
        shift = util.by_pixel(0, -4.5 * size),
        tint = inputs.tint or white,
        scale = 0.5 * size,
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
        width = 130,
        height = 126,
        frame_count = inputs.frame_count and inputs.frame_count or 15,
        line_length = inputs.line_length and inputs.line_length or 0,
        run_mode = inputs.run_mode and inputs.run_mode or "forward",
        direction_count = 4,
        shift = util.by_pixel(0, -32.5 * size),
        scale = 0.5 * size,
      },
      {
        filename = "__base__/graphics/entity/laser-turret/laser-turret-raising-mask.png",
        flags = { "mask" },
        width = 86,
        height = 80,
        frame_count = inputs.frame_count or 15,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        tint = inputs.tint or white,
        direction_count = 4,
        shift = util.by_pixel(0, -43 * size),
        scale = 0.5 * size,
      },
      {
        filename = "__base__/graphics/entity/laser-turret/laser-turret-raising-shadow.png",
        width = 182,
        height = 96,
        frame_count = inputs.frame_count or 15,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        direction_count = 4,
        draw_as_shadow = true,
        shift = util.by_pixel(47 * size, 2.5 * size),
        scale = 0.5 * size,
      },
    },
  }
end

local function bob_laser_turret_extension_eight(inputs)
  local size = inputs.size or 1
  return {
    layers = {
      {
        filename = "__bobwarfare__/graphics/entities/laser-turret/laser-turret-folded-8.png",
        priority = "medium",
        width = 126,
        height = 120,
        frame_count = inputs.frame_count and inputs.frame_count or 15,
        line_length = inputs.line_length and inputs.line_length or 0,
        run_mode = inputs.run_mode and inputs.run_mode or "forward",
        direction_count = 8,
        shift = util.by_pixel(0, -35 * size),
        scale = 0.5 * size,
      },
      {
        filename = "__bobwarfare__/graphics/entities/laser-turret/laser-turret-folded-mask-8.png",
        flags = { "mask" },
        width = 92,
        height = 80,
        frame_count = inputs.frame_count or 15,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        tint = inputs.tint or white,
        direction_count = 8,
        shift = util.by_pixel(0, -43.5 * size),
        scale = 0.5 * size,
      },
      {
        filename = "__bobwarfare__/graphics/entities/laser-turret/laser-turret-folded-shadow-8.png",
        width = 170,
        height = 92,
        frame_count = inputs.frame_count or 15,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        direction_count = 8,
        draw_as_shadow = true,
        shift = util.by_pixel(50.5 * size, 2.5 * size),
        scale = 0.5 * size,
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
        width = 126,
        height = 120,
        frame_count = 1,
        direction_count = 64,
        shift = util.by_pixel(0, -35 * size),
        scale = 0.5 * size,
      },
      {
        filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting-mask.png",
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
      {
        filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting-shadow.png",
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
  }
end

local function bob_laser_turret_base(inputs)
  local size = inputs.size or 1
  return {
    layers = {
      {
        filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
        priority = "high",
        width = 138,
        height = 104,
        frame_count = 1,
        shift = util.by_pixel(-0.5 * size, 2 * size),
        tint = inputs.tint or white,
        scale = 0.5 * size,
      },
      {
        filename = "__base__/graphics/entity/laser-turret/laser-turret-base-shadow.png",
        flags = { "mask" },
        line_length = 1,
        width = 132,
        height = 82,
        draw_as_shadow = true,
        frame_count = 1,
        shift = util.by_pixel(6 * size, 3 * size),
        scale = 0.5 * size,
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
        line_length = 1,
        width = 207,
        height = 199,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-0, 22),
        scale = 0.5 * size * (2 / 3),
      },
      {
        filename = "__base__/graphics/entity/artillery-turret/artillery-turret-base-shadow.png",
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
  local size = inputs.size or 1
  local preparerange = inputs.range or 17
  preparerange = preparerange + 1
  local turret = {
    type = "ammo-turret",
    name = inputs.name,
    icon = "__base__/graphics/icons/gun-turret.png",
    icon_size = 64,
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = inputs.name },
    max_health = inputs.health,
    next_upgrade = inputs.next_upgrade,
    resistances = inputs.resistances,
    corpse = "gun-turret-remnants",
    collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    drawing_box_vertical_extension = 0.2 * size,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    rotation_speed = inputs.rotation_speed or 0.015,
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
    preparing_sound = sounds.gun_turret_activate,
    folding_sound = sounds.gun_turret_deactivate,
    attacking_animation = bob_turret_attack({ type = inputs.gun_type, tint = inputs.tint }),
    graphics_set = { base_visualisation = { animation = bob_turret_base(inputs.base) } },
    water_reflection = {
      rotate = false,
      orientation_to_variation = false,
      pictures = {
        filename = "__base__/graphics/entity/gun-turret/gun-turret-reflection.png",
        width = 20,
        height = 32,
        priority = "extra-high",
        scale = 5 * size,
        shift = util.mul_shift({ 0, 1.25 }, size),
        variation_count = 1,
      },
    },
    icon_draw_specification = {
      scale = 0.7,
    },
    attack_parameters = {
      type = "projectile",
      ammo_category = inputs.ammo_category or "bullet",
      cooldown = inputs.cooldown or 6,
      health_penalty = inputs.health_penalty,
      projectile_creation_distance = 1.39375,
      projectile_center = { 0, -0.0875 }, -- same as gun_turret_attack shift
      damage_modifier = inputs.damage_modifier or 2,
      ammo_consumption_modifier = inputs.ammo_consumption_modifier,
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
    prepare_range = inputs.prepare_range or preparerange,
  }
  if inputs.base.type == "gun" then
    turret.circuit_connector = circuit_connector_definitions["gun-turret"]
  else
    turret.circuit_connector = circuit_connector_definitions["laser-turret"]
  end
  return turret
end

local function bob_laser_turret(inputs)
  local size = inputs.size or 1
  local preparerange = inputs.range or 25
  preparerange = preparerange + 1
  local turret = {
    type = "electric-turret",
    name = inputs.name,
    icon = "__base__/graphics/icons/laser-turret.png",
    icon_size = 64,
    minable = { mining_time = 0.5, result = inputs.name },
    max_health = inputs.health,
    next_upgrade = inputs.next_upgrade,
    resistances = inputs.resistances,
    corpse = "laser-turret-remnants",
    collision_box = { { -0.7 * size, -0.7 * size }, { 0.7 * size, 0.7 * size } },
    selection_box = { { -1 * size, -1 * size }, { 1 * size, 1 * size } },
    drawing_box_vertical_extension = 0.7 * size,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    dying_explosion = "medium-explosion",
    rotation_speed = inputs.rotation_speed or 0.01,
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
    energy_glow_animation = {
      filename = "__bobwarfare__/graphics/entities/laser-turret/laser-turret-shooting-light.png",
      line_length = 8,
      width = 122,
      height = 116,
      direction_count = 64,
      shift = util.by_pixel(-0.5, -35),
      blend_mode = "additive",
      scale = 0.5,
      tint = inputs.tint2,
    },
    prepared_animation = bob_laser_turret_attack({ tint = inputs.tint, size = size }),
    graphics_set = { base_visualisation = { animation = bob_turret_base(inputs.base) } },
    water_reflection = {
      rotate = false,
      orientation_to_variation = false,
      pictures = {
        filename = "__base__/graphics/entity/gun-turret/gun-turret-reflection.png",
        width = 20,
        height = 32,
        priority = "extra-high",
        scale = 5 * size,
        shift = util.mul_shift({ 0, 1.25 }, size),
        variation_count = 1,
      },
    },
    call_for_help_radius = 40,
  }
  if inputs.turret_base_8_directions == true then
    turret.flags = { "placeable-player", "placeable-enemy", "player-creation", "building-direction-8-way" }
    turret.folded_animation =
      bob_laser_turret_extension_eight({ frame_count = 1, line_length = 1, tint = inputs.tint, size = size })
    turret.circuit_connector = circuit_connector_definitions["8-way-laser-turret"]
  else
    turret.flags = { "placeable-player", "placeable-enemy", "player-creation" }
    turret.folded_animation =
      bob_laser_turret_extension({ frame_count = 1, line_length = 1, tint = inputs.tint, size = size })
    turret.preparing_animation = bob_laser_turret_extension({ tint = inputs.tint, size = size })
    turret.folding_animation = bob_laser_turret_extension({ run_mode = "backward", tint = inputs.tint, size = size })
    turret.preparing_sound = sounds.laser_turret_activate
    turret.folding_sound = sounds.laser_turret_deactivate
    turret.circuit_connector = circuit_connector_definitions["laser-turret"]
  end
  if inputs.type == "projectile" then
    turret.attack_parameters = {
      type = "projectile",
      ammo_category = "laser",
      cooldown = inputs.cooldown or 20,
      damage_modifier = inputs.damage_modifier or 15,
      lead_target_for_projectile_speed = inputs.lead_target_for_projectile_speed,
      projectile_center = { 0, -0.45 * size },
      projectile_creation_distance = 1.4 * size,
      range = inputs.range or 25,
      turn_range = inputs.turn_range,
      sound = inputs.sound,
      min_range = inputs.min_range or nil,
      ammo_type = {
        type = "projectile",
        target_type = inputs.target_type or nil,
        energy_consumption = inputs.energy_consumption or "800kJ",
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
    turret.prepare_range = inputs.prepare_range or preparerange
  else
    turret.attack_parameters = {
      type = "beam",
      ammo_category = "laser",
      cooldown = inputs.cooldown or 40,
      health_penalty = inputs.health_penalty,
      range = inputs.range or 25,
      source_direction_count = 64,
      source_offset = { 0, (-3.423489 / 4) * size },
      damage_modifier = inputs.damage_modifier or 2,
      turn_range = inputs.turn_range,
      ammo_type = {
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
    turret.prepare_range = inputs.prepare_range or preparerange
  end
  return turret
end

data.raw["ammo-turret"]["gun-turret"].resistances = {
  {
    type = "acid",
    decrease = 2,
  },
  {
    type = "electric",
    percent = 20,
  },
  {
    type = "poison",
    decrease = 2,
    percent = 30,
  },
}

data.raw["electric-turret"]["laser-turret"].resistances = {
  {
    type = "acid",
    decrease = 4,
    percent = 20,
  },
  {
    type = "explosion",
    percent = 30,
  },
  {
    type = "fire",
    percent = 20,
  },
  {
    type = "laser",
    percent = 10,
  },
  {
    type = "physical",
    decrease = 2,
    percent = 10,
  },
  {
    type = "poison",
    percent = 20,
  },
}

data.raw["fluid-turret"]["flamethrower-turret"].resistances = {
  {
    type = "acid",
    decrease = 2,
    percent = 20,
  },
  {
    type = "electric",
    percent = 40,
  },
  {
    type = "fire",
    percent = 100,
  },
  {
    type = "impact",
    decrease = 10,
    percent = 30,
  },
  {
    type = "laser",
    percent = -20,
  },
  {
    type = "physical",
    decrease = 4,
    percent = 20,
  },
  {
    type = "poison",
    decrease = 10,
    percent = 75,
  },
}

data:extend({
  --  bob_gun_turret{name = "gun-turret", health = 400, inventory_size = 1, automated_ammo_count = 10, ammo_category = "bullet", damage_modifier = 1, cooldown = 6, range = 18, tint = white, , base_tint = white},
  bob_gun_turret({
    name = "bob-gun-turret-2",
    health = 800,
    inventory_size = 1,
    automated_ammo_count = 10,
    ammo_category = "bullet",
    damage_modifier = 1.25,
    cooldown = 6,
    health_penalty = 1,
    range = 19,
    prepare_range = 19.5,
    rotation_speed = 0.017,
    tint = red,
    gun_type = "gun",
    base = { type = "gun", tint = blue },
    next_upgrade = "bob-gun-turret-3",
    resistances = {
      {
        type = "acid",
        decrease = 4,
        percent = 20,
      },
      {
        type = "electric",
        percent = 30,
      },
      {
        type = "explosion",
        percent = 30,
      },
      {
        type = "fire",
        percent = 20,
      },
      {
        type = "laser",
        percent = 10,
      },
      {
        type = "physical",
        decrease = 2,
        percent = 10,
      },
      {
        type = "poison",
        decrease = 3,
        percent = 40,
      },
    },
  }),
  bob_gun_turret({
    name = "bob-gun-turret-3",
    health = 1200,
    inventory_size = 2,
    automated_ammo_count = 20,
    ammo_category = "bullet",
    damage_modifier = 1.5,
    cooldown = 6,
    health_penalty = 1,
    range = 20,
    prepare_range = 21,
    rotation_speed = 0.019,
    tint = blue,
    gun_type = "gun",
    base = { type = "gun", tint = blue },
    next_upgrade = "bob-gun-turret-4",
    resistances = {
      {
        type = "acid",
        decrease = 6,
        percent = 30,
      },
      {
        type = "electric",
        percent = 40,
      },
      {
        type = "explosion",
        percent = 40,
      },
      {
        type = "fire",
        decrease = 4,
        percent = 30,
      },
      {
        type = "impact",
        decrease = 20,
        percent = 40,
      },
      {
        type = "laser",
        percent = 15,
      },
      {
        type = "physical",
        decrease = 4,
        percent = 20,
      },
      {
        type = "poison",
        decrease = 4,
        percent = 50,
      },
    },
  }),
  bob_gun_turret({
    name = "bob-gun-turret-4",
    health = 1600,
    inventory_size = 2,
    automated_ammo_count = 20,
    ammo_category = "bullet",
    damage_modifier = 1.75,
    cooldown = 6,
    health_penalty = 1,
    range = 21,
    prepare_range = 22.5,
    rotation_speed = 0.021,
    tint = purple,
    gun_type = "gun",
    base = { type = "gun", tint = blue },
    next_upgrade = "bob-gun-turret-5",
    resistances = {
      {
        type = "acid",
        decrease = 12,
        percent = 50,
      },
      {
        type = "electric",
        decrease = 5,
        percent = 50,
      },
      {
        type = "explosion",
        percent = 50,
      },
      {
        type = "fire",
        decrease = 10,
        percent = 50,
      },
      {
        type = "impact",
        decrease = 40,
        percent = 60,
      },
      {
        type = "laser",
        percent = 20,
      },
      {
        type = "physical",
        decrease = 6,
        percent = 30,
      },
      {
        type = "poison",
        decrease = 6,
        percent = 60,
      },
    },
  }),
  bob_gun_turret({
    name = "bob-gun-turret-5",
    health = 2000,
    inventory_size = 3,
    automated_ammo_count = 30,
    ammo_category = "bullet",
    damage_modifier = 2,
    cooldown = 6,
    health_penalty = 1,
    range = 22,
    prepare_range = 24,
    rotation_speed = 0.023,
    tint = green,
    gun_type = "gun",
    base = { type = "gun", tint = blue },
    resistances = {
      {
        type = "acid",
        decrease = 20,
        percent = 70,
      },
      {
        type = "electric",
        decrease = 10,
        percent = 60,
      },
      {
        type = "explosion",
        percent = 60,
      },
      {
        type = "fire",
        decrease = 15,
        percent = 75,
      },
      {
        type = "impact",
        decrease = 60,
        percent = 80,
      },
      {
        type = "laser",
        percent = 30,
      },
      {
        type = "physical",
        decrease = 10,
        percent = 50,
      },
      {
        type = "poison",
        decrease = 8,
        percent = 70,
      },
    },
  }),

  bob_gun_turret({
    name = "bob-sniper-turret-1",
    health = 400,
    inventory_size = 1,
    automated_ammo_count = 10,
    ammo_category = "bullet",
    damage_modifier = 15,
    ammo_consumption_modifier = 15,
    cooldown = 360,
    health_penalty = -5,
    range = 30,
    prepare_range = 32,
    tint = yellow,
    gun_type = "gun",
    base = { type = "laser", tint = red },
    next_upgrade = "bob-sniper-turret-2",
    resistances = {
      {
        type = "acid",
        decrease = 2,
        percent = 10,
      },
      {
        type = "electric",
        percent = 30,
      },
      {
        type = "explosion",
        percent = -30,
      },
      {
        type = "fire",
        percent = 10,
      },
      {
        type = "laser",
        percent = 15,
      },
      {
        type = "poison",
        decrease = 3,
        percent = 40,
      },
    },
  }),
  bob_gun_turret({
    name = "bob-sniper-turret-2",
    health = 600,
    inventory_size = 1,
    automated_ammo_count = 20,
    ammo_category = "bullet",
    damage_modifier = 20,
    ammo_consumption_modifier = 14,
    cooldown = 300,
    health_penalty = -5,
    range = 35,
    prepare_range = 37,
    tint = blue,
    gun_type = "gun",
    base = { type = "laser", tint = red },
    next_upgrade = "bob-sniper-turret-3",
    resistances = {
      {
        type = "acid",
        decrease = 4,
        percent = 20,
      },
      {
        type = "electric",
        decrease = 5,
        percent = 50,
      },
      {
        type = "explosion",
        percent = -20,
      },
      {
        type = "fire",
        percent = 20,
      },
      {
        type = "laser",
        percent = 20,
      },
      {
        type = "poison",
        decrease = 4,
        percent = 50,
      },
    },
  }),
  bob_gun_turret({
    name = "bob-sniper-turret-3",
    health = 800,
    inventory_size = 1,
    automated_ammo_count = 30,
    ammo_category = "bullet",
    damage_modifier = 25,
    ammo_consumption_modifier = 13,
    cooldown = 240,
    health_penalty = -5,
    range = 40,
    prepare_range = 42,
    tint = green,
    gun_type = "gun",
    base = { type = "laser", tint = red },
    resistances = {
      {
        type = "acid",
        decrease = 6,
        percent = 30,
      },
      {
        type = "electric",
        decrease = 10,
        percent = 50,
      },
      {
        type = "explosion",
        percent = -10,
      },
      {
        type = "fire",
        percent = 30,
      },
      {
        type = "laser",
        percent = 30,
      },
      {
        type = "poison",
        decrease = 6,
        percent = 60,
      },
    },
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
    tint2 = { r = 0.45, g = 0.75, b = 1 },
    damage_modifier = 3,
    cooldown = 35,
    range = 26,
    prepare_range = 26.5,
    rotation_speed = 0.011,
    tint = red,
    base = { type = "laser", tint = yellow },
    next_upgrade = "bob-laser-turret-3",
    resistances = {
      {
        type = "acid",
        decrease = 6,
        percent = 30,
      },
      {
        type = "electric",
        percent = 5,
      },
      {
        type = "explosion",
        percent = 35,
      },
      {
        type = "fire",
        decrease = 4,
        percent = 30,
      },
      {
        type = "impact",
        decrease = 20,
        percent = 40,
      },
      {
        type = "laser",
        percent = 15,
      },
      {
        type = "physical",
        decrease = 4,
        percent = 20,
      },
      {
        type = "poison",
        decrease = 2,
        percent = 30,
      },
    },
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
    tint2 = { r = 0.45, g = 0.92, b = 0.42 },
    damage_modifier = 4.2,
    cooldown = 30,
    range = 28,
    prepare_range = 29,
    rotation_speed = 0.012,
    tint = blue,
    base = { type = "laser", tint = yellow },
    next_upgrade = "bob-laser-turret-4",
    resistances = {
      {
        type = "acid",
        decrease = 10,
        percent = 50,
      },
      {
        type = "electric",
        percent = 10,
      },
      {
        type = "explosion",
        percent = 40,
      },
      {
        type = "fire",
        decrease = 8,
        percent = 40,
      },
      {
        type = "impact",
        decrease = 40,
        percent = 60,
      },
      {
        type = "laser",
        percent = 20,
      },
      {
        type = "physical",
        decrease = 6,
        percent = 30,
      },
      {
        type = "poison",
        decrease = 3,
        percent = 40,
      },
    },
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
    tint2 = { r = 0.95, g = 0.92, b = 0.5 },
    damage_modifier = 5.6,
    cooldown = 25,
    range = 30,
    prepare_range = 31.5,
    rotation_speed = 0.013,
    tint = purple,
    base = { type = "laser", tint = yellow },
    next_upgrade = "bob-laser-turret-5",
    resistances = {
      {
        type = "acid",
        decrease = 12,
        percent = 60,
      },
      {
        type = "electric",
        percent = 20,
      },
      {
        type = "explosion",
        percent = 50,
      },
      {
        type = "fire",
        decrease = 10,
        percent = 50,
      },
      {
        type = "impact",
        decrease = 50,
        percent = 70,
      },
      {
        type = "laser",
        percent = 25,
      },
      {
        type = "physical",
        decrease = 8,
        percent = 40,
      },
      {
        type = "poison",
        decrease = 5,
        percent = 50,
      },
    },
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
    prepare_range = 34,
    rotation_speed = 0.014,
    tint = green,
    base = { type = "laser", tint = yellow },
    resistances = {
      {
        type = "acid",
        decrease = 20,
        percent = 70,
      },
      {
        type = "electric",
        percent = 30,
      },
      {
        type = "explosion",
        percent = 60,
      },
      {
        type = "fire",
        decrease = 15,
        percent = 75,
      },
      {
        type = "impact",
        decrease = 60,
        percent = 80,
      },
      {
        type = "laser",
        percent = 30,
      },
      {
        type = "physical",
        decrease = 10,
        percent = 50,
      },
      {
        type = "poison",
        decrease = 8,
        percent = 60,
      },
    },
  }),
})

data:extend({
  bob_laser_turret({
    name = "bob-plasma-turret-1",
    health = 1000,
    turret_base_has_direction = true,
    turret_base_8_directions = true,
    resistances = {
      {
        type = "acid",
        decrease = 4,
        percent = 30,
      },
      {
        type = "electric",
        percent = 5,
      },
      {
        type = "explosion",
        percent = 30,
      },
      {
        type = "fire",
        decrease = 4,
        percent = 30,
      },
      {
        type = "impact",
        decrease = 20,
        percent = 40,
      },
      {
        type = "laser",
        percent = 15,
      },
      {
        type = "physical",
        decrease = 4,
        percent = 20,
      },
      {
        type = "poison",
        decrease = 2,
        percent = 30,
      },
    },

    drain = "7000kW",
    buffer_capacity = "28000kJ",
    input_flow_limit = "15000kW",
    energy_consumption = "22000kJ",

    type = "projectile",
    projectile = "bob-plasma-projectile",
    target_type = "position",
    clamp_position = true,
    damage_modifier = 7.2,
    cooldown = 900,
    range = 50,
    prepare_range = 58,
    sound = warefareSounds.plasmaTurret(0.7),
    min_range = 30,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    lead_target_for_projectile_speed = 1,
    turn_range = 1.0 / 3.0,

    size = 1.5,
    tint = red,
    base = { type = "gun", tint = green, size = 1.5 },
    next_upgrade = "bob-plasma-turret-2",
  }),

  bob_laser_turret({
    name = "bob-plasma-turret-2",
    health = 1200,
    turret_base_has_direction = true,
    turret_base_8_directions = true,
    resistances = {
      {
        type = "acid",
        decrease = 10,
        percent = 40,
      },
      {
        type = "electric",
        percent = 10,
      },
      {
        type = "explosion",
        percent = 40,
      },
      {
        type = "fire",
        decrease = 8,
        percent = 40,
      },
      {
        type = "impact",
        decrease = 40,
        percent = 60,
      },
      {
        type = "laser",
        percent = 20,
      },
      {
        type = "physical",
        decrease = 6,
        percent = 30,
      },
      {
        type = "poison",
        decrease = 5,
        percent = 40,
      },
    },

    drain = "10000kW",
    buffer_capacity = "40000kJ",
    input_flow_limit = "23000kW",
    energy_consumption = "28000kJ",

    type = "projectile",
    projectile = "bob-plasma-projectile",
    target_type = "position",
    clamp_position = true,
    damage_modifier = 10.8,
    cooldown = 800,
    range = 53,
    prepare_range = 61,
    sound = warefareSounds.plasmaTurret(0.75),
    min_range = 30,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    lead_target_for_projectile_speed = 1,
    turn_range = 1.0 / 3.0,

    size = 1.5,
    tint = blue,
    base = { type = "gun", tint = green, size = 1.5 },
    next_upgrade = "bob-plasma-turret-3",
  }),

  bob_laser_turret({
    name = "bob-plasma-turret-3",
    health = 1400,
    turret_base_has_direction = true,
    turret_base_8_directions = true,
    resistances = {
      {
        type = "acid",
        decrease = 15,
        percent = 50,
      },
      {
        type = "electric",
        percent = 20,
      },
      {
        type = "explosion",
        percent = 60,
      },
      {
        type = "fire",
        decrease = 10,
        percent = 50,
      },
      {
        type = "impact",
        decrease = 50,
        percent = 70,
      },
      {
        type = "laser",
        percent = 25,
      },
      {
        type = "physical",
        decrease = 8,
        percent = 40,
      },
      {
        type = "poison",
        decrease = 8,
        percent = 50,
      },
    },

    drain = "13000kW",
    buffer_capacity = "64000kJ",
    input_flow_limit = "32000kW",
    energy_consumption = "34000kJ",

    type = "projectile",
    projectile = "bob-plasma-projectile",
    target_type = "position",
    clamp_position = true,
    damage_modifier = 12.8,
    cooldown = 700,
    range = 56,
    prepare_range = 64,
    sound = warefareSounds.plasmaTurret(0.8),
    min_range = 30,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    lead_target_for_projectile_speed = 1,
    turn_range = 1.0 / 3.0,

    size = 1.5,
    tint = purple,
    base = { type = "gun", tint = green, size = 1.5 },
    next_upgrade = "bob-plasma-turret-4",
  }),

  bob_laser_turret({
    name = "bob-plasma-turret-4",
    health = 1600,
    turret_base_has_direction = true,
    turret_base_8_directions = true,
    resistances = {
      {
        type = "acid",
        decrease = 20,
        percent = 60,
      },
      {
        type = "electric",
        percent = 30,
      },
      {
        type = "explosion",
        percent = 75,
      },
      {
        type = "fire",
        decrease = 15,
        percent = 75,
      },
      {
        type = "impact",
        decrease = 60,
        percent = 80,
      },
      {
        type = "laser",
        percent = 30,
      },
      {
        type = "physical",
        decrease = 10,
        percent = 50,
      },
      {
        type = "poison",
        decrease = 10,
        percent = 60,
      },
    },

    drain = "16000kW",
    buffer_capacity = "80000kJ",
    input_flow_limit = "42000kW",
    energy_consumption = "40000kJ",

    type = "projectile",
    projectile = "bob-plasma-projectile",
    target_type = "position",
    clamp_position = true,
    damage_modifier = 15,
    cooldown = 600,
    range = 60,
    prepare_range = 68,
    sound = warefareSounds.plasmaTurret(0.9),
    min_range = 30,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    lead_target_for_projectile_speed = 1,
    turn_range = 1.0 / 3.0,

    size = 1.5,
    tint = green,
    base = { type = "gun", tint = green, size = 1.5 },
  }),
})

data.raw["artillery-turret"]["artillery-turret"].fast_replaceable_group = "turret"
data.raw["artillery-turret"]["artillery-turret"].resistances = {
  {
    type = "acid",
    decrease = 20,
    percent = 60,
  },
  {
    type = "bob-pierce",
    percent = 20,
  },
  {
    type = "electric",
    decrease = 10,
    percent = 60,
  },
  {
    type = "explosion",
    percent = 75,
  },
  {
    type = "fire",
    decrease = 15,
    percent = 70,
  },
  {
    type = "impact",
    decrease = 60,
    percent = 80,
  },
  {
    type = "laser",
    percent = 30,
  },
  {
    type = "physical",
    decrease = 20,
    percent = 60,
  },
  {
    type = "poison",
    decrease = 8,
    percent = 70,
  },
}

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
turret.next_upgrade = "bob-artillery-turret-3"
turret.resistances = {
  {
    type = "acid",
    decrease = 25,
    percent = 75,
  },
  {
    type = "bob-pierce",
    percent = 40,
  },
  {
    type = "electric",
    decrease = 15,
    percent = 70,
  },
  {
    type = "explosion",
    percent = 80,
  },
  {
    type = "fire",
    decrease = 20,
    percent = 80,
  },
  {
    type = "impact",
    decrease = 100,
    percent = 90,
  },
  {
    type = "laser",
    percent = 40,
  },
  {
    type = "physical",
    decrease = 30,
    percent = 75,
  },
  {
    type = "poison",
    decrease = 12,
    percent = 80,
  },
}
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
turret.resistances = {
  {
    type = "acid",
    decrease = 30,
    percent = 85,
  },
  {
    type = "bob-pierce",
    percent = 60,
  },
  {
    type = "electric",
    decrease = 20,
    percent = 80,
  },
  {
    type = "explosion",
    percent = 90,
  },
  {
    type = "fire",
    decrease = 25,
    percent = 90,
  },
  {
    type = "impact",
    decrease = 150,
    percent = 95,
  },
  {
    type = "laser",
    percent = 50,
  },
  {
    type = "physical",
    decrease = 40,
    percent = 90,
  },
  {
    type = "poison",
    decrease = 15,
    percent = 90,
  },
}
data:extend({ turret })

data.raw["ammo-turret"]["gun-turret"].next_upgrade = "bob-gun-turret-2"
data.raw["electric-turret"]["laser-turret"].next_upgrade = "bob-laser-turret-2"
data.raw["artillery-turret"]["artillery-turret"].next_upgrade = "bob-artillery-turret-2"
