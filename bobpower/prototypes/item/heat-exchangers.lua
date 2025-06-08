if settings.startup["bobmods-power-steam"].value == true then
  data.raw.item["heat-exchanger"].order = "f[nuclear-energy]-b[heat-exchanger-1]"
  data.raw.item["heat-exchanger"].subgroup = "bob-energy-heat-exchanger"

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
      name = "bob-heat-exchanger-2",
      icon = "__base__/graphics/icons/heat-boiler.png",
      icon_size = 64,
      subgroup = "bob-energy-heat-exchanger",
      order = "f[nuclear-energy]-b[heat-exchanger-2]",
      place_result = "bob-heat-exchanger-2",
      stack_size = 50,
      drop_sound = steam_drop_move,
      inventory_move_sound = steam_drop_move,
      pick_sound = steam_pick,
    },

    {
      type = "item",
      name = "bob-heat-exchanger-3",
      icon = "__base__/graphics/icons/heat-boiler.png",
      icon_size = 64,
      subgroup = "bob-energy-heat-exchanger",
      order = "f[nuclear-energy]-b[heat-exchanger-3]",
      place_result = "bob-heat-exchanger-3",
      stack_size = 50,
      drop_sound = steam_drop_move,
      inventory_move_sound = steam_drop_move,
      pick_sound = steam_pick,
    },

    {
      type = "item",
      name = "bob-heat-exchanger-4",
      icon = "__base__/graphics/icons/heat-boiler.png",
      icon_size = 64,
      subgroup = "bob-energy-heat-exchanger",
      order = "f[nuclear-energy]-b[heat-exchanger-4]",
      place_result = "bob-heat-exchanger-4",
      stack_size = 50,
      drop_sound = steam_drop_move,
      inventory_move_sound = steam_drop_move,
      pick_sound = steam_pick,
    },
  })
end
