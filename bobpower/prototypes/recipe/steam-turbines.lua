if settings.startup["bobmods-power-steam"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "steam-turbine",
      enabled = false,
      energy_required = 3,
      ingredients = {
        { type = "item", name = "bob-steam-engine-3", amount = 1 },
        { type = "item", name = "electronic-circuit", amount = 5 },
        { type = "item", name = "copper-plate", amount = 25 },
        { type = "item", name = "iron-gear-wheel", amount = 20 },
      },
      results = { { type = "item", name = "steam-turbine", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-steam-turbine-2",
      enabled = false,
      energy_required = 3,
      ingredients = {
        { type = "item", name = "steam-turbine", amount = 1 },
        { type = "item", name = "advanced-circuit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 25 },
        { type = "item", name = "iron-gear-wheel", amount = 25 },
      },
      results = { { type = "item", name = "bob-steam-turbine-2", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-steam-turbine-3",
      enabled = false,
      energy_required = 3,
      ingredients = {
        { type = "item", name = "bob-steam-turbine-2", amount = 1 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "item", name = "steel-plate", amount = 25 },
        { type = "item", name = "iron-gear-wheel", amount = 25 },
      },
      results = { { type = "item", name = "bob-steam-turbine-3", amount = 1 } },
    },
  })
end
