if settings.startup["bobmods-power-steam"].value == true then
  data.raw["item"]["steam-engine"].order = "b[steam-power]-b[steam-engine-1]"
  data.raw["item"]["steam-engine"].subgroup = "bob-energy-steam-engine"

  data:extend({{
    type = "item",
    name = "steam-engine-2",
    icon = "__base__/graphics/icons/steam-engine.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "bob-energy-steam-engine",
    order = "b[steam-power]-b[steam-engine-2]",
    place_result = "steam-engine-2",
    stack_size = 10
  }, {
    type = "item",
    name = "steam-engine-3",
    icon = "__base__/graphics/icons/steam-engine.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "bob-energy-steam-engine",
    order = "b[steam-power]-b[steam-engine-3]",
    place_result = "steam-engine-3",
    stack_size = 10
  }, {
    type = "item",
    name = "steam-engine-4",
    icon = "__base__/graphics/icons/steam-engine.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "bob-energy-steam-engine",
    order = "b[steam-power]-b[steam-engine-4]",
    place_result = "steam-engine-4",
    stack_size = 10
  }, {
    type = "item",
    name = "steam-engine-5",
    icon = "__base__/graphics/icons/steam-engine.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "bob-energy-steam-engine",
    order = "b[steam-power]-b[steam-engine-5]",
    place_result = "steam-engine-5",
    stack_size = 10
  }})
end