if settings.startup["bobmods-power-solar"].value == true then
  data.raw.recipe["solar-panel"].ingredients = {
    { "steel-plate", 4 },
    { "electronic-circuit", 14 },
    { "copper-plate", 4 },
  }

  data:extend({
    {
      type = "recipe",
      name = "solar-panel-small",
      energy_required = 4.5,
      enabled = false,
      ingredients = {
        { "steel-plate", 2 },
        { "electronic-circuit", 6 },
        { "copper-plate", 2 },
      },
      result = "solar-panel-small",
    },

    {
      type = "recipe",
      name = "solar-panel-large",
      energy_required = 18,
      enabled = false,
      ingredients = {
        { "steel-plate", 8 },
        { "electronic-circuit", 24 },
        { "copper-plate", 8 },
      },
      result = "solar-panel-large",
    },

    {
      type = "recipe",
      name = "solar-panel-small-2",
      energy_required = 4.5,
      enabled = false,
      ingredients = {
        { "solar-panel-small", 1 },
        { "steel-plate", 2 },
        { "advanced-circuit", 4 },
        { "copper-plate", 2 },
      },
      result = "solar-panel-small-2",
    },

    {
      type = "recipe",
      name = "solar-panel-2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { "solar-panel", 1 },
        { "steel-plate", 4 },
        { "advanced-circuit", 9 },
        { "copper-plate", 4 },
      },
      result = "solar-panel-2",
    },

    {
      type = "recipe",
      name = "solar-panel-large-2",
      energy_required = 18,
      enabled = false,
      ingredients = {
        { "solar-panel-large", 1 },
        { "steel-plate", 8 },
        { "advanced-circuit", 16 },
        { "copper-plate", 8 },
      },
      result = "solar-panel-large-2",
    },

    {
      type = "recipe",
      name = "solar-panel-small-3",
      energy_required = 4.5,
      enabled = false,
      ingredients = {
        { "solar-panel-small-2", 1 },
        { "steel-plate", 2 },
        { "processing-unit", 4 },
        { "copper-plate", 2 },
      },
      result = "solar-panel-small-3",
    },

    {
      type = "recipe",
      name = "solar-panel-3",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { "solar-panel-2", 1 },
        { "steel-plate", 4 },
        { "processing-unit", 9 },
        { "copper-plate", 4 },
      },
      result = "solar-panel-3",
    },

    {
      type = "recipe",
      name = "solar-panel-large-3",
      energy_required = 18,
      enabled = false,
      ingredients = {
        { "solar-panel-large-2", 1 },
        { "steel-plate", 8 },
        { "processing-unit", 16 },
        { "copper-plate", 8 },
      },
      result = "solar-panel-large-3",
    },
  })
end
