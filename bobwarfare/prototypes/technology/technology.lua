data:extend({
  {
    type = "technology",
    name = "bob-nitroglycerin-processing",
    icon = "__bobwarfare__/graphics/icons/technology/nitroglycerin.png",
    icon_size = 128,
    prerequisites = {
      "oil-processing",
      "sulfur-processing",
      "military-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-glycerol",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-nitroglycerin",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
    order = "d-b-b5-a",
  },

  {
    type = "technology",
    name = "bob-cordite-processing",
    icon = "__bobwarfare__/graphics/icons/technology/cordite.png",
    icon_size = 64,
    prerequisites = {
      "bob-nitroglycerin-processing",
      "plastics",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-petroleum-jelly",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-gun-cotton",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-cordite",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
    order = "d-b-b5-b",
  },
})
