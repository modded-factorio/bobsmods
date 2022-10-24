data:extend({
  {
    type = "recipe",
    name = "carbon",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water", amount = 5 },
      { type = "item", name = "coal", amount = 1 },
    },
    result = "carbon",
    result_count = 2,
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-resin-wood",
    category = "crafting-machine",
    energy_required = 1,
    ingredients = {
      { "wood", 1 },
    },
    result = "resin",
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-resin-oil",
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "heavy-oil", amount = 10 },
    },
    result = "resin",
    result_count = 2,
    crafting_machine_tint = {
      primary = { r = 0.5, g = 0.04, b = 0.0, a = 0.000 },
      secondary = { r = 0.85, g = 0.6, b = 0.3, a = 0.000 },
      tertiary = { r = 1, g = 0.6, b = 0.0, a = 0.000 },
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-rubber",
    category = "smelting",
    subgroup = "bob-material-smelting",
    energy_required = 3.2,
    ingredients = {
      { "resin", 1 },
    },
    result = "rubber",
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "quartz-glass",
    category = "smelting",
    subgroup = "bob-material-smelting",
    energy_required = 3.2,
    ingredients = {
      { "quartz", 1 },
    },
    result = "glass",
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "silicon-wafer",
    category = "crafting-machine",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { "silicon", 1 },
    },
    result = "silicon-wafer",
    result_count = 8,
  },

  {
    type = "recipe",
    name = "silicon-powder",
    category = "crafting-machine",
    subgroup = "bob-resource",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { "silicon", 1 },
    },
    result = "silicon-powder",
  },

  {
    type = "recipe",
    name = "silicon-nitride",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    enabled = false,
    energy_required = 7.5,
    ingredients = {
      { "silicon-powder", 1 },
      { type = "fluid", name = "nitrogen", amount = 12.5 },
    },
    result = "silicon-nitride",
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "lithium-cobalt-oxide",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 7,
    enabled = false,
    ingredients = {
      { "lithium", 1 },
      { "cobalt-oxide", 1 },
    },
    result = "lithium-cobalt-oxide",
    result_count = 2,
  },

  {
    type = "recipe",
    name = "synthetic-wood",
    localised_name = { "recipe-name.synthetic-wood" },
    icon = "__bobplates__/graphics/icons/synthetic-wood.png",
    icon_size = 32,
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "heavy-oil", amount = 10 },
    },
    result = "wood",
    result_count = 2,
    crafting_machine_tint = {
      primary = { r = 0.5, g = 0.04, b = 0.0, a = 0.000 },
      secondary = { r = 0.85, g = 0.6, b = 0.3, a = 0.000 },
      tertiary = { r = 1, g = 0.6, b = 0.4, a = 0.000 },
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "gas-canister",
    category = "crafting",
    subgroup = "bob-intermediates",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { "steel-plate", 1 },
    },
    result = "gas-canister",
    result_count = 5,
  },

  {
    type = "recipe",
    name = "empty-canister",
    category = "crafting",
    subgroup = "bob-intermediates",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { "iron-plate", 1 },
      { "plastic-bar", 1 },
    },
    result = "empty-canister",
    result_count = 5,
  },

  {
    type = "recipe",
    name = "polishing-compound",
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "alumina", amount = 1 },
      { type = "fluid", name = "light-oil", amount = 15 },
    },
    result = "polishing-compound",
    result_count = 2,
    crafting_machine_tint = {
      primary = { r = 0.57, g = 0.33, b = 0.0, a = 0.000 },
      secondary = { r = 1, g = 0.73, b = 0.07, a = 0.000 },
      tertiary = { r = 1, g = 1, b = 1, a = 0.000 },
    },
  },

  {
    type = "recipe",
    name = "bob-coal-from-wood",
    category = "smelting",
    energy_required = 1.6,
    ingredients = {
      { "wood", 2 },
    },
    result = "coal",
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "solid-fuel-from-hydrogen",
    category = "chemistry",
    energy_required = 3,
    ingredients = {
      { type = "fluid", name = "hydrogen", amount = 175 },
      { type = "item", name = "coal", amount = 1 },
    },
    results = {
      { type = "item", name = "solid-fuel", amount = 1 },
    },
    icon = "__bobplates__/graphics/icons/solid-fuel-from-hydrogen.png",
    icon_size = 32,
    subgroup = "bob-resource-chemical",
    enabled = false,
    order = "b[fluid-chemistry]-c[solid-fuel-from-hydrogen]",
    crafting_machine_tint = {
      primary = { r = 0.331, g = 0.075, b = 0.510, a = 0.000 },
      secondary = { r = 0.589, g = 0.540, b = 0.615, a = 0.361 },
      tertiary = { r = 0.469, g = 0.145, b = 0.695, a = 0.000 },
    },
  },

  {
    type = "recipe",
    name = "enriched-fuel-from-liquid-fuel",
    icon = "__bobplates__/graphics/icons/enriched-fuel.png",
    icon_size = 32,
    category = "chemistry",
    enabled = false,
    energy_required = 12,
    ingredients = {
      { type = "fluid", name = "liquid-fuel", amount = 20 },
    },
    result = "enriched-fuel",
    subgroup = "bob-resource-chemical",
    order = "d[enriched-fuel]",
    crafting_machine_tint = {
      primary = { r = 0.9, g = 0.9, b = 0.9, a = 0.000 },
      secondary = { r = 0.8, g = 0.8, b = 0.8, a = 0.000 },
      tertiary = { r = 1.0, g = 1.0, b = 1.0, a = 0.000 },
    },
  },
})
