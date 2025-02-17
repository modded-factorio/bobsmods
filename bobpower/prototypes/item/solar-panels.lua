if settings.startup["bobmods-power-solar"].value == true then
  data.raw["item"]["solar-panel"].order = "d[solar-panel]-a[solar-panel-1-b]"
  data.raw["item"]["solar-panel"].subgroup = "bob-energy-solar-panel"

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
      name = "bob-solar-panel-small",
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      subgroup = "bob-energy-solar-panel",
      order = "d[solar-panel]-a[solar-panel-1-a]",
      place_result = "bob-solar-panel-small",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "bob-solar-panel-large",
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      subgroup = "bob-energy-solar-panel",
      order = "d[solar-panel]-a[solar-panel-1-c]",
      place_result = "bob-solar-panel-large",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "bob-solar-panel-small-2",
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      subgroup = "bob-energy-solar-panel",
      order = "d[solar-panel]-a[solar-panel-2-a]",
      place_result = "bob-solar-panel-small-2",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "bob-solar-panel-2",
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      subgroup = "bob-energy-solar-panel",
      order = "d[solar-panel]-a[solar-panel-2-b]",
      place_result = "bob-solar-panel-2",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "bob-solar-panel-large-2",
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      subgroup = "bob-energy-solar-panel",
      order = "d[solar-panel]-a[solar-panel-2-c]",
      place_result = "bob-solar-panel-large-2",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "bob-solar-panel-small-3",
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      subgroup = "bob-energy-solar-panel",
      order = "d[solar-panel]-a[solar-panel-3-a]",
      place_result = "bob-solar-panel-small-3",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "bob-solar-panel-3",
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      subgroup = "bob-energy-solar-panel",
      order = "d[solar-panel]-a[solar-panel-3-b]",
      place_result = "bob-solar-panel-3",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },

    {
      type = "item",
      name = "bob-solar-panel-large-3",
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      subgroup = "bob-energy-solar-panel",
      order = "d[solar-panel]-a[solar-panel-3-c]",
      place_result = "bob-solar-panel-large-3",
      stack_size = 50,
      drop_sound = electric_large_drop_move,
      inventory_move_sound = electric_large_drop_move,
      pick_sound = electric_large_pick,
    },
  })
end
