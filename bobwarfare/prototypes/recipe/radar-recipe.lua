data:extend(
{
  {
    type = "recipe",
    name = "radar-2",
    enabled = false,
    ingredients =
    {
      {"radar", 1},
      {"electronic-circuit", 5},
      {"iron-gear-wheel", 5},
      {"steel-plate", 10}
    },
    result = "radar-2"
  },

  {
    type = "recipe",
    name = "radar-3",
    enabled = false,
    ingredients =
    {
      {"radar-2", 1},
      {"advanced-circuit", 5},
      {"iron-gear-wheel", 5},
      {"steel-plate", 10}
    },
    result = "radar-3"
  },

  {
    type = "recipe",
    name = "radar-4",
    enabled = false,
    ingredients =
    {
      {"radar-3", 1},
      {"processing-unit", 5},
      {"iron-gear-wheel", 5},
      {"steel-plate", 10}
    },
    result = "radar-4"
  },

  {
    type = "recipe",
    name = "radar-5",
    enabled = false,
    ingredients =
    {
      {"radar-4", 1},
      {"processing-unit", 5},
      {"iron-gear-wheel", 5},
      {"steel-plate", 10}
    },
    result = "radar-5"
  },
}
)


