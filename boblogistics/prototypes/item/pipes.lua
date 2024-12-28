data.raw.item["pipe"].subgroup = "pipe"
data.raw.item["pipe-to-ground"].subgroup = "pipe-to-ground"

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
    name = "stone-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/stone-pipe.png",
    icon_size = 32,
    subgroup = "pipe",
    order = "a[pipe]-a[pipe]-1-3",
    place_result = "stone-pipe",
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
    name = "stone-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/stone-pipe-to-ground.png",
    icon_size = 32,
    subgroup = "pipe-to-ground",
    order = "a[pipe]-b[pipe-to-ground]-1-3",
    place_result = "stone-pipe-to-ground",
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
    name = "copper-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/copper-pipe.png",
    icon_size = 32,
    subgroup = "pipe",
    order = "a[pipe]-a[pipe]-1-1",
    place_result = "copper-pipe",
    stack_size = 100,
    drop_sound = pipe_drop_move,
    inventory_move_sound = pipe_drop_move,
    pick_sound = pipe_pick,
    weight = 5000,
  },

  {
    type = "item",
    name = "copper-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/copper-pipe-to-ground.png",
    icon_size = 32,
    subgroup = "pipe-to-ground",
    order = "a[pipe]-b[pipe-to-ground]-1-1",
    place_result = "copper-pipe-to-ground",
    stack_size = 50,
    drop_sound = pipe_drop_move,
    inventory_move_sound = pipe_drop_move,
    pick_sound = pipe_pick,
  },

  {
    type = "item",
    name = "steel-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/steel-pipe.png",
    icon_size = 32,
    subgroup = "pipe",
    order = "a[pipe]-a[pipe]-2-2",
    place_result = "steel-pipe",
    stack_size = 100,
    drop_sound = pipe_drop_move,
    inventory_move_sound = pipe_drop_move,
    pick_sound = pipe_pick,
    weight = 5000,
  },

  {
    type = "item",
    name = "steel-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/steel-pipe-to-ground.png",
    icon_size = 32,
    subgroup = "pipe-to-ground",
    order = "a[pipe]-b[pipe-to-ground]-2-2",
    place_result = "steel-pipe-to-ground",
    stack_size = 50,
    drop_sound = pipe_drop_move,
    inventory_move_sound = pipe_drop_move,
    pick_sound = pipe_pick,
  },

  {
    type = "item",
    name = "plastic-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/plastic-pipe.png",
    icon_size = 32,
    subgroup = "pipe",
    order = "a[pipe]-a[pipe]-2-3",
    place_result = "plastic-pipe",
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
    name = "plastic-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/plastic-pipe-to-ground.png",
    icon_size = 32,
    subgroup = "pipe-to-ground",
    order = "a[pipe]-b[pipe-to-ground]-2-3",
    place_result = "plastic-pipe-to-ground",
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
      name = "bronze-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/bronze-pipe.png",
      icon_size = 32,
      subgroup = "pipe",
      order = "a[pipe]-a[pipe]-2-1",
      place_result = "bronze-pipe",
      stack_size = 100,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
      weight = 5000,
    },

    {
      type = "item",
      name = "bronze-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/bronze-pipe-to-ground.png",
      icon_size = 32,
      subgroup = "pipe-to-ground",
      order = "a[pipe]-b[pipe-to-ground]-2-1",
      place_result = "bronze-pipe-to-ground",
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
      name = "brass-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/brass-pipe.png",
      icon_size = 32,
      subgroup = "pipe",
      order = "a[pipe]-a[pipe]-3-1",
      place_result = "brass-pipe",
      stack_size = 100,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
      weight = 5000,
    },

    {
      type = "item",
      name = "brass-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/brass-pipe-to-ground.png",
      icon_size = 32,
      subgroup = "pipe-to-ground",
      order = "a[pipe]-b[pipe-to-ground]-3-1",
      place_result = "brass-pipe-to-ground",
      stack_size = 50,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
    },
  })
end

if data.raw.item["silicon-nitride"] then
  data:extend({
    {
      type = "item",
      name = "ceramic-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/ceramic-pipe.png",
      icon_size = 32,
      subgroup = "pipe",
      order = "a[pipe]-a[pipe]-3-3",
      place_result = "ceramic-pipe",
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
      name = "ceramic-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/ceramic-pipe-to-ground.png",
      icon_size = 32,
      subgroup = "pipe-to-ground",
      order = "a[pipe]-b[pipe-to-ground]-3-3",
      place_result = "ceramic-pipe-to-ground",
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
      name = "titanium-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/titanium-pipe.png",
      icon_size = 32,
      subgroup = "pipe",
      order = "a[pipe]-a[pipe]-3-2",
      place_result = "titanium-pipe",
      stack_size = 100,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
      weight = 5000,
    },

    {
      type = "item",
      name = "titanium-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/titanium-pipe-to-ground.png",
      icon_size = 32,
      subgroup = "pipe-to-ground",
      order = "a[pipe]-b[pipe-to-ground]-3-2",
      place_result = "titanium-pipe-to-ground",
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
      name = "tungsten-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/tungsten-pipe.png",
      icon_size = 32,
      subgroup = "pipe",
      order = "a[pipe]-a[pipe]-4-2",
      place_result = "tungsten-pipe",
      stack_size = 100,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
      weight = 5000,
    },

    {
      type = "item",
      name = "tungsten-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/tungsten-pipe-to-ground.png",
      icon_size = 32,
      subgroup = "pipe-to-ground",
      order = "a[pipe]-b[pipe-to-ground]-4-2",
      place_result = "tungsten-pipe-to-ground",
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
      name = "nitinol-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/nitinol-pipe.png",
      icon_size = 32,
      subgroup = "pipe",
      order = "a[pipe]-a[pipe]-5-1",
      place_result = "nitinol-pipe",
      stack_size = 100,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
      weight = 5000,
    },

    {
      type = "item",
      name = "nitinol-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/nitinol-pipe-to-ground.png",
      icon_size = 32,
      subgroup = "pipe-to-ground",
      order = "a[pipe]-b[pipe-to-ground]-5-1",
      place_result = "nitinol-pipe-to-ground",
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
      name = "copper-tungsten-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/copper-tungsten-pipe.png",
      icon_size = 32,
      subgroup = "pipe",
      order = "a[pipe]-a[pipe]-5-2",
      place_result = "copper-tungsten-pipe",
      stack_size = 100,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
      weight = 5000,
    },

    {
      type = "item",
      name = "copper-tungsten-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/copper-tungsten-pipe-to-ground.png",
      icon_size = 32,
      subgroup = "pipe-to-ground",
      order = "a[pipe]-b[pipe-to-ground]-5-2",
      place_result = "copper-tungsten-pipe-to-ground",
      stack_size = 50,
      drop_sound = pipe_drop_move,
      inventory_move_sound = pipe_drop_move,
      pick_sound = pipe_pick,
    },
  })
end
