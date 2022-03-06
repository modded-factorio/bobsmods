data.raw.item["stone-wall"].order = "a[wall]-a[stone-wall]"
data.raw.item["gate"].order = "a[wall]-b[gate]"

data:extend(
{
  {
    type = "item",
    name = "reinforced-wall",
    icon = "__bobwarfare__/graphics/icons/reinforced-wall.png",
    icon_size = 32,
    subgroup = "defensive-structure",
    order = "a[wall]-c[reinforced]",
    place_result = "reinforced-wall",
    stack_size = 50,
  },
  {
    type = "item",
    name = "reinforced-gate",
    icon = "__base__/graphics/icons/gate.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "defensive-structure",
    order = "a[wall]-d[reinforced]",
    place_result = "reinforced-gate",
    stack_size = 50,
  },
}
)

