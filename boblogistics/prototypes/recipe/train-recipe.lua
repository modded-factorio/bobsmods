if settings.startup["bobmods-logistics-trains"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "bob-locomotive-2",
      enabled = false,
      ingredients = {
        { type = "item", name = "locomotive", amount = 1 },
        { type = "item", name = "advanced-circuit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 20 },
      },
      results = { { type = "item", name = "bob-locomotive-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-locomotive-3",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-locomotive-2", amount = 1 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 20 },
      },
      results = { { type = "item", name = "bob-locomotive-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-armoured-locomotive",
      enabled = false,
      ingredients = {
        { type = "item", name = "locomotive", amount = 1 },
        { type = "item", name = "steel-plate", amount = 25 },
      },
      results = { { type = "item", name = "bob-armoured-locomotive", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-armoured-locomotive-2",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-armoured-locomotive", amount = 1 },
        { type = "item", name = "steel-plate", amount = 25 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "iron-gear-wheel", amount = 20 },
      },
      results = { { type = "item", name = "bob-armoured-locomotive-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-cargo-wagon-2",
      enabled = false,
      ingredients = {
        { type = "item", name = "cargo-wagon", amount = 1 },
        { type = "item", name = "steel-plate", amount = 20 },
        { type = "item", name = "iron-gear-wheel", amount = 12 },
      },
      results = { { type = "item", name = "bob-cargo-wagon-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-cargo-wagon-3",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-cargo-wagon-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 20 },
        { type = "item", name = "iron-gear-wheel", amount = 12 },
      },
      results = { { type = "item", name = "bob-cargo-wagon-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-armoured-cargo-wagon",
      enabled = false,
      ingredients = {
        { type = "item", name = "cargo-wagon", amount = 1 },
        { type = "item", name = "steel-plate", amount = 25 },
      },
      results = { { type = "item", name = "bob-armoured-cargo-wagon", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-armoured-cargo-wagon-2",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-armoured-cargo-wagon", amount = 1 },
        { type = "item", name = "steel-plate", amount = 25 },
        { type = "item", name = "iron-gear-wheel", amount = 12 },
      },
      results = { { type = "item", name = "bob-armoured-cargo-wagon-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-fluid-wagon-2",
      enabled = false,
      energy_required = 1.5,
      ingredients = {
        { type = "item", name = "fluid-wagon", amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 12 },
        { type = "item", name = "steel-plate", amount = 16 },
        { type = "item", name = "bob-storage-tank-2", amount = 1 },
      },
      results = { { type = "item", name = "bob-fluid-wagon-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-fluid-wagon-3",
      enabled = false,
      energy_required = 1.5,
      ingredients = {
        { type = "item", name = "bob-fluid-wagon-2", amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 12 },
        { type = "item", name = "steel-plate", amount = 16 },
        { type = "item", name = "bob-storage-tank-3", amount = 1 },
      },
      results = { { type = "item", name = "bob-fluid-wagon-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-armoured-fluid-wagon",
      enabled = false,
      energy_required = 1.5,
      ingredients = {
        { type = "item", name = "fluid-wagon", amount = 1 },
        { type = "item", name = "steel-plate", amount = 25 },
      },
      results = { { type = "item", name = "bob-armoured-fluid-wagon", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-armoured-fluid-wagon-2",
      enabled = false,
      energy_required = 1.5,
      ingredients = {
        { type = "item", name = "bob-armoured-fluid-wagon", amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 12 },
        { type = "item", name = "steel-plate", amount = 25 },
        { type = "item", name = "bob-storage-tank-3", amount = 1 },
      },
      results = { { type = "item", name = "bob-armoured-fluid-wagon-2", amount = 1 } },
    },
  })
end
