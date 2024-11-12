data:extend({
  {
    type = "technology",
    name = "advanced-electronics-3",
    icon = "__bobelectronics__/graphics/icons/technology/advanced-electronics-3.png",
    icon_size = 128,
    prerequisites = {
      "processing-unit",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "advanced-processing-unit",
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
    order = "a-d-d",
  },

  {
    type = "technology",
    name = "bob-wood-processing",
    icon = "__base__/graphics/icons/wood.png",
    icon_size = 64,
    prerequisites = {
      "automation",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-resin-wood",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-rubber",
      },
    },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 30,
    },
    order = "e-a-a",
  },
})
