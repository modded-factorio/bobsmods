data.raw.item["pump"].order = "b[pipe]-c[pump-1]"

data:extend({{
  type = "item",
  name = "bob-pump-2",
  icon = "__base__/graphics/icons/pump.png",
  icon_size = 64,
  icon_mipmaps = 4,
  subgroup = "energy-pipe-distribution",
  order = "b[pipe]-c[pump-2]",
  place_result = "bob-pump-2",
  stack_size = 50
}, {
  type = "item",
  name = "bob-pump-3",
  icon = "__base__/graphics/icons/pump.png",
  icon_size = 64,
  icon_mipmaps = 4,
  subgroup = "energy-pipe-distribution",
  order = "b[pipe]-c[pump-3]",
  place_result = "bob-pump-3",
  stack_size = 50
}, {
  type = "item",
  name = "bob-pump-4",
  icon = "__base__/graphics/icons/pump.png",
  icon_size = 64,
  icon_mipmaps = 4,
  subgroup = "energy-pipe-distribution",
  order = "b[pipe]-c[pump-4]",
  place_result = "bob-pump-4",
  stack_size = 50
}})