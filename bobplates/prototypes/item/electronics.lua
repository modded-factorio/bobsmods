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

  {
    type = "produce-per-hour-achievement",
    name = "bob-computer-age-1",
    icon = "__bobplates__/graphics/icons/achievement/bob-computer-age-1.png",
    icon_size = 128,
    item_product = "advanced-circuit",
    amount = 250,
    order = "d[production]-e[advanced-processing-unit-production]-a",
  },
  {
    type = "produce-per-hour-achievement",
    name = "bob-computer-age-2",
    icon = "__bobplates__/graphics/icons/achievement/bob-computer-age-2.png",
    icon_size = 128,
    item_product = "advanced-circuit",
    amount = 500,
    order = "d[production]-e[advanced-processing-unit-production]-b",
  },
  {
    type = "produce-per-hour-achievement",
    name = "bob-computer-age-3",
    icon = "__bobplates__/graphics/icons/achievement/bob-computer-age-3.png",
    icon_size = 128,
    item_product = "advanced-circuit",
    amount = 2500,
    order = "d[production]-e[advanced-processing-unit-production]-c",
  },
})
