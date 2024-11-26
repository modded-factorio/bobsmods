local electronic_part_drop_move = {
  filename = "__base__/sound/item/wire-inventory-move.ogg",
  volume = 0.8
}
local electronic_part_pick = {
  filename = "__base__/sound/item/wire-inventory-pickup.ogg",
  volume = 0.6
}

local electronic_board_drop_move = {
  filename = "__base__/sound/item/electric-small-inventory-move.ogg",
  volume = 1
}
local electronic_board_pick = {
  filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
  volume = 0.7
}

if data.raw.item["tin-plate"] then

  data:extend({
    {
      type = "item",
      name = "tinned-copper-cable",
      icon = "__bobelectronics__/graphics/icons/tinned-copper-cable.png",
      icon_size = 32,
      subgroup = "bob-electronic-components",
      order = "0-a1[tinned-copper-cable]",
      stack_size = 200,
      drop_sound = electronic_part_drop_move,
      inventory_move_sound = electronic_part_drop_move,
      pick_sound = electronic_part_pick,
    },

    {
      type = "recipe",
      name = "tinned-copper-cable",
      category = "electronics",
      enabled = false,
      ingredients = {
        { type = "item", name = "copper-cable", amount = 3 },
        { type = "item", name = "tin-plate", amount = 1 },
      },
      results = { { type = "item", name = "tinned-copper-cable", amount = 3 } },
      allow_decomposition = false,
      allow_productivity = true,
    },
  })
end

data:extend({
  {
    type = "item",
    name = "insulated-cable",
    icon = "__bobelectronics__/graphics/icons/insulated-cable.png",
    icon_size = 32,
    subgroup = "bob-electronic-components",
    order = "0-a2[insulated-cable]",
    stack_size = 200,
    drop_sound = electronic_part_drop_move,
    inventory_move_sound = electronic_part_drop_move,
    pick_sound = electronic_part_pick,
  },

  {
    type = "recipe",
    name = "insulated-cable",
    category = "electronics",
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 2 },
      { type = "item", name = "rubber", amount = 1 },
    },
    results = { { type = "item", name = "insulated-cable", amount = 2 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

if data.raw.item["gold-plate"] then
  data:extend({
    {
      type = "item",
      name = "gilded-copper-cable",
      icon = "__bobelectronics__/graphics/icons/gilded-copper-cable.png",
      icon_size = 32,
      subgroup = "bob-electronic-components",
      order = "0-a3[gilded-copper-cable]",
      stack_size = 200,
      drop_sound = electronic_part_drop_move,
      inventory_move_sound = electronic_part_drop_move,
      pick_sound = electronic_part_pick,
    },

    {
      type = "recipe",
      name = "gilded-copper-cable",
      category = "electronics-machine",
      enabled = false,
      ingredients = {
        { type = "item", name = "copper-cable", amount = 3 },
        { type = "item", name = "gold-plate", amount = 1 },
      },
      results = { { type = "item", name = "gilded-copper-cable", amount = 3 } },
      allow_decomposition = false,
      allow_productivity = true,
    },
  })
end

if data.raw.item["solder-alloy"] then
  data:extend({
    {
      type = "item",
      name = "solder",
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
      name = "solder",
      category = "electronics",
      energy_required = 2,
      enabled = false,
      ingredients = {
        { type = "item", name = "solder-alloy", amount = 4 },
        { type = "item", name = "resin", amount = 1 },
      },
      results = { { type = "item", name = "solder", amount = 8 } },
      allow_decomposition = false,
      allow_productivity = true,
    },
  })
end

data:extend({
  {
    type = "item",
    name = "basic-electronic-components",
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
    name = "basic-electronic-components",
    category = "electronics-machine",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 1 },
      { type = "item", name = "coal", amount = 1 },
    },
    results = { { type = "item", name = "basic-electronic-components", amount = 5 } },
    allow_decomposition = false,
  },
})

data:extend({
  {
    type = "item",
    name = "electronic-components",
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
    name = "electronic-components",
    category = "electronics-machine",
    energy_required = 3.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 1 },
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "electronic-components", amount = 5 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "intergrated-electronics",
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
    name = "intergrated-electronics",
    category = "electronics-with-fluid",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 1 },
      { type = "item", name = "plastic-bar", amount = 1 },
      { type = "fluid", name = "sulfuric-acid", amount = 5 },
    },
    results = { { type = "item", name = "intergrated-electronics", amount = 5 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "processing-electronics",
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
    name = "processing-electronics",
    category = "electronics-with-fluid",
    energy_required = 7,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 2 },
      { type = "item", name = "plastic-bar", amount = 1 },
      { type = "fluid", name = "sulfuric-acid", amount = 5 },
    },
    results = { { type = "item", name = "processing-electronics", amount = 5 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "wooden-board",
    icon = "__bobelectronics__/graphics/icons/wooden-board.png",
    icon_size = 128,
    subgroup = "bob-boards",
    order = "c-a1[wooden-board]",
    stack_size = 200,
    drop_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.7
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.7
    },
    pick_sound = {
      filename = "__base__/sound/item/wood-inventory-pickup.ogg",
      volume = 0.8
    },
  },

  {
    type = "recipe",
    name = "wooden-board",
    category = "electronics",
    ingredients = {
      { type = "item", name = "wood", amount = 1 },
    },
    results = { { type = "item", name = "wooden-board", amount = 2 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "phenolic-board",
    icon = "__bobelectronics__/graphics/icons/phenolic-board.png",
    icon_size = 128,
    subgroup = "bob-boards",
    order = "c-a2[phenolic-board]",
    stack_size = 200,
    drop_sound = {
      filename = "__base__/sound/item/solid-fuel-inventory-move.ogg",
      volume = 0.7
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/solid-fuel-inventory-move.ogg",
      volume = 0.7
    },
    pick_sound = {
      filename = "__base__/sound/item/solid-fuel-inventory-pickup.ogg",
      volume = 0.7
    },
  },

  {
    type = "recipe",
    name = "phenolic-board",
    category = "electronics-machine",
    enabled = false,
    ingredients = {
      { type = "item", name = "wood", amount = 1 },
      { type = "item", name = "resin", amount = 1 },
    },
    results = { { type = "item", name = "phenolic-board", amount = 2 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "fibreglass-board",
    icon = "__bobelectronics__/graphics/icons/fibreglass-board.png",
    icon_size = 128,
    subgroup = "bob-boards",
    order = "c-a3[fibreglass-board]",
    stack_size = 200,
    drop_sound = {
      filename = "__base__/sound/item/solid-fuel-inventory-move.ogg",
      volume = 0.7
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/solid-fuel-inventory-move.ogg",
      volume = 0.7
    },
    pick_sound = {
      filename = "__base__/sound/item/solid-fuel-inventory-pickup.ogg",
      volume = 0.7
    },
  },

  {
    type = "recipe",
    name = "fibreglass-board",
    category = "electronics-machine",
    enabled = false,
    ingredients = {
      { type = "item", name = "plastic-bar", amount = 1 },
    },
    results = { { type = "item", name = "fibreglass-board", amount = 2 } },
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "basic-circuit-board",
    icon = "__bobelectronics__/graphics/icons/basic-circuit-board.png",
    icon_size = 128,
    subgroup = "bob-electronic-boards",
    order = "c-b1[basic-circuit-board]",
    stack_size = 200,
    drop_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.7
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/wood-inventory-move.ogg",
      volume = 0.7
    },
    pick_sound = {
      filename = "__base__/sound/item/wood-inventory-pickup.ogg",
      volume = 0.8
    },
  },

  {
    type = "recipe",
    name = "basic-circuit-board",
    category = "electronics",
    enabled = false,
    energy_required = 1,
    ingredients = {
      { type = "item", name = "wooden-board", amount = 1 },
      { type = "item", name = "copper-cable", amount = 3 },
    },
    results = { { type = "item", name = "basic-circuit-board", amount = 1 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "circuit-board",
    icon = "__bobelectronics__/graphics/icons/circuit-board.png",
    icon_size = 128,
    subgroup = "bob-electronic-boards",
    order = "c-b2[circuit-board]",
    stack_size = 200,
    drop_sound = {
      filename = "__base__/sound/item/planner-inventory-move.ogg",
      volume = 0.7
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/planner-inventory-move.ogg",
      volume = 0.7
    },
    pick_sound = {
      filename = "__base__/sound/item/planner-inventory-pickup.ogg",
      volume = 0.7
    },
  },

  {
    type = "recipe",
    name = "circuit-board",
    category = "electronics-with-fluid",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "phenolic-board", amount = 1 },
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "fluid", name = "ferric-chloride-solution", amount = 5 },
    },
    results = { { type = "item", name = "circuit-board", amount = 1 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "superior-circuit-board",
    icon = "__bobelectronics__/graphics/icons/superior-circuit-board.png",
    icon_size = 128,
    subgroup = "bob-electronic-boards",
    order = "c-b3[superior-circuit-board]",
    stack_size = 200,
    drop_sound = {
      filename = "__base__/sound/item/planner-inventory-move.ogg",
      volume = 0.7
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/planner-inventory-move.ogg",
      volume = 0.7
    },
    pick_sound = {
      filename = "__base__/sound/item/planner-inventory-pickup.ogg",
      volume = 0.7
    },
  },

  {
    type = "recipe",
    name = "superior-circuit-board",
    category = "electronics-with-fluid",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "fibreglass-board", amount = 1 },
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "fluid", name = "ferric-chloride-solution", amount = 5 },
    },
    results = { { type = "item", name = "superior-circuit-board", amount = 1 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "multi-layer-circuit-board",
    icon = "__bobelectronics__/graphics/icons/multi-layer-circuit-board.png",
    icon_size = 128,
    subgroup = "bob-electronic-boards",
    order = "c-b4[multi-layer-circuit-board]",
    stack_size = 200,
    drop_sound = {
      filename = "__base__/sound/item/planner-inventory-move.ogg",
      volume = 0.7
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/planner-inventory-move.ogg",
      volume = 0.7
    },
    pick_sound = {
      filename = "__base__/sound/item/planner-inventory-pickup.ogg",
      volume = 0.7
    },
  },

  {
    type = "recipe",
    name = "multi-layer-circuit-board",
    category = "electronics-with-fluid",
    energy_required = 15,
    enabled = false,
    ingredients = {
      { type = "item", name = "fibreglass-board", amount = 1 },
      { type = "item", name = "copper-plate", amount = 2 },
      { type = "fluid", name = "ferric-chloride-solution", amount = 10 },
    },
    results = { { type = "item", name = "multi-layer-circuit-board", amount = 1 } },
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
    order = "c-c1[basic-electronic-circuit-board]",
    stack_size = 200,
    drop_sound = electronic_board_drop_move,
    inventory_move_sound = electronic_board_drop_move,
    pick_sound = electronic_board_pick,
  },

  {
    type = "recipe",
    name = "electronic-circuit",
    category = "electronics",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "basic-circuit-board", amount = 1 },
      { type = "item", name = "basic-electronic-components", amount = 5 },
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
    order = "c-c2[electronic-circuit-board]",
    stack_size = 200,
    drop_sound = electronic_board_drop_move,
    inventory_move_sound = electronic_board_drop_move,
    pick_sound = electronic_board_pick,
  },

  {
    type = "recipe",
    name = "advanced-circuit",
    category = "electronics",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "circuit-board", amount = 1 },
      { type = "item", name = "basic-electronic-components", amount = 4 },
      { type = "item", name = "electronic-components", amount = 4 },
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
    category = "electronics",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "superior-circuit-board", amount = 1 },
      { type = "item", name = "basic-electronic-components", amount = 2 },
      { type = "item", name = "electronic-components", amount = 4 },
      { type = "item", name = "intergrated-electronics", amount = 2 },
    },
    results = { { type = "item", name = "processing-unit", amount = 1 } },
    allow_decomposition = false,
  },
})

data:extend({
  {
    type = "item",
    name = "advanced-processing-unit",
    icon = "__bobelectronics__/graphics/icons/electronic-processing-board.png",
    icon_size = 128,
    subgroup = "bob-electronic-boards",
    order = "c-c4[electronic-processing-board]",
    stack_size = 200,
    drop_sound = electronic_board_drop_move,
    inventory_move_sound = electronic_board_drop_move,
    pick_sound = electronic_board_pick,
  },

  {
    type = "recipe",
    name = "advanced-processing-unit",
    category = "electronics",
    energy_required = 15,
    enabled = false,
    ingredients = {
      { type = "item", name = "multi-layer-circuit-board", amount = 1 },
      { type = "item", name = "basic-electronic-components", amount = 1 },
      { type = "item", name = "electronic-components", amount = 2 },
      { type = "item", name = "intergrated-electronics", amount = 4 },
      { type = "item", name = "processing-electronics", amount = 1 },
    },
    results = { { type = "item", name = "advanced-processing-unit", amount = 1 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})
