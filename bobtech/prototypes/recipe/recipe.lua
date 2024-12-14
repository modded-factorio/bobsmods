data:extend({
  {
    type = "recipe",
    name = "advanced-logistic-science-pack",
    enabled = false,
    energy_required = 21,
    ingredients = {
      { type = "item", name = "fast-inserter", amount = 4 },
      { type = "item", name = "express-transport-belt", amount = 1 },
      { type = "item", name = "flying-robot-frame", amount = 1 },
      { type = "item", name = "steel-chest", amount = 2 },
    },
    results = { { type = "item", name = "advanced-logistic-science-pack", amount = 3 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "lab-2",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "lab", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 10 },
      { type = "item", name = "bulk-inserter", amount = 4 },
      { type = "item", name = "express-transport-belt", amount = 4 },
    },
    results = { { type = "item", name = "lab-2", amount = 1 } },
  },
})

if settings.startup["bobmods-burnerphase"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "steam-science-pack",
      energy_required = 2.5,
      ingredients = {
        { type = "item", name = "coal", amount = 1 },
        { type = "item", name = "stone", amount = 1 },
      },
      results = { { type = "item", name = "steam-science-pack", amount = 1 } },
    },

    {
      type = "recipe",
      name = "burner-lab",
      energy_required = 1,
      ingredients = {
        { type = "item", name = "wood", amount = 10 },
        { type = "item", name = "iron-plate", amount = 2 },
        { type = "item", name = "stone", amount = 4 },
      },
      results = { { type = "item", name = "burner-lab", amount = 1 } },
    },
  })
end
