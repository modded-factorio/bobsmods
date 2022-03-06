data:extend(
{
  {
    type = "beam",
    name = "bob-laser-beam-glass",
    flags = {"not-on-map"},
    width = 0.5,
    damage_interval = 20,
    random_target_offset = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 10, type = "laser"}
          }
        }
      }
    },
    head =
    {
      filename = "__bobvehicleequipment__/graphics/beam/laser-body.png",
      tint = {r = 0.8, g = 0.8, b = 0.8},
      flags = {"mipmap"},
      line_length = 8,
      width = 64,
      height = 12,
      frame_count = 8,
      scale = 0.5,
      animation_speed = 0.5,
      blend_mode = laser_beam_blend_mode
    },
    tail =
    {
      filename = "__bobvehicleequipment__/graphics/beam/laser-end.png",
      tint = {r = 0.8, g = 0.8, b = 0.8},
      flags = { "no-crop", "mipmap" },
      width = 110,
      height = 62,
      frame_count = 8,
      shift = util.by_pixel(11.5, 1),
      scale = 0.5,
      animation_speed = 0.5,
      blend_mode = laser_beam_blend_mode
    },
    body =
    {
      {
        filename = "__bobvehicleequipment__/graphics/beam/laser-body.png",
        tint = {r = 0.8, g = 0.8, b = 0.8},
        flags = {"mipmap"},
        line_length = 8,
        width = 64,
        height = 12,
        frame_count = 8,
        scale = 0.5,
        animation_speed = 0.5,
        blend_mode = laser_beam_blend_mode
      }
    },
    working_sound =
    {
      {
        filename = "__base__/sound/fight/electric-beam.ogg",
        volume = 0.7
      }
    }
  },
  {
    type = "beam",
    name = "bob-laser-beam-sapphire",
    flags = {"not-on-map"},
    width = 0.5,
    damage_interval = 20,
    random_target_offset = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 10, type = "laser"}
          }
        }
      }
    },
    head =
    {
      filename = "__bobvehicleequipment__/graphics/beam/laser-body-sapphire.png",
      flags = {"mipmap"},
      line_length = 8,
      width = 64,
      height = 12,
      frame_count = 8,
      scale = 0.5,
      animation_speed = 0.5,
      blend_mode = laser_beam_blend_mode
    },
    tail =
    {
      filename = "__bobvehicleequipment__/graphics/beam/laser-end-sapphire.png",
      flags = { "no-crop", "mipmap" },
      width = 110,
      height = 62,
      frame_count = 8,
      shift = util.by_pixel(11.5, 1),
      scale = 0.5,
      animation_speed = 0.5,
      blend_mode = laser_beam_blend_mode
    },
    body =
    {
      {
        filename = "__bobvehicleequipment__/graphics/beam/laser-body-sapphire.png",
        flags = {"mipmap"},
        line_length = 8,
        width = 64,
        height = 12,
        frame_count = 8,
        scale = 0.5,
        animation_speed = 0.5,
        blend_mode = laser_beam_blend_mode
      }
    },
    working_sound =
    {
      {
        filename = "__base__/sound/fight/electric-beam.ogg",
        volume = 0.7
      }
    }
  },
  {
    type = "beam",
    name = "bob-laser-beam-emerald",
    flags = {"not-on-map"},
    width = 0.5,
    damage_interval = 20,
    random_target_offset = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 10, type = "laser"}
          }
        }
      }
    },
    head =
    {
      filename = "__bobvehicleequipment__/graphics/beam/laser-body-emerald.png",
      flags = {"mipmap"},
      line_length = 8,
      width = 64,
      height = 12,
      frame_count = 8,
      scale = 0.5,
      animation_speed = 0.5,
      blend_mode = laser_beam_blend_mode
    },
    tail =
    {
      filename = "__bobvehicleequipment__/graphics/beam/laser-end-emerald.png",
      flags = { "no-crop", "mipmap" },
      width = 110,
      height = 62,
      frame_count = 8,
      shift = util.by_pixel(11.5, 1),
      scale = 0.5,
      animation_speed = 0.5,
      blend_mode = laser_beam_blend_mode
    },
    body =
    {
      {
        filename = "__bobvehicleequipment__/graphics/beam/laser-body-emerald.png",
        flags = {"mipmap"},
        line_length = 8,
        width = 64,
        height = 12,
        frame_count = 8,
        scale = 0.5,
        animation_speed = 0.5,
        blend_mode = laser_beam_blend_mode
      }
    },
    working_sound =
    {
      {
        filename = "__base__/sound/fight/electric-beam.ogg",
        volume = 0.7
      }
    }
  },
  {
    type = "beam",
    name = "bob-laser-beam-amethyst",
    flags = {"not-on-map"},
    width = 0.5,
    damage_interval = 20,
    random_target_offset = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 10, type = "laser"}
          }
        }
      }
    },
    head =
    {
      filename = "__bobvehicleequipment__/graphics/beam/laser-body-amethyst.png",
      flags = {"mipmap"},
      line_length = 8,
      width = 64,
      height = 12,
      frame_count = 8,
      scale = 0.5,
      animation_speed = 0.5,
      blend_mode = laser_beam_blend_mode
    },
    tail =
    {
      filename = "__bobvehicleequipment__/graphics/beam/laser-end-amethyst.png",
      flags = { "no-crop", "mipmap" },
      width = 110,
      height = 62,
      frame_count = 8,
      shift = util.by_pixel(11.5, 1),
      scale = 0.5,
      animation_speed = 0.5,
      blend_mode = laser_beam_blend_mode
    },
    body =
    {
      {
        filename = "__bobvehicleequipment__/graphics/beam/laser-body-amethyst.png",
        flags = {"mipmap"},
        line_length = 8,
        width = 64,
        height = 12,
        frame_count = 8,
        scale = 0.5,
        animation_speed = 0.5,
        blend_mode = laser_beam_blend_mode
      }
    },
    working_sound =
    {
      {
        filename = "__base__/sound/fight/electric-beam.ogg",
        volume = 0.7
      }
    }
  },
  {
    type = "beam",
    name = "bob-laser-beam-topaz",
    flags = {"not-on-map"},
    width = 0.5,
    damage_interval = 20,
    random_target_offset = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 10, type = "laser"}
          }
        }
      }
    },
    head =
    {
      filename = "__bobvehicleequipment__/graphics/beam/laser-body-topaz.png",
      flags = {"mipmap"},
      line_length = 8,
      width = 64,
      height = 12,
      frame_count = 8,
      scale = 0.5,
      animation_speed = 0.5,
      blend_mode = laser_beam_blend_mode
    },
    tail =
    {
      filename = "__bobvehicleequipment__/graphics/beam/laser-end-topaz.png",
      flags = { "no-crop", "mipmap" },
      width = 110,
      height = 62,
      frame_count = 8,
      shift = util.by_pixel(11.5, 1),
      scale = 0.5,
      animation_speed = 0.5,
      blend_mode = laser_beam_blend_mode
    },
    body =
    {
      {
        filename = "__bobvehicleequipment__/graphics/beam/laser-body-topaz.png",
        flags = {"mipmap"},
        line_length = 8,
        width = 64,
        height = 12,
        frame_count = 8,
        scale = 0.5,
        animation_speed = 0.5,
        blend_mode = laser_beam_blend_mode
      }
    },
    working_sound =
    {
      {
        filename = "__base__/sound/fight/electric-beam.ogg",
        volume = 0.7
      }
    }
  },
  {
    type = "beam",
    name = "bob-laser-beam-diamond",
    flags = {"not-on-map"},
    width = 0.5,
    damage_interval = 20,
    random_target_offset = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 10, type = "laser"}
          }
        }
      }
    },
    head =
    {
      filename = "__bobvehicleequipment__/graphics/beam/laser-body.png",
      flags = {"mipmap"},
      line_length = 8,
      width = 64,
      height = 12,
      frame_count = 8,
      scale = 0.5,
      animation_speed = 0.5,
      blend_mode = laser_beam_blend_mode
    },
    tail =
    {
      filename = "__bobvehicleequipment__/graphics/beam/laser-end.png",
      flags = { "no-crop", "mipmap" },
      width = 110,
      height = 62,
      frame_count = 8,
      shift = util.by_pixel(11.5, 1),
      scale = 0.5,
      animation_speed = 0.5,
      blend_mode = laser_beam_blend_mode
    },
    body =
    {
      {
        filename = "__bobvehicleequipment__/graphics/beam/laser-body.png",
        flags = {"mipmap"},
        line_length = 8,
        width = 64,
        height = 12,
        frame_count = 8,
        scale = 0.5,
        animation_speed = 0.5,
        blend_mode = laser_beam_blend_mode
      }
    },
    working_sound =
    {
      {
        filename = "__base__/sound/fight/electric-beam.ogg",
        volume = 0.7
      }
    }
  }
}
)


