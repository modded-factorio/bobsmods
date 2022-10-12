data:extend({{
  type = "recipe",
  name = "rifle",
  enabled = false,
  energy_required = 5,
  ingredients = {
    {"steel-plate", 10},
    {"copper-plate", 5},
    {"iron-gear-wheel", 10}
  },
  result = "rifle"
}, {
  type = "recipe",
  name = "sniper-rifle",
  enabled = false,
  energy_required = 5,
  ingredients = {{"steel-plate", 10}, {"wood", 10}, {"iron-gear-wheel", 10}},
  result = "sniper-rifle"
}, {
  type = "recipe",
  name = "laser-rifle",
  enabled = false,
  energy_required = 5,
  ingredients = {
    {"steel-plate", 10},
    {"advanced-circuit", 5},
    {"iron-gear-wheel", 5},
    {"plastic-bar", 3}
  },
  result = "laser-rifle"
}})