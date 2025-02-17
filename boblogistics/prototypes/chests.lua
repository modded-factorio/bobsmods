data.raw.container["wooden-chest"].next_upgrade = "iron-chest"
data.raw.container["iron-chest"].next_upgrade = "steel-chest"

local chest_drop_move = {
  filename = "__base__/sound/item/metal-chest-inventory-move.ogg",
  volume = 0.6,
}
local chest_pick = {
  filename = "__base__/sound/item/metal-chest-inventory-pickup.ogg",
  volume = 0.6,
}

if data.raw.item["bob-brass-alloy"] then
  data.raw.container["steel-chest"].next_upgrade = "bob-brass-chest"
  data:extend({
    {
      type = "recipe",
      name = "bob-brass-chest",
      enabled = false,
      ingredients = { { type = "item", name = "bob-brass-alloy", amount = 8 } },
      results = { { type = "item", name = "bob-brass-chest", amount = 1 } },
    },
    {
      type = "item",
      name = "bob-brass-chest",
      icon = "__boblogistics__/graphics/icons/brass-chest.png",
      icon_size = 32,
      subgroup = "storage",
      order = "a[items]-d[brass-chest]",
      place_result = "bob-brass-chest",
      stack_size = 50,
      drop_sound = chest_drop_move,
      inventory_move_sound = chest_drop_move,
      pick_sound = chest_pick,
    },
    {
      type = "container",
      name = "bob-brass-chest",
      icon = "__boblogistics__/graphics/icons/brass-chest.png",
      icon_size = 32,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 1, result = "bob-brass-chest" },
      max_health = 500,
      corpse = "small-remnants",
      open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume = 0.65 },
      close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
      resistances = {
        {
          type = "fire",
          percent = 80,
        },
        {
          type = "impact",
          percent = 70,
        },
      },
      collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fast_replaceable_group = "container",
      next_upgrade = "bob-titanium-chest",
      inventory_size = 64,
      impact_category = "metal",
      picture = {
        filename = "__boblogistics__/graphics/entity/chest/brass-chest.png",
        priority = "extra-high",
        width = 46,
        height = 32,
        shift = { 0.21875, 0 },
      },
      circuit_connector = circuit_connector_definitions["chest"],
      circuit_wire_max_distance = default_circuit_wire_max_distance,
    },
  })
end

if data.raw.item["bob-titanium-plate"] then
  data:extend({
    {
      type = "recipe",
      name = "bob-titanium-chest",
      enabled = false,
      ingredients = { { type = "item", name = "bob-titanium-plate", amount = 8 } },
      results = { { type = "item", name = "bob-titanium-chest", amount = 1 } },
    },
    {
      type = "item",
      name = "bob-titanium-chest",
      icon = "__boblogistics__/graphics/icons/titanium-chest.png",
      icon_size = 64,
      subgroup = "storage",
      order = "a[items]-e[titanium-chest]",
      place_result = "bob-titanium-chest",
      stack_size = 50,
      drop_sound = chest_drop_move,
      inventory_move_sound = chest_drop_move,
      pick_sound = chest_pick,
    },
    {
      type = "container",
      name = "bob-titanium-chest",
      icon = "__boblogistics__/graphics/icons/titanium-chest.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 1, result = "bob-titanium-chest" },
      max_health = 650,
      corpse = "small-remnants",
      open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume = 0.65 },
      close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
      resistances = {
        {
          type = "fire",
          percent = 90,
        },
        {
          type = "impact",
          percent = 90,
        },
      },
      collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fast_replaceable_group = "container",
      inventory_size = 80,
      impact_category = "metal",
      picture = {
        layers = {
          {
            filename = "__boblogistics__/graphics/entity/chest/titanium-chest.png",
            priority = "extra-high",
            width = 66,
            height = 86,
            shift = util.by_pixel(0, -3),
            scale = 0.5,
          },
          {
            filename = "__boblogistics__/graphics/entity/chest/titanium-chest-shadow.png",
            priority = "extra-high",
            width = 116,
            height = 48,
            shift = util.by_pixel(14, 6),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      circuit_connector = circuit_connector_definitions["chest"],
      circuit_wire_max_distance = default_circuit_wire_max_distance,
    },
  })
end
