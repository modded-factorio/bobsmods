if settings.startup["bobmods-logistics-trains"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "bob-locomotive-2",
      enabled = false,
      ingredients = {
        { "locomotive", 1 },
        { "advanced-circuit", 5 },
        { "steel-plate", 10 },
        { "iron-gear-wheel", 20 },
      },
      results = {{ type = "item", name = "bob-locomotive-2", amount = 1 }},
    },

    {
      type = "recipe",
      name = "bob-locomotive-3",
      enabled = false,
      ingredients = {
        { "bob-locomotive-2", 1 },
        { "processing-unit", 5 },
        { "steel-plate", 10 },
        { "iron-gear-wheel", 20 },
      },
      results = {{ type = "item", name = "bob-locomotive-3", amount = 1 }},
    },

    {
      type = "recipe",
      name = "bob-armoured-locomotive",
      enabled = false,
      ingredients = {
        { "locomotive", 1 },
        { "steel-plate", 25 },
      },
      results = {{ type = "item", name = "bob-armoured-locomotive", amount = 1 }},
    },

    {
      type = "recipe",
      name = "bob-armoured-locomotive-2",
      enabled = false,
      ingredients = {
        { "bob-armoured-locomotive", 1 },
        { "steel-plate", 25 },
        { "processing-unit", 5 },
        { "iron-gear-wheel", 20 },
      },
      results = {{ type = "item", name = "bob-armoured-locomotive-2", amount = 1 }},
    },

    {
      type = "recipe",
      name = "bob-cargo-wagon-2",
      enabled = false,
      ingredients = {
        { "cargo-wagon", 1 },
        { "steel-plate", 20 },
        { "iron-gear-wheel", 12 },
      },
      results = {{ type = "item", name = "bob-cargo-wagon-2", amount = 1 }},
    },

    {
      type = "recipe",
      name = "bob-cargo-wagon-3",
      enabled = false,
      ingredients = {
        { "bob-cargo-wagon-2", 1 },
        { "steel-plate", 20 },
        { "iron-gear-wheel", 12 },
      },
      results = {{ type = "item", name = "bob-cargo-wagon-3", amount = 1 }},
    },

    {
      type = "recipe",
      name = "bob-armoured-cargo-wagon",
      enabled = false,
      ingredients = {
        { "cargo-wagon", 1 },
        { "steel-plate", 25 },
      },
      results = {{ type = "item", name = "bob-armoured-cargo-wagon", amount = 1 }},
    },

    {
      type = "recipe",
      name = "bob-armoured-cargo-wagon-2",
      enabled = false,
      ingredients = {
        { "bob-armoured-cargo-wagon", 1 },
        { "steel-plate", 25 },
        { "iron-gear-wheel", 12 },
      },
      results = {{ type = "item", name = "bob-armoured-cargo-wagon-2", amount = 1 }},
    },

    {
      type = "recipe",
      name = "bob-fluid-wagon-2",
      enabled = false,
      energy_required = 1.5,
      ingredients = {
        { "fluid-wagon", 1 },
        { "iron-gear-wheel", 12 },
        { "steel-plate", 16 },
        { "storage-tank-2", 1 },
      },
      results = {{ type = "item", name = "bob-fluid-wagon-2", amount = 1 }},
    },

    {
      type = "recipe",
      name = "bob-fluid-wagon-3",
      enabled = false,
      energy_required = 1.5,
      ingredients = {
        { "bob-fluid-wagon-2", 1 },
        { "iron-gear-wheel", 12 },
        { "steel-plate", 16 },
        { "storage-tank-3", 1 },
      },
      results = {{ type = "item", name = "bob-fluid-wagon-3", amount = 1 }},
    },

    {
      type = "recipe",
      name = "bob-armoured-fluid-wagon",
      enabled = false,
      energy_required = 1.5,
      ingredients = {
        { "fluid-wagon", 1 },
        { "steel-plate", 25 },
      },
      results = {{ type = "item", name = "bob-armoured-fluid-wagon", amount = 1 }},
    },

    {
      type = "recipe",
      name = "bob-armoured-fluid-wagon-2",
      enabled = false,
      energy_required = 1.5,
      ingredients = {
        { "bob-armoured-fluid-wagon", 1 },
        { "iron-gear-wheel", 12 },
        { "steel-plate", 25 },
        { "storage-tank-3", 1 },
      },
      results = {{ type = "item", name = "bob-armoured-fluid-wagon-2", amount = 1 }},
    },
  })
end
