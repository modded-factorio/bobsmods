circuit_connector_definitions["bob-valve"] = circuit_connector_definitions.create(universal_connector_template,
  {
    { variation = 2, main_offset = util.by_pixel(0, -12), shadow_offset = util.by_pixel(0, -12), show_shadow = true },
    { variation = 0, main_offset = util.by_pixel(0, -12), shadow_offset = util.by_pixel(0, -12), show_shadow = true },
    { variation = 6, main_offset = util.by_pixel(0, -12), shadow_offset = util.by_pixel(0, -12), show_shadow = true },
    { variation = 4, main_offset = util.by_pixel(0, -12), shadow_offset = util.by_pixel(0, -12), show_shadow = true },
  }
)

data:extend(
{
  {
    type = "item",
    name = "bob-valve",
    icon = "__boblogistics__/graphics/icons/pipe/valve.png",
    icon_size = 32,
    subgroup = "energy-pipe-distribution",
    order = "a[pipe]-c[valve]",
    place_result = "bob-valve",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "bob-valve",
    energy_required = 2,
    ingredients =
    {
      {"iron-plate", 1},
      {"pipe", 1}
    },
    result= "bob-valve"
  },
  {
    type = "storage-tank",
    name = "bob-valve",
    icon = "__boblogistics__/graphics/icons/pipe/valve.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.1, result = "bob-valve"},
    max_health = 50,
    two_direction_only = false,
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          position = {0, -1},
          type="output"
        },
        {
          position = {0, 1},
          type="input"
        }
      },
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    pictures =
    {
      picture =
      {
      north =
      {
        layers = 
        {
          {
            filename = "__boblogistics__/graphics/entity/pipe/hr-pipe-straight-vertical.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-up.png",
            width = 46,
            height = 52,
            shift = {0.09375, 0.03125 + 0.0625},
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-up-mask.png",
            width = 46,
            height = 52,
            shift = {0.09375, 0.03125 + 0.0625},
            tint = {r = 0, g = 0, b = 1, a = 1}
          }
        }
      },
      south =
      {
        layers = 
        {
          {
            filename = "__boblogistics__/graphics/entity/pipe/hr-pipe-straight-vertical.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-down.png",
            width = 61,
            height = 58,
            shift = {0.421875, -0.125},
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-down-mask.png",
            width = 61,
            height = 58,
            shift = {0.421875, -0.125},
            tint = {r = 0, g = 0, b = 1, a = 1}
          }
        }
      },
      west =
      {
        layers = 
        {
          {
            filename = "__boblogistics__/graphics/entity/pipe/hr-pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-left.png",
            width = 56,
            height = 44,
            shift = {0.3125, 0.0625},
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-left-mask.png",
            width = 56,
            height = 44,
            shift = {0.3125, 0.0625},
            tint = {r = 0, g = 0, b = 1, a = 1}
          }
        }
      },
      east =
      {
        layers = 
        {
          {
            filename = "__boblogistics__/graphics/entity/pipe/hr-pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-right.png",
            width = 51,
            height = 56,
            shift = {0.265625, -0.21875},
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-right-mask.png",
            width = 51,
            height = 56,
            shift = {0.265625, -0.21875},
            tint = {r = 0, g = 0, b = 1, a = 1}
          }
        }
        }
      },
      fluid_background =
      {
        filename = "__core__/graphics/empty.png",
        width = 1,
        height = 1,
      },
      window_background =
      {
        filename = "__core__/graphics/empty.png",
        width = 1,
        height = 1,
      },
      flow_sprite =
      {
        filename = "__core__/graphics/empty.png",
        width = 1,
        height = 1,
      },
      gas_flow =
      {
        filename = "__base__/graphics/entity/pipe/steam.png",
        width = 1,
        height = 1,
        frame_count = 1,
      },
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    flow_length_in_ticks = 360,
    circuit_wire_connection_points = circuit_connector_definitions["bob-valve"].points,
    circuit_connector_sprites = circuit_connector_definitions["bob-valve"].sprites,
    circuit_wire_max_distance = 7.5,
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "bob-overflow-valve",
    icon = "__boblogistics__/graphics/icons/pipe/overflow-valve.png",
    icon_size = 32,
    subgroup = "energy-pipe-distribution",
    order = "a[pipe]-d[overflow-valve]",
    place_result = "bob-overflow-valve",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "bob-overflow-valve",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {"iron-plate", 1},
      {"pipe", 1}
    },
    result= "bob-overflow-valve"
  },
  {
    type = "storage-tank",
    name = "bob-overflow-valve",
    icon = "__boblogistics__/graphics/icons/pipe/overflow-valve.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.1, result = "bob-overflow-valve"},
    max_health = 50,
    two_direction_only = false,
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      base_level = 0.8,
      height = 0.2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          position = {0, -1},
          type="output"
        },
        {
          position = {0, 1},
          type="input"
        }
      },
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    pictures =
    {
      picture =
      {
      north =
      {
        layers = 
        {
          {
            filename = "__boblogistics__/graphics/entity/pipe/hr-pipe-straight-vertical.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-up.png",
            width = 46,
            height = 52,
            shift = {0.09375, 0.03125 + 0.0625},
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-up-mask.png",
            width = 46,
            height = 52,
            shift = {0.09375, 0.03125 + 0.0625},
            tint = {r = 1, g = 0, b = 0, a = 1}
          }
        }
      },
      south =
      {
        layers = 
        {
          {
            filename = "__boblogistics__/graphics/entity/pipe/hr-pipe-straight-vertical.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-down.png",
            width = 61,
            height = 58,
            shift = {0.421875, -0.125},
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-down-mask.png",
            width = 61,
            height = 58,
            shift = {0.421875, -0.125},
            tint = {r = 1, g = 0, b = 0, a = 1}
          }
        }
      },
      west =
      {
        layers = 
        {
          {
            filename = "__boblogistics__/graphics/entity/pipe/hr-pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-left.png",
            width = 56,
            height = 44,
            shift = {0.3125, 0.0625},
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-left-mask.png",
            width = 56,
            height = 44,
            shift = {0.3125, 0.0625},
            tint = {r = 1, g = 0, b = 0, a = 1}
          }
        }
      },
      east =
      {
        layers = 
        {
          {
            filename = "__boblogistics__/graphics/entity/pipe/hr-pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-right.png",
            width = 51,
            height = 56,
            shift = {0.265625, -0.21875},
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-right-mask.png",
            width = 51,
            height = 56,
            shift = {0.265625, -0.21875},
            tint = {r = 1, g = 0, b = 0, a = 1}
          }
        }
        }
      },
      fluid_background =
      {
        filename = "__core__/graphics/empty.png",
        width = 1,
        height = 1,
      },
      window_background =
      {
        filename = "__core__/graphics/empty.png",
        width = 1,
        height = 1,
      },
      flow_sprite =
      {
        filename = "__core__/graphics/empty.png",
        width = 1,
        height = 1,
      },
      gas_flow =
      {
        filename = "__base__/graphics/entity/pipe/steam.png",
        width = 1,
        height = 1,
        frame_count = 1,
      },
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    flow_length_in_ticks = 360,
    circuit_wire_connection_points = circuit_connector_definitions["bob-valve"].points,
    circuit_connector_sprites = circuit_connector_definitions["bob-valve"].sprites,
    circuit_wire_max_distance = 7.5,
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "bob-topup-valve",
    icon = "__boblogistics__/graphics/icons/pipe/topup-valve.png",
    icon_size = 32,
    subgroup = "energy-pipe-distribution",
    order = "a[pipe]-d[topup-valve]",
    place_result = "bob-topup-valve",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "bob-topup-valve",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {"iron-plate", 1},
      {"pipe", 1}
    },
    result= "bob-topup-valve"
  },
  {
    type = "storage-tank",
    name = "bob-topup-valve",
    icon = "__boblogistics__/graphics/icons/pipe/topup-valve.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.1, result = "bob-topup-valve"},
    max_health = 50,
    two_direction_only = false,
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      height = 0.2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          position = {0, -1},
          type="output"
        },
        {
          position = {0, 1},
          type="input"
        }
      },
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    pictures =
    {
      picture =
      {
      north =
      {
        layers = 
        {
          {
            filename = "__boblogistics__/graphics/entity/pipe/hr-pipe-straight-vertical.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-up.png",
            width = 46,
            height = 52,
            shift = {0.09375, 0.03125 + 0.0625},
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-up-mask.png",
            width = 46,
            height = 52,
            shift = {0.09375, 0.03125 + 0.0625},
            tint = {r = 0, g = 1, b = 0, a = 1}
          }
        }
      },
      south =
      {
        layers = 
        {
          {
            filename = "__boblogistics__/graphics/entity/pipe/hr-pipe-straight-vertical.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-down.png",
            width = 61,
            height = 58,
            shift = {0.421875, -0.125},
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-down-mask.png",
            width = 61,
            height = 58,
            shift = {0.421875, -0.125},
            tint = {r = 0, g = 1, b = 0, a = 1}
          }
        }
      },
      west =
      {
        layers = 
        {
          {
            filename = "__boblogistics__/graphics/entity/pipe/hr-pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-left.png",
            width = 56,
            height = 44,
            shift = {0.3125, 0.0625},
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-left-mask.png",
            width = 56,
            height = 44,
            shift = {0.3125, 0.0625},
            tint = {r = 0, g = 1, b = 0, a = 1}
          }
        }
      },
      east =
      {
        layers = 
        {
          {
            filename = "__boblogistics__/graphics/entity/pipe/hr-pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-right.png",
            width = 51,
            height = 56,
            shift = {0.265625, -0.21875},
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-right-mask.png",
            width = 51,
            height = 56,
            shift = {0.265625, -0.21875},
            tint = {r = 0, g = 1, b = 0, a = 1}
          }
        }
        }
      },
      fluid_background =
      {
        filename = "__core__/graphics/empty.png",
        width = 1,
        height = 1,
      },
      window_background =
      {
        filename = "__core__/graphics/empty.png",
        width = 1,
        height = 1,
      },
      flow_sprite =
      {
        filename = "__core__/graphics/empty.png",
        width = 1,
        height = 1,
      },
      gas_flow =
      {
        filename = "__base__/graphics/entity/pipe/steam.png",
        width = 1,
        height = 1,
        frame_count = 1,
      },
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    flow_length_in_ticks = 360,
    circuit_wire_connection_points = circuit_connector_definitions["bob-valve"].points,
    circuit_connector_sprites = circuit_connector_definitions["bob-valve"].sprites,
    circuit_wire_max_distance = 7.5,
  },
}
)
