if settings.startup["bobmods-logistics-trains"].value == true then
  data.raw["item-with-entity-data"]["locomotive"].stack_size = 10
  data.raw["item-with-entity-data"]["locomotive"].order = "a[train-system]-e[locomotive-1]"
  data.raw["item-with-entity-data"]["locomotive"].subgroup = "bob-locomotive"

  data.raw["item-with-entity-data"]["cargo-wagon"].stack_size = 10
  data.raw["item-with-entity-data"]["cargo-wagon"].order = "a[train-system]-f[cargo-wagon-1]"
  data.raw["item-with-entity-data"]["cargo-wagon"].subgroup = "bob-cargo-wagon"

  data.raw["item-with-entity-data"]["fluid-wagon"].stack_size = 10
  data.raw["item-with-entity-data"]["fluid-wagon"].order = "a[train-system]-h[fluid-wagon-1]"
  data.raw["item-with-entity-data"]["fluid-wagon"].subgroup = "bob-fluid-wagon"

  local locomotive_drop_move = {
    filename = "__base__/sound/item/locomotive-inventory-move.ogg",
    volume = 0.4,
  }
  local locomotive_pick = {
    filename = "__base__/sound/item/locomotive-inventory-pickup.ogg",
    volume = 0.4,
  }
  local wagon_drop_move = {
    filename = "__base__/sound/item/metal-large-inventory-move.ogg",
    volume = 0.7,
  }
  local fluid_drop_move = {
    filename = "__base__/sound/item/fluid-inventory-move.ogg",
    volume = 0.6,
  }
  local fluid_pick = {
    filename = "__base__/sound/item/fluid-inventory-pickup.ogg",
    volume = 0.5,
  }

  data:extend({
    {
      type = "item-with-entity-data",
      name = "bob-locomotive-2",
      icon = "__base__/graphics/icons/locomotive.png",
      icon_size = 64,
      subgroup = "bob-locomotive",
      order = "a[train-system]-e[locomotive-2]",
      place_result = "bob-locomotive-2",
      stack_size = 10,
      drop_sound = locomotive_drop_move,
      inventory_move_sound = locomotive_drop_move,
      pick_sound = locomotive_pick,
    },

    {
      type = "item-with-entity-data",
      name = "bob-locomotive-3",
      icon = "__base__/graphics/icons/locomotive.png",
      icon_size = 64,
      subgroup = "bob-locomotive",
      order = "a[train-system]-e[locomotive-3]",
      place_result = "bob-locomotive-3",
      stack_size = 10,
      drop_sound = locomotive_drop_move,
      inventory_move_sound = locomotive_drop_move,
      pick_sound = locomotive_pick,
    },

    {
      type = "item-with-entity-data",
      name = "bob-armoured-locomotive",
      icon = "__base__/graphics/icons/locomotive.png",
      icon_size = 64,
      subgroup = "bob-locomotive",
      order = "a[train-system]-e[locomotive-a-1]",
      place_result = "bob-armoured-locomotive",
      stack_size = 10,
      drop_sound = locomotive_drop_move,
      inventory_move_sound = locomotive_drop_move,
      pick_sound = locomotive_pick,
    },

    {
      type = "item-with-entity-data",
      name = "bob-armoured-locomotive-2",
      icon = "__base__/graphics/icons/locomotive.png",
      icon_size = 64,
      subgroup = "bob-locomotive",
      order = "a[train-system]-e[locomotive-a-2]",
      place_result = "bob-armoured-locomotive-2",
      stack_size = 10,
      drop_sound = locomotive_drop_move,
      inventory_move_sound = locomotive_drop_move,
      pick_sound = locomotive_pick,
    },

    {
      type = "item-with-entity-data",
      name = "bob-cargo-wagon-2",
      icon = "__base__/graphics/icons/cargo-wagon.png",
      icon_size = 64,
      subgroup = "bob-cargo-wagon",
      order = "a[train-system]-f[cargo-wagon-2]",
      place_result = "bob-cargo-wagon-2",
      stack_size = 10,
      drop_sound = wagon_drop_move,
      inventory_move_sound = wagon_drop_move,
      pick_sound = locomotive_pick,
    },

    {
      type = "item-with-entity-data",
      name = "bob-cargo-wagon-3",
      icon = "__base__/graphics/icons/cargo-wagon.png",
      icon_size = 64,
      subgroup = "bob-cargo-wagon",
      order = "a[train-system]-f[cargo-wagon-3]",
      place_result = "bob-cargo-wagon-3",
      stack_size = 10,
      drop_sound = wagon_drop_move,
      inventory_move_sound = wagon_drop_move,
      pick_sound = locomotive_pick,
    },

    {
      type = "item-with-entity-data",
      name = "bob-armoured-cargo-wagon",
      icon = "__base__/graphics/icons/cargo-wagon.png",
      icon_size = 64,
      subgroup = "bob-cargo-wagon",
      order = "a[train-system]-f[cargo-wagon-a-1]",
      place_result = "bob-armoured-cargo-wagon",
      stack_size = 10,
      drop_sound = wagon_drop_move,
      inventory_move_sound = wagon_drop_move,
      pick_sound = locomotive_pick,
    },

    {
      type = "item-with-entity-data",
      name = "bob-armoured-cargo-wagon-2",
      icon = "__base__/graphics/icons/cargo-wagon.png",
      icon_size = 64,
      subgroup = "bob-cargo-wagon",
      order = "a[train-system]-f[cargo-wagon-a-2]",
      place_result = "bob-armoured-cargo-wagon-2",
      stack_size = 10,
      drop_sound = wagon_drop_move,
      inventory_move_sound = wagon_drop_move,
      pick_sound = locomotive_pick,
    },

    {
      type = "item-with-entity-data",
      name = "bob-fluid-wagon-2",
      icon = "__base__/graphics/icons/fluid-wagon.png",
      icon_size = 64,
      subgroup = "bob-fluid-wagon",
      order = "a[train-system]-h[fluid-wagon-2]",
      place_result = "bob-fluid-wagon-2",
      stack_size = 10,
      drop_sound = fluid_drop_move,
      inventory_move_sound = fluid_drop_move,
      pick_sound = fluid_pick,
    },

    {
      type = "item-with-entity-data",
      name = "bob-fluid-wagon-3",
      icon = "__base__/graphics/icons/fluid-wagon.png",
      icon_size = 64,
      subgroup = "bob-fluid-wagon",
      order = "a[train-system]-h[fluid-wagon-3]",
      place_result = "bob-fluid-wagon-3",
      stack_size = 10,
      drop_sound = fluid_drop_move,
      inventory_move_sound = fluid_drop_move,
      pick_sound = fluid_pick,
    },

    {
      type = "item-with-entity-data",
      name = "bob-armoured-fluid-wagon",
      icon = "__base__/graphics/icons/fluid-wagon.png",
      icon_size = 64,
      subgroup = "bob-fluid-wagon",
      order = "a[train-system]-h[fluid-wagon-a-1]",
      place_result = "bob-armoured-fluid-wagon",
      stack_size = 10,
      drop_sound = fluid_drop_move,
      inventory_move_sound = fluid_drop_move,
      pick_sound = fluid_pick,
    },

    {
      type = "item-with-entity-data",
      name = "bob-armoured-fluid-wagon-2",
      icon = "__base__/graphics/icons/fluid-wagon.png",
      icon_size = 64,
      subgroup = "bob-fluid-wagon",
      order = "a[train-system]-h[fluid-wagon-a-2]",
      place_result = "bob-armoured-fluid-wagon-2",
      stack_size = 10,
      drop_sound = fluid_drop_move,
      inventory_move_sound = fluid_drop_move,
      pick_sound = fluid_pick,
    },
  })
end
