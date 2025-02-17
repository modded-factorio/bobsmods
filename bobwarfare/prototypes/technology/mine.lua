data:extend({
  {
    type = "technology",
    name = "bob-poison-mine",
    icon = "__base__/graphics/technology/land-mine.png",
    icon_size = 256,
    prerequisites = {
      "land-mine",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-poison-mine",
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
    order = "e-e-a",
  },

  {
    type = "technology",
    name = "bob-slowdown-mine",
    icon = "__base__/graphics/technology/land-mine.png",
    icon_size = 256,
    prerequisites = {
      "land-mine",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-slowdown-mine",
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
    order = "e-e-b",
  },

  {
    type = "technology",
    name = "bob-distractor-mine",
    icon = "__base__/graphics/technology/land-mine.png",
    icon_size = 256,
    prerequisites = {
      "land-mine",
      "distractor",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-distractor-mine",
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
    order = "e-e-c",
  },
})
