data:extend({
  {
    type = "technology",
    name = "bob-tanks-2",
    icon = "__base__/graphics/technology/tank.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      "tank",
      "artillery",
      "advanced-electronics-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-tank-2",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
    order = "e-c-c2",
  },

  {
    type = "technology",
    name = "bob-tanks-3",
    icon = "__base__/graphics/technology/tank.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      "bob-tanks-2",
      "military-4",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-tank-3",
      },
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 45,
    },
    order = "e-c-c3",
  },
})
