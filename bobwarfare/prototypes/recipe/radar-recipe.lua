data:extend({
  {
    type = "recipe",
    name = "bob-radar-2",
    enabled = false,
    ingredients = {
      { type = "item", name = "radar", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = { { type = "item", name = "bob-radar-2", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-radar-3",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-radar-2", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = { { type = "item", name = "bob-radar-3", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-radar-4",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-radar-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = { { type = "item", name = "bob-radar-4", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-radar-5",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-radar-4", amount = 1 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = { { type = "item", name = "bob-radar-5", amount = 1 } },
  },
})
