--[[Speed Modules]]
--
data.raw["recipe"]["speed-module"].ingredients = {
  { type = "item", name = "speed-processor", amount = 1 },
  { type = "item", name = "module-case", amount = 1 },
  { type = "item", name = "module-circuit-board", amount = 1 },
  { type = "item", name = "module-contact", amount = 4 },
}
data.raw["recipe"]["speed-module"].energy_required = 10

data.raw["recipe"]["speed-module-2"].ingredients = {
  { type = "item", name = "speed-module", amount = 1 },
  { type = "item", name = "speed-processor", amount = 2 },
  { type = "item", name = "module-contact", amount = 5 },
}
data.raw["recipe"]["speed-module-2"].energy_required = 20

data.raw["recipe"]["speed-module-3"].ingredients = {
  { type = "item", name = "speed-module-2", amount = 1 },
  { type = "item", name = "speed-processor-2", amount = 3 },
  { type = "item", name = "advanced-circuit", amount = 5 },
}
data.raw["recipe"]["speed-module-3"].energy_required = 30

data:extend({
  {
    type = "recipe",
    name = "speed-module-4",
    enabled = false,
    ingredients = {
      { type = "item", name = "speed-module-3", amount = 1 },
      { type = "item", name = "speed-processor-2", amount = 4 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 40,
    results = { { type = "item", name = "speed-module-4", amount = 1 } },
  },

  {
    type = "recipe",
    name = "speed-module-5",
    enabled = false,
    ingredients = {
      { type = "item", name = "speed-module-4", amount = 1 },
      { type = "item", name = "speed-processor-2", amount = 5 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 50,
    results = { { type = "item", name = "speed-module-5", amount = 1 } },
  },

  {
    type = "recipe",
    name = "speed-module-6",
    enabled = false,
    ingredients = {
      { type = "item", name = "speed-module-5", amount = 1 },
      { type = "item", name = "speed-processor-3", amount = 6 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 60,
    results = { { type = "item", name = "speed-module-6", amount = 1 } },
  },

  {
    type = "recipe",
    name = "speed-module-7",
    enabled = false,
    ingredients = {
      { type = "item", name = "speed-module-6", amount = 1 },
      { type = "item", name = "speed-processor-3", amount = 8 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 70,
    results = { { type = "item", name = "speed-module-7", amount = 1 } },
  },

  {
    type = "recipe",
    name = "speed-module-8",
    enabled = false,
    ingredients = {
      { type = "item", name = "speed-module-7", amount = 1 },
      { type = "item", name = "speed-processor-3", amount = 10 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 80,
    results = { { type = "item", name = "speed-module-8", amount = 1 } },
  },
})

--[[Effectivity Modules]]
--
data.raw["recipe"]["effectivity-module"].ingredients = {
  { type = "item", name = "effectivity-processor", amount = 1 },
  { type = "item", name = "module-case", amount = 1 },
  { type = "item", name = "module-circuit-board", amount = 1 },
  { type = "item", name = "module-contact", amount = 4 },
}
data.raw["recipe"]["effectivity-module"].energy_required = 10

data.raw["recipe"]["effectivity-module-2"].ingredients = {
  { type = "item", name = "effectivity-module", amount = 1 },
  { type = "item", name = "effectivity-processor", amount = 2 },
  { type = "item", name = "module-contact", amount = 5 },
}
data.raw["recipe"]["effectivity-module-2"].energy_required = 20

data.raw["recipe"]["effectivity-module-3"].ingredients = {
  { type = "item", name = "effectivity-module-2", amount = 1 },
  { type = "item", name = "effectivity-processor-2", amount = 3 },
  { type = "item", name = "advanced-circuit", amount = 5 },
}
data.raw["recipe"]["effectivity-module-3"].energy_required = 30

data:extend({
  {
    type = "recipe",
    name = "effectivity-module-4",
    enabled = false,
    ingredients = {
      { type = "item", name = "effectivity-module-3", amount = 1 },
      { type = "item", name = "effectivity-processor-2", amount = 4 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 40,
    results = { { type = "item", name = "effectivity-module-4", amount = 1 } },
  },

  {
    type = "recipe",
    name = "effectivity-module-5",
    enabled = false,
    ingredients = {
      { type = "item", name = "effectivity-module-4", amount = 1 },
      { type = "item", name = "effectivity-processor-2", amount = 5 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 50,
    results = { { type = "item", name = "effectivity-module-5", amount = 1 } },
  },

  {
    type = "recipe",
    name = "effectivity-module-6",
    enabled = false,
    ingredients = {
      { type = "item", name = "effectivity-module-5", amount = 1 },
      { type = "item", name = "effectivity-processor-3", amount = 6 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 60,
    results = { { type = "item", name = "effectivity-module-6", amount = 1 } },
  },

  {
    type = "recipe",
    name = "effectivity-module-7",
    enabled = false,
    ingredients = {
      { type = "item", name = "effectivity-module-6", amount = 1 },
      { type = "item", name = "effectivity-processor-3", amount = 8 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 70,
    results = { { type = "item", name = "effectivity-module-7", amount = 1 } },
  },

  {
    type = "recipe",
    name = "effectivity-module-8",
    enabled = false,
    ingredients = {
      { type = "item", name = "effectivity-module-7", amount = 1 },
      { type = "item", name = "effectivity-processor-3", amount = 10 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 80,
    results = { { type = "item", name = "effectivity-module-8", amount = 1 } },
  },
})

--[[Productivity Modules]]
--
data.raw["recipe"]["productivity-module"].ingredients = {
  { type = "item", name = "productivity-processor", amount = 1 },
  { type = "item", name = "module-case", amount = 1 },
  { type = "item", name = "module-circuit-board", amount = 1 },
  { type = "item", name = "module-contact", amount = 4 },
}
data.raw["recipe"]["productivity-module"].energy_required = 10

data.raw["recipe"]["productivity-module-2"].ingredients = {
  { type = "item", name = "productivity-module", amount = 1 },
  { type = "item", name = "productivity-processor", amount = 2 },
  { type = "item", name = "module-contact", amount = 5 },
}
data.raw["recipe"]["productivity-module-2"].energy_required = 20

data.raw["recipe"]["productivity-module-3"].ingredients = {
  { type = "item", name = "productivity-module-2", amount = 1 },
  { type = "item", name = "productivity-processor-2", amount = 3 },
  { type = "item", name = "advanced-circuit", amount = 5 },
}
data.raw["recipe"]["productivity-module-3"].energy_required = 30

data:extend({
  {
    type = "recipe",
    name = "productivity-module-4",
    enabled = false,
    ingredients = {
      { type = "item", name = "productivity-module-3", amount = 1 },
      { type = "item", name = "productivity-processor-2", amount = 4 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 40,
    results = { { type = "item", name = "productivity-module-4", amount = 1 } },
  },

  {
    type = "recipe",
    name = "productivity-module-5",
    enabled = false,
    ingredients = {
      { type = "item", name = "productivity-module-4", amount = 1 },
      { type = "item", name = "productivity-processor-2", amount = 5 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 50,
    results = { { type = "item", name = "productivity-module-5", amount = 1 } },
  },

  {
    type = "recipe",
    name = "productivity-module-6",
    enabled = false,
    ingredients = {
      { type = "item", name = "productivity-module-5", amount = 1 },
      { type = "item", name = "productivity-processor-3", amount = 6 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 60,
    results = { { type = "item", name = "productivity-module-6", amount = 1 } },
  },

  {
    type = "recipe",
    name = "productivity-module-7",
    enabled = false,
    ingredients = {
      { type = "item", name = "productivity-module-6", amount = 1 },
      { type = "item", name = "productivity-processor-3", amount = 8 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 70,
    results = { { type = "item", name = "productivity-module-7", amount = 1 } },
  },

  {
    type = "recipe",
    name = "productivity-module-8",
    enabled = false,
    ingredients = {
      { type = "item", name = "productivity-module-7", amount = 1 },
      { type = "item", name = "productivity-processor-3", amount = 10 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 80,
    results = { { type = "item", name = "productivity-module-8", amount = 1 } },
  },
})

--[[Pollution Cleaning Modules]]
data:extend({
  {
    type = "recipe",
    name = "pollution-clean-module-1",
    enabled = false,
    ingredients = {
      { type = "item", name = "pollution-clean-processor", amount = 1 },
      { type = "item", name = "module-case", amount = 1 },
      { type = "item", name = "module-circuit-board", amount = 1 },
      { type = "item", name = "module-contact", amount = 4 },
    },
    energy_required = 10,
    results = { { type = "item", name = "pollution-clean-module-1", amount = 1 } },
  },

  {
    type = "recipe",
    name = "pollution-clean-module-2",
    enabled = false,
    ingredients = {
      { type = "item", name = "pollution-clean-module-1", amount = 1 },
      { type = "item", name = "pollution-clean-processor", amount = 2 },
      { type = "item", name = "module-contact", amount = 5 },
    },
    energy_required = 20,
    results = { { type = "item", name = "pollution-clean-module-2", amount = 1 } },
  },

  {
    type = "recipe",
    name = "pollution-clean-module-3",
    enabled = false,
    ingredients = {
      { type = "item", name = "pollution-clean-module-2", amount = 1 },
      { type = "item", name = "pollution-clean-processor-2", amount = 3 },
      { type = "item", name = "advanced-circuit", amount = 5 },
    },
    energy_required = 30,
    results = { { type = "item", name = "pollution-clean-module-3", amount = 1 } },
  },

  {
    type = "recipe",
    name = "pollution-clean-module-4",
    enabled = false,
    ingredients = {
      { type = "item", name = "pollution-clean-module-3", amount = 1 },
      { type = "item", name = "pollution-clean-processor-2", amount = 4 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 40,
    results = { { type = "item", name = "pollution-clean-module-4", amount = 1 } },
  },

  {
    type = "recipe",
    name = "pollution-clean-module-5",
    enabled = false,
    ingredients = {
      { type = "item", name = "pollution-clean-module-4", amount = 1 },
      { type = "item", name = "pollution-clean-processor-2", amount = 5 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 50,
    results = { { type = "item", name = "pollution-clean-module-5", amount = 1 } },
  },

  {
    type = "recipe",
    name = "pollution-clean-module-6",
    enabled = false,
    ingredients = {
      { type = "item", name = "pollution-clean-module-5", amount = 1 },
      { type = "item", name = "pollution-clean-processor-3", amount = 6 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 60,
    results = { { type = "item", name = "pollution-clean-module-6", amount = 1 } },
  },

  {
    type = "recipe",
    name = "pollution-clean-module-7",
    enabled = false,
    ingredients = {
      { type = "item", name = "pollution-clean-module-6", amount = 1 },
      { type = "item", name = "pollution-clean-processor-3", amount = 8 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 70,
    results = { { type = "item", name = "pollution-clean-module-7", amount = 1 } },
  },

  {
    type = "recipe",
    name = "pollution-clean-module-8",
    enabled = false,
    ingredients = {
      { type = "item", name = "pollution-clean-module-7", amount = 1 },
      { type = "item", name = "pollution-clean-processor-3", amount = 10 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 80,
    results = { { type = "item", name = "pollution-clean-module-8", amount = 1 } },
  },
})

--[[Pollution Producing Modules]]
--
data:extend({
  {
    type = "recipe",
    name = "pollution-create-module-1",
    enabled = false,
    ingredients = {
      { type = "item", name = "pollution-create-processor", amount = 1 },
      { type = "item", name = "module-case", amount = 1 },
      { type = "item", name = "module-circuit-board", amount = 1 },
      { type = "item", name = "module-contact", amount = 4 },
    },
    energy_required = 10,
    results = { { type = "item", name = "pollution-create-module-1", amount = 1 } },
  },

  {
    type = "recipe",
    name = "pollution-create-module-2",
    enabled = false,
    ingredients = {
      { type = "item", name = "pollution-create-module-1", amount = 1 },
      { type = "item", name = "pollution-create-processor", amount = 2 },
      { type = "item", name = "module-contact", amount = 5 },
    },
    energy_required = 20,
    results = { { type = "item", name = "pollution-create-module-2", amount = 1 } },
  },

  {
    type = "recipe",
    name = "pollution-create-module-3",
    enabled = false,
    ingredients = {
      { type = "item", name = "pollution-create-module-2", amount = 1 },
      { type = "item", name = "pollution-create-processor-2", amount = 3 },
      { type = "item", name = "advanced-circuit", amount = 5 },
    },
    energy_required = 30,
    results = { { type = "item", name = "pollution-create-module-3", amount = 1 } },
  },

  {
    type = "recipe",
    name = "pollution-create-module-4",
    enabled = false,
    ingredients = {
      { type = "item", name = "pollution-create-module-3", amount = 1 },
      { type = "item", name = "pollution-create-processor-2", amount = 4 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 40,
    results = { { type = "item", name = "pollution-create-module-4", amount = 1 } },
  },

  {
    type = "recipe",
    name = "pollution-create-module-5",
    enabled = false,
    ingredients = {
      { type = "item", name = "pollution-create-module-4", amount = 1 },
      { type = "item", name = "pollution-create-processor-2", amount = 5 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 50,
    results = { { type = "item", name = "pollution-create-module-5", amount = 1 } },
  },

  {
    type = "recipe",
    name = "pollution-create-module-6",
    enabled = false,
    ingredients = {
      { type = "item", name = "pollution-create-module-5", amount = 1 },
      { type = "item", name = "pollution-create-processor-3", amount = 6 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 60,
    results = { { type = "item", name = "pollution-create-module-6", amount = 1 } },
  },

  {
    type = "recipe",
    name = "pollution-create-module-7",
    enabled = false,
    ingredients = {
      { type = "item", name = "pollution-create-module-6", amount = 1 },
      { type = "item", name = "pollution-create-processor-3", amount = 8 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 70,
    results = { { type = "item", name = "pollution-create-module-7", amount = 1 } },
  },

  {
    type = "recipe",
    name = "pollution-create-module-8",
    enabled = false,
    ingredients = {
      { type = "item", name = "pollution-create-module-7", amount = 1 },
      { type = "item", name = "pollution-create-processor-3", amount = 10 },
      { type = "item", name = "module-contact", amount = 5 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    energy_required = 80,
    results = { { type = "item", name = "pollution-create-module-8", amount = 1 } },
  },
})
