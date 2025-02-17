if settings.startup["bobmods-power-accumulators"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "bob-fast-accumulator",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 2 },
        { type = "item", name = "electronic-circuit", amount = 4 },
        { type = "item", name = "battery", amount = 4 },
      },
      results = { { type = "item", name = "bob-fast-accumulator", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-slow-accumulator",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 2 },
        { type = "item", name = "electronic-circuit", amount = 4 },
        { type = "item", name = "battery", amount = 4 },
      },
      results = { { type = "item", name = "bob-slow-accumulator", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-large-accumulator-2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "accumulator", amount = 1 },
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "advanced-circuit", amount = 2 },
        { type = "item", name = "battery", amount = 10 },
      },
      results = { { type = "item", name = "bob-large-accumulator-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-fast-accumulator-2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-fast-accumulator", amount = 1 },
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "advanced-circuit", amount = 4 },
        { type = "item", name = "battery", amount = 4 },
      },
      results = { { type = "item", name = "bob-fast-accumulator-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-slow-accumulator-2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-slow-accumulator", amount = 1 },
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "advanced-circuit", amount = 4 },
        { type = "item", name = "battery", amount = 4 },
      },
      results = { { type = "item", name = "bob-slow-accumulator-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-large-accumulator-3",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-large-accumulator-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "processing-unit", amount = 2 },
        { type = "item", name = "battery", amount = 10 },
      },
      results = { { type = "item", name = "bob-large-accumulator-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-fast-accumulator-3",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-fast-accumulator-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "processing-unit", amount = 4 },
        { type = "item", name = "battery", amount = 4 },
      },
      results = { { type = "item", name = "bob-fast-accumulator-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-slow-accumulator-3",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-slow-accumulator-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "processing-unit", amount = 4 },
        { type = "item", name = "battery", amount = 4 },
      },
      results = { { type = "item", name = "bob-slow-accumulator-3", amount = 1 } },
    },
  })
end
