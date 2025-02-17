if settings.startup["bobmods-power-steam"].value == true then
  data:extend({
    {
      type = "technology",
      name = "bob-steam-engine-2",
      prerequisites = {
        "steel-processing",
        "logistic-science-pack",
      },
      icon = "__bobpower__/graphics/icons/technology/steam-engine.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-steam-engine-2",
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
    },

    {
      type = "technology",
      name = "bob-steam-engine-3",
      prerequisites = {
        "bob-steam-engine-2",
        "chemical-science-pack",
      },
      icon = "__bobpower__/graphics/icons/technology/steam-engine.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-steam-engine-3",
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
    },

    {
      type = "technology",
      name = "bob-steam-engine-4",
      prerequisites = {
        "bob-steam-engine-3",
        "production-science-pack",
      },
      icon = "__bobpower__/graphics/icons/technology/steam-engine.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-steam-engine-4",
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
    },

    {
      type = "technology",
      name = "bob-steam-engine-5",
      prerequisites = {
        "bob-steam-engine-4",
        "utility-science-pack",
      },
      icon = "__bobpower__/graphics/icons/technology/steam-engine.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-steam-engine-5",
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
    },
  })
end
