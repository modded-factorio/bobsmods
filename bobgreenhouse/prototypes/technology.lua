data:extend({
  {
    type = "technology",
    name = "bob-greenhouse",
    icon = "__bobgreenhouse__/graphics/icons/technology/greenhouse.png",
    icon_size = 256,
    prerequisites = {
      "automation-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-greenhouse",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-basic-greenhouse-cycle",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-seedling",
      },
    },
    unit = {
      count = 20,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 15,
    },
    order = "f-a-a",
  },
  {
    type = "technology",
    name = "bob-fertiliser",
    icon = "__bobgreenhouse__/graphics/icons/technology/fertiliser.png",
    icon_size = 128,
    prerequisites = {
      "bob-greenhouse",
      "oil-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-fertiliser",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-advanced-greenhouse-cycle",
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
    order = "f-a-b",
  },
})
