if
  data.raw.item["bob-alien-artifact"]
  and data.raw.item["bob-alien-artifact-blue"]
  and data.raw.item["bob-alien-artifact-orange"]
  and data.raw.item["bob-alien-artifact-purple"]
  and data.raw.item["bob-alien-artifact-yellow"]
  and data.raw.item["bob-alien-artifact-green"]
  and data.raw.item["bob-alien-artifact-red"]
then
  data:extend({
    {
      type = "lab",
      name = "bob-lab-alien",
      icon = "__bobtech__/graphics/icons/lab-alien.png",
      flags = { "placeable-player", "player-creation" },
      minable = { mining_time = 1, result = "bob-lab-alien" },
      max_health = 200,
      corpse = "lab-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      on_animation = {
        layers = {
          {
            filename = "__bobtech__/graphics/entity/lab/lab-alien.png",
            width = 194,
            height = 174,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5,
          },
          {
            filename = "__bobtech__/graphics/entity/lab/lab-integration.png",
            width = 242,
            height = 162,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 15.5),
            scale = 0.5,
          },
          {
            filename = "__bobtech__/graphics/entity/lab/lab-alien-light.png",
            width = 216,
            height = 194,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            blend_mode = "additive",
            draw_as_light = true,
            shift = { 0, 0 },
            scale = 0.5,
          },
          {
            filename = "__bobtech__/graphics/entity/lab/lab-shadow.png",
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
      off_animation = {
        layers = {
          {
            filename = "__bobtech__/graphics/entity/lab/lab-alien.png",
            width = 194,
            height = 174,
            frame_count = 1,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5,
          },
          {
            filename = "__bobtech__/graphics/entity/lab/lab-integration.png",
            width = 242,
            height = 162,
            frame_count = 1,
            shift = util.by_pixel(0, 15.5),
            scale = 0.5,
          },
          {
            filename = "__bobtech__/graphics/entity/lab/lab-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            shift = util.by_pixel(13, 11),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      working_sound = {
        fade_in_ticks = 4,
        fade_out_ticks = 20,
        sound = {
          filename = "__base__/sound/lab.ogg",
          volume = 0.7,
          modifiers = {
            {
              type = "main-menu",
              volume_multiplier = 2.2,
            },
            {
              type = "tips-and-tricks",
              volume_multiplier = 0.8,
            },
          },
        },
      },
      open_sound = {
        filename = "__base__/sound/open-close/lab-open.ogg",
        volume = 0.6,
      },
      close_sound = {
        filename = "__base__/sound/open-close/lab-close.ogg",
        volume = 0.6,
      },
      impact_category = "glass",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
      },
      energy_usage = "75kW",
      researching_speed = 1.5,
      inputs = {
        "bob-science-pack-gold",
        "bob-alien-science-pack",
        "bob-alien-science-pack-blue",
        "bob-alien-science-pack-orange",
        "bob-alien-science-pack-purple",
        "bob-alien-science-pack-yellow",
        "bob-alien-science-pack-green",
        "bob-alien-science-pack-red",
        "space-science-pack",
      },
      module_slots = 3,
      icons_positioning = {
        {
          inventory_index = defines.inventory.lab_modules,
          shift = { 0, 0.9 },
        },
        {
          inventory_index = defines.inventory.lab_input,
          shift = { 0, 0 },
          max_icons_per_row = 4,
          separation_multiplier = 1 / 1.1,
        },
      },
      fast_replaceable_group = "lab",
    },
  })

  if mods["DiscoScience"] and DiscoScience and DiscoScience.prepareLab then
    DiscoScience.prepareLab(data.raw["lab"]["bob-lab-alien"])
  end
end
