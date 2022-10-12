data:extend({{
  type = "recipe",
  name = "advanced-logistic-science-pack",
  enabled = false,
  energy_required = 21,
  ingredients = {
    {"filter-inserter", 1},
    {"express-transport-belt", 1},
    {"flying-robot-frame", 1},
    {"steel-chest", 2}
  },
  result_count = 3,
  result = "advanced-logistic-science-pack"
}, {
  type = "recipe",
  name = "lab-2",
  enabled = false,
  energy_required = 15,
  ingredients = {
    {"lab", 1},
    {"advanced-circuit", 10},
    {"filter-inserter", 4},
    {"express-transport-belt", 4}
  },
  result = "lab-2"
}})

if settings.startup["bobmods-burnerphase"].value == true then
  data:extend({{
    type = "recipe",
    name = "steam-science-pack",
    energy_required = 2.5,
    ingredients = {{"coal", 1}, {"stone", 1}},
    result_count = 1,
    result = "steam-science-pack"
  }, {
    type = "recipe",
    name = "burner-lab",
    energy_required = 1,
    ingredients = {{"wood", 10}, {"iron-plate", 2}, {"stone", 4}},
    result = "burner-lab"
  }})
end