data:extend({
  {
    type = "recipe",
    name = "radar-2",
    enabled = false,
    ingredients = {
      { type = "item", name = "radar", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = { { type = "item", name = "radar-2", amount = 1 } },
  },

  {
    type = "recipe",
    name = "radar-3",
    enabled = false,
    ingredients = {
      { type = "item", name = "radar-2", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = { { type = "item", name = "radar-3", amount = 1 } },
  },

  {
    type = "recipe",
    name = "radar-4",
    enabled = false,
    ingredients = {
      { type = "item", name = "radar-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = { { type = "item", name = "radar-4", amount = 1 } },
  },

  {
    type = "recipe",
    name = "radar-5",
    enabled = false,
    ingredients = {
      { type = "item", name = "radar-4", amount = 1 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = { { type = "item", name = "radar-5", amount = 1 } },
  },
})
