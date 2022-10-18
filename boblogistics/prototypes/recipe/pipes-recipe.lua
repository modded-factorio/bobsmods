data:extend({
  {
    type = "recipe",
    name = "stone-pipe",
    normal = {
      ingredients = {
        { "stone-brick", 1 },
      },
      result = "stone-pipe",
    },
    expensive = {
      ingredients = {
        { "stone-brick", 2 },
      },
      result = "stone-pipe",
    },
  },

  {
    type = "recipe",
    name = "stone-pipe-to-ground",
    ingredients = {
      { "stone-pipe", 10 },
      { "stone-brick", 5 },
    },
    result_count = 2,
    result = "stone-pipe-to-ground",
  },

  {
    type = "recipe",
    name = "copper-pipe",
    normal = {
      ingredients = {
        { "copper-plate", 1 },
      },
      result = "copper-pipe",
    },
    expensive = {
      ingredients = {
        { "copper-plate", 2 },
      },
      result = "copper-pipe",
    },
  },

  {
    type = "recipe",
    name = "copper-pipe-to-ground",
    ingredients = {
      { "copper-pipe", 10 },
      { "copper-plate", 5 },
    },
    result_count = 2,
    result = "copper-pipe-to-ground",
  },

  {
    type = "recipe",
    name = "steel-pipe",
    normal = {
      enabled = false,
      ingredients = {
        { "steel-plate", 1 },
      },
      result = "steel-pipe",
    },
    expensive = {
      enabled = false,
      ingredients = {
        { "steel-plate", 2 },
      },
      result = "steel-pipe",
    },
  },

  {
    type = "recipe",
    name = "steel-pipe-to-ground",
    enabled = false,
    ingredients = {
      { "steel-pipe", 12 },
      { "steel-plate", 5 },
    },
    result_count = 2,
    result = "steel-pipe-to-ground",
  },

  {
    type = "recipe",
    name = "plastic-pipe",
    normal = {
      enabled = false,
      ingredients = {
        { "plastic-bar", 1 },
      },
      result = "plastic-pipe",
    },
    expensive = {
      enabled = false,
      ingredients = {
        { "plastic-bar", 2 },
      },
      result = "plastic-pipe",
    },
  },

  {
    type = "recipe",
    name = "plastic-pipe-to-ground",
    enabled = false,
    ingredients = {
      { "plastic-pipe", 14 },
      { "plastic-bar", 5 },
    },
    result_count = 2,
    result = "plastic-pipe-to-ground",
  },
})

if data.raw.item["bronze-alloy"] then
  data:extend({
    {
      type = "recipe",
      name = "bronze-pipe",
      normal = {
        enabled = false,
        ingredients = {
          { "bronze-alloy", 1 },
        },
        result = "bronze-pipe",
      },
      expensive = {
        enabled = false,
        ingredients = {
          { "bronze-alloy", 2 },
        },
        result = "bronze-pipe",
      },
    },

    {
      type = "recipe",
      name = "bronze-pipe-to-ground",
      enabled = false,
      ingredients = {
        { "bronze-pipe", 12 },
        { "bronze-alloy", 5 },
      },
      result_count = 2,
      result = "bronze-pipe-to-ground",
    },
  })
end

if data.raw.item["brass-alloy"] then
  data:extend({
    {
      type = "recipe",
      name = "brass-pipe",
      normal = {
        enabled = false,
        ingredients = {
          { "brass-alloy", 1 },
        },
        result = "brass-pipe",
      },
      expensive = {
        enabled = false,
        ingredients = {
          { "brass-alloy", 2 },
        },
        result = "brass-pipe",
      },
    },

    {
      type = "recipe",
      name = "brass-pipe-to-ground",
      enabled = false,
      ingredients = {
        { "brass-pipe", 14 },
        { "brass-alloy", 5 },
      },
      result_count = 2,
      result = "brass-pipe-to-ground",
    },
  })
end

if data.raw.item["silicon-nitride"] then
  data:extend({
    {
      type = "recipe",
      name = "ceramic-pipe",
      normal = {
        enabled = false,
        ingredients = {
          { "silicon-nitride", 1 },
        },
        result = "ceramic-pipe",
      },
      expensive = {
        enabled = false,
        ingredients = {
          { "silicon-nitride", 2 },
        },
        result = "ceramic-pipe",
      },
    },

    {
      type = "recipe",
      name = "ceramic-pipe-to-ground",
      enabled = false,
      ingredients = {
        { "ceramic-pipe", 16 },
        { "silicon-nitride", 5 },
      },
      result_count = 2,
      result = "ceramic-pipe-to-ground",
    },
  })
end

if data.raw.item["titanium-plate"] then
  data:extend({
    {
      type = "recipe",
      name = "titanium-pipe",
      normal = {
        enabled = false,
        ingredients = {
          { "titanium-plate", 1 },
        },
        result = "titanium-pipe",
      },
      expensive = {
        enabled = false,
        ingredients = {
          { "titanium-plate", 2 },
        },
        result = "titanium-pipe",
      },
    },

    {
      type = "recipe",
      name = "titanium-pipe-to-ground",
      enabled = false,
      ingredients = {
        { "titanium-pipe", 16 },
        { "titanium-plate", 5 },
      },
      result_count = 2,
      result = "titanium-pipe-to-ground",
    },
  })
end

if data.raw.item["tungsten-plate"] then
  data:extend({
    {
      type = "recipe",
      name = "tungsten-pipe",
      normal = {
        enabled = false,
        ingredients = {
          { "tungsten-plate", 1 },
        },
        result = "tungsten-pipe",
      },
      expensive = {
        enabled = false,
        ingredients = {
          { "tungsten-plate", 2 },
        },
        result = "tungsten-pipe",
      },
    },

    {
      type = "recipe",
      name = "tungsten-pipe-to-ground",
      enabled = false,
      ingredients = {
        { "tungsten-pipe", 16 },
        { "tungsten-plate", 5 },
      },
      result_count = 2,
      result = "tungsten-pipe-to-ground",
    },
  })
end

if data.raw.item["nitinol-alloy"] then
  data:extend({
    {
      type = "recipe",
      name = "nitinol-pipe",
      normal = {
        enabled = false,
        ingredients = {
          { "nitinol-alloy", 1 },
        },
        result = "nitinol-pipe",
      },
      expensive = {
        enabled = false,
        ingredients = {
          { "nitinol-alloy", 2 },
        },
        result = "nitinol-pipe",
      },
    },

    {
      type = "recipe",
      name = "nitinol-pipe-to-ground",
      enabled = false,
      ingredients = {
        { "nitinol-pipe", 18 },
        { "nitinol-alloy", 5 },
      },
      result_count = 2,
      result = "nitinol-pipe-to-ground",
    },
  })
end

if data.raw.item["copper-tungsten-alloy"] then
  data:extend({
    {
      type = "recipe",
      name = "copper-tungsten-pipe",
      normal = {
        enabled = false,
        ingredients = {
          { "copper-tungsten-alloy", 1 },
        },
        result = "copper-tungsten-pipe",
      },
      expensive = {
        enabled = false,
        ingredients = {
          { "copper-tungsten-alloy", 2 },
        },
        result = "copper-tungsten-pipe",
      },
    },

    {
      type = "recipe",
      name = "copper-tungsten-pipe-to-ground",
      enabled = false,
      ingredients = {
        { "copper-tungsten-pipe", 18 },
        { "copper-tungsten-alloy", 5 },
      },
      result_count = 2,
      result = "copper-tungsten-pipe-to-ground",
    },
  })
end
