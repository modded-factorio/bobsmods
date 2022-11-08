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

  data:extend({
    {
      type = "item",
      name = "oil-refinery-2",
      icon = "__base__/graphics/icons/oil-refinery.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "bob-refinery-machine",
      order = "d[refinery-2]",
      place_result = "oil-refinery-2",
      stack_size = 10,
    },

    {
      type = "recipe",
      name = "oil-refinery-2",
      energy_required = 10,
      ingredients = {
        { "oil-refinery", 1 },
        { "steel-plate", 15 },
        { "iron-gear-wheel", 10 },
        { "stone-brick", 10 },
        { "advanced-circuit", 10 },
        { "pipe", 10 },
      },
      result = "oil-refinery-2",
      enabled = false,
    },

    util.merge({
      data.raw["assembling-machine"]["oil-refinery"],
      {
        name = "oil-refinery-2",
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        icon_mipmaps = 4,
        minable = { result = "oil-refinery-2" },
        next_upgrade = "oil-refinery-3",
        max_health = 400,
        module_specification = { module_slots = 4 },
        crafting_speed = 1.75,
        energy_usage = "720kW",
        energy_source = { emissions_per_minute = 5 },
      },
    }),

    {
      type = "technology",
      name = "oil-processing-2",
      icon = "__base__/graphics/technology/oil-processing.png",
      icon_size = 256,
      icon_mipmaps = 4,
      prerequisites = {
        "oil-processing",
        "advanced-electronics",
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
          recipe = "oil-refinery-2",
        },
      },
    },
  })

  data:extend({
    {
      type = "item",
      name = "oil-refinery-3",
      icon = "__base__/graphics/icons/oil-refinery.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "bob-refinery-machine",
      order = "d[refinery-3]",
      place_result = "oil-refinery-3",
      stack_size = 10,
    },

    {
      type = "recipe",
      name = "oil-refinery-3",
      energy_required = 10,
      ingredients = {
        { "oil-refinery-2", 1 },
        { "steel-plate", 15 },
        { "iron-gear-wheel", 10 },
        { "stone-brick", 10 },
        { "processing-unit", 10 },
        { "pipe", 10 },
      },
      result = "oil-refinery-3",
      enabled = false,
    },

    util.merge({
      data.raw["assembling-machine"]["oil-refinery"],
      {
        name = "oil-refinery-3",
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        icon_mipmaps = 4,
        minable = { result = "oil-refinery-3" },
        next_upgrade = "oil-refinery-4",
        max_health = 500,
        module_specification = { module_slots = 5 },
        crafting_speed = 2.5,
        energy_usage = "1MW",
        energy_source = { emissions_per_minute = 4 },
      },
    }),

    {
      type = "technology",
      name = "oil-processing-3",
      icon = "__base__/graphics/technology/oil-processing.png",
      icon_size = 256,
      icon_mipmaps = 4,
      prerequisites = {
        "oil-processing-2",
        "advanced-electronics-2",
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
          recipe = "oil-refinery-3",
        },
      },
    },
  })

  data:extend({
    {
      type = "item",
      name = "oil-refinery-4",
      icon = "__base__/graphics/icons/oil-refinery.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "bob-refinery-machine",
      order = "d[refinery-4]",
      place_result = "oil-refinery-4",
      stack_size = 10,
    },

    {
      type = "recipe",
      name = "oil-refinery-4",
      energy_required = 10,
      ingredients = {
        { "oil-refinery-3", 1 },
        { "steel-plate", 15 },
        { "iron-gear-wheel", 10 },
        { "stone-brick", 10 },
        { "processing-unit", 10 },
        { "pipe", 10 },
      },
      result = "oil-refinery-4",
      enabled = false,
    },

    util.merge({
      data.raw["assembling-machine"]["oil-refinery"],
      {
        name = "oil-refinery-4",
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        icon_mipmaps = 4,
        minable = { result = "oil-refinery-4" },
        max_health = 600,
        module_specification = { module_slots = 6 },
        crafting_speed = 3.5,
        energy_usage = "1.35MW",
        energy_source = { emissions_per_minute = 3 },
      },
    }),

    {
      type = "technology",
      name = "oil-processing-4",
      icon = "__base__/graphics/technology/oil-processing.png",
      icon_size = 256,
      icon_mipmaps = 4,
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
          recipe = "oil-refinery-4",
        },
      },
    },
  })
end
