data:extend({
  {
    type = "recipe",
    name = "reinforced-wall",
    enabled = false,
    ingredients = {
      { type = "item", name = "stone-brick", amount = 3 },
      { type = "item", name = "steel-plate", amount = 3 },
    },
    results = { { type = "item", name = "reinforced-wall", amount = 1 } },
  },
  {
    type = "recipe",
    name = "reinforced-gate",
    enabled = false,
    ingredients = {
      { type = "item", name = "reinforced-wall", amount = 1 },
      { type = "item", name = "steel-plate", amount = 2 },
      { type = "item", name = "electronic-circuit", amount = 2 },
    },
    results = { { type = "item", name = "reinforced-gate", amount = 1 } },
  },
})
