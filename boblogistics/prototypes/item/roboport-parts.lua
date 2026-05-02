local roboport_drop_move = {
  filename = "__base__/sound/item/roboport-inventory-move.ogg",
  volume = 0.4,
}
local roboport_pick = {
  filename = "__base__/sound/item/roboport-inventory-pickup.ogg",
  volume = 0.3,
}

local radio_drop_move = {
  filename = "__base__/sound/item/robotic-inventory-move.ogg",
  volume = 0.6,
}
local radio_pick = {
  filename = "__base__/sound/item/robotic-inventory-pickup.ogg",
  volume = 0.4,
}

local charger_drop_move = {
  filename = "__base__/sound/item/electric-large-inventory-move.ogg",
  volume = 0.6,
}
local charger_pick = {
  filename = "__base__/sound/item/electric-large-inventory-pickup.ogg",
  volume = 0.6,
}

data:extend({
  {
    type = "item",
    name = "bob-roboport-antenna-1",
    icon = "__boblogistics__/graphics/icons/roboport-antenna.png",
    icon_size = 32,
    subgroup = "bob-roboport-parts-antenna",
    order = "b[roboport-antenna-1]",
    stack_size = 100,
    drop_sound = radio_drop_move,
    inventory_move_sound = radio_drop_move,
    pick_sound = radio_pick,
  },
  {
    type = "item",
    name = "bob-roboport-antenna-2",
    icon = "__boblogistics__/graphics/icons/roboport-antenna-2.png",
    icon_size = 32,
    subgroup = "bob-roboport-parts-antenna",
    order = "b[roboport-antenna-2]",
    stack_size = 100,
    drop_sound = radio_drop_move,
    inventory_move_sound = radio_drop_move,
    pick_sound = radio_pick,
  },
  {
    type = "item",
    name = "bob-roboport-antenna-3",
    icon = "__boblogistics__/graphics/icons/roboport-antenna-3.png",
    icon_size = 32,
    subgroup = "bob-roboport-parts-antenna",
    order = "b[roboport-antenna-3]",
    stack_size = 100,
    drop_sound = radio_drop_move,
    inventory_move_sound = radio_drop_move,
    pick_sound = radio_pick,
  },
  {
    type = "item",
    name = "bob-roboport-antenna-4",
    icon = "__boblogistics__/graphics/icons/roboport-antenna-4.png",
    icon_size = 32,
    subgroup = "bob-roboport-parts-antenna",
    order = "b[roboport-antenna-4]",
    stack_size = 100,
    drop_sound = radio_drop_move,
    inventory_move_sound = radio_drop_move,
    pick_sound = radio_pick,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-roboport-chargepad-1",
    icon = "__boblogistics__/graphics/icons/roboport-chargepad.png",
    icon_size = 32,
    subgroup = "bob-roboport-parts-charge",
    order = "b[roboport-chargepad-1]",
    stack_size = 100,
    drop_sound = charger_drop_move,
    inventory_move_sound = charger_drop_move,
    pick_sound = charger_pick,
  },
  {
    type = "item",
    name = "bob-roboport-chargepad-2",
    icon = "__boblogistics__/graphics/icons/roboport-chargepad-2.png",
    icon_size = 32,
    subgroup = "bob-roboport-parts-charge",
    order = "b[roboport-chargepad-2]",
    stack_size = 100,
    drop_sound = charger_drop_move,
    inventory_move_sound = charger_drop_move,
    pick_sound = charger_pick,
  },
  {
    type = "item",
    name = "bob-roboport-chargepad-3",
    icon = "__boblogistics__/graphics/icons/roboport-chargepad-3.png",
    icon_size = 32,
    subgroup = "bob-roboport-parts-charge",
    order = "b[roboport-chargepad-3]",
    stack_size = 100,
    drop_sound = charger_drop_move,
    inventory_move_sound = charger_drop_move,
    pick_sound = charger_pick,
  },
  {
    type = "item",
    name = "bob-roboport-chargepad-4",
    icon = "__boblogistics__/graphics/icons/roboport-chargepad-4.png",
    icon_size = 32,
    subgroup = "bob-roboport-parts-charge",
    order = "b[roboport-chargepad-4]",
    stack_size = 100,
    drop_sound = charger_drop_move,
    inventory_move_sound = charger_drop_move,
    pick_sound = charger_pick,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-roboport-door-1",
    icon = "__boblogistics__/graphics/icons/roboport-door.png",
    icon_size = 32,
    subgroup = "bob-roboport-parts-door",
    order = "b[roboport-door-1]",
    stack_size = 100,
    drop_sound = roboport_drop_move,
    inventory_move_sound = roboport_drop_move,
    pick_sound = roboport_pick,
  },
  {
    type = "item",
    name = "bob-roboport-door-2",
    icon = "__boblogistics__/graphics/icons/roboport-door-2.png",
    icon_size = 32,
    subgroup = "bob-roboport-parts-door",
    order = "b[roboport-door-2]",
    stack_size = 100,
    drop_sound = roboport_drop_move,
    inventory_move_sound = roboport_drop_move,
    pick_sound = roboport_pick,
  },
  {
    type = "item",
    name = "bob-roboport-door-3",
    icon = "__boblogistics__/graphics/icons/roboport-door-3.png",
    icon_size = 32,
    subgroup = "bob-roboport-parts-door",
    order = "b[roboport-door-3]",
    stack_size = 100,
    drop_sound = roboport_drop_move,
    inventory_move_sound = roboport_drop_move,
    pick_sound = roboport_pick,
  },
  {
    type = "item",
    name = "bob-roboport-door-4",
    icon = "__boblogistics__/graphics/icons/roboport-door-4.png",
    icon_size = 32,
    subgroup = "bob-roboport-parts-door",
    order = "b[roboport-door-4]",
    stack_size = 100,
    drop_sound = roboport_drop_move,
    inventory_move_sound = roboport_drop_move,
    pick_sound = roboport_pick,
  },
})
