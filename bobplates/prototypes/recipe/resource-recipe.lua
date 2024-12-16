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
    results = { { type = "item", name = "carbon", amount = 2 } },
    allow_decomposition = false,
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-resin-wood",
    localised_name = { "item-name.resin" },
    category = "crafting-machine",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "wood", amount = 1 },
    },
    results = { { type = "item", name = "resin", amount = 1 } },
    allow_decomposition = false,
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-resin-oil",
    localised_name = { "item-name.resin" },
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "heavy-oil", amount = 10 },
    },
    results = { { type = "item", name = "resin", amount = 2 } },
    crafting_machine_tint = {
      primary = { r = 0.5, g = 0.04, b = 0.0, a = 0.000 },
      secondary = { r = 0.85, g = 0.6, b = 0.3, a = 0.000 },
      tertiary = { r = 1, g = 0.6, b = 0.0, a = 0.000 },
    },
    allow_decomposition = false,
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-rubber",
    localised_name = { "item-name.rubber" },
    category = "smelting",
    subgroup = "bob-material-smelting",
    energy_required = 3.2,
    enabled = false,
    ingredients = {
      { type = "item", name = "resin", amount = 1 },
    },
    results = { { type = "item", name = "rubber", amount = 1 } },
    allow_decomposition = false,
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-glass",
    category = "smelting",
    subgroup = "bob-material-smelting",
    energy_required = 3.2,
    ingredients = {
      { type = "item", name = "quartz", amount = 1 },
    },
    results = { { type = "item", name = "bob-glass", amount = 1 } },
    allow_decomposition = false,
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "silicon-wafer",
    category = "crafting-machine",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "bob-silicon-plate", amount = 1 },
    },
    results = { { type = "item", name = "silicon-wafer", amount = 8 } },
    allow_productivity = true,
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "silicon-powder",
    category = "crafting-machine",
    subgroup = "bob-resource",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "bob-silicon-plate", amount = 1 },
    },
    results = { { type = "item", name = "silicon-powder", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "silicon-nitride",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    enabled = false,
    energy_required = 7.5,
    ingredients = {
      { type = "item", name = "silicon-powder", amount = 1 },
      { type = "fluid", name = "nitrogen", amount = 12.5 },
    },
    results = { { type = "item", name = "silicon-nitride", amount = 1 } },
    allow_decomposition = false,
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "lithium-cobalt-oxide",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 7,
    enabled = false,
    ingredients = {
      { type = "item", name = "lithium", amount = 1 },
      { type = "item", name = "cobalt-oxide", amount = 1 },
    },
    results = { { type = "item", name = "lithium-cobalt-oxide", amount = 2 } },
    allow_productivity = true,
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
    results = { { type = "item", name = "wood", amount = 2 } },
    crafting_machine_tint = {
      primary = { r = 0.5, g = 0.04, b = 0.0, a = 0.000 },
      secondary = { r = 0.85, g = 0.6, b = 0.3, a = 0.000 },
      tertiary = { r = 1, g = 0.6, b = 0.4, a = 0.000 },
    },
    allow_decomposition = false,
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "gas-canister",
    category = "crafting",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = { { type = "item", name = "gas-canister", amount = 5 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "empty-canister",
    category = "crafting",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "empty-canister", amount = 5 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-polishing-compound",
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "alumina", amount = 1 },
      { type = "fluid", name = "light-oil", amount = 15 },
    },
    results = { { type = "item", name = "bob-polishing-compound", amount = 2 } },
    crafting_machine_tint = {
      primary = { r = 0.57, g = 0.33, b = 0.0, a = 0.000 },
      secondary = { r = 1, g = 0.73, b = 0.07, a = 0.000 },
      tertiary = { r = 1, g = 1, b = 1, a = 0.000 },
    },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-coal-from-wood",
    localised_name = { "item-name.coal" },
    category = "smelting",
    energy_required = 1.6,
    ingredients = {
      { type = "item", name = "wood", amount = 2 },
    },
    results = { { type = "item", name = "coal", amount = 1 } },
    subgroup = "bob-resource",
    order = "c",
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
    icons = {
      { icon = "__base__/graphics/icons/solid-fuel.png", icon_size = 64 },
      { icon = "__bobplates__/graphics/icons/hydrogen.png", icon_size = 64, scale = 0.25, shift = { -8, -8 } },
    },
    subgroup = "bob-chemical-fuels",
    enabled = false,
    order = "b[fluid-chemistry]-c[solid-fuel-from-hydrogen]",
    crafting_machine_tint = {
      primary = { r = 0.331, g = 0.075, b = 0.510, a = 0.000 },
      secondary = { r = 0.589, g = 0.540, b = 0.615, a = 0.361 },
      tertiary = { r = 0.469, g = 0.145, b = 0.695, a = 0.000 },
    },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "enriched-fuel",
    icon = "__bobplates__/graphics/icons/enriched-fuel.png",
    icon_size = 32,
    category = "chemistry",
    enabled = false,
    energy_required = 12,
    ingredients = {
      { type = "fluid", name = "liquid-fuel", amount = 20 },
    },
    results = { { type = "item", name = "enriched-fuel", amount = 1 } },
    subgroup = "bob-chemical-fuels",
    order = "d[enriched-fuel]",
    crafting_machine_tint = {
      primary = { r = 0.9, g = 0.9, b = 0.9, a = 0.000 },
      secondary = { r = 0.8, g = 0.8, b = 0.8, a = 0.000 },
      tertiary = { r = 1.0, g = 1.0, b = 1.0, a = 0.000 },
    },
  },
})
