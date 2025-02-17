if settings.startup["bobmods-power-poles"].value == true then
  data.raw.item["medium-electric-pole"].order = "a[energy]-b[medium-electric-pole-1]"
  data.raw.item["big-electric-pole"].order = "a[energy]-c[big-electric-pole-1]"
  data.raw.item["substation"].order = "a[energy]-d[substation-1]"

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
      name = "bob-medium-electric-pole-2",
      icon = "__base__/graphics/icons/medium-electric-pole.png",
      icon_size = 64,
      subgroup = "energy-pipe-distribution",
      order = "a[energy]-b[medium-electric-pole-2]",
      place_result = "bob-medium-electric-pole-2",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "bob-medium-electric-pole-3",
      icon = "__base__/graphics/icons/medium-electric-pole.png",
      icon_size = 64,
      subgroup = "energy-pipe-distribution",
      order = "a[energy]-b[medium-electric-pole-3]",
      place_result = "bob-medium-electric-pole-3",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "bob-medium-electric-pole-4",
      icon = "__base__/graphics/icons/medium-electric-pole.png",
      icon_size = 64,
      subgroup = "energy-pipe-distribution",
      order = "a[energy]-b[medium-electric-pole-4]",
      place_result = "bob-medium-electric-pole-4",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "bob-big-electric-pole-2",
      icon = "__base__/graphics/icons/big-electric-pole.png",
      icon_size = 64,
      subgroup = "energy-pipe-distribution",
      order = "a[energy]-c[big-electric-pole-2]",
      place_result = "bob-big-electric-pole-2",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "bob-big-electric-pole-3",
      icon = "__base__/graphics/icons/big-electric-pole.png",
      icon_size = 64,
      subgroup = "energy-pipe-distribution",
      order = "a[energy]-c[big-electric-pole-3]",
      place_result = "bob-big-electric-pole-3",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "bob-big-electric-pole-4",
      icon = "__base__/graphics/icons/big-electric-pole.png",
      icon_size = 64,
      subgroup = "energy-pipe-distribution",
      order = "a[energy]-c[big-electric-pole-4]",
      place_result = "bob-big-electric-pole-4",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "bob-substation-2",
      icon = "__base__/graphics/icons/substation.png",
      icon_size = 64,
      subgroup = "energy-pipe-distribution",
      order = "a[energy]-d[substation-2]",
      place_result = "bob-substation-2",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "bob-substation-3",
      icon = "__base__/graphics/icons/substation.png",
      icon_size = 64,
      subgroup = "energy-pipe-distribution",
      order = "a[energy]-d[substation-3]",
      place_result = "bob-substation-3",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "bob-substation-4",
      icon = "__base__/graphics/icons/substation.png",
      icon_size = 64,
      subgroup = "energy-pipe-distribution",
      order = "a[energy]-d[substation-4]",
      place_result = "bob-substation-4",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },
  })
end
