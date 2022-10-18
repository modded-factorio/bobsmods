if
  data.raw.item["alien-artifact-blue"]
  and data.raw.item["alien-artifact-orange"]
  and data.raw.item["alien-artifact-purple"]
  and data.raw.item["alien-artifact-yellow"]
  and data.raw.item["alien-artifact-green"]
  and data.raw.item["alien-artifact-red"]
then
  data:extend({
    {
      type = "technology",
      name = "alien-blue-research",
      icon = "__bobplates__/graphics/icons/technology/alien-blue-alloy.png",
      icon_size = 64,
      prerequisites = {
        "tungsten-processing",
        "military-science-pack",
        "chemical-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "alien-blue-alloy",
        },
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "military-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
      order = "e-f-a1",
    },

    {
      type = "technology",
      name = "alien-orange-research",
      icon = "__bobplates__/graphics/icons/technology/alien-orange-alloy.png",
      icon_size = 64,
      prerequisites = {
        "steel-processing",
        "military-science-pack",
        "chemical-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "alien-orange-alloy",
        },
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "military-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
      order = "e-f-a2",
    },

    {
      type = "technology",
      name = "alien-purple-research",
      icon = "__bobplates__/graphics/icons/alien/alien-acid.png",
      icon_size = 32,
      prerequisites = {
        "sulfur-processing",
        "military-science-pack",
        "chemical-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "alien-acid",
        },
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "military-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
      order = "e-f-a3",
    },

    {
      type = "technology",
      name = "alien-yellow-research",
      icon = "__bobplates__/graphics/icons/alien/alien-explosive.png",
      icon_size = 32,
      prerequisites = {
        "sulfur-processing",
        "military-science-pack",
        "chemical-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "alien-explosive",
        },
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "military-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
      order = "e-f-a4",
    },

    {
      type = "technology",
      name = "alien-green-research",
      icon = "__bobplates__/graphics/icons/alien/alien-poison.png",
      icon_size = 32,
      prerequisites = {
        "nitrogen-processing",
        "military-science-pack",
        "chemical-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "alien-poison",
        },
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "military-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
      order = "e-f-a5",
    },

    {
      type = "technology",
      name = "alien-red-research",
      icon = "__bobplates__/graphics/icons/alien/alien-fire.png",
      icon_size = 32,
      prerequisites = {
        "oil-processing",
        "military-science-pack",
        "chemical-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "alien-fire",
        },
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "military-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
      order = "e-f-a6",
    },
  })
end
