if settings.startup["bobmods-assembly-centrifuge"].value == true then
  data.raw.item["centrifuge"].order = "g[centrifuge-1]"
  data.raw["assembling-machine"]["centrifuge"].fast_replaceable_group = "centrifuge"

  data:extend({
    {
      type = "item",
      name = "bob-centrifuge-2",
      icon = "__base__/graphics/icons/centrifuge.png",
      icon_size = 64,
      subgroup = "production-machine",
      order = "g[centrifuge-2]",
      place_result = "bob-centrifuge-2",
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
    },
    {
      type = "item",
      name = "bob-centrifuge-3",
      icon = "__base__/graphics/icons/centrifuge.png",
      icon_size = 64,
      subgroup = "production-machine",
      order = "g[centrifuge-3]",
      place_result = "bob-centrifuge-3",
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
    },

    {
      type = "recipe",
      name = "bob-centrifuge-2",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { type = "item", name = "centrifuge", amount = 1 },
        { type = "item", name = "refined-concrete", amount = 100 },
        { type = "item", name = "steel-plate", amount = 50 },
        { type = "item", name = "processing-unit", amount = 100 },
        { type = "item", name = "iron-gear-wheel", amount = 100 },
      },
      results = { { type = "item", name = "bob-centrifuge-2", amount = 1 } },
      requester_paste_multiplier = 10,
    },
    {
      type = "recipe",
      name = "bob-centrifuge-3",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-centrifuge-2", amount = 1 },
        { type = "item", name = "refined-concrete", amount = 100 },
        { type = "item", name = "steel-plate", amount = 50 },
        { type = "item", name = "processing-unit", amount = 100 },
        { type = "item", name = "iron-gear-wheel", amount = 100 },
      },
      results = { { type = "item", name = "bob-centrifuge-3", amount = 1 } },
      requester_paste_multiplier = 10,
    },

    util.merge({
      data.raw["assembling-machine"]["centrifuge"],
      {
        name = "bob-centrifuge-2",
        icon = "__base__/graphics/icons/centrifuge.png",
        icon_size = 64,
        minable = { result = "bob-centrifuge-2" },
        max_health = 450,
        crafting_speed = 2.25,
        energy_usage = "750kW",
        energy_source = { emissions_per_minute = { pollution = 3 } },
        module_slots = 4,
        next_upgrade = "bob-centrifuge-3",
      },
    }),
    util.merge({
      data.raw["assembling-machine"]["centrifuge"],
      {
        name = "bob-centrifuge-3",
        icon = "__base__/graphics/icons/centrifuge.png",
        icon_size = 64,
        minable = { result = "bob-centrifuge-3" },
        max_health = 550,
        crafting_speed = 3.5,
        energy_usage = "1050kW",
        energy_source = { emissions_per_minute = { pollution = 2 } },
        module_slots = 6,
        icons_positioning = {
          {
            inventory_index = defines.inventory.assembling_machine_modules,
            shift = { 0, 0.8 },
            multi_row_initial_height_modifier = -0.3,
            max_icons_per_row = 3,
          },
        },
      },
    }),

    {
      type = "technology",
      name = "bob-centrifuge-2",
      icon_size = 128,
      icon = "__bobassembly__/graphics/icons/technology/centrifuge.png",
      order = "e-p-b-d",
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-centrifuge-2",
        },
      },
      prerequisites = {
        "production-science-pack",
        "processing-unit",
        "uranium-processing",
      },
      unit = {
        time = 30,
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
      },
    },
    {
      type = "technology",
      name = "bob-centrifuge-3",
      icon_size = 128,
      icon = "__bobassembly__/graphics/icons/technology/centrifuge.png",
      order = "e-p-b-e",
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-centrifuge-3",
        },
      },
      prerequisites = {
        "utility-science-pack",
        "bob-centrifuge-2",
      },
      unit = {
        time = 30,
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
      },
    },
  })

  data.raw["assembling-machine"]["centrifuge"].next_upgrade = "bob-centrifuge-2"
end
