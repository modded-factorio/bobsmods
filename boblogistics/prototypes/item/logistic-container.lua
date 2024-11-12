data.raw.item["passive-provider-chest"].order = "b[storage]-[passive-provider-chest-1]"
data.raw.item["active-provider-chest"].order = "b[storage]-[active-provider-chest-1]"
data.raw.item["storage-chest"].order = "b[storage]-[storage-chest-1]"
data.raw.item["buffer-chest"].order = "b[storage]-[buffer-chest-1]"
data.raw.item["requester-chest"].order = "b[storage]-[requester-chest-1]"

data:extend({
  {
    type = "item",
    name = "passive-provider-chest-2",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/brass-chest.png",
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = { r = 0.9, g = 0.2, b = 0.1, a = 1 },
      },
    },
    icon_size = 32,
    subgroup = "logistic-chests-2",
    order = "b[storage]-[passive-provider-chest-2]",
    place_result = "passive-provider-chest-2",
    stack_size = 50,
  },
  {
    type = "item",
    name = "active-provider-chest-2",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/brass-chest.png",
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = { r = 0.7, g = 0.1, b = 0.9, a = 1 },
      },
    },
    icon_size = 32,
    subgroup = "logistic-chests-2",
    order = "b[storage]-[active-provider-chest-2]",
    place_result = "active-provider-chest-2",
    stack_size = 50,
  },
  {
    type = "item",
    name = "storage-chest-2",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/brass-chest.png",
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = { r = 0.9, g = 0.75, b = 0.1, a = 1 },
      },
    },
    icon_size = 32,
    subgroup = "logistic-chests-2",
    order = "b[storage]-[storage-chest-2]",
    place_result = "storage-chest-2",
    stack_size = 50,
  },
  {
    type = "item",
    name = "buffer-chest-2",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/brass-chest.png",
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = { r = 0.2, g = 0.9, b = 0.1, a = 1 },
      },
    },
    icon_size = 32,
    subgroup = "logistic-chests-2",
    order = "b[storage]-[buffer-chest-2]",
    place_result = "buffer-chest-2",
    stack_size = 50,
  },
  {
    type = "item",
    name = "requester-chest-2",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/brass-chest.png",
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = { r = 0.1, g = 0.4, b = 0.9, a = 1 },
      },
    },
    icon_size = 32,
    subgroup = "logistic-chests-2",
    order = "b[storage]-[requester-chest-2]",
    place_result = "requester-chest-2",
    stack_size = 50,
  },
})

data:extend({
  {
    type = "item",
    name = "passive-provider-chest-3",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/titanium-logistic-chest.png",
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = { r = 0.9, g = 0.2, b = 0.1, a = 1 },
      },
    },
    icon_size = 32,
    subgroup = "logistic-chests-3",
    order = "b[storage]-[passive-provider-chest-3]",
    place_result = "passive-provider-chest-3",
    stack_size = 50,
  },
  {
    type = "item",
    name = "active-provider-chest-3",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/titanium-logistic-chest.png",
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = { r = 0.7, g = 0.1, b = 0.9, a = 1 },
      },
    },
    icon_size = 32,
    subgroup = "logistic-chests-3",
    order = "b[storage]-[active-provider-chest-3]",
    place_result = "active-provider-chest-3",
    stack_size = 50,
  },
  {
    type = "item",
    name = "storage-chest-3",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/titanium-logistic-chest.png",
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = { r = 0.9, g = 0.75, b = 0.1, a = 1 },
      },
    },
    icon_size = 32,
    subgroup = "logistic-chests-3",
    order = "b[storage]-[storage-chest-3]",
    place_result = "storage-chest-3",
    stack_size = 50,
  },
  {
    type = "item",
    name = "buffer-chest-3",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/titanium-logistic-chest.png",
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = { r = 0.2, g = 0.9, b = 0.1, a = 1 },
      },
    },
    icon_size = 32,
    subgroup = "logistic-chests-3",
    order = "b[storage]-[buffer-chest-3]",
    place_result = "buffer-chest-3",
    stack_size = 50,
  },
  {
    type = "item",
    name = "requester-chest-3",
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/titanium-logistic-chest.png",
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = { r = 0.1, g = 0.4, b = 0.9, a = 1 },
      },
    },
    icon_size = 32,
    subgroup = "logistic-chests-3",
    order = "b[storage]-[requester-chest-3]",
    place_result = "requester-chest-3",
    stack_size = 50,
  },
})
