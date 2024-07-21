data:extend({
  {
    type = "recipe",
    name = "robot-drone-frame",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { "electric-engine-unit", 2 },
      { "steel-plate", 10 },
      { "iron-gear-wheel", 10 },
      { "battery", 6 },
      { "electronic-circuit", 10 },
    },
    results = {{ type = "item", name = "robot-drone-frame", amount = 1 }},
  },
  {
    type = "recipe",
    name = "robot-drone-frame-large",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { "electric-engine-unit", 2 },
      { "steel-plate", 20 },
      { "iron-gear-wheel", 10 },
      { "battery", 12 },
      { "electronic-circuit", 10 },
    },
    results = {{ type = "item", name = "robot-drone-frame-large", amount = 1 }},
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-robot-gun-drone",
    enabled = false,
    ingredients = {
      { "robot-drone-frame", 1 },
      { "gun-turret", 1 },
    },
    results = {{ type = "item", name = "bob-robot-gun-drone", amount = 1 }},
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-robot-laser-drone",
    enabled = false,
    ingredients = {
      { "robot-drone-frame", 1 },
      { "laser-turret", 1 },
    },
    results = {{ type = "item", name = "bob-robot-laser-drone", amount = 1 }},
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-robot-flamethrower-drone",
    enabled = false,
    ingredients = {
      { "robot-drone-frame", 1 },
      { "flamethrower-turret", 1 },
    },
    results = {{ type = "item", name = "bob-robot-flamethrower-drone", amount = 1 }},
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-robot-plasma-drone",
    enabled = false,
    ingredients = {
      { "robot-drone-frame-large", 1 },
      { "bob-plasma-turret-1", 1 },
    },
    results = {{ type = "item", name = "bob-robot-plasma-drone", amount = 1 }},
  },
})
