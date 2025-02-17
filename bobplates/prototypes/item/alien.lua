if
  data.raw.item["bob-alien-artifact-blue"]
  and data.raw.item["bob-alien-artifact-orange"]
  and data.raw.item["bob-alien-artifact-purple"]
  and data.raw.item["bob-alien-artifact-yellow"]
  and data.raw.item["bob-alien-artifact-green"]
  and data.raw.item["bob-alien-artifact-red"]
then
  data:extend({
    {
      type = "item",
      name = "bob-alien-blue-alloy",
      icon = "__bobplates__/graphics/icons/alien/alien-blue-alloy.png",
      icon_size = 32,
      subgroup = "bob-alien-resource",
      order = "f[alien]-a",
      stack_size = 200,
      drop_sound = {
        filename = "__base__/sound/item/metal-small-inventory-move.ogg",
        volume = 0.8,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/metal-small-inventory-move.ogg",
        volume = 0.8,
      },
      pick_sound = {
        filename = "__base__/sound/item/metal-small-inventory-pickup.ogg",
        volume = 0.8,
      },
    },

    {
      type = "item",
      name = "bob-alien-orange-alloy",
      icon = "__bobplates__/graphics/icons/alien/alien-orange-alloy.png",
      icon_size = 32,
      subgroup = "bob-alien-resource",
      order = "f[alien]-b",
      stack_size = 200,
      drop_sound = {
        filename = "__base__/sound/item/metal-small-inventory-move.ogg",
        volume = 0.8,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/metal-small-inventory-move.ogg",
        volume = 0.8,
      },
      pick_sound = {
        filename = "__base__/sound/item/metal-small-inventory-pickup.ogg",
        volume = 0.8,
      },
    },

    {
      type = "fluid",
      name = "bob-alien-acid",
      icon = "__bobplates__/graphics/icons/alien/alien-acid.png",
      icon_size = 32,
      subgroup = "bob-alien-resource",
      order = "f[alien]-c",
      default_temperature = 20,
      max_temperature = 100,
      heat_capacity = "1kJ",
      base_color = { r = 0.4, g = 0.0, b = 0.8 },
      flow_color = { r = 0.6, g = 0.5, b = 1.0 },
    },

    {
      type = "fluid",
      name = "bob-alien-explosive",
      icon = "__bobplates__/graphics/icons/alien/alien-explosive.png",
      icon_size = 32,
      subgroup = "bob-alien-resource",
      order = "f[alien]-d",
      default_temperature = 20,
      max_temperature = 100,
      heat_capacity = "1kJ",
      base_color = { r = 0.8, g = 0.8, b = 0.0 },
      flow_color = { r = 1.0, g = 1.0, b = 0.5 },
    },

    {
      type = "fluid",
      name = "bob-alien-poison",
      icon = "__bobplates__/graphics/icons/alien/alien-poison.png",
      icon_size = 32,
      subgroup = "bob-alien-resource",
      order = "f[alien]-e",
      default_temperature = 20,
      heat_capacity = "1kJ",
      base_color = { r = 0.0, g = 0.8, b = 0.0 },
      flow_color = { r = 0.5, g = 1.0, b = 0.5 },
      max_temperature = 100,
    },

    {
      type = "fluid",
      name = "bob-alien-fire",
      icon = "__bobplates__/graphics/icons/alien/alien-fire.png",
      icon_size = 32,
      subgroup = "bob-alien-resource",
      order = "f[alien]-f",
      default_temperature = 20,
      heat_capacity = "1kJ",
      base_color = { r = 0.8, g = 0, b = 0 },
      flow_color = { r = 1.0, g = 0.5, b = 0.5 },
      max_temperature = 100,
      fuel_value = "2.6MJ",
    },
  })

  table.insert(
    data.raw["fluid-turret"]["flamethrower-turret"].attack_parameters.fluids,
    { type = "bob-alien-fire", damage_modifier = 2 }
  )
end
