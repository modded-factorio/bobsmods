if settings.startup["bobmods-assembly-oilrefineries"].value == true then
  data:extend({
    {
      type = "item-subgroup",
      name = "bob-refinery-machine",
      group = "production",
      order = "e-e",
    },
  })

  data.raw.item["oil-refinery"].order = "d[refinery-1]"
  data.raw.item["oil-refinery"].subgroup = "bob-refinery-machine"
  data.raw["assembling-machine"]["oil-refinery"].fast_replaceable_group = "oil-refinery"

  data.raw["assembling-machine"]["oil-refinery"].icons_positioning = {
    {
      inventory_index = defines.inventory.assembling_machine_modules,
      shift = { 0, 1 },
    },
  }

  data:extend({
    {
      type = "item",
      name = "bob-oil-refinery-2",
      icon = "__base__/graphics/icons/oil-refinery.png",
      icon_size = 64,
      subgroup = "bob-refinery-machine",
      order = "d[refinery-2]",
      place_result = "bob-oil-refinery-2",
      stack_size = 10,
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
      name = "bob-oil-refinery-2",
      energy_required = 10,
      ingredients = {
        { type = "item", name = "oil-refinery", amount = 1 },
        { type = "item", name = "steel-plate", amount = 15 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "stone-brick", amount = 10 },
        { type = "item", name = "advanced-circuit", amount = 10 },
        { type = "item", name = "pipe", amount = 10 },
      },
      results = { { type = "item", name = "bob-oil-refinery-2", amount = 1 } },
      enabled = false,
    },

    util.merge({
      data.raw["assembling-machine"]["oil-refinery"],
      {
        name = "bob-oil-refinery-2",
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        minable = { result = "bob-oil-refinery-2" },
        next_upgrade = "bob-oil-refinery-3",
        max_health = 400,
        module_slots = 4,
        crafting_speed = 1.75,
        energy_usage = "720kW",
        energy_source = { emissions_per_minute = { pollution = 5 } },
      },
    }),

    {
      type = "technology",
      name = "oil-processing-2",
      icon = "__base__/graphics/technology/oil-processing.png",
      icon_size = 256,
      prerequisites = {
        "oil-processing",
        "advanced-circuit",
        "chemical-science-pack",
      },
      order = "d-a2",
      unit = {
        count = 75,
        time = 30,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-oil-refinery-2",
        },
      },
    },
  })

  data:extend({
    {
      type = "item",
      name = "bob-oil-refinery-3",
      icon = "__base__/graphics/icons/oil-refinery.png",
      icon_size = 64,
      subgroup = "bob-refinery-machine",
      order = "d[refinery-3]",
      place_result = "bob-oil-refinery-3",
      stack_size = 10,
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
      name = "bob-oil-refinery-3",
      energy_required = 10,
      ingredients = {
        { type = "item", name = "bob-oil-refinery-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 15 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "stone-brick", amount = 10 },
        { type = "item", name = "processing-unit", amount = 10 },
        { type = "item", name = "pipe", amount = 10 },
      },
      results = { { type = "item", name = "bob-oil-refinery-3", amount = 1 } },
      enabled = false,
    },

    util.merge({
      data.raw["assembling-machine"]["oil-refinery"],
      {
        name = "bob-oil-refinery-3",
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        minable = { result = "bob-oil-refinery-3" },
        next_upgrade = "bob-oil-refinery-4",
        max_health = 500,
        module_slots = 5,
        crafting_speed = 2.5,
        energy_usage = "1MW",
        energy_source = { emissions_per_minute = { pollution = 4 } },
      },
    }),

    {
      type = "technology",
      name = "oil-processing-3",
      icon = "__base__/graphics/technology/oil-processing.png",
      icon_size = 256,
      prerequisites = {
        "oil-processing-2",
        "processing-unit",
        "production-science-pack",
      },
      order = "d-a3",
      unit = {
        count = 100,
        time = 30,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-oil-refinery-3",
        },
      },
    },
  })

  data:extend({
    {
      type = "item",
      name = "bob-oil-refinery-4",
      icon = "__base__/graphics/icons/oil-refinery.png",
      icon_size = 64,
      subgroup = "bob-refinery-machine",
      order = "d[refinery-4]",
      place_result = "bob-oil-refinery-4",
      stack_size = 10,
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
      name = "bob-oil-refinery-4",
      energy_required = 10,
      ingredients = {
        { type = "item", name = "bob-oil-refinery-3", amount = 1 },
        { type = "item", name = "steel-plate", amount = 15 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "stone-brick", amount = 10 },
        { type = "item", name = "processing-unit", amount = 10 },
        { type = "item", name = "pipe", amount = 10 },
      },
      results = { { type = "item", name = "bob-oil-refinery-4", amount = 1 } },
      enabled = false,
    },

    util.merge({
      data.raw["assembling-machine"]["oil-refinery"],
      {
        name = "bob-oil-refinery-4",
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        minable = { result = "bob-oil-refinery-4" },
        max_health = 600,
        module_slots = 6,
        crafting_speed = 3.5,
        energy_usage = "1.35MW",
        energy_source = { emissions_per_minute = { pollution = 3 } },
      },
    }),

    {
      type = "technology",
      name = "oil-processing-4",
      icon = "__base__/graphics/technology/oil-processing.png",
      icon_size = 256,
      prerequisites = {
        "oil-processing-3",
        "utility-science-pack",
      },
      order = "d-a4",
      unit = {
        count = 150,
        time = 30,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-oil-refinery-4",
        },
      },
    },
  })
end
