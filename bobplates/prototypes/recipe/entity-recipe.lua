data:extend({
  {
    type = "recipe",
    name = "bob-electrolyser",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 5 },
      { type = "item", name = "stone-brick", amount = 5 },
      { type = "item", name = "electronic-circuit", amount = 5 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "bob-electrolyser", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-stone-mixing-furnace",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "stone", amount = 5 },
    },
    results = { { type = "item", name = "bob-stone-mixing-furnace", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-stone-chemical-furnace",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "stone", amount = 5 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "bob-stone-chemical-furnace", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-steel-mixing-furnace",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 6 },
      { type = "item", name = "stone-brick", amount = 10 },
    },
    results = { { type = "item", name = "bob-steel-mixing-furnace", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-steel-chemical-furnace",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 6 },
      { type = "item", name = "stone-brick", amount = 10 },
      { type = "item", name = "pipe", amount = 5 },
    },
    results = { { type = "item", name = "bob-steel-chemical-furnace", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-electric-mixing-furnace",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "stone-brick", amount = 10 },
      { type = "item", name = "advanced-circuit", amount = 5 },
    },
    results = { { type = "item", name = "bob-electric-mixing-furnace", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-electric-chemical-furnace",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "stone-brick", amount = 10 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "pipe", amount = 5 },
    },
    results = { { type = "item", name = "bob-electric-chemical-furnace", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-air-pump",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-gear-wheel", amount = 2 },
      { type = "item", name = "iron-plate", amount = 2 },
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "bob-air-pump", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-air-pump-2",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-air-pump", amount = 1 },
      { type = "item", name = "steel-plate", amount = 2 },
      { type = "item", name = "bob-steel-gear-wheel", amount = 4 },
      { type = "item", name = "advanced-circuit", amount = 3 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "bob-air-pump-2", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-air-pump-3",
    energy_required = 7,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-air-pump-2", amount = 1 },
      { type = "item", name = "bob-titanium-plate", amount = 2 },
      { type = "item", name = "bob-titanium-gear-wheel", amount = 4 },
      { type = "item", name = "bob-titanium-bearing", amount = 4 },
      { type = "item", name = "processing-unit", amount = 3 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "bob-air-pump-3", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-air-pump-4",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-air-pump-3", amount = 1 },
      { type = "item", name = "bob-nitinol-alloy", amount = 2 },
      { type = "item", name = "bob-nitinol-gear-wheel", amount = 4 },
      { type = "item", name = "bob-nitinol-bearing", amount = 4 },
      { type = "item", name = "electric-engine-unit", amount = 1 },
      { type = "item", name = "bob-advanced-processing-unit", amount = 3 },
    },
    results = { { type = "item", name = "bob-air-pump-4", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-water-pump",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-gear-wheel", amount = 2 },
      { type = "item", name = "iron-plate", amount = 2 },
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "bob-water-pump", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-water-pump-2",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-water-pump", amount = 1 },
      { type = "item", name = "steel-plate", amount = 2 },
      { type = "item", name = "bob-steel-gear-wheel", amount = 4 },
      { type = "item", name = "advanced-circuit", amount = 3 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "bob-water-pump-2", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-water-pump-3",
    energy_required = 7,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-water-pump-2", amount = 1 },
      { type = "item", name = "bob-titanium-plate", amount = 2 },
      { type = "item", name = "bob-titanium-gear-wheel", amount = 4 },
      { type = "item", name = "bob-titanium-bearing", amount = 4 },
      { type = "item", name = "processing-unit", amount = 3 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "bob-water-pump-3", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-water-pump-4",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-water-pump-3", amount = 1 },
      { type = "item", name = "bob-nitinol-alloy", amount = 2 },
      { type = "item", name = "bob-nitinol-gear-wheel", amount = 4 },
      { type = "item", name = "bob-nitinol-bearing", amount = 4 },
      { type = "item", name = "electric-engine-unit", amount = 1 },
      { type = "item", name = "bob-advanced-processing-unit", amount = 3 },
    },
    results = { { type = "item", name = "bob-water-pump-4", amount = 1 } },
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
    name = "bob-void-pump",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-gear-wheel", amount = 2 },
      { type = "item", name = "iron-plate", amount = 2 },
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "item", name = "pipe", amount = 2 },
    },
    results = { { type = "item", name = "bob-void-pump", amount = 1 } },
  },
})

if settings.startup["bobmods-plates-convert-recipes"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "bob-stone-mixing-furnace-from-stone-furnace",
      icons = {
        { icon = "__bobplates__/graphics/icons/stone-mixing-furnace.png", icon_size = 32 },
        { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        { icon = "__bobplates__/graphics/icons/m.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
      },
      localised_name = { "entity-name.bob-stone-mixing-furnace" },
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "stone-furnace", amount = 1 },
      },
      allow_as_intermediate = false,
      results = { { type = "item", name = "bob-stone-mixing-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-stone-chemical-furnace-from-stone-furnace",
      icons = {
        { icon = "__bobplates__/graphics/icons/stone-chemical-furnace.png", icon_size = 32 },
        { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        { icon = "__bobplates__/graphics/icons/c.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
      },
      localised_name = { "entity-name.bob-stone-chemical-furnace" },
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "stone-furnace", amount = 1 },
        { type = "item", name = "pipe", amount = 2 },
      },
      allow_as_intermediate = false,
      results = { { type = "item", name = "bob-stone-chemical-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-steel-mixing-furnace-from-steel-furnace",
      icons = {
        { icon = "__base__/graphics/icons/steel-furnace.png", scale = 0.5 },
        { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        { icon = "__bobplates__/graphics/icons/m.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
      },
      localised_name = { "entity-name.bob-steel-mixing-furnace" },
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "steel-furnace", amount = 1 },
      },
      allow_as_intermediate = false,
      results = { { type = "item", name = "bob-steel-mixing-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-steel-chemical-furnace-from-steel-furnace",
      icons = {
        { icon = "__base__/graphics/icons/steel-furnace.png", scale = 0.5 },
        { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        { icon = "__bobplates__/graphics/icons/c.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
      },
      localised_name = { "entity-name.bob-steel-chemical-furnace" },
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "steel-furnace", amount = 1 },
        { type = "item", name = "pipe", amount = 5 },
      },
      allow_as_intermediate = false,
      results = { { type = "item", name = "bob-steel-chemical-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-electric-mixing-furnace-from-electric-furnace",
      icons = {
        { icon = "__bobplates__/graphics/icons/electric-mixing-furnace.png", icon_size = 32 },
        { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        { icon = "__bobplates__/graphics/icons/m.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
      },
      localised_name = { "entity-name.bob-electric-mixing-furnace" },
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "electric-furnace", amount = 1 },
      },
      allow_as_intermediate = false,
      results = { { type = "item", name = "bob-electric-mixing-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-electric-chemical-furnace-from-electric-furnace",
      icons = {
        { icon = "__bobplates__/graphics/icons/chemical-furnace.png", icon_size = 32 },
        { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        { icon = "__bobplates__/graphics/icons/c.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
      },
      localised_name = { "entity-name.bob-electric-chemical-furnace" },
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "electric-furnace", amount = 1 },
        { type = "item", name = "pipe", amount = 5 },
      },
      allow_as_intermediate = false,
      results = { { type = "item", name = "bob-electric-chemical-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-stone-furnace-from-stone-mixing-furnace",
      icons = {
        { icon = "__base__/graphics/icons/stone-furnace.png", scale = 0.5 },
        { icon = "__bobplates__/graphics/icons/m.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
      },
      localised_name = { "entity-name.stone-furnace" },
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-base-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "bob-stone-mixing-furnace", amount = 1 },
      },
      allow_as_intermediate = false,
      results = { { type = "item", name = "stone-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-stone-furnace-from-stone-chemical-furnace",
      icons = {
        { icon = "__base__/graphics/icons/stone-furnace.png", scale = 0.5 },
        { icon = "__bobplates__/graphics/icons/c.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
      },
      localised_name = { "entity-name.stone-furnace" },
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-base-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "bob-stone-chemical-furnace", amount = 1 },
      },
      allow_as_intermediate = false,
      results = {
        { type = "item", name = "stone-furnace", amount = 1 },
        { type = "item", name = "pipe", amount = 2 },
      },
      main_product = "stone-furnace",
    },

    {
      type = "recipe",
      name = "bob-steel-furnace-from-steel-mixing-furnace",
      icons = {
        { icon = "__base__/graphics/icons/steel-furnace.png", scale = 0.5 },
        { icon = "__bobplates__/graphics/icons/m.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
      },
      localised_name = { "entity-name.steel-furnace" },
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-base-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "bob-steel-mixing-furnace", amount = 1 },
      },
      allow_as_intermediate = false,
      results = { { type = "item", name = "steel-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-steel-furnace-from-steel-chemical-furnace",
      icons = {
        { icon = "__base__/graphics/icons/steel-furnace.png", scale = 0.5 },
        { icon = "__bobplates__/graphics/icons/c.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
      },
      localised_name = { "entity-name.steel-furnace" },
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-base-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "bob-steel-chemical-furnace", amount = 1 },
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
      name = "bob-electric-furnace-from-electric-mixing-furnace",
      icons = {
        { icon = "__base__/graphics/icons/electric-furnace.png", scale = 0.5 },
        { icon = "__bobplates__/graphics/icons/m.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
      },
      localised_name = { "entity-name.electric-furnace" },
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-base-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "bob-electric-mixing-furnace", amount = 1 },
      },
      allow_as_intermediate = false,
      results = { { type = "item", name = "electric-furnace", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-electric-furnace-from-electric-chemical-furnace",
      icons = {
        { icon = "__base__/graphics/icons/electric-furnace.png", scale = 0.5 },
        { icon = "__bobplates__/graphics/icons/c.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, 8 } },
      },
      localised_name = { "entity-name.electric-furnace" },
      energy_required = 0.1,
      enabled = false,
      subgroup = "bob-base-smelting-machine-convert",
      ingredients = {
        { type = "item", name = "bob-electric-chemical-furnace", amount = 1 },
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
