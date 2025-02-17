data:extend({
  {
    type = "recipe",
    name = "bob-rifle",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "copper-plate", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 10 },
    },
    results = { { type = "item", name = "bob-rifle", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-sniper-rifle",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "wood", amount = 10 },
      { type = "item", name = "iron-gear-wheel", amount = 10 },
    },
    results = { { type = "item", name = "bob-sniper-rifle", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-laser-rifle",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
      { type = "item", name = "plastic-bar", amount = 3 },
    },
    results = { { type = "item", name = "bob-laser-rifle", amount = 1 } },
  },
})
