local radioactive_drop_move = {
  filename = "__base__/sound/item/nuclear-inventory-move.ogg",
  volume = 0.6,
}
local radioactive_pick = {
  filename = "__base__/sound/item/nuclear-inventory-pickup.ogg",
  volume = 0.6,
}

data:extend({
  {
    type = "item",
    name = "bob-plutonium-239",
    icon = "__bobplates__/graphics/icons/nuclear/plutonium-239.png",
    icon_size = 64,
    subgroup = "bob-nuclear",
    order = "s[bob-plutonium-239]",
    stack_size = 100,
    drop_sound = radioactive_drop_move,
    inventory_move_sound = radioactive_drop_move,
    pick_sound = radioactive_pick,
  },
})

if settings.startup["bobmods-plates-nuclearupdate"].value == true then
  data:extend({
    {
      type = "item",
      name = "bob-plutonium-fuel-cell",
      icon = "__bobplates__/graphics/icons/nuclear/plutonium-fuel-cell.png",
      icon_size = 64,
      subgroup = "bob-fuel-cells",
      order = "r[uranium-processing]-ab[bob-plutonium-fuel-cell]",
      fuel_category = "nuclear",
      burnt_result = "depleted-uranium-fuel-cell",
      fuel_value = "40GJ",
      fuel_glow_color = { r = 0.7, g = 1, b = 0 },
      stack_size = 50,
      drop_sound = radioactive_drop_move,
      inventory_move_sound = radioactive_drop_move,
      pick_sound = radioactive_pick,
    },
    {
      type = "item",
      name = "bob-empty-nuclear-fuel-cell",
      icon = "__bobplates__/graphics/icons/nuclear/empty-nuclear-fuel-cell.png",
      icon_size = 64,
      subgroup = "bob-fuel-cells",
      order = "r[uranium-processing]-0[bob-empty-nuclear-fuel-cell]",
      stack_size = 50,
      drop_sound = {
        aggregation = {
          max_count = 1,
          remove = true,
        },
        filename = "__base__/sound/item/fuel-cell-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        aggregation = {
          max_count = 1,
          remove = true,
        },
        filename = "__base__/sound/item/fuel-cell-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        aggregation = {
          max_count = 1,
          remove = true,
        },
        filename = "__base__/sound/item/fuel-cell-inventory-pickup.ogg",
        volume = 0.5,
      },
    },
  })
end

if data.raw.item["bob-thorium-ore"] then
  data:extend({
    {
      type = "item",
      name = "bob-thorium-232",
      icon = "__bobplates__/graphics/icons/nuclear/thorium-232.png",
      icon_size = 64,
      subgroup = "bob-nuclear",
      order = "s[bob-thorium-232]",
      stack_size = 100,
      drop_sound = radioactive_drop_move,
      inventory_move_sound = radioactive_drop_move,
      pick_sound = radioactive_pick,
    },
    {
      type = "item",
      name = "bob-thorium-fuel-cell",
      icon = "__bobplates__/graphics/icons/nuclear/thorium-fuel-cell.png",
      icon_size = 64,
      subgroup = "bob-fuel-cells",
      order = "s[thorium-processing]-a[bob-thorium-fuel-cell-1]",
      fuel_category = "nuclear",
      burnt_result = "bob-depleted-thorium-fuel-cell",
      fuel_value = "6GJ",
      fuel_glow_color = { r = 1, g = 1, b = 0 },
      stack_size = 50,
      drop_sound = radioactive_drop_move,
      inventory_move_sound = radioactive_drop_move,
      pick_sound = radioactive_pick,
    },
    {
      type = "item",
      name = "bob-thorium-plutonium-fuel-cell",
      icon = "__bobplates__/graphics/icons/nuclear/thorium-plutonium-fuel-cell.png",
      icon_size = 64,
      subgroup = "bob-fuel-cells",
      order = "s[thorium-processing]-a[bob-thorium-fuel-cell-2]",
      fuel_category = "nuclear",
      burnt_result = "bob-depleted-thorium-fuel-cell",
      fuel_value = "40GJ",
      fuel_glow_color = { r = 1, g = 0.7, b = 0 },
      stack_size = 50,
      drop_sound = radioactive_drop_move,
      inventory_move_sound = radioactive_drop_move,
      pick_sound = radioactive_pick,
    },
    {
      type = "item",
      name = "bob-depleted-thorium-fuel-cell",
      icon = "__bobplates__/graphics/icons/nuclear/depleted-thorium-fuel-cell.png",
      icon_size = 64,
      subgroup = "bob-fuel-cells",
      order = "s[bob-depleted-thorium-fuel-cell]",
      stack_size = 50,
      drop_sound = radioactive_drop_move,
      inventory_move_sound = radioactive_drop_move,
      pick_sound = radioactive_pick,
    },
  })

  if settings.startup["bobmods-plates-nuclearupdate"].value == true then
    data.raw.item["bob-thorium-fuel-cell"].fuel_value = "12GJ"
    data.raw.item["bob-thorium-plutonium-fuel-cell"].fuel_value = "60GJ"
  end
end

data:extend({
  {
    type = "item",
    name = "bob-deuterium-fuel-cell",
    icon = "__bobplates__/graphics/icons/nuclear/deuterium-fuel-cell.png",
    icon_size = 64,
    subgroup = "bob-fuel-cells",
    order = "t[deuterium-processing]-a[bob-deuterium-fuel-cell]",
    fuel_category = "nuclear",
    burnt_result = "bob-depleted-deuterium-fuel-cell",
    fuel_value = "100GJ",
    fuel_glow_color = { r = 1, g = 0, b = 0.57 },
    stack_size = 50,
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
    name = "bob-depleted-deuterium-fuel-cell",
    icon = "__bobplates__/graphics/icons/nuclear/depleted-deuterium-fuel-cell.png",
    icon_size = 64,
    subgroup = "bob-fuel-cells",
    order = "t[bob-depleted-deuterium-fuel-cell]",
    stack_size = 50,
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
})

if settings.startup["bobmods-plates-nuclearupdate"].value == true then
  data.raw.item["bob-deuterium-fuel-cell"].fuel_value = "80GJ"
  data:extend({
    {
      type = "item",
      name = "bob-deuterium-fuel-cell-2",
      icon = "__bobplates__/graphics/icons/nuclear/deuterium-fuel-cell-2.png",
      icon_size = 64,
      subgroup = "bob-fuel-cells",
      order = "t[deuterium-processing]-b[bob-deuterium-fuel-cell-2]",
      fuel_category = "nuclear",
      burnt_result = "bob-depleted-deuterium-fuel-cell",
      fuel_value = "120GJ",
      fuel_glow_color = { r = 1, g = 0, b = 0.9 },
      stack_size = 50,
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
      name = "bob-fusion-catalyst",
      icon = "__bobplates__/graphics/icons/nuclear/fusion-catalyst.png",
      icon_size = 64,
      subgroup = "bob-nuclear",
      order = "t[bob-fusion-catalyst]",
      stack_size = 50,
      drop_sound = radioactive_drop_move,
      inventory_move_sound = radioactive_drop_move,
      pick_sound = radioactive_pick,
    },
  })
end

if settings.startup["bobmods-plates-bluedeuterium"].value == true then
  data.raw.item["bob-deuterium-fuel-cell"].fuel_glow_color = { r = 0, g = 0.7, b = 1 }
  data.raw.item["bob-deuterium-fuel-cell"].icon = "__bobplates__/graphics/icons/nuclear/deuterium-fuel-cell-blue.png"
  if settings.startup["bobmods-plates-nuclearupdate"].value == true then
    data.raw.item["bob-deuterium-fuel-cell-2"].fuel_glow_color = { r = 0, g = 1, b = 0.85 }
    data.raw.item["bob-deuterium-fuel-cell-2"].icon =
      "__bobplates__/graphics/icons/nuclear/deuterium-fuel-cell-2-blue.png"
  end
  data.raw.item["bob-depleted-deuterium-fuel-cell"].icon =
    "__bobplates__/graphics/icons/nuclear/depleted-deuterium-fuel-cell-blue.png"
end
