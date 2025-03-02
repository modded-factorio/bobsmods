local electronics_amount = 4
if mods["bobelectronics"] then
  electronics_amount = 10
end

--[[Speed Modules]]

data.raw["recipe"]["speed-module"].ingredients = {
  { type = "item", name = "electronic-circuit", amount = electronics_amount },
  { type = "item", name = "bob-module-case", amount = 1 },
  { type = "item", name = "bob-module-circuit-board", amount = 1 },
  { type = "item", name = "bob-module-contact", amount = 5 },
}
data.raw["recipe"]["speed-module"].energy_required = 10

data.raw["recipe"]["speed-module-2"].ingredients = {
  { type = "item", name = "speed-module", amount = 1 },
  { type = "item", name = "bob-speed-processor", amount = 3 },
  { type = "item", name = "advanced-circuit", amount = electronics_amount },
}
data.raw["recipe"]["speed-module-2"].energy_required = 20

data.raw["recipe"]["speed-module-3"].ingredients = {
  { type = "item", name = "speed-module-2", amount = 1 },
  { type = "item", name = "bob-speed-processor-2", amount = 4 },
  { type = "item", name = "processing-unit", amount = electronics_amount },
}
data.raw["recipe"]["speed-module-3"].energy_required = 30

data:extend({
  {
    type = "recipe",
    name = "bob-speed-module-4",
    enabled = false,
    ingredients = {
      { type = "item", name = "speed-module-3", amount = 1 },
      { type = "item", name = "bob-speed-processor-3", amount = 5 },
      { type = "item", name = "processing-unit", amount = electronics_amount * 2 },
    },
    energy_required = 40,
    results = { { type = "item", name = "bob-speed-module-4", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-speed-module-5",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-speed-module-4", amount = 1 },
      { type = "item", name = "bob-speed-processor-3", amount = 6 },
      { type = "item", name = "electronic-circuit", amount = electronics_amount },
      { type = "item", name = "advanced-circuit", amount = electronics_amount },
      { type = "item", name = "processing-unit", amount = electronics_amount },
    },
    energy_required = 50,
    results = { { type = "item", name = "bob-speed-module-5", amount = 1 } },
  },
})

--[[Efficiency Modules]]

data.raw["recipe"]["efficiency-module"].ingredients = {
  { type = "item", name = "electronic-circuit", amount = electronics_amount },
  { type = "item", name = "bob-module-case", amount = 1 },
  { type = "item", name = "bob-module-circuit-board", amount = 1 },
  { type = "item", name = "bob-module-contact", amount = 5 },
}
data.raw["recipe"]["efficiency-module"].energy_required = 10

data.raw["recipe"]["efficiency-module-2"].ingredients = {
  { type = "item", name = "efficiency-module", amount = 1 },
  { type = "item", name = "bob-efficiency-processor", amount = 3 },
  { type = "item", name = "advanced-circuit", amount = electronics_amount },
}
data.raw["recipe"]["efficiency-module-2"].energy_required = 20

data.raw["recipe"]["efficiency-module-3"].ingredients = {
  { type = "item", name = "efficiency-module-2", amount = 1 },
  { type = "item", name = "bob-efficiency-processor-2", amount = 4 },
  { type = "item", name = "processing-unit", amount = electronics_amount },
}
data.raw["recipe"]["efficiency-module-3"].energy_required = 30

data:extend({
  {
    type = "recipe",
    name = "bob-efficiency-module-4",
    enabled = false,
    ingredients = {
      { type = "item", name = "efficiency-module-3", amount = 1 },
      { type = "item", name = "bob-efficiency-processor-3", amount = 5 },
      { type = "item", name = "processing-unit", amount = electronics_amount * 2 },
    },
    energy_required = 40,
    results = { { type = "item", name = "bob-efficiency-module-4", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-efficiency-module-5",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-efficiency-module-4", amount = 1 },
      { type = "item", name = "bob-efficiency-processor-3", amount = 6 },
      { type = "item", name = "electronic-circuit", amount = electronics_amount },
      { type = "item", name = "advanced-circuit", amount = electronics_amount },
      { type = "item", name = "processing-unit", amount = electronics_amount },
    },
    energy_required = 50,
    results = { { type = "item", name = "bob-efficiency-module-5", amount = 1 } },
  },
})

--[[Productivity Modules]]

data.raw["recipe"]["productivity-module"].ingredients = {
  { type = "item", name = "electronic-circuit", amount = electronics_amount },
  { type = "item", name = "bob-module-case", amount = 1 },
  { type = "item", name = "bob-module-circuit-board", amount = 1 },
  { type = "item", name = "bob-module-contact", amount = 5 },
}
data.raw["recipe"]["productivity-module"].energy_required = 10

data.raw["recipe"]["productivity-module-2"].ingredients = {
  { type = "item", name = "productivity-module", amount = 1 },
  { type = "item", name = "bob-productivity-processor", amount = 3 },
  { type = "item", name = "advanced-circuit", amount = electronics_amount },
}
data.raw["recipe"]["productivity-module-2"].energy_required = 20

data.raw["recipe"]["productivity-module-3"].ingredients = {
  { type = "item", name = "productivity-module-2", amount = 1 },
  { type = "item", name = "bob-productivity-processor-2", amount = 4 },
  { type = "item", name = "processing-unit", amount = electronics_amount },
}
data.raw["recipe"]["productivity-module-3"].energy_required = 30

data:extend({
  {
    type = "recipe",
    name = "bob-productivity-module-4",
    enabled = false,
    ingredients = {
      { type = "item", name = "productivity-module-3", amount = 1 },
      { type = "item", name = "bob-productivity-processor-3", amount = 5 },
      { type = "item", name = "processing-unit", amount = electronics_amount * 2 },
    },
    energy_required = 40,
    results = { { type = "item", name = "bob-productivity-module-4", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-productivity-module-5",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-productivity-module-4", amount = 1 },
      { type = "item", name = "bob-productivity-processor-3", amount = 6 },
      { type = "item", name = "electronic-circuit", amount = electronics_amount },
      { type = "item", name = "advanced-circuit", amount = electronics_amount },
      { type = "item", name = "processing-unit", amount = electronics_amount },
    },
    energy_required = 50,
    results = { { type = "item", name = "bob-productivity-module-5", amount = 1 } },
  },
})

--[[Pollution Cleaning Modules]]

data:extend({
  {
    type = "recipe",
    name = "bob-pollution-clean-module-1",
    enabled = false,
    ingredients = {
      { type = "item", name = "electronic-circuit", amount = electronics_amount },
      { type = "item", name = "bob-module-case", amount = 1 },
      { type = "item", name = "bob-module-circuit-board", amount = 1 },
      { type = "item", name = "bob-module-contact", amount = 5 },
    },
    energy_required = 10,
    results = { { type = "item", name = "bob-pollution-clean-module-1", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-pollution-clean-module-2",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-pollution-clean-module-1", amount = 1 },
      { type = "item", name = "bob-pollution-clean-processor", amount = 3 },
      { type = "item", name = "advanced-circuit", amount = electronics_amount },
    },
    energy_required = 20,
    results = { { type = "item", name = "bob-pollution-clean-module-2", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-pollution-clean-module-3",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-pollution-clean-module-2", amount = 1 },
      { type = "item", name = "bob-pollution-clean-processor-2", amount = 4 },
      { type = "item", name = "processing-unit", amount = electronics_amount },
    },
    energy_required = 30,
    results = { { type = "item", name = "bob-pollution-clean-module-3", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-pollution-clean-module-4",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-pollution-clean-module-3", amount = 1 },
      { type = "item", name = "bob-pollution-clean-processor-3", amount = 5 },
      { type = "item", name = "processing-unit", amount = electronics_amount * 2 },
    },
    energy_required = 40,
    results = { { type = "item", name = "bob-pollution-clean-module-4", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-pollution-clean-module-5",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-pollution-clean-module-4", amount = 1 },
      { type = "item", name = "bob-pollution-clean-processor-3", amount = 6 },
      { type = "item", name = "electronic-circuit", amount = electronics_amount },
      { type = "item", name = "advanced-circuit", amount = electronics_amount },
      { type = "item", name = "processing-unit", amount = electronics_amount },
    },
    energy_required = 50,
    results = { { type = "item", name = "bob-pollution-clean-module-5", amount = 1 } },
  },
})

--[[Pollution Producing Modules]]

data:extend({
  {
    type = "recipe",
    name = "bob-pollution-create-module-1",
    enabled = false,
    ingredients = {
      { type = "item", name = "electronic-circuit", amount = electronics_amount },
      { type = "item", name = "bob-module-case", amount = 1 },
      { type = "item", name = "bob-module-circuit-board", amount = 1 },
      { type = "item", name = "bob-module-contact", amount = 5 },
    },
    energy_required = 10,
    results = { { type = "item", name = "bob-pollution-create-module-1", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-pollution-create-module-2",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-pollution-create-module-1", amount = 1 },
      { type = "item", name = "bob-pollution-create-processor", amount = 3 },
      { type = "item", name = "advanced-circuit", amount = electronics_amount },
    },
    energy_required = 20,
    results = { { type = "item", name = "bob-pollution-create-module-2", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-pollution-create-module-3",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-pollution-create-module-2", amount = 1 },
      { type = "item", name = "bob-pollution-create-processor-2", amount = 4 },
      { type = "item", name = "processing-unit", amount = electronics_amount },
    },
    energy_required = 30,
    results = { { type = "item", name = "bob-pollution-create-module-3", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-pollution-create-module-4",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-pollution-create-module-3", amount = 1 },
      { type = "item", name = "bob-pollution-create-processor-3", amount = 5 },
      { type = "item", name = "processing-unit", amount = electronics_amount * 2 },
    },
    energy_required = 40,
    results = { { type = "item", name = "bob-pollution-create-module-4", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-pollution-create-module-5",
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-pollution-create-module-4", amount = 1 },
      { type = "item", name = "bob-pollution-create-processor-3", amount = 6 },
      { type = "item", name = "electronic-circuit", amount = electronics_amount },
      { type = "item", name = "advanced-circuit", amount = electronics_amount },
      { type = "item", name = "processing-unit", amount = electronics_amount },
    },
    energy_required = 50,
    results = { { type = "item", name = "bob-pollution-create-module-5", amount = 1 } },
  },
})

if mods["quality"] then
  --[[Quality Modules]]

  data.raw["recipe"]["quality-module"].ingredients = {
    { type = "item", name = "electronic-circuit", amount = electronics_amount },
    { type = "item", name = "bob-module-case", amount = 1 },
    { type = "item", name = "bob-module-circuit-board", amount = 1 },
    { type = "item", name = "bob-module-contact", amount = 5 },
  }
  data.raw["recipe"]["quality-module"].energy_required = 10

  data.raw["recipe"]["quality-module-2"].ingredients = {
    { type = "item", name = "quality-module", amount = 1 },
    { type = "item", name = "bob-quality-processor", amount = 3 },
    { type = "item", name = "advanced-circuit", amount = electronics_amount },
  }
  data.raw["recipe"]["quality-module-2"].energy_required = 20

  data.raw["recipe"]["quality-module-3"].ingredients = {
    { type = "item", name = "quality-module-2", amount = 1 },
    { type = "item", name = "bob-quality-processor-2", amount = 4 },
    { type = "item", name = "processing-unit", amount = electronics_amount },
  }
  data.raw["recipe"]["quality-module-3"].energy_required = 30

  data:extend({
    {
      type = "recipe",
      name = "bob-quality-module-4",
      enabled = false,
      ingredients = {
        { type = "item", name = "quality-module-3", amount = 1 },
        { type = "item", name = "bob-quality-processor-3", amount = 5 },
        { type = "item", name = "processing-unit", amount = electronics_amount * 2 },
      },
      energy_required = 40,
      results = { { type = "item", name = "bob-quality-module-4", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-quality-module-5",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-quality-module-4", amount = 1 },
        { type = "item", name = "bob-quality-processor-3", amount = 6 },
        { type = "item", name = "electronic-circuit", amount = electronics_amount },
        { type = "item", name = "advanced-circuit", amount = electronics_amount },
        { type = "item", name = "processing-unit", amount = electronics_amount },
      },
      energy_required = 50,
      results = { { type = "item", name = "bob-quality-module-5", amount = 1 } },
    },
  })
end
