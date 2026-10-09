data:extend({
  {
    type = "recipe",
    name = "bob-advanced-processing-unit",
    categories = { "crafting-with-fluid" },
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

if data.raw["recipe-category"]["electronics"] then
  bobmods.lib.recipe.add_category("bob-advanced-processing-unit", "electronics")
elseif mods["space-age"] then
  bobmods.lib.recipe.add_category("bob-advanced-processing-unit", "electromagnetics")
end
