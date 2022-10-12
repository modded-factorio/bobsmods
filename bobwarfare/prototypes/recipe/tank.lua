data:extend({{
--      {"engine-unit", 16},
--      {"engine-unit", 16},
  type = "recipe",
  name = "bob-tank-2",
  enabled = false,
  ingredients = {
    {"tank", 1},
    {"steel-plate", 50},
    {"iron-gear-wheel", 15},
    {"processing-unit", 5}
  },
  result = "bob-tank-2"
}, {
  type = "recipe",
  name = "bob-tank-3",
  enabled = false,
  ingredients = {
    {"bob-tank-2", 1},
    {"steel-plate", 40},
    {"plastic-bar", 40},
    {"iron-gear-wheel", 15},
    {"processing-unit", 5}
  },
  result = "bob-tank-3"
}})