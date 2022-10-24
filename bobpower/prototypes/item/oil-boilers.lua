if settings.startup["bobmods-power-steam"].value == true then
  data:extend({
    {
      type = "item",
      name = "oil-boiler",
      icon = "__bobpower__/graphics/icons/oil-boiler.png",
      icon_size = 32,
      subgroup = "bob-energy-oil-boiler",
      order = "b[steam-power]-b[oil-boiler-1]",
      place_result = "oil-boiler",
      stack_size = 50,
    },

    {
      type = "item",
      name = "oil-boiler-2",
      icon = "__bobpower__/graphics/icons/oil-boiler.png",
      icon_size = 32,
      subgroup = "bob-energy-oil-boiler",
      order = "b[steam-power]-b[oil-boiler-2]",
      place_result = "oil-boiler-2",
      stack_size = 50,
    },

    {
      type = "item",
      name = "oil-boiler-3",
      icon = "__bobpower__/graphics/icons/oil-boiler.png",
      icon_size = 32,
      subgroup = "bob-energy-oil-boiler",
      order = "b[steam-power]-b[oil-boiler-3]",
      place_result = "oil-boiler-3",
      stack_size = 50,
    },

    {
      type = "item",
      name = "oil-boiler-4",
      icon = "__bobpower__/graphics/icons/oil-boiler.png",
      icon_size = 32,
      subgroup = "bob-energy-oil-boiler",
      order = "b[steam-power]-b[oil-boiler-4]",
      place_result = "oil-boiler-4",
      stack_size = 50,
    },
  })
end
