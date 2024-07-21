if settings.startup["bobmods-power-fluidgenerator"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "fluid-generator",
      energy_required = 2,
      enabled = false,
      ingredients = {
        { "iron-gear-wheel", 10 },
        { "iron-plate", 5 },
        { "steel-plate", 10 },
        { "pipe", 5 },
      },
      result = "fluid-generator",
    },

    {
      type = "recipe",
      name = "fluid-generator-2",
      energy_required = 2,
      enabled = false,
      ingredients = {
        { "fluid-generator", 1 },
        { "iron-plate", 5 },
        { "steel-plate", 10 },
        { "iron-gear-wheel", 10 },
        { "electronic-circuit", 5 },
      },
      result = "fluid-generator-2",
    },

    {
      type = "recipe",
      name = "fluid-generator-3",
      energy_required = 2,
      enabled = false,
      ingredients = {
        { "fluid-generator-2", 1 },
        { "advanced-circuit", 5 },
        { "iron-plate", 5 },
        { "steel-plate", 10 },
        { "iron-gear-wheel", 10 },
      },
      result = "fluid-generator-3",
    },
  })

  if mods["bobrevamp"] and data.raw.fluid.hydrogen and data.raw.fluid.oxygen and data.raw.fluid.nitrogen then
    data:extend({
      {
        type = "recipe",
        name = "hydrazine-generator",
        energy_required = 2,
        enabled = false,
        ingredients = {
          { "fluid-generator-3", 1 },
          { "processing-unit", 5 },
          { "iron-plate", 5 },
          { "steel-plate", 10 },
          { "iron-gear-wheel", 10 },
        },
        result = "hydrazine-generator",
      },
    })
  end
end
