local electronic_part_drop_move = {
  filename = "__base__/sound/item/wire-inventory-move.ogg",
  volume = 0.8,
}
local electronic_part_pick = {
  filename = "__base__/sound/item/wire-inventory-pickup.ogg",
  volume = 0.6,
}

local electronic_board_drop_move = {
  filename = "__base__/sound/item/electric-small-inventory-move.ogg",
  volume = 1,
}
local electronic_board_pick = {
  filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
  volume = 0.7,
}

if data.raw.item["bob-tin-plate"] then
  data:extend({
    {
      type = "item",
      name = "bob-tinned-copper-cable",
      icon = "__bobelectronics__/graphics/icons/tinned-copper-cable.png",
      subgroup = "bob-electronic-components",
      order = "0-a1[bob-tinned-copper-cable]",
      stack_size = 200,
      drop_sound = electronic_part_drop_move,
      inventory_move_sound = electronic_part_drop_move,
      pick_sound = electronic_part_pick,
    },

    {
      type = "recipe",
      name = "bob-tinned-copper-cable",
      category = "bob-electronics",
      enabled = false,
      ingredients = {
        { type = "item", name = "copper-cable", amount = 3 },
        { type = "item", name = "bob-tin-plate", amount = 1 },
      },
      results = { { type = "item", name = "bob-tinned-copper-cable", amount = 3 } },
      allow_decomposition = false,
      allow_productivity = true,
    },
  })
end

data:extend({
  {
    type = "item",
    name = "bob-insulated-cable",
    icon = "__bobelectronics__/graphics/icons/insulated-cable.png",
    subgroup = "bob-electronic-components",
    order = "0-a2[bob-insulated-cable]",
    stack_size = 200,
    drop_sound = electronic_part_drop_move,
    inventory_move_sound = electronic_part_drop_move,
    pick_sound = electronic_part_pick,
  },

  {
    type = "recipe",
    name = "bob-insulated-cable",
    category = "bob-electronics",
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 2 },
      { type = "item", name = "bob-rubber", amount = 1 },
    },
    results = { { type = "item", name = "bob-insulated-cable", amount = 2 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

if data.raw.item["bob-gold-plate"] then
  data:extend({
    {
      type = "item",
      name = "bob-gilded-copper-cable",
      icon = "__bobelectronics__/graphics/icons/gilded-copper-cable.png",
      subgroup = "bob-electronic-components",
      order = "0-a3[bob-gilded-copper-cable]",
      stack_size = 200,
      drop_sound = electronic_part_drop_move,
      inventory_move_sound = electronic_part_drop_move,
      pick_sound = electronic_part_pick,
    },

    {
      type = "recipe",
      name = "bob-gilded-copper-cable",
      category = "bob-electronics-machine",
      enabled = false,
      ingredients = {
        { type = "item", name = "copper-cable", amount = 3 },
        { type = "item", name = "bob-gold-plate", amount = 1 },
      },
      results = { { type = "item", name = "bob-gilded-copper-cable", amount = 3 } },
      allow_decomposition = false,
      allow_productivity = true,
    },
  })
end

if data.raw.item["bob-solder-alloy"] then
  data:extend({
    {
      type = "item",
      name = "bob-solder",
      icon = "__bobelectronics__/graphics/icons/solder.png",
      icon_size = 32,
      subgroup = "bob-electronic-components",
      order = "0-a4[solder]",
      stack_size = 200,
      drop_sound = electronic_part_drop_move,
      inventory_move_sound = electronic_part_drop_move,
      pick_sound = electronic_part_pick,
    },

    {
      type = "recipe",
      name = "bob-solder",
      category = "bob-electronics",
      energy_required = 2,
      enabled = false,
      auto_recycle = false,
      ingredients = {
        { type = "item", name = "bob-solder-alloy", amount = 4 },
        { type = "item", name = "bob-resin", amount = 1 },
      },
      results = { { type = "item", name = "bob-solder", amount = 5 } },
      allow_decomposition = false,
      allow_productivity = true,
    },
  })
end

data:extend({
  {
    type = "item",
    name = "bob-basic-electronic-components",
    icon = "__bobelectronics__/graphics/icons/basic-electronic-components.png",
    icon_size = 128,
    subgroup = "bob-electronic-components",
    order = "0-b1[basic-electronic-components]",
    stack_size = 200,
    drop_sound = electronic_part_drop_move,
    inventory_move_sound = electronic_part_drop_move,
    pick_sound = electronic_part_pick,
  },

  {
    type = "recipe",
    name = "bob-basic-electronic-components",
    category = "bob-electronics-machine",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 2 },
      { type = "item", name = "coal", amount = 1 },
    },
    results = { { type = "item", name = "bob-basic-electronic-components", amount = 5 } },
    allow_decomposition = false,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-electronic-components",
    icon = "__bobelectronics__/graphics/icons/electronic-components.png",
    icon_size = 128,
    subgroup = "bob-electronic-components",
    order = "0-b2[electronic-components]",
    stack_size = 200,
    drop_sound = electronic_part_drop_move,
    inventory_move_sound = electronic_part_drop_move,
    pick_sound = electronic_part_pick,
  },

  {
    type = "recipe",
    name = "bob-electronic-components",
    category = "bob-electronics-machine",
    energy_required = 3.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 3 },
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "bob-electronic-components", amount = 5 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-integrated-electronics",
    icon = "__bobelectronics__/graphics/icons/integrated-electronics.png",
    icon_size = 128,
    subgroup = "bob-electronic-components",
    order = "0-b3[integrated-electronics]",
    stack_size = 200,
    drop_sound = electronic_part_drop_move,
    inventory_move_sound = electronic_part_drop_move,
    pick_sound = electronic_part_pick,
  },

  {
    type = "recipe",
    name = "bob-integrated-electronics",
    category = "bob-electronics-with-fluid",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 4 },
      { type = "item", name = "plastic-bar", amount = 1 },
      { type = "fluid", name = "sulfuric-acid", amount = 5 },
    },
    results = { { type = "item", name = "bob-integrated-electronics", amount = 5 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-processing-electronics",
    icon = "__bobelectronics__/graphics/icons/cpu.png",
    icon_size = 128,
    subgroup = "bob-electronic-components",
    order = "0-b4[cpu]",
    stack_size = 200,
    drop_sound = electronic_part_drop_move,
    inventory_move_sound = electronic_part_drop_move,
    pick_sound = electronic_part_pick,
  },

  {
    type = "recipe",
    name = "bob-processing-electronics",
    category = "bob-electronics-with-fluid",
    energy_required = 7,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 5 },
      { type = "item", name = "plastic-bar", amount = 1 },
      { type = "fluid", name = "sulfuric-acid", amount = 10 },
    },
    results = { { type = "item", name = "bob-processing-electronics", amount = 5 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-wooden-board",
    icon = "__bobelectronics__/graphics/icons/wooden-board.png",
    icon_size = 128,
    subgroup = "bob-boards",
    order = "c-a1[wooden-board]",
    stack_size = 200,
    drop_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/wood-inventory-pickup.ogg",
      volume = 0.8,
    },
  },

  {
    type = "recipe",
    name = "bob-wooden-board",
    category = "bob-electronics",
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "wood", amount = 1 },
    },
    results = { { type = "item", name = "bob-wooden-board", amount = 2 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-phenolic-board",
    icon = "__bobelectronics__/graphics/icons/phenolic-board.png",
    icon_size = 128,
    subgroup = "bob-boards",
    order = "c-a2[phenolic-board]",
    stack_size = 200,
    drop_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.7,
      speed = 0.85,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.7,
      speed = 0.85,
    },
    pick_sound = {
      filename = "__base__/sound/item/wood-inventory-pickup.ogg",
      volume = 0.8,
      speed = 0.85,
    },
  },

  {
    type = "recipe",
    name = "bob-phenolic-board",
    category = "bob-electronics-machine",
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "wood", amount = 1 },
      { type = "item", name = "bob-resin", amount = 1 },
    },
    results = { { type = "item", name = "bob-phenolic-board", amount = 2 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-fibreglass-board",
    icon = "__bobelectronics__/graphics/icons/fibreglass-board.png",
    icon_size = 128,
    subgroup = "bob-boards",
    order = "c-a3[fibreglass-board]",
    stack_size = 200,
    drop_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.85,
      speed = 1.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.85,
      speed = 1.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/wood-inventory-pickup.ogg",
      volume = 0.85,
      speed = 1.6,
    },
  },

  {
    type = "recipe",
    name = "bob-fibreglass-board",
    category = "bob-electronics-machine",
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "bob-fibreglass-board", amount = 2 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-basic-circuit-board",
    icon = "__bobelectronics__/graphics/icons/basic-circuit-board.png",
    icon_size = 128,
    subgroup = "bob-electronic-boards",
    order = "c-b1[basic-circuit-board]",
    stack_size = 200,
    drop_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/wood-inventory-pickup.ogg",
      volume = 0.8,
    },
  },

  {
    type = "recipe",
    name = "bob-basic-circuit-board",
    category = "bob-electronics",
    enabled = false,
    energy_required = 1,
    ingredients = {
      { type = "item", name = "bob-wooden-board", amount = 1 },
      { type = "item", name = "copper-cable", amount = 3 },
    },
    results = { { type = "item", name = "bob-basic-circuit-board", amount = 1 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-circuit-board",
    icon = "__bobelectronics__/graphics/icons/circuit-board.png",
    icon_size = 128,
    subgroup = "bob-electronic-boards",
    order = "c-b2[circuit-board]",
    stack_size = 200,
    drop_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.7,
      speed = 0.85,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.7,
      speed = 0.85,
    },
    pick_sound = {
      filename = "__base__/sound/item/wood-inventory-pickup.ogg",
      volume = 0.8,
      speed = 0.85,
    },
  },

  {
    type = "recipe",
    name = "bob-circuit-board",
    category = "bob-electronics-with-fluid",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-phenolic-board", amount = 1 },
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "fluid", name = "bob-ferric-chloride-solution", amount = 5 },
    },
    results = { { type = "item", name = "bob-circuit-board", amount = 1 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-superior-circuit-board",
    icon = "__bobelectronics__/graphics/icons/superior-circuit-board.png",
    icon_size = 128,
    subgroup = "bob-electronic-boards",
    order = "c-b3[superior-circuit-board]",
    stack_size = 200,
    drop_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.85,
      speed = 1.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.85,
      speed = 1.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/wood-inventory-pickup.ogg",
      volume = 0.85,
      speed = 1.6,
    },
  },

  {
    type = "recipe",
    name = "bob-superior-circuit-board",
    category = "bob-electronics-with-fluid",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-fibreglass-board", amount = 1 },
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "fluid", name = "bob-ferric-chloride-solution", amount = 5 },
    },
    results = { { type = "item", name = "bob-superior-circuit-board", amount = 1 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-multi-layer-circuit-board",
    icon = "__bobelectronics__/graphics/icons/multi-layer-circuit-board.png",
    icon_size = 128,
    subgroup = "bob-electronic-boards",
    order = "c-b4[multi-layer-circuit-board]",
    stack_size = 200,
    drop_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.85,
      speed = 1.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.85,
      speed = 1.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/wood-inventory-pickup.ogg",
      volume = 0.85,
      speed = 1.6,
    },
  },

  {
    type = "recipe",
    name = "bob-multi-layer-circuit-board",
    category = "bob-electronics-with-fluid",
    energy_required = 15,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-fibreglass-board", amount = 1 },
      { type = "item", name = "copper-plate", amount = 2 },
      { type = "fluid", name = "bob-ferric-chloride-solution", amount = 10 },
    },
    results = { { type = "item", name = "bob-multi-layer-circuit-board", amount = 1 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "electronic-circuit",
    icon = "__bobelectronics__/graphics/icons/basic-electronic-circuit-board.png",
    icon_size = 128,
    subgroup = "bob-electronic-boards",
    order = "c-c1[electronic-circuit]",
    stack_size = 200,
    drop_sound = electronic_board_drop_move,
    inventory_move_sound = electronic_board_drop_move,
    pick_sound = electronic_board_pick,
  },

  {
    type = "recipe",
    name = "electronic-circuit",
    category = "bob-electronics",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-basic-circuit-board", amount = 1 },
      { type = "item", name = "bob-basic-electronic-components", amount = 4 },
    },
    results = { { type = "item", name = "electronic-circuit", amount = 1 } },
    allow_decomposition = false,
  },
})

data:extend({
  {
    type = "item",
    name = "advanced-circuit",
    icon = "__bobelectronics__/graphics/icons/electronic-circuit-board.png",
    icon_size = 128,
    subgroup = "bob-electronic-boards",
    order = "c-c2[advanced-circuit]",
    stack_size = 200,
    drop_sound = electronic_board_drop_move,
    inventory_move_sound = electronic_board_drop_move,
    pick_sound = electronic_board_pick,
  },

  {
    type = "recipe",
    name = "advanced-circuit",
    category = "bob-electronics",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-circuit-board", amount = 1 },
      { type = "item", name = "bob-basic-electronic-components", amount = 4 },
      { type = "item", name = "bob-electronic-components", amount = 4 },
    },
    results = { { type = "item", name = "advanced-circuit", amount = 1 } },
    allow_decomposition = false,
  },
})

data:extend({
  {
    type = "item",
    name = "processing-unit",
    icon = "__bobelectronics__/graphics/icons/electronic-logic-board.png",
    icon_size = 128,
    subgroup = "bob-electronic-boards",
    order = "c-c3[electronic-logic-board]",
    stack_size = 200,
    drop_sound = electronic_board_drop_move,
    inventory_move_sound = electronic_board_drop_move,
    pick_sound = electronic_board_pick,
  },

  {
    type = "recipe",
    name = "processing-unit",
    category = "bob-electronics",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-superior-circuit-board", amount = 1 },
      { type = "item", name = "bob-basic-electronic-components", amount = 4 },
      { type = "item", name = "bob-electronic-components", amount = 8 },
      { type = "item", name = "bob-integrated-electronics", amount = 6 },
    },
    results = { { type = "item", name = "processing-unit", amount = 1 } },
    allow_decomposition = false,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-advanced-processing-unit",
    icon = "__bobelectronics__/graphics/icons/electronic-processing-board.png",
    icon_size = 128,
    subgroup = "bob-electronic-boards",
    order = "c-c4[bob-advanced-processing-unit]",
    stack_size = 200,
    drop_sound = electronic_board_drop_move,
    inventory_move_sound = electronic_board_drop_move,
    pick_sound = electronic_board_pick,
  },

  {
    type = "recipe",
    name = "bob-advanced-processing-unit",
    category = "bob-electronics",
    energy_required = 15,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-multi-layer-circuit-board", amount = 1 },
      { type = "item", name = "bob-basic-electronic-components", amount = 6 },
      { type = "item", name = "bob-electronic-components", amount = 6 },
      { type = "item", name = "bob-integrated-electronics", amount = 8 },
      { type = "item", name = "bob-processing-electronics", amount = 4 },
    },
    results = { { type = "item", name = "bob-advanced-processing-unit", amount = 1 } },
    allow_decomposition = false,
  },

  {
    type = "produce-per-hour-achievement",
    name = "bob-computer-age-1",
    icon = "__bobelectronics__/graphics/icons/achievement/bob-computer-age-1.png",
    icon_size = 128,
    item_product = "advanced-circuit",
    amount = 1000,
    order = "d[production]-e[advanced-processing-unit-production]-a",
  },
  {
    type = "produce-per-hour-achievement",
    name = "bob-computer-age-2",
    icon = "__bobelectronics__/graphics/icons/achievement/bob-computer-age-2.png",
    icon_size = 128,
    item_product = "advanced-circuit",
    amount = 3000,
    order = "d[production]-e[advanced-processing-unit-production]-b",
  },
  {
    type = "produce-per-hour-achievement",
    name = "bob-computer-age-3",
    icon = "__bobelectronics__/graphics/icons/achievement/bob-computer-age-3.png",
    icon_size = 128,
    item_product = "advanced-circuit",
    amount = 10000,
    order = "d[production]-e[advanced-processing-unit-production]-c",
  },
})

data.raw["produce-per-hour-achievement"]["computer-age-1"].amount = 1000
data.raw["produce-per-hour-achievement"]["computer-age-2"].amount = 5000
data.raw["produce-per-hour-achievement"]["computer-age-3"].amount = 15000
