if settings.startup["bobmods-power-solar"].value == true then
  data.raw["item"]["solar-panel"].order = "d[solar-panel]-a[solar-panel-1-b]"
  data.raw["item"]["solar-panel"].subgroup = "bob-energy-solar-panel"

  data:extend({
    {
      type = "item",
      name = "solar-panel-small",
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "bob-energy-solar-panel",
      order = "d[solar-panel]-a[solar-panel-1-a]",
      place_result = "solar-panel-small",
      stack_size = 50,
    },

    {
      type = "item",
      name = "solar-panel-large",
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "bob-energy-solar-panel",
      order = "d[solar-panel]-a[solar-panel-1-c]",
      place_result = "solar-panel-large",
      stack_size = 50,
    },

    {
      type = "item",
      name = "solar-panel-small-2",
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "bob-energy-solar-panel",
      order = "d[solar-panel]-a[solar-panel-2-a]",
      place_result = "solar-panel-small-2",
      stack_size = 50,
    },

    {
      type = "item",
      name = "solar-panel-2",
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "bob-energy-solar-panel",
      order = "d[solar-panel]-a[solar-panel-2-b]",
      place_result = "solar-panel-2",
      stack_size = 50,
    },

    {
      type = "item",
      name = "solar-panel-large-2",
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "bob-energy-solar-panel",
      order = "d[solar-panel]-a[solar-panel-2-c]",
      place_result = "solar-panel-large-2",
      stack_size = 50,
    },

    {
      type = "item",
      name = "solar-panel-small-3",
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "bob-energy-solar-panel",
      order = "d[solar-panel]-a[solar-panel-3-a]",
      place_result = "solar-panel-small-3",
      stack_size = 50,
    },

    {
      type = "item",
      name = "solar-panel-3",
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "bob-energy-solar-panel",
      order = "d[solar-panel]-a[solar-panel-3-b]",
      place_result = "solar-panel-3",
      stack_size = 50,
    },

    {
      type = "item",
      name = "solar-panel-large-3",
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "bob-energy-solar-panel",
      order = "d[solar-panel]-a[solar-panel-3-c]",
      place_result = "solar-panel-large-3",
      stack_size = 50,
    },
  })
end
