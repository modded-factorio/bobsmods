data:extend({

  {
    type = "projectile",
    name = "bob-piercing-spine",
    hidden = true,
    acceleration = 0,
    direction_only = true,
    force_condition = "not-same",
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "damage",
            damage = { amount = 1.5, type = "physical" },
          },
          {
            type = "damage",
            damage = { amount = 1, type = "bob-pierce" },
          },
          {
            type = "create-entity",
            entity_name = "explosion-hit",
            offset_deviation = {
              { -0.5, -0.5 },
              { 0.5, 0.5 },
            },
            offsets = {
              { 0, 1 },
            },
            only_when_visible = true,
          },
          {
            type = "activate-impact",
            deliver_category = "bullet",
          },
        },
      },
    },
    animation = {
      draw_as_glow = true,
      filename = "__bobenemies__/graphics/entity/projectiles/piercing-barb.png",
      width = 20,
      height = 60,
      priority = "high",
    },
    collision_box = { { -0.3, -1.1 }, { 0.3, 1.1 } },
    flags = {
      "not-on-map",
    },
  },

  {
    type = "projectile",
    name = "bob-piercing-spine-homing",
    hidden = true,
    acceleration = 0,
    turn_speed = 0,
    force_condition = "not-same",
    action = {
      type = "direct",
      ignore_collision_condition = true,
      filter_enabled = true,
      trigger_target_mask = { "flying-robot" },
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "damage",
            damage = { amount = 0.4, type = "physical" },
            show_in_tooltip = false,
          },
          {
            type = "damage",
            damage = { amount = 0.4, type = "bob-pierce" },
            show_in_tooltip = false,
          },
        },
      },
    },
    collision_box = { { -0.3, -1.1 }, { 0.3, 1.1 } },
    flags = {
      "not-on-map",
    },
  },
})
