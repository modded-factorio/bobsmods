data:extend(
{
  {
    type = "recipe",
    name = "advanced-processing-unit",
    category = "crafting-with-fluid",
    normal =
    {
      enabled = false,
      energy_required = 15,
      ingredients =
      {
        {"advanced-circuit", 20},
        {"processing-unit", 2},
        {type="fluid", name = "sulfuric-acid", amount = 20}
      },
      result = "advanced-processing-unit"
    },
    expensive = 
    {
      enabled = false,
      energy_required = 15,
      ingredients =
      {
        {"advanced-circuit", 20},
        {"processing-unit", 2},
        {type="fluid", name = "sulfuric-acid", amount = 40}
      },
      result = "advanced-processing-unit"
    },
  },
}
)


