if settings.startup["bobmods-power-solar"].value == true then
  data.raw.recipe["solar-panel"].ingredients = {
    { type = "item", name = "steel-plate", amount = 4 },
    { type = "item", name = "electronic-circuit", amount = 14 },
    { type = "item", name = "copper-plate", amount = 4 },
  }

  data:extend({
    {
      type = "recipe",
      name = "solar-panel-small",
      energy_required = 4.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "electronic-circuit", amount = 6 },
        { type = "item", name = "copper-plate", amount = 2 },
      },
      results = { { type = "item", name = "solar-panel-small", amount = 1 } },
    },

    {
      type = "recipe",
      name = "solar-panel-large",
      energy_required = 18,
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 8 },
        { type = "item", name = "electronic-circuit", amount = 24 },
        { type = "item", name = "copper-plate", amount = 8 },
      },
      results = { { type = "item", name = "solar-panel-large", amount = 1 } },
    },

    {
      type = "recipe",
      name = "solar-panel-small-2",
      energy_required = 4.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "solar-panel-small", amount = 1 },
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "advanced-circuit", amount = 4 },
        { type = "item", name = "copper-plate", amount = 2 },
      },
      results = { { type = "item", name = "solar-panel-small-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "solar-panel-2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "solar-panel", amount = 1 },
        { type = "item", name = "steel-plate", amount = 4 },
        { type = "item", name = "advanced-circuit", amount = 9 },
        { type = "item", name = "copper-plate", amount = 4 },
      },
      results = { { type = "item", name = "solar-panel-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "solar-panel-large-2",
      energy_required = 18,
      enabled = false,
      ingredients = {
        { type = "item", name = "solar-panel-large", amount = 1 },
        { type = "item", name = "steel-plate", amount = 8 },
        { type = "item", name = "advanced-circuit", amount = 16 },
        { type = "item", name = "copper-plate", amount = 8 },
      },
      results = { { type = "item", name = "solar-panel-large-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "solar-panel-small-3",
      energy_required = 4.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "solar-panel-small-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "processing-unit", amount = 4 },
        { type = "item", name = "copper-plate", amount = 2 },
      },
      results = { { type = "item", name = "solar-panel-small-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "solar-panel-3",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "solar-panel-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 4 },
        { type = "item", name = "processing-unit", amount = 9 },
        { type = "item", name = "copper-plate", amount = 4 },
      },
      results = { { type = "item", name = "solar-panel-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "solar-panel-large-3",
      energy_required = 18,
      enabled = false,
      ingredients = {
        { type = "item", name = "solar-panel-large-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 8 },
        { type = "item", name = "processing-unit", amount = 16 },
        { type = "item", name = "copper-plate", amount = 8 },
      },
      results = { { type = "item", name = "solar-panel-large-3", amount = 1 } },
    },
  })
end
