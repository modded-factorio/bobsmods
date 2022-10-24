if settings.startup["bobmods-power-nuclear"].value == true then
  data.raw.item["nuclear-reactor"].order = "f[nuclear-energy]-a[reactor-1]"

  data:extend({
    {
      type = "item",
      name = "nuclear-reactor-2",
      icon = "__base__/graphics/icons/nuclear-reactor.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "energy",
      order = "f[nuclear-energy]-a[reactor-2]",
      place_result = "nuclear-reactor-2",
      stack_size = 10,
    },
    {
      type = "item",
      name = "nuclear-reactor-3",
      icon = "__base__/graphics/icons/nuclear-reactor.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "energy",
      order = "f[nuclear-energy]-a[reactor-3]",
      place_result = "nuclear-reactor-3",
      stack_size = 10,
    },
  })
end
