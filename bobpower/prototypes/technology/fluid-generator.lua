if settings.startup["bobmods-power-fluidgenerator"].value == true then
  data:extend({
    {
      type = "technology",
      name = "bob-fluid-generator-1",
      prerequisites = {
        "steel-processing",
        "electronics",
        "logistic-science-pack",
      },
      icon = "__bobpower__/graphics/icons/technology/fluid-generator.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-fluid-generator",
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
      name = "bob-fluid-generator-2",
      prerequisites = {
        "bob-fluid-generator-1",
        "chemical-science-pack",
      },
      icon = "__bobpower__/graphics/icons/technology/fluid-generator.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-fluid-generator-2",
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
      name = "bob-fluid-generator-3",
      prerequisites = {
        "bob-fluid-generator-2",
        "production-science-pack",
      },
      icon = "__bobpower__/graphics/icons/technology/fluid-generator.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-fluid-generator-3",
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

  if
    mods["bobrevamp"]
    and data.raw.fluid["bob-hydrogen"]
    and data.raw.fluid["bob-oxygen"]
    and data.raw.fluid["bob-nitrogen"]
  then
    data:extend({
      {
        type = "technology",
        name = "bob-hydrazine-generator",
        prerequisites = {
          "bob-fluid-generator-3",
          "bob-hydrazine",
          "processing-unit",
          "utility-science-pack",
        },
        icon = "__bobpower__/graphics/icons/technology/fluid-generator.png",
        icon_size = 256,
        effects = {
          {
            type = "unlock-recipe",
            recipe = "bob-hydrazine-generator",
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
