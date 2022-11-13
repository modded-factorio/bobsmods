data:extend({
  {
    type = "technology",
    name = "nitroglycerin-processing",
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
        recipe = "glycerol",
      },
      {
        type = "unlock-recipe",
        recipe = "nitroglycerin",
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
    name = "cordite-processing",
    icon = "__bobwarfare__/graphics/icons/technology/cordite.png",
    icon_size = 64,
    prerequisites = {
      "nitroglycerin-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "petroleum-jelly",
      },
      {
        type = "unlock-recipe",
        recipe = "gun-cotton",
      },
      {
        type = "unlock-recipe",
        recipe = "cordite",
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
