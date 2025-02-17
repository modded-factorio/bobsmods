if settings.startup["bobmods-logistics-disableroboports"].value == false then
  data:extend({
    {
      type = "recipe",
      name = "bob-roboport-2",
      enabled = false,
      ingredients = {
        { type = "item", name = "roboport", amount = 1 },
        { type = "item", name = "steel-plate", amount = 15 },
        { type = "item", name = "bob-roboport-antenna-2", amount = 5 },
        { type = "item", name = "bob-roboport-chargepad-2", amount = 4 },
        { type = "item", name = "bob-roboport-door-2", amount = 1 },
      },
      results = { { type = "item", name = "bob-roboport-2", amount = 1 } },
      energy_required = 10,
    },

    {
      type = "recipe",
      name = "bob-roboport-3",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-roboport-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 15 },
        { type = "item", name = "bob-roboport-antenna-3", amount = 5 },
        { type = "item", name = "bob-roboport-chargepad-3", amount = 4 },
        { type = "item", name = "bob-roboport-door-3", amount = 1 },
      },
      results = { { type = "item", name = "bob-roboport-3", amount = 1 } },
      energy_required = 10,
    },

    {
      type = "recipe",
      name = "bob-roboport-4",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-roboport-3", amount = 1 },
        { type = "item", name = "steel-plate", amount = 15 },
        { type = "item", name = "bob-roboport-antenna-4", amount = 5 },
        { type = "item", name = "bob-roboport-chargepad-4", amount = 4 },
        { type = "item", name = "bob-roboport-door-4", amount = 1 },
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
      { type = "item", name = "steel-chest", amount = 1 },
      { type = "item", name = "bob-roboport-antenna-1", amount = 1 },
      { type = "item", name = "bob-roboport-chargepad-1", amount = 1 },
      { type = "item", name = "bob-roboport-door-1", amount = 1 },
    },
    results = { { type = "item", name = "bob-robochest", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robochest-2",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-robochest", amount = 1 },
      { type = "item", name = "steel-plate", amount = 8 },
      { type = "item", name = "bob-roboport-chargepad-2", amount = 1 },
      { type = "item", name = "bob-roboport-door-2", amount = 1 },
    },
    results = { { type = "item", name = "bob-robochest-2", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robochest-3",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-robochest-2", amount = 1 },
      { type = "item", name = "steel-plate", amount = 8 },
      { type = "item", name = "bob-roboport-chargepad-3", amount = 1 },
      { type = "item", name = "bob-roboport-door-3", amount = 1 },
    },
    results = { { type = "item", name = "bob-robochest-3", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robochest-4",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-robochest-3", amount = 1 },
      { type = "item", name = "steel-plate", amount = 8 },
      { type = "item", name = "bob-roboport-chargepad-4", amount = 1 },
      { type = "item", name = "bob-roboport-door-4", amount = 1 },
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
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "bob-roboport-antenna-1", amount = 3 },
    },
    results = { { type = "item", name = "bob-logistic-zone-expander", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-logistic-zone-expander-2",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-logistic-zone-expander", amount = 1 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "bob-roboport-antenna-2", amount = 3 },
    },
    results = { { type = "item", name = "bob-logistic-zone-expander-2", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-logistic-zone-expander-3",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-logistic-zone-expander-2", amount = 1 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "bob-roboport-antenna-3", amount = 3 },
    },
    results = { { type = "item", name = "bob-logistic-zone-expander-3", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-logistic-zone-expander-4",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-logistic-zone-expander-3", amount = 1 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "bob-roboport-antenna-4", amount = 3 },
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
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "bob-roboport-antenna-1", amount = 1 },
      { type = "item", name = "bob-roboport-chargepad-1", amount = 4 },
    },
    results = { { type = "item", name = "bob-robo-charge-port", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robo-charge-port-2",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-robo-charge-port", amount = 1 },
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "bob-roboport-chargepad-2", amount = 4 },
    },
    results = { { type = "item", name = "bob-robo-charge-port-2", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robo-charge-port-3",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-robo-charge-port-2", amount = 1 },
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "bob-roboport-chargepad-3", amount = 4 },
    },
    results = { { type = "item", name = "bob-robo-charge-port-3", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robo-charge-port-4",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-robo-charge-port-3", amount = 1 },
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "bob-roboport-chargepad-4", amount = 4 },
    },
    results = { { type = "item", name = "bob-robo-charge-port-4", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robo-charge-port-large",
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 15 },
      { type = "item", name = "bob-roboport-antenna-1", amount = 1 },
      { type = "item", name = "bob-roboport-chargepad-1", amount = 9 },
    },
    results = { { type = "item", name = "bob-robo-charge-port-large", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robo-charge-port-large-2",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-robo-charge-port-large", amount = 1 },
      { type = "item", name = "steel-plate", amount = 15 },
      { type = "item", name = "bob-roboport-chargepad-2", amount = 9 },
    },
    results = { { type = "item", name = "bob-robo-charge-port-large-2", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robo-charge-port-large-3",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-robo-charge-port-large-2", amount = 1 },
      { type = "item", name = "steel-plate", amount = 15 },
      { type = "item", name = "bob-roboport-chargepad-3", amount = 9 },
    },
    results = { { type = "item", name = "bob-robo-charge-port-large-3", amount = 1 } },
    energy_required = 5,
  },

  {
    type = "recipe",
    name = "bob-robo-charge-port-large-4",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-robo-charge-port-large-3", amount = 1 },
      { type = "item", name = "steel-plate", amount = 15 },
      { type = "item", name = "bob-roboport-chargepad-4", amount = 9 },
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
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "bob-roboport-antenna-1", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 2 },
    },
    results = { { type = "item", name = "bob-logistic-zone-interface", amount = 1 } },
    energy_required = 2,
  },
})
