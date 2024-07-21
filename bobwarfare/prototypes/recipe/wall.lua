data:extend({
  {
    type = "recipe",
    name = "reinforced-wall",
    enabled = false,
    ingredients = {
      { "stone-brick", 3 },
      { "steel-plate", 3 },
    },
    results = { { type = "item", name = "reinforced-wall", amount = 1 } },
  },
  {
    type = "recipe",
    name = "reinforced-gate",
    enabled = false,
    ingredients = {
      { "reinforced-wall", 1 },
      { "steel-plate", 2 },
      { "electronic-circuit", 2 },
    },
    results = { { type = "item", name = "reinforced-gate", amount = 1 } },
  },
})
