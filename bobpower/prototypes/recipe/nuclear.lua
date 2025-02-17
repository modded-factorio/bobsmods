if settings.startup["bobmods-power-nuclear"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "bob-nuclear-reactor-2",
      energy_required = 12,
      enabled = false,
      ingredients = {
        { type = "item", name = "nuclear-reactor", amount = 1 },
        { type = "item", name = "concrete", amount = 500 },
        { type = "item", name = "steel-plate", amount = 500 },
        { type = "item", name = "processing-unit", amount = 500 },
        { type = "item", name = "copper-plate", amount = 500 },
      },
      results = { { type = "item", name = "bob-nuclear-reactor-2", amount = 1 } },
      requester_paste_multiplier = 1,
    },
    {
      type = "recipe",
      name = "bob-nuclear-reactor-3",
      energy_required = 16,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-nuclear-reactor-2", amount = 1 },
        { type = "item", name = "concrete", amount = 500 },
        { type = "item", name = "steel-plate", amount = 500 },
        { type = "item", name = "processing-unit", amount = 500 },
        { type = "item", name = "copper-plate", amount = 500 },
      },
      results = { { type = "item", name = "bob-nuclear-reactor-3", amount = 1 } },
      requester_paste_multiplier = 1,
    },
  })
end
