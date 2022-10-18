data:extend({
  {
    type = "land-mine",
    name = "poison-mine",
    icon = "__base__/graphics/icons/land-mine.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {
      "placeable-player",
      "placeable-enemy",
      "player-creation",
      "placeable-off-grid",
    },
    minable = { mining_time = 1, result = "poison-mine" },
    max_health = 15,
    corpse = "small-remnants",
    collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    dying_explosion = "explosion-hit",
    picture_safe = {
      filename = "__base__/graphics/entity/land-mine/land-mine.png",
      priority = "medium",
      width = 32,
      height = 32,
    },
    picture_set = {
      filename = "__base__/graphics/entity/land-mine/land-mine-set.png",
      priority = "medium",
      width = 32,
      height = 32,
    },
    trigger_radius = 2.5,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        source_effects = {
          {
            type = "nested-result",
            affects_target = true,
            action = {
              type = "area",
              radius = 6,
              collision_mask = { "player-layer" },
              action_delivery = {
                type = "instant",
                target_effects = {
                  type = "damage",
                  damage = { amount = 300, type = "poison" },
                },
              },
            },
          },
          {
            type = "create-entity",
            entity_name = "poison-cloud",
          },
          {
            type = "damage",
            damage = { amount = 1000, type = "explosion" },
          },
        },
      },
    },
  },

  {
    type = "land-mine",
    name = "distractor-mine",
    icon = "__base__/graphics/icons/land-mine.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {
      "placeable-player",
      "placeable-enemy",
      "player-creation",
      "placeable-off-grid",
    },
    minable = { mining_time = 1, result = "distractor-mine" },
    max_health = 15,
    corpse = "small-remnants",
    collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    dying_explosion = "explosion-hit",
    picture_safe = {
      filename = "__base__/graphics/entity/land-mine/land-mine.png",
      priority = "medium",
      width = 32,
      height = 32,
    },
    picture_set = {
      filename = "__base__/graphics/entity/land-mine/land-mine-set.png",
      priority = "medium",
      width = 32,
      height = 32,
    },
    trigger_radius = 2.5,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        source_effects = {
          {
            type = "create-entity",
            show_in_tooltip = true,
            entity_name = "distractor",
            --            offsets = {{0.5, -0.5},{-0.5, -0.5},{0, 0.5}}
          },
          {
            type = "damage",
            damage = { amount = 1000, type = "explosion" },
          },
        },
      },
    },
  },

  {
    type = "land-mine",
    name = "slowdown-mine",
    icon = "__base__/graphics/icons/land-mine.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {
      "placeable-player",
      "placeable-enemy",
      "player-creation",
      "placeable-off-grid",
    },
    minable = { mining_time = 1, result = "slowdown-mine" },
    max_health = 15,
    corpse = "small-remnants",
    collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    dying_explosion = "explosion-hit",
    picture_safe = {
      filename = "__base__/graphics/entity/land-mine/land-mine.png",
      priority = "medium",
      width = 32,
      height = 32,
    },
    picture_set = {
      filename = "__base__/graphics/entity/land-mine/land-mine-set.png",
      priority = "medium",
      width = 32,
      height = 32,
    },
    trigger_radius = 2.5,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        source_effects = {
          {
            type = "nested-result",
            affects_target = true,
            action = {
              type = "area",
              radius = 9,
              action_delivery = {
                type = "instant",
                target_effects = {
                  type = "create-sticker",
                  sticker = "slowdown-sticker",
                },
              },
            },
          },
          {
            type = "damage",
            damage = { amount = 1000, type = "explosion" },
          },
        },
      },
    },
  },
})
