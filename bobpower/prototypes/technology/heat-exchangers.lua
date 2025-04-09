if settings.startup["bobmods-power-steam"].value == true then
  bobmods.lib.tech.remove_recipe_unlock("nuclear-power", "heat-exchanger")

  data:extend({
    {
      type = "technology",
      name = "bob-heat-exchanger-1",
      icon = "__bobpower__/graphics/icons/technology/heat-exchanger.png",
      icon_size = 128,
      prerequisites = {
        "bob-boiler-2",
        "bob-heat-pipe-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "heat-exchanger",
        },
      },
      unit = {
        time = 30,
        count = 50,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
      },
      order = "[heat-exchanger]-1",
    },
    {
      type = "technology",
      name = "bob-heat-exchanger-2",
      icon = "__bobpower__/graphics/icons/technology/heat-exchanger.png",
      icon_size = 128,
      prerequisites = {
        "bob-boiler-3",
        "bob-heat-pipe-2",
        "bob-heat-exchanger-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-heat-exchanger-2",
        },
      },
      unit = {
        time = 30,
        count = 50,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
      },
      order = "[heat-exchanger]-2",
    },
    {
      type = "technology",
      name = "bob-heat-exchanger-3",
      icon = "__bobpower__/graphics/icons/technology/heat-exchanger.png",
      icon_size = 128,
      prerequisites = {
        "bob-heat-exchanger-2",
        "bob-heat-pipe-3",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-heat-exchanger-3",
        },
      },
      unit = {
        time = 30,
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
      },
      order = "[heat-exchanger]-3",
    },
    {
      type = "technology",
      name = "bob-heat-exchanger-4",
      icon = "__bobpower__/graphics/icons/technology/heat-exchanger.png",
      icon_size = 128,
      prerequisites = {
        "bob-heat-exchanger-3",
        "bob-heat-pipe-4",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-heat-exchanger-4",
        },
      },
      unit = {
        time = 30,
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
      },
      order = "[heat-exchanger]-4",
    },
  })
end
