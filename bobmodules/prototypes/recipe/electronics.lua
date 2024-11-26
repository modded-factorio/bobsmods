data:extend({
  {
    type = "recipe",
    name = "module-case",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "plastic-bar", amount = 2 },
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = { { type = "item", name = "module-case", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "module-contact",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
    },
    results = { { type = "item", name = "module-contact", amount = 5 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "module-circuit-board",
    category = "crafting-with-fluid",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "module-circuit-board", amount = 1 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "recipe",
    name = "module-processor-board",
    category = "crafting-with-fluid",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "module-processor-board", amount = 4 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "module-processor-board-2",
    category = "crafting-with-fluid",
    energy_required = 20,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "module-processor-board-2", amount = 4 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "module-processor-board-3",
    category = "crafting-with-fluid",
    energy_required = 30,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 2 },
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "module-processor-board-3", amount = 4 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "recipe",
    name = "speed-processor",
    energy_required = 2.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "module-processor-board", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "item", name = "advanced-circuit", amount = 2 },
    },
    results = { { type = "item", name = "speed-processor", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "speed-processor-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "module-processor-board-2", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 2 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = { { type = "item", name = "speed-processor-2", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "speed-processor-3",
    energy_required = 7.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "module-processor-board-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = { { type = "item", name = "speed-processor-3", amount = 1 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "recipe",
    name = "efficiency-processor",
    energy_required = 2.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "module-processor-board", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "item", name = "advanced-circuit", amount = 2 },
    },
    results = { { type = "item", name = "efficiency-processor", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "efficiency-processor-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "module-processor-board-2", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 2 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = { { type = "item", name = "efficiency-processor-2", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "efficiency-processor-3",
    energy_required = 7.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "module-processor-board-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = { { type = "item", name = "efficiency-processor-3", amount = 1 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "recipe",
    name = "productivity-processor",
    energy_required = 2.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "module-processor-board", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "item", name = "advanced-circuit", amount = 2 },
    },
    results = { { type = "item", name = "productivity-processor", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "productivity-processor-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "module-processor-board-2", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 2 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = { { type = "item", name = "productivity-processor-2", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "productivity-processor-3",
    energy_required = 7.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "module-processor-board-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = { { type = "item", name = "productivity-processor-3", amount = 1 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "recipe",
    name = "pollution-clean-processor",
    energy_required = 2.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "module-processor-board", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "item", name = "advanced-circuit", amount = 2 },
    },
    results = { { type = "item", name = "pollution-clean-processor", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "pollution-clean-processor-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "module-processor-board-2", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 2 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = { { type = "item", name = "pollution-clean-processor-2", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "pollution-clean-processor-3",
    energy_required = 7.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "module-processor-board-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = { { type = "item", name = "pollution-clean-processor-3", amount = 1 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "recipe",
    name = "pollution-create-processor",
    energy_required = 2.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "module-processor-board", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "item", name = "advanced-circuit", amount = 2 },
    },
    results = { { type = "item", name = "pollution-create-processor", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "pollution-create-processor-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "module-processor-board-2", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 2 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = { { type = "item", name = "pollution-create-processor-2", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "pollution-create-processor-3",
    energy_required = 7.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "module-processor-board-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = { { type = "item", name = "pollution-create-processor-3", amount = 1 } },
    allow_productivity = true,
  },
})
