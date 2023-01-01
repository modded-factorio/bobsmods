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
      icon_size = 32,
      subgroup = "production-machine",
      order = "e[distillery]",
      place_result = "bob-distillery-2",
      stack_size = 50,
    },
    {
      type = "item",
      name = "bob-distillery-3",
      icon = "__bobassembly__/graphics/icons/distillery-blue.png",
      icon_size = 32,
      subgroup = "production-machine",
      order = "e[distillery]",
      place_result = "bob-distillery-3",
      stack_size = 50,
    },

    {
      type = "item",
      name = "bob-distillery-4",
      icon = "__bobassembly__/graphics/icons/distillery-purple.png",
      icon_size = 32,
      subgroup = "production-machine",
      order = "e[distillery]",
      place_result = "bob-distillery-4",
      stack_size = 50,
    },

    {
      type = "item",
      name = "bob-distillery-5",
      icon = "__bobassembly__/graphics/icons/distillery-green.png",
      icon_size = 32,
      subgroup = "production-machine",
      order = "e[distillery]",
      place_result = "bob-distillery-5",
      stack_size = 50,
    },

    {
      type = "recipe",
      name = "bob-distillery-2",
      energy_required = 3,
      enabled = false,
      ingredients = {
        { "bob-distillery", 1 },
        { "steel-plate", 3 },
        { "copper-plate", 3 },
        { "pipe", 2 },
      },
      result = "bob-distillery-2",
    },
    {
      type = "recipe",
      name = "bob-distillery-3",
      energy_required = 3,
      enabled = false,
      ingredients = {
        { "bob-distillery-2", 1 },
        { "steel-plate", 3 },
        { "copper-plate", 3 },
        { "pipe", 2 },
      },
      result = "bob-distillery-3",
    },

    {
      type = "recipe",
      name = "bob-distillery-4",
      energy_required = 3,
      enabled = false,
      ingredients = {
        { "bob-distillery-3", 1 },
        { "steel-plate", 3 },
        { "copper-plate", 3 },
        { "pipe", 2 },
      },
      result = "bob-distillery-4",
    },

    {
      type = "recipe",
      name = "bob-distillery-5",
      energy_required = 3,
      enabled = false,
      ingredients = {
        { "bob-distillery-4", 1 },
        { "steel-plate", 3 },
        { "copper-plate", 3 },
        { "pipe", 2 },
      },
      result = "bob-distillery-5",
    },

    util.merge({
      source_entity,
      {
        name = "bob-distillery-2",
        icon = "__bobassembly__/graphics/icons/distillery-red.png",
        icon_size = 32,
        minable = { mining_time = 1, result = "bob-distillery-2" },
        max_health = 250,
        animation = bobmods.plates.distillery_animation({ r = 0.7, g = 0.2, b = 0.1 }),
        working_visualisations = bobmods.plates.distillery_working_visualisations(1.5),
        crafting_speed = 1.5,
        energy_usage = "260kW",
        module_specification = { module_slots = 2 },
        next_upgrade = "bob-distillery-3",
      },
    }),
    util.merge({
      source_entity,
      {
        name = "bob-distillery-3",
        icon = "__bobassembly__/graphics/icons/distillery-blue.png",
        icon_size = 32,
        minable = { mining_time = 1, result = "bob-distillery-3" },
        max_health = 300,
        animation = bobmods.plates.distillery_animation({ r = 0.1, g = 0.5, b = 0.7 }),
        working_visualisations = bobmods.plates.distillery_working_visualisations(2.1),
        crafting_speed = 2.1,
        energy_usage = "360kW",
        module_specification = { module_slots = 3 },
        next_upgrade = "bob-distillery-4",
      },
    }),
    util.merge({
      source_entity,
      {
        name = "bob-distillery-4",
        icon = "__bobassembly__/graphics/icons/distillery-purple.png",
        icon_size = 32,
        minable = { mining_time = 1, result = "bob-distillery-4" },
        max_health = 350,
        animation = bobmods.plates.distillery_animation({ r = 0.7, g = 0.1, b = 0.7 }),
        working_visualisations = bobmods.plates.distillery_working_visualisations(2.8),
        crafting_speed = 2.8,
        energy_usage = "480kW",
        module_specification = { module_slots = 4 },
        next_upgrade = "bob-distillery-5",
      },
    }),
    util.merge({
      source_entity,
      {
        name = "bob-distillery-5",
        icon = "__bobassembly__/graphics/icons/distillery-green.png",
        icon_size = 32,
        minable = { mining_time = 1, result = "bob-distillery-5" },
        max_health = 400,
        animation = bobmods.plates.distillery_animation({ r = 0.1, g = 0.7, b = 0.1 }),
        working_visualisations = bobmods.plates.distillery_working_visualisations(3.5),
        crafting_speed = 3.5,
        energy_usage = "600kW",
        module_specification = { module_slots = 5 },
      },
    }),

    {
      type = "technology",
      name = "bob-distillery-2",
      icon = "__bobassembly__/graphics/icons/technology/distillery-red.png",
      icon_size = 128,
      prerequisites = {
        "electrolysis-1",
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
