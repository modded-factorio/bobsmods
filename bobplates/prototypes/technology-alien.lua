if
  data.raw.item["bob-alien-artifact-blue"]
  and data.raw.item["bob-alien-artifact-orange"]
  and data.raw.item["bob-alien-artifact-purple"]
  and data.raw.item["bob-alien-artifact-yellow"]
  and data.raw.item["bob-alien-artifact-green"]
  and data.raw.item["bob-alien-artifact-red"]
then
  data:extend({
    {
      type = "technology",
      name = "bob-alien-blue-research",
      icon = "__bobplates__/graphics/icons/technology/alien-blue-alloy.png",
      icon_size = 64,
      prerequisites = {
        "bob-tungsten-processing",
        "military-3",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-alien-blue-alloy",
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
    },

    {
      type = "technology",
      name = "bob-alien-orange-research",
      icon = "__bobplates__/graphics/icons/technology/alien-orange-alloy.png",
      icon_size = 64,
      prerequisites = {
        "military-3",
        "bob-gold-processing",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-alien-orange-alloy",
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
    },

    {
      type = "technology",
      name = "bob-alien-purple-research",
      icon = "__bobplates__/graphics/icons/alien/alien-acid.png",
      icon_size = 32,
      prerequisites = {
        "sulfur-processing",
        "military-3",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-alien-acid",
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
    },

    {
      type = "technology",
      name = "bob-alien-yellow-research",
      icon = "__bobplates__/graphics/icons/alien/alien-explosive.png",
      icon_size = 32,
      prerequisites = {
        "sulfur-processing",
        "military-3",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-alien-explosive",
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
    },

    {
      type = "technology",
      name = "bob-alien-green-research",
      icon = "__bobplates__/graphics/icons/alien/alien-poison.png",
      icon_size = 32,
      prerequisites = {
        "bob-nitrogen-processing",
        "military-3",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-alien-poison",
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
    },

    {
      type = "technology",
      name = "bob-alien-red-research",
      icon = "__bobplates__/graphics/icons/alien/alien-fire.png",
      icon_size = 32,
      prerequisites = {
        "oil-processing",
        "military-3",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-alien-fire",
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
    },
  })
end
