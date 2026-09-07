data:extend({
  {
    type = "item-subgroup",
    name = "bob-assembly-machine",
    group = "production",
    order = "e-b",
  },
})

--        tint = {r = 0.7, g = 0.7, b = 0.1},
--        tint = {r = 0.7, g = 0.2, b = 0.1},
--        tint = {r = 0.1, g = 0.5, b = 0.7},
--        tint = {r = 0.7, g = 0.1, b = 0.7},
--        tint = {r = 0.1, g = 0.7, b = 0.1},

local assembler_shadow = {
  draw_as_shadow = true,
  filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-shadow.png",
  width = 54,
  height = 160,
  line_length = 1,
  priority = "high",
  repeat_count = 64,
  scale = 0.5,
  shift = { 1.421875, 0.015625 },
}
local assembler_light = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"].graphics_set.working_visualisations)
local assembler_pipes = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes)

data.raw.item["assembling-machine-1"].weight = 20000

data.raw.item["assembling-machine-2"].icon = "__bobassembly__/graphics/icons/assembling-machine-2.png"
data.raw.item["assembling-machine-2"].icon_size = 32
data.raw.item["assembling-machine-2"].weight = 20000
data.raw["assembling-machine"]["assembling-machine-2"].icon = "__bobassembly__/graphics/icons/assembling-machine-2.png"
data.raw["assembling-machine"]["assembling-machine-2"].icon_size = 32
data.raw["assembling-machine"]["assembling-machine-2"].graphics_set.animation.layers = {
  {
    filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2-base-yellow.png",
    width = 200,
    height = 188,
    line_length = 1,
    priority = "high",
    repeat_count = 64,
    scale = 0.5,
    shift = { 0, 0.078125 },
  },
  {
    filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2-anim-yellow.png",
    width = 148,
    height = 158,
    line_length = 8,
    priority = "high",
    frame_count = 64,
    scale = 0.5,
    shift = { 0.046875, -0.484375 },
  },
  assembler_shadow,
}

data.raw.item["assembling-machine-3"].icon = "__bobassembly__/graphics/icons/assembling-machine-3.png"
data.raw.item["assembling-machine-3"].icon_size = 32
data.raw.item["assembling-machine-3"].weight = 20000
data.raw["assembling-machine"]["assembling-machine-3"].icon = "__bobassembly__/graphics/icons/assembling-machine-3.png"
data.raw["assembling-machine"]["assembling-machine-3"].icon_size = 32
data.raw["assembling-machine"]["assembling-machine-3"].graphics_set.animation.layers = {
  {
    filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2-base-red.png",
    width = 200,
    height = 188,
    line_length = 1,
    priority = "high",
    repeat_count = 64,
    scale = 0.5,
    shift = { 0, 0.078125 },
  },
  {
    filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2-anim-red.png",
    width = 148,
    height = 158,
    line_length = 8,
    priority = "high",
    frame_count = 64,
    scale = 0.5,
    shift = { 0.046875, -0.484375 },
  },
  assembler_shadow,
}
data.raw["assembling-machine"]["assembling-machine-3"].graphics_set.working_visualisations = assembler_light

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
    weight = 20000,
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
    fluid_boxes = assembler_pipes,
    fluid_boxes_off_when_no_fluid_recipe = true,
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fast_replaceable_group = "assembling-machine",
    next_upgrade = "bob-assembling-machine-5",
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-base.png",
            width = 200,
            height = 188,
            line_length = 1,
            priority = "high",
            repeat_count = 64,
            scale = 0.5,
            shift = { 0, 0.078125 },
          },
          {
            filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-anim.png",
            width = 148,
            height = 158,
            line_length = 8,
            priority = "high",
            frame_count = 64,
            scale = 0.5,
            shift = { 0.046875, -0.484375 },
          },
          assembler_shadow,
        },
      },
      working_visualisations = assembler_light,
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
    crafting_categories = { "crafting", "advanced-crafting", "crafting-with-fluid" },
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
    weight = 20000,
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
    fluid_boxes = assembler_pipes,
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
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2-base-purple.png",
            width = 200,
            height = 188,
            line_length = 1,
            priority = "high",
            repeat_count = 64,
            scale = 0.5,
            shift = { 0, 0.078125 },
          },
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2-anim-purple.png",
            width = 148,
            height = 158,
            line_length = 8,
            priority = "high",
            frame_count = 64,
            scale = 0.5,
            shift = { 0.046875, -0.484375 },
          },
          assembler_shadow,
        },
      },
      working_visualisations = assembler_light,
    },
    crafting_categories = { "crafting", "advanced-crafting", "crafting-with-fluid" },
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
        inventory_index = defines.inventory.crafter_modules,
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
    weight = 20000,
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
    fluid_boxes = assembler_pipes,
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
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2-base-green.png",
            width = 200,
            height = 188,
            line_length = 1,
            priority = "high",
            repeat_count = 64,
            scale = 0.5,
            shift = { 0, 0.078125 },
          },
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2-anim-green.png",
            width = 148,
            height = 158,
            line_length = 8,
            priority = "high",
            frame_count = 64,
            scale = 0.5,
            shift = { 0.046875, -0.484375 },
          },
          assembler_shadow,
        },
      },
      working_visualisations = assembler_light,
    },
    crafting_categories = { "crafting", "advanced-crafting", "crafting-with-fluid" },
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
        inventory_index = defines.inventory.crafter_modules,
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

if feature_flags["freezing"] then
  data.raw["assembling-machine"]["bob-assembling-machine-4"].heating_energy = "100kW"
  data.raw["assembling-machine"]["bob-assembling-machine-5"].heating_energy = "100kW"
  data.raw["assembling-machine"]["bob-assembling-machine-6"].heating_energy = "100kW"
  if mods["space-age"] then
    data.raw["assembling-machine"]["bob-assembling-machine-4"].graphics_set.reset_animation_when_frozen = true
    data.raw["assembling-machine"]["bob-assembling-machine-5"].graphics_set.reset_animation_when_frozen = true
    data.raw["assembling-machine"]["bob-assembling-machine-6"].graphics_set.reset_animation_when_frozen = true
    data.raw["assembling-machine"]["assembling-machine-3"].graphics_set.frozen_patch =
      util.sprite_load("__space-age__/graphics/entity/frozen/assembling-machine/assembling-machine-2-frozen", {
        priority = "high",
        scale = 0.5,
      })
    data.raw["assembling-machine"]["bob-assembling-machine-4"].graphics_set.frozen_patch =
      util.sprite_load("__space-age__/graphics/entity/frozen/assembling-machine/assembling-machine-2-frozen", {
        priority = "high",
        scale = 0.5,
      })
    data.raw["assembling-machine"]["bob-assembling-machine-5"].graphics_set.frozen_patch =
      util.sprite_load("__space-age__/graphics/entity/frozen/assembling-machine/assembling-machine-2-frozen", {
        priority = "high",
        scale = 0.5,
      })
    data.raw["assembling-machine"]["bob-assembling-machine-6"].graphics_set.frozen_patch =
      util.sprite_load("__space-age__/graphics/entity/frozen/assembling-machine/assembling-machine-2-frozen", {
        priority = "high",
        scale = 0.5,
      })

    local function frozenpatch()
      local result =
        util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes[1].pipe_picture_frozen)
      return result
    end
    local function frozenpatchcovers()
      local result =
        util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes[1].pipe_covers_frozen)
      return result
    end
    data.raw["assembling-machine"]["bob-assembling-machine-4"].fluid_boxes[1].pipe_picture_frozen = frozenpatch()
    data.raw["assembling-machine"]["bob-assembling-machine-4"].fluid_boxes[2].pipe_picture_frozen = frozenpatch()
    data.raw["assembling-machine"]["bob-assembling-machine-4"].fluid_boxes[1].pipe_covers_frozen = frozenpatchcovers()
    data.raw["assembling-machine"]["bob-assembling-machine-4"].fluid_boxes[2].pipe_covers_frozen = frozenpatchcovers()
    data.raw["assembling-machine"]["bob-assembling-machine-5"].fluid_boxes[1].pipe_picture_frozen = frozenpatch()
    data.raw["assembling-machine"]["bob-assembling-machine-5"].fluid_boxes[2].pipe_picture_frozen = frozenpatch()
    data.raw["assembling-machine"]["bob-assembling-machine-5"].fluid_boxes[1].pipe_covers_frozen = frozenpatchcovers()
    data.raw["assembling-machine"]["bob-assembling-machine-5"].fluid_boxes[2].pipe_covers_frozen = frozenpatchcovers()
    data.raw["assembling-machine"]["bob-assembling-machine-6"].fluid_boxes[1].pipe_picture_frozen = frozenpatch()
    data.raw["assembling-machine"]["bob-assembling-machine-6"].fluid_boxes[2].pipe_picture_frozen = frozenpatch()
    data.raw["assembling-machine"]["bob-assembling-machine-6"].fluid_boxes[1].pipe_covers_frozen = frozenpatchcovers()
    data.raw["assembling-machine"]["bob-assembling-machine-6"].fluid_boxes[2].pipe_covers_frozen = frozenpatchcovers()
  end
end
