if settings.startup["bobmods-power-steam"].value == true then
  data:extend({
    {
      type = "technology",
      name = "bob-oil-boiler-1",
      prerequisites = {
        "bob-boiler-2",
      },
      icon = "__bobpower__/graphics/icons/technology/oil-boiler.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-oil-boiler",
        },
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      order = "[oil-boiler]-1",
    },

    {
      type = "technology",
      name = "bob-oil-boiler-2",
      prerequisites = {
        "bob-oil-boiler-1",
        "chemical-science-pack",
      },
      icon = "__bobpower__/graphics/icons/technology/oil-boiler.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-oil-boiler-2",
        },
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
      order = "[oil-boiler]-2",
    },

    {
      type = "technology",
      name = "bob-oil-boiler-3",
      prerequisites = {
        "bob-oil-boiler-2",
        "production-science-pack",
      },
      icon = "__bobpower__/graphics/icons/technology/oil-boiler.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-oil-boiler-3",
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
      order = "[oil-boiler]-3",
    },

    {
      type = "technology",
      name = "bob-oil-boiler-4",
      prerequisites = {
        "bob-oil-boiler-3",
        "utility-science-pack",
      },
      icon = "__bobpower__/graphics/icons/technology/oil-boiler.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-oil-boiler-4",
        },
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
      order = "[oil-steam]-4",
    },
  })
end
