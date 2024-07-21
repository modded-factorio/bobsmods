if settings.startup["bobmods-power-steam"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "boiler-2",
      enabled = false,
      ingredients = {
        { "boiler", 1 },
        { "steel-plate", 5 },
      },
      results = {{ type = "item", name = "boiler-2", amount = 1 }},
    },

    {
      type = "recipe",
      name = "boiler-3",
      enabled = false,
      ingredients = {
        { "boiler-2", 1 },
        { "steel-plate", 5 },
      },
      results = {{ type = "item", name = "boiler-3", amount = 1 }},
    },

    {
      type = "recipe",
      name = "boiler-4",
      enabled = false,
      ingredients = {
        { "boiler-3", 1 },
        { "steel-plate", 5 },
      },
      results = {{ type = "item", name = "boiler-4", amount = 1 }},
    },

    {
      type = "recipe",
      name = "boiler-5",
      enabled = false,
      ingredients = {
        { "boiler-4", 1 },
        { "steel-plate", 5 },
      },
      results = {{ type = "item", name = "boiler-5", amount = 1 }},
    },
  })
end
