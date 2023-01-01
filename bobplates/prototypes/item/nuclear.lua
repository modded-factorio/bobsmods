data:extend({
  {
    type = "item",
    name = "plutonium-239",
    icon = "__bobplates__/graphics/icons/nuclear/plutonium-239.png",
    icon_size = 64,
    subgroup = "bob-nuclear",
    order = "s[plutonium-239]",
    stack_size = 100,
  },
})

if settings.startup["bobmods-plates-nuclearupdate"].value == true then
  data:extend({
    {
      type = "item",
      name = "plutonium-fuel-cell",
      icon = "__bobplates__/graphics/icons/nuclear/plutonium-fuel-cell.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "bob-fuel-cells",
      order = "r[uranium-processing]-ab[plutonium-fuel-cell]",
      fuel_category = "nuclear",
      burnt_result = "used-up-uranium-fuel-cell",
      fuel_value = "40GJ",
      fuel_acceleration_multiplier = 1.6,
      fuel_top_speed_multiplier = 1.3,
      fuel_glow_color = { r = 0.7, g = 1, b = 0 },
      stack_size = 50,
    },
    {
      type = "item",
      name = "empty-nuclear-fuel-cell",
      icon = "__bobplates__/graphics/icons/nuclear/empty-nuclear-fuel-cell.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "bob-fuel-cells",
      order = "r[uranium-processing]-0[empty-nuclear-fuel-cell]",
      stack_size = 50,
    },
  })
end

if data.raw.item["thorium-ore"] then
  data:extend({
    {
      type = "item",
      name = "thorium-232",
      icon = "__bobplates__/graphics/icons/nuclear/thorium-232.png",
      icon_size = 64,
      subgroup = "bob-nuclear",
      order = "s[thorium-232]",
      stack_size = 100,
    },
    {
      type = "item",
      name = "thorium-fuel-cell",
      icon = "__bobplates__/graphics/icons/nuclear/thorium-fuel-cell.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "bob-fuel-cells",
      order = "s[thorium-processing]-a[thorium-fuel-cell-1]",
      fuel_category = "nuclear",
      burnt_result = "used-up-thorium-fuel-cell",
      fuel_value = "6GJ",
      fuel_glow_color = { r = 1, g = 1, b = 0 },
      fuel_acceleration_multiplier = 1.1,
      fuel_top_speed_multiplier = 1.05,
      stack_size = 50,
    },
    {
      type = "item",
      name = "thorium-plutonium-fuel-cell",
      icon = "__bobplates__/graphics/icons/nuclear/thorium-plutonium-fuel-cell.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "bob-fuel-cells",
      order = "s[thorium-processing]-a[thorium-fuel-cell-2]",
      fuel_category = "nuclear",
      burnt_result = "used-up-thorium-fuel-cell",
      fuel_value = "40GJ",
      fuel_acceleration_multiplier = 1.8,
      fuel_top_speed_multiplier = 1.4,
      fuel_glow_color = { r = 1, g = 0.7, b = 0 },
      stack_size = 50,
    },
    {
      type = "item",
      name = "used-up-thorium-fuel-cell",
      icon = "__bobplates__/graphics/icons/nuclear/used-up-thorium-fuel-cell.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "bob-fuel-cells",
      order = "s[used-up-thorium-fuel-cell]",
      stack_size = 50,
    },
  })

  if settings.startup["bobmods-plates-nuclearupdate"].value == true then
    data.raw.item["thorium-fuel-cell"].fuel_value = "12GJ"
    data.raw.item["thorium-plutonium-fuel-cell"].fuel_value = "60GJ"
  end
end

data:extend({
  {
    type = "item",
    name = "deuterium-fuel-cell",
    icon = "__bobplates__/graphics/icons/nuclear/deuterium-fuel-cell.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "bob-fuel-cells",
    order = "t[deuterium-processing]-a[deuterium-fuel-cell]",
    fuel_category = "nuclear",
    burnt_result = "used-up-deuterium-fuel-cell",
    fuel_value = "100GJ",
    fuel_acceleration_multiplier = 1.2,
    fuel_top_speed_multiplier = 1.1,
    fuel_glow_color = { r = 1, g = 0, b = 0.57 },
    stack_size = 50,
  },
  {
    type = "item",
    name = "used-up-deuterium-fuel-cell",
    icon = "__bobplates__/graphics/icons/nuclear/used-up-deuterium-fuel-cell.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "bob-fuel-cells",
    order = "t[used-up-deuterium-fuel-cell]",
    stack_size = 50,
  },
})

if settings.startup["bobmods-plates-nuclearupdate"].value == true then
  data.raw.item["deuterium-fuel-cell"].fuel_value = "80GJ"
  data:extend({
    {
      type = "item",
      name = "deuterium-fuel-cell-2",
      icon = "__bobplates__/graphics/icons/nuclear/deuterium-fuel-cell-2.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "bob-fuel-cells",
      order = "t[deuterium-processing]-b[deuterium-fuel-cell-2]",
      fuel_category = "nuclear",
      burnt_result = "used-up-deuterium-fuel-cell",
      fuel_value = "120GJ",
      fuel_acceleration_multiplier = 2,
      fuel_top_speed_multiplier = 1.5,
      fuel_glow_color = { r = 1, g = 0, b = 0.9 },
      stack_size = 50,
    },
    {
      type = "item",
      name = "fusion-catalyst",
      icon = "__bobplates__/graphics/icons/nuclear/fusion-catalyst.png",
      icon_size = 64,
      subgroup = "bob-nuclear",
      order = "t[fusion-catalyst]",
      stack_size = 50,
    },
  })
end

if settings.startup["bobmods-plates-bluedeuterium"].value == true then
  data.raw.item["deuterium-fuel-cell"].fuel_glow_color = { r = 0, g = 0.7, b = 1 }
  data.raw.item["deuterium-fuel-cell"].icon = "__bobplates__/graphics/icons/nuclear/deuterium-fuel-cell-blue.png"
  if settings.startup["bobmods-plates-nuclearupdate"].value == true then
    data.raw.item["deuterium-fuel-cell-2"].fuel_glow_color = { r = 0, g = 1, b = 0.85 }
    data.raw.item["deuterium-fuel-cell-2"].icon = "__bobplates__/graphics/icons/nuclear/deuterium-fuel-cell-2-blue.png"
  end
  data.raw.item["used-up-deuterium-fuel-cell"].icon =
    "__bobplates__/graphics/icons/nuclear/used-up-deuterium-fuel-cell-blue.png"
end
