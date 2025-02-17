data:extend({
  {
    type = "recipe",
    name = "bob-pump-2",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "pump", amount = 1 },
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "bob-copper-pipe", amount = 1 },
    },
    results = { { type = "item", name = "bob-pump-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-pump-3",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-pump-2", amount = 1 },
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "bob-copper-pipe", amount = 1 },
    },
    results = { { type = "item", name = "bob-pump-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-pump-4",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-pump-3", amount = 1 },
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "bob-copper-pipe", amount = 1 },
    },
    results = { { type = "item", name = "bob-pump-4", amount = 1 } },
  },
})
