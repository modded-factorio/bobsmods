if settings.startup["bobmods-power-poles"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "bob-medium-electric-pole-2",
      enabled = false,
      ingredients = {
        { type = "item", name = "medium-electric-pole", amount = 1 },
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "copper-plate", amount = 2 },
      },
      results = { { type = "item", name = "bob-medium-electric-pole-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-medium-electric-pole-3",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-medium-electric-pole-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "copper-plate", amount = 2 },
      },
      results = { { type = "item", name = "bob-medium-electric-pole-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-medium-electric-pole-4",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-medium-electric-pole-3", amount = 1 },
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "copper-plate", amount = 2 },
      },
      results = { { type = "item", name = "bob-medium-electric-pole-4", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-big-electric-pole-2",
      enabled = false,
      ingredients = {
        { type = "item", name = "big-electric-pole", amount = 1 },
        { type = "item", name = "steel-plate", amount = 5 },
        { type = "item", name = "copper-plate", amount = 5 },
      },
      results = { { type = "item", name = "bob-big-electric-pole-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-big-electric-pole-3",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-big-electric-pole-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 5 },
        { type = "item", name = "copper-plate", amount = 5 },
      },
      results = { { type = "item", name = "bob-big-electric-pole-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-big-electric-pole-4",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-big-electric-pole-3", amount = 1 },
        { type = "item", name = "steel-plate", amount = 5 },
        { type = "item", name = "copper-plate", amount = 5 },
      },
      results = { { type = "item", name = "bob-big-electric-pole-4", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-substation-2",
      enabled = false,
      ingredients = {
        { type = "item", name = "substation", amount = 1 },
        { type = "item", name = "advanced-circuit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "copper-plate", amount = 5 },
      },
      results = { { type = "item", name = "bob-substation-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-substation-3",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-substation-2", amount = 1 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "copper-plate", amount = 5 },
      },
      results = { { type = "item", name = "bob-substation-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-substation-4",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-substation-3", amount = 1 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "copper-plate", amount = 5 },
      },
      results = { { type = "item", name = "bob-substation-4", amount = 1 } },
    },
  })
end
