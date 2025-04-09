data:extend({
  {
    type = "recipe",
    name = "bob-gun-turret-2",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "gun-turret", amount = 1 },
      { type = "item", name = "iron-gear-wheel", amount = 10 },
      { type = "item", name = "steel-plate", amount = 20 },
    },
    results = { { type = "item", name = "bob-gun-turret-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-gun-turret-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-gun-turret-2", amount = 1 },
      { type = "item", name = "iron-gear-wheel", amount = 10 },
      { type = "item", name = "steel-plate", amount = 20 },
    },
    results = { { type = "item", name = "bob-gun-turret-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-gun-turret-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-gun-turret-3", amount = 1 },
      { type = "item", name = "iron-gear-wheel", amount = 10 },
      { type = "item", name = "steel-plate", amount = 20 },
    },
    results = { { type = "item", name = "bob-gun-turret-4", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-gun-turret-5",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-gun-turret-4", amount = 1 },
      { type = "item", name = "iron-gear-wheel", amount = 10 },
      { type = "item", name = "steel-plate", amount = 20 },
    },
    results = { { type = "item", name = "bob-gun-turret-5", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-sniper-turret-1",
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "item", name = "iron-gear-wheel", amount = 20 },
      { type = "item", name = "copper-plate", amount = 20 },
      { type = "item", name = "iron-plate", amount = 20 },
    },
    results = { { type = "item", name = "bob-sniper-turret-1", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-sniper-turret-2",
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "item", name = "bob-sniper-turret-1", amount = 1 },
      { type = "item", name = "iron-gear-wheel", amount = 20 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "iron-plate", amount = 20 },
    },
    results = { { type = "item", name = "bob-sniper-turret-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-sniper-turret-3",
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "item", name = "bob-sniper-turret-2", amount = 1 },
      { type = "item", name = "iron-gear-wheel", amount = 20 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "plastic-bar", amount = 20 },
    },
    results = { { type = "item", name = "bob-sniper-turret-3", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-laser-turret-2",
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "item", name = "laser-turret", amount = 1 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "advanced-circuit", amount = 20 },
    },
    results = { { type = "item", name = "bob-laser-turret-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-laser-turret-3",
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "item", name = "bob-laser-turret-2", amount = 1 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "battery", amount = 12 },
    },
    results = { { type = "item", name = "bob-laser-turret-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-laser-turret-4",
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "item", name = "bob-laser-turret-3", amount = 1 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "processing-unit", amount = 20 },
      { type = "item", name = "battery", amount = 12 },
    },
    results = { { type = "item", name = "bob-laser-turret-4", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-laser-turret-5",
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "item", name = "bob-laser-turret-4", amount = 1 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "processing-unit", amount = 20 },
      { type = "item", name = "battery", amount = 12 },
    },
    results = { { type = "item", name = "bob-laser-turret-5", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-plasma-turret-1",
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 100 },
      { type = "item", name = "advanced-circuit", amount = 25 },
      { type = "item", name = "battery", amount = 80 },
    },
    results = { { type = "item", name = "bob-plasma-turret-1", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-plasma-turret-2",
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "item", name = "bob-plasma-turret-1", amount = 1 },
      { type = "item", name = "steel-plate", amount = 200 },
      { type = "item", name = "processing-unit", amount = 25 },
      { type = "item", name = "battery", amount = 100 },
    },
    results = { { type = "item", name = "bob-plasma-turret-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-plasma-turret-3",
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "item", name = "bob-plasma-turret-2", amount = 1 },
      { type = "item", name = "steel-plate", amount = 350 },
      { type = "item", name = "processing-unit", amount = 40 },
      { type = "item", name = "battery", amount = 120 },
    },
    results = { { type = "item", name = "bob-plasma-turret-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-plasma-turret-4",
    enabled = false,
    energy_required = 20,
    ingredients = {
      { type = "item", name = "bob-plasma-turret-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 50 },
      { type = "item", name = "low-density-structure", amount = 15 },
      { type = "item", name = "efficiency-module-3", amount = 3 },
    },
    results = { { type = "item", name = "bob-plasma-turret-4", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-artillery-turret-2",
    enabled = false,
    energy_required = 40,
    ingredients = {
      { type = "item", name = "artillery-turret", amount = 1 },
      { type = "item", name = "steel-plate", amount = 60 }, --titanium plate
      { type = "item", name = "concrete", amount = 60 }, --silicon nitride
      { type = "item", name = "iron-gear-wheel", amount = 40 }, --titanium gear wheel
      { type = "item", name = "processing-unit", amount = 20 },
    },
    results = { { type = "item", name = "bob-artillery-turret-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-artillery-turret-3",
    enabled = false,
    energy_required = 40,
    ingredients = {
      { type = "item", name = "bob-artillery-turret-2", amount = 1 },
      { type = "item", name = "steel-plate", amount = 60 }, --nitinol alloy
      { type = "item", name = "concrete", amount = 60 }, --tungsten carbide
      { type = "item", name = "iron-gear-wheel", amount = 40 }, --nitinol gear wheel
      { type = "item", name = "processing-unit", amount = 20 }, --advanced processing unit
    },
    results = { { type = "item", name = "bob-artillery-turret-3", amount = 1 } },
  },
})
