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
