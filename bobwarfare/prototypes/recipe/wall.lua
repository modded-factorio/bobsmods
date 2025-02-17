data:extend({
  {
    type = "recipe",
    name = "bob-reinforced-wall",
    enabled = false,
    ingredients = {
      { type = "item", name = "stone-brick", amount = 3 },
      { type = "item", name = "steel-plate", amount = 3 },
      { type = "item", name = "concrete", amount = 6 },
    },
    results = { { type = "item", name = "bob-reinforced-wall", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-reinforced-gate",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-reinforced-wall", amount = 1 },
      { type = "item", name = "steel-plate", amount = 2 },
      { type = "item", name = "electronic-circuit", amount = 2 },
    },
    results = { { type = "item", name = "bob-reinforced-gate", amount = 1 } },
  },
})
