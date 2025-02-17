if settings.startup["bobmods-power-fluidgenerator"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "bob-fluid-generator",
      energy_required = 2,
      enabled = false,
      ingredients = {
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "iron-plate", amount = 5 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "pipe", amount = 5 },
      },
      results = { { type = "item", name = "bob-fluid-generator", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-fluid-generator-2",
      energy_required = 2,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-fluid-generator", amount = 1 },
        { type = "item", name = "iron-plate", amount = 5 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
        { type = "item", name = "electronic-circuit", amount = 5 },
      },
      results = { { type = "item", name = "bob-fluid-generator-2", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-fluid-generator-3",
      energy_required = 2,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-fluid-generator-2", amount = 1 },
        { type = "item", name = "advanced-circuit", amount = 5 },
        { type = "item", name = "iron-plate", amount = 5 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
      },
      results = { { type = "item", name = "bob-fluid-generator-3", amount = 1 } },
    },
  })

  if
    mods["bobrevamp"]
    and data.raw.fluid["bob-hydrogen"]
    and data.raw.fluid["bob-oxygen"]
    and data.raw.fluid["bob-nitrogen"]
  then
    data:extend({
      {
        type = "recipe",
        name = "bob-hydrazine-generator",
        energy_required = 2,
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-fluid-generator-3", amount = 1 },
          { type = "item", name = "processing-unit", amount = 5 },
          { type = "item", name = "iron-plate", amount = 5 },
          { type = "item", name = "steel-plate", amount = 10 },
          { type = "item", name = "iron-gear-wheel", amount = 10 },
        },
        results = { { type = "item", name = "bob-hydrazine-generator", amount = 1 } },
      },
    })
  end
end
