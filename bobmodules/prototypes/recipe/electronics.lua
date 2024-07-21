data:extend({
  {
    type = "recipe",
    name = "module-case",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { "plastic-bar", 2 },
      { "steel-plate", 1 },
    },
    result = "module-case",
  },

  {
    type = "recipe",
    name = "module-contact",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { "copper-plate", 1 },
    },
    result = "module-contact",
    result_count = 5,
  },

  {
    type = "recipe",
    name = "module-circuit-board",
    category = "crafting-with-fluid",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { "copper-plate", 1 },
      { "plastic-bar", 1 },
    },
    result = "module-circuit-board",
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
      { "copper-plate", 1 },
      { "plastic-bar", 1 },
    },
    result = "module-processor-board",
    result_count = 4,
  },

  {
    type = "recipe",
    name = "module-processor-board-2",
    category = "crafting-with-fluid",
    energy_required = 20,
    enabled = false,
    ingredients = {
      { "copper-plate", 1 },
      { "plastic-bar", 1 },
    },
    result = "module-processor-board-2",
    result_count = 4,
  },

  {
    type = "recipe",
    name = "module-processor-board-3",
    category = "crafting-with-fluid",
    energy_required = 30,
    enabled = false,
    ingredients = {
      { "copper-plate", 2 },
      { "plastic-bar", 1 },
    },
    result = "module-processor-board-3",
    result_count = 4,
  },
})

data:extend({
  {
    type = "recipe",
    name = "speed-processor",
    energy_required = 2.5,
    enabled = false,
    ingredients = {
      { "module-processor-board", 1 },
      { "electronic-circuit", 2 },
      { "advanced-circuit", 2 },
    },
    result = "speed-processor",
  },

  {
    type = "recipe",
    name = "speed-processor-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { "module-processor-board-2", 1 },
      { "advanced-circuit", 2 },
      { "processing-unit", 2 },
    },
    result = "speed-processor-2",
  },

  {
    type = "recipe",
    name = "speed-processor-3",
    energy_required = 7.5,
    enabled = false,
    ingredients = {
      { "module-processor-board-3", 1 },
      { "processing-unit", 2 },
    },
    result = "speed-processor-3",
  },
})

data:extend({
  {
    type = "recipe",
    name = "effectivity-processor",
    energy_required = 2.5,
    enabled = false,
    ingredients = {
      { "module-processor-board", 1 },
      { "electronic-circuit", 2 },
      { "advanced-circuit", 2 },
    },
    result = "effectivity-processor",
  },

  {
    type = "recipe",
    name = "effectivity-processor-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { "module-processor-board-2", 1 },
      { "advanced-circuit", 2 },
      { "processing-unit", 2 },
    },
    result = "effectivity-processor-2",
  },

  {
    type = "recipe",
    name = "effectivity-processor-3",
    energy_required = 7.5,
    enabled = false,
    ingredients = {
      { "module-processor-board-3", 1 },
      { "processing-unit", 2 },
    },
    result = "effectivity-processor-3",
  },
})

data:extend({
  {
    type = "recipe",
    name = "productivity-processor",
    energy_required = 2.5,
    enabled = false,
    ingredients = {
      { "module-processor-board", 1 },
      { "electronic-circuit", 2 },
      { "advanced-circuit", 2 },
    },
    result = "productivity-processor",
  },

  {
    type = "recipe",
    name = "productivity-processor-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { "module-processor-board-2", 1 },
      { "advanced-circuit", 2 },
      { "processing-unit", 2 },
    },
    result = "productivity-processor-2",
  },

  {
    type = "recipe",
    name = "productivity-processor-3",
    energy_required = 7.5,
    enabled = false,
    ingredients = {
      { "module-processor-board-3", 1 },
      { "processing-unit", 2 },
    },
    result = "productivity-processor-3",
  },
})

data:extend({
  {
    type = "recipe",
    name = "pollution-clean-processor",
    energy_required = 2.5,
    enabled = false,
    ingredients = {
      { "module-processor-board", 1 },
      { "electronic-circuit", 2 },
      { "advanced-circuit", 2 },
    },
    result = "pollution-clean-processor",
  },

  {
    type = "recipe",
    name = "pollution-clean-processor-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { "module-processor-board-2", 1 },
      { "advanced-circuit", 2 },
      { "processing-unit", 2 },
    },
    result = "pollution-clean-processor-2",
  },

  {
    type = "recipe",
    name = "pollution-clean-processor-3",
    energy_required = 7.5,
    enabled = false,
    ingredients = {
      { "module-processor-board-3", 1 },
      { "processing-unit", 2 },
    },
    result = "pollution-clean-processor-3",
  },
})

data:extend({
  {
    type = "recipe",
    name = "pollution-create-processor",
    energy_required = 2.5,
    enabled = false,
    ingredients = {
      { "module-processor-board", 1 },
      { "electronic-circuit", 2 },
      { "advanced-circuit", 2 },
    },
    result = "pollution-create-processor",
  },

  {
    type = "recipe",
    name = "pollution-create-processor-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { "module-processor-board-2", 1 },
      { "advanced-circuit", 2 },
      { "processing-unit", 2 },
    },
    result = "pollution-create-processor-2",
  },

  {
    type = "recipe",
    name = "pollution-create-processor-3",
    energy_required = 7.5,
    enabled = false,
    ingredients = {
      { "module-processor-board-3", 1 },
      { "processing-unit", 2 },
    },
    result = "pollution-create-processor-3",
  },
})
