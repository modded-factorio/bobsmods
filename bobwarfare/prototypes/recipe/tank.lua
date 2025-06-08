data:extend({
  {
    type = "recipe",
    name = "bob-tank-2",
    enabled = false,
    ingredients = {
      { type = "item", name = "tank", amount = 1 },
      --      { type = "item", name = "engine-unit", amount = 16 },
      { type = "item", name = "steel-plate", amount = 50 },
      { type = "item", name = "iron-gear-wheel", amount = 15 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    results = { { type = "item", name = "bob-tank-2", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-tank-3",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-tank-2", amount = 1 },
      --      { type = "item", name = "engine-unit", amount = 16 },
      { type = "item", name = "steel-plate", amount = 40 },
      { type = "item", name = "plastic-bar", amount = 40 },
      { type = "item", name = "iron-gear-wheel", amount = 15 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    results = { { type = "item", name = "bob-tank-3", amount = 1 } },
  },
})
