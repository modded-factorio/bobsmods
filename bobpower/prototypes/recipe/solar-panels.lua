if settings.startup["bobmods-power-solar"].value == true then
  data.raw.recipe["solar-panel"].ingredients = {
    { type = "item", name = "electronic-circuit", amount = 18 },
    { type = "item", name = "steel-plate", amount = 9 },
    { type = "item", name = "copper-plate", amount = 9 },
    { type = "item", name = "copper-cable", amount = 18 },
  }

  data:extend({
    {
      type = "recipe",
      name = "bob-solar-panel-small",
      energy_required = 4.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "electronic-circuit", amount = 8 },
        { type = "item", name = "steel-plate", amount = 4 },
        { type = "item", name = "copper-plate", amount = 4 },
        { type = "item", name = "copper-cable", amount = 8 },
      },
      results = { { type = "item", name = "bob-solar-panel-small", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-solar-panel-large",
      energy_required = 18,
      enabled = false,
      ingredients = {
        { type = "item", name = "electronic-circuit", amount = 32 },
        { type = "item", name = "steel-plate", amount = 16 },
        { type = "item", name = "copper-plate", amount = 16 },
        { type = "item", name = "copper-cable", amount = 32 },
      },
      results = { { type = "item", name = "bob-solar-panel-large", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-solar-panel-small-2",
      energy_required = 4.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-solar-panel-small", amount = 1 },
        { type = "item", name = "advanced-circuit", amount = 4 },
        { type = "item", name = "steel-plate", amount = 8 },
        { type = "item", name = "copper-plate", amount = 8 },
        { type = "item", name = "copper-cable", amount = 16 },
      },
      results = { { type = "item", name = "bob-solar-panel-small-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-solar-panel-2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "solar-panel", amount = 1 },
        { type = "item", name = "advanced-circuit", amount = 9 },
        { type = "item", name = "steel-plate", amount = 18 },
        { type = "item", name = "copper-plate", amount = 18 },
        { type = "item", name = "copper-cable", amount = 36 },
      },
      results = { { type = "item", name = "bob-solar-panel-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-solar-panel-large-2",
      energy_required = 18,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-solar-panel-large", amount = 1 },
        { type = "item", name = "advanced-circuit", amount = 16 },
        { type = "item", name = "steel-plate", amount = 32 },
        { type = "item", name = "copper-plate", amount = 32 },
        { type = "item", name = "copper-cable", amount = 64 },
      },
      results = { { type = "item", name = "bob-solar-panel-large-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-solar-panel-small-3",
      energy_required = 4.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-solar-panel-small-2", amount = 1 },
        { type = "item", name = "processing-unit", amount = 4 },
        { type = "item", name = "steel-plate", amount = 12 },
        { type = "item", name = "copper-plate", amount = 12 },
        { type = "item", name = "copper-cable", amount = 24 },
      },
      results = { { type = "item", name = "bob-solar-panel-small-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-solar-panel-3",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-solar-panel-2", amount = 1 },
        { type = "item", name = "processing-unit", amount = 9 },
        { type = "item", name = "steel-plate", amount = 27 },
        { type = "item", name = "copper-plate", amount = 27 },
        { type = "item", name = "copper-cable", amount = 54 },
      },
      results = { { type = "item", name = "bob-solar-panel-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-solar-panel-large-3",
      energy_required = 18,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-solar-panel-large-2", amount = 1 },
        { type = "item", name = "processing-unit", amount = 16 },
        { type = "item", name = "steel-plate", amount = 48 },
        { type = "item", name = "copper-plate", amount = 48 },
        { type = "item", name = "copper-cable", amount = 96 },
      },
      results = { { type = "item", name = "bob-solar-panel-large-3", amount = 1 } },
    },
  })
end
