if settings.startup["bobmods-assembly-furnaces"].value == true and data.raw.furnace["electric-furnace"] then
  local function bob_electric_furnace_animation(tint)
    return {
      layers = {
        {
          filename = "__bobassembly__/graphics/entity/electric-furnace/electric-furnace.png",
          priority = "high",
          width = 239,
          height = 219,
          frame_count = 1,
          shift = util.by_pixel(0.75, 5.75),
          scale = 0.5,
        },
        {
          filename = "__bobassembly__/graphics/entity/electric-furnace/electric-furnace-mask.png",
          tint = tint,
          priority = "high",
          width = 69,
          height = 68,
          frame_count = 1,
          shift = util.by_pixel(7.5, 12),
        },
        {
          filename = "__bobassembly__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
          priority = "high",
          width = 227,
          height = 171,
          frame_count = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(11.25, 7.75),
          scale = 0.5,
        },
      },
    }
  end

  local function bob_electric_furnace_working_visualisations()
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
      {
        animation = {
          filename = "__bobassembly__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 23,
          height = 15,
          frame_count = 4,
          animation_speed = 0.5,
          shift = util.by_pixel(3.5, -38),
          scale = 0.5,
        },
      },
    }
  end

  local function bob_electric_furnace(input)
    local prototype = {
      type = "furnace",
      name = input.name,
      icon = input.icon,
      icon_size = input.icon_size or 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 1, result = input.name },
      max_health = input.max_health or 150,
      circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
      circuit_connector = circuit_connector_definitions["bob-electric-furnace"],
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      resistances = {
        {
          type = "fire",
          percent = 80,
        },
      },
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      module_slots = input.module_slots or 2,
      icons_positioning = {
        {
          inventory_index = defines.inventory.assembling_machine_modules,
          shift = { 0, 0.8 },
        },
      },
      icon_draw_specification = {
        shift = { 0, -0.1 },
      },
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
      crafting_categories = { "smelting" },
      result_inventory_size = 1,
      crafting_speed = input.crafting_speed or 2,
      energy_usage = input.energy_usage or "180kW",
      source_inventory_size = 1,
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
        animation = bob_electric_furnace_animation(input.tint),
        working_visualisations = bob_electric_furnace_working_visualisations(),
      },
      fast_replaceable_group = "furnace",
    }

    if input.module_slots == 5 or input.module_slots == 6 then
      prototype.icons_positioning[1].max_icons_per_row = 3
    end
    if input.module_slots > 4 then
      prototype.icons_positioning[1].multi_row_initial_height_modifier = -0.3
    end

    return prototype
  end

  data.raw.item["electric-furnace"].order = "c[electric-furnace-1]"
  data.raw.furnace["electric-furnace"].circuit_connector = circuit_connector_definitions["bob-electric-furnace"]

  data:extend({
    {
      type = "item",
      name = "bob-electric-furnace-2",
      icon = "__bobassembly__/graphics/icons/electric-furnace-2.png",
      icon_size = 32,
      subgroup = "smelting-machine",
      order = "c[electric-furnace-2]",
      place_result = "bob-electric-furnace-2",
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
      name = "bob-electric-furnace-3",
      icon = "__bobassembly__/graphics/icons/electric-furnace-3.png",
      icon_size = 32,
      subgroup = "smelting-machine",
      order = "c[electric-furnace-3]",
      place_result = "bob-electric-furnace-3",
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
      name = "bob-electric-furnace-2",
      ingredients = {
        { type = "item", name = "electric-furnace", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "stone-brick", amount = 10 },
        { type = "item", name = "processing-unit", amount = 5 },
      },
      results = { { type = "item", name = "bob-electric-furnace-2", amount = 1 } },
      energy_required = 5,
      enabled = false,
    },

    {
      type = "recipe",
      name = "bob-electric-furnace-3",
      ingredients = {
        { type = "item", name = "bob-electric-furnace-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "stone-brick", amount = 10 },
        { type = "item", name = "processing-unit", amount = 5 },
      },
      results = { { type = "item", name = "bob-electric-furnace-3", amount = 1 } },
      energy_required = 5,
      enabled = false,
    },

    bob_electric_furnace({
      name = "bob-electric-furnace-2",
      icon = "__bobassembly__/graphics/icons/electric-furnace-2.png",
      tint = { r = 0.6, g = 0.2, b = 0.8 },
      max_health = 450,
      module_slots = 4,
      crafting_speed = 3,
      energy_usage = "250kW",
    }),

    bob_electric_furnace({
      name = "bob-electric-furnace-3",
      icon = "__bobassembly__/graphics/icons/electric-furnace-3.png",
      tint = { r = 0.2, g = 0.8, b = 0.2 },
      max_health = 550,
      module_slots = 6,
      crafting_speed = 4,
      energy_usage = "300kW",
    }),

    {
      type = "technology",
      name = "advanced-material-processing-3",
      icon = "__base__/graphics/technology/advanced-material-processing-2.png",
      icon_size = 256,
      order = "c-c-c",
      prerequisites = {
        "advanced-material-processing-2",
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
        time = 30,
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-electric-furnace-2",
        },
      },
    },

    {
      type = "technology",
      name = "advanced-material-processing-4",
      icon = "__base__/graphics/technology/advanced-material-processing-2.png",
      icon_size = 256,
      order = "c-c-d",
      prerequisites = {
        "advanced-material-processing-3",
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
          recipe = "bob-electric-furnace-3",
        },
      },
    },
  })
end
