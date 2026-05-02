if settings.startup["bobmods-power-steam"].value == true then
  data.raw["item"]["steam-engine"].order = "b[steam-power]-b[steam-engine-1]"
  data.raw["item"]["steam-engine"].subgroup = "bob-energy-steam-engine"

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
      name = "bob-steam-engine-2",
      icon = "__base__/graphics/icons/steam-engine.png",
      icon_size = 64,
      subgroup = "bob-energy-steam-engine",
      order = "b[steam-power]-b[steam-engine-2]",
      place_result = "bob-steam-engine-2",
      stack_size = 10,
      drop_sound = steam_drop_move,
      inventory_move_sound = steam_drop_move,
      pick_sound = steam_pick,
    },
    {
      type = "item",
      name = "bob-steam-engine-3",
      icon = "__base__/graphics/icons/steam-engine.png",
      icon_size = 64,
      subgroup = "bob-energy-steam-engine",
      order = "b[steam-power]-b[steam-engine-3]",
      place_result = "bob-steam-engine-3",
      stack_size = 10,
      drop_sound = steam_drop_move,
      inventory_move_sound = steam_drop_move,
      pick_sound = steam_pick,
    },
    {
      type = "item",
      name = "bob-steam-engine-4",
      icon = "__base__/graphics/icons/steam-engine.png",
      icon_size = 64,
      subgroup = "bob-energy-steam-engine",
      order = "b[steam-power]-b[steam-engine-4]",
      place_result = "bob-steam-engine-4",
      stack_size = 10,
      drop_sound = steam_drop_move,
      inventory_move_sound = steam_drop_move,
      pick_sound = steam_pick,
    },
    {
      type = "item",
      name = "bob-steam-engine-5",
      icon = "__base__/graphics/icons/steam-engine.png",
      icon_size = 64,
      subgroup = "bob-energy-steam-engine",
      order = "b[steam-power]-b[steam-engine-5]",
      place_result = "bob-steam-engine-5",
      stack_size = 10,
      drop_sound = steam_drop_move,
      inventory_move_sound = steam_drop_move,
      pick_sound = steam_pick,
    },
  })
end
