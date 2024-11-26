data:extend({
  {
    type = "recipe",
    name = "steel-gear-wheel",
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = { { type = "item", name = "steel-gear-wheel", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "steel-bearing-ball",
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = { { type = "item", name = "steel-bearing-ball", amount = 12 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "steel-bearing",
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "steel-bearing-ball", amount = 16 },
    },
    results = { { type = "item", name = "steel-bearing", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "brass-gear-wheel",
    enabled = false,
    ingredients = {
      { type = "item", name = "brass-alloy", amount = 1 },
    },
    results = { { type = "item", name = "brass-gear-wheel", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "cobalt-steel-gear-wheel",
    enabled = false,
    ingredients = {
      { type = "item", name = "cobalt-steel-alloy", amount = 1 },
    },
    results = { { type = "item", name = "cobalt-steel-gear-wheel", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "cobalt-steel-bearing-ball",
    enabled = false,
    ingredients = {
      { type = "item", name = "cobalt-steel-alloy", amount = 1 },
    },
    results = { { type = "item", name = "cobalt-steel-bearing-ball", amount = 12 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "cobalt-steel-bearing",
    enabled = false,
    ingredients = {
      { type = "item", name = "cobalt-steel-alloy", amount = 1 },
      { type = "item", name = "cobalt-steel-bearing-ball", amount = 16 },
    },
    results = { { type = "item", name = "cobalt-steel-bearing", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "titanium-gear-wheel",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-titanium-plate", amount = 1 },
    },
    results = { { type = "item", name = "titanium-gear-wheel", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "titanium-bearing-ball",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-titanium-plate", amount = 1 },
    },
    results = { { type = "item", name = "titanium-bearing-ball", amount = 12 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "titanium-bearing",
    category = "crafting-with-fluid",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-titanium-plate", amount = 1 },
      { type = "item", name = "titanium-bearing-ball", amount = 16 },
      { type = "fluid", name = "lubricant", amount = 10 },
    },
    results = { { type = "item", name = "titanium-bearing", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "tungsten-gear-wheel",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-tungsten-plate", amount = 1 },
    },
    results = { { type = "item", name = "tungsten-gear-wheel", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "nitinol-gear-wheel",
    enabled = false,
    ingredients = {
      { type = "item", name = "nitinol-alloy", amount = 1 },
    },
    results = { { type = "item", name = "nitinol-gear-wheel", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "nitinol-bearing-ball",
    enabled = false,
    ingredients = {
      { type = "item", name = "nitinol-alloy", amount = 1 },
    },
    results = { { type = "item", name = "nitinol-bearing-ball", amount = 12 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "nitinol-bearing",
    category = "crafting-with-fluid",
    enabled = false,
    ingredients = {
      { type = "item", name = "nitinol-alloy", amount = 1 },
      { type = "item", name = "nitinol-bearing-ball", amount = 16 },
      { type = "fluid", name = "lubricant", amount = 10 },
    },
    results = { { type = "item", name = "nitinol-bearing", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "ceramic-bearing-ball",
    enabled = false,
    ingredients = {
      { type = "item", name = "silicon-nitride", amount = 1 },
    },
    results = { { type = "item", name = "ceramic-bearing-ball", amount = 12 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "ceramic-bearing",
    category = "crafting-with-fluid",
    enabled = false,
    ingredients = {
      { type = "item", name = "silicon-nitride", amount = 1 },
      { type = "item", name = "ceramic-bearing-ball", amount = 16 },
      { type = "fluid", name = "lubricant", amount = 10 },
    },
    results = { { type = "item", name = "ceramic-bearing", amount = 2 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "lithium-ion-battery",
    category = "chemistry",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "lithium-perchlorate", amount = 2 },
      { type = "item", name = "lithium-cobalt-oxide", amount = 1 },
      { type = "item", name = "carbon", amount = 1 },
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "lithium-ion-battery", amount = 1 } },
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
    name = "silver-zinc-battery",
    category = "chemistry",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "sodium-hydroxide", amount = 2 },
      { type = "item", name = "silver-oxide", amount = 1 },
      { type = "item", name = "bob-zinc-plate", amount = 1 },
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "silver-zinc-battery", amount = 1 } },
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
      { type = "item", name = "silicon-carbide", amount = 5 },
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
      { type = "item", name = "wood", amount = 5 },
    },
    results = { { type = "item", name = "bob-polishing-wheel", amount = 2 } },
    allow_productivity = true,
  },
})
