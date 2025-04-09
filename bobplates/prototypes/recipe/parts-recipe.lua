data:extend({
  {
    type = "recipe",
    name = "bob-steel-gear-wheel",
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 2 },
    },
    results = { { type = "item", name = "bob-steel-gear-wheel", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-steel-bearing-ball",
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = { { type = "item", name = "bob-steel-bearing-ball", amount = 12 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-steel-bearing",
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "bob-steel-bearing-ball", amount = 16 },
    },
    results = { { type = "item", name = "bob-steel-bearing", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-brass-gear-wheel",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-brass-alloy", amount = 2 },
    },
    results = { { type = "item", name = "bob-brass-gear-wheel", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-cobalt-steel-gear-wheel",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-cobalt-steel-alloy", amount = 2 },
    },
    results = { { type = "item", name = "bob-cobalt-steel-gear-wheel", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-cobalt-steel-bearing-ball",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-cobalt-steel-alloy", amount = 1 },
    },
    results = { { type = "item", name = "bob-cobalt-steel-bearing-ball", amount = 12 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-cobalt-steel-bearing",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-cobalt-steel-alloy", amount = 1 },
      { type = "item", name = "bob-cobalt-steel-bearing-ball", amount = 16 },
    },
    results = { { type = "item", name = "bob-cobalt-steel-bearing", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-titanium-gear-wheel",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-titanium-plate", amount = 2 },
    },
    results = { { type = "item", name = "bob-titanium-gear-wheel", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-titanium-bearing-ball",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-titanium-plate", amount = 1 },
    },
    results = { { type = "item", name = "bob-titanium-bearing-ball", amount = 12 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-titanium-bearing",
    category = "crafting-with-fluid",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-titanium-plate", amount = 1 },
      { type = "item", name = "bob-titanium-bearing-ball", amount = 16 },
      { type = "fluid", name = "lubricant", amount = 10 },
    },
    results = { { type = "item", name = "bob-titanium-bearing", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-tungsten-gear-wheel",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-tungsten-plate", amount = 2 },
    },
    results = { { type = "item", name = "bob-tungsten-gear-wheel", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-nitinol-gear-wheel",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-nitinol-alloy", amount = 2 },
    },
    results = { { type = "item", name = "bob-nitinol-gear-wheel", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-nitinol-bearing-ball",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-nitinol-alloy", amount = 1 },
    },
    results = { { type = "item", name = "bob-nitinol-bearing-ball", amount = 12 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-nitinol-bearing",
    category = "crafting-with-fluid",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-nitinol-alloy", amount = 1 },
      { type = "item", name = "bob-nitinol-bearing-ball", amount = 16 },
      { type = "fluid", name = "lubricant", amount = 10 },
    },
    results = { { type = "item", name = "bob-nitinol-bearing", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-ceramic-bearing-ball",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-silicon-nitride", amount = 1 },
    },
    results = { { type = "item", name = "bob-ceramic-bearing-ball", amount = 12 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-ceramic-bearing",
    category = "crafting-with-fluid",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-silicon-nitride", amount = 1 },
      { type = "item", name = "bob-ceramic-bearing-ball", amount = 16 },
      { type = "fluid", name = "lubricant", amount = 10 },
    },
    results = { { type = "item", name = "bob-ceramic-bearing", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-lithium-ion-battery",
    category = "chemistry",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-lithium-perchlorate", amount = 2 },
      { type = "item", name = "bob-lithium-cobalt-oxide", amount = 1 },
      { type = "item", name = "bob-carbon", amount = 1 },
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "bob-lithium-ion-battery", amount = 1 } },
    crafting_machine_tint = {
      primary = { r = 0.1, g = 1.0, b = 0.8, a = 1.000 },
      secondary = { r = 0.2, g = 0.6, b = 0.9, a = 1.000 },
      tertiary = { r = 1.0, g = 0.5, b = 0.1, a = 1.000 },
      quaternary = { r = 0.1, g = 1.0, b = 0.8, a = 1.000 },
    },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-silver-zinc-battery",
    category = "chemistry",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-sodium-hydroxide", amount = 2 },
      { type = "item", name = "bob-silver-oxide", amount = 1 },
      { type = "item", name = "bob-zinc-plate", amount = 1 },
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "bob-silver-zinc-battery", amount = 1 } },
    crafting_machine_tint = {
      primary = { r = 0.1, g = 1.0, b = 0.1, a = 1.000 },
      secondary = { r = 0.8, g = 0.8, b = 0.8, a = 1.000 },
      tertiary = { r = 0.3, g = 0.3, b = 0.3, a = 1.000 },
      quaternary = { r = 0.1, g = 1.0, b = 0.1, a = 1.000 },
    },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-grinding-wheel",
    category = "crafting",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "bob-silicon-carbide", amount = 5 },
    },
    results = { { type = "item", name = "bob-grinding-wheel", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-polishing-wheel",
    category = "crafting",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "plastic-bar", amount = 5 },
    },
    results = { { type = "item", name = "bob-polishing-wheel", amount = 2 } },
    allow_productivity = true,
  },
})
