data:extend({
  {
    type = "item-subgroup",
    name = "bob-assembly-machine",
    group = "production",
    order = "e-b",
  },
})

data:extend({
  {
    type = "recipe-category",
    name = "crafting-machine",
  },
})

data:extend({
  {
    type = "item",
    name = "assembling-machine-4",
    icon = "__bobassembly__/graphics/icons/assembling-machine-4.png",
    icon_size = 32,
    subgroup = "bob-assembly-machine",
    order = "c[assembling-machine-4]",
    place_result = "assembling-machine-4",
    stack_size = 50,
  },

  {
    type = "assembling-machine",
    name = "assembling-machine-4",
    icon = "__bobassembly__/graphics/icons/assembling-machine-4.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "assembling-machine-4" },
    max_health = 400,
    corpse = "big-remnants",
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
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = { { type = "input", position = { 0, -2 } } },
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = { { type = "output", position = { 0, 2 } } },
      },
      off_when_no_fluid_recipe = true,
    },
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fast_replaceable_group = "assembling-machine",
    next_upgrade = "assembling-machine-5",
    animation = {
      filename = "__bobassembly__/graphics/entity/assembling-machine-4/assembling-machine-4.png",
      priority = "high",
      width = 113,
      height = 99,
      frame_count = 32,
      line_length = 8,
      shift = { 0.4, -0.06 },
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
    crafting_categories = { "basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid" },
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1.5,
    },
    energy_usage = "300kW",
    module_specification = {
      module_slots = 4,
      module_info_icon_shift = { 0, 0.5 },
      module_info_multi_row_initial_height_modifier = -0.3,
    },
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
  },

  {
    type = "recipe",
    name = "assembling-machine-4",
    enabled = false,
    ingredients = {
      { "assembling-machine-3", 1 },
      { "advanced-circuit", 3 },
      { "steel-plate", 9 },
      { "iron-gear-wheel", 5 },
    },
    result = "assembling-machine-4",
  },

  {
    type = "technology",
    name = "automation-4",
    icon = "__base__/graphics/technology/automation-1.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-4",
      },
    },
    prerequisites = {
      "automation-3",
      "chemical-science-pack",
    },
    unit = {
      count = 80,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 45,
    },
    order = "a-b-d",
  },
})

data:extend({
  {
    type = "item",
    name = "assembling-machine-5",
    icon = "__bobassembly__/graphics/icons/assembling-machine-5.png",
    icon_size = 32,
    subgroup = "bob-assembly-machine",
    order = "c[assembling-machine-5]",
    place_result = "assembling-machine-5",
    stack_size = 50,
  },

  {
    type = "assembling-machine",
    name = "assembling-machine-5",
    icon = "__bobassembly__/graphics/icons/assembling-machine-5.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "assembling-machine-5" },
    max_health = 500,
    corpse = "big-remnants",
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
        pipe_connections = { { type = "input", position = { 0, -2 } } },
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = { { type = "output", position = { 0, 2 } } },
      },
      off_when_no_fluid_recipe = true,
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
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fast_replaceable_group = "assembling-machine",
    next_upgrade = "assembling-machine-6",
    animation = {
      layers = {
        {
          filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-3.png",
          priority = "high",
          width = 108,
          height = 119,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, -0.5),
          hr_version = {
            filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-3.png",
            priority = "high",
            width = 214,
            height = 237,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, -0.75),
            scale = 0.5,
          },
        },
        {
          filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
          priority = "high",
          width = 142,
          height = 113,
          repeat_count = 32,
          shift = { 0.84, -0.09 },
          tint = { r = 0.7, g = 0.2, b = 0.1 },
        },
        {
          filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-3-shadow.png",
          priority = "high",
          width = 130,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(28, 4),
          hr_version = {
            filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-3-shadow.png",
            priority = "high",
            width = 260,
            height = 162,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 4),
            scale = 0.5,
          },
        },
      },
    },
    crafting_categories = { "basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid" },
    crafting_speed = 2.75,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1,
    },
    energy_usage = "390kW",
    module_specification = {
      module_slots = 5,
      module_info_icon_shift = { 0, 0.5 },
      module_info_multi_row_initial_height_modifier = -0.3,
    },
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
  },

  {
    type = "recipe",
    name = "assembling-machine-5",
    enabled = false,
    ingredients = {
      { "assembling-machine-4", 1 },
      { "processing-unit", 3 },
      { "steel-plate", 9 },
      { "iron-gear-wheel", 5 },
    },
    result = "assembling-machine-5",
  },

  {
    type = "technology",
    name = "automation-5",
    icon = "__base__/graphics/technology/automation-1.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-5",
      },
    },
    prerequisites = {
      "automation-4",
      "advanced-electronics-2",
      "production-science-pack",
    },
    unit = {
      count = 120,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 60,
    },
    order = "a-b-e",
  },
})

data:extend({
  {
    type = "item",
    name = "assembling-machine-6",
    icon = "__bobassembly__/graphics/icons/assembling-machine-6.png",
    icon_size = 32,
    subgroup = "bob-assembly-machine",
    order = "c[assembling-machine-6]",
    place_result = "assembling-machine-6",
    stack_size = 50,
  },

  {
    type = "assembling-machine",
    name = "assembling-machine-6",
    icon = "__bobassembly__/graphics/icons/assembling-machine-6.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "assembling-machine-6" },
    max_health = 600,
    corpse = "big-remnants",
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
        pipe_connections = { { type = "input", position = { 0, -2 } } },
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = { { type = "output", position = { 0, 2 } } },
      },
      off_when_no_fluid_recipe = true,
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
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
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
          shift = util.by_pixel(0, -0.5),
          hr_version = {
            filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-3.png",
            priority = "high",
            width = 214,
            height = 237,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, -0.75),
            scale = 0.5,
          },
        },
        {
          filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
          priority = "high",
          width = 142,
          height = 113,
          repeat_count = 32,
          shift = { 0.84, -0.09 },
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
          shift = util.by_pixel(28, 4),
          hr_version = {
            filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-3-shadow.png",
            priority = "high",
            width = 260,
            height = 162,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 4),
            scale = 0.5,
          },
        },
      },
    },
    crafting_categories = { "basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid" },
    crafting_speed = 3.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.75,
    },
    energy_usage = "480kW",
    module_specification = {
      module_slots = 6,
      module_info_icon_shift = { 0, 0.5 },
      module_info_multi_row_initial_height_modifier = -0.3,
    },
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
  },

  {
    type = "recipe",
    name = "assembling-machine-6",
    enabled = false,
    ingredients = {
      { "assembling-machine-5", 1 },
      { "processing-unit", 3 },
      { "steel-plate", 5 },
      { "iron-plate", 5 },
      { "iron-gear-wheel", 5 },
    },
    result = "assembling-machine-6",
  },

  {
    type = "technology",
    name = "automation-6",
    icon = "__base__/graphics/technology/automation-1.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-6",
      },
    },
    prerequisites = {
      "automation-5",
      "utility-science-pack",
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 75,
    },
    order = "a-b-f",
  },
})
