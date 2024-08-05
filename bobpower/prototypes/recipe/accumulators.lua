if settings.startup["bobmods-power-accumulators"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "fast-accumulator",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 2 },
        { type = "item", name = "electronic-circuit", amount = 4 },
        { type = "item", name = "battery", amount = 4 },
      },
      results = { { type = "item", name = "fast-accumulator", amount = 1 } },
    },

    {
      type = "recipe",
      name = "slow-accumulator",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 2 },
        { type = "item", name = "electronic-circuit", amount = 4 },
        { type = "item", name = "battery", amount = 4 },
      },
      results = { { type = "item", name = "slow-accumulator", amount = 1 } },
    },

    {
      type = "recipe",
      name = "large-accumulator-2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "accumulator", amount = 1 },
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "advanced-circuit", amount = 2 },
        { type = "item", name = "battery", amount = 10 },
      },
      results = { { type = "item", name = "large-accumulator-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "fast-accumulator-2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "fast-accumulator", amount = 1 },
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "advanced-circuit", amount = 4 },
        { type = "item", name = "battery", amount = 4 },
      },
      results = { { type = "item", name = "fast-accumulator-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "slow-accumulator-2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "slow-accumulator", amount = 1 },
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "advanced-circuit", amount = 4 },
        { type = "item", name = "battery", amount = 4 },
      },
      results = { { type = "item", name = "slow-accumulator-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "large-accumulator-3",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "large-accumulator-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "processing-unit", amount = 2 },
        { type = "item", name = "battery", amount = 10 },
      },
      results = { { type = "item", name = "large-accumulator-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "fast-accumulator-3",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "fast-accumulator-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "processing-unit", amount = 4 },
        { type = "item", name = "battery", amount = 4 },
      },
      results = { { type = "item", name = "fast-accumulator-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "slow-accumulator-3",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "slow-accumulator-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "processing-unit", amount = 4 },
        { type = "item", name = "battery", amount = 4 },
      },
      results = { { type = "item", name = "slow-accumulator-3", amount = 1 } },
    },
  })
end
