data.raw.item["beacon"].subgroup = "module-beacon"

data.raw.beacon["beacon"].fast_replaceable_group = "beacon"
data.raw.beacon["beacon"].beacon_counter = "total"

data:extend({
  {
    type = "item",
    name = "bob-beacon-2",
    icon = "__base__/graphics/icons/beacon.png",
    icon_size = 64,
    subgroup = "module-beacon",
    order = "a[bob-beacon]-2",
    place_result = "bob-beacon-2",
    stack_size = 10,
  },

  {
    type = "item",
    name = "bob-beacon-3",
    icon = "__base__/graphics/icons/beacon.png",
    icon_size = 64,
    subgroup = "module-beacon",
    order = "a[bob-beacon]-3",
    place_result = "bob-beacon-3",
    stack_size = 10,
  },

  util.merge({
    data.raw.beacon.beacon,
    {
      name = "bob-beacon-2",
      minable = { result = "bob-beacon-2" },
      max_health = 300,
      next_upgrade = "bob-beacon-3",
      module_slots = 4,
    },
  }),

  util.merge({
    data.raw.beacon.beacon,
    {
      name = "bob-beacon-3",
      minable = { result = "bob-beacon-3" },
      max_health = 400,
      module_slots = 6,
      icons_positioning = { { max_icons_per_row = 3 } },
    },
  }),

  {
    type = "recipe",
    name = "bob-beacon-2",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "beacon", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 20 },
      { type = "item", name = "advanced-circuit", amount = 20 },
      { type = "item", name = "processing-unit", amount = 20 },
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "copper-cable", amount = 10 },
    },
    results = { { type = "item", name = "bob-beacon-2", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-beacon-3",
    enabled = false,
    energy_required = 45,
    ingredients = {
      { type = "item", name = "bob-beacon-2", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 20 },
      { type = "item", name = "advanced-circuit", amount = 20 },
      { type = "item", name = "processing-unit", amount = 20 },
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "copper-plate", amount = 10 },
      { type = "item", name = "copper-cable", amount = 10 },
    },
    results = { { type = "item", name = "bob-beacon-3", amount = 1 } },
  },

  {
    type = "technology",
    name = "effect-transmission-2",
    icon = "__base__/graphics/technology/effect-transmission.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-beacon-2",
      },
    },
    prerequisites = {
      "effect-transmission",
      "processing-unit",
      "production-science-pack",
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
    order = "i-i-2",
  },

  {
    type = "technology",
    name = "effect-transmission-3",
    icon = "__base__/graphics/technology/effect-transmission.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-beacon-3",
      },
    },
    prerequisites = {
      "effect-transmission-2",
      "utility-science-pack",
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 30,
    },
    order = "i-i-3",
  },
})

data.raw.beacon["beacon"].next_upgrade = "bob-beacon-2"
