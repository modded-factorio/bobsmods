if settings.startup["bobmods-power-solar"].value == true then
  data:extend({
    {
      type = "technology",
      name = "bob-solar-energy-2",
      localised_name = { "", { "technology-name.solar-energy" }, " 2" },
      localised_description = { "technology-description.solar-energy" },
      icon = "__base__/graphics/technology/solar-energy.png",
      icon_size = 256,
      icon_mipmaps = 4,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "solar-panel-small-2",
        },
        {
          type = "unlock-recipe",
          recipe = "solar-panel-2",
        },
        {
          type = "unlock-recipe",
          recipe = "solar-panel-large-2",
        },
      },
      prerequisites = {
        "solar-energy",
        "advanced-electronics",
        "chemical-science-pack",
      },
      unit = {
        count = 250,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
      order = "a-h-c-b",
    },

    {
      type = "technology",
      name = "bob-solar-energy-3",
      localised_name = { "", { "technology-name.solar-energy" }, " 3" },
      localised_description = { "technology-description.solar-energy" },
      icon = "__base__/graphics/technology/solar-energy.png",
      icon_size = 256,
      icon_mipmaps = 4,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "solar-panel-small-3",
        },
        {
          type = "unlock-recipe",
          recipe = "solar-panel-3",
        },
        {
          type = "unlock-recipe",
          recipe = "solar-panel-large-3",
        },
      },
      prerequisites = {
        "bob-solar-energy-2",
        "advanced-electronics-2",
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
      order = "a-h-c-c",
    },
  })
end
