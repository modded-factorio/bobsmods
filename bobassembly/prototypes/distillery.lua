if
  settings.startup["bobmods-plates-purewater"]
  and settings.startup["bobmods-plates-purewater"].value == true
  and settings.startup["bobmods-assembly-distilleries"].value
then
  local source_entity = {}
  if data.raw.furnace["bob-distillery"] then
    source_entity = data.raw.furnace["bob-distillery"]
  else
    source_entity = data.raw["assembling-machine"]["bob-distillery"]
  end

  data:extend({
    {
      type = "item",
      name = "bob-distillery-2",
      icon = "__bobassembly__/graphics/icons/distillery-red.png",
      subgroup = "production-machine",
      order = "e[distillery]",
      place_result = "bob-distillery-2",
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
      weight = 10000,
    },
    {
      type = "item",
      name = "bob-distillery-3",
      icon = "__bobassembly__/graphics/icons/distillery-blue.png",
      subgroup = "production-machine",
      order = "e[distillery]",
      place_result = "bob-distillery-3",
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
      weight = 10000,
    },

    {
      type = "item",
      name = "bob-distillery-4",
      icon = "__bobassembly__/graphics/icons/distillery-purple.png",
      subgroup = "production-machine",
      order = "e[distillery]",
      place_result = "bob-distillery-4",
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
      weight = 10000,
    },

    {
      type = "item",
      name = "bob-distillery-5",
      icon = "__bobassembly__/graphics/icons/distillery-green.png",
      subgroup = "production-machine",
      order = "e[distillery]",
      place_result = "bob-distillery-5",
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
      weight = 10000,
    },

    {
      type = "recipe",
      name = "bob-distillery-2",
      energy_required = 3,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-distillery", amount = 1 },
        { type = "item", name = "steel-plate", amount = 3 },
        { type = "item", name = "copper-plate", amount = 3 },
        { type = "item", name = "pipe", amount = 2 },
      },
      results = { { type = "item", name = "bob-distillery-2", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-distillery-3",
      energy_required = 3,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-distillery-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 3 },
        { type = "item", name = "copper-plate", amount = 3 },
        { type = "item", name = "pipe", amount = 2 },
      },
      results = { { type = "item", name = "bob-distillery-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-distillery-4",
      energy_required = 3,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-distillery-3", amount = 1 },
        { type = "item", name = "steel-plate", amount = 3 },
        { type = "item", name = "copper-plate", amount = 3 },
        { type = "item", name = "pipe", amount = 2 },
      },
      results = { { type = "item", name = "bob-distillery-4", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-distillery-5",
      energy_required = 3,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-distillery-4", amount = 1 },
        { type = "item", name = "steel-plate", amount = 3 },
        { type = "item", name = "copper-plate", amount = 3 },
        { type = "item", name = "pipe", amount = 2 },
      },
      results = { { type = "item", name = "bob-distillery-5", amount = 1 } },
    },

    util.merge({
      source_entity,
      {
        name = "bob-distillery-2",
        icon = "__bobassembly__/graphics/icons/distillery-red.png",
        minable = { mining_time = 0.2, result = "bob-distillery-2" },
        max_health = 250,
        graphics_set = {
          animation = bobmods.plates.distillery_animation({ r = 0.7, g = 0.2, b = 0.1 }),
          working_visualisations = bobmods.plates.distillery_working_visualisations(1.5),
        },
        graphics_set_flipped = {
          animation = bobmods.plates.distillery_animation_flipped({ r = 0.7, g = 0.2, b = 0.1 }),
          working_visualisations = bobmods.plates.distillery_working_visualisations_flipped(1.5),
        },
        crafting_speed = 1.5,
        energy_usage = "163kW",
        module_slots = 2,
        next_upgrade = "bob-distillery-3",
      },
    }),
    util.merge({
      source_entity,
      {
        name = "bob-distillery-3",
        icon = "__bobassembly__/graphics/icons/distillery-blue.png",
        minable = { mining_time = 0.2, result = "bob-distillery-3" },
        max_health = 300,
        graphics_set = {
          animation = bobmods.plates.distillery_animation({ r = 0.1, g = 0.5, b = 0.7 }),
          working_visualisations = bobmods.plates.distillery_working_visualisations(2.1),
        },
        graphics_set_flipped = {
          animation = bobmods.plates.distillery_animation_flipped({ r = 0.1, g = 0.5, b = 0.7 }),
          working_visualisations = bobmods.plates.distillery_working_visualisations_flipped(2.1),
        },
        crafting_speed = 2.1,
        energy_usage = "205kW",
        module_slots = 3,
        icons_positioning = {
          {
            inventory_index = defines.inventory.assembling_machine_modules,
            shift = { 0, 0.7 },
            scale = 0.4,
            multi_row_initial_height_modifier = -0.3,
            max_icons_per_row = 2,
          },
        },
        next_upgrade = "bob-distillery-4",
      },
    }),
    util.merge({
      source_entity,
      {
        name = "bob-distillery-4",
        icon = "__bobassembly__/graphics/icons/distillery-purple.png",
        minable = { mining_time = 0.2, result = "bob-distillery-4" },
        max_health = 350,
        graphics_set = {
          animation = bobmods.plates.distillery_animation({ r = 0.7, g = 0.1, b = 0.7 }),
          working_visualisations = bobmods.plates.distillery_working_visualisations(2.8),
        },
        graphics_set_flipped = {
          animation = bobmods.plates.distillery_animation_flipped({ r = 0.7, g = 0.1, b = 0.7 }),
          working_visualisations = bobmods.plates.distillery_working_visualisations_flipped(2.8),
        },
        crafting_speed = 2.8,
        energy_usage = "242kW",
        module_slots = 4,
        icons_positioning = {
          {
            inventory_index = defines.inventory.assembling_machine_modules,
            shift = { 0, 0.7 },
            scale = 0.4,
            multi_row_initial_height_modifier = -0.3,
            max_icons_per_row = 2,
          },
        },
        next_upgrade = "bob-distillery-5",
      },
    }),
    util.merge({
      source_entity,
      {
        name = "bob-distillery-5",
        icon = "__bobassembly__/graphics/icons/distillery-green.png",
        minable = { mining_time = 0.2, result = "bob-distillery-5" },
        max_health = 400,
        graphics_set = {
          animation = bobmods.plates.distillery_animation({ r = 0.1, g = 0.7, b = 0.1 }),
          working_visualisations = bobmods.plates.distillery_working_visualisations(3.5),
        },
        graphics_set_flipped = {
          animation = bobmods.plates.distillery_animation_flipped({ r = 0.1, g = 0.7, b = 0.1 }),
          working_visualisations = bobmods.plates.distillery_working_visualisations_flipped(3.5),
        },
        crafting_speed = 3.5,
        energy_usage = "270kW",
        module_slots = 5,
        icons_positioning = {
          {
            inventory_index = defines.inventory.assembling_machine_modules,
            shift = { 0, 0.7 },
            scale = 0.4,
            multi_row_initial_height_modifier = -0.3,
            max_icons_per_row = 3,
          },
        },
      },
    }),

    {
      type = "technology",
      name = "bob-distillery-2",
      icon = "__bobassembly__/graphics/icons/technology/distillery-red.png",
      icon_size = 128,
      prerequisites = {
        "bob-electrolysis-1",
        "steel-processing",
        "logistic-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-distillery-2",
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
      order = "d-f-2",
    },
    {
      type = "technology",
      name = "bob-distillery-3",
      icon = "__bobassembly__/graphics/icons/technology/distillery-blue.png",
      icon_size = 128,
      prerequisites = {
        "bob-distillery-2",
        "chemical-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-distillery-3",
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
      order = "d-f-3",
    },
    {
      type = "technology",
      name = "bob-distillery-4",
      icon = "__bobassembly__/graphics/icons/technology/distillery-purple.png",
      icon_size = 128,
      prerequisites = {
        "bob-distillery-3",
        "production-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-distillery-4",
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
      order = "d-f-4",
    },
    {
      type = "technology",
      name = "bob-distillery-5",
      icon = "__bobassembly__/graphics/icons/technology/distillery-green.png",
      icon_size = 128,
      prerequisites = {
        "bob-distillery-4",
        "utility-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-distillery-5",
        },
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
        time = 30,
      },
      order = "d-f-5",
    },
  })
end
