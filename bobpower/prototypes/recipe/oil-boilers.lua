if settings.startup["bobmods-power-steam"].value == true then

data:extend(
{
  {
    type = "recipe",
    name = "oil-boiler",
    enabled = false,
    ingredients =
    {
      {"boiler-2", 1},
      {"pipe", 2},
    },
    result = "oil-boiler",
  },

  {
    type = "recipe",
    name = "oil-boiler-2",
    enabled = false,
    ingredients =
    {
      {"oil-boiler", 1},
      {"steel-plate", 5},
    },
    result = "oil-boiler-2",
  },

  {
    type = "recipe",
    name = "oil-boiler-3",
    enabled = false,
    ingredients =
    {
      {"oil-boiler-2", 1},
      {"steel-plate", 5},
    },
    result = "oil-boiler-3",
  },

  {
    type = "recipe",
    name = "oil-boiler-4",
    enabled = false,
    ingredients =
    {
      {"oil-boiler-3", 1},
      {"steel-plate", 5},
    },
    result = "oil-boiler-4",
  },
}
)


  if settings.startup["bobmods-plates-convert-recipes"] and settings.startup["bobmods-plates-convert-recipes"].value == true then
data:extend(
{
  {
    type = "recipe",
    name = "oil-boiler-2-from-boiler-3",
    subgroup = "bob-energy-oil-boiler-convert",
    enabled = false,
    ingredients =
    {
      {"boiler-3", 1},
      {"pipe", 2},
    },
    result = "oil-boiler-2",
    allow_as_intermediate = false,
  },

  {
    type = "recipe",
    name = "oil-boiler-3-from-boiler-4",
    subgroup = "bob-energy-oil-boiler-convert",
    enabled = false,
    ingredients =
    {
      {"boiler-4", 1},
      {"pipe", 2},
    },
    result = "oil-boiler-3",
    allow_as_intermediate = false,
  },

  {
    type = "recipe",
    name = "oil-boiler-4-from-boiler-5",
    subgroup = "bob-energy-oil-boiler-convert",
    enabled = false,
    ingredients =
    {
      {"boiler-5", 1},
      {"pipe", 2},
    },
    result = "oil-boiler-4",
    allow_as_intermediate = false,
  },
}
)
data:extend(
{
  {
    type = "recipe",
    name = "boiler-2-from-oil-boiler",
    subgroup = "bob-energy-boiler-convert",
    enabled = false,
    ingredients =
    {
      {"oil-boiler", 1},
    },
    results =
    {
      {"boiler-2", 1},
      {"pipe", 2},
    },
    main_product = "boiler-2",
    allow_as_intermediate = false,
  },

  {
    type = "recipe",
    name = "boiler-3-from-oil-boiler-2",
    subgroup = "bob-energy-boiler-convert",
    enabled = false,
    ingredients =
    {
      {"oil-boiler-2", 1},
    },
    results =
    {
      {"boiler-3", 1},
      {"pipe", 2},
    },
    main_product = "boiler-3",
    allow_as_intermediate = false,
  },

  {
    type = "recipe",
    name = "boiler-4-from-oil-boiler-3",
    subgroup = "bob-energy-boiler-convert",
    enabled = false,
    ingredients =
    {
      {"oil-boiler-3", 1},
    },
    results =
    {
      {"boiler-4", 1},
      {"pipe", 2},
    },
    main_product = "boiler-4",
    allow_as_intermediate = false,
  },

  {
    type = "recipe",
    name = "boiler-5-from-oil-boiler-4",
    subgroup = "bob-energy-boiler-convert",
    enabled = false,
    ingredients =
    {
      {"oil-boiler-4", 1},
    },
    results =
    {
      {"boiler-5", 1},
      {"pipe", 2},
    },
    main_product = "boiler-5",
    allow_as_intermediate = false,
  },
}
)
  end

end
