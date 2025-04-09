data.raw["artillery-wagon"]["artillery-wagon"].resistances = {
  {
    type = "fire",
    decrease = 25,
    percent = 75,
  },
  {
    type = "physical",
    decrease = 25,
    percent = 50,
  },
  {
    type = "impact",
    decrease = 75,
    percent = 90,
  },
  {
    type = "explosion",
    decrease = 25,
    percent = 50,
  },
  {
    type = "acid",
    decrease = 20,
    percent = 30,
  },
  {
    type = "laser",
    decrease = 10,
    percent = 50,
  },
  {
    type = "electric",
    decrease = 12,
    percent = 75,
  },
  {
    type = "poison",
    decrease = 15,
    percent = 90,
  },
  {
    type = "bob-pierce",
    decrease = 15,
    percent = 90,
  },
  {
    type = "bob-plasma",
    decrease = 25,
    percent = 90,
  },
}

local wagon = util.table.deepcopy(data.raw["artillery-wagon"]["artillery-wagon"])
wagon.name = "bob-artillery-wagon-2"
wagon.inventory_size = 2
wagon.minable = { mining_time = 1, result = "bob-artillery-wagon-2" }
wagon.max_health = 800
wagon.weight = 4500
wagon.braking_force = 4.5
wagon.friction_force = 0.375
wagon.air_resistance = 0.0125
wagon.gun = "bob-artillery-wagon-cannon-2"
wagon.turret_rotation_speed = 0.002
wagon.turn_after_shooting_cooldown = 40
wagon.cannon_parking_speed = 0.3
data:extend({ wagon })

local wagon = util.table.deepcopy(data.raw["artillery-wagon"]["artillery-wagon"])
wagon.name = "bob-artillery-wagon-3"
wagon.inventory_size = 3
wagon.minable = { mining_time = 1, result = "bob-artillery-wagon-3" }
wagon.max_health = 1000
wagon.weight = 5000
wagon.braking_force = 6
wagon.friction_force = 0.25
wagon.air_resistance = 0.01
wagon.gun = "bob-artillery-wagon-cannon-3"
wagon.turret_rotation_speed = 0.003
wagon.turn_after_shooting_cooldown = 30
wagon.cannon_parking_speed = 0.35
data:extend({ wagon })

data:extend({
  {
    type = "item-with-entity-data",
    name = "bob-artillery-wagon-2",
    icon = "__base__/graphics/icons/artillery-wagon.png",
    icon_size = 64,
    subgroup = "train-transport",
    order = "c[rolling-stock]-d[artillery-wagon]-2",
    place_result = "bob-artillery-wagon-2",
    stack_size = 5,
  },
  {
    type = "item-with-entity-data",
    name = "bob-artillery-wagon-3",
    icon = "__base__/graphics/icons/artillery-wagon.png",
    icon_size = 64,
    subgroup = "train-transport",
    order = "c[rolling-stock]-d[artillery-wagon]-3",
    place_result = "bob-artillery-wagon-3",
    stack_size = 5,
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-artillery-wagon-2",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "artillery-wagon", amount = 1 },
      { type = "item", name = "iron-gear-wheel", amount = 12 },
      { type = "item", name = "steel-plate", amount = 40 },
      { type = "item", name = "pipe", amount = 16 },
      { type = "item", name = "processing-unit", amount = 20 },
    },
    results = { { type = "item", name = "bob-artillery-wagon-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-artillery-wagon-3",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-artillery-wagon-2", amount = 1 },
      { type = "item", name = "iron-gear-wheel", amount = 12 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "pipe", amount = 16 },
      { type = "item", name = "processing-unit", amount = 20 },
    },
    results = { { type = "item", name = "bob-artillery-wagon-3", amount = 1 } },
  },
})

data:extend({
  {
    type = "technology",
    name = "bob-artillery-wagon-2",
    icon = "__base__/graphics/icons/artillery-wagon.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-artillery-wagon-2",
      },
    },
    prerequisites = {
      "artillery",
    },
    unit = {
      time = 30,
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    order = "d-e-f-2",
  },

  {
    type = "technology",
    name = "bob-artillery-wagon-3",
    icon = "__base__/graphics/icons/artillery-wagon.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-artillery-wagon-3",
      },
    },
    prerequisites = {
      "bob-artillery-wagon-2",
    },
    unit = {
      time = 30,
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    order = "d-e-f-3",
  },
})
