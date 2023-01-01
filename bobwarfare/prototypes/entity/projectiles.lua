local sounds = require("__base__.prototypes.entity.sounds")
local nuke_shockwave_starting_speed_deviation = 0.075

data:extend({
  {
    type = "projectile",
    name = "better-shotgun-projectile",
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
  },

  {
    type = "projectile",
    name = "shotgun-ap-projectile",
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
          damage = { amount = 12, type = "bob-pierce" },
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
  },

  {
    type = "projectile",
    name = "shotgun-electric-projectile",
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
          damage = { amount = 12, type = "electric" },
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
  },

  {
    type = "projectile",
    name = "shotgun-explosive-projectile",
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
                    damage = { amount = 12, type = "explosion" },
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
  },

  {
    type = "projectile",
    name = "shotgun-flame-projectile",
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
                    damage = { amount = 12, type = "fire" },
                  },
                  {
                    type = "create-sticker",
                    sticker = "fire-sticker",
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
  },

  {
    type = "projectile",
    name = "shotgun-acid-projectile",
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
                    damage = { amount = 12, type = "acid" },
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
  },

  {
    type = "projectile",
    name = "shotgun-poison-projectile",
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
                    damage = { amount = 12, type = "poison" },
                  },
                  {
                    type = "create-sticker",
                    sticker = "poison-sticker",
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
  },

  {
    type = "projectile",
    name = "shotgun-uranium-projectile",
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
          damage = { amount = 16, type = "physical" },
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
  },

  {
    type = "projectile",
    name = "bob-rocket",
    flags = { "not-on-map" },
    acceleration = 0.005,
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
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5,
      },
    },
  },

  {
    type = "projectile",
    name = "bob-piercing-rocket",
    flags = { "not-on-map" },
    acceleration = 0.005,
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
            damage = { amount = 240, type = "bob-pierce" },
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
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5,
      },
    },
  },

  {
    type = "projectile",
    name = "bob-electric-rocket",
    flags = { "not-on-map" },
    acceleration = 0.005,
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
            damage = { amount = 240, type = "electric" },
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
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5,
      },
    },
  },

  {
    type = "projectile",
    name = "bob-explosive-rocket",
    flags = { "not-on-map" },
    acceleration = 0.005,
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
                    damage = { amount = 180, type = "explosion" },
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
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5,
      },
    },
  },

  {
    type = "projectile",
    name = "bob-flame-rocket",
    flags = { "not-on-map" },
    acceleration = 0.005,
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
              radius = 6.5,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = { amount = 180, type = "fire" },
                  },
                  {
                    type = "create-sticker",
                    sticker = "fire-sticker",
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
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5,
      },
    },
  },

  {
    type = "projectile",
    name = "bob-poison-rocket",
    flags = { "not-on-map" },
    acceleration = 0.005,
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
              radius = 6.5,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = { amount = 180, type = "poison" },
                  },
                  {
                    type = "create-sticker",
                    sticker = "poison-sticker",
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
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5,
      },
    },
  },

  {
    type = "projectile",
    name = "bob-acid-rocket",
    flags = { "not-on-map" },
    acceleration = 0.005,
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
                    damage = { amount = 180, type = "acid" },
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
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5,
      },
    },
  },
})

data:extend({
  {
    type = "projectile",
    name = "cannon-projectile-pellet",
    flags = { "not-on-map" },
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
  },
})

data:extend({
  {
    type = "projectile",
    name = "fire-capsule",
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
    name = "poison-artillery-projectile",
    flags = { "not-on-map" },
    acceleration = 0,
    direction_only = true,
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
    light = { intensity = 0.5, size = 4 },
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
      frame_count = 1,
      width = 64,
      height = 64,
      priority = "high",
      scale = 0.25,
    },
    height_from_ground = 280 / 64,
  },

  {
    type = "artillery-projectile",
    name = "fire-artillery-projectile",
    flags = { "not-on-map" },
    acceleration = 0,
    direction_only = true,
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
    light = { intensity = 0.5, size = 4 },
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
      frame_count = 1,
      width = 64,
      height = 64,
      priority = "high",
      scale = 0.25,
    },
    height_from_ground = 280 / 64,
  },

  {
    type = "artillery-projectile",
    name = "explosive-artillery-projectile",
    flags = { "not-on-map" },
    acceleration = 0,
    direction_only = true,
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
    light = { intensity = 0.5, size = 4 },
    picture = {
      filename = "__base__/graphics/entity/artillery-projectile/hr-shell.png",
      width = 64,
      height = 64,
      scale = 0.5,
    },
    chart_picture = {
      filename = "__base__/graphics/entity/artillery-projectile/artillery-shoot-map-visualization.png",
      flags = { "icon" },
      frame_count = 1,
      width = 64,
      height = 64,
      priority = "high",
      scale = 0.25,
    },
    height_from_ground = 280 / 64,
  },

  {
    type = "artillery-projectile",
    name = "distractor-artillery-projectile",
    flags = { "not-on-map" },
    acceleration = 0,
    direction_only = true,
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
      {
        type = "area",
        radius = 11,
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 50, type = "explosion" },
            },
          },
        },
      },
    },
    light = { intensity = 0.5, size = 4 },
    picture = {
      filename = "__base__/graphics/entity/combat-robot-capsule/distractor-capsule.png",
      frame_count = 1,
      width = 36,
      height = 30,
      priority = "high",
    },
    shadow = {
      filename = "__base__/graphics/entity/combat-robot-capsule/distractor-capsule-shadow.png",
      frame_count = 1,
      width = 40,
      height = 26,
      priority = "high",
    },
    chart_picture = {
      filename = "__base__/graphics/entity/artillery-projectile/artillery-shoot-map-visualization.png",
      flags = { "icon" },
      frame_count = 1,
      width = 64,
      height = 64,
      priority = "high",
      scale = 0.25,
    },
    height_from_ground = 280 / 64,
  },
  {
    type = "artillery-projectile",
    name = "atomic-artillery-projectile",
    flags = { "not-on-map" },
    acceleration = 0,
    direction_only = true,
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
            tile_collision_mask = { "water-tile" },
          },
          {
            type = "destroy-cliffs",
            radius = 9,
            explosion = "explosion",
          },
          {
            type = "create-entity",
            entity_name = "nuke-explosion",
          },
          {
            type = "camera-effect",
            effect = "screen-burn",
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
            -- min_distance = 200,
            max_distance = 1000,
            -- volume_modifier = 1,
            audible_distance_modifier = 3,
          },
          {
            type = "play-sound",
            sound = sounds.nuclear_explosion_aftershock(0.4),
            play_on_target_position = false,
            -- min_distance = 200,
            max_distance = 1000,
            -- volume_modifier = 1,
            audible_distance_modifier = 3,
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
                    tile_collision_mask = { "water-tile" },
                  },
                },
              },
            },
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
      filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
      frame_count = 1,
      width = 7,
      height = 24,
      priority = "high",
      shift = { 0, 0 },
    },
    smoke = {
      {
        name = "smoke-fast",
        deviation = { 0.15, 0.15 },
        frequency = 1,
        position = { 0, 1 },
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5,
      },
    },
    chart_picture = {
      filename = "__base__/graphics/entity/artillery-projectile/artillery-shoot-map-visualization.png",
      flags = { "icon" },
      frame_count = 1,
      width = 64,
      height = 64,
      priority = "high",
      scale = 0.25,
    },
    height_from_ground = 280 / 64,
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
              entity_name = "plasma-explosion",
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
              damage = { amount = 25, type = "plasma" },
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
              sticker = "plasma-sticker",
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
  },
})

data:extend({
  {
    type = "projectile",
    name = "shotgun-plasma-projectile",
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
                    damage = { amount = 25, type = "plasma" },
                  },
                  {
                    type = "create-sticker",
                    sticker = "plasma-sticker",
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
            entity_name = "plasma-explosion",
          },
          {
            type = "damage",
            damage = { amount = 120, type = "plasma" },
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
                    damage = { amount = 180, type = "plasma" },
                  },
                  {
                    type = "create-sticker",
                    sticker = "plasma-sticker",
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
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5,
      },
    },
  },
})
