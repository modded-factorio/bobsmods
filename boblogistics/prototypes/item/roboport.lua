data.raw.item["roboport"].stack_size = 10
data.raw.item["roboport"].order = "c[signal]-a[roboport-1]"
data.raw.item["roboport"].subgroup = "bob-logistic-roboport"

local roboport_drop_move = {
  filename = "__base__/sound/item/roboport-inventory-move.ogg",
  volume = 0.45,
}
local roboport_pick = {
  filename = "__base__/sound/item/roboport-inventory-pickup.ogg",
  volume = 0.35,
}

local radio_drop_move = {
  filename = "__base__/sound/item/robotic-inventory-move.ogg",
  volume = 0.8,
}
local radio_pick = {
  filename = "__base__/sound/item/robotic-inventory-pickup.ogg",
  volume = 0.5,
}

local charger_drop_move = {
  filename = "__base__/sound/item/electric-large-inventory-move.ogg",
  volume = 0.7,
}
local charger_pick = {
  filename = "__base__/sound/item/electric-large-inventory-pickup.ogg",
  volume = 0.7,
}

if settings.startup["bobmods-logistics-disableroboports"].value == false then
  data:extend({
    {
      type = "item",
      name = "bob-roboport-2",
      icon = "__boblogistics__/graphics/icons/roboport-2.png",
      icon_size = 32,
      subgroup = "bob-logistic-roboport",
      order = "c[signal]-a[roboport-2]",
      place_result = "bob-roboport-2",
      stack_size = 10,
      drop_sound = roboport_drop_move,
      inventory_move_sound = roboport_drop_move,
      pick_sound = roboport_pick,
      weight = 100000,
    },

    {
      type = "item",
      name = "bob-roboport-3",
      icon = "__boblogistics__/graphics/icons/roboport-3.png",
      icon_size = 32,
      subgroup = "bob-logistic-roboport",
      order = "c[signal]-a[roboport-3]",
      place_result = "bob-roboport-3",
      stack_size = 10,
      drop_sound = roboport_drop_move,
      inventory_move_sound = roboport_drop_move,
      pick_sound = roboport_pick,
      weight = 100000,
    },

    {
      type = "item",
      name = "bob-roboport-4",
      icon = "__boblogistics__/graphics/icons/roboport-4.png",
      icon_size = 32,
      subgroup = "bob-logistic-roboport",
      order = "c[signal]-a[roboport-4]",
      place_result = "bob-roboport-4",
      stack_size = 10,
      drop_sound = roboport_drop_move,
      inventory_move_sound = roboport_drop_move,
      pick_sound = roboport_pick,
      weight = 100000,
    },
  })
end

data:extend({
  {
    type = "item",
    name = "bob-robochest",
    icon = "__boblogistics__/graphics/icons/robochest.png",
    icon_size = 64,
    subgroup = "bob-logistic-roboport-chest",
    order = "c[signal]-a[robochest-1]",
    place_result = "bob-robochest",
    stack_size = 10,
    drop_sound = roboport_drop_move,
    inventory_move_sound = roboport_drop_move,
    pick_sound = roboport_pick,
    weight = 50000,
  },

  {
    type = "item",
    name = "bob-robochest-2",
    icon = "__boblogistics__/graphics/icons/robochest-2.png",
    icon_size = 64,
    subgroup = "bob-logistic-roboport-chest",
    order = "c[signal]-a[robochest-2]",
    place_result = "bob-robochest-2",
    stack_size = 10,
    drop_sound = roboport_drop_move,
    inventory_move_sound = roboport_drop_move,
    pick_sound = roboport_pick,
    weight = 50000,
  },

  {
    type = "item",
    name = "bob-robochest-3",
    icon = "__boblogistics__/graphics/icons/robochest-3.png",
    icon_size = 64,
    subgroup = "bob-logistic-roboport-chest",
    order = "c[signal]-a[robochest-3]",
    place_result = "bob-robochest-3",
    stack_size = 10,
    drop_sound = roboport_drop_move,
    inventory_move_sound = roboport_drop_move,
    pick_sound = roboport_pick,
    weight = 50000,
  },

  {
    type = "item",
    name = "bob-robochest-4",
    icon = "__boblogistics__/graphics/icons/robochest-4.png",
    icon_size = 64,
    subgroup = "bob-logistic-roboport-chest",
    order = "c[signal]-a[robochest-4]",
    place_result = "bob-robochest-4",
    stack_size = 10,
    drop_sound = roboport_drop_move,
    inventory_move_sound = roboport_drop_move,
    pick_sound = roboport_pick,
    weight = 50000,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-logistic-zone-expander",
    icon = "__boblogistics__/graphics/icons/logistic-zone-expander.png",
    icon_size = 32,
    subgroup = "bob-logistic-roboport-zone",
    order = "c[signal]-a[logistic-zone-expander-1]",
    place_result = "bob-logistic-zone-expander",
    stack_size = 10,
    drop_sound = radio_drop_move,
    inventory_move_sound = radio_drop_move,
    pick_sound = radio_pick,
    weight = 20000,
  },

  {
    type = "item",
    name = "bob-logistic-zone-expander-2",
    icon = "__boblogistics__/graphics/icons/logistic-zone-expander-2.png",
    icon_size = 32,
    subgroup = "bob-logistic-roboport-zone",
    order = "c[signal]-a[logistic-zone-expander-2]",
    place_result = "bob-logistic-zone-expander-2",
    stack_size = 10,
    drop_sound = radio_drop_move,
    inventory_move_sound = radio_drop_move,
    pick_sound = radio_pick,
    weight = 20000,
  },

  {
    type = "item",
    name = "bob-logistic-zone-expander-3",
    icon = "__boblogistics__/graphics/icons/logistic-zone-expander-3.png",
    icon_size = 32,
    subgroup = "bob-logistic-roboport-zone",
    order = "c[signal]-a[logistic-zone-expander-3]",
    place_result = "bob-logistic-zone-expander-3",
    stack_size = 10,
    drop_sound = radio_drop_move,
    inventory_move_sound = radio_drop_move,
    pick_sound = radio_pick,
    weight = 20000,
  },

  {
    type = "item",
    name = "bob-logistic-zone-expander-4",
    icon = "__boblogistics__/graphics/icons/logistic-zone-expander-4.png",
    icon_size = 32,
    subgroup = "bob-logistic-roboport-zone",
    order = "c[signal]-a[logistic-zone-expander-4]",
    place_result = "bob-logistic-zone-expander-4",
    stack_size = 10,
    drop_sound = radio_drop_move,
    inventory_move_sound = radio_drop_move,
    pick_sound = radio_pick,
    weight = 20000,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-robo-charge-port",
    icon = "__boblogistics__/graphics/icons/robo-charge-port.png",
    icon_size = 32,
    subgroup = "bob-logistic-roboport-charge",
    order = "c[signal]-a[robo-charge-port-a-1]",
    place_result = "bob-robo-charge-port",
    stack_size = 10,
    drop_sound = charger_drop_move,
    inventory_move_sound = charger_drop_move,
    pick_sound = charger_pick,
    weight = 10000,
  },

  {
    type = "item",
    name = "bob-robo-charge-port-2",
    icon = "__boblogistics__/graphics/icons/robo-charge-port-2.png",
    icon_size = 32,
    subgroup = "bob-logistic-roboport-charge",
    order = "c[signal]-a[robo-charge-port-a-2]",
    place_result = "bob-robo-charge-port-2",
    stack_size = 10,
    drop_sound = charger_drop_move,
    inventory_move_sound = charger_drop_move,
    pick_sound = charger_pick,
    weight = 10000,
  },

  {
    type = "item",
    name = "bob-robo-charge-port-3",
    icon = "__boblogistics__/graphics/icons/robo-charge-port-3.png",
    icon_size = 32,
    subgroup = "bob-logistic-roboport-charge",
    order = "c[signal]-a[robo-charge-port-a-3]",
    place_result = "bob-robo-charge-port-3",
    stack_size = 10,
    drop_sound = charger_drop_move,
    inventory_move_sound = charger_drop_move,
    pick_sound = charger_pick,
    weight = 10000,
  },

  {
    type = "item",
    name = "bob-robo-charge-port-4",
    icon = "__boblogistics__/graphics/icons/robo-charge-port-4.png",
    icon_size = 32,
    subgroup = "bob-logistic-roboport-charge",
    order = "c[signal]-a[robo-charge-port-a-4]",
    place_result = "bob-robo-charge-port-4",
    stack_size = 10,
    drop_sound = charger_drop_move,
    inventory_move_sound = charger_drop_move,
    pick_sound = charger_pick,
    weight = 10000,
  },

  {
    type = "item",
    name = "bob-robo-charge-port-large",
    icon = "__boblogistics__/graphics/icons/robo-charge-port-large.png",
    icon_size = 32,
    subgroup = "bob-logistic-roboport-charge",
    order = "c[signal]-a[robo-charge-port-l-1]",
    place_result = "bob-robo-charge-port-large",
    stack_size = 10,
    drop_sound = charger_drop_move,
    inventory_move_sound = charger_drop_move,
    pick_sound = charger_pick,
    weight = 20000,
  },

  {
    type = "item",
    name = "bob-robo-charge-port-large-2",
    icon = "__boblogistics__/graphics/icons/robo-charge-port-large-2.png",
    icon_size = 32,
    subgroup = "bob-logistic-roboport-charge",
    order = "c[signal]-a[robo-charge-port-l-2]",
    place_result = "bob-robo-charge-port-large-2",
    stack_size = 10,
    drop_sound = charger_drop_move,
    inventory_move_sound = charger_drop_move,
    pick_sound = charger_pick,
    weight = 20000,
  },

  {
    type = "item",
    name = "bob-robo-charge-port-large-3",
    icon = "__boblogistics__/graphics/icons/robo-charge-port-large-3.png",
    icon_size = 32,
    subgroup = "bob-logistic-roboport-charge",
    order = "c[signal]-a[robo-charge-port-l-3]",
    place_result = "bob-robo-charge-port-large-3",
    stack_size = 10,
    drop_sound = charger_drop_move,
    inventory_move_sound = charger_drop_move,
    pick_sound = charger_pick,
    weight = 20000,
  },

  {
    type = "item",
    name = "bob-robo-charge-port-large-4",
    icon = "__boblogistics__/graphics/icons/robo-charge-port-large-4.png",
    icon_size = 32,
    subgroup = "bob-logistic-roboport-charge",
    order = "c[signal]-a[robo-charge-port-l-4]",
    place_result = "bob-robo-charge-port-large-4",
    stack_size = 10,
    drop_sound = charger_drop_move,
    inventory_move_sound = charger_drop_move,
    pick_sound = charger_pick,
    weight = 20000,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-logistic-zone-interface",
    icon = "__boblogistics__/graphics/icons/logistic-zone-interface.png",
    icon_size = 32,
    subgroup = "bob-logistic-roboport",
    order = "c[signal]-b[logistic-zone-interface]",
    place_result = "bob-logistic-zone-interface",
    stack_size = 10,
    drop_sound = {
      filename = "__base__/sound/item/rocket-control-inventory-move.ogg",
      volume = 0.4,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/rocket-control-inventory-move.ogg",
      volume = 0.4,
    },
    pick_sound = {
      filename = "__base__/sound/item/rocket-control-inventory-pickup.ogg",
      volume = 0.4,
    },
    weight = 10000,
  },
})
