local warefareSounds = require("prototypes.entity.sounds")

local function boblaserbubbleanimation(scale, tint)
  return {
    {
      filename = "__bobwarfare__/graphics/entities/laser-bubble.png",
      scale = scale,
      tint = tint,
      priority = "extra-high",
      width = 8,
      height = 8,
      frame_count = 5,
    },
  }
end

data:extend({
  {
    type = "smoke-with-trigger",
    name = "small-poison-cloud",
    localised_name = { "entity-name.poison-cloud" },
    flags = { "not-on-map" },
    show_when_smoke_off = true,
    animation = {
      width = 152,
      height = 120,
      line_length = 5,
      frame_count = 60,
      shift = { -0.53125, -0.4375 },
      priority = "high",
      animation_speed = 0.25,
      filename = "__base__/graphics/entity/smoke/smoke.png",
      flags = { "smoke" },
    },
    affected_by_wind = false,
    cyclic = true,
    duration = 60 * 10,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = { r = 0.239, g = 0.875, b = 0.992, a = 0.690 }, -- #3ddffdb0,
    created_effect = {
      {
        type = "cluster",
        cluster_count = 4,
        distance = 2,
        distance_deviation = 1,
        action_delivery = {
          type = "instant",
          target_effects = {
            type = "create-smoke",
            show_in_tooltip = false,
            entity_name = "poison-cloud-visual-dummy",
            initial_height = 0,
          },
        },
      },
    },
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-smoke",
            show_in_tooltip = false,
            entity_name = "poison-cloud-visual-dummy",
            initial_height = 0,
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 4,
              entity_flags = { "breaths-air" },
              action_delivery = {
                type = "instant",
                target_effects = {
                  type = "damage",
                  damage = { amount = 4, type = "poison" },
                },
              },
            },
          },
        },
      },
    },
    action_cooldown = 30,
    hidden = true,
  },

  {
    type = "smoke-with-trigger",
    name = "poison-artillery-cloud",
    localised_name = { "entity-name.poison-cloud" },
    flags = { "not-on-map" },
    show_when_smoke_off = true,
    particle_count = 16,
    particle_spread = { 3.6 * 1.05, 3.6 * 0.6 * 1.05 },
    particle_distance_scale_factor = 0.5,
    particle_scale_factor = { 1, 0.707 },
    wave_speed = { 1 / 80, 1 / 60 },
    wave_distance = { 0.3, 0.2 },
    spread_duration_variation = 20,
    particle_duration_variation = 60 * 3,
    render_layer = "object",
    affected_by_wind = false,
    cyclic = true,
    duration = 60 * 30,
    fade_away_duration = 2 * 60,
    spread_duration = 20,
    color = { r = 0.239, g = 0.875, b = 0.992, a = 0.690 }, -- #3ddffdb0,

    animation = {
      width = 152,
      height = 120,
      line_length = 5,
      frame_count = 60,
      shift = { -0.53125, -0.4375 },
      priority = "high",
      animation_speed = 0.25,
      filename = "__base__/graphics/entity/smoke/smoke.png",
      flags = { "smoke" },
    },
    created_effect = {
      {
        type = "cluster",
        cluster_count = 12,
        distance = 5,
        distance_deviation = 5,
        action_delivery = {
          type = "instant",
          target_effects = {
            type = "create-smoke",
            show_in_tooltip = false,
            entity_name = "poison-cloud-visual-dummy",
            initial_height = 0,
          },
        },
      },
      {
        type = "cluster",
        cluster_count = 15,
        distance = 10,
        distance_deviation = 3,
        action_delivery = {
          type = "instant",
          target_effects = {
            type = "create-smoke",
            show_in_tooltip = false,
            entity_name = "poison-cloud-visual-dummy",
            initial_height = 0,
          },
        },
      },
    },

    working_sound = {
      sound = {
        filename = "__base__/sound/fight/poison-cloud.ogg",
        volume = 0.7,
      },
    },
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          type = "nested-result",
          action = {
            type = "area",
            radius = 13,
            entity_flags = { "breaths-air" },
            action_delivery = {
              type = "instant",
              target_effects = {
                type = "damage",
                damage = { amount = 10, type = "poison" },
              },
            },
          },
        },
      },
    },
    action_cooldown = 30,
    hidden = true,
  },

  {
    type = "explosion",
    name = "bob-laser-bubble-glass",
    flags = { "not-on-map" },
    animations = boblaserbubbleanimation(1, { r = 0.8, g = 0.8, b = 0.8, a = 1 }),
    light = { intensity = 1, size = 10 },
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    hidden = true,
  },

  {
    type = "explosion",
    name = "bob-laser-bubble-ruby",
    flags = { "not-on-map" },
    animations = boblaserbubbleanimation(1, { r = 1, g = 0.2, b = 0.2, a = 1 }),
    light = { intensity = 1, size = 10 },
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    hidden = true,
  },

  {
    type = "explosion",
    name = "bob-laser-bubble-sapphire",
    flags = { "not-on-map" },
    animations = boblaserbubbleanimation(1, { r = 0.2, g = 0.6, b = 1, a = 1 }),
    light = { intensity = 1, size = 10 },
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    hidden = true,
  },

  {
    type = "explosion",
    name = "bob-laser-bubble-emerald",
    flags = { "not-on-map" },
    animations = boblaserbubbleanimation(1, { r = 0.3, g = 1, b = 0.3, a = 1 }),
    light = { intensity = 1, size = 10 },
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    hidden = true,
  },

  {
    type = "explosion",
    name = "bob-laser-bubble-amethyst",
    flags = { "not-on-map" },
    animations = boblaserbubbleanimation(1, { r = 1, g = 0.2, b = 1, a = 1 }),
    light = { intensity = 1, size = 10 },
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    hidden = true,
  },

  {
    type = "explosion",
    name = "bob-laser-bubble-topaz",
    flags = { "not-on-map" },
    animations = boblaserbubbleanimation(1, { r = 1, g = 0.6, b = 0.2, a = 1 }),
    light = { intensity = 1, size = 10 },
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    hidden = true,
  },

  {
    type = "explosion",
    name = "bob-laser-bubble-diamond",
    flags = { "not-on-map" },
    animations = boblaserbubbleanimation(1, { r = 1, g = 1, b = 1, a = 1 }),
    light = { intensity = 1, size = 10 },
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    hidden = true,
  },
})

data:extend({
  {
    type = "explosion",
    name = "bob-plasma-explosion",
    flags = { "not-on-map" },
    animations = {
      {
        filename = "__bobwarfare__/graphics/entities/plasma-explosion.png",
        tint = { r = 0.4, g = 0.7, b = 1, a = 1 },
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 64,
        line_length = 8,
        scale = 4,
        animation_speed = 0.5,
      },
    },
    light = { intensity = 1, size = 50 },
    sound = {
      aggregation = {
        max_count = 1,
        remove = true,
      },
      variations = warefareSounds.plasmaExplosion,
    },
    created_effect = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-particle",
            repeat_count = 20,
            particle_name = "explosion-remnants-particle",
            initial_height = 0.5,
            speed_from_center = 0.08,
            speed_from_center_deviation = 0.15,
            initial_vertical_speed = 0.08,
            initial_vertical_speed_deviation = 0.15,
            offset_deviation = { { -0.2, -0.2 }, { 0.2, 0.2 } },
          },
        },
      },
    },
    hidden = true,
  },
  {
    type = "explosion",
    name = "small-plasma-explosion",
    flags = { "not-on-map" },
    animations = {
      {
        filename = "__bobwarfare__/graphics/entities/plasma-explosion.png",
        tint = { r = 0.4, g = 0.7, b = 1, a = 1 },
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 64,
        line_length = 8,
        scale = 1,
        animation_speed = 0.5,
      },
    },
    light = { intensity = 1, size = 50 },
    sound = {
      aggregation = {
        max_count = 1,
        remove = true,
      },
      variations = warefareSounds.plasmaExplosion,
    },
    created_effect = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-particle",
            repeat_count = 6,
            particle_name = "explosion-remnants-particle",
            initial_height = 0.5,
            speed_from_center = 0.08,
            speed_from_center_deviation = 0.15,
            initial_vertical_speed = 0.08,
            initial_vertical_speed_deviation = 0.15,
            offset_deviation = { { -0.2, -0.2 }, { 0.2, 0.2 } },
          },
        },
      },
    },
    hidden = true,
  },
})

data:extend({
  {
    type = "sticker",
    name = "poison-sticker",
    flags = { "not-on-map" },

    animation = {
      filename = "__base__/graphics/entity/acid-sticker/acid-sticker.png",
      draw_as_glow = true,
      line_length = 5,
      frame_count = 50,
      width = 30,
      height = 34,
      animation_speed = 0.5,
      scale = 0.5,
      tint = { r = 0.1, g = 0.5, b = 0.1 },
    },

    duration_in_ticks = 30 * 60,
    damage_interval = 10,
    target_movement_modifier = 0.8,
    damage_per_tick = { amount = 8, type = "poison" },
  },
})

data:extend({
  {
    type = "sticker",
    name = "bob-plasma-sticker",
    flags = { "not-on-map" },

    animation = {
      filename = "__base__/graphics/entity/fire-flame/fire-flame-02.png",
      draw_as_glow = true,
      line_length = 10,
      frame_count = 90,
      width = 82,
      height = 106,
      blend_mode = "additive",
      animation_speed = 1,
      scale = 0.4,
      tint = { r = 0.0, g = 0.2, b = 1, a = 0.5 },
    },

    duration_in_ticks = 30 * 60,
    damage_interval = 10,
    target_movement_modifier = 0.8,
    damage_per_tick = { amount = 8, type = "bob-plasma" },
  },
})
