if settings.startup["bobmods-power-nuclear"].value == true then
  data.raw.item["nuclear-reactor"].order = "f[nuclear-energy]-a[reactor-1]"

  data:extend({
    {
      type = "item",
      name = "bob-nuclear-reactor-2",
      icon = "__base__/graphics/icons/nuclear-reactor.png",
      icon_size = 64,
      subgroup = "energy",
      order = "f[nuclear-energy]-a[reactor-2]",
      place_result = "bob-nuclear-reactor-2",
      stack_size = 10,
      drop_sound = {
        filename = "__base__/sound/item/reactor-inventory-move.ogg",
        volume = 0.7,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/reactor-inventory-move.ogg",
        volume = 0.7,
      },
      pick_sound = {
        filename = "__base__/sound/item/reactor-inventory-pickup.ogg",
        volume = 0.6,
      },
    },
    {
      type = "item",
      name = "bob-nuclear-reactor-3",
      icon = "__base__/graphics/icons/nuclear-reactor.png",
      icon_size = 64,
      subgroup = "energy",
      order = "f[nuclear-energy]-a[reactor-3]",
      place_result = "bob-nuclear-reactor-3",
      stack_size = 10,
      drop_sound = {
        filename = "__base__/sound/item/reactor-inventory-move.ogg",
        volume = 0.7,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/reactor-inventory-move.ogg",
        volume = 0.7,
      },
      pick_sound = {
        filename = "__base__/sound/item/reactor-inventory-pickup.ogg",
        volume = 0.6,
      },
    },
  })
end
