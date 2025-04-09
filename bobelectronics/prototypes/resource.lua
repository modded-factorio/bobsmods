data:extend({
  {
    type = "item",
    name = "bob-resin",
    icon = "__bobelectronics__/graphics/icons/resin.png",
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
    type = "recipe",
    name = "bob-resin-wood",
    localised_name = { "item-name.bob-resin" },
    category = "advanced-crafting",
    subgroup = "bob-resource",
    energy_required = 1,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "wood", amount = 1 },
    },
    results = { { type = "item", name = "bob-resin", amount = 1 } },
    allow_decomposition = false,
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-resin-oil",
    localised_name = { "item-name.bob-resin" },
    category = "chemistry",
    subgroup = "bob-resource",
    energy_required = 1,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "fluid", name = "heavy-oil", amount = 10 },
    },
    results = { { type = "item", name = "bob-resin", amount = 1 } },
    crafting_machine_tint = {
      primary = { r = 0.5, g = 0.04, b = 0.0, a = 0.000 },
      secondary = { r = 0.85, g = 0.6, b = 0.3, a = 0.000 },
      tertiary = { r = 1, g = 0.6, b = 0.0, a = 0.000 },
    },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "item",
    name = "bob-rubber",
    icon = "__bobelectronics__/graphics/icons/rubber.png",
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
    type = "recipe",
    name = "bob-rubber",
    localised_name = { "item-name.bob-rubber" },
    subgroup = "bob-resource",
    category = "smelting",
    energy_required = 3.5,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "bob-resin", amount = 1 },
    },
    results = { { type = "item", name = "bob-rubber", amount = 1 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-synthetic-wood",
    icon = "__bobelectronics__/graphics/icons/synthetic-wood.png",
    icon_size = 32,
    subgroup = "bob-resource",
    localised_name = { "recipe-name.bob-synthetic-wood" },
    category = "chemistry",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "heavy-oil", amount = 10 },
    },
    results = { { type = "item", name = "wood", amount = 2 } },
    crafting_machine_tint = {
      primary = { r = 0.5, g = 0.04, b = 0.0, a = 0.000 },
      secondary = { r = 0.85, g = 0.6, b = 0.3, a = 0.000 },
      tertiary = { r = 1, g = 0.6, b = 0.4, a = 0.000 },
    },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

if not data.raw.item["bob-silicon-wafer"] and data.raw.item["bob-silicon-plate"] then
  data:extend({
    {
      type = "item",
      name = "bob-silicon-wafer",
      icon = "__bobelectronics__/graphics/icons/silicon-wafer.png",
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
      type = "recipe",
      name = "bob-silicon-wafer",
      category = "advanced-crafting",
      enabled = false,
      energy_required = 5,
      ingredients = {
        { type = "item", name = "bob-silicon-plate", amount = 1 },
      },
      results = { { type = "item", name = "bob-silicon-wafer", amount = 8 } },
      allow_productivity = true,
    },
  })
end

if data.raw.item["bob-tin-plate"] then
  data:extend({
    {
      type = "item",
      name = "bob-solder-alloy",
      icon = "__bobelectronics__/graphics/icons/solder-plate.png",
      icon_size = 32,
      subgroup = "raw-material",
      order = "c-b-h[solder]",
      stack_size = 200,
      drop_sound = {
        filename = "__base__/sound/item/transport-belt-inventory-move.ogg",
        volume = 0.5,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/transport-belt-inventory-move.ogg",
        volume = 0.5,
      },
      pick_sound = {
        filename = "__base__/sound/item/wood-inventory-pickup.ogg",
        volume = 0.6,
      },
    },

    {
      type = "recipe",
      name = "bob-solder-alloy",
      energy_required = 7,
      enabled = false,
      auto_recycle = false,
      category = "advanced-crafting",
      ingredients = {
        { type = "item", name = "bob-tin-plate", amount = 9 },
        { type = "item", name = "copper-plate", amount = 1 },
      },
      results = { { type = "item", name = "bob-solder-alloy", amount = 11 } },
      allow_decomposition = false,
      allow_productivity = true,
    },
  })
  if data.raw["item-subgroup"]["bob-alloy"] then
    data.raw.item["bob-solder-alloy"].subgroup = "bob-alloy"
  end
  if data.raw.item["bob-silver-plate"] then
    bobmods.lib.recipe.add_ingredient("bob-solder-alloy", { type = "item", name = "bob-silver-plate", amount = 1 })
  end

  if data.raw.item["bob-lead-plate"] then
    data:extend({
      {
        type = "recipe",
        name = "bob-solder-alloy-lead",
        localised_name = { "item-name.bob-solder-alloy" },
        energy_required = 7,
        enabled = false,
        auto_recycle = false,
        category = "advanced-crafting",
        ingredients = {
          { type = "item", name = "bob-tin-plate", amount = 4 },
          { type = "item", name = "bob-lead-plate", amount = 7 },
        },
        results = { { type = "item", name = "bob-solder-alloy", amount = 11 } },
        allow_decomposition = false,
        allow_productivity = true,
      },
    })
  end
end
