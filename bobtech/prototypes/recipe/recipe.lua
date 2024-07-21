data:extend({
  {
    type = "recipe",
    name = "advanced-logistic-science-pack",
    enabled = false,
    energy_required = 21,
    ingredients = {
      { "filter-inserter", 1 },
      { "express-transport-belt", 1 },
      { "flying-robot-frame", 1 },
      { "steel-chest", 2 },
    },
    results = {{ type = "item", name = "advanced-logistic-science-pack", amount = 3 }},
  },

  {
    type = "recipe",
    name = "lab-2",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { "lab", 1 },
      { "advanced-circuit", 10 },
      { "filter-inserter", 4 },
      { "express-transport-belt", 4 },
    },
    results = {{ type = "item", name = "lab-2", amount = 1 }},
  },
})

if settings.startup["bobmods-burnerphase"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "steam-science-pack",
      energy_required = 2.5,
      ingredients = {
        { "coal", 1 },
        { "stone", 1 },
      },
      results = {{ type = "item", name = "steam-science-pack", amount = 1 }},
    },

    {
      type = "recipe",
      name = "burner-lab",
      energy_required = 1,
      ingredients = {
        { "wood", 10 },
        { "iron-plate", 2 },
        { "stone", 4 },
      },
      results = {{ type = "item", name = "burner-lab", amount = 1 }},
    },
  })
end
