local plate_drop_move = {
  filename = "__base__/sound/item/metal-small-inventory-move.ogg",
  volume = 0.8,
}
local plate_pick = {
  filename = "__base__/sound/item/metal-small-inventory-pickup.ogg",
  volume = 0.8,
}
local bearing_drop_move = {
  filename = "__base__/sound/item/metal-small-inventory-move.ogg",
  volume = 1,
  speed = 1.8,
}
local bearing_pick = {
  filename = "__base__/sound/item/metal-small-inventory-pickup.ogg",
  volume = 1,
  speed = 1.6,
}
local ball_drop_move = {
  filename = "__base__/sound/item/low-density-inventory-move.ogg",
  volume = 0.9,
  speed = 1.6,
}
local ball_pick = {
  filename = "__base__/sound/item/low-density-inventory-pickup.ogg",
  volume = 0.7,
  speed = 1.6,
}

data.raw.item["iron-gear-wheel"].weight = 2000
data.raw.item["battery"].weight = 5000

data:extend({
  {
    type = "item",
    name = "bob-steel-gear-wheel",
    icon = "__bobplates__/graphics/icons/steel-gear-wheel.png",
    icon_size = 32,
    subgroup = "bob-gears",
    order = "ba[bob-steel-gear-wheel]",
    stack_size = 100,
    drop_sound = plate_drop_move,
    inventory_move_sound = plate_drop_move,
    pick_sound = plate_pick,
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-steel-bearing-ball",
    icon = "__bobplates__/graphics/icons/steel-bearing-ball.png",
    icon_size = 32,
    subgroup = "bob-bearings",
    order = "baa[bob-ball-bearing-steel]",
    stack_size = 500,
    drop_sound = ball_drop_move,
    inventory_move_sound = ball_drop_move,
    pick_sound = ball_pick,
    weight = 200,
  },

  {
    type = "item",
    name = "bob-steel-bearing",
    icon = "__bobplates__/graphics/icons/steel-bearing.png",
    icon_size = 32,
    subgroup = "bob-bearings",
    order = "bba[bob-bearing-steel]",
    stack_size = 100,
    drop_sound = bearing_drop_move,
    inventory_move_sound = bearing_drop_move,
    pick_sound = bearing_pick,
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-cobalt-steel-gear-wheel",
    icon = "__bobplates__/graphics/icons/cobalt-steel-gear-wheel.png",
    icon_size = 32,
    subgroup = "bob-gears",
    order = "bb[bob-cobalt-steel-gear-wheel]",
    stack_size = 100,
    drop_sound = plate_drop_move,
    inventory_move_sound = plate_drop_move,
    pick_sound = plate_pick,
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-cobalt-steel-bearing-ball",
    icon = "__bobplates__/graphics/icons/cobalt-steel-bearing-ball.png",
    icon_size = 32,
    subgroup = "bob-bearings",
    order = "bab[bob-ball-bearing-cobalt-steel]",
    stack_size = 500,
    drop_sound = ball_drop_move,
    inventory_move_sound = ball_drop_move,
    pick_sound = ball_pick,
    weight = 200,
  },

  {
    type = "item",
    name = "bob-cobalt-steel-bearing",
    icon = "__bobplates__/graphics/icons/cobalt-steel-bearing.png",
    icon_size = 32,
    subgroup = "bob-bearings",
    order = "bbb[bob-bearing-cobalt-steel]",
    stack_size = 100,
    drop_sound = bearing_drop_move,
    inventory_move_sound = bearing_drop_move,
    pick_sound = bearing_pick,
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-brass-gear-wheel",
    icon = "__bobplates__/graphics/icons/brass-gear-wheel.png",
    icon_size = 32,
    subgroup = "bob-gears",
    order = "bc[bob-brass-gear-wheel]",
    stack_size = 100,
    drop_sound = plate_drop_move,
    inventory_move_sound = plate_drop_move,
    pick_sound = plate_pick,
    weight = 2000,
  },

  {
    type = "item",
    name = "bob-titanium-gear-wheel",
    icon = "__bobplates__/graphics/icons/titanium-gear-wheel.png",
    icon_size = 32,
    subgroup = "bob-gears",
    order = "bd[bob-titanium-gear-wheel]",
    stack_size = 100,
    drop_sound = plate_drop_move,
    inventory_move_sound = plate_drop_move,
    pick_sound = plate_pick,
    weight = 1000,
  },

  {
    type = "item",
    name = "bob-titanium-bearing-ball",
    icon = "__bobplates__/graphics/icons/titanium-bearing-ball.png",
    icon_size = 32,
    subgroup = "bob-bearings",
    order = "bad[bob-ball-bearing-titanium]",
    stack_size = 500,
    drop_sound = ball_drop_move,
    inventory_move_sound = ball_drop_move,
    pick_sound = ball_pick,
    weight = 40,
  },

  {
    type = "item",
    name = "bob-titanium-bearing",
    icon = "__bobplates__/graphics/icons/titanium-bearing.png",
    icon_size = 32,
    subgroup = "bob-bearings",
    order = "bbd[bob-bearing-titanium]",
    stack_size = 100,
    drop_sound = bearing_drop_move,
    inventory_move_sound = bearing_drop_move,
    pick_sound = bearing_pick,
    weight = 1000,
  },

  {
    type = "item",
    name = "bob-tungsten-gear-wheel",
    icon = "__bobplates__/graphics/icons/tungsten-gear-wheel.png",
    icon_size = 32,
    subgroup = "bob-gears",
    order = "be[bob-tungsten-gear-wheel]",
    stack_size = 100,
    drop_sound = plate_drop_move,
    inventory_move_sound = plate_drop_move,
    pick_sound = plate_pick,
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-nitinol-gear-wheel",
    icon = "__bobplates__/graphics/icons/nitinol-gear-wheel.png",
    icon_size = 32,
    subgroup = "bob-gears",
    order = "bf[bob-nitinol-gear-wheel]",
    stack_size = 100,
    drop_sound = plate_drop_move,
    inventory_move_sound = plate_drop_move,
    pick_sound = plate_pick,
    weight = 2000,
  },

  {
    type = "item",
    name = "bob-nitinol-bearing-ball",
    icon = "__bobplates__/graphics/icons/nitinol-bearing-ball.png",
    icon_size = 32,
    subgroup = "bob-bearings",
    order = "baf[bob-ball-bearing-nitinol]",
    stack_size = 500,
    drop_sound = ball_drop_move,
    inventory_move_sound = ball_drop_move,
    pick_sound = ball_pick,
    weight = 80,
  },

  {
    type = "item",
    name = "bob-nitinol-bearing",
    icon = "__bobplates__/graphics/icons/nitinol-bearing.png",
    icon_size = 32,
    subgroup = "bob-bearings",
    order = "bbf[bob-bearing-nitinol]",
    stack_size = 100,
    drop_sound = bearing_drop_move,
    inventory_move_sound = bearing_drop_move,
    pick_sound = bearing_pick,
    weight = 2000,
  },

  {
    type = "item",
    name = "bob-battery-2",
    localised_name = { "item-name.bob-lithium-ion-battery" },
    icon = "__bobplates__/graphics/icons/lithium-ion-battery.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "b[chemistry]-d[bob-battery]-2",
    stack_size = 200,
    drop_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-battery-3",
    localised_name = { "item-name.bob-silver-zinc-battery" },
    icon = "__bobplates__/graphics/icons/silver-zinc-battery.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "b[chemistry]-d[bob-battery]-3",
    stack_size = 200,
    drop_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-grinding-wheel",
    icon = "__bobplates__/graphics/icons/grinding-wheel.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "f-cca[bob-grinding-wheel]",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.7,
      speed = 1.3,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.7,
      speed = 1.3,
    },
    pick_sound = {
      filename = "__base__/sound/item/explosive-inventory-move.ogg",
      volume = 1,
    },
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-polishing-wheel",
    icon = "__bobplates__/graphics/icons/polishing-wheel.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "f-ccb[bob-polishing-wheel]",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.7,
      speed = 1.3,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.7,
      speed = 1.3,
    },
    pick_sound = {
      filename = "__base__/sound/item/explosive-inventory-move.ogg",
      volume = 1,
    },
    weight = 5000,
  },
})

if mods["space-age"] then
  data.raw.item["bob-battery-2"].localised_name = { "item-name.bob-silver-zinc-battery" }
  data.raw.item["bob-battery-3"].localised_name = { "item-name.bob-lithium-ion-battery" }
  data.raw.item["bob-battery-2"].icon = "__bobplates__/graphics/icons/silver-zinc-battery.png"
  data.raw.item["bob-battery-3"].icon = "__bobplates__/graphics/icons/lithium-ion-battery.png"
end
