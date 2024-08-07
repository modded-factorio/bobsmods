data:extend({
  {
    type = "recipe",
    name = "heavy-armor-2",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 100 },
      { type = "item", name = "steel-plate", amount = 50 },
    },
    results = { { type = "item", name = "heavy-armor-2", amount = 1 } },
  },

  {
    type = "recipe",
    name = "heavy-armor-3",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 100 },
      { type = "item", name = "plastic-bar", amount = 50 },
    },
    results = { { type = "item", name = "heavy-armor-3", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-power-armor-mk3",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "power-armor-mk2", amount = 1 },
      { type = "item", name = "processing-unit", amount = 50 },
      { type = "item", name = "steel-plate", amount = 25 },
      { type = "item", name = "iron-plate", amount = 25 },
      { type = "item", name = "effectivity-module-2", amount = 5 },
      { type = "item", name = "speed-module-2", amount = 5 },
    },
    results = { { type = "item", name = "bob-power-armor-mk3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-power-armor-mk4",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "bob-power-armor-mk3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 40 },
      { type = "item", name = "advanced-circuit", amount = 20 },
      { type = "item", name = "steel-plate", amount = 25 },
      { type = "item", name = "plastic-bar", amount = 25 },
      { type = "item", name = "effectivity-module-3", amount = 5 },
      { type = "item", name = "speed-module-3", amount = 5 },
    },
    results = { { type = "item", name = "bob-power-armor-mk4", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-power-armor-mk5",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "bob-power-armor-mk4", amount = 1 },
      { type = "item", name = "processing-unit", amount = 50 },
      { type = "item", name = "advanced-circuit", amount = 50 },
      { type = "item", name = "steel-plate", amount = 25 },
      { type = "item", name = "plastic-bar", amount = 25 },
      { type = "item", name = "effectivity-module-3", amount = 5 },
      { type = "item", name = "speed-module-3", amount = 5 },
    },
    results = { { type = "item", name = "bob-power-armor-mk5", amount = 1 } },
  },
})
