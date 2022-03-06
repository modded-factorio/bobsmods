data:extend(
{
  {
    type = "recipe",
    name = "bob-pump-2",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"pump", 1},
      {"steel-plate", 1},
      {"copper-pipe", 1},
    },
    result= "bob-pump-2"
  },
  {
    type = "recipe",
    name = "bob-pump-3",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"bob-pump-2", 1},
      {"steel-plate", 1},
      {"copper-pipe", 1},
    },
    result= "bob-pump-3"
  },
  {
    type = "recipe",
    name = "bob-pump-4",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"bob-pump-3", 1},
      {"steel-plate", 1},
      {"copper-pipe", 1},
    },
    result= "bob-pump-4"
  },
}
)

