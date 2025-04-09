data:extend({
  {
    type = "item",
    name = "bob-electrolyser",
    icon = "__bobplates__/graphics/icons/electrolyser.png",
    icon_size = 32,
    subgroup = "production-machine",
    order = "e[bob-electrolyser-1]",
    place_result = "bob-electrolyser",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/fluid-inventory-pickup.ogg",
      volume = 0.5,
    },
  },

  {
    type = "item",
    name = "bob-stone-mixing-furnace",
    icon = "__bobplates__/graphics/icons/stone-mixing-furnace.png",
    icon_size = 32,
    subgroup = "bob-smelting-machine",
    order = "b[mixing-furnace-1]",
    place_result = "bob-stone-mixing-furnace",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/brick-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/brick-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/brick-inventory-pickup.ogg",
      volume = 0.6,
    },
  },
  {
    type = "item",
    name = "bob-steel-mixing-furnace",
    icon = "__base__/graphics/icons/steel-furnace.png",
    icon_size = 64,
    subgroup = "bob-smelting-machine",
    order = "b[mixing-furnace-2]",
    place_result = "bob-steel-mixing-furnace",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
      volume = 0.8,
    },
  },
  {
    type = "item",
    name = "bob-electric-mixing-furnace",
    icon = "__bobplates__/graphics/icons/electric-mixing-furnace.png",
    icon_size = 32,
    subgroup = "bob-smelting-machine",
    order = "c[bob-electric-mixing-furnace]",
    place_result = "bob-electric-mixing-furnace",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/electric-large-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-large-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-large-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 20000,
  },

  {
    type = "item",
    name = "bob-stone-chemical-furnace",
    icon = "__bobplates__/graphics/icons/stone-chemical-furnace.png",
    icon_size = 32,
    subgroup = "bob-smelting-machine",
    order = "b[chemical-boiler-1]",
    place_result = "bob-stone-chemical-furnace",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/brick-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/brick-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/brick-inventory-pickup.ogg",
      volume = 0.6,
    },
  },
  {
    type = "item",
    name = "bob-steel-chemical-furnace",
    icon = "__base__/graphics/icons/steel-furnace.png",
    icon_size = 64,
    subgroup = "bob-smelting-machine",
    order = "b[chemical-boiler-2]",
    place_result = "bob-steel-chemical-furnace",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
      volume = 0.8,
    },
  },
  {
    type = "item",
    name = "bob-electric-chemical-furnace",
    icon = "__bobplates__/graphics/icons/chemical-furnace.png",
    icon_size = 32,
    subgroup = "bob-smelting-machine",
    order = "c[chemical-furnace]",
    place_result = "bob-electric-chemical-furnace",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/electric-large-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-large-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-large-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 20000,
  },

  {
    type = "item",
    name = "bob-air-pump",
    icon = "__bobplates__/graphics/icons/air-pump-1.png",
    icon_size = 32,
    subgroup = "bob-pump",
    order = "e[bob-air-pump-1]",
    place_result = "bob-air-pump",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/fluid-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-air-pump-2",
    icon = "__bobplates__/graphics/icons/air-pump-2.png",
    icon_size = 32,
    subgroup = "bob-pump",
    order = "e[bob-air-pump-2]",
    place_result = "bob-air-pump-2",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/fluid-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-air-pump-3",
    icon = "__bobplates__/graphics/icons/air-pump-3.png",
    icon_size = 32,
    subgroup = "bob-pump",
    order = "e[bob-air-pump-3]",
    place_result = "bob-air-pump-3",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/fluid-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-air-pump-4",
    icon = "__bobplates__/graphics/icons/air-pump-4.png",
    icon_size = 32,
    subgroup = "bob-pump",
    order = "e[bob-air-pump-4]",
    place_result = "bob-air-pump-4",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/fluid-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-water-pump",
    icon = "__bobplates__/graphics/icons/water-pump-1.png",
    icon_size = 32,
    subgroup = "bob-pump",
    order = "e[bob-water-pump-1]",
    place_result = "bob-water-pump",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/fluid-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-water-pump-2",
    icon = "__bobplates__/graphics/icons/water-pump-2.png",
    icon_size = 32,
    subgroup = "bob-pump",
    order = "e[bob-water-pump-2]",
    place_result = "bob-water-pump-2",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/fluid-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-water-pump-3",
    icon = "__bobplates__/graphics/icons/water-pump-3.png",
    icon_size = 32,
    subgroup = "bob-pump",
    order = "e[bob-water-pump-3]",
    place_result = "bob-water-pump-3",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/fluid-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-water-pump-4",
    icon = "__bobplates__/graphics/icons/water-pump-4.png",
    icon_size = 32,
    subgroup = "bob-pump",
    order = "e[bob-water-pump-4]",
    place_result = "bob-water-pump-4",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/fluid-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-small-inline-storage-tank",
    icon = "__bobplates__/graphics/icons/small-storage-tank.png",
    icon_size = 32,
    subgroup = "storage",
    order = "b[fluid]-a[storage-tank-0a]",
    place_result = "bob-small-inline-storage-tank",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
      volume = 0.8,
    },
  },

  {
    type = "item",
    name = "bob-small-storage-tank",
    icon = "__bobplates__/graphics/icons/small-storage-tank.png",
    icon_size = 32,
    subgroup = "storage",
    order = "b[fluid]-a[storage-tank-0b]",
    place_result = "bob-small-storage-tank",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/metal-large-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
      volume = 0.8,
    },
  },

  {
    type = "item",
    name = "bob-void-pump",
    icon = "__bobplates__/graphics/icons/void-pump.png",
    icon_size = 32,
    subgroup = "bob-pump",
    order = "bob-void-pump",
    place_result = "bob-void-pump",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/fluid-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 5000,
  },
})
