data:extend({
  {
    type = "recipe",
    name = "rifle",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "copper-plate", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 10 },
    },
    results = { { type = "item", name = "rifle", amount = 1 } },
  },

  {
    type = "recipe",
    name = "sniper-rifle",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "wood", amount = 10 },
      { type = "item", name = "iron-gear-wheel", amount = 10 },
    },
    results = { { type = "item", name = "sniper-rifle", amount = 1 } },
  },

  {
    type = "recipe",
    name = "laser-rifle",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
      { type = "item", name = "plastic-bar", amount = 3 },
    },
    results = { { type = "item", name = "laser-rifle", amount = 1 } },
  },
})
