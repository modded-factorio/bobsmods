data:extend({
  {
    type = "recipe",
    name = "bob-stone-pipe",
    enabled = false,
    ingredients = {
      { type = "item", name = "stone-brick", amount = 1 },
    },
    results = { { type = "item", name = "bob-stone-pipe", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-stone-pipe-to-ground",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-stone-pipe", amount = 10 },
      { type = "item", name = "stone-brick", amount = 5 },
    },
    results = { { type = "item", name = "bob-stone-pipe-to-ground", amount = 2 } },
  },

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

if data.raw.item["bob-bronze-alloy"] then
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
end

if data.raw.item["bob-brass-alloy"] then
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
end

if data.raw.item["bob-silicon-nitride"] then
  data:extend({
    {
      type = "recipe",
      name = "bob-ceramic-pipe",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-silicon-nitride", amount = 1 },
      },
      results = { { type = "item", name = "bob-ceramic-pipe", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-ceramic-pipe-to-ground",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-ceramic-pipe", amount = 16 },
        { type = "item", name = "bob-silicon-nitride", amount = 5 },
      },
      results = { { type = "item", name = "bob-ceramic-pipe-to-ground", amount = 2 } },
    },
  })
end

if data.raw.item["bob-titanium-plate"] then
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
end

if data.raw.item["bob-tungsten-plate"] then
  data:extend({
    {
      type = "recipe",
      name = "bob-tungsten-pipe",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-tungsten-plate", amount = 1 },
      },
      results = { { type = "item", name = "bob-tungsten-pipe", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-tungsten-pipe-to-ground",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-tungsten-pipe", amount = 16 },
        { type = "item", name = "bob-tungsten-plate", amount = 5 },
      },
      results = { { type = "item", name = "bob-tungsten-pipe-to-ground", amount = 2 } },
    },
  })
end

if data.raw.item["bob-nitinol-alloy"] then
  data:extend({
    {
      type = "recipe",
      name = "bob-nitinol-pipe",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-nitinol-alloy", amount = 1 },
      },
      results = { { type = "item", name = "bob-nitinol-pipe", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-nitinol-pipe-to-ground",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-nitinol-pipe", amount = 18 },
        { type = "item", name = "bob-nitinol-alloy", amount = 5 },
      },
      results = { { type = "item", name = "bob-nitinol-pipe-to-ground", amount = 2 } },
    },
  })
end

if data.raw.item["bob-copper-tungsten-alloy"] then
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
