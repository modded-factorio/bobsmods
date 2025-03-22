data:extend({
  {
    type = "item",
    name = "bob-carbon",
    icon = "__bobplates__/graphics/icons/carbon.png",
    icon_size = 32,
    subgroup = "bob-resource",
    order = "f[bob-carbon]",
    fuel_category = "chemical",
    fuel_value = "2MJ", --"4MJ",
    fuel_emissions_multiplier = 0.9,
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/resource-inventory-move.ogg",
      volume = 0.8,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/resource-inventory-move.ogg",
      volume = 0.8,
    },
    pick_sound = {
      filename = "__base__/sound/item/resource-inventory-pickup.ogg",
      volume = 0.6,
    },
  },

  {
    type = "item",
    name = "bob-resin",
    icon = "__bobplates__/graphics/icons/resin.png",
    icon_size = 32,
    subgroup = "bob-resource",
    order = "f[bob-resin]",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/solid-fuel-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/solid-fuel-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/solid-fuel-inventory-pickup.ogg",
      volume = 0.7,
    },
  },

  {
    type = "item",
    name = "bob-rubber",
    icon = "__bobplates__/graphics/icons/rubber.png",
    icon_size = 32,
    subgroup = "bob-resource",
    order = "f[bob-rubber]",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/solid-fuel-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/solid-fuel-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/solid-fuel-inventory-pickup.ogg",
      volume = 0.7,
    },
  },

  {
    type = "item",
    name = "bob-glass",
    icon = "__bobplates__/graphics/icons/glass.png",
    icon_size = 32,
    subgroup = "bob-resource",
    order = "f[bob-glass]",
    stack_size = 100,
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
    type = "item",
    name = "bob-silicon-wafer",
    icon = "__bobplates__/graphics/icons/silicon-wafer.png",
    icon_size = 32,
    subgroup = "bob-resource",
    order = "f[bob-silicon-wafer]",
    stack_size = 500,
    drop_sound = {
      filename = "__base__/sound/item/planner-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/planner-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/planner-inventory-pickup.ogg",
      volume = 0.5,
    },
  },

  {
    type = "item",
    name = "bob-lithium-cobalt-oxide",
    icon = "__bobplates__/graphics/icons/lithium-cobalt-oxide.png",
    icon_size = 32,
    subgroup = "bob-resource",
    order = "c-b[bob-lithium-cobalt-oxide]",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/sulfur-inventory-move.ogg",
      volume = 0.7,
      speed = 1.3,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/sulfur-inventory-move.ogg",
      volume = 0.7,
      speed = 1.3,
    },
    pick_sound = {
      filename = "__base__/sound/item/landfill-inventory-pickup.ogg",
      volume = 0.6,
      speed = 1.2,
    },
  },

  {
    type = "item",
    name = "bob-polishing-compound",
    icon = "__bobplates__/graphics/icons/polishing-compound.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "f[bob-polishing-compound]",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/fluid-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/fluid-inventory-pickup.ogg",
      volume = 0.5,
    },
  },

  {
    type = "item",
    name = "bob-gas-canister",
    icon = "__bobplates__/graphics/icons/gas-canister.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "a[basic-intermediates]-d[bob-gas-canister]",
    stack_size = 10,
    drop_sound = {
      filename = "__base__/sound/item/metal-chest-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/metal-chest-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/metal-chest-inventory-pickup.ogg",
      volume = 0.6,
    },
  },

  {
    type = "item",
    name = "bob-empty-canister",
    icon = "__bobplates__/graphics/icons/empty-canister.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "a[basic-intermediates]-d[bob-fluid-canister]",
    stack_size = 10,
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

  {
    type = "item",
    name = "bob-enriched-fuel",
    icon = "__bobplates__/graphics/icons/enriched-fuel.png",
    icon_size = 32,
    fuel_category = "chemical",
    fuel_value = "50MJ", --"100MJ",
    fuel_acceleration_multiplier = 1.5,
    fuel_top_speed_multiplier = 1.1,
    fuel_emissions_multiplier = 0.7,
    subgroup = "bob-chemical-fuels",
    order = "d[bob-enriched-fuel]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/solid-fuel-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/solid-fuel-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/solid-fuel-inventory-pickup.ogg",
      volume = 0.7,
    },
  },
})
