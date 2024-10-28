if settings.startup["bobmods-power-fluidgenerator"].value == true then
  data:extend({
    {
      type = "technology",
      name = "fluid-generator-1",
      prerequisites = {
        "steel-processing",
        "electronics",
        "logistic-science-pack",
      },
      icon = "__bobpower__/graphics/icons/technology/fluid-generator.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "fluid-generator",
        },
      },
      unit = {
        count = 150,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      order = "[fluid-generator]-1",
    },

    {
      type = "technology",
      name = "fluid-generator-2",
      prerequisites = {
        "fluid-generator-1",
        "chemical-science-pack",
      },
      icon = "__bobpower__/graphics/icons/technology/fluid-generator.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "fluid-generator-2",
        },
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
      order = "[fluid-generator]-2",
    },

    {
      type = "technology",
      name = "fluid-generator-3",
      prerequisites = {
        "fluid-generator-2",
        "production-science-pack",
      },
      icon = "__bobpower__/graphics/icons/technology/fluid-generator.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "fluid-generator-3",
        },
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
      order = "[fluid-generator]-3",
    },
  })

  if mods["bobrevamp"] and data.raw.fluid.hydrogen and data.raw.fluid.oxygen and data.raw.fluid.nitrogen then
    data:extend({
      {
        type = "technology",
        name = "hydrazine-generator",
        prerequisites = {
          "fluid-generator-3",
          "hydrazine",
          "processing-unit",
          "utility-science-pack",
        },
        icon = "__bobpower__/graphics/icons/technology/fluid-generator.png",
        icon_size = 128,
        effects = {
          {
            type = "unlock-recipe",
            recipe = "hydrazine-generator",
          },
        },
        unit = {
          count = 350,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
            { "production-science-pack", 1 },
            { "utility-science-pack", 1 },
          },
          time = 30,
        },
        order = "[hydrazine-generator]",
      },
    })
  end
end
