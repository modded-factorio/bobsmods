data:extend({
  {
    type = "fluid",
    name = "bob-ferric-chloride-solution",
    icon = "__bobelectronics__/graphics/icons/ferric-chloride-solution.png",
    icon_size = 32,
    subgroup = "fluid",
    default_temperature = 25,
    heat_capacity = "1kJ",
    base_color = { r = 0.7, g = 0.6, b = 0.2 },
    flow_color = { r = 0.5, g = 0.5, b = 0.5 },
    max_temperature = 100,
    order = "a[fluid]-g[bob-ferric-chloride-solution]",
  },

  {
    type = "recipe",
    name = "bob-ferric-chloride-solution",
    icon = "__bobelectronics__/graphics/icons/ferric-chloride-solution.png",
    icon_size = 32,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-a[bob-ferric-chloride-solution]",
    category = "chemistry",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
      { type = "item", name = "iron-ore", amount = 1 },
      { type = "fluid", name = "water", amount = 30 },
    },
    results = {
      { type = "fluid", name = "bob-ferric-chloride-solution", amount = 50 },
    },
    crafting_machine_tint = {
      primary = { r = 0.7, g = 0.6, b = 0.2, a = 0.000 },
      secondary = { r = 0.2, g = 0.7, b = 0.0, a = 0.000 },
      tertiary = { r = 0.0, g = 0.7, b = 0.7, a = 0.000 },
    },
    allow_decomposition = false,
  },
})

data:extend({
  {
    type = "recipe",
    name = "coal-cracking",
    icon = "__bobelectronics__/graphics/icons/coal-cracking.png",
    icon_size = 32,
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-c[coal-cracking]",
    category = "chemistry",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "coal", amount = 3 },
      { type = "fluid", name = "water", amount = 15 },
    },
    results = {
      { type = "fluid", name = "heavy-oil", amount = 12 },
    },
    crafting_machine_tint = {
      primary = { r = 0.0, g = 0.34, b = 0.5, a = 0.000 },
      secondary = { r = 0.1, g = 0.1, b = 0.1, a = 0.000 },
      tertiary = { r = 0.5, g = 0.04, b = 0.0, a = 0.000 },
    },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-oil-processing",
    icon = "__bobelectronics__/graphics/icons/bob-oil-processing.png",
    icon_size = 64,
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-c[bob-oil-processing]",
    category = "oil-processing",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "fluid", name = "crude-oil", amount = 100, fluidbox_index = 2 },
    },
    results = {
      { type = "fluid", name = "heavy-oil", amount = 50 },
      { type = "fluid", name = "light-oil", amount = 20 },
      { type = "fluid", name = "petroleum-gas", amount = 30 },
    },
    allow_decomposition = false,
    allow_productivity = true,
  },
})
