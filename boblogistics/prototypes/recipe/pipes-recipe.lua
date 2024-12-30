data:extend({
  {
    type = "recipe",
    name = "stone-pipe",
    enabled = false,
    ingredients = {
      { type = "item", name = "stone-brick", amount = 1 },
    },
    results = { { type = "item", name = "stone-pipe", amount = 1 } },
  },

  {
    type = "recipe",
    name = "stone-pipe-to-ground",
    enabled = false,
    ingredients = {
      { type = "item", name = "stone-pipe", amount = 10 },
      { type = "item", name = "stone-brick", amount = 5 },
    },
    results = { { type = "item", name = "stone-pipe-to-ground", amount = 2 } },
  },

  {
    type = "recipe",
    name = "copper-pipe",
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
    },
    results = { { type = "item", name = "copper-pipe", amount = 1 } },
  },

  {
    type = "recipe",
    name = "copper-pipe-to-ground",
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-pipe", amount = 10 },
      { type = "item", name = "copper-plate", amount = 5 },
    },
    results = { { type = "item", name = "copper-pipe-to-ground", amount = 2 } },
  },

  {
    type = "recipe",
    name = "steel-pipe",
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = { { type = "item", name = "steel-pipe", amount = 1 } },
  },

  {
    type = "recipe",
    name = "steel-pipe-to-ground",
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-pipe", amount = 12 },
      { type = "item", name = "steel-plate", amount = 5 },
    },
    results = { { type = "item", name = "steel-pipe-to-ground", amount = 2 } },
  },

  {
    type = "recipe",
    name = "plastic-pipe",
    enabled = false,
    ingredients = {
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "plastic-pipe", amount = 1 } },
  },

  {
    type = "recipe",
    name = "plastic-pipe-to-ground",
    enabled = false,
    ingredients = {
      { type = "item", name = "plastic-pipe", amount = 14 },
      { type = "item", name = "plastic-bar", amount = 5 },
    },
    results = { { type = "item", name = "plastic-pipe-to-ground", amount = 2 } },
  },
})

if data.raw.item["bob-bronze-alloy"] then
  data:extend({
    {
      type = "recipe",
      name = "bronze-pipe",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-bronze-alloy", amount = 1 },
      },
      results = { { type = "item", name = "bronze-pipe", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bronze-pipe-to-ground",
      enabled = false,
      ingredients = {
        { type = "item", name = "bronze-pipe", amount = 12 },
        { type = "item", name = "bob-bronze-alloy", amount = 5 },
      },
      results = { { type = "item", name = "bronze-pipe-to-ground", amount = 2 } },
    },
  })
end

if data.raw.item["bob-brass-alloy"] then
  data:extend({
    {
      type = "recipe",
      name = "brass-pipe",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-brass-alloy", amount = 1 },
      },
      results = { { type = "item", name = "brass-pipe", amount = 1 } },
    },

    {
      type = "recipe",
      name = "brass-pipe-to-ground",
      enabled = false,
      ingredients = {
        { type = "item", name = "brass-pipe", amount = 14 },
        { type = "item", name = "bob-brass-alloy", amount = 5 },
      },
      results = { { type = "item", name = "brass-pipe-to-ground", amount = 2 } },
    },
  })
end

if data.raw.item["bob-silicon-nitride"] then
  data:extend({
    {
      type = "recipe",
      name = "ceramic-pipe",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-silicon-nitride", amount = 1 },
      },
      results = { { type = "item", name = "ceramic-pipe", amount = 1 } },
    },

    {
      type = "recipe",
      name = "ceramic-pipe-to-ground",
      enabled = false,
      ingredients = {
        { type = "item", name = "ceramic-pipe", amount = 16 },
        { type = "item", name = "bob-silicon-nitride", amount = 5 },
      },
      results = { { type = "item", name = "ceramic-pipe-to-ground", amount = 2 } },
    },
  })
end

if data.raw.item["bob-titanium-plate"] then
  data:extend({
    {
      type = "recipe",
      name = "titanium-pipe",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-titanium-plate", amount = 1 },
      },
      results = { { type = "item", name = "titanium-pipe", amount = 1 } },
    },

    {
      type = "recipe",
      name = "titanium-pipe-to-ground",
      enabled = false,
      ingredients = {
        { type = "item", name = "titanium-pipe", amount = 16 },
        { type = "item", name = "bob-titanium-plate", amount = 5 },
      },
      results = { { type = "item", name = "titanium-pipe-to-ground", amount = 2 } },
    },
  })
end

if data.raw.item["bob-tungsten-plate"] then
  data:extend({
    {
      type = "recipe",
      name = "tungsten-pipe",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-tungsten-plate", amount = 1 },
      },
      results = { { type = "item", name = "tungsten-pipe", amount = 1 } },
    },

    {
      type = "recipe",
      name = "tungsten-pipe-to-ground",
      enabled = false,
      ingredients = {
        { type = "item", name = "tungsten-pipe", amount = 16 },
        { type = "item", name = "bob-tungsten-plate", amount = 5 },
      },
      results = { { type = "item", name = "tungsten-pipe-to-ground", amount = 2 } },
    },
  })
end

if data.raw.item["bob-nitinol-alloy"] then
  data:extend({
    {
      type = "recipe",
      name = "nitinol-pipe",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-nitinol-alloy", amount = 1 },
      },
      results = { { type = "item", name = "nitinol-pipe", amount = 1 } },
    },

    {
      type = "recipe",
      name = "nitinol-pipe-to-ground",
      enabled = false,
      ingredients = {
        { type = "item", name = "nitinol-pipe", amount = 18 },
        { type = "item", name = "bob-nitinol-alloy", amount = 5 },
      },
      results = { { type = "item", name = "nitinol-pipe-to-ground", amount = 2 } },
    },
  })
end

if data.raw.item["bob-copper-tungsten-alloy"] then
  data:extend({
    {
      type = "recipe",
      name = "copper-tungsten-pipe",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-copper-tungsten-alloy", amount = 1 },
      },
      results = { { type = "item", name = "copper-tungsten-pipe", amount = 1 } },
    },

    {
      type = "recipe",
      name = "copper-tungsten-pipe-to-ground",
      enabled = false,
      ingredients = {
        { type = "item", name = "copper-tungsten-pipe", amount = 18 },
        { type = "item", name = "bob-copper-tungsten-alloy", amount = 5 },
      },
      results = { { type = "item", name = "copper-tungsten-pipe-to-ground", amount = 2 } },
    },
  })
end
