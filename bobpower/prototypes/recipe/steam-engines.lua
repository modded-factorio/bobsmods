if settings.startup["bobmods-power-steam"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "steam-engine-2",
      enabled = false,
      ingredients = {
        { "steam-engine", 1 },
        { "steel-plate", 5 },
        { "pipe", 5 },
        { "iron-gear-wheel", 5 },
      },
      results = { { type = "item", name = "steam-engine-2", amount = 1 } },
    },
    {
      type = "recipe",
      name = "steam-engine-3",
      enabled = false,
      ingredients = {
        { "steam-engine-2", 1 },
        { "pipe", 5 },
        { "steel-plate", 5 },
        { "iron-gear-wheel", 5 },
      },
      results = { { type = "item", name = "steam-engine-3", amount = 1 } },
    },
    {
      type = "recipe",
      name = "steam-engine-4",
      enabled = false,
      ingredients = {
        { "steam-engine-3", 1 },
        { "pipe", 5 },
        { "steel-plate", 5 },
        { "iron-gear-wheel", 5 },
      },
      results = { { type = "item", name = "steam-engine-4", amount = 1 } },
    },
    {
      type = "recipe",
      name = "steam-engine-5",
      enabled = false,
      ingredients = {
        { "steam-engine-4", 1 },
        { "pipe", 5 },
        { "steel-plate", 5 },
        { "iron-gear-wheel", 5 },
      },
      results = { { type = "item", name = "steam-engine-5", amount = 1 } },
    },
  })
end
