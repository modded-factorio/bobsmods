data:extend({
  {
    type = "recipe",
    name = "electrolyser",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 5 },
      { type = "item", name = "stone-brick", amount = 5 },
      { type = "item", name = "electronic-circuit", amount = 5 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "electrolyser", amount = 1 } },
  },

  {
    type = "recipe",
    name = "stone-mixing-furnace",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "stone", amount = 5 },
    },
    results = { { type = "item", name = "stone-mixing-furnace", amount = 1 } },
  },

  {
    type = "recipe",
    name = "stone-chemical-furnace",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "stone", amount = 5 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "stone-chemical-furnace", amount = 1 } },
  },

  {
    type = "recipe",
    name = "steel-mixing-furnace",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 6 },
      { type = "item", name = "stone-brick", amount = 10 },
    },
    results = { { type = "item", name = "steel-mixing-furnace", amount = 1 } },
  },

  {
    type = "recipe",
    name = "steel-chemical-furnace",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 6 },
      { type = "item", name = "stone-brick", amount = 10 },
      { type = "item", name = "pipe", amount = 5 },
    },
    results = { { type = "item", name = "steel-chemical-furnace", amount = 1 } },
  },

  {
    type = "recipe",
    name = "electric-mixing-furnace",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "stone-brick", amount = 10 },
      { type = "item", name = "advanced-circuit", amount = 5 },
    },
    results = { { type = "item", name = "electric-mixing-furnace", amount = 1 } },
  },

  {
    type = "recipe",
    name = "electric-chemical-furnace",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "stone-brick", amount = 10 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "pipe", amount = 5 },
    },
    results = { { type = "item", name = "electric-chemical-furnace", amount = 1 } },
  },

  {
    type = "recipe",
    name = "air-pump",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-gear-wheel", amount = 2 },
      { type = "item", name = "iron-plate", amount = 2 },
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "air-pump", amount = 1 } },
  },

  {
    type = "recipe",
    name = "air-pump-2",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "air-pump", amount = 1 },
      { type = "item", name = "steel-plate", amount = 2 },
      { type = "item", name = "steel-gear-wheel", amount = 4 },
      { type = "item", name = "advanced-circuit", amount = 3 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "air-pump-2", amount = 1 } },
  },

  {
    type = "recipe",
    name = "air-pump-3",
    energy_required = 7,
    enabled = false,
    ingredients = {
      { type = "item", name = "air-pump-2", amount = 1 },
      { type = "item", name = "titanium-plate", amount = 2 },
      { type = "item", name = "titanium-gear-wheel", amount = 4 },
      { type = "item", name = "titanium-bearing", amount = 4 },
      { type = "item", name = "processing-unit", amount = 3 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "air-pump-3", amount = 1 } },
  },

  {
    type = "recipe",
    name = "air-pump-4",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "air-pump-3", amount = 1 },
      { type = "item", name = "nitinol-alloy", amount = 2 },
      { type = "item", name = "nitinol-gear-wheel", amount = 4 },
      { type = "item", name = "nitinol-bearing", amount = 4 },
      { type = "item", name = "electric-engine-unit", amount = 1 },
      { type = "item", name = "advanced-processing-unit", amount = 3 },
    },
    results = { { type = "item", name = "air-pump-4", amount = 1 } },
  },

  {
    type = "recipe",
    name = "water-pump",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-gear-wheel", amount = 2 },
      { type = "item", name = "iron-plate", amount = 2 },
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "water-pump", amount = 1 } },
  },

  {
    type = "recipe",
    name = "water-pump-2",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "water-pump", amount = 1 },
      { type = "item", name = "steel-plate", amount = 2 },
      { type = "item", name = "steel-gear-wheel", amount = 4 },
      { type = "item", name = "advanced-circuit", amount = 3 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "water-pump-2", amount = 1 } },
  },

  {
    type = "recipe",
    name = "water-pump-3",
    energy_required = 7,
    enabled = false,
    ingredients = {
      { type = "item", name = "water-pump-2", amount = 1 },
      { type = "item", name = "titanium-plate", amount = 2 },
      { type = "item", name = "titanium-gear-wheel", amount = 4 },
      { type = "item", name = "titanium-bearing", amount = 4 },
      { type = "item", name = "processing-unit", amount = 3 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "water-pump-3", amount = 1 } },
  },

  {
    type = "recipe",
    name = "water-pump-4",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "water-pump-3", amount = 1 },
      { type = "item", name = "nitinol-alloy", amount = 2 },
      { type = "item", name = "nitinol-gear-wheel", amount = 4 },
      { type = "item", name = "nitinol-bearing", amount = 4 },
      { type = "item", name = "electric-engine-unit", amount = 1 },
      { type = "item", name = "advanced-processing-unit", amount = 3 },
    },
    results = { { type = "item", name = "water-pump-4", amount = amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-small-inline-storage-tank",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 3 },
      { type = "item", name = "pipe", amount = 1 },
    },
    results = { { type = "item", name = "bob-small-inline-storage-tank", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-small-storage-tank",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 3 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "bob-small-storage-tank", amount = 1 } },
  },

  {
    type = "recipe",
    name = "void-pump",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-gear-wheel", amount = 2 },
      { type = "item", name = "iron-plate", amount = 2 },
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "void-pump", amount = 1 } },
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
        { type = "item", name = "stone-furnace", amount = 1 },
      },
      allow_as_intermediate = false,
      results = { { type = "item", name = "stone-mixing-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "stone-chemical-furnace-from-stone-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "stone-furnace", amount = 1 },
        { type = "item", name = "pipe", amount = 2 },
      },
      allow_as_intermediate = false,
      results = { { type = "item", name = "stone-chemical-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "steel-mixing-furnace-from-steel-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "steel-furnace", amount = 1 },
      },
      allow_as_intermediate = false,
      results = { { type = "item", name = "steel-mixing-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "steel-chemical-furnace-from-steel-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "steel-furnace", amount = 1 },
        { type = "item", name = "pipe", amount = 5 },
      },
      allow_as_intermediate = false,
      results = { { type = "item", name = "steel-chemical-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "electric-mixing-furnace-from-electric-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "electric-furnace", amount = 1 },
      },
      allow_as_intermediate = false,
      results = { { type = "item", name = "electric-mixing-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "electric-chemical-furnace-from-electric-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "electric-furnace", amount = 1 },
        { type = "item", name = "pipe", amount = 5 },
      },
      allow_as_intermediate = false,
      results = { { type = "item", name = "electric-chemical-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "stone-furnace-from-stone-mixing-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-base-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "stone-mixing-furnace", amount = 1 },
      },
      allow_as_intermediate = false,
      results = { { type = "item", name = "stone-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "stone-furnace-from-stone-chemical-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-base-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "stone-chemical-furnace", amount = 1 },
      },
      allow_as_intermediate = false,
      results = {
        { type = "item", name = "stone-furnace", amount = 1 },
        { type = "item", name = "pipe", 2 },
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
        { type = "item", name = "steel-mixing-furnace", amount = 1 },
      },
      allow_as_intermediate = false,
      results = { { type = "item", name = "steel-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "steel-furnace-from-steel-chemical-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-base-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "steel-chemical-furnace", amount = 1 },
      },
      allow_as_intermediate = false,
      results = {
        { type = "item", name = "steel-furnace", amount = 1 },
        { type = "item", name = "pipe", amount = 5 },
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
        { type = "item", name = "electric-mixing-furnace", amount = 1 },
      },
      allow_as_intermediate = false,
      results = { { type = "item", name = "electric-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "electric-furnace-from-electric-chemical-furnace",
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-base-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "electric-chemical-furnace", amount = 1 },
      },
      allow_as_intermediate = false,
      results = {
        { type = "item", name = "electric-furnace", amount = 1 },
        { type = "item", name = "pipe", amount = 5 },
      },
      main_product = "electric-furnace",
    },
  })
end
