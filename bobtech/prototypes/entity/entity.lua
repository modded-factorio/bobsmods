data.raw["lab"]["lab"].fast_replaceable_group = "lab"

data:extend({
  {
    type = "lab",
    name = "bob-lab-2",
    icon = "__bobtech__/graphics/icons/lab2.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.2, result = "bob-lab-2" },
    max_health = 250,
    corpse = "lab-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    on_animation = {
      layers = {
        {
          filename = "__bobtech__/graphics/entity/lab/lab2.png",
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
          filename = "__bobtech__/graphics/entity/lab/lab2-light.png",
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
          filename = "__bobtech__/graphics/entity/lab/lab2.png",
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
    researching_speed = 2,
    inputs = {
      "automation-science-pack",
      "logistic-science-pack",
      "military-science-pack",
      "chemical-science-pack",
      "production-science-pack",
      "utility-science-pack",
      "space-science-pack",
    },
    module_slots = 4,
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
  DiscoScience.prepareLab(data.raw["lab"]["bob-lab-2"])
end

if settings.startup["bobmods-burnerphase"].value == true then
  data:extend({
    {
      type = "lab",
      name = "bob-burner-lab",
      icon = "__bobtech__/graphics/icons/lab-red.png",
      flags = { "placeable-player", "player-creation" },
      minable = { mining_time = 0.1, result = "bob-burner-lab" },
      max_health = 100,
      corpse = "lab-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      on_animation = {
        layers = {
          {
            filename = "__bobtech__/graphics/entity/lab/lab-red.png",
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
            filename = "__bobtech__/graphics/entity/lab/lab-red.png",
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
        type = "burner",
        fuel_categories = { "chemical" },
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = { pollution = 10 },
        smoke = {
          {
            name = "smoke",
            deviation = { 0.1, 0.1 },
            frequency = 3,
          },
        },
      },
      energy_usage = "90kW",
      researching_speed = 0.75,
      inputs = {},
      icons_positioning = {
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
    DiscoScience.prepareLab(data.raw["lab"]["bob-burner-lab"])
  end

  if not data.raw["burner-generator"]["bob-burner-generator"] then
    data:extend({
      {
        type = "burner-generator",
        name = "bob-burner-generator",
        icon = "__bobtech__/graphics/icons/burner-generator.png",
        icon_size = 64,
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 0.5, result = "bob-burner-generator" },
        max_health = 200,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        max_power_output = "400kW",
        resistances = {
          {
            type = "fire",
            percent = 70,
          },
          {
            type = "impact",
            percent = 30,
          },
        },
        fast_replaceable_group = "burner-generator",
        collision_box = { { -1.35, -1.35 }, { 1.35, 1.35 } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        drawing_box_vertical_extension = 0.8,
        energy_source = {
          type = "electric",
          usage_priority = "secondary-output",
        },
        burner = {
          type = "burner",
          fuel_categories = { "chemical" },
          effectivity = 0.75,
          fuel_inventory_size = 1,
          emissions_per_minute = { pollution = 15 },
          smoke = {
            {
              name = "smoke",
              position = util.by_pixel(0, -50),
              frequency = 15,
              starting_vertical_speed = 0.0,
              starting_frame_deviation = 60,
            },
          },
        },
        idle_animation = {
          filename = "__bobtech__/graphics/entity/burner-generator/burner-generator.png",
          priority = "extra-high",
          width = 180,
          height = 190,
          frame_count = 1,
          repeat_count = 12,
          shift = util.by_pixel(40, 12),
        },
        animation = {
          layers = {
            {
              filename = "__bobtech__/graphics/entity/burner-generator/burner-generator.png",
              priority = "extra-high",
              width = 180,
              height = 190,
              frame_count = 1,
              repeat_count = 12,
              shift = util.by_pixel(40, 12),
            },
            {
              filename = "__bobtech__/graphics/entity/burner-generator/burner-generator-fire.png",
              priority = "high",
              width = 36,
              height = 19,
              frame_count = 12,
              shift = util.by_pixel(2, 37.5),
            },
          },
        },
        impact_category = "metal-large",
        working_sound = {
          sound = {
            filename = "__base__/sound/steam-engine-90bpm.ogg",
            volume = 0.6,
          },
          match_speed_to_activity = true,
        },
        perceived_performance = {
          minimum = 0.25,
          performance_to_activity_rate = 2,
        },
      },
    })
  end
end
