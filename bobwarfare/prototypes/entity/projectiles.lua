local sounds = require("__base__.prototypes.entity.sounds")
local nuke_shockwave_starting_speed_deviation = 0.075

data:extend({
  {
    type = "projectile",
    name = "bob-better-shotgun-projectile",
    flags = { "not-on-map" },
    collision_box = { { -0.05, -1 }, { 0.05, 1 } },
    acceleration = 0,
    direction_only = true,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          type = "damage",
          damage = { amount = 12, type = "physical" },
        },
      },
    },
    animation = {
      filename = "__bobwarfare__/graphics/entities/projectiles/shotgun-shot.png",
      tint = { r = 1, g = 1, b = 1, a = 1 },
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
    },
    hidden = true,
  },

  {
    type = "projectile",
    name = "bob-shotgun-ap-projectile",
    flags = { "not-on-map" },
    collision_box = { { -0.05, -1 }, { 0.05, 1 } },
    acceleration = 0,
    direction_only = true,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          type = "damage",
          damage = { amount = 14, type = "bob-pierce" },
        },
      },
    },
    animation = {
      filename = "__bobwarfare__/graphics/entities/projectiles/shotgun-shot.png",
      tint = { r = 0.3, g = 0.5, b = 1.0, a = 1 },
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
    },
    hidden = true,
  },

  {
    type = "projectile",
    name = "bob-shotgun-electric-projectile",
    flags = { "not-on-map" },
    collision_box = { { -0.05, -1 }, { 0.05, 1 } },
    acceleration = 0,
    direction_only = true,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          type = "damage",
          damage = { amount = 14, type = "electric" },
        },
      },
    },
    animation = {
      filename = "__bobwarfare__/graphics/entities/projectiles/shotgun-shot.png",
      tint = { r = 1, g = 0.6, b = 0.3, a = 1 },
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
    },
    hidden = true,
  },

  {
    type = "projectile",
    name = "bob-shotgun-explosive-projectile",
    flags = { "not-on-map" },
    collision_box = { { -0.5, -1 }, { 0.5, 1 } },
    acceleration = 0,
    direction_only = true,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "explosion",
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 1,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = { amount = 10, type = "explosion" },
                  },
                },
              },
            },
          },
        },
      },
    },
    animation = {
      filename = "__bobwarfare__/graphics/entities/projectiles/acid-projectile-yellow.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high",
    },
    shadow = {
      filename = "__bobwarfare__/graphics/entities/projectiles/acid-projectile-shadow.png",
      line_length = 5,
      width = 28,
      height = 16,
      frame_count = 33,
      priority = "high",
      shift = { -0.09, 0.395 },
    },
    rotatable = false,
    hidden = true,
  },

  {
    type = "projectile",
    name = "bob-shotgun-flame-projectile",
    flags = { "not-on-map" },
    collision_box = { { -0.5, -1 }, { 0.5, 1 } },
    acceleration = 0,
    direction_only = true,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 1,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = { amount = 10, type = "fire" },
                  },
                },
              },
            },
          },
        },
      },
    },
    animation = {
      filename = "__bobwarfare__/graphics/entities/projectiles/acid-projectile-red.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high",
    },
    shadow = {
      filename = "__bobwarfare__/graphics/entities/projectiles/acid-projectile-shadow.png",
      line_length = 5,
      width = 28,
      height = 16,
      frame_count = 33,
      priority = "high",
      shift = { -0.09, 0.395 },
    },
    rotatable = false,
    hidden = true,
  },

  {
    type = "projectile",
    name = "bob-shotgun-acid-projectile",
    flags = { "not-on-map" },
    collision_box = { { -0.5, -1 }, { 0.5, 1 } },
    acceleration = 0,
    direction_only = true,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 1,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = { amount = 10, type = "acid" },
                  },
                },
              },
            },
          },
        },
      },
    },
    animation = {
      filename = "__bobwarfare__/graphics/entities/projectiles/acid-projectile-purple.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high",
    },
    shadow = {
      filename = "__bobwarfare__/graphics/entities/projectiles/acid-projectile-shadow.png",
      line_length = 5,
      width = 28,
      height = 16,
      frame_count = 33,
      priority = "high",
      shift = { -0.09, 0.395 },
    },
    rotatable = false,
    hidden = true,
  },

  {
    type = "projectile",
    name = "bob-shotgun-poison-projectile",
    flags = { "not-on-map" },
    collision_box = { { -0.5, -1 }, { 0.5, 1 } },
    acceleration = 0,
    direction_only = true,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 1,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = { amount = 10, type = "poison" },
                  },
                },
              },
            },
          },
        },
      },
    },
    animation = {
      filename = "__bobwarfare__/graphics/entities/projectiles/acid-projectile-green.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high",
    },
    shadow = {
      filename = "__bobwarfare__/graphics/entities/projectiles/acid-projectile-shadow.png",
      line_length = 5,
      width = 28,
      height = 16,
      frame_count = 33,
      priority = "high",
      shift = { -0.09, 0.395 },
    },
    rotatable = false,
    hidden = true,
  },

  {
    type = "projectile",
    name = "bob-shotgun-uranium-projectile",
    flags = { "not-on-map" },
    collision_box = { { -0.05, -1 }, { 0.05, 1 } },
    acceleration = 0,
    direction_only = true,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          type = "damage",
          damage = { amount = 25, type = "physical" },
        },
      },
    },
    animation = {
      filename = "__bobwarfare__/graphics/entities/projectiles/shotgun-shot.png",
      tint = { r = 0.3, g = 1.0, b = 0.3, a = 1 },
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
    },
    hidden = true,
  },

  {
    type = "projectile",
    name = "bob-rocket",
    flags = { "not-on-map" },
    acceleration = 0.01,
    turn_speed = 0.003,
    turning_speed_increases_exponentially_with_projectile_speed = true,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "explosion",
          },
          {
            type = "damage",
            damage = { amount = 120, type = "explosion" },
          },
          {
            type = "damage",
            damage = { amount = 240, type = "physical" },
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true,
          },
        },
      },
    },
    light = { intensity = 0.5, size = 4 },
    animation = {
      filename = "__bobwarfare__/graphics/entities/projectiles/rocket.png",
      frame_count = 1,
      width = 18,
      height = 39,
      priority = "high",
    },
    shadow = {
      filename = "__bobwarfare__/graphics/entities/projectiles/rocket-shadow.png",
      frame_count = 1,
      width = 18,
      height = 32,
      priority = "high",
    },
    smoke = {
      {
        name = "smoke-fast",
        deviation = { 0.15, 0.15 },
        frequency = 1,
        position = { 0, 0 },
        starting_frame = 3,
        starting_frame_deviation = 5,
      },
    },
    hidden = true,
  },

  {
    type = "projectile",
    name = "bob-piercing-rocket",
    flags = { "not-on-map" },
    acceleration = 0.01,
    turn_speed = 0.003,
    turning_speed_increases_exponentially_with_projectile_speed = true,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "explosion",
          },
          {
            type = "damage",
            damage = { amount = 120, type = "explosion" },
          },
          {
            type = "damage",
            damage = { amount = 360, type = "bob-pierce" },
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true,
          },
        },
      },
    },
    light = { intensity = 0.5, size = 4 },
    animation = {
      filename = "__bobwarfare__/graphics/entities/projectiles/piercing-rocket.png",
      frame_count = 1,
      width = 18,
      height = 39,
      priority = "high",
    },
    shadow = {
      filename = "__bobwarfare__/graphics/entities/projectiles/rocket-shadow.png",
      frame_count = 1,
      width = 18,
      height = 32,
      priority = "high",
    },
    smoke = {
      {
        name = "smoke-fast",
        deviation = { 0.15, 0.15 },
        frequency = 1,
        position = { 0, 0 },
        starting_frame = 3,
        starting_frame_deviation = 5,
      },
    },
    hidden = true,
  },

  {
    type = "projectile",
    name = "bob-electric-rocket",
    flags = { "not-on-map" },
    acceleration = 0.01,
    turn_speed = 0.003,
    turning_speed_increases_exponentially_with_projectile_speed = true,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "explosion",
          },
          {
            type = "damage",
            damage = { amount = 120, type = "explosion" },
          },
          {
            type = "damage",
            damage = { amount = 360, type = "electric" },
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true,
          },
        },
      },
    },
    light = { intensity = 0.5, size = 4 },
    animation = {
      filename = "__bobwarfare__/graphics/entities/projectiles/electric-rocket.png",
      frame_count = 1,
      width = 18,
      height = 39,
      priority = "high",
    },
    shadow = {
      filename = "__bobwarfare__/graphics/entities/projectiles/rocket-shadow.png",
      frame_count = 1,
      width = 18,
      height = 32,
      priority = "high",
    },
    smoke = {
      {
        name = "smoke-fast",
        deviation = { 0.15, 0.15 },
        frequency = 1,
        position = { 0, 0 },
        starting_frame = 3,
        starting_frame_deviation = 5,
      },
    },
    hidden = true,
  },

  {
    type = "projectile",
    name = "bob-explosive-rocket",
    flags = { "not-on-map" },
    acceleration = 0.01,
    turn_speed = 0.003,
    turning_speed_increases_exponentially_with_projectile_speed = true,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "explosion",
          },
          {
            type = "damage",
            damage = { amount = 120, type = "explosion" },
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 6.5,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = { amount = 240, type = "explosion" },
                  },
                },
              },
            },
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true,
          },
        },
      },
    },
    light = { intensity = 0.5, size = 4 },
    animation = {
      filename = "__bobwarfare__/graphics/entities/projectiles/explosive-rocket.png",
      frame_count = 1,
      width = 18,
      height = 39,
      priority = "high",
    },
    shadow = {
      filename = "__bobwarfare__/graphics/entities/projectiles/rocket-shadow.png",
      frame_count = 1,
      width = 18,
      height = 32,
      priority = "high",
    },
    smoke = {
      {
        name = "smoke-fast",
        deviation = { 0.15, 0.15 },
        frequency = 1,
        position = { 0, 0 },
        starting_frame = 3,
        starting_frame_deviation = 5,
      },
    },
    hidden = true,
  },

  {
    type = "projectile",
    name = "bob-flame-rocket",
    flags = { "not-on-map" },
    acceleration = 0.01,
    turn_speed = 0.003,
    turning_speed_increases_exponentially_with_projectile_speed = true,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "explosion",
          },
          {
            type = "damage",
            damage = { amount = 120, type = "explosion" },
          },
          {
            type = "create-fire",
            entity_name = "fire-flame",
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 4.5,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = { amount = 140, type = "fire" },
                  },
                  {
                    type = "create-sticker",
                    sticker = "fire-sticker",
                    show_in_tooltip = true,
                  },
                },
              },
            },
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true,
          },
        },
      },
    },
    light = { intensity = 0.5, size = 4 },
    animation = {
      filename = "__bobwarfare__/graphics/entities/projectiles/flame-rocket.png",
      frame_count = 1,
      width = 18,
      height = 39,
      priority = "high",
    },
    shadow = {
      filename = "__bobwarfare__/graphics/entities/projectiles/rocket-shadow.png",
      frame_count = 1,
      width = 18,
      height = 32,
      priority = "high",
    },
    smoke = {
      {
        name = "smoke-fast",
        deviation = { 0.15, 0.15 },
        frequency = 1,
        position = { 0, 0 },
        starting_frame = 3,
        starting_frame_deviation = 5,
      },
    },
    hidden = true,
  },

  {
    type = "projectile",
    name = "bob-poison-rocket",
    flags = { "not-on-map" },
    acceleration = 0.01,
    turn_speed = 0.003,
    turning_speed_increases_exponentially_with_projectile_speed = true,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "explosion",
          },
          {
            type = "damage",
            damage = { amount = 120, type = "explosion" },
          },
          {
            type = "create-entity",
            entity_name = "small-poison-cloud",
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 4.5,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = { amount = 200, type = "poison" },
                  },
                  {
                    type = "create-sticker",
                    sticker = "poison-sticker",
                    show_in_tooltip = true,
                  },
                },
              },
            },
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true,
          },
        },
      },
    },
    light = { intensity = 0.5, size = 4 },
    animation = {
      filename = "__bobwarfare__/graphics/entities/projectiles/poison-rocket.png",
      frame_count = 1,
      width = 18,
      height = 39,
      priority = "high",
    },
    shadow = {
      filename = "__bobwarfare__/graphics/entities/projectiles/rocket-shadow.png",
      frame_count = 1,
      width = 18,
      height = 32,
      priority = "high",
    },
    smoke = {
      {
        name = "smoke-fast",
        deviation = { 0.15, 0.15 },
        frequency = 1,
        position = { 0, 0 },
        starting_frame = 3,
        starting_frame_deviation = 5,
      },
    },
    hidden = true,
  },

  {
    type = "projectile",
    name = "bob-acid-rocket",
    flags = { "not-on-map" },
    acceleration = 0.01,
    turn_speed = 0.003,
    turning_speed_increases_exponentially_with_projectile_speed = true,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "explosion",
          },
          {
            type = "damage",
            damage = { amount = 120, type = "explosion" },
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 4.5,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = { amount = 160, type = "acid" },
                  },
                  {
                    type = "create-sticker",
                    sticker = "slowdown-sticker",
                    show_in_tooltip = true,
                  },
                },
              },
            },
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true,
          },
        },
      },
    },
    light = { intensity = 0.5, size = 4 },
    animation = {
      filename = "__bobwarfare__/graphics/entities/projectiles/acid-rocket.png",
      frame_count = 1,
      width = 18,
      height = 39,
      priority = "high",
    },
    shadow = {
      filename = "__bobwarfare__/graphics/entities/projectiles/rocket-shadow.png",
      frame_count = 1,
      width = 18,
      height = 32,
      priority = "high",
    },
    smoke = {
      {
        name = "smoke-fast",
        deviation = { 0.15, 0.15 },
        frequency = 1,
        position = { 0, 0 },
        starting_frame = 3,
        starting_frame_deviation = 5,
      },
    },
    hidden = true,
  },
})

data:extend({
  {
    type = "projectile",
    name = "cannon-projectile-pellet",
    flags = { "not-on-map" },
    force_condition = "enemy",
    collision_box = { { -0.05, -0.25 }, { 0.05, 0.25 } },
    acceleration = 0,
    direction_only = true,
    piercing_damage = 30,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "damage",
            damage = { amount = 20, type = "physical" },
          },
          {
            type = "damage",
            damage = { amount = 10, type = "bob-pierce" },
          },
          {
            type = "damage",
            damage = { amount = 10, type = "explosion" },
          },
        },
      },
    },
    animation = {
      filename = "__bobwarfare__/graphics/entities/projectiles/shotgun-shot.png",
      tint = { r = 1, g = 1, b = 1, a = 0.8 },
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
    },
    hidden = true,
  },
})

data:extend({
  {
    type = "projectile",
    name = "bob-fire-capsule",
    flags = { "not-on-map" },
    acceleration = 0.005,
    action = {
      {
        type = "cluster",
        cluster_count = 7,
        distance = 4,
        distance_deviation = 3,
        action_delivery = {
          type = "instant",
          target_effects = {
            type = "create-fire",
            entity_name = "fire-flame",
          },
        },
      },
      {
        type = "area",
        radius = 8,
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 15, type = "fire" },
              apply_damage_to_trees = false,
            },
            {
              type = "create-sticker",
              sticker = "fire-sticker",
            },
            {
              type = "create-fire",
              entity_name = "fire-flame-on-tree",
            },
          },
        },
      },
    },
    light = { intensity = 0.5, size = 4 },
    animation = {
      filename = "__bobwarfare__/graphics/icons/fire-capsule.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high",
    },
    shadow = {
      filename = "__base__/graphics/entity/poison-capsule/poison-capsule-shadow.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high",
    },
    smoke = capsule_smoke,
    hidden = true,
  },
})

data.raw.projectile["poison-capsule"].action = {
  {
    type = "direct",
    action_delivery = {
      type = "instant",
      target_effects = {
        type = "create-entity",
        show_in_tooltip = true,
        entity_name = "poison-cloud",
      },
    },
  },
  {
    type = "area",
    radius = 11,
    action_delivery = {
      type = "instant",
      target_effects = {
        {
          type = "damage",
          damage = { amount = 10, type = "poison" },
        },
        {
          type = "create-sticker",
          sticker = "poison-sticker",
        },
      },
    },
  },
}

data:extend({
  {
    type = "artillery-projectile",
    name = "bob-poison-artillery-projectile",
    flags = { "not-on-map" },
    reveal_map = true,
    map_color = { r = 0, g = 1, b = 0 },
    action = {
      {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "create-entity",
              entity_name = "poison-artillery-cloud",
            },
          },
        },
      },
      {
        type = "area",
        radius = 11,
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 750, type = "poison" },
            },
            {
              type = "damage",
              damage = { amount = 250, type = "explosion" },
            },
            {
              type = "create-sticker",
              sticker = "poison-sticker",
            },
          },
        },
      },
    },
    picture = {
      filename = "__base__/graphics/entity/poison-capsule/poison-capsule.png",
      width = 32,
      height = 32,
      priority = "high",
    },
    shadow = {
      filename = "__base__/graphics/entity/poison-capsule/poison-capsule-shadow.png",
      width = 32,
      height = 32,
      priority = "high",
    },
    chart_picture = {
      filename = "__base__/graphics/entity/artillery-projectile/artillery-shoot-map-visualization.png",
      flags = { "icon" },
      width = 64,
      height = 64,
      priority = "high",
      scale = 0.25,
    },
    height_from_ground = 280 / 64,
    hidden = true,
  },

  {
    type = "artillery-projectile",
    name = "bob-fire-artillery-projectile",
    flags = { "not-on-map" },
    reveal_map = true,
    map_color = { r = 1, g = 0, b = 0 },
    action = {
      {
        type = "cluster",
        cluster_count = 12,
        distance = 6,
        distance_deviation = 6,
        action_delivery = {
          type = "instant",
          target_effects = {
            type = "create-fire",
            entity_name = "fire-flame",
          },
        },
      },
      {
        type = "area",
        radius = 11,
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 750, type = "fire" },
              apply_damage_to_trees = false,
            },
            {
              type = "damage",
              damage = { amount = 250, type = "explosion" },
              apply_damage_to_trees = false,
            },
            {
              type = "create-sticker",
              sticker = "fire-sticker",
            },
            {
              type = "create-fire",
              entity_name = "fire-flame-on-tree",
            },
          },
        },
      },
    },
    picture = {
      filename = "__bobwarfare__/graphics/icons/fire-capsule.png",
      width = 32,
      height = 32,
      priority = "high",
    },
    shadow = {
      filename = "__base__/graphics/entity/poison-capsule/poison-capsule-shadow.png",
      width = 32,
      height = 32,
      priority = "high",
    },
    chart_picture = {
      filename = "__base__/graphics/entity/artillery-projectile/artillery-shoot-map-visualization.png",
      flags = { "icon" },
      width = 64,
      height = 64,
      priority = "high",
      scale = 0.25,
    },
    height_from_ground = 280 / 64,
    hidden = true,
  },

  {
    type = "artillery-projectile",
    name = "bob-explosive-artillery-projectile",
    flags = { "not-on-map" },
    reveal_map = true,
    map_color = { r = 0.2, g = 0.2, b = 0.2 },
    action = {
      {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "create-entity",
              entity_name = "small-scorchmark",
              check_buildability = true,
            },
            {
              type = "create-trivial-smoke",
              smoke_name = "artillery-smoke",
              initial_height = 0,
              speed_from_center = 0.05,
              speed_from_center_deviation = 0.005,
              offset_deviation = { { -4, -4 }, { 4, 4 } },
              max_radius = 3.5,
              repeat_count = 4 * 4 * 15,
            },
            {
              type = "create-entity",
              entity_name = "big-artillery-explosion",
            },
            {
              type = "show-explosion-on-chart",
              scale = 8 / 32,
            },
          },
        },
      },
      {
        type = "area",
        radius = 11,
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 1000, type = "explosion" },
            },
            {
              type = "create-entity",
              entity_name = "explosion",
            },
          },
        },
      },
    },
    picture = {
      filename = "__base__/graphics/entity/artillery-projectile/shell.png",
      width = 64,
      height = 64,
      scale = 0.5,
    },
    chart_picture = {
      filename = "__base__/graphics/entity/artillery-projectile/artillery-shoot-map-visualization.png",
      flags = { "icon" },
      width = 64,
      height = 64,
      priority = "high",
      scale = 0.25,
    },
    height_from_ground = 280 / 64,
    hidden = true,
  },

  {
    type = "artillery-projectile",
    name = "bob-distractor-artillery-projectile",
    flags = { "not-on-map" },
    reveal_map = true,
    map_color = { r = 0, g = 0.5, b = 1 },
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            show_in_tooltip = true,
            entity_name = "distractor",
            offsets = {
              { 0.6, -0.8 },
              { -0.6, -0.8 },
              { 0.6, 0.8 },
              { -0.6, 0.8 },
              { 1, 0 },
              { -1, 0 },
              { -1.6, -2.4 },
              { 1.6, -2.4 },
              { -1.6, 2.4 },
              { 1.6, 2.4 },
              { -2.4, -1.6 },
              { 2.4, -1.6 },
              { -2.4, 1.6 },
              { 2.4, 1.6 },
              { 0, 0 },
            },
          },
        },
      },
    },
    picture = {
      filename = "__base__/graphics/entity/combat-robot-capsule/distractor-capsule.png",
      width = 36,
      height = 30,
      priority = "high",
    },
    shadow = {
      filename = "__base__/graphics/entity/combat-robot-capsule/distractor-capsule-shadow.png",
      width = 40,
      height = 26,
      priority = "high",
    },
    chart_picture = {
      filename = "__base__/graphics/entity/artillery-projectile/artillery-shoot-map-visualization.png",
      flags = { "icon" },
      width = 64,
      height = 64,
      priority = "high",
      scale = 0.25,
    },
    height_from_ground = 280 / 64,
    hidden = true,
  },
  {
    type = "artillery-projectile",
    name = "bob-atomic-artillery-projectile",
    flags = { "not-on-map" },
    reveal_map = true,
    map_color = { r = 0, g = 1, b = 0 },
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "set-tile",
            tile_name = "nuclear-ground",
            radius = 12,
            apply_projection = true,
            tile_collision_mask = { layers = { water_tile = true } },
          },
          {
            type = "destroy-cliffs",
            radius = 9,
            explosion_at_trigger = "explosion",
          },
          {
            type = "create-entity",
            entity_name = "nuke-explosion",
          },
          {
            type = "camera-effect",
            duration = 60,
            ease_in_duration = 5,
            ease_out_duration = 60,
            delay = 0,
            strength = 6,
            full_strength_max_distance = 200,
            max_distance = 800,
          },
          {
            type = "play-sound",
            sound = sounds.nuclear_explosion(0.9),
            play_on_target_position = false,
            max_distance = 1000,
          },
          {
            type = "play-sound",
            sound = sounds.nuclear_explosion_aftershock(0.4),
            play_on_target_position = false,
            max_distance = 1000,
          },
          {
            type = "damage",
            damage = { amount = 400, type = "explosion" },
          },
          {
            type = "create-entity",
            entity_name = "huge-scorchmark",
            offsets = { { 0, -0.5 } },
            check_buildability = true,
          },
          {
            type = "invoke-tile-trigger",
            repeat_count = 1,
          },
          {
            type = "destroy-decoratives",
            include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
            include_decals = true,
            invoke_decorative_trigger = true,
            decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
            radius = 14, -- large radius for demostrative purposes
          },
          {
            type = "create-decorative",
            decorative = "nuclear-ground-patch",
            spawn_min_radius = 11.5,
            spawn_max_radius = 12.5,
            spawn_min = 30,
            spawn_max = 40,
            apply_projection = true,
            spread_evenly = true,
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 2000,
              radius = 7,
              action_delivery = {
                type = "projectile",
                projectile = "atomic-bomb-ground-zero-projectile",
                starting_speed = 0.6 * 0.8,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation,
              },
            },
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 1000,
              radius = 35,
              action_delivery = {
                type = "projectile",
                projectile = "atomic-bomb-wave",
                starting_speed = 0.5 * 0.7,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation,
              },
            },
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              show_in_tooltip = false,
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 1000,
              radius = 26,
              action_delivery = {
                type = "projectile",
                projectile = "atomic-bomb-wave-spawns-cluster-nuke-explosion",
                starting_speed = 0.5 * 0.7,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation,
              },
            },
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              show_in_tooltip = false,
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 700,
              radius = 4,
              action_delivery = {
                type = "projectile",
                projectile = "atomic-bomb-wave-spawns-fire-smoke-explosion",
                starting_speed = 0.5 * 0.65,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation,
              },
            },
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              show_in_tooltip = false,
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 1000,
              radius = 8,
              action_delivery = {
                type = "projectile",
                projectile = "atomic-bomb-wave-spawns-nuke-shockwave-explosion",
                starting_speed = 0.5 * 0.65,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation,
              },
            },
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              show_in_tooltip = false,
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 300,
              radius = 26,
              action_delivery = {
                type = "projectile",
                projectile = "atomic-bomb-wave-spawns-nuclear-smoke",
                starting_speed = 0.5 * 0.65,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation,
              },
            },
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              show_in_tooltip = false,
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 10,
              radius = 8,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "create-entity",
                    entity_name = "nuclear-smouldering-smoke-source",
                    tile_collision_mask = { layers = { water_tile = true } },
                  },
                },
              },
            },
          },
          {
            type = "create-trivial-smoke",
            smoke_name = "artillery-smoke",
            initial_height = 0,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.005,
            offset_deviation = { { -4, -4 }, { 4, 4 } },
            max_radius = 3.5,
            repeat_count = 4 * 4 * 15,
          },
        },
      },
    },
    picture = {
      filename = "__base__/graphics/entity/rocket/rocket.png",
      draw_as_glow = true,
      width = 9,
      height = 35,
      shift = { 0, 0 },
      priority = "high",
    },
    shadow = {
      filename = "__base__/graphics/entity/rocket/rocket.png",
      draw_as_shadow = true,
      line_length = 1,
      width = 20,
      height = 60,
      priority = "high",
      scale = 0.5,
      rotate_shift = true,
      shift = { 0, -0.25 },
    },
    chart_picture = {
      filename = "__base__/graphics/entity/artillery-projectile/artillery-shoot-map-visualization.png",
      flags = { "icon" },
      width = 64,
      height = 64,
      priority = "high",
      scale = 0.25,
    },
    height_from_ground = 280 / 64,
    hidden = true,
  },
})

data:extend({
  {
    type = "projectile",
    name = "bob-plasma-projectile",
    flags = { "not-on-map" },
    acceleration = 0,
    --    direction_only = true,
    action = {
      {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "create-entity",
              entity_name = "bob-plasma-explosion",
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark",
              check_buildability = true,
            },
          },
        },
      },
      {
        type = "area",
        radius = 8,
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 25, type = "bob-plasma" },
            },
            {
              type = "damage",
              damage = { amount = 15, type = "electric" },
            },
            {
              type = "damage",
              damage = { amount = 10, type = "explosion" },
            },
            {
              type = "create-sticker",
              sticker = "bob-plasma-sticker",
            },
            {
              type = "create-entity",
              entity_name = "explosion",
            },
          },
        },
      },
    },
    animation = {
      layers = {
        {
          filename = "__bobwarfare__/graphics/entities/particles2.png",
          tint = { r = 0.4, g = 0.7, b = 1, a = 1 },
          frame_count = 32,
          line_length = 8,
          x = 512,
          y = 0,
          width = 64,
          height = 64,
          priority = "high",
        },
        {
          filename = "__core__/graphics/light-small.png",
          tint = { r = 0.6, g = 0.9, b = 1, a = 1 },
          flags = { "light" },
          draw_as_light = true,
          frame_count = 1,
          repeat_count = 32,
          width = 150,
          height = 150,
          scale = 4,
          priority = "high",
        },
      },
    },
    hidden = true,
  },
})

data:extend({
  {
    type = "projectile",
    name = "bob-shotgun-plasma-projectile",
    flags = { "not-on-map" },
    collision_box = { { -0.5, -1 }, { 0.5, 1 } },
    acceleration = 0,
    direction_only = true,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 1,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = { amount = 15, type = "bob-plasma" },
                  },
                  {
                    type = "create-sticker",
                    sticker = "bob-plasma-sticker",
                  },
                },
              },
            },
          },
        },
      },
    },
    animation = {
      filename = "__bobwarfare__/graphics/entities/particles2.png",
      tint = { r = 0.4, g = 0.7, b = 1, a = 1 },
      frame_count = 32,
      line_length = 8,
      x = 512,
      y = 0,
      width = 64,
      height = 64,
      scale = 0.3,
      priority = "high",
    },
    rotatable = false,
    hidden = true,
  },
  {
    type = "projectile",
    name = "bob-plasma-rocket",
    flags = { "not-on-map" },
    acceleration = 0.005,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "bob-plasma-explosion",
          },
          {
            type = "damage",
            damage = { amount = 120, type = "bob-plasma" },
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 6.5,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = { amount = 180, type = "bob-plasma" },
                  },
                  {
                    type = "create-sticker",
                    sticker = "bob-plasma-sticker",
                    show_in_tooltip = true,
                  },
                },
              },
            },
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true,
          },
        },
      },
    },
    light = { intensity = 0.5, size = 4 },
    animation = {
      filename = "__bobwarfare__/graphics/entities/projectiles/plasma-rocket.png",
      frame_count = 1,
      width = 18,
      height = 39,
      priority = "high",
    },
    shadow = {
      filename = "__bobwarfare__/graphics/entities/projectiles/rocket-shadow.png",
      frame_count = 1,
      width = 18,
      height = 32,
      priority = "high",
    },
    smoke = {
      {
        name = "smoke-fast",
        deviation = { 0.15, 0.15 },
        frequency = 1,
        position = { 0, 0 },
        starting_frame = 3,
        starting_frame_deviation = 5,
      },
    },
    hidden = true,
  },
})

if
  data.raw.item["bob-alien-orange-alloy"]
  and data.raw.item["bob-alien-blue-alloy"]
  and data.raw.fluid["bob-alien-explosive"]
  and data.raw.fluid["bob-alien-acid"]
  and data.raw.fluid["bob-alien-fire"]
  and data.raw.fluid["bob-alien-poison"]
then
  data.raw.projectile["bob-better-shotgun-projectile"].action.action_delivery.target_effects.damage.amount = 16
  data.raw.projectile["bob-shotgun-uranium-projectile"].action.action_delivery.target_effects.damage.amount = 24
  data.raw.projectile["bob-shotgun-ap-projectile"].action.action_delivery.target_effects.damage.amount = 27
  data.raw.projectile["bob-shotgun-electric-projectile"].action.action_delivery.target_effects.damage.amount = 27
  data.raw.ammo["bob-shotgun-acid-shell"].ammo_type.action.repeat_count = 15
  data.raw.projectile["bob-shotgun-acid-projectile"].action.action_delivery.target_effects[1].action.action_delivery.target_effects[1].damage.amount =
    22
  data.raw.ammo["bob-shotgun-explosive-shell"].ammo_type.action.repeat_count = 15
  data.raw.projectile["bob-shotgun-explosive-projectile"].action.action_delivery.target_effects[2].action.action_delivery.target_effects[1].damage.amount =
    22
  data.raw.ammo["bob-shotgun-flame-shell"].ammo_type.action.repeat_count = 15
  data.raw.projectile["bob-shotgun-flame-projectile"].action.action_delivery.target_effects[1].action.action_delivery.target_effects[1].damage.amount =
    22
  data.raw.ammo["bob-shotgun-poison-shell"].ammo_type.action.repeat_count = 15
  data.raw.projectile["bob-shotgun-poison-projectile"].action.action_delivery.target_effects[1].action.action_delivery.target_effects[1].damage.amount =
    22
  data.raw.ammo["bob-shotgun-plasma-shell"].ammo_type.action.repeat_count = 15
  data.raw.ammo["bob-shotgun-plasma-shell"].ammo_type.action.repeat_count = 20
  data.raw.projectile["bob-shotgun-plasma-projectile"].action.action_delivery.target_effects[1].action.action_delivery.target_effects[1].damage.amount =
    30

  data.raw.projectile["bob-piercing-rocket"].action.action_delivery.target_effects[2].damage.amount = 160
  data.raw.projectile["bob-piercing-rocket"].action.action_delivery.target_effects[3].damage.amount = 880
  data.raw.projectile["bob-electric-rocket"].action.action_delivery.target_effects[2].damage.amount = 160
  data.raw.projectile["bob-electric-rocket"].action.action_delivery.target_effects[3].damage.amount = 540
  table.insert(
    data.raw.projectile["bob-electric-rocket"].action.action_delivery.target_effects,
    { type = "create-sticker", sticker = "stun-sticker", show_in_tooltip = true }
  )
  data.raw.projectile["bob-explosive-rocket"].action.action_delivery.target_effects[2].damage.amount = 400
  data.raw.projectile["bob-explosive-rocket"].action.action_delivery.target_effects[3].action.action_delivery.target_effects[1].damage.amount =
    300
  data.raw.projectile["bob-flame-rocket"].action.action_delivery.target_effects[4].action.action_delivery.target_effects[1].damage.amount =
    200
  data.raw.projectile["bob-poison-rocket"].action.action_delivery.target_effects[2].damage.amount = 160
  data.raw.projectile["bob-poison-rocket"].action.action_delivery.target_effects[4].action.action_delivery.target_effects[1].damage.amount =
    300
  data.raw.projectile["bob-acid-rocket"].action.action_delivery.target_effects[2].damage.amount = 160
  data.raw.projectile["bob-acid-rocket"].action.action_delivery.target_effects[3].action.action_delivery.target_effects[1].damage.amount =
    300
  data.raw.projectile["bob-plasma-rocket"].action.action_delivery.target_effects[2].damage.amount = 450
  data.raw.projectile["bob-plasma-rocket"].action.action_delivery.target_effects[3].action.action_delivery.target_effects[1].damage.amount =
    450
  data.raw.projectile["bob-plasma-rocket"].action.action_delivery.target_effects[3].action.action_delivery.target_effects[2].show_in_tooltip =
    true
end
