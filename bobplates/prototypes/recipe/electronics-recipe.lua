data:extend({
  {
    type = "recipe",
    name = "advanced-processing-unit",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { "advanced-circuit", 20 },
      { "processing-unit", 2 },
      { type = "fluid", name = "sulfuric-acid", amount = 20 },
    },
    results = { { type = "item", name = "advanced-processing-unit", amount = 1 } },
  },
})
