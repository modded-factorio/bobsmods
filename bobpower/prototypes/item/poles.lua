if settings.startup["bobmods-power-poles"].value == true then

data.raw.item["medium-electric-pole"].order = "a[energy]-b[medium-electric-pole-1]"
data.raw.item["big-electric-pole"].order = "a[energy]-c[big-electric-pole-1]"
data.raw.item["substation"].order = "a[energy]-d[substation-1]"

data:extend(
{
  {
    type = "item",
    name = "medium-electric-pole-2",
    icon = "__base__/graphics/icons/medium-electric-pole.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-b[medium-electric-pole-2]",
    place_result = "medium-electric-pole-2",
    stack_size = 50
  },

  {
    type = "item",
    name = "medium-electric-pole-3",
    icon = "__base__/graphics/icons/medium-electric-pole.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-b[medium-electric-pole-3]",
    place_result = "medium-electric-pole-3",
    stack_size = 50
  },

  {
    type = "item",
    name = "medium-electric-pole-4",
    icon = "__base__/graphics/icons/medium-electric-pole.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-b[medium-electric-pole-4]",
    place_result = "medium-electric-pole-4",
    stack_size = 50
  },


  {
    type = "item",
    name = "big-electric-pole-2",
    icon = "__base__/graphics/icons/big-electric-pole.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-c[big-electric-pole-2]",
    place_result = "big-electric-pole-2",
    stack_size = 50
  },

  {
    type = "item",
    name = "big-electric-pole-3",
    icon = "__base__/graphics/icons/big-electric-pole.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-c[big-electric-pole-3]",
    place_result = "big-electric-pole-3",
    stack_size = 50
  },

  {
    type = "item",
    name = "big-electric-pole-4",
    icon = "__base__/graphics/icons/big-electric-pole.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-c[big-electric-pole-4]",
    place_result = "big-electric-pole-4",
    stack_size = 50
  },


  {
    type = "item",
    name = "substation-2",
    icon = "__base__/graphics/icons/substation.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-d[substation-2]",
    place_result = "substation-2",
    stack_size = 50
  },

  {
    type = "item",
    name = "substation-3",
    icon = "__base__/graphics/icons/substation.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-d[substation-3]",
    place_result = "substation-3",
    stack_size = 50
  },

  {
    type = "item",
    name = "substation-4",
    icon = "__base__/graphics/icons/substation.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-d[substation-4]",
    place_result = "substation-4",
    stack_size = 50
  },
}
)

end
