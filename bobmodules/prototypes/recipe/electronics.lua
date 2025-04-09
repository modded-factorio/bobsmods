data:extend({
  {
    type = "recipe",
    name = "bob-module-case",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "plastic-bar", amount = 2 },
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = { { type = "item", name = "bob-module-case", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-module-contact",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "item", name = "copper-cable", amount = 5 },
    },
    results = { { type = "item", name = "bob-module-contact", amount = 5 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-module-circuit-board",
    category = "crafting-with-fluid",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 3 },
      { type = "item", name = "plastic-bar", amount = 3 },
    },
    results = { { type = "item", name = "bob-module-circuit-board", amount = 1 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-module-processor-board",
    category = "crafting-with-fluid",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 4 },
      { type = "item", name = "plastic-bar", amount = 4 },
      { type = "item", name = "bob-module-contact", amount = 8 },
    },
    results = { { type = "item", name = "bob-module-processor-board", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-module-processor-board-2",
    category = "crafting-with-fluid",
    energy_required = 15,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 4 },
      { type = "item", name = "plastic-bar", amount = 4 },
      { type = "item", name = "bob-module-contact", amount = 12 },
    },
    results = { { type = "item", name = "bob-module-processor-board-2", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-module-processor-board-3",
    category = "crafting-with-fluid",
    energy_required = 20,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 8 },
      { type = "item", name = "plastic-bar", amount = 4 },
      { type = "item", name = "bob-module-contact", amount = 16 },
    },
    results = { { type = "item", name = "bob-module-processor-board-3", amount = 1 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-speed-processor",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-module-processor-board", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "item", name = "advanced-circuit", amount = 2 },
    },
    results = { { type = "item", name = "bob-speed-processor", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-speed-processor-2",
    energy_required = 7.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-module-processor-board-2", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 2 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = { { type = "item", name = "bob-speed-processor-2", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-speed-processor-3",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-module-processor-board-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 4 },
    },
    results = { { type = "item", name = "bob-speed-processor-3", amount = 1 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-efficiency-processor",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-module-processor-board", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "item", name = "advanced-circuit", amount = 2 },
    },
    results = { { type = "item", name = "bob-efficiency-processor", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-efficiency-processor-2",
    energy_required = 7.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-module-processor-board-2", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 2 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = { { type = "item", name = "bob-efficiency-processor-2", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-efficiency-processor-3",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-module-processor-board-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 4 },
    },
    results = { { type = "item", name = "bob-efficiency-processor-3", amount = 1 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-productivity-processor",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-module-processor-board", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "item", name = "advanced-circuit", amount = 2 },
    },
    results = { { type = "item", name = "bob-productivity-processor", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-productivity-processor-2",
    energy_required = 7.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-module-processor-board-2", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 2 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = { { type = "item", name = "bob-productivity-processor-2", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-productivity-processor-3",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-module-processor-board-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 4 },
    },
    results = { { type = "item", name = "bob-productivity-processor-3", amount = 1 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-pollution-clean-processor",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-module-processor-board", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "item", name = "advanced-circuit", amount = 2 },
    },
    results = { { type = "item", name = "bob-pollution-clean-processor", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-pollution-clean-processor-2",
    energy_required = 7.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-module-processor-board-2", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 2 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = { { type = "item", name = "bob-pollution-clean-processor-2", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-pollution-clean-processor-3",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-module-processor-board-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 4 },
    },
    results = { { type = "item", name = "bob-pollution-clean-processor-3", amount = 1 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-pollution-create-processor",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-module-processor-board", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "item", name = "advanced-circuit", amount = 2 },
    },
    results = { { type = "item", name = "bob-pollution-create-processor", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-pollution-create-processor-2",
    energy_required = 7.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-module-processor-board-2", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 2 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = { { type = "item", name = "bob-pollution-create-processor-2", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-pollution-create-processor-3",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-module-processor-board-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 4 },
    },
    results = { { type = "item", name = "bob-pollution-create-processor-3", amount = 1 } },
    allow_productivity = true,
  },
})

if mods["quality"] then
  data:extend({
    {
      type = "recipe",
      name = "bob-quality-processor",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-module-processor-board", amount = 1 },
        { type = "item", name = "electronic-circuit", amount = 2 },
        { type = "item", name = "advanced-circuit", amount = 2 },
      },
      results = { { type = "item", name = "bob-quality-processor", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-quality-processor-2",
      energy_required = 7.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-module-processor-board-2", amount = 1 },
        { type = "item", name = "advanced-circuit", amount = 2 },
        { type = "item", name = "processing-unit", amount = 2 },
      },
      results = { { type = "item", name = "bob-quality-processor-2", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-quality-processor-3",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-module-processor-board-3", amount = 1 },
        { type = "item", name = "processing-unit", amount = 4 },
      },
      results = { { type = "item", name = "bob-quality-processor-3", amount = 1 } },
      allow_productivity = true,
    },
  })
end
