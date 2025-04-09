if settings.startup["bobmods-power-steam"].value == true then
  data:extend({
    {
      type = "technology",
      name = "bob-boiler-2",
      prerequisites = {
        "steel-processing",
        "logistic-science-pack",
      },
      icon = "__bobpower__/graphics/icons/technology/boiler.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-boiler-2",
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
      order = "[boiler]-2",
    },

    {
      type = "technology",
      name = "bob-boiler-3",
      prerequisites = {
        "bob-boiler-2",
        "chemical-science-pack",
      },
      icon = "__bobpower__/graphics/icons/technology/boiler.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-boiler-3",
        },
      },
      unit = {
        count = 50,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
      order = "[boiler]-3",
    },

    {
      type = "technology",
      name = "bob-boiler-4",
      prerequisites = {
        "bob-boiler-3",
        "production-science-pack",
      },
      icon = "__bobpower__/graphics/icons/technology/boiler.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-boiler-4",
        },
      },
      unit = {
        count = 50,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 30,
      },
      order = "[boiler]-4",
    },

    {
      type = "technology",
      name = "bob-boiler-5",
      prerequisites = {
        "bob-boiler-4",
        "utility-science-pack",
      },
      icon = "__bobpower__/graphics/icons/technology/boiler.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-boiler-5",
        },
      },
      unit = {
        count = 50,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 30,
      },
      order = "[steam]-5",
    },
  })
end
