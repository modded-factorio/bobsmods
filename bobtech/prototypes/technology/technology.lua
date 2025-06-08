data:extend({
  {
    type = "technology",
    name = "bob-advanced-research",
    icon = "__bobtech__/graphics/icons/lab2-technology.png",
    icon_size = 128,
    prerequisites = {
      "advanced-circuit",
      "logistics-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-lab-2",
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
  },

  {
    type = "technology",
    name = "bob-advanced-logistic-science-pack",
    essential = true,
    icon = "__bobtech__/graphics/icons/logistic-science-pack-technology.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-advanced-logistic-science-pack",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    prerequisites = {
      "logistics-3",
      "robotics",
    },
  },
})

if settings.startup["bobmods-burnerphase"].value == true then
  if mods["bobplates"] then
    data:extend({
      {
        type = "technology",
        name = "bob-burner-lab",
        icon = "__bobtech__/graphics/icons/lab0-technology.png",
        icon_size = 128,
        prerequisites = {},
        effects = {
          {
            type = "unlock-recipe",
            recipe = "bob-burner-lab",
          },
        },
        research_trigger = {
          type = "craft-item",
          item = "bob-glass",
          count = 5,
        },
        ignore_tech_cost_multiplier = true,
      },
    })
  end

  data:extend({

    {
      type = "technology",
      name = "bob-electricity",
      icon = "__base__/graphics/technology/electric-energy-distribution-1.png",
      icon_size = 256,
      prerequisites = {},
      effects = {
        {
          type = "unlock-recipe",
          recipe = "copper-cable",
        },
        {
          type = "unlock-recipe",
          recipe = "small-electric-pole",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-burner-generator",
        },
      },
      research_trigger = {
        type = "craft-item",
        item = "copper-plate",
        count = 50,
      },
      ignore_tech_cost_multiplier = true,
    },

    {
      type = "technology",
      name = "bob-lab",
      icon = "__bobtech__/graphics/icons/lab-technology.png",
      icon_size = 128,
      prerequisites = {
        "logistics",
      },
      effects = {},
      unit = {
        count = 20,
        time = 10,
        ingredients = {
          { "automation-science-pack", 1 },
        },
      },
    },
    {
      type = "technology",
      name = "bob-steam-engine-1",
      icon = "__base__/graphics/technology/steam-power.png",
      icon_size = 256,
      prerequisites = {
        "logistic-science-pack",
        "steam-power",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "steam-engine",
        },
      },
      unit = {
        count = 50,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 10,
      },
    },
  })
end
