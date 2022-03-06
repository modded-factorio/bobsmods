--[[Speed Modules]]--
data.raw["recipe"]["speed-module"].ingredients = {{"speed-processor", 1},{"module-case", 1},{"module-circuit-board", 1},{"module-contact", 4}}
data.raw["recipe"]["speed-module"].energy_required = 10

data.raw["recipe"]["speed-module-2"].ingredients = {{"speed-module", 1},{"speed-processor", 2},{"module-contact", 5}}
data.raw["recipe"]["speed-module-2"].energy_required = 20

data.raw["recipe"]["speed-module-3"].ingredients = {{"speed-module-2", 1},{"speed-processor-2", 3},{"advanced-circuit", 5}}
data.raw["recipe"]["speed-module-3"].energy_required = 30


data:extend(
{
  {
    type = "recipe",
    name = "speed-module-4",
    enabled = false,
    ingredients =
    {
      {"speed-module-3", 1},
      {"speed-processor-2", 4},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 40,
    result = "speed-module-4"
  },

  {
    type = "recipe",
    name = "speed-module-5",
    enabled = false,
    ingredients =
    {
      {"speed-module-4", 1},
      {"speed-processor-2", 5},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 50,
    result = "speed-module-5"
  },

  {
    type = "recipe",
    name = "speed-module-6",
    enabled = false,
    ingredients =
    {
      {"speed-module-5", 1},
      {"speed-processor-3", 6},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 60,
    result = "speed-module-6"
  },

  {
    type = "recipe",
    name = "speed-module-7",
    enabled = false,
    ingredients =
    {
      {"speed-module-6", 1},
      {"speed-processor-3", 8},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 70,
    result = "speed-module-7"
  },

  {
    type = "recipe",
    name = "speed-module-8",
    enabled = false,
    ingredients =
    {
      {"speed-module-7", 1},
      {"speed-processor-3", 10},
      {"module-contact", 5},
      {"advanced-circuit", 5},
      {"processing-unit", 5},
    },
    energy_required = 80,
    result = "speed-module-8"
  },
}
)


--[[Effectivity Modules]]--
data.raw["recipe"]["effectivity-module"].ingredients = {{"effectivity-processor", 1},{"module-case", 1},{"module-circuit-board", 1},{"module-contact", 4}}
data.raw["recipe"]["effectivity-module"].energy_required = 10

data.raw["recipe"]["effectivity-module-2"].ingredients = {{"effectivity-module", 1},{"effectivity-processor", 2},{"module-contact", 5}}
data.raw["recipe"]["effectivity-module-2"].energy_required = 20

data.raw["recipe"]["effectivity-module-3"].ingredients = {{"effectivity-module-2", 1},{"effectivity-processor-2", 3},{"advanced-circuit", 5}}
data.raw["recipe"]["effectivity-module-3"].energy_required = 30


data:extend(
{
  {
    type = "recipe",
    name = "effectivity-module-4",
    enabled = false,
    ingredients =
    {
      {"effectivity-module-3", 1},
      {"effectivity-processor-2", 4},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 40,
    result = "effectivity-module-4"
  },

  {
    type = "recipe",
    name = "effectivity-module-5",
    enabled = false,
    ingredients =
    {
      {"effectivity-module-4", 1},
      {"effectivity-processor-2", 5},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 50,
    result = "effectivity-module-5"
  },

  {
    type = "recipe",
    name = "effectivity-module-6",
    enabled = false,
    ingredients =
    {
      {"effectivity-module-5", 1},
      {"effectivity-processor-3", 6},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 60,
    result = "effectivity-module-6"
  },

  {
    type = "recipe",
    name = "effectivity-module-7",
    enabled = false,
    ingredients =
    {
      {"effectivity-module-6", 1},
      {"effectivity-processor-3", 8},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 70,
    result = "effectivity-module-7"
  },

  {
    type = "recipe",
    name = "effectivity-module-8",
    enabled = false,
    ingredients =
    {
      {"effectivity-module-7", 1},
      {"effectivity-processor-3", 10},
      {"module-contact", 5},
      {"advanced-circuit", 5},
      {"processing-unit", 5},
    },
    energy_required = 80,
    result = "effectivity-module-8"
  },
}
)


--[[Productivity Modules]]--
data.raw["recipe"]["productivity-module"].ingredients = {{"productivity-processor", 1},{"module-case", 1},{"module-circuit-board", 1},{"module-contact", 4}}
data.raw["recipe"]["productivity-module"].energy_required = 10

data.raw["recipe"]["productivity-module-2"].ingredients = {{"productivity-module", 1},{"productivity-processor", 2},{"module-contact", 5}}
data.raw["recipe"]["productivity-module-2"].energy_required = 20

data.raw["recipe"]["productivity-module-3"].ingredients = {{"productivity-module-2", 1},{"productivity-processor-2", 3},{"advanced-circuit", 5}}
data.raw["recipe"]["productivity-module-3"].energy_required = 30


data:extend(
{
  {
    type = "recipe",
    name = "productivity-module-4",
    enabled = false,
    ingredients =
    {
      {"productivity-module-3", 1},
      {"productivity-processor-2", 4},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 40,
    result = "productivity-module-4"
  },

  {
    type = "recipe",
    name = "productivity-module-5",
    enabled = false,
    ingredients =
    {
      {"productivity-module-4", 1},
      {"productivity-processor-2", 5},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 50,
    result = "productivity-module-5"
  },

  {
    type = "recipe",
    name = "productivity-module-6",
    enabled = false,
    ingredients =
    {
      {"productivity-module-5", 1},
      {"productivity-processor-3", 6},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 60,
    result = "productivity-module-6"
  },

  {
    type = "recipe",
    name = "productivity-module-7",
    enabled = false,
    ingredients =
    {
      {"productivity-module-6", 1},
      {"productivity-processor-3", 8},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 70,
    result = "productivity-module-7"
  },

  {
    type = "recipe",
    name = "productivity-module-8",
    enabled = false,
    ingredients =
    {
      {"productivity-module-7", 1},
      {"productivity-processor-3", 10},
      {"module-contact", 5},
      {"advanced-circuit", 5},
      {"processing-unit", 5},
    },
    energy_required = 80,
    result = "productivity-module-8"
  },
}
)

--[[Pollution Cleaning Modules]]
data:extend(
{
  {
    type = "recipe",
    name = "pollution-clean-module-1",
    enabled = false,
    ingredients =
    {
      {"pollution-clean-processor", 1},
      {"module-case", 1},
      {"module-circuit-board", 1},
      {"module-contact", 4},
    },
    energy_required = 10,
    result = "pollution-clean-module-1"
  },

  {
    type = "recipe",
    name = "pollution-clean-module-2",
    enabled = false,
    ingredients =
    {
      {"pollution-clean-module-1", 1},
      {"pollution-clean-processor", 2},
      {"module-contact", 5},
    },
    energy_required = 20,
    result = "pollution-clean-module-2"
  },

  {
    type = "recipe",
    name = "pollution-clean-module-3",
    enabled = false,
    ingredients =
    {
      {"pollution-clean-module-2", 1},
      {"pollution-clean-processor-2", 3},
      {"advanced-circuit", 5},
    },
    energy_required = 30,
    result = "pollution-clean-module-3"
  },

  {
    type = "recipe",
    name = "pollution-clean-module-4",
    enabled = false,
    ingredients =
    {
      {"pollution-clean-module-3", 1},
      {"pollution-clean-processor-2", 4},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 40,
    result = "pollution-clean-module-4"
  },

  {
    type = "recipe",
    name = "pollution-clean-module-5",
    enabled = false,
    ingredients =
    {
      {"pollution-clean-module-4", 1},
      {"pollution-clean-processor-2", 5},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 50,
    result = "pollution-clean-module-5"
  },

  {
    type = "recipe",
    name = "pollution-clean-module-6",
    enabled = false,
    ingredients =
    {
      {"pollution-clean-module-5", 1},
      {"pollution-clean-processor-3", 6},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 60,
    result = "pollution-clean-module-6"
  },

  {
    type = "recipe",
    name = "pollution-clean-module-7",
    enabled = false,
    ingredients =
    {
      {"pollution-clean-module-6", 1},
      {"pollution-clean-processor-3", 8},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 70,
    result = "pollution-clean-module-7"
  },

  {
    type = "recipe",
    name = "pollution-clean-module-8",
    enabled = false,
    ingredients =
    {
      {"pollution-clean-module-7", 1},
      {"pollution-clean-processor-3", 10},
      {"module-contact", 5},
      {"advanced-circuit", 5},
      {"processing-unit", 5},
    },
    energy_required = 80,
    result = "pollution-clean-module-8"
  },
}
)


--[[Pollution Producing Modules]]--
data:extend(
{
  {
    type = "recipe",
    name = "pollution-create-module-1",
    enabled = false,
    ingredients =
    {
      {"pollution-create-processor", 1},
      {"module-case", 1},
      {"module-circuit-board", 1},
      {"module-contact", 4},
    },
    energy_required = 10,
    result = "pollution-create-module-1"
  },

  {
    type = "recipe",
    name = "pollution-create-module-2",
    enabled = false,
    ingredients =
    {
      {"pollution-create-module-1", 1},
      {"pollution-create-processor", 2},
      {"module-contact", 5},
    },
    energy_required = 20,
    result = "pollution-create-module-2"
  },

  {
    type = "recipe",
    name = "pollution-create-module-3",
    enabled = false,
    ingredients =
    {
      {"pollution-create-module-2", 1},
      {"pollution-create-processor-2", 3},
      {"advanced-circuit", 5},
    },
    energy_required = 30,
    result = "pollution-create-module-3"
  },

  {
    type = "recipe",
    name = "pollution-create-module-4",
    enabled = false,
    ingredients =
    {
      {"pollution-create-module-3", 1},
      {"pollution-create-processor-2", 4},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 40,
    result = "pollution-create-module-4"
  },

  {
    type = "recipe",
    name = "pollution-create-module-5",
    enabled = false,
    ingredients =
    {
      {"pollution-create-module-4", 1},
      {"pollution-create-processor-2", 5},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 50,
    result = "pollution-create-module-5"
  },

  {
    type = "recipe",
    name = "pollution-create-module-6",
    enabled = false,
    ingredients =
    {
      {"pollution-create-module-5", 1},
      {"pollution-create-processor-3", 6},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 60,
    result = "pollution-create-module-6"
  },

  {
    type = "recipe",
    name = "pollution-create-module-7",
    enabled = false,
    ingredients =
    {
      {"pollution-create-module-6", 1},
      {"pollution-create-processor-3", 8},
      {"module-contact", 5},
      {"processing-unit", 5},
    },
    energy_required = 70,
    result = "pollution-create-module-7"
  },

  {
    type = "recipe",
    name = "pollution-create-module-8",
    enabled = false,
    ingredients =
    {
      {"pollution-create-module-7", 1},
      {"pollution-create-processor-3", 10},
      {"module-contact", 5},
      {"advanced-circuit", 5},
      {"processing-unit", 5},
    },
    energy_required = 80,
    result = "pollution-create-module-8"
  },
}
)


