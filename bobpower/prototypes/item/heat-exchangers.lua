if settings.startup["bobmods-power-steam"].value == true then
  data.raw.item["heat-exchanger"].order =
    "f[nuclear-energy]-b[heat-exchanger-1]"
  data.raw.item["heat-exchanger"].subgroup = "bob-energy-heat-exchanger"

  data:extend({{
    type = "item",
    name = "heat-exchanger-2",
    icon = "__base__/graphics/icons/heat-boiler.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "bob-energy-heat-exchanger",
    order = "f[nuclear-energy]-b[heat-exchanger-2]",
    place_result = "heat-exchanger-2",
    stack_size = 50
  }, {
    type = "item",
    name = "heat-exchanger-3",
    icon = "__base__/graphics/icons/heat-boiler.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "bob-energy-heat-exchanger",
    order = "f[nuclear-energy]-b[heat-exchanger-3]",
    place_result = "heat-exchanger-3",
    stack_size = 50
  }})
end