data:extend({
  {
    type = "recipe",
    name = "bob-copper-pipe",
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
    },
    results = { { type = "item", name = "bob-copper-pipe", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-copper-pipe-to-ground",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-copper-pipe", amount = 10 },
      { type = "item", name = "copper-plate", amount = 5 },
    },
    results = { { type = "item", name = "bob-copper-pipe-to-ground", amount = 2 } },
  },

  {
    type = "recipe",
    name = "bob-steel-pipe",
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = { { type = "item", name = "bob-steel-pipe", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-steel-pipe-to-ground",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-steel-pipe", amount = 12 },
      { type = "item", name = "steel-plate", amount = 5 },
    },
    results = { { type = "item", name = "bob-steel-pipe-to-ground", amount = 2 } },
  },

  {
    type = "recipe",
    name = "bob-plastic-pipe",
    enabled = false,
    ingredients = {
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "bob-plastic-pipe", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-plastic-pipe-to-ground",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-plastic-pipe", amount = 14 },
      { type = "item", name = "plastic-bar", amount = 5 },
    },
    results = { { type = "item", name = "bob-plastic-pipe-to-ground", amount = 2 } },
  },
})

if mods["bobplates"] then
  data:extend({
    {
      type = "recipe",
      name = "bob-bronze-pipe",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-bronze-alloy", amount = 1 },
      },
      results = { { type = "item", name = "bob-bronze-pipe", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-bronze-pipe-to-ground",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-bronze-pipe", amount = 12 },
        { type = "item", name = "bob-bronze-alloy", amount = 5 },
      },
      results = { { type = "item", name = "bob-bronze-pipe-to-ground", amount = 2 } },
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "bob-aluminium-pipe",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-aluminium-plate", amount = 1 },
      },
      results = { { type = "item", name = "bob-aluminium-pipe", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-aluminium-pipe-to-ground",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-aluminium-pipe", amount = 14 },
        { type = "item", name = "bob-aluminium-plate", amount = 5 },
      },
      results = { { type = "item", name = "bob-aluminium-pipe-to-ground", amount = 2 } },
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "bob-brass-pipe",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-brass-alloy", amount = 1 },
      },
      results = { { type = "item", name = "bob-brass-pipe", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-brass-pipe-to-ground",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-brass-pipe", amount = 14 },
        { type = "item", name = "bob-brass-alloy", amount = 5 },
      },
      results = { { type = "item", name = "bob-brass-pipe-to-ground", amount = 2 } },
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "bob-titanium-pipe",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-titanium-plate", amount = 1 },
      },
      results = { { type = "item", name = "bob-titanium-pipe", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-titanium-pipe-to-ground",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-titanium-pipe", amount = 16 },
        { type = "item", name = "bob-titanium-plate", amount = 5 },
      },
      results = { { type = "item", name = "bob-titanium-pipe-to-ground", amount = 2 } },
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "bob-tungsten-pipe",
      enabled = false,
      ingredients = {
        { type = "item", name = "tungsten-plate", amount = 1 },
      },
      results = { { type = "item", name = "bob-tungsten-pipe", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-tungsten-pipe-to-ground",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-tungsten-pipe", amount = 16 },
        { type = "item", name = "tungsten-plate", amount = 5 },
      },
      results = { { type = "item", name = "bob-tungsten-pipe-to-ground", amount = 2 } },
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "bob-copper-tungsten-pipe",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-copper-tungsten-alloy", amount = 1 },
      },
      results = { { type = "item", name = "bob-copper-tungsten-pipe", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-copper-tungsten-pipe-to-ground",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-copper-tungsten-pipe", amount = 18 },
        { type = "item", name = "bob-copper-tungsten-alloy", amount = 5 },
      },
      results = { { type = "item", name = "bob-copper-tungsten-pipe-to-ground", amount = 2 } },
    },
  })
end
