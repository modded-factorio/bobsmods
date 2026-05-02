data.raw.item["burner-inserter"].order = "e[inserter]-a[burner]"
data.raw.item["inserter"].order = "e[inserter]-b[standard]"
data.raw.item["long-handed-inserter"].order = "e[inserter]-c[fast]"
data.raw.item["fast-inserter"].order = "e[inserter]-d[express]"
data.raw.item["bulk-inserter"].order = "e[inserter]-d[express]-c[bulk]"

local inserter_drop_move = {
  filename = "__base__/sound/item/inserter-inventory-move.ogg",
  volume = 0.8,
}
local inserter_pick = {
  filename = "__base__/sound/item/inserter-inventory-pickup.ogg",
  volume = 0.8,
}

data:extend({
  {
    type = "item",
    name = "bob-steam-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/white-inserter.png",
    icon_size = 32,
    subgroup = "inserter",
    order = "e[inserter]-a[steam]",
    place_result = "bob-steam-inserter",
    stack_size = 50,
    drop_sound = inserter_drop_move,
    inventory_move_sound = inserter_drop_move,
    pick_sound = inserter_pick,
  },
  {
    type = "item",
    name = "bob-express-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/cyan-inserter.png",
    icon_size = 32,
    subgroup = "inserter",
    order = "e[inserter]-f[ultimate]",
    place_result = "bob-express-inserter",
    stack_size = 50,
    drop_sound = inserter_drop_move,
    inventory_move_sound = inserter_drop_move,
    pick_sound = inserter_pick,
  },
  {
    type = "item",
    name = "bob-express-bulk-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/dark-green-inserter.png",
    icon_size = 32,
    subgroup = "inserter",
    order = "e[inserter]-f[ultimate]-c[bulk]",
    place_result = "bob-express-bulk-inserter",
    stack_size = 50,
    drop_sound = inserter_drop_move,
    inventory_move_sound = inserter_drop_move,
    pick_sound = inserter_pick,
    weight = 20000,
  },
})

if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
  data.raw.item["burner-inserter"].subgroup = "bob-logistic-tier-0"
  data.raw.item["bob-steam-inserter"].subgroup = "bob-logistic-tier-0"
  data.raw.item["inserter"].subgroup = "bob-logistic-tier-1"

  data:extend({
    {
      type = "item",
      name = "long-handed-inserter",
      icon = "__boblogistics__/graphics/icons/inserter/red-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-2",
      order = "e[inserter]-c[fast]",
      place_result = "bob-red-inserter",
      stack_size = 50,
      drop_sound = inserter_drop_move,
      inventory_move_sound = inserter_drop_move,
      pick_sound = inserter_pick,
    },
    {
      type = "item",
      name = "bob-red-bulk-inserter",
      icon = "__boblogistics__/graphics/icons/inserter/red-bulk-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-2",
      order = "e[inserter]-c[fast]-c[bulk]",
      place_result = "bob-red-bulk-inserter",
      stack_size = 50,
      drop_sound = inserter_drop_move,
      inventory_move_sound = inserter_drop_move,
      pick_sound = inserter_pick,
      weight = 20000,
    },

    {
      type = "item",
      name = "fast-inserter",
      localised_name = { "entity-name.bob-express-inserter" },
      icon = "__boblogistics__/graphics/icons/inserter/blue-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-3",
      order = "e[inserter]-d[express]",
      place_result = "fast-inserter",
      stack_size = 50,
      drop_sound = inserter_drop_move,
      inventory_move_sound = inserter_drop_move,
      pick_sound = inserter_pick,
    },
    {
      type = "item",
      name = "bulk-inserter",
      localised_name = { "entity-name.bob-express-bulk-inserter" },
      icon = "__boblogistics__/graphics/icons/inserter/blue-bulk-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-3",
      order = "e[inserter]-d[express]-c[bulk]",
      place_result = "bulk-inserter",
      stack_size = 50,
      drop_sound = inserter_drop_move,
      inventory_move_sound = inserter_drop_move,
      pick_sound = inserter_pick,
      weight = 20000,
    },

    {
      type = "item",
      name = "bob-turbo-inserter",
      icon = "__boblogistics__/graphics/icons/inserter/purple-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-4",
      order = "e[inserter]-e[turbo]",
      place_result = "bob-turbo-inserter",
      stack_size = 50,
      drop_sound = inserter_drop_move,
      inventory_move_sound = inserter_drop_move,
      pick_sound = inserter_pick,
    },
    {
      type = "item",
      name = "bob-turbo-bulk-inserter",
      icon = "__boblogistics__/graphics/icons/inserter/purple-bulk-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-4",
      order = "e[inserter]-e[turbo]-c[bulk]",
      place_result = "bob-turbo-bulk-inserter",
      stack_size = 50,
      drop_sound = inserter_drop_move,
      inventory_move_sound = inserter_drop_move,
      pick_sound = inserter_pick,
      weight = 20000,
    },
  })

  data.raw.item["bob-express-inserter"].localised_name = { "entity-name.bob-ultimate-inserter" }
  data.raw.item["bob-express-inserter"].icon = "__boblogistics__/graphics/icons/inserter/green-inserter.png"
  data.raw.item["bob-express-inserter"].subgroup = "bob-logistic-tier-5"

  data.raw.item["bob-express-bulk-inserter"].localised_name = { "entity-name.bob-ultimate-bulk-inserter" }
  data.raw.item["bob-express-bulk-inserter"].icon = "__boblogistics__/graphics/icons/inserter/green-bulk-inserter.png"
  data.raw.item["bob-express-bulk-inserter"].subgroup = "bob-logistic-tier-5"
end
