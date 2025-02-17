data:extend({
  {
    type = "explosion",
    name = "bob-plasma-explosion",
    flags = { "not-on-map" },
    animations = {
      {
        filename = "__bobvehicleequipment__/graphics/plasma-explosion.png",
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
      variations = {
        {
          filename = "__base__/sound/fight/large-explosion-1.ogg",
          volume = 1.0,
        },
        {
          filename = "__base__/sound/fight/large-explosion-2.ogg",
          volume = 1.0,
        },
      },
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
