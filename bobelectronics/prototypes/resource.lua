data:extend({
  {
    type = "item",
    name = "resin",
    icon = "__bobelectronics__/graphics/icons/resin.png",
    icon_size = 32,
    subgroup = "bob-resource",
    order = "f[resin]",
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
    localised_name = { "item-name.resin" },
    category = "crafting-machine",
    subgroup = "bob-resource",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "wood", amount = 1 },
    },
    results = { { type = "item", name = "resin", amount = 1 } },
    allow_decomposition = false,
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-resin-oil",
    localised_name = { "item-name.resin" },
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "heavy-oil", amount = 10 },
    },
    results = { { type = "item", name = "resin", amount = 1 } },
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
    name = "rubber",
    icon = "__bobelectronics__/graphics/icons/rubber.png",
    icon_size = 32,
    subgroup = "bob-resource",
    order = "f[rubber]",
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
    localised_name = { "item-name.rubber" },
    subgroup = "bob-material-smelting",
    category = "smelting",
    energy_required = 3.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "resin", amount = 1 },
    },
    results = { { type = "item", name = "rubber", amount = 1 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

data:extend({
  {
    type = "recipe",
    name = "synthetic-wood",
    icon = "__bobelectronics__/graphics/icons/synthetic-wood.png",
    icon_size = 32,
    subgroup = "bob-resource-chemical",
    localised_name = { "recipe-name.synthetic-wood" },
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

if not data.raw.item["silicon-wafer"] then
  if data.raw.item["silicon"] or data.raw.item["silicon-plate"] then
    data:extend({
      {
        type = "item",
        name = "silicon-wafer",
        icon = "__bobelectronics__/graphics/icons/silicon-wafer.png",
        icon_size = 32,
        subgroup = "bob-resource",
        order = "f[silicon-wafer]",
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
        name = "silicon-wafer",
        category = "crafting-machine",
        enabled = false,
        energy_required = 5,
        ingredients = {},
        results = { { type = "item", name = "silicon-wafer", amount = 8 } },
        allow_productivity = true,
      },
    })

    if data.raw.item["silicon"] then
      table.insert(data.raw.recipe["silicon-wafer"].ingredients, { "silicon", amount = 1 })
    else
      table.insert(data.raw.recipe["silicon-wafer"].ingredients, { "silicon-plate", amount = 1 })
    end
  end
end

if data.raw.item["tin-plate"] then
  data:extend({
    {
      type = "item",
      name = "solder-alloy",
      icon = "__bobelectronics__/graphics/icons/solder-plate.png",
      icon_size = 32,
      subgroup = "bob-alloy",
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
      name = "solder-alloy",
      energy_required = 7,
      enabled = false,
      category = "crafting-machine",
      ingredients = {
        { type = "item", name = "tin-plate", amount = 9 },
        { type = "item", name = "copper-plate", amount = 1 },
      },
      results = { { type = "item", name = "solder-alloy", amount = 11 } },
      allow_decomposition = false,
      allow_productivity = true,
    },
  })
  if data.raw.item["silver-plate"] then
    table.insert(data.raw.recipe["solder-alloy"].ingredients, { type = "item", name = "silver-plate", amount = 1 })
  end

  if data.raw.item["lead-plate"] then
    data:extend({
      {
        type = "recipe",
        name = "solder-alloy-lead",
        localised_name = { "item-name.solder-alloy" },
        energy_required = 7,
        enabled = false,
        category = "crafting-machine",
        ingredients = {
          { type = "item", name = "tin-plate", amount = 4 },
          { type = "item", name = "lead-plate", amount = 7 },
        },
        results = { { type = "item", name = "solder-alloy", amount = 11 } },
        allow_decomposition = false,
        allow_productivity = true,
      },
    })
  end
end
