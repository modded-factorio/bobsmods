data:extend({
  {
    type = "recipe",
    name = "poison-mine",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "poison-capsule", amount = 4 },
    },
    results = { { type = "item", name = "poison-mine", amount = 4 } },
  },

  {
    type = "recipe",
    name = "slowdown-mine",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "slowdown-capsule", amount = 4 },
    },
    results = { { type = "item", name = "slowdown-mine", amount = 4 } },
  },

  {
    type = "recipe",
    name = "distractor-mine",
    enabled = false,
    energy_required = 3.75,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "distractor-capsule", amount = 1 },
    },
    results = { { type = "item", name = "distractor-mine", amount = 3 } },
  },
})
