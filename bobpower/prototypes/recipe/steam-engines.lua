if settings.startup["bobmods-power-steam"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "bob-steam-engine-2",
      enabled = false,
      ingredients = {
        { type = "item", name = "steam-engine", amount = 1 },
        { type = "item", name = "steel-plate", amount = 5 },
        { type = "item", name = "pipe", amount = 5 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
      },
      results = { { type = "item", name = "bob-steam-engine-2", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-steam-engine-3",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-steam-engine-2", amount = 1 },
        { type = "item", name = "pipe", amount = 5 },
        { type = "item", name = "steel-plate", amount = 5 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
      },
      results = { { type = "item", name = "bob-steam-engine-3", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-steam-engine-4",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-steam-engine-3", amount = 1 },
        { type = "item", name = "pipe", amount = 5 },
        { type = "item", name = "steel-plate", amount = 5 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
      },
      results = { { type = "item", name = "bob-steam-engine-4", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-steam-engine-5",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-steam-engine-4", amount = 1 },
        { type = "item", name = "pipe", amount = 5 },
        { type = "item", name = "steel-plate", amount = 5 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
      },
      results = { { type = "item", name = "bob-steam-engine-5", amount = 1 } },
    },
  })
end
