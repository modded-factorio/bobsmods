if settings.startup["bobmods-power-nuclear"].value == true then

data:extend(
{
  {
    type = "recipe",
    name = "nuclear-reactor-2",
    energy_required = 12,
    enabled = false,
    ingredients =
    {
      {"nuclear-reactor", 1},
      {"concrete", 500},
      {"steel-plate", 500},
      {"processing-unit", 500},
      {"copper-plate", 500}
    },
    result = "nuclear-reactor-2",
    requester_paste_multiplier = 1
  },
  {
    type = "recipe",
    name = "nuclear-reactor-3",
    energy_required = 16,
    enabled = false,
    ingredients =
    {
      {"nuclear-reactor-2", 1},
      {"concrete", 500},
      {"steel-plate", 500},
      {"processing-unit", 500},
      {"copper-plate", 500}
    },
    result = "nuclear-reactor-3",
    requester_paste_multiplier = 1
  },
}
)

end
