data:extend({
  {
    type = "recipe",
    name = "electrolyser",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { "iron-plate", 5 },
      { "stone-brick", 5 },
      { "electronic-circuit", 5 },
      { "pipe", 2 },
    },
    result = "electrolyser",
  },

  {
    type = "recipe",
    name = "stone-mixing-furnace",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { "stone", 5 },
    },
    result = "stone-mixing-furnace",
  },

  {
    type = "recipe",
    name = "stone-chemical-furnace",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { "stone", 5 },
      { "pipe", 2 },
    },
    result = "stone-chemical-furnace",
  },

  {
    type = "recipe",
    name = "steel-mixing-furnace",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { "steel-plate", 6 },
      { "stone-brick", 10 },
    },
    result = "steel-mixing-furnace",
  },

  {
    type = "recipe",
    name = "steel-chemical-furnace",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { "steel-plate", 6 },
      { "stone-brick", 10 },
      { "pipe", 5 },
    },
    result = "steel-chemical-furnace",
  },

  {
    type = "recipe",
    name = "electric-mixing-furnace",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { "steel-plate", 10 },
      { "stone-brick", 10 },
      { "advanced-circuit", 5 },
    },
    result = "electric-mixing-furnace",
  },

  {
    type = "recipe",
    name = "electric-chemical-furnace",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { "steel-plate", 10 },
      { "stone-brick", 10 },
      { "advanced-circuit", 5 },
      { "pipe", 5 },
    },
    result = "electric-chemical-furnace",
  },

  {
    type = "recipe",
    name = "air-pump",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { "iron-gear-wheel", 2 },
      { "iron-plate", 2 },
      { "electronic-circuit", 2 },
      { "pipe", 2 },
    },
    result = "air-pump",
  },

  {
    type = "recipe",
    name = "air-pump-2",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { "air-pump", 1 },
      { "steel-plate", 2 },
      { "steel-gear-wheel", 4 },
      { "advanced-circuit", 3 },
      { "pipe", 2 },
    },
    result = "air-pump-2",
  },

  {
    type = "recipe",
    name = "air-pump-3",
    energy_required = 7,
    enabled = false,
    ingredients = {
      { "air-pump-2", 1 },
      { "titanium-plate", 2 },
      { "titanium-gear-wheel", 4 },
      { "titanium-bearing", 4 },
      { "processing-unit", 3 },
      { "pipe", 2 },
    },
    result = "air-pump-3",
  },

  {
    type = "recipe",
    name = "air-pump-4",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { "air-pump-3", 1 },
      { "nitinol-alloy", 2 },
      { "nitinol-gear-wheel", 4 },
      { "nitinol-bearing", 4 },
      { "electric-engine-unit", 1 },
      { "advanced-processing-unit", 3 },
    },
    result = "air-pump-4",
  },

  {
    type = "recipe",
    name = "water-pump",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { "iron-gear-wheel", 2 },
      { "iron-plate", 2 },
      { "electronic-circuit", 2 },
      { "pipe", 2 },
    },
    result = "water-pump",
  },

  {
    type = "recipe",
    name = "water-pump-2",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { "water-pump", 1 },
      { "steel-plate", 2 },
      { "steel-gear-wheel", 4 },
      { "advanced-circuit", 3 },
      { "pipe", 2 },
    },
    result = "water-pump-2",
  },

  {
    type = "recipe",
    name = "water-pump-3",
    energy_required = 7,
    enabled = false,
    ingredients = {
      { "water-pump-2", 1 },
      { "titanium-plate", 2 },
      { "titanium-gear-wheel", 4 },
      { "titanium-bearing", 4 },
      { "processing-unit", 3 },
      { "pipe", 2 },
    },
    result = "water-pump-3",
  },

  {
    type = "recipe",
    name = "water-pump-4",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { "water-pump-3", 1 },
      { "nitinol-alloy", 2 },
      { "nitinol-gear-wheel", 4 },
      { "nitinol-bearing", 4 },
      { "electric-engine-unit", 1 },
      { "advanced-processing-unit", 3 },
    },
    result = "water-pump-4",
  },

  {
    type = "recipe",
    name = "bob-small-inline-storage-tank",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { "iron-plate", 3 },
      { "pipe", 1 },
    },
    result = "bob-small-inline-storage-tank",
  },

  {
    type = "recipe",
    name = "bob-small-storage-tank",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { "iron-plate", 3 },
      { "pipe", 2 },
    },
    result = "bob-small-storage-tank",
  },

  {
    type = "recipe",
    name = "void-pump",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { "iron-gear-wheel", 2 },
      { "iron-plate", 2 },
      { "electronic-circuit", 2 },
      { "pipe", 2 },
    },
    result = "void-pump",
  },
})

if settings.startup["bobmods-plates-convert-recipes"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "stone-mixing-furnace-from-stone-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-smelting-machine-convert",
      ingredients = {
        { "stone-furnace", 1 },
      },
      allow_as_intermediate = false,
      result = "stone-mixing-furnace",
    },

    {
      type = "recipe",
      name = "stone-chemical-furnace-from-stone-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-smelting-machine-convert",
      ingredients = {
        { "stone-furnace", 1 },
        { "pipe", 2 },
      },
      allow_as_intermediate = false,
      result = "stone-chemical-furnace",
    },

    {
      type = "recipe",
      name = "steel-mixing-furnace-from-steel-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-smelting-machine-convert",
      ingredients = {
        { "steel-furnace", 1 },
      },
      allow_as_intermediate = false,
      result = "steel-mixing-furnace",
    },

    {
      type = "recipe",
      name = "steel-chemical-furnace-from-steel-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-smelting-machine-convert",
      ingredients = {
        { "steel-furnace", 1 },
        { "pipe", 5 },
      },
      allow_as_intermediate = false,
      result = "steel-chemical-furnace",
    },

    {
      type = "recipe",
      name = "electric-mixing-furnace-from-electric-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-smelting-machine-convert",
      ingredients = {
        { "electric-furnace", 1 },
      },
      allow_as_intermediate = false,
      result = "electric-mixing-furnace",
    },

    {
      type = "recipe",
      name = "electric-chemical-furnace-from-electric-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-smelting-machine-convert",
      ingredients = {
        { "electric-furnace", 1 },
        { "pipe", 5 },
      },
      allow_as_intermediate = false,
      result = "electric-chemical-furnace",
    },

    {
      type = "recipe",
      name = "stone-furnace-from-stone-mixing-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-base-smelting-machine-convert",
      ingredients = {
        { "stone-mixing-furnace", 1 },
      },
      allow_as_intermediate = false,
      result = "stone-furnace",
    },

    {
      type = "recipe",
      name = "stone-furnace-from-stone-chemical-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-base-smelting-machine-convert",
      ingredients = {
        { "stone-chemical-furnace", 1 },
      },
      allow_as_intermediate = false,
      results = {
        { "stone-furnace", 1 },
        { "pipe", 2 },
      },
      main_product = "stone-furnace",
    },

    {
      type = "recipe",
      name = "steel-furnace-from-steel-mixing-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-base-smelting-machine-convert",
      ingredients = {
        { "steel-mixing-furnace", 1 },
      },
      allow_as_intermediate = false,
      result = "steel-furnace",
    },

    {
      type = "recipe",
      name = "steel-furnace-from-steel-chemical-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-base-smelting-machine-convert",
      ingredients = {
        { "steel-chemical-furnace", 1 },
      },
      allow_as_intermediate = false,
      results = {
        { "steel-furnace", 1 },
        { "pipe", 5 },
      },
      main_product = "steel-furnace",
    },

    {
      type = "recipe",
      name = "electric-furnace-from-electric-mixing-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-base-smelting-machine-convert",
      ingredients = {
        { "electric-mixing-furnace", 1 },
      },
      allow_as_intermediate = false,
      result = "electric-furnace",
    },

    {
      type = "recipe",
      name = "electric-furnace-from-electric-chemical-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-base-smelting-machine-convert",
      ingredients = {
        { "electric-chemical-furnace", 1 },
      },
      allow_as_intermediate = false,
      results = {
        { "electric-furnace", 1 },
        { "pipe", 5 },
      },
      main_product = "electric-furnace",
    },
  })
end
