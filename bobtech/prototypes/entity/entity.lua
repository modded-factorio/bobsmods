data.raw["lab"]["lab"].fast_replaceable_group = "lab"

data:extend({{
  type = "lab",
  name = "lab-2",
  icon = "__bobtech__/graphics/icons/lab2.png",
  icon_size = 32,
  flags = {"placeable-player", "player-creation"},
  minable = {
    mining_time = 0.2,
    result = "lab-2"
  },
  max_health = 250,
  corpse = "lab-remnants",
  dying_explosion = "medium-explosion",
  collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
  selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
  light = {
    intensity = 0.75,
    size = 8
  },
  on_animation = {
    layers = {{
      filename = "__bobtech__/graphics/entity/lab/lab2.png",
      width = 98,
      height = 87,
      frame_count = 33,
      line_length = 11,
      animation_speed = 1 / 3,
      shift = util.by_pixel(0, 1.5),
      hr_version = {
        filename = "__bobtech__/graphics/entity/lab/hr-lab2.png",
        width = 194,
        height = 174,
        frame_count = 33,
        line_length = 11,
        animation_speed = 1 / 3,
        shift = util.by_pixel(0, 1.5),
        scale = 0.5
      }
    }, {
      filename = "__bobtech__/graphics/entity/lab/lab-integration.png",
      width = 122,
      height = 81,
      frame_count = 1,
      line_length = 1,
      repeat_count = 33,
      animation_speed = 1 / 3,
      shift = util.by_pixel(0, 15.5),
      hr_version = {
        filename = "__bobtech__/graphics/entity/lab/hr-lab-integration.png",
        width = 242,
        height = 162,
        frame_count = 1,
        line_length = 1,
        repeat_count = 33,
        animation_speed = 1 / 3,
        shift = util.by_pixel(0, 15.5),
        scale = 0.5
      }
    }, {
      filename = "__bobtech__/graphics/entity/lab/lab-shadow.png",
      width = 122,
      height = 68,
      frame_count = 1,
      line_length = 1,
      repeat_count = 33,
      animation_speed = 1 / 3,
      shift = util.by_pixel(13, 11),
      draw_as_shadow = true,
      hr_version = {
        filename = "__bobtech__/graphics/entity/lab/hr-lab-shadow.png",
        width = 242,
        height = 136,
        frame_count = 1,
        line_length = 1,
        repeat_count = 33,
        animation_speed = 1 / 3,
        shift = util.by_pixel(13, 11),
        scale = 0.5,
        draw_as_shadow = true
      }
    }}
  },
  off_animation = {
    layers = {{
      filename = "__bobtech__/graphics/entity/lab/lab2.png",
      width = 98,
      height = 87,
      frame_count = 1,
      shift = util.by_pixel(0, 1.5),
      hr_version = {
        filename = "__bobtech__/graphics/entity/lab/hr-lab2.png",
        width = 194,
        height = 174,
        frame_count = 1,
        shift = util.by_pixel(0, 1.5),
        scale = 0.5
      }
    }, {
      filename = "__bobtech__/graphics/entity/lab/lab-integration.png",
      width = 122,
      height = 81,
      frame_count = 1,
      shift = util.by_pixel(0, 15.5),
      hr_version = {
        filename = "__bobtech__/graphics/entity/lab/hr-lab-integration.png",
        width = 242,
        height = 162,
        frame_count = 1,
        shift = util.by_pixel(0, 15.5),
        scale = 0.5
      }
    }, {
      filename = "__bobtech__/graphics/entity/lab/lab-shadow.png",
      width = 122,
      height = 68,
      frame_count = 1,
      shift = util.by_pixel(13, 11),
      draw_as_shadow = true,
      hr_version = {
        filename = "__bobtech__/graphics/entity/lab/hr-lab-shadow.png",
        width = 242,
        height = 136,
        frame_count = 1,
        shift = util.by_pixel(13, 11),
        draw_as_shadow = true,
        scale = 0.5
      }
    }}
  },
  working_sound = {
    sound = {
      filename = "__base__/sound/lab.ogg",
      volume = 0.7
    },
    apparent_volume = 1
  },
  energy_source = {
    type = "electric",
    usage_priority = "secondary-input"
  },
  energy_usage = "75kW",
  researching_speed = 2,
  inputs = {
    "automation-science-pack",
    "logistic-science-pack",
    "chemical-science-pack",
    "military-science-pack",
    "production-science-pack",
    "utility-science-pack",
    "space-science-pack"
  },
  module_specification = {
    module_slots = 4,
    max_entity_info_module_icons_per_row = 4,
    max_entity_info_module_icon_rows = 1,
    module_info_icon_shift = {0, 0.9}
  },
  fast_replaceable_group = "lab"
}})

if DiscoScience and DiscoScience.prepareLab then
  DiscoScience.prepareLab(data.raw["lab"]["lab-2"])
end

if settings.startup["bobmods-burnerphase"].value == true then
  data:extend({{
    type = "lab",
    name = "burner-lab",
    icon = "__bobtech__/graphics/icons/lab-red.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {
      mining_time = 0.1,
      result = "burner-lab"
    },
    max_health = 100,
    corpse = "lab-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {
      intensity = 0.75,
      size = 8,
      color = {
        r = 1.0,
        g = 1.0,
        b = 1.0
      }
    },
    on_animation = {
      layers = {{
        filename = "__bobtech__/graphics/entity/lab/lab-red.png",
        width = 98,
        height = 87,
        frame_count = 33,
        line_length = 11,
        animation_speed = 1 / 3,
        shift = util.by_pixel(0, 1.5),
        hr_version = {
          filename = "__bobtech__/graphics/entity/lab/hr-lab-red.png",
          width = 194,
          height = 174,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 1.5),
          scale = 0.5
        }
      }, {
        filename = "__bobtech__/graphics/entity/lab/lab-integration.png",
        width = 122,
        height = 81,
        frame_count = 1,
        line_length = 1,
        repeat_count = 33,
        animation_speed = 1 / 3,
        shift = util.by_pixel(0, 15.5),
        hr_version = {
          filename = "__bobtech__/graphics/entity/lab/hr-lab-integration.png",
          width = 242,
          height = 162,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 15.5),
          scale = 0.5
        }
      }, {
        filename = "__bobtech__/graphics/entity/lab/lab-shadow.png",
        width = 122,
        height = 68,
        frame_count = 1,
        line_length = 1,
        repeat_count = 33,
        animation_speed = 1 / 3,
        shift = util.by_pixel(13, 11),
        draw_as_shadow = true,
        hr_version = {
          filename = "__bobtech__/graphics/entity/lab/hr-lab-shadow.png",
          width = 242,
          height = 136,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(13, 11),
          scale = 0.5,
          draw_as_shadow = true
        }
      }}
    },
    off_animation = {
      layers = {{
        filename = "__bobtech__/graphics/entity/lab/lab-red.png",
        width = 98,
        height = 87,
        frame_count = 1,
        shift = util.by_pixel(0, 1.5),
        hr_version = {
          filename = "__bobtech__/graphics/entity/lab/hr-lab-red.png",
          width = 194,
          height = 174,
          frame_count = 1,
          shift = util.by_pixel(0, 1.5),
          scale = 0.5
        }
      }, {
        filename = "__bobtech__/graphics/entity/lab/lab-integration.png",
        width = 122,
        height = 81,
        frame_count = 1,
        shift = util.by_pixel(0, 15.5),
        hr_version = {
          filename = "__bobtech__/graphics/entity/lab/hr-lab-integration.png",
          width = 242,
          height = 162,
          frame_count = 1,
          shift = util.by_pixel(0, 15.5),
          scale = 0.5
        }
      }, {
        filename = "__bobtech__/graphics/entity/lab/lab-shadow.png",
        width = 122,
        height = 68,
        frame_count = 1,
        shift = util.by_pixel(13, 11),
        draw_as_shadow = true,
        hr_version = {
          filename = "__bobtech__/graphics/entity/lab/hr-lab-shadow.png",
          width = 242,
          height = 136,
          frame_count = 1,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
          scale = 0.5
        }
      }}
    },
    working_sound = {
      sound = {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      apparent_volume = 1
    },
    vehicle_impact_sound = {
      filename = "__base__/sound/car-metal-impact.ogg",
      volume = 0.65
    },
    energy_source = {
      type = "burner",
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 10,
      smoke = {{
        name = "smoke",
        deviation = {0.1, 0.1},
        frequency = 3
      }}
    },
    energy_usage = "90kW",
    researching_speed = 0.75,
    inputs = {},
    fast_replaceable_group = "lab"
  }})

  if DiscoScience and DiscoScience.prepareLab then
    DiscoScience.prepareLab(data.raw["lab"]["burner-lab"])
  end
end