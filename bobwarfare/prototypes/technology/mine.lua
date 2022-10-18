data:extend({
  {
    type = "technology",
    name = "poison-mine",
    icon = "__base__/graphics/technology/land-mine.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      "land-mine",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "poison-mine",
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
    name = "slowdown-mine",
    icon = "__base__/graphics/technology/land-mine.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      "land-mine",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "slowdown-mine",
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
    name = "distractor-mine",
    icon = "__base__/graphics/technology/land-mine.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      "land-mine",
      "distractor",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "distractor-mine",
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
