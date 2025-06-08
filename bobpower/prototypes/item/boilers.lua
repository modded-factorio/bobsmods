if settings.startup["bobmods-power-steam"].value == true then
  data.raw.item["boiler"].order = "b[steam-power]-a[boiler-1]"
  data.raw.item["boiler"].subgroup = "bob-energy-boiler"

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
      name = "bob-boiler-2",
      icon = "__base__/graphics/icons/boiler.png",
      icon_size = 64,
      subgroup = "bob-energy-boiler",
      order = "b[steam-power]-a[boiler-2]",
      place_result = "bob-boiler-2",
      stack_size = 50,
      drop_sound = steam_drop_move,
      inventory_move_sound = steam_drop_move,
      pick_sound = steam_pick,
    },

    {
      type = "item",
      name = "bob-boiler-3",
      icon = "__base__/graphics/icons/boiler.png",
      icon_size = 64,
      subgroup = "bob-energy-boiler",
      order = "b[steam-power]-a[boiler-3]",
      place_result = "bob-boiler-3",
      stack_size = 50,
      drop_sound = steam_drop_move,
      inventory_move_sound = steam_drop_move,
      pick_sound = steam_pick,
    },

    {
      type = "item",
      name = "bob-boiler-4",
      icon = "__base__/graphics/icons/boiler.png",
      icon_size = 64,
      subgroup = "bob-energy-boiler",
      order = "b[steam-power]-a[boiler-4]",
      place_result = "bob-boiler-4",
      stack_size = 50,
      drop_sound = steam_drop_move,
      inventory_move_sound = steam_drop_move,
      pick_sound = steam_pick,
    },

    {
      type = "item",
      name = "bob-boiler-5",
      icon = "__base__/graphics/icons/boiler.png",
      icon_size = 64,
      subgroup = "bob-energy-boiler",
      order = "b[steam-power]-a[boiler-5]",
      place_result = "bob-boiler-5",
      stack_size = 50,
      drop_sound = steam_drop_move,
      inventory_move_sound = steam_drop_move,
      pick_sound = steam_pick,
    },
  })
end
