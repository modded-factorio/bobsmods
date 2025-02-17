local science_drop_move = {
  filename = "__base__/sound/item/science-inventory-move.ogg",
  volume = 0.6,
}
local science_pick = {
  filename = "__base__/sound/item/science-inventory-pickup.ogg",
  volume = 0.6,
}

data:extend({
  {
    type = "tool",
    name = "bob-advanced-logistic-science-pack",
    icon = "__bobtech__/graphics/icons/logistic-science-pack.png",
    subgroup = "science-pack",
    order = "e[advanced-logistic-science-pack]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    drop_sound = science_drop_move,
    inventory_move_sound = science_drop_move,
    pick_sound = science_pick,
  },
  {
    type = "item",
    name = "bob-lab-2",
    icon = "__bobtech__/graphics/icons/lab2.png",
    subgroup = "production-machine",
    order = "z[lab]-2",
    place_result = "bob-lab-2",
    stack_size = 10,
    drop_sound = {
      filename = "__base__/sound/item/lab-inventory-move.ogg",
      volume = 0.8,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/lab-inventory-move.ogg",
      volume = 0.8,
    },
    pick_sound = {
      filename = "__base__/sound/item/lab-inventory-pickup.ogg",
      volume = 0.6,
    },
  },
})

if settings.startup["bobmods-burnerphase"].value == true then
  data:extend({
    {
      type = "item",
      name = "bob-burner-lab",
      icon = "__bobtech__/graphics/icons/lab-red.png",
      subgroup = "production-machine",
      order = "z",
      place_result = "bob-burner-lab",
      stack_size = 10,
      drop_sound = {
        filename = "__base__/sound/item/lab-inventory-move.ogg",
        volume = 0.8,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/lab-inventory-move.ogg",
        volume = 0.8,
      },
      pick_sound = {
        filename = "__base__/sound/item/lab-inventory-pickup.ogg",
        volume = 0.6,
      },
    },
  })
  if not data.raw.item["bob-burner-generator"] then
    data:extend({
      {
        type = "item",
        name = "bob-burner-generator",
        icon = "__bobtech__/graphics/icons/burner-generator.png",
        icon_size = 64,
        subgroup = "energy",
        order = "bob-burner-generator",
        place_result = "bob-burner-generator",
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
