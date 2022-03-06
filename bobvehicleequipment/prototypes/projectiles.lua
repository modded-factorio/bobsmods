data:extend(
{
  {
    type = "projectile",
    name = "bob-plasma-projectile",
    flags = {"not-on-map"},
    acceleration = 0, --0.001,
--    direction_only = true,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "plasma-explosion"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark",
              check_buildability = true
            }
          }
        }
      },
      {
        type = "area",
        radius = 8,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 25, type = "plasma"}
            },
            {
              type = "damage",
              damage = {amount = 15, type = "electric"}
            },
            {
              type = "damage",
              damage = {amount = 10, type = "explosion"}
            },
            {
              type = "create-sticker",
              sticker = "plasma-sticker"
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      }
    },
    animation =
    {
      filename = "__bobvehicleequipment__/graphics/particles2.png",
      tint = {r = 0.4, g = 0.7, b = 1, a = 1},
      frame_count = 32,
      line_length = 8,
      x = 512,
      y = 0,
      width = 64,
      height = 64,
      priority = "high"
    },
  },
}
)



