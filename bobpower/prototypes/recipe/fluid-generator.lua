if settings.startup["bobmods-power-fluidgenerator"].value == true then

data:extend(
{
  {
    type = "recipe",
    name = "fluid-generator",
    normal =
    {
      energy_required = 2,
      enabled = false,
      ingredients =
      {
        {"iron-gear-wheel", 10},
        {"iron-plate", 5},
        {"steel-plate", 10},
        {"pipe", 5},
      },
      result = "fluid-generator"
    },
    expensive =
    {
      energy_required = 2,
      enabled = false,
      ingredients =
      {
        {"iron-gear-wheel", 20},
        {"iron-plate", 20},
        {"steel-plate", 30},
        {"pipe", 5},
      },
      result = "fluid-generator"
    }
  },

  {
    type = "recipe",
    name = "fluid-generator-2",
    normal =
    {
      energy_required = 2,
      enabled = false,
      ingredients =
      {
        {"fluid-generator", 1},
        {"iron-plate", 5},
        {"steel-plate", 10},
        {"iron-gear-wheel", 10},
        {"electronic-circuit", 5},
      },
      result = "fluid-generator-2",
    },
    expensive =
    {
      energy_required = 2,
      enabled = false,
      ingredients =
      {
        {"fluid-generator", 1},
        {"iron-plate", 20},
        {"steel-plate", 30},
        {"iron-gear-wheel", 20},
        {"electronic-circuit", 10},
      },
      result = "fluid-generator-2",
    }
  },

  {
    type = "recipe",
    name = "fluid-generator-3",
    normal =
    {
      energy_required = 2,
      enabled = false,
      ingredients =
      {
        {"fluid-generator-2", 1},
        {"advanced-circuit", 5},
        {"iron-plate", 5},
        {"steel-plate", 10},
        {"iron-gear-wheel", 10},
      },
      result = "fluid-generator-3",
    },
    expensive =
    {
      energy_required = 2,
      enabled = false,
      ingredients =
      {
        {"fluid-generator-2", 1},
        {"advanced-circuit", 10},
        {"iron-plate", 20},
        {"steel-plate", 30},
        {"iron-gear-wheel", 20},
      },
      result = "fluid-generator-3",
    }
  },
}
)

if mods["bobrevamp"] and data.raw.fluid.hydrogen and data.raw.fluid.oxygen and data.raw.fluid.nitrogen then
data:extend(
{
  {
    type = "recipe",
    name = "hydrazine-generator",
    normal =
    {
      energy_required = 2,
      enabled = false,
      ingredients =
      {
        {"fluid-generator-3", 1},
        {"processing-unit", 5},
        {"iron-plate", 5},
        {"steel-plate", 10},
        {"iron-gear-wheel", 10},
      },
      result = "hydrazine-generator",
    },
    expensive =
    {
      energy_required = 2,
      enabled = false,
      ingredients =
      {
        {"fluid-generator-3", 1},
        {"processing-unit", 10},
        {"iron-plate", 20},
        {"steel-plate", 30},
        {"iron-gear-wheel", 20},
      },
      result = "hydrazine-generator",
    }
  },
}
)
end

end
