if settings.startup["bobmods-power-poles"].value == true then
  data:extend({
    {
      type = "technology",
      name = "bob-electric-pole-2",
      icon = "__base__/graphics/technology/electric-energy-distribution-1.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-medium-electric-pole-2",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-big-electric-pole-2",
        },
      },
      prerequisites = {
        "electric-energy-distribution-1",
      },
      unit = {
        count = 150,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      order = "c-e-b-2",
    },

    {
      type = "technology",
      name = "bob-electric-pole-3",
      icon = "__base__/graphics/technology/electric-energy-distribution-1.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-medium-electric-pole-3",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-big-electric-pole-3",
        },
      },
      prerequisites = {
        "bob-electric-pole-2",
        "chemical-science-pack",
      },
      unit = {
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
      order = "c-e-b-3",
    },

    {
      type = "technology",
      name = "bob-electric-pole-4",
      icon = "__base__/graphics/technology/electric-energy-distribution-1.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-medium-electric-pole-4",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-big-electric-pole-4",
        },
      },
      prerequisites = {
        "bob-electric-pole-3",
        "production-science-pack",
      },
      unit = {
        count = 250,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 30,
      },
      order = "c-e-b-4",
    },

    {
      type = "technology",
      name = "bob-electric-substation-2",
      icon = "__base__/graphics/technology/electric-energy-distribution-2.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-substation-2",
        },
      },
      prerequisites = {
        "electric-energy-distribution-2",
        "advanced-circuit",
      },
      unit = {
        count = 300,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 45,
      },
      order = "c-e-c-2",
    },

    {
      type = "technology",
      name = "bob-electric-substation-3",
      icon = "__base__/graphics/technology/electric-energy-distribution-2.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-substation-3",
        },
      },
      prerequisites = {
        "bob-electric-substation-2",
        "processing-unit",
      },
      unit = {
        count = 350,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 45,
      },
      order = "c-e-c-3",
    },

    {
      type = "technology",
      name = "bob-electric-substation-4",
      icon = "__base__/graphics/technology/electric-energy-distribution-2.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-substation-4",
        },
      },
      prerequisites = {
        "bob-electric-substation-3",
        "production-science-pack",
      },
      unit = {
        count = 400,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 45,
      },
      order = "c-e-c-4",
    },
  })
end
