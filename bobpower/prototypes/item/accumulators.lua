if settings.startup["bobmods-power-accumulators"].value == true then
  data.raw["item"]["accumulator"].order = "e[accumulator]-a[accumulator]-a-l"
  data.raw["item"]["accumulator"].subgroup = "bob-energy-accumulator"

  local electric_large_drop_move = {
    filename = "__base__/sound/item/electric-large-inventory-move.ogg",
    volume = 0.7,
  }
  local electric_large_pick = {
    filename = "__base__/sound/item/electric-large-inventory-pickup.ogg",
    volume = 0.7,
  }

  data:extend({
    {
      type = "item",
      name = "fast-accumulator",
      icon = "__base__/graphics/icons/accumulator.png",
      icon_size = 64,
      subgroup = "bob-energy-accumulator",
      order = "e[accumulator]-a[accumulator]-a-f",
      place_result = "fast-accumulator",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "slow-accumulator",
      icon = "__base__/graphics/icons/accumulator.png",
      icon_size = 64,
      subgroup = "bob-energy-accumulator",
      order = "e[accumulator]-a[accumulator]-a-s",
      place_result = "slow-accumulator",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "large-accumulator-2",
      icon = "__base__/graphics/icons/accumulator.png",
      icon_size = 64,
      subgroup = "bob-energy-accumulator",
      order = "e[accumulator]-a[accumulator]-b-l",
      place_result = "large-accumulator-2",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "fast-accumulator-2",
      icon = "__base__/graphics/icons/accumulator.png",
      icon_size = 64,
      subgroup = "bob-energy-accumulator",
      order = "e[accumulator]-a[accumulator]-b-f",
      place_result = "fast-accumulator-2",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "slow-accumulator-2",
      icon = "__base__/graphics/icons/accumulator.png",
      icon_size = 64,
      subgroup = "bob-energy-accumulator",
      order = "e[accumulator]-a[accumulator]-b-s",
      place_result = "slow-accumulator-2",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "large-accumulator-3",
      icon = "__base__/graphics/icons/accumulator.png",
      icon_size = 64,
      subgroup = "bob-energy-accumulator",
      order = "e[accumulator]-a[accumulator]-c-l",
      place_result = "large-accumulator-3",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "fast-accumulator-3",
      icon = "__base__/graphics/icons/accumulator.png",
      icon_size = 64,
      subgroup = "bob-energy-accumulator",
      order = "e[accumulator]-a[accumulator]-c-f",
      place_result = "fast-accumulator-3",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "slow-accumulator-3",
      icon = "__base__/graphics/icons/accumulator.png",
      icon_size = 64,
      subgroup = "bob-energy-accumulator",
      order = "e[accumulator]-a[accumulator]-c-s",
      place_result = "slow-accumulator-3",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },
  })
end
