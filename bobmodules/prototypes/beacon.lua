data.raw.item["beacon"].subgroup = "module-beacon"

data.raw.beacon["beacon"].fast_replaceable_group = "beacon"

data:extend({
  {
    type = "item",
    name = "beacon-2",
    icon = "__base__/graphics/icons/beacon.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "module-beacon",
    order = "a[beacon]-2",
    place_result = "beacon-2",
    stack_size = 10,
  },

  {
    type = "item",
    name = "beacon-3",
    icon = "__base__/graphics/icons/beacon.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "module-beacon",
    order = "a[beacon]-3",
    place_result = "beacon-3",
    stack_size = 10,
  },

  util.merge({
    data.raw.beacon.beacon,
    {
      name = "beacon-2",
      minable = { result = "beacon-2" },
      max_health = 300,
      next_upgrade = "beacon-3",
      supply_area_distance = 6,
      distribution_effectivity = 0.75,
      module_specification = { module_slots = 4 },
    },
  }),

  util.merge({
    data.raw.beacon.beacon,
    {
      name = "beacon-3",
      minable = { result = "beacon-3" },
      max_health = 400,
      supply_area_distance = 9,
      distribution_effectivity = 1,
      module_specification = { module_slots = 6 },
    },
  }),

  {
    type = "recipe",
    name = "beacon-2",
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
    results = { { type = "item", name = "beacon-2", amount = 1 } },
  },

  {
    type = "recipe",
    name = "beacon-3",
    enabled = false,
    energy_required = 45,
    ingredients = {
      { type = "item", name = "beacon-2", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 20 },
      { type = "item", name = "advanced-circuit", amount = 20 },
      { type = "item", name = "processing-unit", amount = 20 },
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "copper-plate", amount = 10 },
      { type = "item", name = "copper-cable", amount = 10 },
    },
    results = { { type = "item", name = "beacon-3", amount = 1 } },
  },

  {
    type = "technology",
    name = "effect-transmission-2",
    icon = "__base__/graphics/technology/effect-transmission.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "beacon-2",
      },
    },
    prerequisites = {
      "effect-transmission",
      "advanced-electronics-2",
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
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "beacon-3",
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

data.raw.beacon["beacon"].next_upgrade = "beacon-2"
data.raw.beacon["beacon-2"].module_specification.module_info_max_icons_per_row = nil
data.raw.beacon["beacon-3"].module_specification.module_info_max_icons_per_row = nil
