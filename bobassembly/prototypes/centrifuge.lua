if settings.startup["bobmods-assembly-centrifuge"].value == true then
  data.raw.item["centrifuge"].order = "g[centrifuge-1]"
  data.raw["assembling-machine"]["centrifuge"].fast_replaceable_group = "centrifuge"

  data:extend({
    {
      type = "item",
      name = "centrifuge-2",
      icon = "__base__/graphics/icons/centrifuge.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "production-machine",
      order = "g[centrifuge-2]",
      place_result = "centrifuge-2",
      stack_size = 50,
    },
    {
      type = "item",
      name = "centrifuge-3",
      icon = "__base__/graphics/icons/centrifuge.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "production-machine",
      order = "g[centrifuge-3]",
      place_result = "centrifuge-3",
      stack_size = 50,
    },

    {
      type = "recipe",
      name = "centrifuge-2",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { "centrifuge", 1 },
        { "refined-concrete", 100 },
        { "steel-plate", 50 },
        { "processing-unit", 100 },
        { "iron-gear-wheel", 100 },
      },
      result = "centrifuge-2",
      requester_paste_multiplier = 10,
    },
    {
      type = "recipe",
      name = "centrifuge-3",
      energy_required = 4,
      enabled = false,
      ingredients = {
        { "centrifuge-2", 1 },
        { "refined-concrete", 100 },
        { "steel-plate", 50 },
        { "processing-unit", 100 },
        { "iron-gear-wheel", 100 },
      },
      result = "centrifuge-3",
      requester_paste_multiplier = 10,
    },

    util.merge({
      data.raw["assembling-machine"]["centrifuge"],
      {
        name = "centrifuge-2",
        icon = "__base__/graphics/icons/centrifuge.png",
        icon_size = 64,
        icon_mipmaps = 4,
        minable = { result = "centrifuge-2" },
        max_health = 450,
        crafting_speed = 2.25,
        energy_usage = "750kW",
        energy_source = { emissions_per_minute = 3 },
        module_specification = { module_slots = 4 },
        next_upgrade = "centrifuge-3",
      },
    }),
    util.merge({
      data.raw["assembling-machine"]["centrifuge"],
      {
        name = "centrifuge-3",
        icon = "__base__/graphics/icons/centrifuge.png",
        icon_size = 64,
        icon_mipmaps = 4,
        minable = { result = "centrifuge-3" },
        max_health = 550,
        crafting_speed = 3.5,
        energy_usage = "1050kW",
        energy_source = { emissions_per_minute = 2 },
        module_specification = { module_slots = 6 },
      },
    }),

    {
      type = "technology",
      name = "centrifuge-2",
      icon_size = 128,
      icon = "__bobassembly__/graphics/icons/technology/centrifuge.png",
      order = "e-p-b-d",
      effects = {
        {
          type = "unlock-recipe",
          recipe = "centrifuge-2",
        },
      },
      prerequisites = {
        "production-science-pack",
        "advanced-electronics-2",
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
      name = "centrifuge-3",
      icon_size = 128,
      icon = "__bobassembly__/graphics/icons/technology/centrifuge.png",
      order = "e-p-b-e",
      effects = {
        {
          type = "unlock-recipe",
          recipe = "centrifuge-3",
        },
      },
      prerequisites = {
        "utility-science-pack",
        "centrifuge-2",
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

  data.raw["assembling-machine"]["centrifuge"].next_upgrade = "centrifuge-2"
end
