if settings.startup["bobmods-power-accumulators"].value == true then
  data:extend({
    {
      type = "technology",
      name = "bob-electric-energy-accumulators-2",
      localised_name = { "", { "technology-name.electric-energy-accumulators-1" }, " 2" },
      localised_description = { "technology-description.electric-energy-accumulators" },
      icon = "__base__/graphics/technology/electric-energy-acumulators.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-large-accumulator-2",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-fast-accumulator-2",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-slow-accumulator-2",
        },
      },
      prerequisites = {
        "electric-energy-accumulators",
        "advanced-circuit",
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
      order = "c-e-a-2",
    },

    {
      type = "technology",
      name = "bob-electric-energy-accumulators-3",
      localised_name = { "", { "technology-name.electric-energy-accumulators-1" }, " 3" },
      localised_description = { "technology-description.electric-energy-accumulators" },
      icon = "__base__/graphics/technology/electric-energy-acumulators.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-large-accumulator-3",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-fast-accumulator-3",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-slow-accumulator-3",
        },
      },
      prerequisites = {
        "bob-electric-energy-accumulators-2",
        "processing-unit",
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
      order = "c-e-a-3",
    },
  })
end
