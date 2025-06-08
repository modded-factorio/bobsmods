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
    collision_box = { { -0.3, -0.9 }, { 0.3, 0.9 } },
    flags = {
      "not-on-map",
    },
  },
})
