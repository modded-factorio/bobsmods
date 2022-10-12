data:extend({{
  type = "recipe",
  name = "reinforced-wall",
  enabled = false,
  ingredients = {{"stone-brick", 3}, {"steel-plate", 3}},
  result = "reinforced-wall"
}, {
  type = "recipe",
  name = "reinforced-gate",
  enabled = false,
  ingredients = {
    {"reinforced-wall", 1},
    {"steel-plate", 2},
    {"electronic-circuit", 2}
  },
  result = "reinforced-gate"
}})