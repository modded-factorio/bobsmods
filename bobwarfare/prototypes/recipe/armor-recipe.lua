data:extend(
{
  {
    type = "recipe",
    name = "heavy-armor-2",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      {"iron-plate", 100},
      {"steel-plate", 50},
    },
    result = "heavy-armor-2"
  },

  {
    type = "recipe",
    name = "heavy-armor-3",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      {"steel-plate", 100},
      {"plastic-bar", 50},
    },
    result = "heavy-armor-3"
  },


  {
    type = "recipe",
    name = "bob-power-armor-mk3",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"power-armor-mk2", 1},
      {"processing-unit", 50},
      {"steel-plate", 25},
      {"iron-plate", 25},
      {"effectivity-module-3", 5},
      {"speed-module-3", 5},
    },
    result = "bob-power-armor-mk3"
  },
  {
    type = "recipe",
    name = "bob-power-armor-mk4",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"bob-power-armor-mk3", 1},
      {"processing-unit", 40},
      {"advanced-circuit", 20},
      {"steel-plate", 25},
      {"plastic-bar", 25},
      {"effectivity-module-3", 5},
      {"speed-module-3", 5},
    },
    result = "bob-power-armor-mk4"
  },
  {
    type = "recipe",
    name = "bob-power-armor-mk5",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"bob-power-armor-mk4", 1},
      {"processing-unit", 50},
      {"advanced-circuit", 50},
      {"steel-plate", 25},
      {"plastic-bar", 25},
      {"effectivity-module-3", 5},
      {"speed-module-3", 5},
    },
    result = "bob-power-armor-mk5"
  },
}
)


