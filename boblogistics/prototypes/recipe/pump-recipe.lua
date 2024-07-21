data:extend({
  {
    type = "recipe",
    name = "bob-pump-2",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { "pump", 1 },
      { "steel-plate", 1 },
      { "copper-pipe", 1 },
    },
    results = { { type = "item", name = "bob-pump-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-pump-3",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { "bob-pump-2", 1 },
      { "steel-plate", 1 },
      { "copper-pipe", 1 },
    },
    results = { { type = "item", name = "bob-pump-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-pump-4",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { "bob-pump-3", 1 },
      { "steel-plate", 1 },
      { "copper-pipe", 1 },
    },
    results = { { type = "item", name = "bob-pump-4", amount = 1 } },
  },
})
