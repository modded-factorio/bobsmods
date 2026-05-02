if settings.startup["bobmods-power-fluidgenerator"].value == true then
  data:extend({
    {
      type = "item",
      name = "bob-fluid-generator",
      icon = "__bobpower__/graphics/icons/fluid-generator.png",
      subgroup = "bob-energy-fluid-generator",
      order = "bob-fluid-generator-1",
      place_result = "bob-fluid-generator",
      stack_size = 10,
      drop_sound = {
        filename = "__base__/sound/item/mechanical-inventory-move.ogg",
        volume = 0.7,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/mechanical-inventory-move.ogg",
        volume = 0.7,
      },
      pick_sound = {
        filename = "__base__/sound/item/mechanical-inventory-pickup.ogg",
        volume = 0.8,
      },
    },

    {
      type = "item",
      name = "bob-fluid-generator-2",
      icon = "__bobpower__/graphics/icons/fluid-generator.png",
      subgroup = "bob-energy-fluid-generator",
      order = "bob-fluid-generator-1",
      place_result = "bob-fluid-generator-2",
      stack_size = 10,
      drop_sound = {
        filename = "__base__/sound/item/mechanical-inventory-move.ogg",
        volume = 0.7,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/mechanical-inventory-move.ogg",
        volume = 0.7,
      },
      pick_sound = {
        filename = "__base__/sound/item/mechanical-inventory-pickup.ogg",
        volume = 0.8,
      },
    },

    {
      type = "item",
      name = "bob-fluid-generator-3",
      icon = "__bobpower__/graphics/icons/fluid-generator.png",
      subgroup = "bob-energy-fluid-generator",
      order = "bob-fluid-generator-1",
      place_result = "bob-fluid-generator-3",
      stack_size = 10,
      drop_sound = {
        filename = "__base__/sound/item/mechanical-inventory-move.ogg",
        volume = 0.7,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/mechanical-inventory-move.ogg",
        volume = 0.7,
      },
      pick_sound = {
        filename = "__base__/sound/item/mechanical-inventory-pickup.ogg",
        volume = 0.8,
      },
    },
  })

  if
    mods["bobrevamp"]
    and data.raw.fluid["bob-hydrogen"]
    and data.raw.fluid["bob-oxygen"]
    and data.raw.fluid["bob-nitrogen"]
  then
    data:extend({
      {
        type = "item",
        name = "bob-hydrazine-generator",
        icon = "__bobpower__/graphics/icons/fluid-generator.png",
        subgroup = "bob-energy-fluid-generator",
        order = "bob-fluid-generator-1",
        place_result = "bob-hydrazine-generator",
        stack_size = 10,
        drop_sound = {
          filename = "__base__/sound/item/mechanical-inventory-move.ogg",
          volume = 0.7,
        },
        inventory_move_sound = {
          filename = "__base__/sound/item/mechanical-inventory-move.ogg",
          volume = 0.7,
        },
        pick_sound = {
          filename = "__base__/sound/item/mechanical-inventory-pickup.ogg",
          volume = 0.8,
        },
      },
    })
  end
end
