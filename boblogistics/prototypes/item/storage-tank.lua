data.raw.item["storage-tank"].order = "b[fluid]-a[storage-tank-1a]"
data.raw.item["storage-tank"].subgroup = "bob-storage-tank"

data:extend({
  {
    type = "item",
    name = "storage-tank-2",
    icon = "__base__/graphics/icons/storage-tank.png",
    icon_size = 64,
    subgroup = "bob-storage-tank",
    order = "b[fluid]-a[storage-tank-2a]",
    place_result = "storage-tank-2",
    stack_size = 50,
  },

  {
    type = "item",
    name = "storage-tank-3",
    icon = "__base__/graphics/icons/storage-tank.png",
    icon_size = 64,
    subgroup = "bob-storage-tank",
    order = "b[fluid]-a[storage-tank-3a]",
    place_result = "storage-tank-3",
    stack_size = 50,
  },

  {
    type = "item",
    name = "storage-tank-4",
    icon = "__base__/graphics/icons/storage-tank.png",
    icon_size = 64,
    subgroup = "bob-storage-tank",
    order = "b[fluid]-a[storage-tank-4a]",
    place_result = "storage-tank-4",
    stack_size = 50,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-storage-tank-all-corners",
    icon = "__base__/graphics/icons/storage-tank.png",
    icon_size = 64,
    subgroup = "bob-storage-tank",
    order = "b[fluid]-a[storage-tank-1b]",
    place_result = "bob-storage-tank-all-corners",
    stack_size = 50,
  },

  {
    type = "item",
    name = "bob-storage-tank-all-corners-2",
    icon = "__base__/graphics/icons/storage-tank.png",
    icon_size = 64,
    subgroup = "bob-storage-tank",
    order = "b[fluid]-a[storage-tank-2b]",
    place_result = "bob-storage-tank-all-corners-2",
    stack_size = 50,
  },

  {
    type = "item",
    name = "bob-storage-tank-all-corners-3",
    icon = "__base__/graphics/icons/storage-tank.png",
    icon_size = 64,
    subgroup = "bob-storage-tank",
    order = "b[fluid]-a[storage-tank-3b]",
    place_result = "bob-storage-tank-all-corners-3",
    stack_size = 50,
  },

  {
    type = "item",
    name = "bob-storage-tank-all-corners-4",
    icon = "__base__/graphics/icons/storage-tank.png",
    icon_size = 64,
    subgroup = "bob-storage-tank",
    order = "b[fluid]-a[storage-tank-4b]",
    place_result = "bob-storage-tank-all-corners-4",
    stack_size = 50,
  },
})
