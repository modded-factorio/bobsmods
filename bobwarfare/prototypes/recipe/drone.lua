data:extend({
  {
    type = "recipe",
    name = "bob-robot-drone-frame",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 2 },
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "iron-gear-wheel", amount = 10 },
      { type = "item", name = "battery", amount = 6 },
      { type = "item", name = "electronic-circuit", amount = 10 },
    },
    results = { { type = "item", name = "bob-robot-drone-frame", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-robot-drone-frame-large",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "electric-engine-unit", amount = 2 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "iron-gear-wheel", amount = 10 },
      { type = "item", name = "battery", amount = 12 },
      { type = "item", name = "electronic-circuit", amount = 10 },
    },
    results = { { type = "item", name = "bob-robot-drone-frame-large", amount = 1 } },
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-robot-gun-drone",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-robot-drone-frame", amount = 1 },
      { type = "item", name = "gun-turret", amount = 1 },
    },
    results = { { type = "item", name = "bob-robot-gun-drone", amount = 1 } },
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-robot-laser-drone",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-robot-drone-frame", amount = 1 },
      { type = "item", name = "laser-turret", amount = 1 },
    },
    results = { { type = "item", name = "bob-robot-laser-drone", amount = 1 } },
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-robot-flamethrower-drone",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-robot-drone-frame", amount = 1 },
      { type = "item", name = "flamethrower-turret", amount = 1 },
    },
    results = { { type = "item", name = "bob-robot-flamethrower-drone", amount = 1 } },
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-robot-plasma-drone",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-robot-drone-frame-large", amount = 1 },
      { type = "item", name = "bob-plasma-turret-1", amount = 1 },
    },
    results = { { type = "item", name = "bob-robot-plasma-drone", amount = 1 } },
  },
})
