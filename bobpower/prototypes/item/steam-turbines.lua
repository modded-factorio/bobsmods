if settings.startup["bobmods-power-steam"].value == true then
  data.raw["item"]["steam-turbine"].order = "b[steam-power]-c[steam-turbine-1]"
  data.raw["item"]["steam-turbine"].subgroup = "bob-energy-steam-engine"

  data:extend({
    {
      type = "item",
      name = "steam-turbine-2",
      icon = "__base__/graphics/icons/steam-turbine.png",
      icon_size = 64,
      subgroup = "bob-energy-steam-engine",
      order = "b[steam-power]-c[steam-turbine-2]",
      place_result = "steam-turbine-2",
      stack_size = 10,
    },
    {
      type = "item",
      name = "steam-turbine-3",
      icon = "__base__/graphics/icons/steam-turbine.png",
      icon_size = 64,
      subgroup = "bob-energy-steam-engine",
      order = "b[steam-power]-c[steam-turbine-3]",
      place_result = "steam-turbine-3",
      stack_size = 10,
    },
  })
end
