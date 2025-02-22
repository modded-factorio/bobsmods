if settings.startup["bobmods-power-steam"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "heat-exchanger",
      energy_required = 3,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-boiler-2", amount = 1 },
        { type = "item", name = "heat-pipe", amount = 4 },
      },
      results = { { type = "item", name = "heat-exchanger", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-heat-exchanger-2",
      enabled = false,
      ingredients = {
        { type = "item", name = "heat-exchanger", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "bob-heat-pipe-2", amount = 4 },
      },
      results = { { type = "item", name = "bob-heat-exchanger-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-heat-exchanger-3",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-heat-exchanger-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "bob-heat-pipe-3", amount = 4 },
      },
      results = { { type = "item", name = "bob-heat-exchanger-3", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-heat-exchanger-4",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-heat-exchanger-3", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "bob-heat-pipe-4", amount = 4 },
      },
      results = { { type = "item", name = "bob-heat-exchanger-4", amount = 1 } },
    },
  })

  if
    settings.startup["bobmods-plates-convert-recipes"]
    and settings.startup["bobmods-plates-convert-recipes"].value == true
  then
    data:extend({
      {
        type = "recipe",
        name = "bob-heat-exchanger-2-from-boiler-3",
        icons = {
          { icon = "__base__/graphics/icons/heat-boiler.png", scale = 0.5 },
          { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        },
        localised_name = { "entity-name.bob-heat-exchanger-2" },
        subgroup = "bob-energy-heat-exchanger-convert",
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-boiler-3", amount = 1 },
          { type = "item", name = "bob-heat-pipe-2", amount = 4 },
        },
        results = { { type = "item", name = "bob-heat-exchanger-2", amount = 1 } },
        allow_as_intermediate = false,
      },
      {
        type = "recipe",
        name = "bob-heat-exchanger-3-from-boiler-4",
        icons = {
          { icon = "__base__/graphics/icons/heat-boiler.png", scale = 0.5 },
          { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        },
        localised_name = { "entity-name.bob-heat-exchanger-3" },
        subgroup = "bob-energy-heat-exchanger-convert",
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-boiler-4", amount = 1 },
          { type = "item", name = "bob-heat-pipe-3", amount = 4 },
        },
        results = { { type = "item", name = "bob-heat-exchanger-3", amount = 1 } },
        allow_as_intermediate = false,
      },

      {
        type = "recipe",
        name = "bob-heat-exchanger-4-from-boiler-5",
        icons = {
          { icon = "__base__/graphics/icons/heat-boiler.png", scale = 0.5 },
          { icon = "__bobplates__/graphics/icons/b.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        },
        localised_name = { "entity-name.bob-heat-exchanger-4" },
        subgroup = "bob-energy-heat-exchanger-convert",
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-boiler-5", amount = 1 },
          { type = "item", name = "bob-heat-pipe-4", amount = 4 },
        },
        results = { { type = "item", name = "bob-heat-exchanger-4", amount = 1 } },
        allow_as_intermediate = false,
      },
    })

    data:extend({
      {
        type = "recipe",
        name = "bob-boiler-2-from-heat-exchanger",
        icons = {
          { icon = "__base__/graphics/icons/boiler.png", scale = 0.5 },
          { icon = "__bobplates__/graphics/icons/h.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        },
        localised_name = { "entity-name.bob-boiler-2" },
        subgroup = "bob-energy-boiler-convert",
        energy_required = 3,
        enabled = false,
        ingredients = {
          { type = "item", name = "heat-exchanger", amount = 1 },
        },
        results = {
          { type = "item", name = "bob-boiler-2", amount = 1 },
          { type = "item", name = "heat-pipe", amount = 4 },
        },
        main_product = "bob-boiler-2",
        allow_as_intermediate = false,
      },

      {
        type = "recipe",
        name = "bob-boiler-3-from-heat-exchanger-2",
        icons = {
          { icon = "__base__/graphics/icons/boiler.png", scale = 0.5 },
          { icon = "__bobplates__/graphics/icons/h.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        },
        localised_name = { "entity-name.bob-boiler-3" },
        subgroup = "bob-energy-boiler-convert",
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-heat-exchanger-2", amount = 1 },
        },
        results = {
          { type = "item", name = "bob-boiler-3", amount = 1 },
          { type = "item", name = "bob-heat-pipe-2", amount = 4 },
        },
        main_product = "bob-boiler-3",
        allow_as_intermediate = false,
      },

      {
        type = "recipe",
        name = "bob-boiler-4-from-heat-exchanger-3",
        icons = {
          { icon = "__base__/graphics/icons/boiler.png", scale = 0.5 },
          { icon = "__bobplates__/graphics/icons/h.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        },
        localised_name = { "entity-name.bob-boiler-4" },
        subgroup = "bob-energy-boiler-convert",
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-heat-exchanger-3", amount = 1 },
        },
        results = {
          { type = "item", name = "bob-boiler-4", amount = 1 },
          { type = "item", name = "bob-heat-pipe-3", amount = 4 },
        },
        main_product = "bob-boiler-4",
        allow_as_intermediate = false,
      },

      {
        type = "recipe",
        name = "bob-boiler-5-from-heat-exchanger-4",
        icons = {
          { icon = "__base__/graphics/icons/boiler.png", scale = 0.5 },
          { icon = "__bobplates__/graphics/icons/h.png", icon_size = 28, scale = 0.5, shift = { -8, -8 } },
        },
        localised_name = { "entity-name.bob-boiler-5" },
        subgroup = "bob-energy-boiler-convert",
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-heat-exchanger-4", amount = 1 },
        },
        results = {
          { type = "item", name = "bob-boiler-5", amount = 1 },
          { type = "item", name = "bob-heat-pipe-4", amount = 4 },
        },
        main_product = "bob-boiler-5",
        allow_as_intermediate = false,
      },
    })
  end
end
