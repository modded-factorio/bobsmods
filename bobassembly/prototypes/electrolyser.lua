if
  settings.startup["bobmods-assembly-electrolysers"].value
  and data.raw.technology["bob-electrolysis-1"]
  and data.raw.item["bob-electrolyser"]
  and data.raw["recipe-category"]["bob-electrolysis"]
then
  data:extend({
    {
      type = "item-subgroup",
      name = "bob-electrolyser-machine",
      group = "production",
      order = "e-d",
    },
  })

  data.raw.item["bob-electrolyser"].subgroup = "bob-electrolyser-machine"

  local function bob_electrolyser_fluid_boxes()
    return {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { -1, -1 } } },
        volume = 1000,
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 1, -1 } } },
        volume = 1000,
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { -1, 1 } } },
        volume = 1000,
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 1, 1 } } },
        volume = 1000,
      },
    }
  end

  local function bob_electrolyser_animation_facing(directory, tier, tint, facing)
    return {
      layers = {
        -- Base
        {
          filename = directory .. "/electrolyser-" .. tier .. "-base.png",
          x = 272 * facing,
          width = 272,
          height = 260,
          frame_count = 1,
          shift = util.by_pixel(17, 0),
          scale = 0.5,
        },
        -- Mask
        {
          filename = directory .. "/electrolyser-" .. tier .. "-mask.png",
          x = 272 * facing,
          width = 272,
          height = 260,
          frame_count = 1,
          shift = util.by_pixel(17, 0),
          tint = tint,
          scale = 0.5,
        },
        -- Highlights
        {
          filename = directory .. "/electrolyser-" .. tier .. "-highlights.png",
          x = 272 * facing,
          width = 272,
          height = 260,
          frame_count = 1,
          shift = util.by_pixel(17, 0),
          blend_mode = "additive",
          scale = 0.5,
        },
        -- Shadow
        {
          filename = directory .. "/electrolyser-" .. tier .. "-shadow.png",
          x = 272 * facing,
          width = 272,
          height = 260,
          frame_count = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(17, 0),
          scale = 0.5,
        },
      },
    }
  end

  local function bob_electrolyser_animation(directory, tier, tint)
    return {
      north = bob_electrolyser_animation_facing(directory, tier, tint, 0),
      east = bob_electrolyser_animation_facing(directory, tier, tint, 1),
      south = bob_electrolyser_animation_facing(directory, tier, tint, 2),
      west = bob_electrolyser_animation_facing(directory, tier, tint, 3),
    }
  end

  data:extend({
    {
      type = "item",
      name = "bob-electrolyser-2",
      icon = "__bobassembly__/graphics/icons/electrolyser-2.png",
      icon_size = 32,
      subgroup = "bob-electrolyser-machine",
      order = "e[bob-electrolyser-2]",
      place_result = "bob-electrolyser-2",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/fluid-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/fluid-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/fluid-inventory-pickup.ogg",
        volume = 0.5,
      },
    },
    {
      type = "item",
      name = "bob-electrolyser-3",
      icon = "__bobassembly__/graphics/icons/electrolyser-3.png",
      icon_size = 32,
      subgroup = "bob-electrolyser-machine",
      order = "e[bob-electrolyser-3]",
      place_result = "bob-electrolyser-3",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/fluid-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/fluid-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/fluid-inventory-pickup.ogg",
        volume = 0.5,
      },
    },
    {
      type = "item",
      name = "bob-electrolyser-4",
      icon = "__bobassembly__/graphics/icons/electrolyser-4.png",
      icon_size = 32,
      subgroup = "bob-electrolyser-machine",
      order = "e[bob-electrolyser-4]",
      place_result = "bob-electrolyser-4",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/fluid-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/fluid-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/fluid-inventory-pickup.ogg",
        volume = 0.5,
      },
    },

    {
      type = "item",
      name = "bob-electrolyser-5",
      icon = "__bobassembly__/graphics/icons/electrolyser-5.png",
      icon_size = 32,
      subgroup = "bob-electrolyser-machine",
      order = "e[bob-electrolyser-5]",
      place_result = "bob-electrolyser-5",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/fluid-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/fluid-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/fluid-inventory-pickup.ogg",
        volume = 0.5,
      },
    },

    {
      type = "recipe",
      name = "bob-electrolyser-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-electrolyser", amount = 1 },
        { type = "item", name = "plastic-bar", amount = 10 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "electronic-circuit", amount = 5 },
        { type = "item", name = "pipe", amount = 5 },
      },
      results = { { type = "item", name = "bob-electrolyser-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-electrolyser-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-electrolyser-2", amount = 1 },
        { type = "item", name = "plastic-bar", amount = 10 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-plate", amount = 10 },
        { type = "item", name = "advanced-circuit", amount = 5 },
        { type = "item", name = "pipe", amount = 5 },
      },
      results = { { type = "item", name = "bob-electrolyser-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-electrolyser-4",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-electrolyser-3", amount = 1 },
        { type = "item", name = "plastic-bar", amount = 10 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-plate", amount = 10 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "pipe", amount = 5 },
      },
      results = { { type = "item", name = "bob-electrolyser-4", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-electrolyser-5",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-electrolyser-4", amount = 1 },
        { type = "item", name = "plastic-bar", amount = 10 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-plate", amount = 10 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "pipe", amount = 5 },
      },
      results = { { type = "item", name = "bob-electrolyser-5", amount = 1 } },
    },

    {
      type = "assembling-machine",
      name = "bob-electrolyser-2",
      icon = "__bobassembly__/graphics/icons/electrolyser-2.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-electrolyser-2" },
      fast_replaceable_group = "bob-electrolyser",
      next_upgrade = "bob-electrolyser-3",
      corpse = "big-remnants",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      max_health = 275,
      circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
      circuit_connector = circuit_connector_definitions["bob-electrolyser"],
      crafting_categories = { "bob-electrolysis" },
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
      module_slots = 3,
      icons_positioning = {
        {
          inventory_index = defines.inventory.assembling_machine_modules,
          shift = { 0, 0.8 },
        },
      },
      icon_draw_specification = {
        shift = { 0, -0.3 },
      },
      crafting_speed = 1.25,
      energy_usage = "650kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 3.25 },
      },
      fluid_boxes = bob_electrolyser_fluid_boxes(),
      graphics_set = {
        animation = bob_electrolyser_animation(
          "__bobassembly__/graphics/entity/electrolyser",
          2,
          { r = 0.5, g = 0.1, b = 0 }
        ),
      },
      impact_category = "metal",
      working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
    },

    {
      type = "assembling-machine",
      name = "bob-electrolyser-3",
      icon = "__bobassembly__/graphics/icons/electrolyser-3.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-electrolyser-3" },
      fast_replaceable_group = "bob-electrolyser",
      next_upgrade = "bob-electrolyser-4",
      corpse = "big-remnants",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      max_health = 375,
      circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
      circuit_connector = circuit_connector_definitions["bob-electrolyser"],
      crafting_categories = { "bob-electrolysis" },
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
      module_slots = 4,
      icons_positioning = {
        {
          inventory_index = defines.inventory.assembling_machine_modules,
          shift = { 0, 0.8 },
        },
      },
      icon_draw_specification = {
        shift = { 0, -0.3 },
      },
      crafting_speed = 2,
      energy_usage = "960kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 2.5 },
      },
      fluid_boxes = bob_electrolyser_fluid_boxes(),
      graphics_set = {
        animation = bob_electrolyser_animation(
          "__bobassembly__/graphics/entity/electrolyser",
          3,
          { r = 0, g = 0.3, b = 0.5 }
        ),
      },
      impact_category = "metal",
      working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
    },

    {
      type = "assembling-machine",
      name = "bob-electrolyser-4",
      icon = "__bobassembly__/graphics/icons/electrolyser-4.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-electrolyser-4" },
      fast_replaceable_group = "bob-electrolyser",
      next_upgrade = "bob-electrolyser-5",
      corpse = "big-remnants",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      max_health = 500,
      circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
      circuit_connector = circuit_connector_definitions["bob-electrolyser"],
      crafting_categories = { "bob-electrolysis" },
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
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
      crafting_speed = 2.75,
      energy_usage = "1210kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 1.75 },
      },
      fluid_boxes = bob_electrolyser_fluid_boxes(),
      graphics_set = {
        animation = bob_electrolyser_animation(
          "__bobassembly__/graphics/entity/electrolyser",
          4,
          { r = 0.5, g = 0, b = 0.5 }
        ),
      },
      impact_category = "metal",
      working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
    },

    {
      type = "assembling-machine",
      name = "bob-electrolyser-5",
      icon = "__bobassembly__/graphics/icons/electrolyser-5.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-electrolyser-5" },
      fast_replaceable_group = "bob-electrolyser",
      corpse = "big-remnants",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      max_health = 600,
      circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
      circuit_connector = circuit_connector_definitions["bob-electrolyser"],
      crafting_categories = { "bob-electrolysis" },
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
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
      crafting_speed = 3.5,
      energy_usage = "1400kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 1 },
      },
      fluid_boxes = bob_electrolyser_fluid_boxes(),
      graphics_set = {
        animation = bob_electrolyser_animation(
          "__bobassembly__/graphics/entity/electrolyser",
          5,
          { r = 0, g = 0.5, b = 0 }
        ),
      },
      impact_category = "metal",
      working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
    },

    {
      type = "technology",
      name = "bob-electrolyser-2",
      icon = "__bobassembly__/graphics/icons/technology/electrolyser.png",
      icon_size = 128,
      prerequisites = {
        "bob-electrolysis-1",
        "steel-processing",
        "electronics",
        "logistic-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-electrolyser-2",
        },
      },
      unit = {
        count = 50,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      order = "d-e-a2",
    },

    {
      type = "technology",
      name = "bob-electrolyser-3",
      icon = "__bobassembly__/graphics/icons/technology/electrolyser.png",
      icon_size = 128,
      prerequisites = {
        "bob-electrolyser-2",
        "chemical-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-electrolyser-3",
        },
      },
      unit = {
        count = 75,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
      order = "d-e-a3",
    },

    {
      type = "technology",
      name = "bob-electrolyser-4",
      icon = "__bobassembly__/graphics/icons/technology/electrolyser.png",
      icon_size = 128,
      prerequisites = {
        "bob-electrolyser-3",
        "processing-unit",
        "production-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-electrolyser-4",
        },
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 30,
      },
      order = "d-e-a4",
    },

    {
      type = "technology",
      name = "bob-electrolyser-5",
      icon = "__bobassembly__/graphics/icons/technology/electrolyser.png",
      icon_size = 128,
      prerequisites = {
        "bob-electrolyser-4",
        "utility-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-electrolyser-5",
        },
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 30,
      },
      order = "d-e-a4",
    },
  })
end
