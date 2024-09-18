if
  data.raw.item["alien-artifact"]
  and data.raw.item["alien-artifact-blue"]
  and data.raw.item["alien-artifact-orange"]
  and data.raw.item["alien-artifact-purple"]
  and data.raw.item["alien-artifact-yellow"]
  and data.raw.item["alien-artifact-green"]
  and data.raw.item["alien-artifact-red"]
then
  data:extend({
    {
      type = "lab",
      name = "lab-alien",
      icon = "__bobtech__/graphics/icons/lab-alien.png",
      icon_size = 32,
      flags = { "placeable-player", "player-creation" },
      minable = { mining_time = 1, result = "lab-alien" },
      max_health = 200,
      corpse = "lab-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      light = { intensity = 0.75, size = 8 },
      on_animation = {
        layers = {
          {
            filename = "__bobtech__/graphics/entity/lab/lab-alien.png",
            width = 98,
            height = 87,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1.5),
            hr_version = {
              filename = "__bobtech__/graphics/entity/lab/hr-lab-alien.png",
              width = 194,
              height = 174,
              frame_count = 33,
              line_length = 11,
              animation_speed = 1 / 3,
              shift = util.by_pixel(0, 1.5),
              scale = 0.5,
            },
          },
          {
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
              scale = 0.5,
            },
          },
          {
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
              draw_as_shadow = true,
            },
          },
        },
      },
      off_animation = {
        layers = {
          {
            filename = "__bobtech__/graphics/entity/lab/lab-alien.png",
            width = 98,
            height = 87,
            frame_count = 1,
            shift = util.by_pixel(0, 1.5),
            hr_version = {
              filename = "__bobtech__/graphics/entity/lab/hr-lab-alien.png",
              width = 194,
              height = 174,
              frame_count = 1,
              shift = util.by_pixel(0, 1.5),
              scale = 0.5,
            },
          },
          {
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
              scale = 0.5,
            },
          },
          {
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
              scale = 0.5,
            },
          },
        },
      },
      working_sound = {
        sound = {
          filename = "__base__/sound/lab.ogg",
          volume = 0.7,
        },
        apparent_volume = 1,
      },
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
      },
      energy_usage = "75kW",
      researching_speed = 1.5,
      inputs = {
        "science-pack-gold",
        "alien-science-pack",
        "alien-science-pack-blue",
        "alien-science-pack-orange",
        "alien-science-pack-purple",
        "alien-science-pack-yellow",
        "alien-science-pack-green",
        "alien-science-pack-red",
      },
      module_slots = 3,
      icons_positioning = {
        {
          inventory_index = defines.inventory.lab_modules,
          shift = { 0, 0.9 },
        }
      },
      fast_replaceable_group = "lab",
    },
  })

  if mods["DiscoScience"] and DiscoScience and DiscoScience.prepareLab then
    DiscoScience.prepareLab(data.raw["lab"]["lab-alien"])
  end
end
