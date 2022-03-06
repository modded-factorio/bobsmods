data:extend(
{
  {
    type = "smoke-with-trigger",
    name = "small-poison-cloud",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
      width = 152,
      height = 120,
      line_length = 5,
      frame_count = 60,
      shift = {-0.53125, -0.4375},
      priority = "high",
      animation_speed = 0.25,
      filename = "__base__/graphics/entity/smoke/smoke.png",
      flags = { "smoke" }
    },
    slow_down_factor = 0,
    affected_by_wind = false,
    cyclic = true,
    duration = 60 * 10,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = {r = 0.239, g = 0.875, b = 0.992, a = 0.690}, -- #3ddffdb0,
    created_effect =
    {
      {
        type = "cluster",
        cluster_count = 4,
        distance = 2,
        distance_deviation = 1,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            type = "create-smoke",
            show_in_tooltip = false,
            entity_name = "poison-cloud-visual-dummy",
            initial_height = 0
          }
        }
      },
    },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-smoke",
            show_in_tooltip = false,
            entity_name = "poison-cloud-visual-dummy",
            initial_height = 0,
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 4,
              entity_flags = {"breaths-air"},
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  type = "damage",
                  damage = { amount = 4, type = "poison"}
                },
              }
            }
          }
        }
      }
    },
    action_frequency = 5
  },
}
)

data:extend(
{
  {
    type = "sticker",
    name = "poison-sticker",
    flags = {"not-on-map"},
    animation =
    {
      filename = "__base__/graphics/entity/fire-flame/fire-flame-13.png",
      line_length = 8,
      width = 60,
      height = 118,
      frame_count = 25,
      direction_count = 1,
      blend_mode = "additive",
      animation_speed = 1,
      scale = 0.4,
      tint = {r = 0.1, g = 0.5, b = 0.1},
    },
    duration_in_ticks = 30 * 60,
    damage_interval = 10,
    target_movement_modifier = 0.8,
    damage_per_tick = { amount = 8, type = "poison" },
  }
})
