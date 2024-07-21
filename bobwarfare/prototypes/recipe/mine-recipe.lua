data:extend({
  {
    type = "recipe",
    name = "poison-mine",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { "steel-plate", 1 },
      { "poison-capsule", 4 },
    },
    results = { { type = "item", name = "poison-mine", amount = 4 } },
  },

  {
    type = "recipe",
    name = "slowdown-mine",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { "steel-plate", 1 },
      { "slowdown-capsule", 4 },
    },
    results = { { type = "item", name = "slowdown-mine", amount = 4 } },
  },

  {
    type = "recipe",
    name = "distractor-mine",
    enabled = false,
    energy_required = 3.75,
    ingredients = {
      { "steel-plate", 1 },
      { "distractor-capsule", 1 },
    },
    results = { { type = "item", name = "distractor-mine", amount = 3 } },
  },
})
