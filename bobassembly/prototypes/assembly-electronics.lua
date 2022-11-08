if settings.startup["bobmods-assembly-electronicmachines"].value == true then
  data:extend({
    {
      type = "recipe-category",
      name = "electronics",
    },
    {
      type = "recipe-category",
      name = "electronics-machine",
    },
    {
      type = "recipe-category",
      name = "electronics-with-fluid",
    },
  })

  data:extend({
    {
      type = "item",
      name = "electronics-machine-1",
      icon = "__bobassembly__/graphics/icons/electronics-machine-1.png",
      icon_size = 32,
      subgroup = "bob-assembly-machine",
      order = "d[electronics-machine-1]",
      place_result = "electronics-machine-1",
      stack_size = 50,
    },

    {
      type = "assembling-machine",
      name = "electronics-machine-1",
      icon = "__bobassembly__/graphics/icons/electronics-machine-1.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "electronics-machine-1" },
      max_health = 250,
      corpse = "medium-remnants",
      dying_explosion = "medium-explosion",
      resistances = {
        {
          type = "fire",
          percent = 70,
        },
      },
      collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
      selection_box = { { -1, -1 }, { 1, 1 } },
      fast_replaceable_group = "assembling-machine",
      next_upgrade = "electronics-machine-2",
      animation = {
        layers = {
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-1.png",
            priority = "high",
            width = 108,
            height = 114,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 2 * 2 / 3),
            scale = 2 / 3,
            hr_version = {
              filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-1.png",
              priority = "high",
              width = 214,
              height = 226,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, 2 * 2 / 3),
              scale = 1 / 3,
            },
          },
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
            priority = "high",
            width = 142,
            height = 113,
            repeat_count = 32,
            shift = { 0.84 * 2 / 3, -0.09 * 2 / 3 },
            scale = 2 / 3,
            tint = { r = 0.1, g = 0.5, b = 0.7 },
          },
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-1-shadow.png",
            priority = "high",
            width = 95,
            height = 83,
            frame_count = 1,
            line_length = 1,
            repeat_count = 32,
            draw_as_shadow = true,
            shift = util.by_pixel(8.5 * 2 / 3, 5.5 * 2 / 3),
            scale = 2 / 3,
            hr_version = {
              filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-1-shadow.png",
              priority = "high",
              width = 190,
              height = 165,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              draw_as_shadow = true,
              shift = util.by_pixel(8.5 * 2 / 3, 5 * 2 / 3),
              scale = 1 / 3,
            },
          },
        },
      },
      open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
      close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/assembling-machine-t2-1.ogg",
            volume = 0.8,
          },
          {
            filename = "__base__/sound/assembling-machine-t2-2.ogg",
            volume = 0.8,
          },
        },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
        apparent_volume = 1.5,
      },
      crafting_categories = { "electronics", "electronics-machine" },
      crafting_speed = 1,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 2,
      },
      energy_usage = "100kW",
      module_specification = {
        module_slots = 2,
      },
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    },

    {
      type = "recipe",
      name = "electronics-machine-1",
      enabled = false,
      ingredients = {
        { "electronic-circuit", 5 },
        { "iron-plate", 5 },
        { "iron-gear-wheel", 5 },
      },
      result = "electronics-machine-1",
    },

    {
      type = "technology",
      name = "electronics-machine-1",
      icon = "__base__/graphics/technology/automation-1.png",
      icon_size = 256,
      icon_mipmaps = 4,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "electronics-machine-1",
        },
      },
      prerequisites = {
        "automation",
      },
      unit = {
        count = 30,
        ingredients = {
          { "automation-science-pack", 1 },
        },
        time = 15,
      },
      order = "a-c-a",
    },
  })

  data:extend({
    {
      type = "item",
      name = "electronics-machine-2",
      icon = "__bobassembly__/graphics/icons/electronics-machine-2.png",
      icon_size = 32,
      subgroup = "bob-assembly-machine",
      order = "d[electronics-machine-2]",
      place_result = "electronics-machine-2",
      stack_size = 50,
    },

    {
      type = "assembling-machine",
      name = "electronics-machine-2",
      icon = "__bobassembly__/graphics/icons/electronics-machine-2.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "electronics-machine-2" },
      max_health = 350,
      corpse = "medium-remnants",
      dying_explosion = "medium-explosion",
      resistances = {
        {
          type = "fire",
          percent = 70,
        },
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = { { type = "input", position = { 0.5, -1.5 } } },
        },
        off_when_no_fluid_recipe = true,
      },
      collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
      selection_box = { { -1, -1 }, { 1, 1 } },
      fast_replaceable_group = "assembling-machine",
      next_upgrade = "electronics-machine-3",
      animation = {
        layers = {
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2.png",
            priority = "high",
            width = 108,
            height = 110,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 4 * 2 / 3),
            scale = 2 / 3,
            hr_version = {
              filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-2.png",
              priority = "high",
              width = 214,
              height = 218,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, 4 * 2 / 3),
              scale = 1 / 3,
            },
          },
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
            priority = "high",
            width = 142,
            height = 113,
            repeat_count = 32,
            shift = { 0.84 * 2 / 3, -0.09 * 2 / 3 },
            scale = 2 / 3,
            tint = { r = 0.7, g = 0.2, b = 0.1 },
          },
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2-shadow.png",
            priority = "high",
            width = 98,
            height = 82,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(12 * 2 / 3, 5 * 2 / 3),
            scale = 2 / 3,
            hr_version = {
              filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-2-shadow.png",
              priority = "high",
              width = 196,
              height = 163,
              frame_count = 32,
              line_length = 8,
              draw_as_shadow = true,
              shift = util.by_pixel(12 * 2 / 3, 4.75 * 2 / 3),
              scale = 1 / 3,
            },
          },
        },
      },
      open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
      close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/assembling-machine-t3-1.ogg",
            volume = 0.8,
          },
          {
            filename = "__base__/sound/assembling-machine-t3-2.ogg",
            volume = 0.8,
          },
        },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
        apparent_volume = 1.5,
      },
      crafting_categories = { "electronics", "electronics-machine", "electronics-with-fluid" },
      crafting_speed = 2.25,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
      },
      energy_usage = "213.75kW",
      module_specification = {
        module_slots = 4,
      },
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    },

    {
      type = "recipe",
      name = "electronics-machine-2",
      enabled = false,
      ingredients = {
        { "electronics-machine-1", 1 },
        { "advanced-circuit", 5 },
        { "steel-plate", 5 },
        { "iron-gear-wheel", 5 },
      },
      result = "electronics-machine-2",
    },

    {
      type = "technology",
      name = "electronics-machine-2",
      icon = "__base__/graphics/technology/automation-1.png",
      icon_size = 256,
      icon_mipmaps = 4,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "electronics-machine-2",
        },
      },
      prerequisites = {
        "electronics-machine-1",
        "steel-processing",
        "advanced-electronics",
      },
      unit = {
        count = 50,
        time = 30,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
      },
      order = "a-c-b",
    },
  })

  data:extend({
    {
      type = "item",
      name = "electronics-machine-3",
      icon = "__bobassembly__/graphics/icons/electronics-machine-3.png",
      icon_size = 32,
      subgroup = "bob-assembly-machine",
      order = "d[electronics-machine-3]",
      place_result = "electronics-machine-3",
      stack_size = 50,
    },

    {
      type = "assembling-machine",
      name = "electronics-machine-3",
      icon = "__bobassembly__/graphics/icons/electronics-machine-3.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "electronics-machine-3" },
      max_health = 450,
      corpse = "medium-remnants",
      dying_explosion = "medium-explosion",
      resistances = {
        {
          type = "fire",
          percent = 70,
        },
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = { { type = "input", position = { 0.5, -1.5 } } },
        },
        off_when_no_fluid_recipe = true,
      },
      collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
      selection_box = { { -1, -1 }, { 1, 1 } },
      fast_replaceable_group = "assembling-machine",
      animation = {
        layers = {
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-3.png",
            priority = "high",
            width = 108,
            height = 119,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, -0.5 * 2 / 3),
            scale = 2 / 3,
            hr_version = {
              filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-3.png",
              priority = "high",
              width = 214,
              height = 237,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, -0.75 * 2 / 3),
              scale = 1 / 3,
            },
          },
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
            priority = "high",
            width = 142,
            height = 113,
            repeat_count = 32,
            shift = { 0.84 * 2 / 3, -0.09 * 2 / 3 },
            scale = 2 / 3,
            tint = { r = 0.1, g = 0.7, b = 0.1 },
          },
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-3-shadow.png",
            priority = "high",
            width = 130,
            height = 82,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(28 * 2 / 3, 4 * 2 / 3),
            scale = 2 / 3,
            hr_version = {
              filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-3-shadow.png",
              priority = "high",
              width = 260,
              height = 162,
              frame_count = 32,
              line_length = 8,
              draw_as_shadow = true,
              shift = util.by_pixel(28 * 2 / 3, 4 * 2 / 3),
              scale = 1 / 3,
            },
          },
        },
      },
      open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
      close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/assembling-machine-t3-1.ogg",
            volume = 0.8,
          },
          {
            filename = "__base__/sound/assembling-machine-t3-2.ogg",
            volume = 0.8,
          },
        },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
        apparent_volume = 1.5,
      },
      crafting_categories = { "electronics", "electronics-machine", "electronics-with-fluid" },
      crafting_speed = 4,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.5,
      },
      energy_usage = "360kW",
      module_specification = {
        module_slots = 6,
      },
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    },

    {
      type = "recipe",
      name = "electronics-machine-3",
      enabled = false,
      ingredients = {
        { "electronics-machine-2", 1 },
        { "processing-unit", 5 },
        { "steel-plate", 5 },
        { "iron-gear-wheel", 5 },
      },
      result = "electronics-machine-3",
    },

    {
      type = "technology",
      name = "electronics-machine-3",
      icon = "__base__/graphics/technology/automation-1.png",
      icon_size = 256,
      icon_mipmaps = 4,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "electronics-machine-3",
        },
      },
      prerequisites = {
        "electronics-machine-2",
        "advanced-electronics-2",
        "production-science-pack",
      },
      unit = {
        count = 100,
        time = 45,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
      },
      order = "a-c-c",
    },
  })
end
