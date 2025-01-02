if settings.startup["bobmods-modules-enablegreenmodules"].value == true then
  --[[Green Modules]]

  data:extend({
    {
      type = "recipe",
      name = "bob-green-module-1",
      enabled = false,
      ingredients = {
        { type = "item", name = "electronic-circuit", amount = 10 },
        { type = "item", name = "bob-module-case", amount = 1 },
        { type = "item", name = "bob-module-circuit-board", amount = 1 },
        { type = "item", name = "bob-module-contact", amount = 10 },
      },
      energy_required = 15,
      results = { { type = "item", name = "bob-green-module-1", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-green-module-2",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-green-module-1", amount = 1 },
        { type = "item", name = "bob-efficiency-processor", amount = 2 },
        { type = "item", name = "bob-pollution-clean-processor", amount = 2 },
        { type = "item", name = "advanced-circuit", amount = 5 },
      },
      energy_required = 30,
      results = { { type = "item", name = "bob-green-module-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-green-module-3",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-green-module-2", amount = 1 },
        { type = "item", name = "bob-efficiency-processor-2", amount = 3 },
        { type = "item", name = "bob-pollution-clean-processor-2", amount = 3 },
        { type = "item", name = "processing-unit", amount = 7 },
      },
      energy_required = 45,
      results = { { type = "item", name = "bob-green-module-3", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-green-module-4",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-green-module-3", amount = 1 },
        { type = "item", name = "bob-efficiency-processor-2", amount = 4 },
        { type = "item", name = "bob-pollution-clean-processor-2", amount = 4 },
        { type = "item", name = "processing-unit", amount = 7 },
      },
      energy_required = 60,
      results = { { type = "item", name = "bob-green-module-4", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-green-module-5",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-green-module-4", amount = 1 },
        { type = "item", name = "bob-efficiency-processor-2", amount = 5 },
        { type = "item", name = "bob-pollution-clean-processor-2", amount = 5 },
        { type = "item", name = "electronic-circuit", amount = 5 },
        { type = "item", name = "processing-unit", amount = 7 },
      },
      energy_required = 75,
      results = { { type = "item", name = "bob-green-module-5", amount = 1 } },
    },
  })
end

if settings.startup["bobmods-modules-enablegodmodules"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "bob-god-module",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-speed-module-5", amount = 2 },
        { type = "item", name = "bob-efficiency-module-5", amount = 6 },
        { type = "item", name = "bob-pollution-clean-module-5", amount = 4 },
        { type = "item", name = "bob-module-case", amount = 1 },
      },
      energy_required = 30,
      results = { { type = "item", name = "bob-god-module", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-god-module-productivity",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-speed-module-5", amount = 2 },
        { type = "item", name = "bob-productivity-module-5", amount = 2 },
        { type = "item", name = "bob-efficiency-module-5", amount = 6 },
        { type = "item", name = "bob-pollution-clean-module-5", amount = 4 },
        { type = "item", name = "bob-module-case", amount = 1 },
      },
      energy_required = 30,
      results = { { type = "item", name = "bob-god-module-productivity", amount = 1 } },
    },
  })
  if mods["quality"] then
    data:extend({
      {
        type = "recipe",
        name = "bob-god-module-quality",
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-speed-module-5", amount = 2 },
          { type = "item", name = "bob-quality-module-5", amount = 2 },
          { type = "item", name = "bob-efficiency-module-5", amount = 6 },
          { type = "item", name = "bob-pollution-clean-module-5", amount = 4 },
          { type = "item", name = "bob-module-case", amount = 1 },
        },
        energy_required = 30,
        results = { { type = "item", name = "bob-god-module-quality", amount = 1 } },
      },
    })
  end
end
