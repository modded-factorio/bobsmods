if settings.startup["bobmods-power-steam"].value == true then
  data.raw["item"]["steam-turbine"].order = "b[steam-power]-c[steam-turbine-1]"
  data.raw["item"]["steam-turbine"].subgroup = "bob-energy-steam-engine"

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
      name = "bob-steam-turbine-2",
      icon = "__base__/graphics/icons/steam-turbine.png",
      icon_size = 64,
      subgroup = "bob-energy-steam-engine",
      order = "b[steam-power]-c[steam-turbine-2]",
      place_result = "bob-steam-turbine-2",
      stack_size = 10,
      drop_sound = steam_drop_move,
      inventory_move_sound = steam_drop_move,
      pick_sound = steam_pick,
    },
    {
      type = "item",
      name = "bob-steam-turbine-3",
      icon = "__base__/graphics/icons/steam-turbine.png",
      icon_size = 64,
      subgroup = "bob-energy-steam-engine",
      order = "b[steam-power]-c[steam-turbine-3]",
      place_result = "bob-steam-turbine-3",
      stack_size = 10,
      drop_sound = steam_drop_move,
      inventory_move_sound = steam_drop_move,
      pick_sound = steam_pick,
    },
  })
end
