data.raw.item["electronic-circuit"].order = "a[circuits]-a[electronic-circuit]"
data.raw.item["advanced-circuit"].order = "a[circuits]-b[advanced-circuit]"
data.raw.item["processing-unit"].order = "a[circuits]-c[processing-unit-1]"

data:extend({
  {
    type = "item",
    name = "bob-advanced-processing-unit",
    icon = "__bobplates__/graphics/icons/advanced-processing-unit.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "a[circuits]-d[processing-unit-2]",
    stack_size = 200,
    drop_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
      volume = 0.7,
    },
  },
})
