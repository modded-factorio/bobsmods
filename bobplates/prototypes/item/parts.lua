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

data:extend({
  {
    type = "item",
    name = "steel-gear-wheel",
    icon = "__bobplates__/graphics/icons/steel-gear-wheel.png",
    icon_size = 32,
    subgroup = "bob-gears",
    order = "ba[steel-gear-wheel]",
    stack_size = 100,
    drop_sound = plate_drop_move,
    inventory_move_sound = plate_drop_move,
    pick_sound = plate_pick,
  },

  {
    type = "item",
    name = "steel-bearing-ball",
    icon = "__bobplates__/graphics/icons/steel-bearing-ball.png",
    icon_size = 32,
    subgroup = "bob-bearings",
    order = "baa[ball-bearing-steel]",
    stack_size = 500,
    drop_sound = ball_drop_move,
    inventory_move_sound = ball_drop_move,
    pick_sound = ball_pick,
  },

  {
    type = "item",
    name = "steel-bearing",
    icon = "__bobplates__/graphics/icons/steel-bearing.png",
    icon_size = 32,
    subgroup = "bob-bearings",
    order = "bba[bearing-steel]",
    stack_size = 100,
    drop_sound = bearing_drop_move,
    inventory_move_sound = bearing_drop_move,
    pick_sound = bearing_pick,
  },

  {
    type = "item",
    name = "brass-gear-wheel",
    icon = "__bobplates__/graphics/icons/brass-gear-wheel.png",
    icon_size = 32,
    subgroup = "bob-gears",
    order = "bb[brass-gear-wheel]",
    stack_size = 100,
    drop_sound = plate_drop_move,
    inventory_move_sound = plate_drop_move,
    pick_sound = plate_pick,
  },

  {
    type = "item",
    name = "cobalt-steel-gear-wheel",
    icon = "__bobplates__/graphics/icons/cobalt-steel-gear-wheel.png",
    icon_size = 32,
    subgroup = "bob-gears",
    order = "bc[cobalt-steel-gear-wheel]",
    stack_size = 100,
    drop_sound = plate_drop_move,
    inventory_move_sound = plate_drop_move,
    pick_sound = plate_pick,
  },

  {
    type = "item",
    name = "cobalt-steel-bearing-ball",
    icon = "__bobplates__/graphics/icons/cobalt-steel-bearing-ball.png",
    icon_size = 32,
    subgroup = "bob-bearings",
    order = "bac[ball-bearing-cobalt-steel]",
    stack_size = 500,
    drop_sound = ball_drop_move,
    inventory_move_sound = ball_drop_move,
    pick_sound = ball_pick,
  },

  {
    type = "item",
    name = "cobalt-steel-bearing",
    icon = "__bobplates__/graphics/icons/cobalt-steel-bearing.png",
    icon_size = 32,
    subgroup = "bob-bearings",
    order = "bbc[bearing-cobalt-steel]",
    stack_size = 100,
    drop_sound = bearing_drop_move,
    inventory_move_sound = bearing_drop_move,
    pick_sound = bearing_pick,
  },

  {
    type = "item",
    name = "titanium-gear-wheel",
    icon = "__bobplates__/graphics/icons/titanium-gear-wheel.png",
    icon_size = 32,
    subgroup = "bob-gears",
    order = "bd[titanium-gear-wheel]",
    stack_size = 100,
    drop_sound = plate_drop_move,
    inventory_move_sound = plate_drop_move,
    pick_sound = plate_pick,
  },

  {
    type = "item",
    name = "titanium-bearing-ball",
    icon = "__bobplates__/graphics/icons/titanium-bearing-ball.png",
    icon_size = 32,
    subgroup = "bob-bearings",
    order = "bad[ball-bearing-titanium]",
    stack_size = 500,
    drop_sound = ball_drop_move,
    inventory_move_sound = ball_drop_move,
    pick_sound = ball_pick,
  },

  {
    type = "item",
    name = "titanium-bearing",
    icon = "__bobplates__/graphics/icons/titanium-bearing.png",
    icon_size = 32,
    subgroup = "bob-bearings",
    order = "bbd[bearing-titanium]",
    stack_size = 100,
    drop_sound = bearing_drop_move,
    inventory_move_sound = bearing_drop_move,
    pick_sound = bearing_pick,
  },

  {
    type = "item",
    name = "tungsten-gear-wheel",
    icon = "__bobplates__/graphics/icons/tungsten-gear-wheel.png",
    icon_size = 32,
    subgroup = "bob-gears",
    order = "be[tungsten-gear-wheel]",
    stack_size = 100,
    drop_sound = plate_drop_move,
    inventory_move_sound = plate_drop_move,
    pick_sound = plate_pick,
  },

  {
    type = "item",
    name = "ceramic-bearing-ball",
    icon = "__bobplates__/graphics/icons/ceramic-bearing-ball.png",
    icon_size = 32,
    subgroup = "bob-bearings",
    order = "bae[ball-bearing-ceramic]",
    stack_size = 500,
    drop_sound = ball_drop_move,
    inventory_move_sound = ball_drop_move,
    pick_sound = ball_pick,
  },

  {
    type = "item",
    name = "ceramic-bearing",
    icon = "__bobplates__/graphics/icons/ceramic-bearing.png",
    icon_size = 32,
    subgroup = "bob-bearings",
    order = "bbe[bearing-ceramic]",
    stack_size = 100,
    drop_sound = bearing_drop_move,
    inventory_move_sound = bearing_drop_move,
    pick_sound = bearing_pick,
  },

  {
    type = "item",
    name = "nitinol-gear-wheel",
    icon = "__bobplates__/graphics/icons/nitinol-gear-wheel.png",
    icon_size = 32,
    subgroup = "bob-gears",
    order = "bf[nitinol-gear-wheel]",
    stack_size = 100,
    drop_sound = plate_drop_move,
    inventory_move_sound = plate_drop_move,
    pick_sound = plate_pick,
  },

  {
    type = "item",
    name = "nitinol-bearing-ball",
    icon = "__bobplates__/graphics/icons/nitinol-bearing-ball.png",
    icon_size = 32,
    subgroup = "bob-bearings",
    order = "baf[ball-bearing-nitinol]",
    stack_size = 500,
    drop_sound = ball_drop_move,
    inventory_move_sound = ball_drop_move,
    pick_sound = ball_pick,
  },

  {
    type = "item",
    name = "nitinol-bearing",
    icon = "__bobplates__/graphics/icons/nitinol-bearing.png",
    icon_size = 32,
    subgroup = "bob-bearings",
    order = "bbf[bearing-nitinol]",
    stack_size = 100,
    drop_sound = bearing_drop_move,
    inventory_move_sound = bearing_drop_move,
    pick_sound = bearing_pick,
  },

  {
    type = "item",
    name = "lithium-ion-battery",
    icon = "__bobplates__/graphics/icons/lithium-ion-battery.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "b[chemistry]-d[battery]-2",
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
      volume = 0.7
    },
  },

  {
    type = "item",
    name = "silver-zinc-battery",
    icon = "__bobplates__/graphics/icons/silver-zinc-battery.png",
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "b[chemistry]-d[battery]-3",
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
      volume = 0.7
    },
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
  },
})
