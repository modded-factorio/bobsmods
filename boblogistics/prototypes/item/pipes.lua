data.raw.item["pipe"].subgroup = "bob-pipe"
data.raw.item["pipe-to-ground"].subgroup = "bob-pipe-to-ground"

data.raw.item["pipe"].order = "a[pipe]-a[pipe]-1-2"
data.raw.item["pipe-to-ground"].order = "a[pipe]-b[pipe-to-ground]-1-2"

local pipe_drop_move = {
  filename = "__base__/sound/item/metal-small-inventory-move.ogg",
  volume = 0.8,
}
local pipe_pick = {
  filename = "__base__/sound/item/metal-small-inventory-pickup.ogg",
  volume = 0.8,
}

data:extend({
  {
    type = "item",
    name = "bob-stone-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/stone-pipe.png",
    icon_size = 64,
    subgroup = "bob-pipe",
    order = "a[pipe]-a[pipe]-1-3",
    place_result = "bob-stone-pipe",
    stack_size = 100,
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
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-stone-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/stone-pipe-to-ground.png",
    icon_size = 64,
    subgroup = "bob-pipe-to-ground",
    order = "a[pipe]-b[pipe-to-ground]-1-3",
    place_result = "bob-stone-pipe-to-ground",
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
    name = "bob-copper-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/copper-pipe.png",
    icon_size = 64,
    subgroup = "bob-pipe",
    order = "a[pipe]-a[pipe]-1-1",
    place_result = "bob-copper-pipe",
    stack_size = 100,
    drop_sound = pipe_drop_move,
    inventory_move_sound = pipe_drop_move,
    pick_sound = pipe_pick,
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-copper-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/copper-pipe-to-ground.png",
    icon_size = 64,
    subgroup = "bob-pipe-to-ground",
    order = "a[pipe]-b[pipe-to-ground]-1-1",
    place_result = "bob-copper-pipe-to-ground",
    stack_size = 50,
    drop_sound = pipe_drop_move,
    inventory_move_sound = pipe_drop_move,
    pick_sound = pipe_pick,
  },

  {
    type = "item",
    name = "bob-steel-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/steel-pipe.png",
    icon_size = 64,
    subgroup = "bob-pipe",
    order = "a[pipe]-a[pipe]-2-2",
    place_result = "bob-steel-pipe",
    stack_size = 100,
    drop_sound = pipe_drop_move,
    inventory_move_sound = pipe_drop_move,
    pick_sound = pipe_pick,
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-steel-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/steel-pipe-to-ground.png",
    icon_size = 64,
    subgroup = "bob-pipe-to-ground",
    order = "a[pipe]-b[pipe-to-ground]-2-2",
    place_result = "bob-steel-pipe-to-ground",
    stack_size = 50,
    drop_sound = pipe_drop_move,
    inventory_move_sound = pipe_drop_move,
    pick_sound = pipe_pick,
  },

  {
    type = "item",
    name = "bob-plastic-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/plastic-pipe.png",
    icon_size = 64,
    subgroup = "bob-pipe",
    order = "a[pipe]-a[pipe]-2-3",
    place_result = "bob-plastic-pipe",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/plastic-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/plastic-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/plastic-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 5000,
  },

  {
    type = "item",
    name = "bob-plastic-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/plastic-pipe-to-ground.png",
    icon_size = 64,
    subgroup = "bob-pipe-to-ground",
    order = "a[pipe]-b[pipe-to-ground]-2-3",
    place_result = "bob-plastic-pipe-to-ground",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/plastic-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/plastic-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/plastic-inventory-pickup.ogg",
      volume = 0.7,
    },
  },
})

if data.raw.item["bob-bronze-alloy"] then
  data:extend({
    {
      type = "item",
      name = "bob-bronze-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/bronze-pipe.png",
      icon_size = 64,
      subgroup = "bob-pipe",
      order = "a[pipe]-a[pipe]-2-1",
      place_result = "bob-bronze-pipe",
      stack_size = 100,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
      weight = 5000,
    },

    {
      type = "item",
      name = "bob-bronze-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/bronze-pipe-to-ground.png",
      icon_size = 64,
      subgroup = "bob-pipe-to-ground",
      order = "a[pipe]-b[pipe-to-ground]-2-1",
      place_result = "bob-bronze-pipe-to-ground",
      stack_size = 50,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
    },
  })
end

if data.raw.item["bob-brass-alloy"] then
  data:extend({
    {
      type = "item",
      name = "bob-brass-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/brass-pipe.png",
      icon_size = 64,
      subgroup = "bob-pipe",
      order = "a[pipe]-a[pipe]-3-1",
      place_result = "bob-brass-pipe",
      stack_size = 100,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
      weight = 5000,
    },

    {
      type = "item",
      name = "bob-brass-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/brass-pipe-to-ground.png",
      icon_size = 64,
      subgroup = "bob-pipe-to-ground",
      order = "a[pipe]-b[pipe-to-ground]-3-1",
      place_result = "bob-brass-pipe-to-ground",
      stack_size = 50,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
    },
  })
end

if data.raw.item["bob-silicon-nitride"] then
  data:extend({
    {
      type = "item",
      name = "bob-ceramic-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/ceramic-pipe.png",
      icon_size = 64,
      subgroup = "bob-pipe",
      order = "a[pipe]-a[pipe]-3-3",
      place_result = "bob-ceramic-pipe",
      stack_size = 100,
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
      weight = 5000,
    },

    {
      type = "item",
      name = "bob-ceramic-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/ceramic-pipe-to-ground.png",
      icon_size = 64,
      subgroup = "bob-pipe-to-ground",
      order = "a[pipe]-b[pipe-to-ground]-3-3",
      place_result = "bob-ceramic-pipe-to-ground",
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
  })
end

if data.raw.item["bob-titanium-plate"] then
  data:extend({
    {
      type = "item",
      name = "bob-titanium-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/titanium-pipe.png",
      icon_size = 64,
      subgroup = "bob-pipe",
      order = "a[pipe]-a[pipe]-3-2",
      place_result = "bob-titanium-pipe",
      stack_size = 100,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
      weight = 5000,
    },

    {
      type = "item",
      name = "bob-titanium-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/titanium-pipe-to-ground.png",
      icon_size = 64,
      subgroup = "bob-pipe-to-ground",
      order = "a[pipe]-b[pipe-to-ground]-3-2",
      place_result = "bob-titanium-pipe-to-ground",
      stack_size = 50,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
    },
  })
end

if data.raw.item["bob-tungsten-plate"] then
  data:extend({
    {
      type = "item",
      name = "bob-tungsten-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/tungsten-pipe.png",
      icon_size = 64,
      subgroup = "bob-pipe",
      order = "a[pipe]-a[pipe]-4-2",
      place_result = "bob-tungsten-pipe",
      stack_size = 100,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
      weight = 5000,
    },

    {
      type = "item",
      name = "bob-tungsten-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/tungsten-pipe-to-ground.png",
      icon_size = 64,
      subgroup = "bob-pipe-to-ground",
      order = "a[pipe]-b[pipe-to-ground]-4-2",
      place_result = "bob-tungsten-pipe-to-ground",
      stack_size = 50,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
    },
  })
end

if data.raw.item["bob-nitinol-alloy"] then
  data:extend({
    {
      type = "item",
      name = "bob-nitinol-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/nitinol-pipe.png",
      icon_size = 64,
      subgroup = "bob-pipe",
      order = "a[pipe]-a[pipe]-5-1",
      place_result = "bob-nitinol-pipe",
      stack_size = 100,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
      weight = 5000,
    },

    {
      type = "item",
      name = "bob-nitinol-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/nitinol-pipe-to-ground.png",
      icon_size = 64,
      subgroup = "bob-pipe-to-ground",
      order = "a[pipe]-b[pipe-to-ground]-5-1",
      place_result = "bob-nitinol-pipe-to-ground",
      stack_size = 50,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
    },
  })
end

if data.raw.item["bob-copper-tungsten-alloy"] then
  data:extend({
    {
      type = "item",
      name = "bob-copper-tungsten-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/copper-tungsten-pipe.png",
      icon_size = 64,
      subgroup = "bob-pipe",
      order = "a[pipe]-a[pipe]-5-2",
      place_result = "bob-copper-tungsten-pipe",
      stack_size = 100,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
      weight = 5000,
    },

    {
      type = "item",
      name = "bob-copper-tungsten-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/copper-tungsten-pipe-to-ground.png",
      icon_size = 64,
      subgroup = "bob-pipe-to-ground",
      order = "a[pipe]-b[pipe-to-ground]-5-2",
      place_result = "bob-copper-tungsten-pipe-to-ground",
      stack_size = 50,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
    },
  })
end
