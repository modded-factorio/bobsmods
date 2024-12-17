if settings.startup["bobmods-power-fluidgenerator"].value == true then
  data:extend({
    {
      type = "item",
      name = "fluid-generator",
      icon = "__bobpower__/graphics/icons/fluid-generator.png",
      subgroup = "bob-energy-fluid-generator",
      order = "fluid-generator-1",
      place_result = "fluid-generator",
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
      name = "fluid-generator-2",
      icon = "__bobpower__/graphics/icons/fluid-generator.png",
      subgroup = "bob-energy-fluid-generator",
      order = "fluid-generator-1",
      place_result = "fluid-generator-2",
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
      name = "fluid-generator-3",
      icon = "__bobpower__/graphics/icons/fluid-generator.png",
      subgroup = "bob-energy-fluid-generator",
      order = "fluid-generator-1",
      place_result = "fluid-generator-3",
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

  if mods["bobrevamp"] and data.raw.fluid.hydrogen and data.raw.fluid.oxygen and data.raw.fluid.nitrogen then
    data:extend({
      {
        type = "item",
        name = "hydrazine-generator",
        icon = "__bobpower__/graphics/icons/fluid-generator.png",
        subgroup = "bob-energy-fluid-generator",
        order = "fluid-generator-1",
        place_result = "hydrazine-generator",
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
