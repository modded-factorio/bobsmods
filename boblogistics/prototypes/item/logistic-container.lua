data.raw.item["passive-provider-chest"].order = "b[storage]-[passive-provider-chest-1]"
data.raw.item["active-provider-chest"].order = "b[storage]-[active-provider-chest-1]"
data.raw.item["storage-chest"].order = "b[storage]-[storage-chest-1]"
data.raw.item["buffer-chest"].order = "b[storage]-[buffer-chest-1]"
data.raw.item["requester-chest"].order = "b[storage]-[requester-chest-1]"

local chest_drop_move = {
  filename = "__base__/sound/item/metal-chest-inventory-move.ogg",
  volume = 0.6,
}
local chest_pick = {
  filename = "__base__/sound/item/metal-chest-inventory-pickup.ogg",
  volume = 0.6,
}

data:extend({
  {
    type = "item",
    name = "bob-passive-provider-chest-2",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/brass-chest.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        icon_size = 32,
        tint = { r = 0.9, g = 0.2, b = 0.1, a = 1 },
      },
    },
    subgroup = "bob-logistic-chests-2",
    order = "b[storage]-[passive-provider-chest-2]",
    place_result = "bob-passive-provider-chest-2",
    stack_size = 50,
    drop_sound = chest_drop_move,
    inventory_move_sound = chest_drop_move,
    pick_sound = chest_pick,
  },
  {
    type = "item",
    name = "bob-active-provider-chest-2",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/brass-chest.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        icon_size = 32,
        tint = { r = 0.7, g = 0.1, b = 0.9, a = 1 },
      },
    },
    subgroup = "bob-logistic-chests-2",
    order = "b[storage]-[active-provider-chest-2]",
    place_result = "bob-active-provider-chest-2",
    stack_size = 50,
    drop_sound = chest_drop_move,
    inventory_move_sound = chest_drop_move,
    pick_sound = chest_pick,
  },
  {
    type = "item",
    name = "bob-storage-chest-2",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/brass-chest.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        icon_size = 32,
        tint = { r = 0.9, g = 0.75, b = 0.1, a = 1 },
      },
    },
    subgroup = "bob-logistic-chests-2",
    order = "b[storage]-[storage-chest-2]",
    place_result = "bob-storage-chest-2",
    stack_size = 50,
    drop_sound = chest_drop_move,
    inventory_move_sound = chest_drop_move,
    pick_sound = chest_pick,
  },
  {
    type = "item",
    name = "bob-buffer-chest-2",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/brass-chest.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        icon_size = 32,
        tint = { r = 0.2, g = 0.9, b = 0.1, a = 1 },
      },
    },
    subgroup = "bob-logistic-chests-2",
    order = "b[storage]-[buffer-chest-2]",
    place_result = "bob-buffer-chest-2",
    stack_size = 50,
    drop_sound = chest_drop_move,
    inventory_move_sound = chest_drop_move,
    pick_sound = chest_pick,
  },
  {
    type = "item",
    name = "bob-requester-chest-2",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/brass-chest.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        icon_size = 32,
        tint = { r = 0.1, g = 0.4, b = 0.9, a = 1 },
      },
    },
    subgroup = "bob-logistic-chests-2",
    order = "b[storage]-[requester-chest-2]",
    place_result = "bob-requester-chest-2",
    stack_size = 50,
    drop_sound = chest_drop_move,
    inventory_move_sound = chest_drop_move,
    pick_sound = chest_pick,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-passive-provider-chest-3",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/titanium-logistic-chest.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        icon_size = 32,
        tint = { r = 0.9, g = 0.2, b = 0.1, a = 1 },
      },
    },
    subgroup = "bob-logistic-chests-3",
    order = "b[storage]-[passive-provider-chest-3]",
    place_result = "bob-passive-provider-chest-3",
    stack_size = 50,
    drop_sound = chest_drop_move,
    inventory_move_sound = chest_drop_move,
    pick_sound = chest_pick,
  },
  {
    type = "item",
    name = "bob-active-provider-chest-3",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/titanium-logistic-chest.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        icon_size = 32,
        tint = { r = 0.7, g = 0.1, b = 0.9, a = 1 },
      },
    },
    subgroup = "bob-logistic-chests-3",
    order = "b[storage]-[active-provider-chest-3]",
    place_result = "bob-active-provider-chest-3",
    stack_size = 50,
    drop_sound = chest_drop_move,
    inventory_move_sound = chest_drop_move,
    pick_sound = chest_pick,
  },
  {
    type = "item",
    name = "bob-storage-chest-3",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/titanium-logistic-chest.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        icon_size = 32,
        tint = { r = 0.9, g = 0.75, b = 0.1, a = 1 },
      },
    },
    subgroup = "bob-logistic-chests-3",
    order = "b[storage]-[storage-chest-3]",
    place_result = "bob-storage-chest-3",
    stack_size = 50,
    drop_sound = chest_drop_move,
    inventory_move_sound = chest_drop_move,
    pick_sound = chest_pick,
  },
  {
    type = "item",
    name = "bob-buffer-chest-3",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/titanium-logistic-chest.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        icon_size = 32,
        tint = { r = 0.2, g = 0.9, b = 0.1, a = 1 },
      },
    },
    subgroup = "bob-logistic-chests-3",
    order = "b[storage]-[buffer-chest-3]",
    place_result = "bob-buffer-chest-3",
    stack_size = 50,
    drop_sound = chest_drop_move,
    inventory_move_sound = chest_drop_move,
    pick_sound = chest_pick,
  },
  {
    type = "item",
    name = "bob-requester-chest-3",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/titanium-logistic-chest.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        icon_size = 32,
        tint = { r = 0.1, g = 0.4, b = 0.9, a = 1 },
      },
    },
    subgroup = "bob-logistic-chests-3",
    order = "b[storage]-[requester-chest-3]",
    place_result = "bob-requester-chest-3",
    stack_size = 50,
    drop_sound = chest_drop_move,
    inventory_move_sound = chest_drop_move,
    pick_sound = chest_pick,
  },
})
