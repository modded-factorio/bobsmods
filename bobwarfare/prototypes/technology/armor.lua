data:extend({
  {
    type = "technology",
    name = "bob-power-armor-3",
    icon = "__bobwarfare__/graphics/icons/technology/power-armor-mk3.png",
    icon_size = 64,
    prerequisites = {
      "efficiency-module-2",
      "power-armor-mk2",
      "speed-module-2",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-power-armor-mk3",
      },
    },
    unit = {
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
    order = "g-c-c",
  },

  {
    type = "technology",
    name = "bob-power-armor-4",
    icon = "__bobwarfare__/graphics/icons/technology/power-armor-mk4.png",
    icon_size = 64,
    prerequisites = {
      "bob-power-armor-3",
      "efficiency-module-3",
      "speed-module-3",
      "utility-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-power-armor-mk4",
      },
    },
    unit = {
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 30,
    },
    order = "g-c-d",
  },
  {
    type = "technology",
    name = "bob-power-armor-5",
    icon = "__bobwarfare__/graphics/icons/technology/power-armor-mk5.png",
    icon_size = 64,
    prerequisites = {
      "bob-power-armor-4",
      "space-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-power-armor-mk5",
      },
    },
    unit = {
      count = 300,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
      },
      time = 30,
    },
    order = "g-c-e",
  },
})
