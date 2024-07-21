if settings.startup["bobmods-logistics-disableroboports"].value == false then
  data:extend({
    {
      type = "recipe",
      name = "bob-roboport-2",
      enabled = false,
      ingredients = {
        { "roboport", 1 },
        { "steel-plate", 15 },
        { "roboport-antenna-2", 5 },
        { "roboport-chargepad-2", 4 },
        { "roboport-door-2", 1 },
      },
      results = { { type = "item", name = "bob-roboport-2", amount = 1 } },
      energy_required = 10,
    },

    {
      type = "recipe",
      name = "bob-roboport-3",
      enabled = false,
      ingredients = {
        { "bob-roboport-2", 1 },
        { "steel-plate", 15 },
        { "roboport-antenna-3", 5 },
        { "roboport-chargepad-3", 4 },
        { "roboport-door-3", 1 },
      },
      results = { { type = "item", name = "bob-roboport-3", amount = 1 } },
      energy_required = 10,
    },

    {
      type = "recipe",
      name = "bob-roboport-4",
      enabled = false,
      ingredients = {
        { "bob-roboport-3", 1 },
        { "steel-plate", 15 },
        { "roboport-antenna-4", 5 },
        { "roboport-chargepad-4", 4 },
        { "roboport-door-4", 1 },
      },
      results = { { type = "item", name = "bob-roboport-4", amount = 1 } },
      energy_required = 10,
    },
  })
end

data:extend({
  {
    type = "recipe",
    name = "bob-robochest",
    enabled = false,
    ingredients = {
      { "steel-chest", 1 },
      { "roboport-antenna-1", 1 },
      { "roboport-chargepad-1", 1 },
      { "roboport-door-1", 1 },
    },
    results = { { type = "item", name = "bob-robochest", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robochest-2",
    enabled = false,
    ingredients = {
      { "bob-robochest", 1 },
      { "steel-plate", 8 },
      { "roboport-chargepad-2", 1 },
      { "roboport-door-2", 1 },
    },
    results = { { type = "item", name = "bob-robochest-2", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robochest-3",
    enabled = false,
    ingredients = {
      { "bob-robochest-2", 1 },
      { "steel-plate", 8 },
      { "roboport-chargepad-3", 1 },
      { "roboport-door-3", 1 },
    },
    results = { { type = "item", name = "bob-robochest-3", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robochest-4",
    enabled = false,
    ingredients = {
      { "bob-robochest-3", 1 },
      { "steel-plate", 8 },
      { "roboport-chargepad-4", 1 },
      { "roboport-door-4", 1 },
    },
    results = { { type = "item", name = "bob-robochest-4", amount = 1 } },
    energy_required = 5,
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-logistic-zone-expander",
    enabled = false,
    ingredients = {
      { "steel-plate", 5 },
      { "roboport-antenna-1", 3 },
    },
    results = { { type = "item", name = "bob-logistic-zone-expander", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-logistic-zone-expander-2",
    enabled = false,
    ingredients = {
      { "bob-logistic-zone-expander", 1 },
      { "steel-plate", 5 },
      { "roboport-antenna-2", 3 },
    },
    results = { { type = "item", name = "bob-logistic-zone-expander-2", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-logistic-zone-expander-3",
    enabled = false,
    ingredients = {
      { "bob-logistic-zone-expander-2", 1 },
      { "steel-plate", 5 },
      { "roboport-antenna-3", 3 },
    },
    results = { { type = "item", name = "bob-logistic-zone-expander-3", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-logistic-zone-expander-4",
    enabled = false,
    ingredients = {
      { "bob-logistic-zone-expander-3", 1 },
      { "steel-plate", 5 },
      { "roboport-antenna-4", 3 },
    },
    results = { { type = "item", name = "bob-logistic-zone-expander-4", amount = 1 } },
    energy_required = 5,
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-robo-charge-port",
    enabled = false,
    ingredients = {
      { "steel-plate", 10 },
      { "roboport-antenna-1", 1 },
      { "roboport-chargepad-1", 4 },
    },
    results = { { type = "item", name = "bob-robo-charge-port", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robo-charge-port-2",
    enabled = false,
    ingredients = {
      { "bob-robo-charge-port", 1 },
      { "steel-plate", 10 },
      { "roboport-chargepad-2", 4 },
    },
    results = { { type = "item", name = "bob-robo-charge-port-2", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robo-charge-port-3",
    enabled = false,
    ingredients = {
      { "bob-robo-charge-port-2", 1 },
      { "steel-plate", 10 },
      { "roboport-chargepad-3", 4 },
    },
    results = { { type = "item", name = "bob-robo-charge-port-3", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robo-charge-port-4",
    enabled = false,
    ingredients = {
      { "bob-robo-charge-port-3", 1 },
      { "steel-plate", 10 },
      { "roboport-chargepad-4", 4 },
    },
    results = { { type = "item", name = "bob-robo-charge-port-4", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robo-charge-port-large",
    enabled = false,
    ingredients = {
      { "steel-plate", 15 },
      { "roboport-antenna-1", 1 },
      { "roboport-chargepad-1", 9 },
    },
    results = { { type = "item", name = "bob-robo-charge-port-large", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robo-charge-port-large-2",
    enabled = false,
    ingredients = {
      { "bob-robo-charge-port-large", 1 },
      { "steel-plate", 15 },
      { "roboport-chargepad-2", 9 },
    },
    results = { { type = "item", name = "bob-robo-charge-port-large-2", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robo-charge-port-large-3",
    enabled = false,
    ingredients = {
      { "bob-robo-charge-port-large-2", 1 },
      { "steel-plate", 15 },
      { "roboport-chargepad-3", 9 },
    },
    results = { { type = "item", name = "bob-robo-charge-port-large-3", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robo-charge-port-large-4",
    enabled = false,
    ingredients = {
      { "bob-robo-charge-port-large-3", 1 },
      { "steel-plate", 15 },
      { "roboport-chargepad-4", 9 },
    },
    results = { { type = "item", name = "bob-robo-charge-port-large-4", amount = 1 } },
    energy_required = 5,
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-logistic-zone-interface",
    enabled = false,
    ingredients = {
      { "steel-plate", 5 },
      { "roboport-antenna-1", 1 },
      { "electronic-circuit", 2 },
    },
    results = { { type = "item", name = "bob-logistic-zone-interface", amount = 1 } },
    energy_required = 2,
  },
})
