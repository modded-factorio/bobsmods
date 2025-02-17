data.raw.item["stone-wall"].order = "a[wall]-a[stone-wall]"
data.raw.item["gate"].order = "a[wall]-b[gate]"

data:extend({
  {
    type = "item",
    name = "bob-reinforced-wall",
    icon = "__bobwarfare__/graphics/icons/reinforced-wall.png",
    icon_size = 32,
    subgroup = "defensive-structure",
    order = "a[wall]-c[reinforced]",
    place_result = "bob-reinforced-wall",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/concrete-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/concrete-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/concrete-inventory-pickup.ogg",
      volume = 0.8,
    },
  },
  {
    type = "item",
    name = "bob-reinforced-gate",
    icon = "__base__/graphics/icons/gate.png",
    icon_size = 64,
    subgroup = "defensive-structure",
    order = "a[wall]-d[reinforced]",
    place_result = "bob-reinforced-gate",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/concrete-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/concrete-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/concrete-inventory-pickup.ogg",
      volume = 0.8,
    },
  },
})
