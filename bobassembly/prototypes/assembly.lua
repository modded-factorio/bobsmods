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
    type = "item",
    name = "bob-assembling-machine-4",
    icon = "__bobassembly__/graphics/icons/assembling-machine-4.png",
    icon_size = 32,
    subgroup = "bob-assembly-machine",
    order = "c[bob-assembling-machine-4]",
    place_result = "bob-assembling-machine-4",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/mechanical-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/mechanical-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/mechanical-inventory-pickup.ogg",
      volume = 0.8,
    },
    weight = 40000,
  },

  {
    type = "assembling-machine",
    name = "bob-assembling-machine-4",
    icon = "__bobassembly__/graphics/icons/assembling-machine-4.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "bob-assembling-machine-4" },
    max_health = 400,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
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
        pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 0, -1 } } },
        volume = 1000,
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 0, 1 } } },
        volume = 1000,
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fast_replaceable_group = "assembling-machine",
    next_upgrade = "bob-assembling-machine-5",
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2.png",
            priority = "high",
            width = 214,
            height = 218,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 4),
            scale = 0.5,
          },
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
            priority = "high",
            width = 214,
            height = 237,
            repeat_count = 32,
            shift = util.by_pixel(0, -0.75),
            scale = 0.5,
            tint = { r = 0.65, g = 0.4, b = 0.75 },
          },
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2-shadow.png",
            priority = "high",
            width = 196,
            height = 163,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(12, 4.75),
            scale = 0.5,
          },
        },
      },
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    impact_category = "metal",
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
    },
    crafting_categories = { "basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid" },
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1.5 },
    },
    energy_usage = "300kW",
    module_slots = 4,
    icon_draw_specification = {
      shift = { 0, -0.3 },
    },
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
  },

  {
    type = "recipe",
    name = "bob-assembling-machine-4",
    enabled = false,
    ingredients = {
      { type = "item", name = "assembling-machine-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 3 },
      { type = "item", name = "steel-plate", amount = 9 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
    },
    results = { { type = "item", name = "bob-assembling-machine-4", amount = 1 } },
  },

  {
    type = "technology",
    name = "automation-4",
    icon = "__base__/graphics/technology/automation-1.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-assembling-machine-4",
      },
    },
    prerequisites = {
      "automation-3",
      "processing-unit",
      "production-science-pack",
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 45,
    },
    order = "a-b-d",
  },
})

data:extend({
  {
    type = "item",
    name = "bob-assembling-machine-5",
    icon = "__bobassembly__/graphics/icons/assembling-machine-5.png",
    icon_size = 32,
    subgroup = "bob-assembly-machine",
    order = "c[bob-assembling-machine-5]",
    place_result = "bob-assembling-machine-5",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/mechanical-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/mechanical-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/mechanical-inventory-pickup.ogg",
      volume = 0.8,
    },
    weight = 40000,
  },

  {
    type = "assembling-machine",
    name = "bob-assembling-machine-5",
    icon = "__bobassembly__/graphics/icons/assembling-machine-5.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "bob-assembling-machine-5" },
    max_health = 500,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
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
        pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 0, -1 } } },
        volume = 1000,
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 0, 1 } } },
        volume = 1000,
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    impact_category = "metal",
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
    },
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fast_replaceable_group = "assembling-machine",
    next_upgrade = "bob-assembling-machine-6",
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-3.png",
            priority = "high",
            width = 214,
            height = 237,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, -0.75),
            scale = 0.5,
          },
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
            priority = "high",
            width = 214,
            height = 237,
            repeat_count = 32,
            shift = util.by_pixel(0, -0.75),
            scale = 0.5,
            tint = { r = 0.7, g = 0.2, b = 0.1 },
          },
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-3-shadow.png",
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
      emissions_per_minute = { pollution = 1 },
    },
    energy_usage = "390kW",
    module_slots = 5,
    icons_positioning = {
      {
        inventory_index = defines.inventory.assembling_machine_modules,
        shift = { 0, 0.8 },
        multi_row_initial_height_modifier = -0.3,
        max_icons_per_row = 3,
      },
    },
    icon_draw_specification = {
      shift = { 0, -0.3 },
    },
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
  },

  {
    type = "recipe",
    name = "bob-assembling-machine-5",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-assembling-machine-4", amount = 1 },
      { type = "item", name = "processing-unit", amount = 3 },
      { type = "item", name = "steel-plate", amount = 9 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
    },
    results = { { type = "item", name = "bob-assembling-machine-5", amount = 1 } },
  },

  {
    type = "technology",
    name = "automation-5",
    icon = "__base__/graphics/technology/automation-1.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-assembling-machine-5",
      },
    },
    prerequisites = {
      "automation-4",
      "utility-science-pack",
    },
    unit = {
      count = 120,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 60,
    },
    order = "a-b-e",
  },
})

data:extend({
  {
    type = "item",
    name = "bob-assembling-machine-6",
    icon = "__bobassembly__/graphics/icons/assembling-machine-6.png",
    icon_size = 32,
    subgroup = "bob-assembly-machine",
    order = "c[bob-assembling-machine-6]",
    place_result = "bob-assembling-machine-6",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/mechanical-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/mechanical-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/mechanical-inventory-pickup.ogg",
      volume = 0.8,
    },
    weight = 40000,
  },

  {
    type = "assembling-machine",
    name = "bob-assembling-machine-6",
    icon = "__bobassembly__/graphics/icons/assembling-machine-6.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "bob-assembling-machine-6" },
    max_health = 600,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
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
        pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 0, -1 } } },
        volume = 1000,
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 0, 1 } } },
        volume = 1000,
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    impact_category = "metal",
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
    },
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fast_replaceable_group = "assembling-machine",
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-3.png",
            priority = "high",
            width = 214,
            height = 237,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, -0.75),
            scale = 0.5,
          },
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
            priority = "high",
            width = 214,
            height = 237,
            repeat_count = 32,
            shift = util.by_pixel(0, -0.75),
            scale = 0.5,
            tint = { r = 0.1, g = 0.7, b = 0.1 },
          },
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-3-shadow.png",
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
      emissions_per_minute = { pollution = 0.75 },
    },
    energy_usage = "480kW",
    module_slots = 6,
    icons_positioning = {
      {
        inventory_index = defines.inventory.assembling_machine_modules,
        shift = { 0, 0.8 },
        multi_row_initial_height_modifier = -0.3,
        max_icons_per_row = 3,
      },
    },
    icon_draw_specification = {
      shift = { 0, -0.3 },
    },
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
  },

  {
    type = "recipe",
    name = "bob-assembling-machine-6",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-assembling-machine-5", amount = 1 },
      { type = "item", name = "processing-unit", amount = 3 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "iron-plate", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
    },
    results = { { type = "item", name = "bob-assembling-machine-6", amount = 1 } },
  },

  {
    type = "technology",
    name = "automation-6",
    icon = "__base__/graphics/technology/automation-1.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-assembling-machine-6",
      },
    },
    prerequisites = {
      "automation-5",
      "space-science-pack",
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
      },
      time = 75,
    },
    order = "a-b-f",
  },
})
