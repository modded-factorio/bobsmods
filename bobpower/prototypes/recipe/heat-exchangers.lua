if settings.startup["bobmods-power-steam"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "heat-exchanger",
      energy_required = 3,
      enabled = false,
      ingredients = {
        { "boiler-2", 1 },
        { "heat-pipe", 4 },
      },
      results = { { type = "item", name = "heat-exchanger", amount = 1 } },
    },

    {
      type = "recipe",
      name = "heat-exchanger-2",
      enabled = false,
      ingredients = {
        { "heat-exchanger", 1 },
        { "steel-plate", 10 },
        { "heat-pipe-2", 4 },
      },
      results = { { type = "item", name = "heat-exchanger-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "heat-exchanger-3",
      enabled = false,
      ingredients = {
        { "heat-exchanger-2", 1 },
        { "steel-plate", 10 },
        { "heat-pipe-3", 4 },
      },
      results = { { type = "item", name = "heat-exchanger-3", amount = 1 } },
    },
    {
      type = "recipe",
      name = "heat-exchanger-4",
      enabled = false,
      ingredients = {
        { "heat-exchanger-3", 1 },
        { "steel-plate", 10 },
        { "heat-pipe-4", 4 },
      },
      results = { { type = "item", name = "heat-exchanger-4", amount = 1 } },
    },
  })

  if
    settings.startup["bobmods-plates-convert-recipes"]
    and settings.startup["bobmods-plates-convert-recipes"].value == true
  then
    data:extend({
      {
        type = "recipe",
        name = "heat-exchanger-2-from-boiler-3",
        subgroup = "bob-energy-heat-exchanger-convert",
        enabled = false,
        ingredients = {
          { "boiler-3", 1 },
          { "heat-pipe-2", 4 },
        },
        results = { { type = "item", name = "heat-exchanger-2", amount = 1 } },
        allow_as_intermediate = false,
      },
      {
        type = "recipe",
        name = "heat-exchanger-3-from-boiler-4",
        subgroup = "bob-energy-heat-exchanger-convert",
        enabled = false,
        ingredients = {
          { "boiler-4", 1 },
          { "heat-pipe-3", 4 },
        },
        results = { { type = "item", name = "heat-exchanger-3", amount = 1 } },
        allow_as_intermediate = false,
      },

      {
        type = "recipe",
        name = "heat-exchanger-4-from-boiler-5",
        subgroup = "bob-energy-heat-exchanger-convert",
        enabled = false,
        ingredients = {
          { "boiler-5", 1 },
          { "heat-pipe-4", 4 },
        },
        results = { { type = "item", name = "heat-exchanger-4", amount = 1 } },
        allow_as_intermediate = false,
      },
    })

    data:extend({
      {
        type = "recipe",
        name = "boiler-2-from-heat-exchanger",
        subgroup = "bob-energy-boiler-convert",
        energy_required = 3,
        enabled = false,
        ingredients = {
          { "heat-exchanger", 1 },
        },
        results = {
          { "boiler-2", 1 },
          { "heat-pipe", 4 },
        },
        main_product = "boiler-2",
        allow_as_intermediate = false,
      },

      {
        type = "recipe",
        name = "boiler-3-from-heat-exchanger-2",
        subgroup = "bob-energy-boiler-convert",
        enabled = false,
        ingredients = {
          { "heat-exchanger-2", 1 },
        },
        results = {
          { "boiler-3", 1 },
          { "heat-pipe-2", 4 },
        },
        main_product = "boiler-3",
        allow_as_intermediate = false,
      },

      {
        type = "recipe",
        name = "boiler-4-from-heat-exchanger-3",
        subgroup = "bob-energy-boiler-convert",
        enabled = false,
        ingredients = {
          { "heat-exchanger-3", 1 },
        },
        results = {
          { "boiler-4", 1 },
          { "heat-pipe-3", 4 },
        },
        main_product = "boiler-4",
        allow_as_intermediate = false,
      },

      {
        type = "recipe",
        name = "boiler-5-from-heat-exchanger-4",
        subgroup = "bob-energy-boiler-convert",
        enabled = false,
        ingredients = {
          { "heat-exchanger-4", 1 },
        },
        results = {
          { "boiler-5", 1 },
          { "heat-pipe-4", 4 },
        },
        main_product = "boiler-5",
        allow_as_intermediate = false,
      },
    })
  end
end
