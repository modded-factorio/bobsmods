if settings.startup["bobmods-power-steam"].value == true then
  local steam_drop_move = {
    filename = "__base__/sound/item/steam-inventory-move.ogg",
    volume = 0.6,
  }
  local steam_pick = {
    filename = "__base__/sound/item/steam-inventory-pickup.ogg",
    volume = 0.4,
  }

  data:extend({
    {
      type = "item",
      name = "bob-oil-boiler",
      icon = "__bobpower__/graphics/icons/oil-boiler.png",
      subgroup = "bob-energy-oil-boiler",
      order = "b[steam-power]-b[oil-boiler-1]",
      place_result = "bob-oil-boiler",
      stack_size = 50,
      drop_sound = steam_drop_move,
      inventory_move_sound = steam_drop_move,
      pick_sound = steam_pick,
    },

    {
      type = "item",
      name = "bob-oil-boiler-2",
      icon = "__bobpower__/graphics/icons/oil-boiler.png",
      subgroup = "bob-energy-oil-boiler",
      order = "b[steam-power]-b[oil-boiler-2]",
      place_result = "bob-oil-boiler-2",
      stack_size = 50,
      drop_sound = steam_drop_move,
      inventory_move_sound = steam_drop_move,
      pick_sound = steam_pick,
    },

    {
      type = "item",
      name = "bob-oil-boiler-3",
      icon = "__bobpower__/graphics/icons/oil-boiler.png",
      subgroup = "bob-energy-oil-boiler",
      order = "b[steam-power]-b[oil-boiler-3]",
      place_result = "bob-oil-boiler-3",
      stack_size = 50,
      drop_sound = steam_drop_move,
      inventory_move_sound = steam_drop_move,
      pick_sound = steam_pick,
    },

    {
      type = "item",
      name = "bob-oil-boiler-4",
      icon = "__bobpower__/graphics/icons/oil-boiler.png",
      subgroup = "bob-energy-oil-boiler",
      order = "b[steam-power]-b[oil-boiler-4]",
      place_result = "bob-oil-boiler-4",
      stack_size = 50,
      drop_sound = steam_drop_move,
      inventory_move_sound = steam_drop_move,
      pick_sound = steam_pick,
    },
  })
end
