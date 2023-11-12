data:extend({
  {
    type = "technology",
    name = "bob-armor-making-3",
    icon = "__base__/graphics/technology/armor-making.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      "heavy-armor",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "heavy-armor-2",
      },
    },
    unit = {
      count = 150,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
    },
    order = "g-a-c",
  },

  {
    type = "technology",
    name = "bob-armor-making-4",
    icon = "__base__/graphics/technology/armor-making.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      "bob-armor-making-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "heavy-armor-3",
      },
    },
    unit = {
      count = 100,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
    },
    order = "g-a-d",
  },

  {
    type = "technology",
    name = "bob-power-armor-3",
    icon = "__bobwarfare__/graphics/icons/technology/power-armor-mk3.png",
    icon_size = 64,
    prerequisites = {
      "effectivity-module-3",
      "power-armor-mk2",
      "speed-module-3"
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
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "utility-science-pack", 1 },
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
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
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
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 30,
    },
    order = "g-c-e",
  },
})
