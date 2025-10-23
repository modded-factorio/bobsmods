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
    name = "bob-valve",
    icon = "__boblogistics__/graphics/icons/pipe/valve.png",
    icon_size = 32,
    subgroup = "bob-pipe",
    order = "a[pipe]-c[valve]",
    place_result = "bob-valve",
    stack_size = 100,
    weight = 10000,
    drop_sound = pipe_drop_move,
    inventory_move_sound = pipe_drop_move,
    pick_sound = pipe_pick,
  },
  {
    type = "recipe",
    name = "bob-valve",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
      { type = "item", name = "pipe", amount = 1 },
    },
    results = { { type = "item", name = "bob-valve", amount = 1 } },
    auto_recycle = true,
  },
  {
    type = "valve",
    name = "bob-valve",
    icon = "__boblogistics__/graphics/icons/pipe/valve.png",
    icon_size = 32,
    icon_draw_specification = {
      scale = 0.5
    },
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "bob-valve" },
    max_health = 50,
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    resistances = {
      {
        type = "fire",
        percent = 80,
      },
    },
    collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    fluid_box = {
      volume = 100,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = { 0, 0 }, direction = defines.direction.north, flow_direction = "output" },
        { position = { 0, 0 }, direction = defines.direction.south, flow_direction = "input-output" },
      },
    },
    flow_rate = 20,
    mode = "one-way",
    impact_category = "metal",
    animations = {
      north = {
        layers = {
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-straight-vertical.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-up.png",
            width = 46,
            height = 52,
            shift = { 0.09375, 0.03125 + 0.0625 },
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-up-mask.png",
            width = 46,
            height = 52,
            shift = { 0.09375, 0.03125 + 0.0625 },
            tint = { r = 0, g = 0, b = 1, a = 1 },
          },
        },
      },
      south = {
        layers = {
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-straight-vertical.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-down.png",
            width = 61,
            height = 58,
            shift = { 0.421875, -0.125 },
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-down-mask.png",
            width = 61,
            height = 58,
            shift = { 0.421875, -0.125 },
            tint = { r = 0, g = 0, b = 1, a = 1 },
          },
        },
      },
      west = {
        layers = {
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-left.png",
            width = 56,
            height = 44,
            shift = { 0.46875, 0.21875 },
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-left-mask.png",
            width = 56,
            height = 44,
            shift = { 0.46875, 0.21875 },
            tint = { r = 0, g = 0, b = 1, a = 1 },
          },
        },
      },
      east = {
        layers = {
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-right.png",
            width = 51,
            height = 56,
            shift = { 0.109375, -0.0625 },
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-right-mask.png",
            width = 51,
            height = 56,
            shift = { 0.109375, -0.0625 },
            tint = { r = 0, g = 0, b = 1, a = 1 },
          },
        },
      },
    },
  },

  {
    type = "item",
    name = "bob-overflow-valve",
    icon = "__boblogistics__/graphics/icons/pipe/overflow-valve.png",
    icon_size = 32,
    subgroup = "bob-pipe",
    order = "a[pipe]-d[overflow-valve]",
    place_result = "bob-overflow-valve",
    stack_size = 100,
    weight = 10000,
    drop_sound = pipe_drop_move,
    inventory_move_sound = pipe_drop_move,
    pick_sound = pipe_pick,
  },
  {
    type = "recipe",
    name = "bob-overflow-valve",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
      { type = "item", name = "pipe", amount = 1 },
    },
    results = { { type = "item", name = "bob-overflow-valve", amount = 1 } },
    auto_recycle = true,
  },
  {
    type = "valve",
    name = "bob-overflow-valve",
    icon = "__boblogistics__/graphics/icons/pipe/overflow-valve.png",
    icon_size = 32,
    icon_draw_specification = {
      scale = 0.5
    },
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "bob-overflow-valve" },
    max_health = 50,
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    resistances = {
      {
        type = "fire",
        percent = 80,
      },
    },
    collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    fluid_box = {
      volume = 100,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = { 0, 0 }, direction = defines.direction.north, flow_direction = "output" },
        { position = { 0, 0 }, direction = defines.direction.south, flow_direction = "input-output" },
      },
    },
    flow_rate = 20,
    mode = "overflow",
    threshold = 0.8,
    impact_category = "metal",
    animations = {
      north = {
        layers = {
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-straight-vertical.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-up.png",
            width = 46,
            height = 52,
            shift = { 0.09375, 0.03125 + 0.0625 },
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-up-mask.png",
            width = 46,
            height = 52,
            shift = { 0.09375, 0.03125 + 0.0625 },
            tint = { r = 1, g = 0, b = 0, a = 1 },
          },
        },
      },
      south = {
        layers = {
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-straight-vertical.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-down.png",
            width = 61,
            height = 58,
            shift = { 0.421875, -0.125 },
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-down-mask.png",
            width = 61,
            height = 58,
            shift = { 0.421875, -0.125 },
            tint = { r = 1, g = 0, b = 0, a = 1 },
          },
        },
      },
      west = {
        layers = {
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-left.png",
            width = 56,
            height = 44,
            shift = { 0.46875, 0.21875 },
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-left-mask.png",
            width = 56,
            height = 44,
            shift = { 0.46875, 0.21875 },
            tint = { r = 1, g = 0, b = 0, a = 1 },
          },
        },
      },
      east = {
        layers = {
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-right.png",
            width = 51,
            height = 56,
            shift = { 0.109375, -0.0625 },
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-right-mask.png",
            width = 51,
            height = 56,
            shift = { 0.109375, -0.0625 },
            tint = { r = 1, g = 0, b = 0, a = 1 },
          },
        },
      },
    },
  },

  {
    type = "item",
    name = "bob-topup-valve",
    icon = "__boblogistics__/graphics/icons/pipe/topup-valve.png",
    icon_size = 32,
    subgroup = "bob-pipe",
    order = "a[pipe]-d[topup-valve]",
    place_result = "bob-topup-valve",
    stack_size = 100,
    weight = 10000,
    drop_sound = pipe_drop_move,
    inventory_move_sound = pipe_drop_move,
    pick_sound = pipe_pick,
  },
  {
    type = "recipe",
    name = "bob-topup-valve",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
      { type = "item", name = "pipe", amount = 1 },
    },
    results = { { type = "item", name = "bob-topup-valve", amount = 1 } },
    auto_recycle = true,
  },
  {
    type = "valve",
    name = "bob-topup-valve",
    icon = "__boblogistics__/graphics/icons/pipe/topup-valve.png",
    icon_size = 32,
    icon_draw_specification = {
      scale = 0.5
    },
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "bob-topup-valve" },
    max_health = 50,
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    resistances = {
      {
        type = "fire",
        percent = 80,
      },
    },
    collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    fluid_box = {
      volume = 100,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = { 0, 0 }, direction = defines.direction.north, flow_direction = "output" },
        { position = { 0, 0 }, direction = defines.direction.south, flow_direction = "input-output" },
      },
    },
    flow_rate = 20,
    mode = "top-up",
    threshold = 0.2,
    impact_category = "metal",
    animations = {
      north = {
        layers = {
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-straight-vertical.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-up.png",
            width = 46,
            height = 52,
            shift = { 0.09375, 0.03125 + 0.0625 },
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-up-mask.png",
            width = 46,
            height = 52,
            shift = { 0.09375, 0.03125 + 0.0625 },
            tint = { r = 0, g = 1, b = 0, a = 1 },
          },
        },
      },
      south = {
        layers = {
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-straight-vertical.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-down.png",
            width = 61,
            height = 58,
            shift = { 0.421875, -0.125 },
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-down-mask.png",
            width = 61,
            height = 58,
            shift = { 0.421875, -0.125 },
            tint = { r = 0, g = 1, b = 0, a = 1 },
          },
        },
      },
      west = {
        layers = {
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-left.png",
            width = 56,
            height = 44,
            shift = { 0.46875, 0.21875 },
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-left-mask.png",
            width = 56,
            height = 44,
            shift = { 0.46875, 0.21875 },
            tint = { r = 0, g = 1, b = 0, a = 1 },
          },
        },
      },
      east = {
        layers = {
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-right.png",
            width = 51,
            height = 56,
            shift = { 0.109375, -0.0625 },
          },
          {
            filename = "__boblogistics__/graphics/entity/pipe/pipe-arrow-right-mask.png",
            width = 51,
            height = 56,
            shift = { 0.109375, -0.0625 },
            tint = { r = 0, g = 1, b = 0, a = 1 },
          },
        },
      },
    },
  },
})

if feature_flags["freezing"] and mods["space-age"] then
  data.raw.valve["bob-valve"].heating_energy = "10kW"
  data.raw.valve["bob-overflow-valve"].heating_energy = "10kW"
  data.raw.valve["bob-topup-valve"].heating_energy = "10kW"

  local pcfrozenpatch = data.raw.pipe.pipe.fluid_box.pipe_covers_frozen
  local frozenpatchNS = {
    filename = "__space-age__/graphics/entity/frozen/pipe/pipe-straight-vertical.png",
    width = 128,
    height = 128,
    priority = "extra-high",
    scale = 0.5,
  }
  local frozenpatchEW = {
    filename = "__space-age__/graphics/entity/frozen/pipe/pipe-straight-horizontal.png",
    width = 128,
    height = 128,
    priority = "extra-high",
    scale = 0.5,
  }
  data.raw.valve["bob-valve"].fluid_box.pipe_covers_frozen = pcfrozenpatch
  data.raw.valve["bob-valve"].frozen_patch = {}
  data.raw.valve["bob-valve"].frozen_patch.north = frozenpatchNS
  data.raw.valve["bob-valve"].frozen_patch.south = frozenpatchNS
  data.raw.valve["bob-valve"].frozen_patch.east = frozenpatchEW
  data.raw.valve["bob-valve"].frozen_patch.west = frozenpatchEW

  data.raw.valve["bob-overflow-valve"].fluid_box.pipe_covers_frozen = pcfrozenpatch
  data.raw.valve["bob-overflow-valve"].frozen_patch = {}
  data.raw.valve["bob-overflow-valve"].frozen_patch.north = frozenpatchNS
  data.raw.valve["bob-overflow-valve"].frozen_patch.south = frozenpatchNS
  data.raw.valve["bob-overflow-valve"].frozen_patch.east = frozenpatchEW
  data.raw.valve["bob-overflow-valve"].frozen_patch.west = frozenpatchEW

  data.raw.valve["bob-topup-valve"].fluid_box.pipe_covers_frozen = pcfrozenpatch
  data.raw.valve["bob-topup-valve"].frozen_patch = {}
  data.raw.valve["bob-topup-valve"].frozen_patch.north = frozenpatchNS
  data.raw.valve["bob-topup-valve"].frozen_patch.south = frozenpatchNS
  data.raw.valve["bob-topup-valve"].frozen_patch.east = frozenpatchEW
  data.raw.valve["bob-topup-valve"].frozen_patch.west = frozenpatchEW
  
  
end
