data:extend({
  {
    type = "recipe",
    name = "bob-advanced-processing-unit",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "advanced-circuit", amount = 20 },
      { type = "item", name = "processing-unit", amount = 2 },
      { type = "fluid", name = "sulfuric-acid", amount = 20 },
    },
    results = { { type = "item", name = "bob-advanced-processing-unit", amount = 1 } },
    allow_productivity = true,
  },
})
