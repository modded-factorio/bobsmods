if settings.startup["bobmods-assembly-chemicalplants"].value == true then
  data:extend({
    {
      type = "item-subgroup",
      name = "bob-chemical-machine",
      group = "production",
      order = "e-c",
    },
  })

  data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "chemical-plant"
  data.raw["assembling-machine"]["chemical-plant"].order = "e[chemical-plant-1]"
  data.raw["assembling-machine"]["chemical-plant"].energy_usage = "160kW"
  data.raw["assembling-machine"]["chemical-plant"].drawing_box_vertical_extension = 0.6

  data.raw.item["chemical-plant"].stack_size = 50
  data.raw.item["chemical-plant"].subgroup = "bob-chemical-machine"
  data.raw.item["chemical-plant"].order = "e[chemical-plant-1]"

  local function bob_chemical_plant_fluid_boxes()
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

  local function bob_chemical_plant_facing(tint, offset)
    return {
      layers = {
        {
          filename = "__bobassembly__/graphics/entity/chemical-plant/chemical-plant.png",
          width = 220,
          height = 292,
          y = offset * 584,
          frame_count = 24,
          line_length = 12,
          shift = util.by_pixel(0.5, -9),
          scale = 0.5,
        },
        {
          filename = "__bobassembly__/graphics/entity/chemical-plant/chemical-plant-mask.png",
          width = 220,
          height = 292,
          y = offset * 584,
          frame_count = 24,
          line_length = 12,
          tint = tint,
          shift = util.by_pixel(0.5, -9),
          scale = 0.5,
        },
        {
          filename = "__bobassembly__/graphics/entity/chemical-plant/chemical-plant-highlights.png",
          width = 220,
          height = 292,
          y = offset * 584,
          frame_count = 24,
          line_length = 12,
          blend_mode = "additive",
          shift = util.by_pixel(0.5, -9),
          scale = 0.5,
        },
        {
          filename = "__bobassembly__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
          width = 312,
          height = 222,
          x = offset * 312,
          repeat_count = 24,
          frame_count = 1,
          shift = util.by_pixel(27, 6),
          draw_as_shadow = true,
          scale = 0.5,
        },
      },
    }
  end

  function bobmods.bob_chemical_plant_animation(tint)
    return {
      north = bob_chemical_plant_facing(tint, 0),
      east = bob_chemical_plant_facing(tint, 1),
      south = bob_chemical_plant_facing(tint, 2),
      west = bob_chemical_plant_facing(tint, 3),
    }
  end

  data:extend({
    {
      type = "item",
      name = "bob-chemical-plant-2",
      icon = "__bobassembly__/graphics/icons/chemical-plant-2.png",
      icon_size = 32,
      subgroup = "bob-chemical-machine",
      order = "e[chemical-plant-2]",
      place_result = "bob-chemical-plant-2",
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
      name = "bob-chemical-plant-3",
      icon = "__bobassembly__/graphics/icons/chemical-plant-3.png",
      icon_size = 32,
      subgroup = "bob-chemical-machine",
      order = "e[chemical-plant-3]",
      place_result = "bob-chemical-plant-3",
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
      name = "bob-chemical-plant-4",
      icon = "__bobassembly__/graphics/icons/chemical-plant-4.png",
      icon_size = 32,
      subgroup = "bob-chemical-machine",
      order = "e[chemical-plant-4]",
      place_result = "bob-chemical-plant-4",
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
      name = "bob-chemical-plant-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "chemical-plant", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
        { type = "item", name = "advanced-circuit", amount = 5 },
        { type = "item", name = "pipe", amount = 5 },
      },
      results = { { type = "item", name = "bob-chemical-plant-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-chemical-plant-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-chemical-plant-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
        { type = "item", name = "processing-unit", amount = 10 },
        { type = "item", name = "pipe", amount = 5 },
      },
      results = { { type = "item", name = "bob-chemical-plant-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-chemical-plant-4",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-chemical-plant-3", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
        { type = "item", name = "processing-unit", amount = 10 },
        { type = "item", name = "pipe", amount = 5 },
      },
      results = { { type = "item", name = "bob-chemical-plant-4", amount = 1 } },
    },

    {
      type = "assembling-machine",
      name = "bob-chemical-plant-2",
      icon = "__bobassembly__/graphics/icons/chemical-plant-2.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-chemical-plant-2" },
      max_health = 350,
      circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
      circuit_connector = circuit_connector_definitions["chemical-plant"],
      corpse = "chemical-plant-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      drawing_box_vertical_extension = 0.6,
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
      module_slots = 4,
      icon_draw_specification = {
        shift = { 0, -0.3 },
      },
      crafting_speed = 1.75,
      energy_usage = "260kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 3 },
      },
      crafting_categories = { "chemistry" },
      fluid_boxes = bob_chemical_plant_fluid_boxes(),
      graphics_set = {
        animation = bobmods.bob_chemical_plant_animation({ r = 0.5, g = 0.1, b = 0.7 }),
        working_visualisations = data.raw["assembling-machine"]["chemical-plant"].graphics_set.working_visualisations,
      },
      working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
      impact_category = "metal-large",
      fast_replaceable_group = "chemical-plant",
      next_upgrade = "bob-chemical-plant-3",
      water_reflection = data.raw["assembling-machine"]["chemical-plant"].water_reflection,
    },

    {
      type = "assembling-machine",
      name = "bob-chemical-plant-3",
      icon = "__bobassembly__/graphics/icons/chemical-plant-3.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-chemical-plant-3" },
      max_health = 400,
      circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
      circuit_connector = circuit_connector_definitions["chemical-plant"],
      corpse = "chemical-plant-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      drawing_box_vertical_extension = 0.6,
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
      energy_usage = "390kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 2 },
      },
      crafting_categories = { "chemistry" },
      fluid_boxes = bob_chemical_plant_fluid_boxes(),
      graphics_set = {
        animation = bobmods.bob_chemical_plant_animation({ r = 0.7, g = 0.2, b = 0.1 }),
        working_visualisations = data.raw["assembling-machine"]["chemical-plant"].graphics_set.working_visualisations,
      },
      working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
      impact_category = "metal-large",
      fast_replaceable_group = "chemical-plant",
      next_upgrade = "bob-chemical-plant-4",
      water_reflection = data.raw["assembling-machine"]["chemical-plant"].water_reflection,
    },

    {
      type = "assembling-machine",
      name = "bob-chemical-plant-4",
      icon = "__bobassembly__/graphics/icons/chemical-plant-4.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-chemical-plant-4" },
      max_health = 500,
      circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
      circuit_connector = circuit_connector_definitions["chemical-plant"],
      corpse = "chemical-plant-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      drawing_box_vertical_extension = 0.6,
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
      energy_usage = "480kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 1 },
      },
      crafting_categories = { "chemistry" },
      fluid_boxes = bob_chemical_plant_fluid_boxes(),
      graphics_set = {
        animation = bobmods.bob_chemical_plant_animation({ r = 0.1, g = 0.7, b = 0.1 }),
        working_visualisations = data.raw["assembling-machine"]["chemical-plant"].graphics_set.working_visualisations,
      },
      working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
      impact_category = "metal-large",
      fast_replaceable_group = "chemical-plant",
      water_reflection = data.raw["assembling-machine"]["chemical-plant"].water_reflection,
    },

    {
      type = "technology",
      name = "bob-chemical-plant-2",
      icon = "__bobassembly__/graphics/icons/technology/chemical-plant-2.png",
      icon_size = 128,
      prerequisites = {
        "advanced-circuit",
        "chemical-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-chemical-plant-2",
        },
      },
      unit = {
        count = 50,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
      order = "d-a-c2",
    },

    {
      type = "technology",
      name = "bob-chemical-plant-3",
      icon = "__bobassembly__/graphics/icons/technology/chemical-plant-3.png",
      icon_size = 128,
      prerequisites = {
        "bob-chemical-plant-2",
        "processing-unit",
        "production-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-chemical-plant-3",
        },
      },
      unit = {
        count = 75,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 30,
      },
      order = "d-a-c3",
    },

    {
      type = "technology",
      name = "bob-chemical-plant-4",
      icon = "__bobassembly__/graphics/icons/technology/chemical-plant-4.png",
      icon_size = 128,
      prerequisites = {
        "bob-chemical-plant-3",
        "utility-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-chemical-plant-4",
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
      order = "d-a-c4",
    },
  })
end
