data.raw.item["storage-tank"].order = "b[fluid]-a[storage-tank-1a]"
data.raw.item["storage-tank"].subgroup = "bob-storage-tank"
data.raw.item["storage-tank"].icon = "__boblogistics__/graphics/icons/storage-tank-1.png"

local storage_drop_move = {
  filename = "__base__/sound/item/metal-large-inventory-move.ogg",
  volume = 0.7,
}
local storage_pick = {
  filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
  volume = 0.8,
}

data:extend({
  {
    type = "item",
    name = "bob-storage-tank-2",
    icon = "__boblogistics__/graphics/icons/storage-tank-2.png",
    subgroup = "bob-storage-tank",
    order = "b[fluid]-a[storage-tank-2a]",
    place_result = "bob-storage-tank-2",
    stack_size = 50,
    drop_sound = storage_drop_move,
    inventory_move_sound = storage_drop_move,
    pick_sound = storage_pick,
  },

  {
    type = "item",
    name = "bob-storage-tank-3",
    icon = "__boblogistics__/graphics/icons/storage-tank-3.png",
    subgroup = "bob-storage-tank",
    order = "b[fluid]-a[storage-tank-3a]",
    place_result = "bob-storage-tank-3",
    stack_size = 50,
    drop_sound = storage_drop_move,
    inventory_move_sound = storage_drop_move,
    pick_sound = storage_pick,
  },

  {
    type = "item",
    name = "bob-storage-tank-4",
    icon = "__boblogistics__/graphics/icons/storage-tank-4.png",
    subgroup = "bob-storage-tank",
    order = "b[fluid]-a[storage-tank-4a]",
    place_result = "bob-storage-tank-4",
    stack_size = 50,
    drop_sound = storage_drop_move,
    inventory_move_sound = storage_drop_move,
    pick_sound = storage_pick,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-storage-tank-all-corners",
    icon = "__boblogistics__/graphics/icons/storage-tank-all-corners-1.png",
    subgroup = "bob-storage-tank",
    order = "b[fluid]-a[storage-tank-1b]",
    place_result = "bob-storage-tank-all-corners",
    stack_size = 50,
    drop_sound = storage_drop_move,
    inventory_move_sound = storage_drop_move,
    pick_sound = storage_pick,
  },

  {
    type = "item",
    name = "bob-storage-tank-all-corners-2",
    icon = "__boblogistics__/graphics/icons/storage-tank-all-corners-2.png",
    subgroup = "bob-storage-tank",
    order = "b[fluid]-a[storage-tank-2b]",
    place_result = "bob-storage-tank-all-corners-2",
    stack_size = 50,
    drop_sound = storage_drop_move,
    inventory_move_sound = storage_drop_move,
    pick_sound = storage_pick,
  },

  {
    type = "item",
    name = "bob-storage-tank-all-corners-3",
    icon = "__boblogistics__/graphics/icons/storage-tank-all-corners-3.png",
    subgroup = "bob-storage-tank",
    order = "b[fluid]-a[storage-tank-3b]",
    place_result = "bob-storage-tank-all-corners-3",
    stack_size = 50,
    drop_sound = storage_drop_move,
    inventory_move_sound = storage_drop_move,
    pick_sound = storage_pick,
  },

  {
    type = "item",
    name = "bob-storage-tank-all-corners-4",
    icon = "__boblogistics__/graphics/icons/storage-tank-all-corners-4.png",
    subgroup = "bob-storage-tank",
    order = "b[fluid]-a[storage-tank-4b]",
    place_result = "bob-storage-tank-all-corners-4",
    stack_size = 50,
    drop_sound = storage_drop_move,
    inventory_move_sound = storage_drop_move,
    pick_sound = storage_pick,
  },
})
