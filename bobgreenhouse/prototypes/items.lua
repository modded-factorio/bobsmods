data:extend({{
  type = "item",
  name = "bob-greenhouse",
  icon = "__bobgreenhouse__/graphics/icons/greenhouse.png",
  icon_size = 32,
  subgroup = "bob-greenhouse",
  order = "g[greenhouse]",
  place_result = "bob-greenhouse",
  stack_size = 20
}, {
  type = "item",
  name = "fertiliser",
  icon = "__bobgreenhouse__/graphics/icons/fertiliser.png",
  icon_size = 32,
  subgroup = "bob-greenhouse-items",
  order = "g[fertiliser]",
  stack_size = 100
}, {
  type = "item",
  name = "seedling",
  icon = "__bobgreenhouse__/graphics/icons/seedling.png",
  icon_size = 32,
  fuel_value = "100J",
  fuel_category = "chemical",
  subgroup = "bob-greenhouse-items",
  order = "g[seedling]",
  stack_size = 200
}, {
  type = "item",
  name = "wood-pellets",
  icon = "__bobgreenhouse__/graphics/icons/wood-pellets.png",
  icon_size = 64,
  fuel_value = "10MJ",
  fuel_category = "chemical",
  fuel_emissions_multiplier = 0.9,
  subgroup = "raw-resource",
  order = "a[wood-pellets]",
  stack_size = 100
}})