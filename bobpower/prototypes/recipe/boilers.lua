if settings.startup["bobmods-power-steam"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "bob-boiler-2",
      enabled = false,
      ingredients = {
        { type = "item", name = "boiler", amount = 1 },
        { type = "item", name = "steel-plate", amount = 5 },
      },
      results = { { type = "item", name = "bob-boiler-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-boiler-3",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-boiler-2", amount = 1 },
        { type = "item", name = "steel-plate", amount = 5 },
      },
      results = { { type = "item", name = "bob-boiler-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-boiler-4",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-boiler-3", amount = 1 },
        { type = "item", name = "steel-plate", amount = 5 },
      },
      results = { { type = "item", name = "bob-boiler-4", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-boiler-5",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-boiler-4", amount = 1 },
        { type = "item", name = "steel-plate", amount = 5 },
      },
      results = { { type = "item", name = "bob-boiler-5", amount = 1 } },
    },
  })
end
