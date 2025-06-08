data:extend({
  {
    type = "recipe",
    name = "bob-poison-mine",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "poison-capsule", amount = 4 },
    },
    results = { { type = "item", name = "bob-poison-mine", amount = 4 } },
  },

  {
    type = "recipe",
    name = "bob-slowdown-mine",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "slowdown-capsule", amount = 4 },
    },
    results = { { type = "item", name = "bob-slowdown-mine", amount = 4 } },
  },

  {
    type = "recipe",
    name = "bob-distractor-mine",
    enabled = false,
    energy_required = 3.75,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "distractor-capsule", amount = 1 },
    },
    results = { { type = "item", name = "bob-distractor-mine", amount = 3 } },
  },
})
