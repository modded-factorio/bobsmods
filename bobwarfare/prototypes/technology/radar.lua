data:extend({
  {
    type = "technology",
    name = "radars-2",
    icon = "__base__/graphics/technology/radar.png",
    icon_size = 256,
    prerequisites = {
      "military-2",
      "radar",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "radar-2",
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
    name = "radars-3",
    icon = "__base__/graphics/technology/radar.png",
    icon_size = 256,
    prerequisites = {
      "radars-2",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "radar-3",
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
  },

  {
    type = "technology",
    name = "radars-4",
    icon = "__base__/graphics/technology/radar.png",
    icon_size = 256,
    prerequisites = {
      "radars-3",
      "production-science-pack",
      "processing-unit",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "radar-4",
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
  },

  {
    type = "technology",
    name = "radars-5",
    icon = "__base__/graphics/technology/radar.png",
    icon_size = 256,
    prerequisites = {
      "radars-4",
      "military-4",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "radar-5",
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
  },
})
