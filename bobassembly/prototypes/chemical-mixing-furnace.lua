if
  settings.startup["bobmods-assembly-multipurposefurnaces"].value
  and data.raw["item-subgroup"]["bob-smelting-machine"]
  and data.raw["recipe-category"]["bob-chemical-furnace"]
  and data.raw["recipe-category"]["bob-mixing-furnace"]
  and (data.raw.technology["bob-alloy-processing-2"] or data.raw.technology["bob-electric-mixing-furnace"])
  and data.raw.technology["bob-electric-chemical-furnace"]
then
  local function bob_electric_multipurpose_furnace_working_visualisations()
    return {
      {
        animation = {
          filename = "__bobassembly__/graphics/entity/electric-furnace/electric-furnace-heater.png",
          priority = "high",
          width = 60,
          height = 56,
          frame_count = 12,
          animation_speed = 0.5,
          shift = util.by_pixel(1.75, 32.75),
          scale = 0.5,
        },
        light = { intensity = 0.4, size = 6, shift = { 0.0, 1.0 }, color = { r = 1.0, g = 1.0, b = 1.0 } },
      },
      {
        animation = {
          filename = "__bobassembly__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 37,
          height = 25,
          frame_count = 4,
          animation_speed = 0.5,
          shift = util.by_pixel(-20.5, -18.5),
          scale = 0.5,
        },
      },
    }
  end

  data:extend({
    {
      type = "item",
      name = "bob-electric-chemical-mixing-furnace",
      icon = "__bobassembly__/graphics/icons/electric-chemical-mixing-furnace.png",
      icon_size = 32,
      subgroup = "bob-smelting-machine",
      order = "d[electric-chemical-mixing-furnace-1]",
      place_result = "bob-electric-chemical-mixing-furnace",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/electric-large-inventory-move.ogg",
        volume = 0.7,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/electric-large-inventory-move.ogg",
        volume = 0.7,
      },
      pick_sound = {
        filename = "__base__/sound/item/electric-large-inventory-pickup.ogg",
        volume = 0.7,
      },
      weight = 20000,
    },
    {
      type = "item",
      name = "bob-electric-chemical-mixing-furnace-2",
      icon = "__bobassembly__/graphics/icons/electric-chemical-mixing-furnace-2.png",
      icon_size = 32,
      subgroup = "bob-smelting-machine",
      order = "d[electric-chemical-mixing-furnace-2]",
      place_result = "bob-electric-chemical-mixing-furnace-2",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/electric-large-inventory-move.ogg",
        volume = 0.7,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/electric-large-inventory-move.ogg",
        volume = 0.7,
      },
      pick_sound = {
        filename = "__base__/sound/item/electric-large-inventory-pickup.ogg",
        volume = 0.7,
      },
      weight = 20000,
    },

    {
      type = "recipe",
      name = "bob-electric-chemical-mixing-furnace",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-electric-chemical-furnace", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "stone-brick", amount = 10 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "pipe", amount = 5 },
      },
      results = { { type = "item", name = "bob-electric-chemical-mixing-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-electric-chemical-mixing-furnace-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-electric-chemical-mixing-furnace", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "stone-brick", amount = 10 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "pipe", amount = 5 },
      },
      results = { { type = "item", name = "bob-electric-chemical-mixing-furnace-2", amount = 1 } },
    },

    {
      type = "assembling-machine",
      name = "bob-electric-chemical-mixing-furnace",
      icon = "__bobassembly__/graphics/icons/electric-chemical-mixing-furnace.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 1, result = "bob-electric-chemical-mixing-furnace" },
      max_health = 450,
      circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
      circuit_connector = circuit_connector_definitions["bob-electric-chemical-furnace"],
      corpse = "big-remnants",
      resistances = {
        {
          type = "fire",
          percent = 80,
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
      },
      fluid_boxes_off_when_no_fluid_recipe = true,
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },

      module_slots = 4,
      icons_positioning = {
        {
          inventory_index = defines.inventory.assembling_machine_modules,
          shift = { 0, 0.8 },
        },
      },
      icon_draw_specification = {
        shift = { 0, -0.1 },
      },
      crafting_speed = 3,
      crafting_categories = { "smelting", "bob-mixing-furnace", "bob-chemical-furnace" },
      energy_usage = "250kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 1 },
      },
      impact_category = "metal",
      working_sound = {
        sound = {
          filename = "__base__/sound/electric-furnace.ogg",
          volume = 0.7,
        },
      },
      graphics_set = {
        animation = {
          filename = "__bobassembly__/graphics/entity/electric-furnace/electric-chemical-mixing-furnace.png",
          priority = "high",
          width = 129,
          height = 100,
          frame_count = 1,
          shift = { 0.46875, 0 },
        },
        working_visualisations = bob_electric_multipurpose_furnace_working_visualisations(),
      },
      fast_replaceable_group = "furnace",
      next_upgrade = "bob-electric-chemical-mixing-furnace-2",
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    },

    {
      type = "assembling-machine",
      name = "bob-electric-chemical-mixing-furnace-2",
      icon = "__bobassembly__/graphics/icons/electric-chemical-mixing-furnace-2.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 1, result = "bob-electric-chemical-mixing-furnace-2" },
      max_health = 550,
      circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
      circuit_connector = circuit_connector_definitions["bob-electric-chemical-furnace"],
      corpse = "big-remnants",
      resistances = {
        {
          type = "fire",
          percent = 80,
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
      },
      fluid_boxes_off_when_no_fluid_recipe = true,
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },

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
        shift = { 0, -0.1 },
      },
      crafting_speed = 4,
      crafting_categories = { "smelting", "bob-mixing-furnace", "bob-chemical-furnace" },
      energy_usage = "300kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 1 },
      },
      impact_category = "metal",
      working_sound = {
        sound = {
          filename = "__base__/sound/electric-furnace.ogg",
          volume = 0.7,
        },
      },
      graphics_set = {
        animation = {
          filename = "__bobassembly__/graphics/entity/electric-furnace/electric-chemical-mixing-furnace-2.png",
          priority = "high",
          width = 129,
          height = 100,
          frame_count = 1,
          shift = { 0.46875, 0 },
        },
        working_visualisations = bob_electric_multipurpose_furnace_working_visualisations(),
      },
      fast_replaceable_group = "furnace",
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    },

    {
      type = "technology",
      name = "bob-multi-purpose-furnace-1",
      icon_size = 128,
      icons = {
        {
          icon_size = 256,
          scale = 0.5,
          icon = "__base__/graphics/technology/advanced-material-processing-2.png",
        },
        {
          icon = "__bobassembly__/graphics/icons/technology/chemistry.png",
          icon_size = 64,
          scale = 1,
          shift = { -32, -32 },
        },
        {
          icon = "__bobassembly__/graphics/icons/technology/alloy-processing.png",
          icon_size = 128,
          scale = 0.5,
          shift = { 32, -32 },
        },
      },
      order = "c-c-b-1",
      prerequisites = {
        "processing-unit",
        "production-science-pack",
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
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-electric-chemical-mixing-furnace",
        },
      },
    },

    {
      type = "technology",
      name = "bob-multi-purpose-furnace-2",
      icon_size = 128,
      icons = {
        {
          icon_size = 256,
          scale = 0.5,
          icon = "__base__/graphics/technology/advanced-material-processing-2.png",
        },
        {
          icon = "__bobassembly__/graphics/icons/technology/chemistry.png",
          icon_size = 64,
          scale = 1,
          shift = { -32, -32 },
        },
        {
          icon = "__bobassembly__/graphics/icons/technology/alloy-processing.png",
          icon_size = 128,
          scale = 0.5,
          shift = { 32, -32 },
        },
      },
      order = "c-c-b-2",
      prerequisites = {
        "bob-multi-purpose-furnace-1",
        "utility-science-pack",
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
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-electric-chemical-mixing-furnace-2",
        },
      },
    },
  })
  if data.raw.technology["bob-electric-chemical-furnace"] then
    bobmods.lib.tech.add_prerequisite("bob-multi-purpose-furnace-1", "bob-electric-chemical-furnace")
  end
  if data.raw.technology["bob-electric-mixing-furnace"] then
    bobmods.lib.tech.add_prerequisite("bob-multi-purpose-furnace-1", "bob-electric-mixing-furnace")
  elseif data.raw.technology["bob-alloy-processing-2"] then
    bobmods.lib.tech.add_prerequisite("bob-multi-purpose-furnace-1", "bob-alloy-processing-2")
  end
end
