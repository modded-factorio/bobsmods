if settings.startup["bobmods-power-steam"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "oil-boiler",
      enabled = false,
      ingredients = {
        { type = "item", name = "boiler-2", amount = 1 },
        { type = "item", name = "pipe", amount = 2 },
      },
      results = { { type = "item", name = "oil-boiler", amount = 1 } },
    },

    {
      type = "recipe",
      name = "oil-boiler-2",
      enabled = false,
      ingredients = {
        { type = "item", name = "oil-boiler", amount = 1 },
        { type = "item", name = "steel-plate", amount = 5 },
      },
      results = { { type = "item", name = "oil-boiler-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "oil-boiler-3",
      enabled = false,
      ingredients = {
        { type = "item", name = "oil-boiler-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 5 },
      },
      results = { { type = "item", name = "oil-boiler-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "oil-boiler-4",
      enabled = false,
      ingredients = {
        { type = "item", name = "oil-boiler-3", amount = 1 },
        { type = "item", name = "steel-plate", amount = 5 },
      },
      results = { { type = "item", name = "oil-boiler-4", amount = 1 } },
    },
  })

  if
    settings.startup["bobmods-plates-convert-recipes"]
    and settings.startup["bobmods-plates-convert-recipes"].value == true
  then
    data:extend({
      {
        type = "recipe",
        name = "oil-boiler-2-from-boiler-3",
        icons = {
          { icon = "__base__/graphics/icons/boiler.png", scale = 0.5, },
          { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, -8 }, },
          { icon = "__bobplates__/graphics/icons/f.png", icon_size = 28, scale = 0.5, shift = { -8, 8 }, },
        },
        localised_name = { "entity-name.oil-boiler-2" },
        subgroup = "bob-energy-oil-boiler-convert",
        enabled = false,
        ingredients = {
          { type = "item", name = "boiler-3", amount = 1 },
          { type = "item", name = "pipe", amount = 2 },
        },
        results = { { type = "item", name = "oil-boiler-2", amount = 1 } },
        allow_as_intermediate = false,
      },

      {
        type = "recipe",
        name = "oil-boiler-3-from-boiler-4",
        icons = {
          { icon = "__base__/graphics/icons/boiler.png", scale = 0.5, },
          { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, -8 }, },
          { icon = "__bobplates__/graphics/icons/f.png", icon_size = 28, scale = 0.5, shift = { -8, 8 }, },
        },
        localised_name = { "entity-name.oil-boiler-3" },
        subgroup = "bob-energy-oil-boiler-convert",
        enabled = false,
        ingredients = {
          { type = "item", name = "boiler-4", amount = 1 },
          { type = "item", name = "pipe", amount = 2 },
        },
        results = { { type = "item", name = "oil-boiler-3", amount = 1 } },
        allow_as_intermediate = false,
      },

      {
        type = "recipe",
        name = "oil-boiler-4-from-boiler-5",
        icons = {
          { icon = "__base__/graphics/icons/boiler.png", scale = 0.5, },
          { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, -8 }, },
          { icon = "__bobplates__/graphics/icons/f.png", icon_size = 28, scale = 0.5, shift = { -8, 8 }, },
        },
        localised_name = { "entity-name.oil-boiler-4" },
        subgroup = "bob-energy-oil-boiler-convert",
        enabled = false,
        ingredients = {
          { type = "item", name = "boiler-5", amount = 1 },
          { type = "item", name = "pipe", amount = 2 },
        },
        results = { { type = "item", name = "oil-boiler-4", amount = 1 } },
        allow_as_intermediate = false,
      },
    })
    data:extend({
      {
        type = "recipe",
        name = "boiler-2-from-oil-boiler",
        icons = {
          { icon = "__base__/graphics/icons/boiler.png", scale = 0.5, },
          { icon = "__bobplates__/graphics/icons/f.png", icon_size = 28, scale = 0.5, shift = { -8, -8 }, },
        },
        localised_name = { "entity-name.boiler-2" },
        subgroup = "bob-energy-boiler-convert",
        enabled = false,
        ingredients = {
          { type = "item", name = "oil-boiler", amount = 1 },
        },
        results = {
          { type = "item", name = "boiler-2", amount = 1 },
          { type = "item", name = "pipe", amount = 2 },
        },
        main_product = "boiler-2",
        allow_as_intermediate = false,
      },

      {
        type = "recipe",
        name = "boiler-3-from-oil-boiler-2",
        icons = {
          { icon = "__base__/graphics/icons/boiler.png", scale = 0.5, },
          { icon = "__bobplates__/graphics/icons/f.png", icon_size = 28, scale = 0.5, shift = { -8, -8 }, },
        },
        localised_name = { "entity-name.boiler-3" },
        subgroup = "bob-energy-boiler-convert",
        enabled = false,
        ingredients = {
          { type = "item", name = "oil-boiler-2", amount = 1 },
        },
        results = {
          { type = "item", name = "boiler-3", amount = 1 },
          { type = "item", name = "pipe", amount = 2 },
        },
        main_product = "boiler-3",
        allow_as_intermediate = false,
      },

      {
        type = "recipe",
        name = "boiler-4-from-oil-boiler-3",
        icons = {
          { icon = "__base__/graphics/icons/boiler.png", scale = 0.5, },
          { icon = "__bobplates__/graphics/icons/f.png", icon_size = 28, scale = 0.5, shift = { -8, -8 }, },
        },
        localised_name = { "entity-name.boiler-4" },
        subgroup = "bob-energy-boiler-convert",
        enabled = false,
        ingredients = {
          { type = "item", name = "oil-boiler-3", amount = 1 },
        },
        results = {
          { type = "item", name = "boiler-4", amount = 1 },
          { type = "item", name = "pipe", amount = 2 },
        },
        main_product = "boiler-4",
        allow_as_intermediate = false,
      },

      {
        type = "recipe",
        name = "boiler-5-from-oil-boiler-4",
        icons = {
          { icon = "__base__/graphics/icons/boiler.png", scale = 0.5, },
          { icon = "__bobplates__/graphics/icons/f.png", icon_size = 28, scale = 0.5, shift = { -8, -8 }, },
        },
        localised_name = { "entity-name.boiler-5" },
        subgroup = "bob-energy-boiler-convert",
        enabled = false,
        ingredients = {
          { type = "item", name = "oil-boiler-4", amount = 1 },
        },
        results = {
          { type = "item", name = "boiler-5", amount = 1 },
          { type = "item", name = "pipe", amount = 2 },
        },
        main_product = "boiler-5",
        allow_as_intermediate = false,
      },
    })
  end
end
