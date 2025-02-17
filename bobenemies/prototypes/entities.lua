local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local decorative_trigger_effects = require("__base__.prototypes.decorative.decorative-trigger-effects")

data:extend({
  {
    type = "simple-entity",
    name = "bob-basic-enemy",
    icons = {
      { icon = "__base__/graphics/icons/big-biter.png" },
      { icon = "__bobenemies__/graphics/icons/basic-biter.png" },
    },
    order = "a",
    subgroup = "enemy-factions",
    factoriopedia_description = { "factoriopedia-description.bob-basic-enemy" },
    factoriopedia_simulation = {
      init = enemy_simulation("bob-huge-biter", 1.5),
    },
  },

  {
    type = "simple-entity",
    name = "bob-piercing-enemy",
    icons = {
      { icon = "__base__/graphics/icons/big-biter.png" },
      { icon = "__bobenemies__/graphics/icons/piercing-biter.png" },
    },
    order = "b",
    subgroup = "enemy-factions",
    factoriopedia_description = { "factoriopedia-description.bob-piercing-enemy" },
    factoriopedia_simulation = {
      init = enemy_simulation("bob-huge-piercing-biter", 1.5),
    },
  },

  {
    type = "simple-entity",
    name = "bob-electric-enemy",
    icons = {
      { icon = "__base__/graphics/icons/big-biter.png" },
      { icon = "__bobenemies__/graphics/icons/electric-biter.png" },
    },
    order = "c",
    subgroup = "enemy-factions",
    factoriopedia_description = { "factoriopedia-description.bob-electric-enemy" },
    factoriopedia_simulation = {
      init = enemy_simulation("bob-huge-electric-biter", 1.5),
    },
  },

  {
    type = "simple-entity",
    name = "bob-acid-enemy",
    icons = {
      { icon = "__base__/graphics/icons/big-biter.png" },
      { icon = "__bobenemies__/graphics/icons/acid-biter.png" },
    },
    order = "d",
    subgroup = "enemy-factions",
    factoriopedia_description = { "factoriopedia-description.bob-acid-enemy" },
    factoriopedia_simulation = {
      init = enemy_simulation("bob-huge-acid-biter", 1.5),
    },
  },

  {
    type = "simple-entity",
    name = "bob-explosive-enemy",
    icons = {
      { icon = "__base__/graphics/icons/big-biter.png" },
      { icon = "__bobenemies__/graphics/icons/explosive-biter.png" },
    },
    order = "e",
    subgroup = "enemy-factions",
    factoriopedia_description = { "factoriopedia-description.bob-explosive-enemy" },
    factoriopedia_simulation = {
      init = enemy_simulation("bob-huge-explosive-biter", 1.5),
    },
  },

  {
    type = "simple-entity",
    name = "bob-poison-enemy",
    icons = {
      { icon = "__base__/graphics/icons/big-biter.png" },
      { icon = "__bobenemies__/graphics/icons/poison-biter.png" },
    },
    order = "f",
    subgroup = "enemy-factions",
    factoriopedia_description = { "factoriopedia-description.bob-poison-enemy" },
    factoriopedia_simulation = {
      init = enemy_simulation("bob-huge-poison-biter", 1.5),
    },
  },

  {
    type = "simple-entity",
    name = "bob-fire-enemy",
    icons = {
      { icon = "__base__/graphics/icons/big-biter.png" },
      { icon = "__bobenemies__/graphics/icons/fire-biter.png" },
    },
    order = "g",
    subgroup = "enemy-factions",
    factoriopedia_description = { "factoriopedia-description.bob-fire-enemy" },
    factoriopedia_simulation = {
      init = enemy_simulation("bob-huge-fire-biter", 1.5),
    },
  },

  {
    type = "smoke-with-trigger",
    name = "bob-small-poison-cloud",
    localised_name = { "entity-name.poison-cloud" },
    flags = { "not-on-map" },
    hidden = true,
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
  },

  {
    type = "sticker",
    name = "bob-poison-sticker",
    flags = { "not-on-map" },
    hidden = true,
    animation = {
      filename = "__bobenemies__/graphics/entity/fire-flame/fire-flame-13.png",
      line_length = 8,
      width = 60,
      height = 118,
      frame_count = 25,
      blend_mode = "additive",
      animation_speed = 1,
      scale = 0.4,
      tint = { r = 0.1, g = 0.5, b = 0.1 },
    },
    duration_in_ticks = 30 * 60,
    damage_interval = 10,
    target_movement_modifier = 0.8,
    damage_per_tick = { amount = 8, type = "poison" },
  },

  {
    type = "sticker",
    name = "bob-enemy-poison-sticker",
    flags = { "not-on-map" },
    hidden = true,
    animation = {
      filename = "__bobenemies__/graphics/entity/fire-flame/fire-flame-13.png",
      line_length = 8,
      width = 60,
      height = 118,
      frame_count = 25,
      blend_mode = "additive",
      animation_speed = 1,
      scale = 0.4,
      tint = { r = 0.1, g = 0.5, b = 0.1 },
    },
    duration_in_ticks = 15 * 60,
    damage_interval = 15,
    target_movement_modifier = 0.8,
    damage_per_tick = { amount = 1.5, type = "poison" },
  },

  {
    type = "sticker",
    name = "bob-enemy-fire-sticker",
    flags = { "not-on-map" },
    hidden = true,
    animation = {
      filename = "__bobenemies__/graphics/entity/fire-flame/fire-flame-13.png",
      line_length = 8,
      width = 60,
      height = 118,
      frame_count = 25,
      blend_mode = "additive",
      animation_speed = 1,
      scale = 0.4,
      tint = { r = 1, g = 0.1, b = 0.1 },
    },
    spread_fire_entity = "bob-enemy-fire",
    fire_spread_cooldown = 30,
    fire_spread_radius = 0.75,
    duration_in_ticks = 30 * 60,
    damage_interval = 30,
    target_movement_modifier = 0.8,
    damage_per_tick = { amount = 3, type = "fire" },
  },

  {
    type = "sticker",
    name = "bob-piercing-rage-sticker",
    flags = { "not-on-map" },
    hidden = true,
    force_visibility = "ally",
    animation = {
      filename = "__bobenemies__/graphics/entity/fire-flame/fire-flame-13.png",
      line_length = 8,
      width = 60,
      height = 118,
      frame_count = 25,
      blend_mode = "additive",
      animation_speed = 1,
      scale = 0.4,
      tint = { r = 0.1, g = 0.1, b = 1, a = 1 },
    },
    duration_in_ticks = 600,
    target_movement_modifier = 1.25,
  },

  {
    type = "sticker",
    name = "bob-electric-rage-sticker",
    flags = { "not-on-map" },
    hidden = true,
    force_visibility = "ally",
    animation = {
      filename = "__base__/graphics/entity/beam/tileable-beam-END.png",
      line_length = 4,
      width = 91,
      height = 93,
      frame_count = 16,
      blend_mode = "additive",
      animation_speed = 1,
      scale = 0.4,
    },
    duration_in_ticks = 600,
    target_movement_modifier = 1.35,
  },

  {
    type = "fire",
    name = "bob-acid-splash-fire-blank",
    localised_name = { "entity-name.acid-splash" },
    flags = { "placeable-off-grid", "not-on-map" },
    hidden = true,
    damage_per_tick = { amount = 0, type = "acid" },
    uses_alternative_behavior = true,
    limit_overlapping_particles = true,
    initial_render_layer = "object",
    render_layer = "lower-object-above-shadow",
    secondary_render_layer = "higher-object-above",
    secondary_picture_fade_out_start = 30,
    secondary_picture_fade_out_duration = 60,

    spread_delay = 300,
    spread_delay_deviation = 180,

    particle_alpha = 0.6,
    particle_alpha_blend_duration = 60 * 5,

    fade_in_duration = 1,
    fade_out_duration = 30,

    initial_lifetime = 600,
    lifetime_increase_by = 0,
    maximum_lifetime = 600,
    delay_between_initial_flames = 10,
    initial_flame_count = 1,
    burnt_patch_lifetime = 0,

    light = {
      color = { 1, 0.992, 0.512 },
      intensity = 0.4,
      size = 10,
    },

    pictures = {
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-1.png",
            line_length = 8,
            width = 210,
            height = 224,
            frame_count = 26,
            shift = util.mul_shift(util.by_pixel(-12, -8), 1),
            tint = { 1.000, 0.992, 0.512, 1.000 },
            draw_as_glow = true,
            scale = 0.5,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-1-shadow.png",
            line_length = 8,
            width = 266,
            height = 188,
            frame_count = 26,
            shift = util.mul_shift(util.by_pixel(2, 2), 1),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-2.png",
            line_length = 8,
            width = 174,
            height = 150,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(-9, -17), 1),
            tint = { 1.000, 0.992, 0.512, 1.000 },
            draw_as_glow = true,
            scale = 0.5,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-2-shadow.png",
            line_length = 8,
            width = 238,
            height = 266,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(6, 29), 1),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-3.png",
            line_length = 8,
            width = 236,
            height = 208,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(22, -16), 1),
            tint = { 1.000, 0.992, 0.512, 1.000 },
            draw_as_glow = true,
            scale = 0.5,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-3-shadow.png",
            line_length = 8,
            width = 214,
            height = 140,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(17, 2), 1),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-4.png",
            line_length = 8,
            width = 252,
            height = 154,
            frame_count = 24,
            shift = util.mul_shift(util.by_pixel(17, -19), 1),
            tint = { 1.000, 0.992, 0.512, 1.000 },
            draw_as_glow = true,
            scale = 0.5,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-4-shadow.png",
            line_length = 8,
            width = 248,
            height = 160,
            frame_count = 24,
            shift = util.mul_shift(util.by_pixel(18, -16), 1),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
    },

    secondary_pictures = {
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-1.png",
            line_length = 8,
            width = 210,
            height = 224,
            frame_count = 26,
            shift = util.mul_shift(util.by_pixel(-12, -8), ground_patch_scale_modifier),
            tint = { 1, 0.992, 0.512, 1 },
            draw_as_glow = true,
            scale = 0.5 * ground_patch_scale_modifier,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-1-shadow.png",
            line_length = 8,
            width = 266,
            height = 188,
            frame_count = 26,
            shift = util.mul_shift(util.by_pixel(2, 2), ground_patch_scale_modifier),
            draw_as_shadow = true,
            scale = 0.5 * ground_patch_scale_modifier,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-2.png",
            line_length = 8,
            width = 174,
            height = 150,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(-9, -17), ground_patch_scale_modifier),
            tint = { 1, 0.992, 0.512, 1 },
            draw_as_glow = true,
            scale = 0.5 * ground_patch_scale_modifier,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-2-shadow.png",
            line_length = 8,
            width = 238,
            height = 266,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(6, 29), ground_patch_scale_modifier),
            draw_as_shadow = true,
            scale = 0.5 * ground_patch_scale_modifier,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-3.png",
            line_length = 8,
            width = 236,
            height = 208,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(22, -16), ground_patch_scale_modifier),
            tint = { 1, 0.992, 0.512, 1 },
            draw_as_glow = true,
            scale = 0.5 * ground_patch_scale_modifier,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-3-shadow.png",
            line_length = 8,
            width = 214,
            height = 140,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(17, 2), ground_patch_scale_modifier),
            draw_as_shadow = true,
            scale = 0.5 * ground_patch_scale_modifier,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-4.png",
            line_length = 8,
            width = 252,
            height = 154,
            frame_count = 24,
            shift = util.mul_shift(util.by_pixel(17, -19), ground_patch_scale_modifier),
            tint = { 1, 0.992, 0.512, 1 },
            draw_as_glow = true,
            scale = 0.5 * ground_patch_scale_modifier,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-4-shadow.png",
            line_length = 8,
            width = 248,
            height = 160,
            frame_count = 24,
            shift = util.mul_shift(util.by_pixel(18, -16), ground_patch_scale_modifier),
            draw_as_shadow = true,
            scale = 0.5 * ground_patch_scale_modifier,
          },
        },
      },
    },
  },

  {
    type = "fire",
    name = "bob-explosive-fire-blank",
    localised_name = { "entity-name.acid-splash" },
    flags = { "placeable-off-grid", "not-on-map" },
    hidden = true,
    damage_per_tick = { amount = 0, type = "acid" },
    uses_alternative_behavior = true,
    limit_overlapping_particles = true,
    initial_render_layer = "object",
    render_layer = "lower-object-above-shadow",
    secondary_render_layer = "higher-object-above",
    secondary_picture_fade_out_start = 0,
    secondary_picture_fade_out_duration = 0,

    spread_delay = 300,
    spread_delay_deviation = 180,

    particle_alpha = 0.6,
    particle_alpha_blend_duration = 60 * 5,

    fade_in_duration = 1,
    fade_out_duration = 0,

    initial_lifetime = 900,
    lifetime_increase_by = 0,
    maximum_lifetime = 900,
    delay_between_initial_flames = 10,
    initial_flame_count = 1,
    burnt_patch_lifetime = 0,

    pictures = {
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-1.png",
            line_length = 8,
            width = 210,
            height = 224,
            frame_count = 26,
            shift = util.mul_shift(util.by_pixel(-12, -8), 1),
            tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },
            draw_as_glow = true,
            scale = 0.5,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-1-shadow.png",
            line_length = 8,
            width = 266,
            height = 188,
            frame_count = 26,
            shift = util.mul_shift(util.by_pixel(2, 2), 1),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-2.png",
            line_length = 8,
            width = 174,
            height = 150,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(-9, -17), 1),
            tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },
            draw_as_glow = true,
            scale = 0.5,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-2-shadow.png",
            line_length = 8,
            width = 238,
            height = 266,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(6, 29), 1),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-3.png",
            line_length = 8,
            width = 236,
            height = 208,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(22, -16), 1),
            tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },
            draw_as_glow = true,
            scale = 0.5,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-3-shadow.png",
            line_length = 8,
            width = 214,
            height = 140,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(17, 2), 1),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-4.png",
            line_length = 8,
            width = 252,
            height = 154,
            frame_count = 24,
            shift = util.mul_shift(util.by_pixel(17, -19), 1),
            tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },
            draw_as_glow = true,
            scale = 0.5,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-4-shadow.png",
            line_length = 8,
            width = 248,
            height = 160,
            frame_count = 24,
            shift = util.mul_shift(util.by_pixel(18, -16), 1),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
    },

    secondary_pictures = {
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-1.png",
            line_length = 8,
            width = 210,
            height = 224,
            frame_count = 26,
            shift = util.mul_shift(util.by_pixel(-12, -8), ground_patch_scale_modifier),
            tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },
            draw_as_glow = true,
            scale = 0.5 * ground_patch_scale_modifier,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-1-shadow.png",
            line_length = 8,
            width = 266,
            height = 188,
            frame_count = 26,
            shift = util.mul_shift(util.by_pixel(2, 2), ground_patch_scale_modifier),
            draw_as_shadow = true,
            scale = 0.5 * ground_patch_scale_modifier,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-2.png",
            line_length = 8,
            width = 174,
            height = 150,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(-9, -17), ground_patch_scale_modifier),
            tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },
            draw_as_glow = true,
            scale = 0.5 * ground_patch_scale_modifier,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-2-shadow.png",
            line_length = 8,
            width = 238,
            height = 266,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(6, 29), ground_patch_scale_modifier),
            draw_as_shadow = true,
            scale = 0.5 * ground_patch_scale_modifier,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-3.png",
            line_length = 8,
            width = 236,
            height = 208,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(22, -16), ground_patch_scale_modifier),
            tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },
            draw_as_glow = true,
            scale = 0.5 * ground_patch_scale_modifier,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-3-shadow.png",
            line_length = 8,
            width = 214,
            height = 140,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(17, 2), ground_patch_scale_modifier),
            draw_as_shadow = true,
            scale = 0.5 * ground_patch_scale_modifier,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-4.png",
            line_length = 8,
            width = 252,
            height = 154,
            frame_count = 24,
            shift = util.mul_shift(util.by_pixel(17, -19), ground_patch_scale_modifier),
            tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },
            draw_as_glow = true,
            scale = 0.5 * ground_patch_scale_modifier,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-4-shadow.png",
            line_length = 8,
            width = 248,
            height = 160,
            frame_count = 24,
            shift = util.mul_shift(util.by_pixel(18, -16), ground_patch_scale_modifier),
            draw_as_shadow = true,
            scale = 0.5 * ground_patch_scale_modifier,
          },
        },
      },
    },
  },

  {
    name = "bob-hardened-bile",
    type = "simple-entity",
    flags = { "placeable-neutral", "placeable-off-grid", "not-deconstructable" },
    icon = "__bobenemies__/graphics/icons/hardened-bile.png",
    subgroup = "grass",
    order = "b[decorative]-l[rock]-b[big]",
    collision_box = { { -1.0, -0.9 }, { 1.0, 1.0 } },
    selection_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    damaged_trigger_effect = hit_effects.rock(),
    dying_trigger_effect = decorative_trigger_effects.big_rock(),
    minable = {
      mining_particle = "stone-particle",
      mining_time = 12,
    },
    map_color = { 180, 140, 60 },
    mined_sound = sounds.deconstruct_bricks(1.0),
    impact_category = "stone",
    render_layer = "object",
    max_health = 1500,
    resistances = {
      {
        type = "physical",
        decrease = 8,
        percent = 75,
      },
      {
        type = "acid",
        percent = 100,
      },
      {
        type = "impact",
        percent = 90,
      },
      {
        type = "explosion",
        percent = 75,
      },
    },
    pictures = {
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-01.png",
        width = 188,
        height = 127,
        scale = 0.5,
        shift = { -0.046875, 0.171875 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-02.png",
        width = 195,
        height = 135,
        scale = 0.5,
        shift = { 0.445312, 0.125 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-03.png",
        width = 205,
        height = 132,
        scale = 0.5,
        shift = { 0.484375, 0.0546875 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-04.png",
        width = 144,
        height = 142,
        scale = 0.5,
        shift = { 0.210938, 0.0390625 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-05.png",
        width = 130,
        height = 107,
        scale = 0.5,
        shift = { 0.0234375, 0.226562 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-06.png",
        width = 165,
        height = 109,
        scale = 0.5,
        shift = { 0.15625, 0.226562 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-07.png",
        width = 150,
        height = 133,
        scale = 0.5,
        shift = { 0.257812, 0.148438 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-08.png",
        width = 156,
        height = 111,
        scale = 0.5,
        shift = { 0.0859375, 0.179688 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-09.png",
        width = 187,
        height = 120,
        scale = 0.5,
        shift = { 0.078125, 0.0859375 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-10.png",
        width = 225,
        height = 128,
        scale = 0.5,
        shift = { -0.15625, 0.0703125 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-11.png",
        width = 183,
        height = 144,
        scale = 0.5,
        shift = { 0.195312, 0.257812 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-12.png",
        width = 158,
        height = 138,
        scale = 0.5,
        shift = { 0.0390625, 0.15625 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-13.png",
        width = 188,
        height = 150,
        scale = 0.5,
        shift = { 0.226562, 0.21875 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-14.png",
        width = 186,
        height = 160,
        scale = 0.5,
        shift = { 0.132812, 0.0625 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-15.png",
        width = 181,
        height = 174,
        scale = 0.5,
        shift = { 0.304688, -0.09375 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-16.png",
        width = 212,
        height = 150,
        scale = 0.5,
        shift = { 0.335938, 0.117188 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-17.png",
        width = 155,
        height = 117,
        scale = 0.5,
        shift = { 0.25, 0.0390625 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-18.png",
        width = 141,
        height = 128,
        scale = 0.5,
        shift = { 0.304688, 0.0390625 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-19.png",
        width = 176,
        height = 114,
        scale = 0.5,
        shift = { 0.390625, 0.0234375 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
      {
        filename = "__base__/graphics/decorative/big-rock/big-rock-20.png",
        width = 120,
        height = 125,
        scale = 0.5,
        shift = { 0.148438, 0.03125 },
        tint = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 },
      },
    },
  },

  {
    type = "explosion",
    name = "bob-biter-electric-beam-explosion",
    hidden = true,
    beam = true,
    rotate = true,
    flags = { "not-on-map" },
    animations = {
      {
        filename = "__bobenemies__/graphics/entity/beams/beam-body-rotated-1.png",
        width = 39,
        height = 32,
        frame_count = 8,
        line_length = 1,
        blend_mode = "additive-soft",
        draw_as_glow = true,
        flags = {
          "trilinear-filtering",
        },
      },
      {
        filename = "__bobenemies__/graphics/entity/beams/beam-body-rotated-2.png",
        width = 39,
        height = 32,
        frame_count = 8,
        line_length = 1,
        blend_mode = "additive-soft",
        draw_as_glow = true,
        flags = {
          "trilinear-filtering",
        },
      },
      {
        filename = "__bobenemies__/graphics/entity/beams/beam-body-rotated-3.png",
        width = 39,
        height = 32,
        frame_count = 8,
        line_length = 1,
        blend_mode = "additive-soft",
        draw_as_glow = true,
        flags = {
          "trilinear-filtering",
        },
      },
      {
        filename = "__bobenemies__/graphics/entity/beams/beam-body-rotated-4.png",
        width = 39,
        height = 32,
        frame_count = 8,
        line_length = 1,
        blend_mode = "additive-soft",
        draw_as_glow = true,
        flags = {
          "trilinear-filtering",
        },
      },
      {
        filename = "__bobenemies__/graphics/entity/beams/beam-body-rotated-5.png",
        width = 39,
        height = 32,
        frame_count = 8,
        line_length = 1,
        blend_mode = "additive-soft",
        draw_as_glow = true,
        flags = {
          "trilinear-filtering",
        },
      },
      {
        filename = "__bobenemies__/graphics/entity/beams/beam-body-rotated-6.png",
        width = 39,
        height = 32,
        frame_count = 8,
        line_length = 1,
        blend_mode = "additive-soft",
        draw_as_glow = true,
        flags = {
          "trilinear-filtering",
        },
      },
    },
    light = {
      intensity = 1,
      size = 10,
    },
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
  },
})

local alienpoisonvisual = util.table.deepcopy(data.raw["smoke-with-trigger"]["poison-cloud-visual-dummy"])
alienpoisonvisual.name = "bob-enemy-poison-smoke-visual-dummy"
alienpoisonvisual.localised_name = { "entity-name.bob-enemy-poison-smoke" }
alienpoisonvisual.color = { r = 0.15, g = 1, b = 0.15, a = 0.250 }
alienpoisonvisual.duration = 300
alienpoisonvisual.fade_away_duration = 60
alienpoisonvisual.particle_count = 9
alienpoisonvisual.particle_duration_variation = 60

local alienfire = util.table.deepcopy(data.raw.fire["fire-flame"])
alienfire.name = "bob-enemy-fire"
alienfire.initial_lifetime = 300
alienfire.maximum_lifetime = 300
alienfire.lifetime_increase_by = 90
alienfire.add_fuel_cooldown = 60
alienfire.maximum_damage_multiplier = 20
alienfire.emissions_per_second = { pollution = 0.05 }
alienfire.damage_per_tick = { type = "fire", amount = 0 }
alienfire.pictures[1].tint = { r = 0.5, g = 0.25, b = 0.1 }
alienfire.pictures[2].tint = { r = 0.5, g = 0.25, b = 0.1 }
alienfire.pictures[3].tint = { r = 0.5, g = 0.25, b = 0.1 }
alienfire.pictures[4].tint = { r = 0.5, g = 0.25, b = 0.1 }
alienfire.pictures[5].tint = { r = 0.5, g = 0.25, b = 0.1 }
alienfire.pictures[6].tint = { r = 0.5, g = 0.25, b = 0.1 }
alienfire.pictures[7].tint = { r = 0.5, g = 0.25, b = 0.1 }
alienfire.pictures[8].tint = { r = 0.5, g = 0.25, b = 0.1 }
alienfire.on_damage_tick_effect = {
  {
    type = "direct",
    filter_enabled = true,
    trigger_target_mask = { "not-fire-unit" },
    action_delivery = {
      type = "instant",
      target_effects = {
        {
          type = "damage",
          damage = { type = "fire", amount = 0.5 },
        },
        {
          type = "damage",
          damage = { type = "acid", amount = 0.5 },
        },
      },
    },
  },
  {
    type = "direct",
    probability = 0.2,
    action_delivery = {
      type = "instant",
      target_effects = {
        {
          type = "create-fire",
          entity_name = "bob-enemy-fire-secondary",
          show_in_tooltip = false,
        },
      },
    },
  },
}

local alienfire2 = util.table.deepcopy(alienfire)
alienfire2.name = "bob-enemy-fire-secondary"
alienfire2.localised_name = { "entity-name.bob-enemy-fire" }
alienfire2.on_damage_tick_effect = {
  {
    type = "direct",
    filter_enabled = true,
    trigger_target_mask = { "not-fire-unit" },
    action_delivery = {
      type = "instant",
      target_effects = {
        {
          type = "damage",
          damage = { type = "fire", amount = 0.4 },
        },
        {
          type = "damage",
          damage = { type = "acid", amount = 0.4 },
        },
      },
    },
  },
}

data:extend({ alienpoisonvisual, alienfire, alienfire2 })
