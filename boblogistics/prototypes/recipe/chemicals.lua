data:extend({
  {
    type = "recipe",
    name = "bob-oil-processing",
    icon = "__boblogistics__/graphics/icons/bob-oil-processing.png",
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
