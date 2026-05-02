data.raw.item["logistic-robot"].order = "a[robot]-a[logistic-robot-1]"
data.raw.item["logistic-robot"].subgroup = "bob-logistic-robots"
data.raw.item["logistic-robot"].icon = "__boblogistics__/graphics/icons/robots/logistic-robot-1.png"
data.raw.item["logistic-robot"].icon_size = 32

data.raw.item["construction-robot"].order = "a[robot]-b[construction-robot-1]"
data.raw.item["construction-robot"].subgroup = "bob-construction-robots"
data.raw.item["construction-robot"].icon = "__boblogistics__/graphics/icons/robots/construction-robot-1.png"
data.raw.item["construction-robot"].icon_size = 32

local robot_drop_move = {
  filename = "__base__/sound/item/robotic-inventory-move.ogg",
  volume = 0.8,
}
local robot_pick = {
  filename = "__base__/sound/item/robotic-inventory-pickup.ogg",
  volume = 0.5,
}

data:extend({
  {
    type = "item",
    name = "bob-logistic-robot-2",
    icon = "__boblogistics__/graphics/icons/robots/logistic-robot-2.png",
    icon_size = 32,
    subgroup = "bob-logistic-robots",
    order = "a[robot]-a[logistic-robot-2]",
    place_result = "bob-logistic-robot-2",
    stack_size = 50,
    drop_sound = robot_drop_move,
    inventory_move_sound = robot_drop_move,
    pick_sound = robot_pick,
  },

  {
    type = "item",
    name = "bob-logistic-robot-3",
    icon = "__boblogistics__/graphics/icons/robots/logistic-robot-3.png",
    icon_size = 32,
    subgroup = "bob-logistic-robots",
    order = "a[robot]-a[logistic-robot-3]",
    place_result = "bob-logistic-robot-3",
    stack_size = 50,
    drop_sound = robot_drop_move,
    inventory_move_sound = robot_drop_move,
    pick_sound = robot_pick,
  },

  {
    type = "item",
    name = "bob-logistic-robot-4",
    icon = "__boblogistics__/graphics/icons/robots/logistic-robot-4.png",
    icon_size = 32,
    subgroup = "bob-logistic-robots",
    order = "a[robot]-a[logistic-robot-4]",
    place_result = "bob-logistic-robot-4",
    stack_size = 50,
    drop_sound = robot_drop_move,
    inventory_move_sound = robot_drop_move,
    pick_sound = robot_pick,
  },

  {
    type = "item",
    name = "bob-logistic-robot-5",
    icon = "__boblogistics__/graphics/icons/robots/logistic-robot-5.png",
    icon_size = 32,
    subgroup = "bob-logistic-robots",
    order = "a[robot]-a[logistic-robot-5]",
    place_result = "bob-logistic-robot-5",
    stack_size = 50,
    drop_sound = robot_drop_move,
    inventory_move_sound = robot_drop_move,
    pick_sound = robot_pick,
  },

  {
    type = "item",
    name = "bob-construction-robot-2",
    icon = "__boblogistics__/graphics/icons/robots/construction-robot-2.png",
    icon_size = 32,
    subgroup = "bob-construction-robots",
    order = "a[robot]-b[construction-robot-2]",
    place_result = "bob-construction-robot-2",
    stack_size = 50,
    drop_sound = robot_drop_move,
    inventory_move_sound = robot_drop_move,
    pick_sound = robot_pick,
  },

  {
    type = "item",
    name = "bob-construction-robot-3",
    icon = "__boblogistics__/graphics/icons/robots/construction-robot-3.png",
    icon_size = 32,
    subgroup = "bob-construction-robots",
    order = "a[robot]-b[construction-robot-3]",
    place_result = "bob-construction-robot-3",
    stack_size = 50,
    drop_sound = robot_drop_move,
    inventory_move_sound = robot_drop_move,
    pick_sound = robot_pick,
  },

  {
    type = "item",
    name = "bob-construction-robot-4",
    icon = "__boblogistics__/graphics/icons/robots/construction-robot-4.png",
    icon_size = 32,
    subgroup = "bob-construction-robots",
    order = "a[robot]-b[construction-robot-4]",
    place_result = "bob-construction-robot-4",
    stack_size = 50,
    drop_sound = robot_drop_move,
    inventory_move_sound = robot_drop_move,
    pick_sound = robot_pick,
  },

  {
    type = "item",
    name = "bob-construction-robot-5",
    icon = "__boblogistics__/graphics/icons/robots/construction-robot-5.png",
    icon_size = 32,
    subgroup = "bob-construction-robots",
    order = "a[robot]-b[construction-robot-5]",
    place_result = "bob-construction-robot-5",
    stack_size = 50,
    drop_sound = robot_drop_move,
    inventory_move_sound = robot_drop_move,
    pick_sound = robot_pick,
  },
})
