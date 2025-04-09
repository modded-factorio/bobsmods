data:extend({
  {
    type = "recipe",
    name = "bob-advanced-logistic-science-pack",
    enabled = false,
    energy_required = 21,
    ingredients = {
      { type = "item", name = "fast-inserter", amount = 4 },
      { type = "item", name = "express-transport-belt", amount = 2 },
      { type = "item", name = "flying-robot-frame", amount = 1 },
      { type = "item", name = "steel-chest", amount = 2 },
    },
    results = { { type = "item", name = "bob-advanced-logistic-science-pack", amount = 3 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-lab-2",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "lab", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 10 },
      { type = "item", name = "bulk-inserter", amount = 4 },
      { type = "item", name = "express-transport-belt", amount = 4 },
    },
    results = { { type = "item", name = "bob-lab-2", amount = 1 } },
  },
})

if settings.startup["bobmods-burnerphase"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "bob-burner-lab",
      energy_required = 1,
      ingredients = {
        { type = "item", name = "wood", amount = 10 },
        { type = "item", name = "iron-plate", amount = 2 },
        { type = "item", name = "stone", amount = 4 },
      },
      results = { { type = "item", name = "bob-burner-lab", amount = 1 } },
    },
  })
  if not data.raw.recipe["bob-burner-generator"] then
    data:extend({
      {
        type = "recipe",
        name = "bob-burner-generator",
        enabled = false,
        ingredients = {
          { type = "item", name = "stone-furnace", amount = 1 },
          { type = "item", name = "iron-plate", amount = 8 },
          { type = "item", name = "iron-gear-wheel", amount = 5 },
        },
        results = { { type = "item", name = "bob-burner-generator", amount = 1 } },
      },
    })
  end
end
